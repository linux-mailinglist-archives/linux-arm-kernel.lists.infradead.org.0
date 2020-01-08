Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA449134B11
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 19:58:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iD0UMz5ZbTokGTBLIlwgX/Da9ResmpwZXrWl1lP2zYE=; b=VpCCpVM1JeVZXxfmVnNLAEexiI
	t5QybFtP7njcpPAOKU137lxnBpZsgrMPbjB6ncWHvs7ASpO1IEwzlGhrecJIfk2/PPjCL8FohD/TP
	Wg24BHdd2XRo8hhyoKfr10vGb68ZvSRjfnwBZQFcTUrpSoTi4BR7ejdVSxMvHath5YpO8+ajteaLn
	apBMsh8nRK9CoRfvLUySTSJND4+OqxHxLEMnjX+sKS3QGKKJYlxFfhCEAwvyURtPLnMtz0ruAXNT+
	sOaxq9gOK8Hqs/qESkGsIomWpkU4aw/Zu46iCmS7Br/Cfj7Tu+rp4imvQqCByxkY2tJemN81JJnOT
	Nmidmf7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGXO-0000MV-Rs; Wed, 08 Jan 2020 18:58:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGVs-0007V5-4Q
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 18:57:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6CAB2328;
 Wed,  8 Jan 2020 10:57:03 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DC6793F534;
 Wed,  8 Jan 2020 10:57:01 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
Subject: [PATCH 06/17] arm64: entry: convert irq entry to C
Date: Wed,  8 Jan 2020 18:56:23 +0000
Message-Id: <20200108185634.1163-7-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108185634.1163-1-mark.rutland@arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_105704_280142_2507E12C 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, keescook@chromium.org, maz@kernel.org,
 broonie@kernel.org, labbott@redhat.com, robin.murphy@arm.com,
 julien.thierry.kdev@gmail.com, alex.popov@linux.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Portions of our IRQ entry logic are handled in C while other parts are
handled in assembly. Let's migrate the bulk of it to C so that it's
easier to follow and maintain.

The original assembly called trace_hardirqs_off() for IRQs and NMIs, but
did not call trace_hardirqs_on() for NMIs where IRQs were priority
masked. The C code always balances these calls.

The now unused asm_nmi_{enter,exit}() wrappers are removed.

The EL0 BP hardening is moved from fault.c so that it's in the same
compilation unit as its only caller, where the compiler can inline it.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/entry-common.c |  81 +++++++++++++++++++++++-
 arch/arm64/kernel/entry.S        | 133 +++------------------------------------
 arch/arm64/kernel/irq.c          |  15 -----
 arch/arm64/mm/fault.c            |   7 ---
 4 files changed, 87 insertions(+), 149 deletions(-)

diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
index b93ca2148a20..45155d9f72da 100644
--- a/arch/arm64/kernel/entry-common.c
+++ b/arch/arm64/kernel/entry-common.c
@@ -6,8 +6,12 @@
  */
 
 #include <linux/context_tracking.h>
+#include <linux/hardirq.h>
+#include <linux/irq.h>
+#include <linux/irqflags.h>
 #include <linux/linkage.h>
 #include <linux/lockdep.h>
+#include <linux/percpu.h>
 #include <linux/preempt.h>
 #include <linux/ptrace.h>
 #include <linux/sched/debug.h>
@@ -19,6 +23,7 @@
 #include <asm/exception.h>
 #include <asm/kprobes.h>
 #include <asm/mmu.h>
+#include <asm/stacktrace.h>
 #include <asm/sysreg.h>
 
 static void notrace el1_abort(struct pt_regs *regs, unsigned long esr)
@@ -335,7 +340,7 @@ asmlinkage void notrace el0_sync_compat_handler(struct pt_regs *regs)
 NOKPROBE_SYMBOL(el0_sync_compat_handler);
 #endif /* CONFIG_COMPAT */
 
-asmlinkage void __sched el1_preempt(void)
+static void __sched el1_preempt(void)
 {
 	if (!IS_ENABLED(CONFIG_PREEMPT) || preempt_count())
 		return;
@@ -345,7 +350,7 @@ asmlinkage void __sched el1_preempt(void)
 	 * masked until the exception return. We want to context-switch with
 	 * IRQs masked but NMIs enabled, so cannot preempt an NMI.
 	 *
-	 * PSTATE.{D,A,F} are cleared for IRQ and NMI by el1_irq().
+	 * PSTATE.{D,A,F} are cleared for IRQ and NMI by el1_irq_handler().
 	 * When gic_handle_irq() handles an NMI, it leaves PSTATE.I set.
 	 * If anything is set in DAIF, this is an NMI.
 	 */
@@ -365,3 +370,75 @@ asmlinkage void __sched el1_preempt(void)
 	if (static_branch_likely(&arm64_const_caps_ready))
 		preempt_schedule_irq();
 }
