Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BA76BFF5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 18:56:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6HQX6M2dbf/VQoRzSLYjq4hNz1nECi39XwfXlJqWnyg=; b=fnpTbcJTgbWnL8
	5ZZN4PURBn3Hm/3S4y/nGcPY1DuGBBSf/GszBFAWr0ULhXQObTdKEzrLOuk3HcFCAOhRwRamrCoD/
	TSyqhmjNBR5lP8IPUJvTVI11m4nkPGzhjXQdF7s/inilcLz8/reb50pZ+kTFKufGEsUHqF6W2/xf3
	F+psrm6fOVxDNjHO4xPApzMu3lfYw9lMZ9A1qnyQxWC8STHuPdLd8KYhAFF1fNffxCgZjfIE02lYk
	3V3O+ifiXn0wOh3HrycyYGcNfuf8YKTVLAvsqwa4VIItRN/FenlLtLpdqNiV3iwYTwV3RaveausEh
	APRSw5jKUsNOMaYaIjMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnnEV-0001GX-Ro; Wed, 17 Jul 2019 16:56:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnnDy-00016N-Tf
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 16:56:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3F4DE28;
 Wed, 17 Jul 2019 09:56:12 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 711743F71F;
 Wed, 17 Jul 2019 09:56:11 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: entry: SP Alignment Fault doesn't write to FAR_EL1
Date: Wed, 17 Jul 2019 17:56:02 +0100
Message-Id: <20190717165602.114502-1-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_095615_220937_E7ECF621 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Comparing the arm-arm's  pseudocode for AArch64.PCAlignmentFault() with
AArch64.SPAlignmentFault() shows that SP faults don't copy the faulty-SP
to FAR_EL1, but this is where we read from, and the address we provide
to user-space with the BUS_ADRALN signal.

This value will be UNKNOWN due to the previous ERET to user-space.
If the last value is preserved, on systems with KASLR or KPTI this will
be the user-space link-register left in FAR_EL1 by tramp_exit().

Fix this to retrieve the original sp_el0 value, and pass this to
do_sp_pc_fault().

Fixes: 60ffc30d5652 ("arm64: Exception handling")
Signed-off-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/entry.S | 25 ++++++++++++++++++++-----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 165da78815c5..023e533c537e 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -743,9 +743,9 @@ el0_sync:
 	ccmp	x24, #ESR_ELx_EC_WFx, #4, ne
 	b.eq	el0_sys
 	cmp	x24, #ESR_ELx_EC_SP_ALIGN	// stack alignment exception
-	b.eq	el0_sp_pc
+	b.eq	el0_sp
 	cmp	x24, #ESR_ELx_EC_PC_ALIGN	// pc alignment exception
-	b.eq	el0_sp_pc
+	b.eq	el0_pc
 	cmp	x24, #ESR_ELx_EC_UNKNOWN	// unknown exception in EL0
 	b.eq	el0_undef
 	cmp	x24, #ESR_ELx_EC_BREAKPT_LOW	// debug exception in EL0
@@ -769,7 +769,7 @@ el0_sync_compat:
 	cmp	x24, #ESR_ELx_EC_FP_EXC32	// FP/ASIMD exception
 	b.eq	el0_fpsimd_exc
 	cmp	x24, #ESR_ELx_EC_PC_ALIGN	// pc alignment exception
-	b.eq	el0_sp_pc
+	b.eq	el0_pc
 	cmp	x24, #ESR_ELx_EC_UNKNOWN	// unknown exception in EL0
 	b.eq	el0_undef
 	cmp	x24, #ESR_ELx_EC_CP15_32	// CP15 MRC/MCR trap
@@ -869,9 +869,24 @@ el0_fpsimd_exc:
 	mov	x1, sp
 	bl	do_fpsimd_exc
 	b	ret_to_user
-el0_sp_pc:
+el0_sp:
 	/*
-	 * Stack or PC alignment exception handling
+	 * Stack alignment exception handling
+	 */
+	gic_prio_kentry_setup tmp=x0
+	enable_da_f
+#ifdef CONFIG_TRACE_IRQFLAGS
+	bl	trace_hardirqs_off
+#endif
+	ct_user_exit
+	ldr	x0, [sp, #S_SP]
+	mov	x1, x25
+	mov	x2, sp
+	bl	do_sp_pc_abort
+	b	ret_to_user
+el0_pc:
+	/*
+	 * PC alignment exception handling
 	 */
 	mrs	x26, far_el1
 	gic_prio_kentry_setup tmp=x0
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
