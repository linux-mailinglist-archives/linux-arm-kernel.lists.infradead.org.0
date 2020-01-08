Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1C1134B23
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 20:00:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I9Nrj9vEMJ4M3QE28TKpXd2d1lEZ+rDopM3Rhmjzuzg=; b=GBHoHpS+JH/XThdbLAxFXtuo0+
	ZU+sOOliIp1DrN9wD3SRoBVB5Z+SvwTpB237w6om34jeytrwdDbOb1xYaNbrGoCjdDr4GgGO/jpya
	TXzkyZbKH4iYqHxVricvGL6WYUVZY060WNsXepnwOexRCKYtU+J+6+GXrBLnVUESEcWu/Ti49Ja4i
	UdvDFWox2nNoWLKEilRyU0F8yfD92kdpYM0cKFesPz+fSqUsaDU1oso4TAhEdwoMmEuXw6afzMVE4
	ZLtf11fRu+zW5e3QHcx7ErubGHVPaTth6196rjHgYtFhoqXfD6bs7QBK8vfvXSqKKQKGmFwTDRA4P
	YYYcTFnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGZI-0003Ju-EO; Wed, 08 Jan 2020 19:00:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGW7-0007j8-QH
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 18:57:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 95221328;
 Wed,  8 Jan 2020 10:57:18 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 114313F534;
 Wed,  8 Jan 2020 10:57:16 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
Subject: [PATCH 13/17] arm64: entry: move common el0 entry/return work to C
Date: Wed,  8 Jan 2020 18:56:30 +0000
Message-Id: <20200108185634.1163-14-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108185634.1163-1-mark.rutland@arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_105719_980751_0C6FE89A 
X-CRM114-Status: GOOD (  17.26  )
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

Portions of common EL0 exception entry/return logic are handled in C
while other parts are handled in assembly. Let's migrate the bulk of it
to C so that it's easier to follow and maintain.

This patch moves the ret_to_user/work_pending logic to C. As that
handled enabling singlestep for userspace, the matching disable is
similarly factored out of the entry code. Additionally user_enter() is
factored out of kernel_exit as all the corresponding user_enter() calls
have already been converted to C.

Rather than add tedious boilerplate to each top-level exception handler
to perform this entry/return work, a new EL0_HANDLER() handles this
automatically. This takes the full name of each handler to keep them
easy to find with grep, and also takes a name for the pt_regs argument
so that we don't have a confusing implicit variable.

Since local_daif_mask() handles the GIC priority, we don't need to mess
with this explicitly as we did in the old assembly, and the now unused
gic_prio_kentry_setup macro can be removed.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/assembler.h | 18 ----------
 arch/arm64/include/asm/exception.h |  1 +
 arch/arm64/kernel/entry-common.c   | 67 +++++++++++++++++++++++++++++++++-----
 arch/arm64/kernel/entry.S          | 56 ++-----------------------------
 arch/arm64/kernel/signal.c         |  3 +-
 5 files changed, 64 insertions(+), 81 deletions(-)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index b8cf7c85ffa2..505beb369f1e 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -67,24 +67,6 @@
 	msr	daifclr, #8
 	.endm
 
-	.macro	disable_step_tsk, flgs, tmp
-	tbz	\flgs, #TIF_SINGLESTEP, 9990f
-	mrs	\tmp, mdscr_el1
-	bic	\tmp, \tmp, #DBG_MDSCR_SS
-	msr	mdscr_el1, \tmp
-	isb	// Synchronise with enable_dbg
-9990:
-	.endm
-
-	/* call with daif masked */
-	.macro	enable_step_tsk, flgs, tmp
-	tbz	\flgs, #TIF_SINGLESTEP, 9990f
-	mrs	\tmp, mdscr_el1
-	orr	\tmp, \tmp, #DBG_MDSCR_SS
-	msr	mdscr_el1, \tmp
-9990:
-	.endm
-
 /*
  * SMP data memory barrier
  */
diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
index 220a7c3971d8..7f367d720ca4 100644
--- a/arch/arm64/include/asm/exception.h
+++ b/arch/arm64/include/asm/exception.h
@@ -52,5 +52,6 @@ void do_el0_svc_compat(struct pt_regs *regs);
 void do_el0_ia_bp_hardening(unsigned long addr,  unsigned int esr,
 			    struct pt_regs *regs);
 void do_serror(struct pt_regs *regs, unsigned int esr);
+void do_notify_resume(struct pt_regs *regs,  unsigned long thread_flags);
 
 #endif	/* __ASM_EXCEPTION_H */
diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
index bf9d497e620c..17dbfadb2fb8 100644
--- a/arch/arm64/kernel/entry-common.c
+++ b/arch/arm64/kernel/entry-common.c
@@ -15,10 +15,12 @@
 #include <linux/preempt.h>
 #include <linux/ptrace.h>
 #include <linux/sched/debug.h>
