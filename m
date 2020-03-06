Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E80B17B6DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 07:40:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=faUKDKi4XiNRv+sO4snOWcTHWOsKTnQvITMnAZ3QuIo=; b=I/zliBJtq9I+EQkWFY2B3P7hTF
	RhPXD1UN+ONOiWR+qMD5vsYIMtTyWob7xa9JCB81RM1EIMctoFJeDNucYM9l80FzZuvrUyPgpU5J3
	GzLftEWoSP92w5eF8P1GlqvqDt4+XhHbLHfzJKkIaqpdLBYgqttwh1lua8Bisef64km3d0wEpon7S
	Ul9ffWNx3JA7gv0+ZWX1SK1rdS/OkTDbZW0CJjHHjwLa/6U5+jRNO2/hYb4FwWeszOIta9J3PNr91
	MH+qXPmgSc1k1tstwNIybhK8xBVBbPwUJwae9mX+uekv1mejRPXcqkzyyCdYdAoaAGQgvSPcvggyq
	1jKG8/nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA6eU-0008Bb-Pq; Fri, 06 Mar 2020 06:40:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA6b7-0005TD-G2
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 06:36:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BE10530E;
 Thu,  5 Mar 2020 22:36:36 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B04EA3F6CF;
 Thu,  5 Mar 2020 22:40:28 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 14/18] arm64: __show_regs: strip PAC from lr in printk
Date: Fri,  6 Mar 2020 12:05:21 +0530
Message-Id: <1583476525-13505-15-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_223637_587060_2D4D6F1A 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

lr is printed with %pS which will try to find an entry in kallsyms.
After enabling pointer authentication, this match will fail due to
PAC present in the lr.

Strip PAC from the lr to display the correct symbol name.

Suggested-by: James Morse <james.morse@arm.com>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
 arch/arm64/kernel/process.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 7db0302..cacae29 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -262,7 +262,7 @@ void __show_regs(struct pt_regs *regs)
 
 	if (!user_mode(regs)) {
 		printk("pc : %pS\n", (void *)regs->pc);
-		printk("lr : %pS\n", (void *)lr);
+		printk("lr : %pS\n", (void *)ptrauth_strip_insn_pac(lr));
 	} else {
 		printk("pc : %016llx\n", regs->pc);
 		printk("lr : %016llx\n", lr);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
