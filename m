Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E957E7034F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 17:14:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KKbxcPs2als6J4vcYiym4BfI16giDE+WwMcqCKqT034=; b=NIJx/q6FWkle2y
	ER0etGnpqnksPHFGQIIfggatj7s5kUGWr0te3NGbQxxqMurnXpDVdTxuztiE5yI4YbTSQvdrMsb9r
	ayKiQSPybvK6gfTahnTdu00ltqrzxc20F97K5gl3P5flOu7X7L3Z35BbEc4lgVmxk7ThaRd2yCYHF
	FD4B5bsJdF+mX9+n/LwIqaxeHT9iYHBn7aZm0vuOlsyDVylW70qZWuPqAfwaXZ5jMJrAnjicXUOMm
	U0GpbHuo1vFLBYD5fl/rQRkKBEzgmziPfQJXEdEAhlgziLsng32AKt9VbGfKlUhDxUEI9HXs/G5+i
	j44HY3rTe6p96Zq5qqyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpa1H-00054e-S7; Mon, 22 Jul 2019 15:14:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZyp-00040q-EL
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 15:12:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 84988344;
 Mon, 22 Jul 2019 08:11:57 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AC8903F694;
 Mon, 22 Jul 2019 08:11:56 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: entry: SP Alignment Fault doesn't write to FAR_EL1
Date: Mon, 22 Jul 2019 16:11:48 +0100
Message-Id: <20190722151148.19348-1-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_081159_760812_F83D2622 
X-CRM114-Status: GOOD (  10.25  )
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

For user-space this value will be UNKNOWN due to the previous ERET to
user-space. If the last value is preserved, on systems with KASLR or KPTI
this will be the user-space link-register left in FAR_EL1 by tramp_exit().
Fix this to retrieve the original sp_el0 value, and pass this to
do_sp_pc_fault().

SP alignment faults from EL1 will cause us to take the fault again when
trying to store the pt_regs. This eventually takes us to the overflow
stack. Remove the ESR_ELx_EC_SP_ALIGN check as we will never make it
this far.

Fixes: 60ffc30d5652 ("arm64: Exception handling")
Signed-off-by: James Morse <james.morse@arm.com>

---
Changes since v1:
 * Avoid duplicating el0_sp_pc,
 * Removed unreachable el1 handling.
---
 arch/arm64/kernel/entry.S | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 9cdc4592da3e..387d751e9347 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -586,8 +586,6 @@ el1_sync:
 	b.eq	el1_ia
 	cmp	x24, #ESR_ELx_EC_SYS64		// configurable trap
 	b.eq	el1_undef
-	cmp	x24, #ESR_ELx_EC_SP_ALIGN	// stack alignment exception
-	b.eq	el1_sp_pc
 	cmp	x24, #ESR_ELx_EC_PC_ALIGN	// pc alignment exception
 	b.eq	el1_sp_pc
 	cmp	x24, #ESR_ELx_EC_UNKNOWN	// unknown exception in EL1
@@ -613,7 +611,7 @@ el1_da:
 	kernel_exit 1
 el1_sp_pc:
 	/*
-	 * Stack or PC alignment exception handling
+	 * PC alignment exception handling. We don't handle SP alignment faults.
 	 */
 	mrs	x0, far_el1
 	inherit_daif	pstate=x23, tmp=x2
@@ -732,9 +730,9 @@ el0_sync:
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
@@ -758,7 +756,7 @@ el0_sync_compat:
 	cmp	x24, #ESR_ELx_EC_FP_EXC32	// FP/ASIMD exception
 	b.eq	el0_fpsimd_exc
 	cmp	x24, #ESR_ELx_EC_PC_ALIGN	// pc alignment exception
-	b.eq	el0_sp_pc
+	b.eq	el0_pc
 	cmp	x24, #ESR_ELx_EC_UNKNOWN	// unknown exception in EL0
 	b.eq	el0_undef
 	cmp	x24, #ESR_ELx_EC_CP15_32	// CP15 MRC/MCR trap
@@ -858,11 +856,15 @@ el0_fpsimd_exc:
 	mov	x1, sp
 	bl	do_fpsimd_exc
 	b	ret_to_user
+el0_sp:
+	ldr	x26, [sp, #S_SP]
+	b	el0_sp_pc
+el0_pc:
+	mrs	x26, far_el1
 el0_sp_pc:
 	/*
 	 * Stack or PC alignment exception handling
 	 */
-	mrs	x26, far_el1
 	gic_prio_kentry_setup tmp=x0
 	enable_da_f
 #ifdef CONFIG_TRACE_IRQFLAGS
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