+#include <linux/stackleak.h>
 #include <linux/thread_info.h>
 
 #include <asm/cpufeature.h>
 #include <asm/daifflags.h>
+#include <asm/debug-monitors.h>
 #include <asm/esr.h>
 #include <asm/exception.h>
 #include <asm/kprobes.h>
@@ -107,6 +109,59 @@ asmlinkage void notrace el1_sync_handler(struct pt_regs *regs)
 }
 NOKPROBE_SYMBOL(el1_sync_handler);
 
+static void notrace el0_prepare_entry(struct pt_regs *regs)
+{
+	if (test_thread_flag(TIF_SINGLESTEP)) {
+		__disable_single_step_nosync();
+		isb();
+	}
+}
+NOKPROBE_SYMBOL(el0_prepare_entry);
+
+static void notrace el0_prepare_return(struct pt_regs *regs)
+{
+	unsigned long flags;
+
+	local_daif_mask();
+
+	flags = current_thread_info()->flags;
+	if (unlikely(flags & _TIF_WORK_MASK)) {
+		do_notify_resume(regs, flags);
+		trace_hardirqs_on();
+	}
+
+	if (test_thread_flag(TIF_SINGLESTEP))
+		__enable_single_step_nosync();
+
+	user_enter();
+
+	stackleak_erase();
+}
+NOKPROBE_SYMBOL(el0_prepare_return);
+
+asmlinkage void notrace el0_prepare_return_from_fork(void)
+{
+	el0_prepare_return(current_pt_regs());
+}
+NOKPROBE_SYMBOL(el0_prepare_return_from_fork);
+
+/*
+ * Top-level exception handlers need to perform common entry/exit work. Use
+ * this macro when defining a handler for exceptions from EL0, so that work is
+ * handled automatically.
+ */
+#define EL0_HANDLER(handlername, regsname)						\
+static __always_inline void notrace __raw_##handlername(struct pt_regs *regsname);	\
+NOKPROBE_SYMBOL(__raw_##handlername);							\
+asmlinkage void notrace handlername(struct pt_regs *regs)				\
+{											\
+	el0_prepare_entry(regs);							\
+	__raw_##handlername(regs);							\
+	el0_prepare_return(regs);							\
+}											\
+NOKPROBE_SYMBOL(handlername);								\
+static __always_inline void notrace __raw_##handlername(struct pt_regs *regsname)
+
 static void notrace el0_da(struct pt_regs *regs, unsigned long esr)
 {
 	unsigned long far = read_sysreg(far_el1);
@@ -228,7 +283,7 @@ static void notrace el0_svc(struct pt_regs *regs)
 }
 NOKPROBE_SYMBOL(el0_svc);
 
-asmlinkage void notrace el0_sync_handler(struct pt_regs *regs)
+EL0_HANDLER(el0_sync_handler, regs)
 {
 	unsigned long esr = read_sysreg(esr_el1);
 
@@ -274,7 +329,6 @@ asmlinkage void notrace el0_sync_handler(struct pt_regs *regs)
 		el0_inv(regs, esr);
 	}
 }
-NOKPROBE_SYMBOL(el0_sync_handler);
 
 #ifdef CONFIG_COMPAT
 static void notrace el0_cp15(struct pt_regs *regs, unsigned long esr)
@@ -294,7 +348,7 @@ static void notrace el0_svc_compat(struct pt_regs *regs)
 }
 NOKPROBE_SYMBOL(el0_svc_compat);
 
-asmlinkage void notrace el0_sync_compat_handler(struct pt_regs *regs)
+EL0_HANDLER(el0_sync_compat_handler, regs)
 {
 	unsigned long esr = read_sysreg(esr_el1);
 
@@ -337,7 +391,6 @@ asmlinkage void notrace el0_sync_compat_handler(struct pt_regs *regs)
 		el0_inv(regs, esr);
 	}
 }
-NOKPROBE_SYMBOL(el0_sync_compat_handler);
 #endif /* CONFIG_COMPAT */
 
 static void __sched el1_preempt(void)
@@ -429,7 +482,7 @@ static inline void notrace do_el0_irq_bp_hardening(struct pt_regs *regs)
 }
 NOKPROBE_SYMBOL(do_el0_irq_bp_hardening);
 
-asmlinkage void notrace el0_irq_handler(struct pt_regs *regs)
+EL0_HANDLER(el0_irq_handler, regs)
 {
 	if (system_uses_irq_prio_masking())
 		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
@@ -441,7 +494,6 @@ asmlinkage void notrace el0_irq_handler(struct pt_regs *regs)
 	invoke_irq_handler(regs);
 	trace_hardirqs_on();
 }
-NOKPROBE_SYMBOL(el0_irq_handler);
 
 asmlinkage void el1_error_handler(struct pt_regs *regs)
 {
@@ -455,7 +507,7 @@ asmlinkage void el1_error_handler(struct pt_regs *regs)
 }
 NOKPROBE_SYMBOL(el1_error_handler);
 
