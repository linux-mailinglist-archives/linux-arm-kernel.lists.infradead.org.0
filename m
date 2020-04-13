Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 649261A6B84
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 19:39:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZDmIUkwOM4M6V5lJJcGgmAZ8ki8mmBbFblXBPZ1imNw=; b=JqE8ccZ9YfaSUo
	o9QVw9hYjLw7OiB892lQhYuDixbhfGY2V9cM56xvJfWMpHJ6fQsJ9GZ3Zsh/b+qpgbKFWin0QR7eY
	K/e3sBRwJTqFaNwBu5mfd4veqf8QD4XnRN/es7SPj7ridTTJBPEhbuiKEdsl1H0xHzk4Hvn6AdOtP
	9Hk9Jm4kag0JsRgaSq2+cjFE2TghszXCGge6G6eV+ye3fyyXu2O20F420R6U8y1qzCDsVtDiggNFv
	tGfRPDe3j3k37JYdolhROLwXlFkKbHdEqgG7z7mLt2Sw15Nhdvx859mWN1WmQx15wKRGc2oAUvhxQ
	3o5/NyCZ8TUe095ZwcvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO33Y-0007eP-OD; Mon, 13 Apr 2020 17:39:36 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO33S-0007da-0y
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 17:39:31 +0000
Received: from consensus.lan (cm-84.210.220.251.getinternet.no
 [84.210.220.251]) (Authenticated sender: fredrik@strupe.net)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 59DBC200004;
 Mon, 13 Apr 2020 17:39:21 +0000 (UTC)
From: Fredrik Strupe <fredrik@strupe.net>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm: ptrace: Fix mask for thumb breakpoint hook
Date: Mon, 13 Apr 2020 19:38:41 +0200
Message-Id: <20200413173841.29651-1-fredrik@strupe.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_103930_203804_965E7C74 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Fredrik Strupe <fredrik@strupe.net>, Oleg Nesterov <oleg@redhat.com>,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

call_undef_hook() in traps.c applies the same instr_mask for both 16-bit
and 32-bit thumb instructions. If instr_mask then is only 16 bits wide
(0xffff as opposed to 0xffffffff), the first half-word of 32-bit thumb
instructions will be masked out. This makes the function match 32-bit
thumb instructions where the second half-word is equal to instr_val,
regardless of the first half-word.

The result in this case is that all undefined 32-bit thumb instructions
with the second half-word equal to de01 (udf #1) work as breakpoints
and will raise a SIGTRAP instead of a SIGILL, instead of just the one
intended 16-bit instruction. An example of such an instruction is
eaa0b650, which is unallocated according to Arm ARM and should raise a
SIGILL, but instead raises a SIGTRAP.

This patch fixes the issue by setting all the bits in instr_mask, which
will still match the intended 16-bit thumb instruction (where the
upper half is always 0), but not any 32-bit thumb instructions.

Signed-off-by: Fredrik Strupe <fredrik@strupe.net>
Cc: Oleg Nesterov <oleg@redhat.com>
Cc: Russell King <linux@armlinux.org.uk>
---
 arch/arm/kernel/ptrace.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/kernel/ptrace.c b/arch/arm/kernel/ptrace.c
index b606cded90cd..4cc6a7eff635 100644
--- a/arch/arm/kernel/ptrace.c
+++ b/arch/arm/kernel/ptrace.c
@@ -219,8 +219,8 @@ static struct undef_hook arm_break_hook = {
 };
 
 static struct undef_hook thumb_break_hook = {
-	.instr_mask	= 0xffff,
-	.instr_val	= 0xde01,
+	.instr_mask	= 0xffffffff,
+	.instr_val	= 0x0000de01,
 	.cpsr_mask	= PSR_T_BIT,
 	.cpsr_val	= PSR_T_BIT,
 	.fn		= break_trap,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