+
+static void notrace invoke_irq_handler(struct pt_regs *regs)
+{
+	unsigned long irq_stack = (unsigned long)raw_cpu_read(irq_stack_ptr);
+
+	irq_stack += IRQ_STACK_SIZE;
+
+	if (on_thread_stack())
+		call_on_stack(regs, handle_arch_irq, irq_stack);
+	else
+		handle_arch_irq(regs);
+}
+NOKPROBE_SYMBOL(invoke_irq_handler);
+
+asmlinkage void notrace el1_irq_handler(struct pt_regs *regs)
+{
+	bool masked;
+
+	if (system_uses_irq_prio_masking())
+		gic_write_pmr(regs->pmr_save | GIC_PRIO_PSR_I_SET);
+
+	/*
+	 * We can't use local_daif_restore(DAIF_PROCCTX_NOIRQ) here as it will
+	 * see the A flag is clear and try to unmask NMIs.
+	 */
+	write_sysreg(DAIF_PROCCTX_NOIRQ, daif);
+
+	/*
+	 * If IRQs were masked, this is definitely an NMI. If IRQs were
+	 * unmasked, this may be an IRQ or an NMI, and gic_handle_nmi() will
+	 * handle nmi_{enter,exit} as necessary.
+	 */
+	masked = !irqs_priority_unmasked(regs);
+
+	if (masked)
+		nmi_enter();
+	else
+		trace_hardirqs_off();
+
+	invoke_irq_handler(regs);
+
+	if (masked) {
+		nmi_exit();
+	} else {
+		el1_preempt();
+		trace_hardirqs_on();
+	}
+}
+NOKPROBE_SYMBOL(el1_irq_handler);
+
+static inline void notrace do_el0_irq_bp_hardening(struct pt_regs *regs)
+{
+	if (!IS_ENABLED(CONFIG_HARDEN_BRANCH_PREDICTOR))
+		return;
+	if (regs->pc & BIT(55))
+		arm64_apply_bp_hardening();
+}
+NOKPROBE_SYMBOL(do_el0_irq_bp_hardening);
+
+asmlinkage void notrace el0_irq_handler(struct pt_regs *regs)
+{
+	if (system_uses_irq_prio_masking())
+		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
+
+	user_exit_irqoff();
+	local_daif_restore(DAIF_PROCCTX_NOIRQ);
+	trace_hardirqs_off();
+	do_el0_irq_bp_hardening(regs);
+	invoke_irq_handler(regs);
+	trace_hardirqs_on();
+}
+NOKPROBE_SYMBOL(el0_irq_handler);
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 184313c773ea..55c4be1e996a 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -384,64 +384,9 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
 	sb
 	.endm
 
-	.macro	irq_stack_entry
-	mov	x19, sp			// preserve the original sp
-
-	/*
-	 * Compare sp with the base of the task stack.
-	 * If the top ~(THREAD_SIZE - 1) bits match, we are on a task stack,
-	 * and should switch to the irq stack.
-	 */
-	ldr	x25, [tsk, TSK_STACK]
-	eor	x25, x25, x19
-	and	x25, x25, #~(THREAD_SIZE - 1)
-	cbnz	x25, 9998f
-
-	ldr_this_cpu x25, irq_stack_ptr, x26
-	mov	x26, #IRQ_STACK_SIZE
-	add	x26, x25, x26
-
-	/* switch to the irq stack */
-	mov	sp, x26
-9998:
-	.endm
-
-	/*
-	 * x19 should be preserved between irq_stack_entry and
-	 * irq_stack_exit.
-	 */
-	.macro	irq_stack_exit
-	mov	sp, x19
-	.endm
-
 /* GPRs used by entry code */
 tsk	.req	x28		// current thread_info
 
-/*
- * Interrupt handling.
- */
-	.macro	irq_handler
-	ldr_l	x1, handle_arch_irq
-	mov	x0, sp
-	irq_stack_entry
-	blr	x1
-	irq_stack_exit
-	.endm
-
-#ifdef CONFIG_ARM64_PSEUDO_NMI
-	/*
-	 * Set res to 0 if irqs were unmasked in interrupted context.
-	 * Otherwise set res to non-0 value.
-	 */
-	.macro	test_irqs_unmasked res:req, pmr:req
-alternative_if ARM64_HAS_IRQ_PRIO_MASKING
-	sub	\res, \pmr, #GIC_PRIO_IRQON
-alternative_else
-	mov	\res, xzr
-alternative_endif
-	.endm
-#endif
-
 	.macro	gic_prio_kentry_setup, tmp:req
 #ifdef CONFIG_ARM64_PSEUDO_NMI
 	alternative_if ARM64_HAS_IRQ_PRIO_MASKING
