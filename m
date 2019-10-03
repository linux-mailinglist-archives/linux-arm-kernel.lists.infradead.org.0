Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5797CA83F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 19:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yb/ewb0yVv6Oh3J8LfYg9ImNTZbtWv9IpPeCBtBhcy0=; b=lGPMzfkz4BFi+c
	n7PojeW+/F3ohD0jvo6sNvJ1nMca1xUk98D3Lh27bOwSnLkh43N1iM4IHiuhaHRzocXj13tIIXGKH
	WskdwRVA05NE+bffYXntyHFcitbiKUgLPYdDI2lm882qtFjiiAKdmtwL7Mi07KA255TIaarE3ytjG
	4LqAUTLGwk3TpkIAePIxCqK+er3xz5UdKAQSOaNbG8GrjWoZMYwF9h73F2O5YngSa9c9LRw+SsD9L
	EpEqQbvlQqMVBuv58fF1UJRSFdugX8HPcG/jy96Z/Q//wg3zbPzf5XIHeCFtlQ9DONimEyMogoRaJ
	FOkcJZZ3WBIQSKPuIIUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG4kV-0000mI-FB; Thu, 03 Oct 2019 17:18:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG4jA-0007uM-EA
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 17:17:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA5C41570;
 Thu,  3 Oct 2019 10:17:18 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BAD933F739;
 Thu,  3 Oct 2019 10:17:17 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/8] arm64: entry: convert el0_sync to C
Date: Thu,  3 Oct 2019 18:16:40 +0100
Message-Id: <20191003171642.135652-7-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191003171642.135652-1-james.morse@arm.com>
References: <20191003171642.135652-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_101720_633516_55E13D72 
X-CRM114-Status: GOOD (  13.62  )
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
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mark Rutland <mark.rutland@arm.com>

This is largely a 1-1 conversion of asm to C, with a couple of caveats.

The el0_sync{_compat} switches explicitly handle all the EL0 debug
cases, so el0_dbg doesn't have to try to bail out for unexpected EL1
debug ESR values. This also means that an unexpected vector catch from
AArch32 is routed to el0_inv.

We *could* merge the native and compat switches, which would make the
diffstat negative, but I've tried to stay as close to the existing
assembly as possible for the moment.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
[split out of a bigger series, added nokprobes. removed irq trace
 calls as the C helpers do this. renamed el0_dbg's use of FAR]
Signed-off-by: James Morse <james.morse@arm.com>
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
---
 arch/arm64/include/asm/asm-uaccess.h |  10 --
 arch/arm64/kernel/entry-common.c     | 221 +++++++++++++++++++++++++++
 arch/arm64/kernel/entry.S            | 206 +------------------------
 3 files changed, 226 insertions(+), 211 deletions(-)

diff --git a/arch/arm64/include/asm/asm-uaccess.h b/arch/arm64/include/asm/asm-uaccess.h
index f74909ba29bd..a70575edae8e 100644
--- a/arch/arm64/include/asm/asm-uaccess.h
+++ b/arch/arm64/include/asm/asm-uaccess.h
@@ -74,14 +74,4 @@ alternative_if ARM64_ALT_PAN_NOT_UAO
 	SET_PSTATE_PAN(0)
 alternative_else_nop_endif
 	.endm
-
-/*
- * Remove the address tag from a virtual address, if present.
- */
-	.macro	clear_address_tag, dst, addr
-	tst	\addr, #(1 << 55)
-	bic	\dst, \addr, #(0xff << 56)
-	csel	\dst, \dst, \addr, eq
-	.endm
-
 #endif
diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
index e726d1f4b9e9..176969e55677 100644
--- a/arch/arm64/kernel/entry-common.c
+++ b/arch/arm64/kernel/entry-common.c
@@ -96,3 +96,224 @@ asmlinkage void notrace el1_sync_handler(struct pt_regs *regs)
 	};
 }
 NOKPROBE_SYMBOL(el1_sync_handler);
