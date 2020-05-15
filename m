Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 767C31D5768
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CYASLnFrzjA4BXkQq5sVnbC3EGLOvz/McvnpmpWIbYo=; b=EZV9E1x1LHXNTl
	6jMDJ0eKFut+de5HozWDGXtFlhx9zLuyLiFGp0Z0mcVVSH6uEGeQB7NwwNZZUygu/RCMF+wozq3ZF
	o7kXYRkIz+DluU72ErFRIOKWHeNLOGD3cUCtpn2f8K3iiUAGP8f0zqEmBiOd9biZT8oJzi/Skye6z
	HbVipzt2x8n0FQNfg1nQGUULPSranYboMlhWa+X5t8QFXzrYO6Ppw3Jtxsv2up0QzXxzOjDFgaNXP
	4dE1b3l1quXSiARmkUaJaBgNuMs4vt8TuIz7c+/hkZ13i/WHrKHdDxldpeKac39Lb4mgGl+lMB089
	9XA+MMPzp2fIvwWeNN9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZdyr-0003nU-HD; Fri, 15 May 2020 17:18:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdwm-00025U-Pu
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:16:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8CCBB1042;
 Fri, 15 May 2020 10:16:32 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D42A63F305;
 Fri, 15 May 2020 10:16:30 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 05/26] arm64: mte: Handle synchronous and asynchronous tag
 check faults