@@ -451,15 +396,6 @@ alternative_endif
 #endif
 	.endm
 
-	.macro	gic_prio_irq_setup, pmr:req, tmp:req
-#ifdef CONFIG_ARM64_PSEUDO_NMI
-	alternative_if ARM64_HAS_IRQ_PRIO_MASKING
-	orr	\tmp, \pmr, #GIC_PRIO_PSR_I_SET
-	msr_s	SYS_ICC_PMR_EL1, \tmp
-	alternative_else_nop_endif
-#endif
-	.endm
-
 	.text
 
 /*
@@ -589,47 +525,8 @@ ENDPROC(el1_sync)
 	.align	6
 el1_irq:
 	kernel_entry 1
-	gic_prio_irq_setup pmr=x20, tmp=x1
-	enable_da_f
-
-#ifdef CONFIG_ARM64_PSEUDO_NMI
-	test_irqs_unmasked	res=x0, pmr=x20
-	cbz	x0, 1f
-	bl	asm_nmi_enter
-1:
-#endif
-
-#ifdef CONFIG_TRACE_IRQFLAGS
-	bl	trace_hardirqs_off
-#endif
-
-	irq_handler
-
-#ifdef CONFIG_PREEMPT
-	bl	el1_preempt
-#endif
-
-#ifdef CONFIG_ARM64_PSEUDO_NMI
-	/*
-	 * When using IRQ priority masking, we can get spurious interrupts while
-	 * PMR is set to GIC_PRIO_IRQOFF. An NMI might also have occurred in a
-	 * section with interrupts disabled. Skip tracing in those cases.
-	 */
-	test_irqs_unmasked	res=x0, pmr=x20
-	cbz	x0, 1f
-	bl	asm_nmi_exit
-1:
-#endif
-
-#ifdef CONFIG_TRACE_IRQFLAGS
-#ifdef CONFIG_ARM64_PSEUDO_NMI
-	test_irqs_unmasked	res=x0, pmr=x20
-	cbnz	x0, 1f
-#endif
-	bl	trace_hardirqs_on
-1:
-#endif
-
+	mov	x0, sp
+	bl	el1_irq_handler
 	kernel_exit 1
 ENDPROC(el1_irq)
 
@@ -655,7 +552,10 @@ ENDPROC(el0_sync)
 	.align	6
 el0_irq_compat:
 	kernel_entry 0, 32
-	b	el0_irq_naked
+	mov	x0, sp
+	bl	el0_irq_handler
+	b	ret_to_user
+ENDPROC(el0_irq_compat)
 
 el0_error_compat:
 	kernel_entry 0, 32
@@ -665,25 +565,8 @@ el0_error_compat:
 	.align	6
 el0_irq:
 	kernel_entry 0
-el0_irq_naked:
-	gic_prio_irq_setup pmr=x20, tmp=x0
-	ct_user_exit_irqoff
-	enable_da_f
-
-#ifdef CONFIG_TRACE_IRQFLAGS
-	bl	trace_hardirqs_off
-#endif
-
-#ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
-	tbz	x22, #55, 1f
-	bl	do_el0_irq_bp_hardening
-1:
-#endif
-	irq_handler
-
-#ifdef CONFIG_TRACE_IRQFLAGS
-	bl	trace_hardirqs_on
-#endif
+	mov	x0, sp
+	bl	el0_irq_handler
 	b	ret_to_user
 ENDPROC(el0_irq)
 
diff --git a/arch/arm64/kernel/irq.c b/arch/arm64/kernel/irq.c
index 04a327ccf84d..49a2d7b68531 100644
--- a/arch/arm64/kernel/irq.c
+++ b/arch/arm64/kernel/irq.c
@@ -76,18 +76,3 @@ void __init init_IRQ(void)
 		local_daif_restore(DAIF_PROCCTX_NOIRQ);
 	}
 }
-
-/*
- * Stubs to make nmi_enter/exit() code callable from ASM
- */
-asmlinkage void notrace asm_nmi_enter(void)
-{
-	nmi_enter();
-}
-NOKPROBE_SYMBOL(asm_nmi_enter);
-
-asmlinkage void notrace asm_nmi_exit(void)
-{
-	nmi_exit();
-}
-NOKPROBE_SYMBOL(asm_nmi_exit);
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 077b02a2d4d3..43aea8012f62 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -745,13 +745,6 @@ void do_mem_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs)
 }
 NOKPROBE_SYMBOL(do_mem_abort);
 
-void do_el0_irq_bp_hardening(void)
-{
-	/* PC has already been checked in entry.S */
-	arm64_apply_bp_hardening();
-}
-NOKPROBE_SYMBOL(do_el0_irq_bp_hardening);
-
 void do_sp_pc_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs)
 {
 	arm64_notify_die("SP/PC alignment exception", regs,
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