+
+static void notrace el0_da(struct pt_regs *regs, unsigned long esr)
+{
+	unsigned long far = read_sysreg(far_el1);
+
+	user_exit_irqoff();
+	local_daif_restore(DAIF_PROCCTX);
+	far = untagged_addr(far);
+	do_mem_abort(far, esr, regs);
+}
+NOKPROBE_SYMBOL(el0_da);
+
+static void notrace el0_ia(struct pt_regs *regs, unsigned long esr)
+{
+	unsigned long far = read_sysreg(far_el1);
+
+	user_exit_irqoff();
+	local_daif_restore(DAIF_PROCCTX_NOIRQ);
+	do_el0_ia_bp_hardening(far, esr, regs);
+}
+NOKPROBE_SYMBOL(el0_ia);
+
+static void notrace el0_fpsimd_acc(struct pt_regs *regs, unsigned long esr)
+{
+	user_exit_irqoff();
+	local_daif_restore(DAIF_PROCCTX);
+	do_fpsimd_acc(esr, regs);
+}
+NOKPROBE_SYMBOL(el0_fpsimd_acc);
+
+static void notrace el0_sve_acc(struct pt_regs *regs, unsigned long esr)
+{
+	user_exit_irqoff();
+	local_daif_restore(DAIF_PROCCTX);
+	do_sve_acc(esr, regs);
+}
+NOKPROBE_SYMBOL(el0_sve_acc);
+
+static void notrace el0_fpsimd_exc(struct pt_regs *regs, unsigned long esr)
+{
+	user_exit_irqoff();
+	local_daif_restore(DAIF_PROCCTX);
+	do_fpsimd_exc(esr, regs);
+}
+NOKPROBE_SYMBOL(el0_fpsimd_exc);
+
+static void notrace el0_sys(struct pt_regs *regs, unsigned long esr)
+{
+	user_exit_irqoff();
+	local_daif_restore(DAIF_PROCCTX);
+	do_sysinstr(esr, regs);
+}
+NOKPROBE_SYMBOL(el0_sys);
+
+static void notrace el0_pc(struct pt_regs *regs, unsigned long esr)
+{
+	unsigned long far = read_sysreg(far_el1);
+
+	user_exit_irqoff();
+	local_daif_restore(DAIF_PROCCTX_NOIRQ);
+	do_sp_pc_abort(far, esr, regs);
+}
+NOKPROBE_SYMBOL(el0_pc);
+
+static void notrace el0_sp(struct pt_regs *regs, unsigned long esr)
+{
+	user_exit_irqoff();
+	local_daif_restore(DAIF_PROCCTX_NOIRQ);
+	do_sp_pc_abort(regs->sp, esr, regs);
+}
+NOKPROBE_SYMBOL(el0_sp);
+
+static void notrace el0_undef(struct pt_regs *regs)
+{
+	user_exit_irqoff();
+	local_daif_restore(DAIF_PROCCTX);
+	do_undefinstr(regs);
+}
+NOKPROBE_SYMBOL(el0_undef);
+
+static void notrace el0_inv(struct pt_regs *regs, unsigned long esr)
+{
+	user_exit_irqoff();
+	local_daif_restore(DAIF_PROCCTX);
+	bad_el0_sync(regs, 0, esr);
+}
+NOKPROBE_SYMBOL(el0_inv);
+
+static void notrace el0_dbg(struct pt_regs *regs, unsigned long esr)
+{
+	unsigned long addr_if_watchpoint = read_sysreg(far_el1);
+
+	if (system_uses_irq_prio_masking())
+		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
+
+	user_exit_irqoff();
+	do_debug_exception(addr_if_watchpoint, esr, regs);
+	local_daif_restore(DAIF_PROCCTX_NOIRQ);
+}
+NOKPROBE_SYMBOL(el0_dbg);
+
+static void notrace el0_svc(struct pt_regs *regs)
+{
+	if (system_uses_irq_prio_masking())
+		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
+
+	el0_svc_handler(regs);
+}
+NOKPROBE_SYMBOL(el0_svc);
+
+asmlinkage void notrace el0_sync_handler(struct pt_regs *regs)
+{
+	unsigned long esr = read_sysreg(esr_el1);
+
+	switch (ESR_ELx_EC(esr)) {
+	case ESR_ELx_EC_SVC64:
+		el0_svc(regs);
+		break;
+	case ESR_ELx_EC_DABT_LOW:
+		el0_da(regs, esr);
+		break;
+	case ESR_ELx_EC_IABT_LOW:
+		el0_ia(regs, esr);
+		break;
+	case ESR_ELx_EC_FP_ASIMD:
+		el0_fpsimd_acc(regs, esr);
+		break;
+	case ESR_ELx_EC_SVE:
+		el0_sve_acc(regs, esr);
+		break;
+	case ESR_ELx_EC_FP_EXC64:
+		el0_fpsimd_exc(regs, esr);
+		break;
+	case ESR_ELx_EC_SYS64:
+	case ESR_ELx_EC_WFx:
+		el0_sys(regs, esr);
+		break;
+	case ESR_ELx_EC_SP_ALIGN:
+		el0_sp(regs, esr);
+		break;
+	case ESR_ELx_EC_PC_ALIGN:
+		el0_pc(regs, esr);
+		break;
+	case ESR_ELx_EC_UNKNOWN:
+		el0_undef(regs);
+		break;
+	case ESR_ELx_EC_BREAKPT_LOW:
+	case ESR_ELx_EC_SOFTSTP_LOW:
+	case ESR_ELx_EC_WATCHPT_LOW:
+	case ESR_ELx_EC_BRK64:
+		el0_dbg(regs, esr);
+		break;
+	default:
+		el0_inv(regs, esr);
+	}
+}
+NOKPROBE_SYMBOL(el0_sync_handler);
+
+#ifdef CONFIG_COMPAT
+static void notrace el0_cp15(struct pt_regs *regs, unsigned long esr)
+{
+	user_exit_irqoff();
+	local_daif_restore(DAIF_PROCCTX);
+	do_cp15instr(esr, regs);
+}
+NOKPROBE_SYMBOL(el0_cp15);
+
+static void notrace el0_svc_compat(struct pt_regs *regs)
+{
+	if (system_uses_irq_prio_masking())
+		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
+
+	el0_svc_compat_handler(regs);
+}
+NOKPROBE_SYMBOL(el0_svc_compat);
+
+asmlinkage void notrace el0_sync_compat_handler(struct pt_regs *regs)
+{
+	unsigned long esr = read_sysreg(esr_el1);
+
+	switch (ESR_ELx_EC(esr)) {
+	case ESR_ELx_EC_SVC32:
+		el0_svc_compat(regs);
+		break;
+	case ESR_ELx_EC_DABT_LOW:
+		el0_da(regs, esr);
+		break;
+	case ESR_ELx_EC_IABT_LOW:
+		el0_ia(regs, esr);
+		break;
+	case ESR_ELx_EC_FP_ASIMD:
+		el0_fpsimd_acc(regs, esr);
+		break;
+	case ESR_ELx_EC_FP_EXC32:
+		el0_fpsimd_exc(regs, esr);
+		break;
+	case ESR_ELx_EC_PC_ALIGN:
+		el0_pc(regs, esr);
+		break;
+	case ESR_ELx_EC_UNKNOWN:
+	case ESR_ELx_EC_CP14_MR:
+	case ESR_ELx_EC_CP14_LS:
+	case ESR_ELx_EC_CP14_64:
+		el0_undef(regs);
+		break;
+	case ESR_ELx_EC_CP15_32:
+	case ESR_ELx_EC_CP15_64:
+		el0_cp15(regs, esr);
+		break;
+	case ESR_ELx_EC_BREAKPT_LOW:
+	case ESR_ELx_EC_SOFTSTP_LOW:
+	case ESR_ELx_EC_WATCHPT_LOW:
+	case ESR_ELx_EC_BKPT32:
+		el0_dbg(regs, esr);
+		break;
+	default:
+		el0_inv(regs, esr);
+	}
+}
+NOKPROBE_SYMBOL(el0_sync_compat_handler);
+#endif /* CONFIG_COMPAT */
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 5d7f42eb0e89..15822a0fe37f 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -647,71 +647,18 @@ ENDPROC(el1_irq)
 	.align	6
 el0_sync:
 	kernel_entry 0