Date: Fri, 15 May 2020 18:15:51 +0100
Message-Id: <20200515171612.1020-6-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515171612.1020-1-catalin.marinas@arm.com>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_101632_940145_D4AA6B4C 
X-CRM114-Status: GOOD (  23.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vincenzo Frascino <vincenzo.frascino@arm.com>

The Memory Tagging Extension has two modes of notifying a tag check
fault at EL0, configurable through the SCTLR_EL1.TCF0 field:

1. Synchronous raising of a Data Abort exception with DFSC 17.
2. Asynchronous setting of a cumulative bit in TFSRE0_EL1.

Add the exception handler for the synchronous exception and handling of
the asynchronous TFSRE0_EL1.TF0 bit setting via a new TIF flag in
do_notify_resume().

On a tag check failure in user-space, whether synchronous or
asynchronous, a SIGSEGV will be raised on the faulting thread.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Co-developed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---

Notes:
    v4:
    - Use send_signal_fault() instead of fault_signal_inject() for
      asynchronous tag check faults as execution can continue even if this
      signal is masked.
    - Add DSB ISH prior to writing TFSRE0_EL1 in the clear_mte_async_tcf
      macro.
    - Move clear_mte_async_tcf just after returning to user since
      do_notify_resume() may still cause async tag faults via do_signal().
    
    v3:
    - Asynchronous tag check faults during the uaccess routines in the
      kernel are ignored.
    - Fix check_mte_async_tcf calling site as it expects the first argument
      to be the thread flags.
    - Move the mte_thread_switch() definition and call to a later patch as
      this became empty with the removal of async uaccess checking.
    - Add dsb() and clearing of TFSRE0_EL1 in flush_mte_state(), in case
      execve() triggered a asynchronous tag check fault.
    - Clear TIF_MTE_ASYNC_FAULT in arch_dup_task_struct() so that the child
      does not inherit any pending tag fault in the parent.
    
    v2:
    - Clear PSTATE.TCO on exception entry (automatically set by the hardware).
    - On syscall entry, for asynchronous tag check faults from user space,
      generate the signal early via syscall restarting.
    - Before context switch, save any potential async tag check fault
      generated by the kernel to the TIF flag (this follows an architecture
      update where the uaccess routines use the TCF0 mode).
    - Moved the flush_mte_state() and mte_thread_switch() function to a new
      mte.c file.

 arch/arm64/include/asm/mte.h         | 23 +++++++++++++++++
 arch/arm64/include/asm/thread_info.h |  4 ++-
 arch/arm64/kernel/Makefile           |  1 +
 arch/arm64/kernel/entry.S            | 37 ++++++++++++++++++++++++++++
 arch/arm64/kernel/mte.c              | 21 ++++++++++++++++
 arch/arm64/kernel/process.c          |  5 ++++
 arch/arm64/kernel/signal.c           |  8 ++++++
 arch/arm64/kernel/syscall.c          | 10 ++++++++
 arch/arm64/mm/fault.c                |  9 ++++++-
 9 files changed, 116 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/include/asm/mte.h
 create mode 100644 arch/arm64/kernel/mte.c

diff --git a/arch/arm64/include/asm/mte.h b/arch/arm64/include/asm/mte.h
new file mode 100644
index 000000000000..a0bf310da74b
--- /dev/null
+++ b/arch/arm64/include/asm/mte.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_MTE_H
+#define __ASM_MTE_H
+
+#ifndef __ASSEMBLY__
+
+#ifdef CONFIG_ARM64_MTE
+
+void flush_mte_state(void);
+
+#else
+
+static inline void flush_mte_state(void)
+{
+}
+
+#endif
+
+#endif /* __ASSEMBLY__ */
+#endif /* __ASM_MTE_H  */
diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
index 512174a8e789..0c6e5523b932 100644
--- a/arch/arm64/include/asm/thread_info.h
+++ b/arch/arm64/include/asm/thread_info.h
@@ -63,6 +63,7 @@ void arch_release_task_struct(struct task_struct *tsk);
 #define TIF_FOREIGN_FPSTATE	3	/* CPU's FP state is not current's */
 #define TIF_UPROBE		4	/* uprobe breakpoint or singlestep */
 #define TIF_FSCHECK		5	/* Check FS is USER_DS on return */
+#define TIF_MTE_ASYNC_FAULT	6	/* MTE Asynchronous Tag Check Fault */
 #define TIF_SYSCALL_TRACE	8	/* syscall trace active */
 #define TIF_SYSCALL_AUDIT	9	/* syscall auditing */
 #define TIF_SYSCALL_TRACEPOINT	10	/* syscall tracepoint for ftrace */
@@ -91,10 +92,11 @@ void arch_release_task_struct(struct task_struct *tsk);
 #define _TIF_FSCHECK		(1 << TIF_FSCHECK)
 #define _TIF_32BIT		(1 << TIF_32BIT)
 #define _TIF_SVE		(1 << TIF_SVE)
+#define _TIF_MTE_ASYNC_FAULT	(1 << TIF_MTE_ASYNC_FAULT)
 
 #define _TIF_WORK_MASK		(_TIF_NEED_RESCHED | _TIF_SIGPENDING | \
 				 _TIF_NOTIFY_RESUME | _TIF_FOREIGN_FPSTATE | \
-				 _TIF_UPROBE | _TIF_FSCHECK)
+				 _TIF_UPROBE | _TIF_FSCHECK | _TIF_MTE_ASYNC_FAULT)
 
 #define _TIF_SYSCALL_WORK	(_TIF_SYSCALL_TRACE | _TIF_SYSCALL_AUDIT | \
 				 _TIF_SYSCALL_TRACEPOINT | _TIF_SECCOMP | \
diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
index 4e5b8ee31442..dbede7a4c5fb 100644
--- a/arch/arm64/kernel/Makefile
+++ b/arch/arm64/kernel/Makefile
@@ -63,6 +63,7 @@ obj-$(CONFIG_CRASH_CORE)		+= crash_core.o
 obj-$(CONFIG_ARM_SDE_INTERFACE)		+= sdei.o
 obj-$(CONFIG_ARM64_SSBD)		+= ssbd.o
 obj-$(CONFIG_ARM64_PTR_AUTH)		+= pointer_auth.o
+obj-$(CONFIG_ARM64_MTE)			+= mte.o
 
 obj-y					+= vdso/ probes/
 obj-$(CONFIG_COMPAT_VDSO)		+= vdso32/
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index ddcde093c433..cbb3cacdf79f 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -145,6 +145,32 @@ alternative_cb_end
 #endif
 	.endm
 