-asmlinkage void el0_error_handler(struct pt_regs *regs)
+EL0_HANDLER(el0_error_handler, regs)
 {
 	unsigned long esr = read_sysreg(esr_el1);
 
@@ -467,4 +519,3 @@ asmlinkage void el0_error_handler(struct pt_regs *regs)
 	do_serror(regs, esr);
 	local_daif_restore(DAIF_PROCCTX_NOIRQ);
 }
-NOKPROBE_SYMBOL(el0_error_handler);
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index e76326feb1da..e67c8ad94cce 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -26,22 +26,6 @@
 #include <asm/asm-uaccess.h>
 #include <asm/unistd.h>
 
-/*
- * Context tracking subsystem.  Used to instrument transitions
- * between user and kernel mode.
- */
-	.macro ct_user_exit_irqoff
-#ifdef CONFIG_CONTEXT_TRACKING
-	bl	enter_from_user_mode
-#endif
-	.endm
-
-	.macro ct_user_enter
-#ifdef CONFIG_CONTEXT_TRACKING
-	bl	context_tracking_user_enter
-#endif
-	.endm
-
 	.macro	clear_gp_regs
 	.irp	n,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29
 	mov	x\n, xzr
@@ -167,9 +151,7 @@ alternative_cb_end
 	.if	\el == 0
 	clear_gp_regs
 	mrs	x21, sp_el0
-	ldr_this_cpu	tsk, __entry_task, x20	// Ensure MDSCR_EL1.SS is clear,
-	ldr	x19, [tsk, #TSK_TI_FLAGS]	// since we can unmask debug
-	disable_step_tsk x19, x20		// exceptions when scheduling.
+	ldr_this_cpu	tsk, __entry_task, x20
 
 	apply_ssbd 1, x22, x23
 
@@ -277,9 +259,6 @@ alternative_if ARM64_HAS_IRQ_PRIO_MASKING
 alternative_else_nop_endif
 
 	ldp	x21, x22, [sp, #S_PC]		// load ELR, SPSR
-	.if	\el == 0
-	ct_user_enter
-	.endif
 
 #ifdef CONFIG_ARM64_SW_TTBR0_PAN
 	/*
@@ -387,15 +366,6 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
 /* GPRs used by entry code */
 tsk	.req	x28		// current thread_info
 
-	.macro	gic_prio_kentry_setup, tmp:req
-#ifdef CONFIG_ARM64_PSEUDO_NMI
-	alternative_if ARM64_HAS_IRQ_PRIO_MASKING
-	mov	\tmp, #(GIC_PRIO_PSR_I_SET | GIC_PRIO_IRQON)
-	msr_s	SYS_ICC_PMR_EL1, \tmp
-	alternative_else_nop_endif
-#endif
-	.endm
-
 	.text
 
 /*
@@ -601,31 +571,10 @@ ENDPROC(el0_error_compat)
 #endif
 
 /*
- * Ok, we need to do extra processing, enter the slow path.
- */
-work_pending:
-	mov	x0, sp				// 'regs'
-	bl	do_notify_resume
-#ifdef CONFIG_TRACE_IRQFLAGS
-	bl	trace_hardirqs_on		// enabled while in userspace
-#endif
-	ldr	x1, [tsk, #TSK_TI_FLAGS]	// re-check for single-step
-	b	finish_ret_to_user
-/*
- * "slow" syscall return path.
+ * Common EL0 exception return path
  */
 	.align 6
 ret_to_user:
-	disable_daif
-	gic_prio_kentry_setup tmp=x3
-	ldr	x1, [tsk, #TSK_TI_FLAGS]
-	and	x2, x1, #_TIF_WORK_MASK
-	cbnz	x2, work_pending
-finish_ret_to_user:
-	enable_step_tsk x1, x2
-#ifdef CONFIG_GCC_PLUGIN_STACKLEAK
-	bl	stackleak_erase
-#endif
 	kernel_exit 0
 ENDPROC(ret_to_user)
 
@@ -787,6 +736,7 @@ ENTRY(ret_from_fork)
 	mov	x0, x20
 	blr	x19
 1:	get_current_task tsk
+	bl	el0_prepare_return_from_fork
 	b	ret_to_user
 ENDPROC(ret_from_fork)
 NOKPROBE(ret_from_fork)
diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
index dd2cdc0d5be2..22e726d57846 100644
--- a/arch/arm64/kernel/signal.c
+++ b/arch/arm64/kernel/signal.c
@@ -896,8 +896,7 @@ static void do_signal(struct pt_regs *regs)
 	restore_saved_sigmask();
 }
 
-asmlinkage void do_notify_resume(struct pt_regs *regs,
-				 unsigned long thread_flags)
+void do_notify_resume(struct pt_regs *regs, unsigned long thread_flags)
 {
 	/*
 	 * The assembly code enters us with IRQs off, but it hasn't
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