-	mrs	x25, esr_el1			// read the syndrome register
-	lsr	x24, x25, #ESR_ELx_EC_SHIFT	// exception class
-	cmp	x24, #ESR_ELx_EC_SVC64		// SVC in 64-bit state
-	b.eq	el0_svc
-	cmp	x24, #ESR_ELx_EC_DABT_LOW	// data abort in EL0
-	b.eq	el0_da
-	cmp	x24, #ESR_ELx_EC_IABT_LOW	// instruction abort in EL0
-	b.eq	el0_ia
-	cmp	x24, #ESR_ELx_EC_FP_ASIMD	// FP/ASIMD access
-	b.eq	el0_fpsimd_acc
-	cmp	x24, #ESR_ELx_EC_SVE		// SVE access
-	b.eq	el0_sve_acc
-	cmp	x24, #ESR_ELx_EC_FP_EXC64	// FP/ASIMD exception
-	b.eq	el0_fpsimd_exc
-	cmp	x24, #ESR_ELx_EC_SYS64		// configurable trap
-	ccmp	x24, #ESR_ELx_EC_WFx, #4, ne
-	b.eq	el0_sys
-	cmp	x24, #ESR_ELx_EC_SP_ALIGN	// stack alignment exception
-	b.eq	el0_sp
-	cmp	x24, #ESR_ELx_EC_PC_ALIGN	// pc alignment exception
-	b.eq	el0_pc
-	cmp	x24, #ESR_ELx_EC_UNKNOWN	// unknown exception in EL0
-	b.eq	el0_undef
-	cmp	x24, #ESR_ELx_EC_BREAKPT_LOW	// debug exception in EL0
-	b.ge	el0_dbg
-	b	el0_inv
+	mov	x0, sp
+	bl	el0_sync_handler
+	b	ret_to_user
 
 #ifdef CONFIG_COMPAT
 	.align	6
 el0_sync_compat:
 	kernel_entry 0, 32