+	/* Check for MTE asynchronous tag check faults */
+	.macro check_mte_async_tcf, flgs, tmp
+#ifdef CONFIG_ARM64_MTE
+alternative_if_not ARM64_MTE
+	b	1f
+alternative_else_nop_endif
+	mrs_s	\tmp, SYS_TFSRE0_EL1
+	tbz	\tmp, #SYS_TFSR_EL1_TF0_SHIFT, 1f
+	/* Asynchronous TCF occurred for TTBR0 access, set the TI flag */
+	orr	\flgs, \flgs, #_TIF_MTE_ASYNC_FAULT
+	str	\flgs, [tsk, #TSK_TI_FLAGS]
+	msr_s	SYS_TFSRE0_EL1, xzr
+1:
+#endif
+	.endm
+
+	/* Clear the MTE asynchronous tag check faults */
+	.macro clear_mte_async_tcf
+#ifdef CONFIG_ARM64_MTE
+alternative_if ARM64_MTE
+	dsb	ish
+	msr_s	SYS_TFSRE0_EL1, xzr
+alternative_else_nop_endif
+#endif
+	.endm
+
 	.macro	kernel_entry, el, regsize = 64
 	.if	\regsize == 32
 	mov	w0, w0				// zero upper 32 bits of x0
@@ -176,6 +202,8 @@ alternative_cb_end
 	ldr	x19, [tsk, #TSK_TI_FLAGS]
 	disable_step_tsk x19, x20
 
+	/* Check for asynchronous tag check faults in user space */
+	check_mte_async_tcf x19, x22
 	apply_ssbd 1, x22, x23
 
 	ptrauth_keys_install_kernel tsk, 1, x20, x22, x23
@@ -244,6 +272,13 @@ alternative_if ARM64_HAS_IRQ_PRIO_MASKING
 	str	x20, [sp, #S_PMR_SAVE]
 alternative_else_nop_endif
 
+	/* Re-enable tag checking (TCO set on exception entry) */
+#ifdef CONFIG_ARM64_MTE
+alternative_if ARM64_MTE
+	SET_PSTATE_TCO(0)
+alternative_else_nop_endif
+#endif
+
 	/*
 	 * Registers that may be useful after this macro is invoked:
 	 *
@@ -748,6 +783,8 @@ ret_to_user:
 	and	x2, x1, #_TIF_WORK_MASK
 	cbnz	x2, work_pending
 finish_ret_to_user:
+	/* Ignore asynchronous tag check faults in the uaccess routines */
+	clear_mte_async_tcf
 	enable_step_tsk x1, x2
 #ifdef CONFIG_GCC_PLUGIN_STACKLEAK
 	bl	stackleak_erase
diff --git a/arch/arm64/kernel/mte.c b/arch/arm64/kernel/mte.c
new file mode 100644
index 000000000000..032016823957
--- /dev/null
+++ b/arch/arm64/kernel/mte.c
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+
+#include <linux/thread_info.h>
+
+#include <asm/cpufeature.h>
+#include <asm/mte.h>
+#include <asm/sysreg.h>
+
+void flush_mte_state(void)
+{
+	if (!system_supports_mte())
+		return;
+
+	/* clear any pending asynchronous tag fault */
+	dsb(ish);
+	write_sysreg_s(0, SYS_TFSRE0_EL1);
+	clear_thread_flag(TIF_MTE_ASYNC_FAULT);
+}
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 56be4cbf771f..740047c9cd13 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -50,6 +50,7 @@
 #include <asm/exec.h>
 #include <asm/fpsimd.h>
 #include <asm/mmu_context.h>
+#include <asm/mte.h>
 #include <asm/processor.h>
 #include <asm/pointer_auth.h>
 #include <asm/stacktrace.h>
@@ -323,6 +324,7 @@ void flush_thread(void)
 	tls_thread_flush();
 	flush_ptrace_hw_breakpoint(current);
 	flush_tagged_addr_state();
+	flush_mte_state();
 }
 
 void release_thread(struct task_struct *dead_task)
@@ -355,6 +357,9 @@ int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
 	dst->thread.sve_state = NULL;
 	clear_tsk_thread_flag(dst, TIF_SVE);
 
+	/* clear any pending asynchronous tag fault raised by the parent */
+	clear_tsk_thread_flag(dst, TIF_MTE_ASYNC_FAULT);
+
 	return 0;
 }
 
diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
index 339882db5a91..149334d5df02 100644
--- a/arch/arm64/kernel/signal.c
+++ b/arch/arm64/kernel/signal.c
@@ -732,6 +732,9 @@ static void setup_return(struct pt_regs *regs, struct k_sigaction *ka,
 	regs->regs[29] = (unsigned long)&user->next_frame->fp;
 	regs->pc = (unsigned long)ka->sa.sa_handler;
 
+	/* TCO (Tag Check Override) always cleared for signal handlers */
+	regs->pstate &= ~PSR_TCO_BIT;
+
 	if (ka->sa.sa_flags & SA_RESTORER)
 		sigtramp = ka->sa.sa_restorer;
 	else
@@ -923,6 +926,11 @@ asmlinkage void do_notify_resume(struct pt_regs *regs,
 			if (thread_flags & _TIF_UPROBE)
 				uprobe_notify_resume(regs);
 
+			if (thread_flags & _TIF_MTE_ASYNC_FAULT) {
+				clear_thread_flag(TIF_MTE_ASYNC_FAULT);
+				send_sig_fault(SIGSEGV, SEGV_MTEAERR, 0, current);
+			}
+
 			if (thread_flags & _TIF_SIGPENDING)
 				do_signal(regs);
 
diff --git a/arch/arm64/kernel/syscall.c b/arch/arm64/kernel/syscall.c
index a12c0c88d345..db25f5d6a07c 100644
--- a/arch/arm64/kernel/syscall.c
+++ b/arch/arm64/kernel/syscall.c
@@ -102,6 +102,16 @@ static void el0_svc_common(struct pt_regs *regs, int scno, int sc_nr,
 	local_daif_restore(DAIF_PROCCTX);
 	user_exit();
 
+	if (system_supports_mte() && (flags & _TIF_MTE_ASYNC_FAULT)) {
+		/*
+		 * Process the asynchronous tag check fault before the actual
+		 * syscall. do_notify_resume() will send a signal to userspace
+		 * before the syscall is restarted.
+		 */
+		regs->regs[0] = -ERESTARTNOINTR;
+		return;
+	}
+
 	if (has_syscall_work(flags)) {
 		/* set default errno for user-issued syscall(-1) */
 		if (scno == NO_SYSCALL)
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index c9cedc0432d2..38b59cace3e3 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -650,6 +650,13 @@ static int do_sea(unsigned long addr, unsigned int esr, struct pt_regs *regs)
 	return 0;
 }
 
+static int do_tag_check_fault(unsigned long addr, unsigned int esr,
+			      struct pt_regs *regs)
+{
+	do_bad_area(addr, esr, regs);
+	return 0;
+}
+
 static const struct fault_info fault_info[] = {
 	{ do_bad,		SIGKILL, SI_KERNEL,	"ttbr address size fault"	},
 	{ do_bad,		SIGKILL, SI_KERNEL,	"level 1 address size fault"	},
@@ -668,7 +675,7 @@ static const struct fault_info fault_info[] = {
 	{ do_page_fault,	SIGSEGV, SEGV_ACCERR,	"level 2 permission fault"	},
 	{ do_page_fault,	SIGSEGV, SEGV_ACCERR,	"level 3 permission fault"	},
 	{ do_sea,		SIGBUS,  BUS_OBJERR,	"synchronous external abort"	},
-	{ do_bad,		SIGKILL, SI_KERNEL,	"unknown 17"			},
+	{ do_tag_check_fault,	SIGSEGV, SEGV_MTESERR,	"synchronous tag check fault"	},
 	{ do_bad,		SIGKILL, SI_KERNEL,	"unknown 18"			},
 	{ do_bad,		SIGKILL, SI_KERNEL,	"unknown 19"			},
 	{ do_sea,		SIGKILL, SI_KERNEL,	"level 0 (translation table walk)"	},

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
