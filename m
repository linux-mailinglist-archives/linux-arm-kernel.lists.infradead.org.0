Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CAE186AA9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 13:12:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gsIoNS7fYDpC1w47leQ/NeL7iYyazL0qn3HZgFmuOr0=; b=poKL/5zMeDJHnZ
	Dwc+N9TxPsJCMAAqiimFc7qSW3OYLnHolOe4FidSPfV1cGNZ2yYvEP0dAXpTrUgOszhI9kA4ncKOy
	YxDO0LoiS+DLkwgU3DZk7+juK06y0cSzjzeYEWWetz7C2g3b9T0vXmmWB2D69M6ZMa0RsJHkvDSPq
	D6qxwBjT0ptEKfVgjKFGVGiSdoRJ1dnidSzIr09pprT1vT/2ybqz/UJeKziAuEgJ10vxnxKw7nzH5
	++mkU6Q+vwBft+Wki5+3sBg7a23v1xFuuVt+cZavkCiQw6Gwv/qlcCXa73mio7wrQEn/g+uTUONDX
	8Eej87AdyOdBO+P/ghKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDobj-0006NR-Lu; Mon, 16 Mar 2020 12:12:35 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDobb-0006MZ-EQ
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 12:12:29 +0000
X-Originating-IP: 84.210.220.251
Received: from [192.168.1.123] (cm-84.210.220.251.getinternet.no
 [84.210.220.251]) (Authenticated sender: fredrik@strupe.net)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 97F0C2000F;
 Mon, 16 Mar 2020 12:12:21 +0000 (UTC)
To: Oleg Nesterov <oleg@redhat.com>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
From: Fredrik Strupe <fredrik@strupe.net>
Subject: [PATCH] arm: ptrace: Fix mask for thumb breakpoint hook
Message-ID: <6ab2ce75-0763-75b1-0d72-ddfb2b9dec19@strupe.net>
Date: Mon, 16 Mar 2020 13:12:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_051227_621289_4A738BFE 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since instr_mask in struct undef_hook is 32 bits wide, a mask with value
0xffff will essentially be extended to 0x0000ffff. This makes undefined
thumb2 instructions with the second half-word as 0xde01 generate SIGTRAPs
instead of SIGILLs.

This happens in total for 3143 instructions on my system. An example
of such an instruction is e800de01.

This patch fixes the issue by extending the mask to the full 32 bits,
such that both half-words have to be matched. This will remove all of
the accidental matchings, as 0x0000 is not a valid thumb2 prefix, while
preserving the intended thumb hook.

Signed-off-by: Fredrik Strupe <fredrik@strupe.net>
---
  arch/arm/kernel/ptrace.c | 9 +++++++--
  1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/kernel/ptrace.c b/arch/arm/kernel/ptrace.c
index 36718a424..f51bec0bc 100644
--- a/arch/arm/kernel/ptrace.c
+++ b/arch/arm/kernel/ptrace.c
@@ -228,9 +228,14 @@ static struct undef_hook arm_break_hook = {
  	.fn		= break_trap,
  };
  
+/*
+ * Set all bits in the instruction mask, even though the thumb
+ * instruction is only 16 bits. This is to prevent accidental
+ * matching of thumb2 instructions.
+ */
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