-	mrs	x25, esr_el1			// read the syndrome register
-	lsr	x24, x25, #ESR_ELx_EC_SHIFT	// exception class
-	cmp	x24, #ESR_ELx_EC_SVC32		// SVC in 32-bit state
-	b.eq	el0_svc_compat
-	cmp	x24, #ESR_ELx_EC_DABT_LOW	// data abort in EL0
-	b.eq	el0_da
-	cmp	x24, #ESR_ELx_EC_IABT_LOW	// instruction abort in EL0
-	b.eq	el0_ia
-	cmp	x24, #ESR_ELx_EC_FP_ASIMD	// FP/ASIMD access
-	b.eq	el0_fpsimd_acc
-	cmp	x24, #ESR_ELx_EC_FP_EXC32	// FP/ASIMD exception
-	b.eq	el0_fpsimd_exc
-	cmp	x24, #ESR_ELx_EC_PC_ALIGN	// pc alignment exception
-	b.eq	el0_pc
-	cmp	x24, #ESR_ELx_EC_UNKNOWN	// unknown exception in EL0
-	b.eq	el0_undef
-	cmp	x24, #ESR_ELx_EC_CP15_32	// CP15 MRC/MCR trap
-	b.eq	el0_cp15
-	cmp	x24, #ESR_ELx_EC_CP15_64	// CP15 MRRC/MCRR trap
-	b.eq	el0_cp15
-	cmp	x24, #ESR_ELx_EC_CP14_MR	// CP14 MRC/MCR trap
-	b.eq	el0_undef
-	cmp	x24, #ESR_ELx_EC_CP14_LS	// CP14 LDC/STC trap
-	b.eq	el0_undef
-	cmp	x24, #ESR_ELx_EC_CP14_64	// CP14 MRRC/MCRR trap
-	b.eq	el0_undef
-	cmp	x24, #ESR_ELx_EC_BREAKPT_LOW	// debug exception in EL0
-	b.ge	el0_dbg
-	b	el0_inv
-el0_svc_compat:
-	gic_prio_kentry_setup tmp=x1
 	mov	x0, sp
-	bl	el0_svc_compat_handler
+	bl	el0_sync_compat_handler
 	b	ret_to_user
+ENDPROC(el0_sync)
 
 	.align	6
 el0_irq_compat:
@@ -721,139 +668,7 @@ el0_irq_compat:
 el0_error_compat:
 	kernel_entry 0, 32
 	b	el0_error_naked
-
-el0_cp15:
-	/*
-	 * Trapped CP15 (MRC, MCR, MRRC, MCRR) instructions
-	 */
-	ct_user_exit_irqoff
-	enable_daif
-	mov	x0, x25
-	mov	x1, sp
-	bl	do_cp15instr
-	b	ret_to_user
-#endif
-
-el0_da:
-	/*
-	 * Data abort handling
-	 */
-	mrs	x26, far_el1
-	ct_user_exit_irqoff
-	enable_daif
-	clear_address_tag x0, x26
-	mov	x1, x25
-	mov	x2, sp
-	bl	do_mem_abort
-	b	ret_to_user
-el0_ia:
-	/*
-	 * Instruction abort handling
-	 */
-	mrs	x26, far_el1
-	gic_prio_kentry_setup tmp=x0
-	ct_user_exit_irqoff
-	enable_da_f
-#ifdef CONFIG_TRACE_IRQFLAGS
-	bl	trace_hardirqs_off
-#endif
-	mov	x0, x26
-	mov	x1, x25
-	mov	x2, sp
-	bl	do_el0_ia_bp_hardening
-	b	ret_to_user
-el0_fpsimd_acc:
-	/*
-	 * Floating Point or Advanced SIMD access
-	 */
-	ct_user_exit_irqoff
-	enable_daif
-	mov	x0, x25
-	mov	x1, sp
-	bl	do_fpsimd_acc
-	b	ret_to_user
-el0_sve_acc:
-	/*
-	 * Scalable Vector Extension access
-	 */
-	ct_user_exit_irqoff
-	enable_daif
-	mov	x0, x25
-	mov	x1, sp
-	bl	do_sve_acc
-	b	ret_to_user
-el0_fpsimd_exc:
-	/*
-	 * Floating Point, Advanced SIMD or SVE exception
-	 */
-	ct_user_exit_irqoff
-	enable_daif
-	mov	x0, x25
-	mov	x1, sp
-	bl	do_fpsimd_exc
-	b	ret_to_user
-el0_sp:
-	ldr	x26, [sp, #S_SP]
-	b	el0_sp_pc
-el0_pc:
-	mrs	x26, far_el1
-el0_sp_pc:
-	/*
-	 * Stack or PC alignment exception handling
-	 */
-	gic_prio_kentry_setup tmp=x0
-	ct_user_exit_irqoff
-	enable_da_f
-#ifdef CONFIG_TRACE_IRQFLAGS
-	bl	trace_hardirqs_off
 #endif
-	mov	x0, x26
-	mov	x1, x25
-	mov	x2, sp
-	bl	do_sp_pc_abort
-	b	ret_to_user
-el0_undef:
-	/*
-	 * Undefined instruction
-	 */
-	ct_user_exit_irqoff
-	enable_daif
-	mov	x0, sp
-	bl	do_undefinstr
-	b	ret_to_user
-el0_sys:
-	/*
-	 * System instructions, for trapped cache maintenance instructions
-	 */
-	ct_user_exit_irqoff
-	enable_daif
-	mov	x0, x25
-	mov	x1, sp
-	bl	do_sysinstr
-	b	ret_to_user
-el0_dbg:
-	/*
-	 * Debug exception handling
-	 */
-	tbnz	x24, #0, el0_inv		// EL0 only
-	mrs	x24, far_el1
-	gic_prio_kentry_setup tmp=x3
-	ct_user_exit_irqoff
-	mov	x0, x24
-	mov	x1, x25
-	mov	x2, sp
-	bl	do_debug_exception
-	enable_da_f
-	b	ret_to_user
-el0_inv:
-	ct_user_exit_irqoff
-	enable_daif
-	mov	x0, sp
-	mov	x1, #BAD_SYNC
-	mov	x2, x25
-	bl	bad_el0_sync
-	b	ret_to_user
-ENDPROC(el0_sync)
 
 	.align	6
 el0_irq:
@@ -932,17 +747,6 @@ finish_ret_to_user:
 	kernel_exit 0
 ENDPROC(ret_to_user)
 
-/*
- * SVC handler.
- */
-	.align	6
-el0_svc:
-	gic_prio_kentry_setup tmp=x1
-	mov	x0, sp
-	bl	el0_svc_handler
-	b	ret_to_user
-ENDPROC(el0_svc)
-
 	.popsection				// .entry.text
 
 #ifdef CONFIG_UNMAP_KERNEL_AT_EL0
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
