Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6411DC535
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 04:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9BWNMleu9Q0MMWY63qmUUDuLUB81n0wRn67mO2Wl3I4=; b=ZbtPEaGCLTeCvA
	endrQrxkzyoP4cP2F/xTzXbgEUcQI0cXnwpcIT7x7gVbhH/AhlNfDkm9+S3EJVRV83gMWVVUyE8wf
	a1PPX5iuAVferVK14+2vjVin6XFgAPlLKByzZEciovS9SVUfeOqN86C2cbd+HCoFCjHhVZwB5l3sO
	CuM3c5Jrfut5650CMzbv2MFJlPMDzTekd2NWE0LM5GLw19q7AI2A6YIRWFyCk1ktp9dFoaA6dqCfZ
	ExXLRtp/UNduZM6LsERX3CDJEOdIXVnrhvhlj+zvX1j8zgwg+FaccRidcvLQPfrFFm0Ju+mUaqJDT
	YEGPlDVkFCjTCte0Px1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbazE-0006s8-Mz; Thu, 21 May 2020 02:31:08 +0000
Received: from mail-qv1-xf49.google.com ([2607:f8b0:4864:20::f49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbayO-0006JL-2K
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 02:30:20 +0000
Received: by mail-qv1-xf49.google.com with SMTP id z1so5722045qvd.23
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 19:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=OYgk/fJKI3B/9vDegu4wmGLXS2+dMUhlCENTA6ZTnGY=;
 b=IVEoWoamcZHP9Xn868ONVomLKzOAuZSuTt/nn+/rm0lo82IrmVWuxDfsIh70oGU9Yk
 1ykR8pp4F3mk4doobU859wrnm0V4nqFaZ2e1BLfzkl6e/6NA0/oKAHmrvomrCexQcLqM
 EpD+zLnMP3LN+IJmmOI0QZE7RDUPyWJocWoByi9eTGReeDUK/UFpbXtCCr15IRnRgyd6
 4CbgQYp8YUjUbqQEu1zKSzD41fphDktS/Ms12Bz11mNwmyWZ4T0dgZCb1448V42xy9NN
 fqaHa2mWB7batmRgVfcCDnBkwmbZI2HhTxPJ5E7oXyDEaRWIn9HYevctimTfyoodAnIU
 JjFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=OYgk/fJKI3B/9vDegu4wmGLXS2+dMUhlCENTA6ZTnGY=;
 b=bvwOv9iSFCSKiRJftXY2B5JseZWGRn3VUZH3BVtay2EgHTQtYJs9Jt9HKqYZvFwqse
 iQVnOOD4+tirKJryEkUk9enyZF2WFnEuUkvPXhDzzGh5jT1tf1FpuQipaP3700DSumjx
 rAZG/ys7j7/qCcGX8EI9dw2uggC5A4x8x5UYis8/015s3QaQkGihoFSg6N9v7oSarGl9
 aXoIntRbwtz2CaHsMOXAvMTKXgTMtkBdVkJ7rDdgOMHIzDBafqgdSG14oPRbL2gx5Ukm
 zCFU0mziIlmXolhYfycIy+85bS8bU11pFoUKIAVBbvx/TwyRZdV42DtU67LI/K4xOyok
 Z47g==
X-Gm-Message-State: AOAM531DU5q1wdeGhVB3wZAkQAdhcU8MyHXSBD7xUgcNaD9G359HjTWI
 8sKZDdlD/c61SZ07DFwP3H873B4=
X-Google-Smtp-Source: ABdhPJzM0MaP2BboJskXUTfpF4TAULc1wIAjRsA2K43QtyU5wqp/aY+cXD8+HeI8bAz+HRHkggy8DsU=
X-Received: by 2002:a0c:8324:: with SMTP id j33mr8049005qva.23.1590028213407; 
 Wed, 20 May 2020 19:30:13 -0700 (PDT)
Date: Wed, 20 May 2020 19:29:42 -0700
In-Reply-To: <20200521022943.195898-1-pcc@google.com>
Message-Id: <20200521022943.195898-3-pcc@google.com>
Mime-Version: 1.0
References: <20200521022943.195898-1-pcc@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH v6 2/3] arm64: Move fault address and fault code into
 kernel_siginfo
From: Peter Collingbourne <pcc@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, Kostya Serebryany <kcc@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, 
 Dave Martin <Dave.Martin@arm.com>, Will Deacon <will@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, 
 "Eric W. Biederman" <ebiederm@xmission.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_193016_469723_27E9DDC2 
X-CRM114-Status: GOOD (  25.29  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f49 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Previously this data was being stored in thread_struct, which is
error-prone because the data is associated with the signal itself
and not the task, and as a result it could get out of sync with the
signal that is currently being delivered. To avoid this problem,
move the fields to kernel_siginfo using the newly-introduced generic
support for doing so.

The new fields store the raw FAR_EL1 and ESR_EL1 values instead of
the cooked ones as we were doing before. For FAR_EL1 this will be
necessary in order to expose the high bits of FAR_EL1 in sigcontext
in an upcoming change. Do the same for ESR_EL1 for consistency and
to make the code less error-prone.

While here, fix an apparent compat bug where, when delivering a
SIGILL signal in response to an invalid syscall, the syscall number
was being interpreted as an ESR_EL1 value and translated into an
FSR before being stored in sigcontext.error_code, rather than being
stored in error_code directly, as was the intention (and the behaviour
of the code in arch/arm). This is achieved by moving the error_code
translation early so that the syscall number can avoid it.

Signed-off-by: Peter Collingbourne <pcc@google.com>
---
 arch/arm64/include/asm/exception.h |   2 +-
 arch/arm64/include/asm/processor.h |   2 -
 arch/arm64/include/asm/signal.h    |  16 ++++
 arch/arm64/include/asm/traps.h     |   8 +-
 arch/arm64/kernel/debug-monitors.c |   4 +-
 arch/arm64/kernel/entry-common.c   |   2 -
 arch/arm64/kernel/probes/uprobes.c |  18 ++---
 arch/arm64/kernel/ptrace.c         |   2 +-
 arch/arm64/kernel/signal.c         |  17 +++--
 arch/arm64/kernel/signal32.c       |  15 ++--
 arch/arm64/kernel/sys_compat.c     |   9 ++-
 arch/arm64/kernel/traps.c          | 117 ++++++++++++++++++++++++-----
 arch/arm64/mm/fault.c              | 111 +++++++--------------------
 13 files changed, 183 insertions(+), 140 deletions(-)
 create mode 100644 arch/arm64/include/asm/signal.h

diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
index 7a6e81ca23a8..90e772d9b2cd 100644
--- a/arch/arm64/include/asm/exception.h
+++ b/arch/arm64/include/asm/exception.h
@@ -32,7 +32,7 @@ static inline u32 disr_to_esr(u64 disr)
 }
 
 asmlinkage void enter_from_user_mode(void);
-void do_mem_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
+void do_mem_abort(unsigned long far, unsigned int esr, struct pt_regs *regs);
 void do_undefinstr(struct pt_regs *regs);
 asmlinkage void bad_mode(struct pt_regs *regs, int reason, unsigned int esr);
 void do_debug_exception(unsigned long addr_if_watchpoint, unsigned int esr,
diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 240fe5e5b720..b326bfbcea62 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -144,8 +144,6 @@ struct thread_struct {
 	void			*sve_state;	/* SVE registers, if any */
 	unsigned int		sve_vl;		/* SVE vector length */
 	unsigned int		sve_vl_onexec;	/* SVE vl after next exec */
-	unsigned long		fault_address;	/* fault info */
-	unsigned long		fault_code;	/* ESR_EL1 value */
 	struct debug_info	debug;		/* debugging */
 #ifdef CONFIG_ARM64_PTR_AUTH
 	struct ptrauth_keys_user	keys_user;
diff --git a/arch/arm64/include/asm/signal.h b/arch/arm64/include/asm/signal.h
new file mode 100644
index 000000000000..f5c001b0a125
--- /dev/null
+++ b/arch/arm64/include/asm/signal.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_ARM64_SIGNAL_H
+#define _ASM_ARM64_SIGNAL_H
+
+#include <uapi/asm/signal.h>
+
+#define __ARCH_HAS_PRIVATE_SIGINFO
+struct arch_private_siginfo {
+	/* FAR_EL1 value */
+	unsigned long fault_address;
+
+	/* Sanitized ESR_EL1 value, or FSR/syscall number in compat mode */
+	unsigned long error_code;
+};
+
+#endif
diff --git a/arch/arm64/include/asm/traps.h b/arch/arm64/include/asm/traps.h
index cee5928e1b7d..5ed5be5347e6 100644
--- a/arch/arm64/include/asm/traps.h
+++ b/arch/arm64/include/asm/traps.h
@@ -26,8 +26,12 @@ void register_undef_hook(struct undef_hook *hook);
 void unregister_undef_hook(struct undef_hook *hook);
 void force_signal_inject(int signal, int code, unsigned long address);
 void arm64_notify_segfault(unsigned long addr);
-void arm64_force_sig_fault(int signo, int code, void __user *addr, const char *str);
-void arm64_force_sig_mceerr(int code, void __user *addr, short lsb, const char *str);
+void arm64_force_sig_fault(int signo, int code, void __user *addr,
+			   unsigned long far, unsigned long esr,
+			   const char *str);
+void arm64_force_sig_mceerr(int code, void __user *addr, short lsb,
+			    unsigned long far, unsigned long esr,
+			    const char *str);
 void arm64_force_sig_ptrace_errno_trap(int errno, void __user *addr, const char *str);
 
 /*
diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
index 48222a4760c2..498e6393b2ca 100644
--- a/arch/arm64/kernel/debug-monitors.c
+++ b/arch/arm64/kernel/debug-monitors.c
@@ -232,8 +232,8 @@ static void send_user_sigtrap(int si_code)
 		local_irq_enable();
 
 	arm64_force_sig_fault(SIGTRAP, si_code,
-			     (void __user *)instruction_pointer(regs),
-			     "User debug trap");
+			      (void __user *)instruction_pointer(regs), 0, 0,
+			      "User debug trap");
 }
 
 static int single_step_handler(unsigned long unused, unsigned int esr,
diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
index c839b5bf1904..045b4f518836 100644
--- a/arch/arm64/kernel/entry-common.c
+++ b/arch/arm64/kernel/entry-common.c
@@ -22,7 +22,6 @@ static void notrace el1_abort(struct pt_regs *regs, unsigned long esr)
 	unsigned long far = read_sysreg(far_el1);
 
 	local_daif_inherit(regs);
-	far = untagged_addr(far);
 	do_mem_abort(far, esr, regs);
 }
 NOKPROBE_SYMBOL(el1_abort);
@@ -104,7 +103,6 @@ static void notrace el0_da(struct pt_regs *regs, unsigned long esr)
 
 	user_exit_irqoff();
 	local_daif_restore(DAIF_PROCCTX);
-	far = untagged_addr(far);
 	do_mem_abort(far, esr, regs);
 }
 NOKPROBE_SYMBOL(el0_da);
diff --git a/arch/arm64/kernel/probes/uprobes.c b/arch/arm64/kernel/probes/uprobes.c
index a412d8edbcd2..5bbcd2e813f0 100644
--- a/arch/arm64/kernel/probes/uprobes.c
+++ b/arch/arm64/kernel/probes/uprobes.c
@@ -9,8 +9,6 @@
 
 #include "decode-insn.h"
 
-#define UPROBE_INV_FAULT_CODE	UINT_MAX
-
 void arch_uprobe_copy_ixol(struct page *page, unsigned long vaddr,
 		void *src, unsigned long len)
 {
@@ -63,9 +61,6 @@ int arch_uprobe_pre_xol(struct arch_uprobe *auprobe, struct pt_regs *regs)
 {
 	struct uprobe_task *utask = current->utask;
 
-	/* Initialize with an invalid fault code to detect if ol insn trapped */
-	current->thread.fault_code = UPROBE_INV_FAULT_CODE;
-
 	/* Instruction points to execute ol */
 	instruction_pointer_set(regs, utask->xol_vaddr);
 
@@ -78,7 +73,7 @@ int arch_uprobe_post_xol(struct arch_uprobe *auprobe, struct pt_regs *regs)
 {
 	struct uprobe_task *utask = current->utask;
 
-	WARN_ON_ONCE(current->thread.fault_code != UPROBE_INV_FAULT_CODE);
+	WARN_ON_ONCE(arch_uprobe_xol_was_trapped(current));
 
 	/* Instruction points to execute next to breakpoint address */
 	instruction_pointer_set(regs, utask->vaddr + 4);
@@ -89,13 +84,16 @@ int arch_uprobe_post_xol(struct arch_uprobe *auprobe, struct pt_regs *regs)
 }
 bool arch_uprobe_xol_was_trapped(struct task_struct *t)
 {
+	struct sigqueue *q;
+
 	/*
 	 * Between arch_uprobe_pre_xol and arch_uprobe_post_xol, if an xol
-	 * insn itself is trapped, then detect the case with the help of
-	 * invalid fault code which is being set in arch_uprobe_pre_xol
+	 * insn itself is trapped, then detect the case by checking for
+	 * non-zero esr_el1 in the task's pending signals.
 	 */
-	if (t->thread.fault_code != UPROBE_INV_FAULT_CODE)
-		return true;
+	list_for_each_entry (q, &t->pending.list, list)
+		if (q->info.arch.error_code)
+			return true;
 
 	return false;
 }
diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
index b3d3005d9515..51bb8bcaf24b 100644
--- a/arch/arm64/kernel/ptrace.c
+++ b/arch/arm64/kernel/ptrace.c
@@ -198,7 +198,7 @@ static void ptrace_hbptriggered(struct perf_event *bp,
 	}
 #endif
 	arm64_force_sig_fault(SIGTRAP, TRAP_HWBKPT,
-			      (void __user *)(bkpt->trigger),
+			      (void __user *)(bkpt->trigger), 0, 0,
 			      desc);
 }
 
diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
index 339882db5a91..10d7e9832a89 100644
--- a/arch/arm64/kernel/signal.c
+++ b/arch/arm64/kernel/signal.c
@@ -566,6 +566,7 @@ SYSCALL_DEFINE0(rt_sigreturn)
  *	of the task.
  */
 static int setup_sigframe_layout(struct rt_sigframe_user_layout *user,
+				 struct kernel_siginfo *info,
 				 bool add_all)
 {
 	int err;
@@ -576,7 +577,7 @@ static int setup_sigframe_layout(struct rt_sigframe_user_layout *user,
 		return err;
 
 	/* fault information, if valid */
-	if (add_all || current->thread.fault_code) {
+	if (add_all || info->arch.error_code) {
 		err = sigframe_alloc(user, &user->esr_offset,
 				     sizeof(struct esr_context));
 		if (err)
@@ -605,7 +606,8 @@ static int setup_sigframe_layout(struct rt_sigframe_user_layout *user,
 }
 
 static int setup_sigframe(struct rt_sigframe_user_layout *user,
-			  struct pt_regs *regs, sigset_t *set)
+			  struct pt_regs *regs, sigset_t *set,
+			  struct kernel_siginfo *info)
 {
 	int i, err = 0;
 	struct rt_sigframe __user *sf = user->sigframe;
@@ -621,7 +623,8 @@ static int setup_sigframe(struct rt_sigframe_user_layout *user,
 	__put_user_error(regs->pc, &sf->uc.uc_mcontext.pc, err);
 	__put_user_error(regs->pstate, &sf->uc.uc_mcontext.pstate, err);
 
-	__put_user_error(current->thread.fault_address, &sf->uc.uc_mcontext.fault_address, err);
+	__put_user_error(untagged_addr(info->arch.fault_address),
+			 &sf->uc.uc_mcontext.fault_address, err);
 
 	err |= __copy_to_user(&sf->uc.uc_sigmask, set, sizeof(*set));
 
@@ -638,7 +641,7 @@ static int setup_sigframe(struct rt_sigframe_user_layout *user,
 
 		__put_user_error(ESR_MAGIC, &esr_ctx->head.magic, err);
 		__put_user_error(sizeof(*esr_ctx), &esr_ctx->head.size, err);
-		__put_user_error(current->thread.fault_code, &esr_ctx->esr, err);
+		__put_user_error(info->arch.error_code, &esr_ctx->esr, err);
 	}
 
 	/* Scalable Vector Extension state, if present */
@@ -701,7 +704,7 @@ static int get_sigframe(struct rt_sigframe_user_layout *user,
 	int err;
 
 	init_user_layout(user);
-	err = setup_sigframe_layout(user, false);
+	err = setup_sigframe_layout(user, &ksig->info, false);
 	if (err)
 		return err;
 
@@ -758,7 +761,7 @@ static int setup_rt_frame(int usig, struct ksignal *ksig, sigset_t *set,
 	__put_user_error(NULL, &frame->uc.uc_link, err);
 
 	err |= __save_altstack(&frame->uc.uc_stack, regs->sp);
-	err |= setup_sigframe(&user, regs, set);
+	err |= setup_sigframe(&user, regs, set, &ksig->info);
 	if (err == 0) {
 		setup_return(regs, &ksig->ka, &user, usig);
 		if (ksig->ka.sa.sa_flags & SA_SIGINFO) {
@@ -958,7 +961,7 @@ void __init minsigstksz_setup(void)
 	 * If this fails, SIGFRAME_MAXSZ needs to be enlarged.  It won't
 	 * be big enough, but it's our best guess:
 	 */
-	if (WARN_ON(setup_sigframe_layout(&user, true)))
+	if (WARN_ON(setup_sigframe_layout(&user, 0, true)))
 		return;
 
 	signal_minsigstksz = sigframe_size(&user) +
diff --git a/arch/arm64/kernel/signal32.c b/arch/arm64/kernel/signal32.c
index 82feca6f7052..b302689b6651 100644
--- a/arch/arm64/kernel/signal32.c
+++ b/arch/arm64/kernel/signal32.c
@@ -37,8 +37,6 @@ struct compat_vfp_sigframe {
 #define VFP_MAGIC		0x56465001
 #define VFP_STORAGE_SIZE	sizeof(struct compat_vfp_sigframe)
 
-#define FSR_WRITE_SHIFT		(11)
-
 struct compat_aux_sigframe {
 	struct compat_vfp_sigframe	vfp;
 
@@ -384,7 +382,8 @@ static void compat_setup_return(struct pt_regs *regs, struct k_sigaction *ka,
 }
 
 static int compat_setup_sigframe(struct compat_sigframe __user *sf,
-				 struct pt_regs *regs, sigset_t *set)
+				 struct pt_regs *regs, sigset_t *set,
+				 struct kernel_siginfo *info)
 {
 	struct compat_aux_sigframe __user *aux;
 	unsigned long psr = pstate_to_compat_psr(regs->pstate);
@@ -409,10 +408,8 @@ static int compat_setup_sigframe(struct compat_sigframe __user *sf,
 	__put_user_error(psr, &sf->uc.uc_mcontext.arm_cpsr, err);
 
 	__put_user_error((compat_ulong_t)0, &sf->uc.uc_mcontext.trap_no, err);
-	/* set the compat FSR WnR */
-	__put_user_error(!!(current->thread.fault_code & ESR_ELx_WNR) <<
-			 FSR_WRITE_SHIFT, &sf->uc.uc_mcontext.error_code, err);
-	__put_user_error(current->thread.fault_address, &sf->uc.uc_mcontext.fault_address, err);
+	__put_user_error(info->arch.error_code, &sf->uc.uc_mcontext.error_code, err);
+	__put_user_error(info->arch.fault_address, &sf->uc.uc_mcontext.fault_address, err);
 	__put_user_error(set->sig[0], &sf->uc.uc_mcontext.oldmask, err);
 
 	err |= put_sigset_t(&sf->uc.uc_sigmask, set);
@@ -447,7 +444,7 @@ int compat_setup_rt_frame(int usig, struct ksignal *ksig,
 
 	err |= __compat_save_altstack(&frame->sig.uc.uc_stack, regs->compat_sp);
 
-	err |= compat_setup_sigframe(&frame->sig, regs, set);
+	err |= compat_setup_sigframe(&frame->sig, regs, set, &ksig->info);
 
 	if (err == 0) {
 		compat_setup_return(regs, &ksig->ka, frame->sig.retcode, frame, usig);
@@ -471,7 +468,7 @@ int compat_setup_frame(int usig, struct ksignal *ksig, sigset_t *set,
 
 	__put_user_error(0x5ac3c35a, &frame->uc.uc_flags, err);
 
-	err |= compat_setup_sigframe(frame, regs, set);
+	err |= compat_setup_sigframe(frame, regs, set, &ksig->info);
 	if (err == 0)
 		compat_setup_return(regs, &ksig->ka, frame->retcode, frame, usig);
 
diff --git a/arch/arm64/kernel/sys_compat.c b/arch/arm64/kernel/sys_compat.c
index 3c18c2454089..d7a0b93a8d9f 100644
--- a/arch/arm64/kernel/sys_compat.c
+++ b/arch/arm64/kernel/sys_compat.c
@@ -69,6 +69,7 @@ do_compat_cache_op(unsigned long start, unsigned long end, int flags)
 long compat_arm_syscall(struct pt_regs *regs, int scno)
 {
 	void __user *addr;
+	struct kernel_siginfo info;
 
 	switch (scno) {
 	/*
@@ -114,7 +115,11 @@ long compat_arm_syscall(struct pt_regs *regs, int scno)
 	addr  = (void __user *)instruction_pointer(regs) -
 		(compat_thumb_mode(regs) ? 2 : 4);
 
-	arm64_notify_die("Oops - bad compat syscall(2)", regs,
-			 SIGILL, ILL_ILLTRP, addr, scno);
+	clear_siginfo(&info);
+	info.si_signo = SIGILL;
+	info.si_code = ILL_ILLTRP;
+	info.si_addr = addr;
+	info.arch.error_code = scno;
+	force_sig_info(&info);
 	return 0;
 }
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index cf402be5c573..4545fe067ea9 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -44,6 +44,8 @@
 #include <asm/system_misc.h>
 #include <asm/sysreg.h>
 
+#define FSR_WRITE_SHIFT		(11)
+
 static const char *handler[]= {
 	"Synchronous Abort",
 	"IRQ",
@@ -209,12 +211,11 @@ void die(const char *str, struct pt_regs *regs, int err)
 		do_exit(SIGSEGV);
 }
 
-static void arm64_show_signal(int signo, const char *str)
+static void arm64_show_signal(int signo, unsigned long esr, const char *str)
 {
 	static DEFINE_RATELIMIT_STATE(rs, DEFAULT_RATELIMIT_INTERVAL,
 				      DEFAULT_RATELIMIT_BURST);
 	struct task_struct *tsk = current;
-	unsigned int esr = tsk->thread.fault_code;
 	struct pt_regs *regs = task_pt_regs(tsk);
 
 	/* Leave if the signal won't be shown */
@@ -225,7 +226,7 @@ static void arm64_show_signal(int signo, const char *str)
 
 	pr_info("%s[%d]: unhandled exception: ", tsk->comm, task_pid_nr(tsk));
 	if (esr)
-		pr_cont("%s, ESR 0x%08x, ", esr_get_class_string(esr), esr);
+		pr_cont("%s, ESR 0x%08lx, ", esr_get_class_string(esr), esr);
 
 	pr_cont("%s", str);
 	print_vma_addr(KERN_CONT " in ", regs->pc);
@@ -233,42 +234,121 @@ static void arm64_show_signal(int signo, const char *str)
 	__show_regs(regs);
 }
 
+static unsigned long esr_to_error_code(unsigned long esr, unsigned long far)
+{
+	/*
+	 * If the faulting address is in the kernel, we must sanitize the ESR.
+	 * From userspace's point of view, kernel-only mappings don't exist
+	 * at all, so we report them as level 0 translation faults.
+	 * (This is not quite the way that "no mapping there at all" behaves:
+	 * an alignment fault not caused by the memory type would take
+	 * precedence over translation fault for a real access to empty
+	 * space. Unfortunately we can't easily distinguish "alignment fault
+	 * not caused by memory type" from "alignment fault caused by memory
+	 * type", so we ignore this wrinkle and just return the translation
+	 * fault.)
+	 */
+	if (!is_ttbr0_addr(untagged_addr(far))) {
+		switch (ESR_ELx_EC(esr)) {
+		case ESR_ELx_EC_DABT_LOW:
+			/*
+			 * These bits provide only information about the
+			 * faulting instruction, which userspace knows already.
+			 * We explicitly clear bits which are architecturally
+			 * RES0 in case they are given meanings in future.
+			 * We always report the ESR as if the fault was taken
+			 * to EL1 and so ISV and the bits in ISS[23:14] are
+			 * clear. (In fact it always will be a fault to EL1.)
+			 */
+			esr &= ESR_ELx_EC_MASK | ESR_ELx_IL |
+				ESR_ELx_CM | ESR_ELx_WNR;
+			esr |= ESR_ELx_FSC_FAULT;
+			break;
+		case ESR_ELx_EC_IABT_LOW:
+			/*
+			 * Claim a level 0 translation fault.
+			 * All other bits are architecturally RES0 for faults
+			 * reported with that DFSC value, so we clear them.
+			 */
+			esr &= ESR_ELx_EC_MASK | ESR_ELx_IL;
+			esr |= ESR_ELx_FSC_FAULT;
+			break;
+		default:
+			/*
+			 * This should never happen (entry.S only brings us
+			 * into this code for insn and data aborts from a lower
+			 * exception level). Fail safe by not providing an ESR
+			 * context record at all.
+			 */
+			WARN(1, "ESR 0x%x is not DABT or IABT from EL0\n", esr);
+			esr = 0;
+			break;
+		}
+	}
+
+	if (is_compat_task()) {
+		/* Use the compat FSR WnR */
+		return !!(esr & ESR_ELx_WNR) << FSR_WRITE_SHIFT;
+	}
+
+	return esr;
+}
+
 void arm64_force_sig_fault(int signo, int code, void __user *addr,
+			   unsigned long far, unsigned long esr,
 			   const char *str)
 {
-	arm64_show_signal(signo, str);
-	if (signo == SIGKILL)
+	arm64_show_signal(signo, esr, str);
+	if (signo == SIGKILL) {
 		force_sig(SIGKILL);
-	else
-		force_sig_fault(signo, code, addr);
+	} else {
+		struct kernel_siginfo info;
+		clear_siginfo(&info);
+		info.si_signo = signo;
+		info.si_errno = 0;
+		info.si_code = code;
+		info.si_addr = addr;
+		info.arch.fault_address = far;
+		info.arch.error_code = esr_to_error_code(esr, far);
+		force_sig_info(&info);
+	}
 }
 
 void arm64_force_sig_mceerr(int code, void __user *addr, short lsb,
+			    unsigned long far, unsigned long esr,
 			    const char *str)
 {
-	arm64_show_signal(SIGBUS, str);
-	force_sig_mceerr(code, addr, lsb);
+	struct kernel_siginfo info;
+
+	arm64_show_signal(SIGBUS, esr, str);
+
+	clear_siginfo(&info);
+	info.si_signo = SIGBUS;
+	info.si_errno = 0;
+	info.si_code = code;
+	info.si_addr = addr;
+	info.si_addr_lsb = lsb;
+	info.arch.fault_address = far;
+	info.arch.error_code = esr_to_error_code(esr, far);
+	force_sig_info(&info);
 }
 
 void arm64_force_sig_ptrace_errno_trap(int errno, void __user *addr,
 				       const char *str)
 {
-	arm64_show_signal(SIGTRAP, str);
+	arm64_show_signal(SIGTRAP, 0, str);
 	force_sig_ptrace_errno_trap(errno, addr);
 }
 
 void arm64_notify_die(const char *str, struct pt_regs *regs,
 		      int signo, int sicode, void __user *addr,
-		      int err)
+		      int esr)
 {
 	if (user_mode(regs)) {
 		WARN_ON(regs != current_pt_regs());
-		current->thread.fault_address = 0;
-		current->thread.fault_code = err;
-
-		arm64_force_sig_fault(signo, sicode, addr, str);
+		arm64_force_sig_fault(signo, sicode, addr, 0, esr, str);
 	} else {
-		die(str, regs, err);
+		die(str, regs, esr);
 	}
 }
 
@@ -813,10 +893,7 @@ void bad_el0_sync(struct pt_regs *regs, int reason, unsigned int esr)
 {
 	void __user *pc = (void __user *)instruction_pointer(regs);
 
-	current->thread.fault_address = 0;
-	current->thread.fault_code = esr;
-
-	arm64_force_sig_fault(SIGILL, ILL_ILLOPC, pc,
+	arm64_force_sig_fault(SIGILL, ILL_ILLOPC, pc, 0, esr,
 			      "Bad EL0 synchronous exception");
 }
 
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index c9cedc0432d2..a7bada1392b3 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -41,7 +41,7 @@
 #include <asm/traps.h>
 
 struct fault_info {
-	int	(*fn)(unsigned long addr, unsigned int esr,
+	int	(*fn)(unsigned long far, unsigned int esr,
 		      struct pt_regs *regs);
 	int	sig;
 	int	code;
@@ -320,75 +320,19 @@ static void __do_kernel_fault(unsigned long addr, unsigned int esr,
 	die_kernel_fault(msg, addr, esr, regs);
 }
 
-static void set_thread_esr(unsigned long address, unsigned int esr)
+static void do_bad_area(unsigned long far, unsigned int esr,
+			struct pt_regs *regs)
 {
-	current->thread.fault_address = address;
+	unsigned long addr = untagged_addr(far);
 
-	/*
-	 * If the faulting address is in the kernel, we must sanitize the ESR.
-	 * From userspace's point of view, kernel-only mappings don't exist
-	 * at all, so we report them as level 0 translation faults.
-	 * (This is not quite the way that "no mapping there at all" behaves:
-	 * an alignment fault not caused by the memory type would take
-	 * precedence over translation fault for a real access to empty
-	 * space. Unfortunately we can't easily distinguish "alignment fault
-	 * not caused by memory type" from "alignment fault caused by memory
-	 * type", so we ignore this wrinkle and just return the translation
-	 * fault.)
-	 */
-	if (!is_ttbr0_addr(current->thread.fault_address)) {
-		switch (ESR_ELx_EC(esr)) {
-		case ESR_ELx_EC_DABT_LOW:
-			/*
-			 * These bits provide only information about the
-			 * faulting instruction, which userspace knows already.
-			 * We explicitly clear bits which are architecturally
-			 * RES0 in case they are given meanings in future.
-			 * We always report the ESR as if the fault was taken
-			 * to EL1 and so ISV and the bits in ISS[23:14] are
-			 * clear. (In fact it always will be a fault to EL1.)
-			 */
-			esr &= ESR_ELx_EC_MASK | ESR_ELx_IL |
-				ESR_ELx_CM | ESR_ELx_WNR;
-			esr |= ESR_ELx_FSC_FAULT;
-			break;
-		case ESR_ELx_EC_IABT_LOW:
-			/*
-			 * Claim a level 0 translation fault.
-			 * All other bits are architecturally RES0 for faults
-			 * reported with that DFSC value, so we clear them.
-			 */
-			esr &= ESR_ELx_EC_MASK | ESR_ELx_IL;
-			esr |= ESR_ELx_FSC_FAULT;
-			break;
-		default:
-			/*
-			 * This should never happen (entry.S only brings us
-			 * into this code for insn and data aborts from a lower
-			 * exception level). Fail safe by not providing an ESR
-			 * context record at all.
-			 */
-			WARN(1, "ESR 0x%x is not DABT or IABT from EL0\n", esr);
-			esr = 0;
-			break;
-		}
-	}
-
-	current->thread.fault_code = esr;
-}
-
-static void do_bad_area(unsigned long addr, unsigned int esr, struct pt_regs *regs)
-{
 	/*
 	 * If we are in kernel mode at this point, we have no context to
 	 * handle this fault with.
 	 */
 	if (user_mode(regs)) {
 		const struct fault_info *inf = esr_to_fault_info(esr);
-
-		set_thread_esr(addr, esr);
 		arm64_force_sig_fault(inf->sig, inf->code, (void __user *)addr,
-				      inf->name);
+				      far, esr, inf->name);
 	} else {
 		__do_kernel_fault(addr, esr, regs);
 	}
@@ -439,7 +383,7 @@ static bool is_write_abort(unsigned int esr)
 	return (esr & ESR_ELx_WNR) && !(esr & ESR_ELx_CM);
 }
 
-static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
+static int __kprobes do_page_fault(unsigned long far, unsigned int esr,
 				   struct pt_regs *regs)
 {
 	const struct fault_info *inf;
@@ -447,6 +391,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 	vm_fault_t fault, major = 0;
 	unsigned long vm_flags = VM_ACCESS_FLAGS;
 	unsigned int mm_flags = FAULT_FLAG_DEFAULT;
+	unsigned long addr = untagged_addr(far);
 
 	if (kprobe_page_fault(regs, esr))
 		return 0;
@@ -570,13 +515,12 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 	}
 
 	inf = esr_to_fault_info(esr);
-	set_thread_esr(addr, esr);
 	if (fault & VM_FAULT_SIGBUS) {
 		/*
 		 * We had some memory, but were unable to successfully fix up
 		 * this page fault.
 		 */
-		arm64_force_sig_fault(SIGBUS, BUS_ADRERR, (void __user *)addr,
+		arm64_force_sig_fault(SIGBUS, BUS_ADRERR, (void __user *)addr, far, esr,
 				      inf->name);
 	} else if (fault & (VM_FAULT_HWPOISON_LARGE | VM_FAULT_HWPOISON)) {
 		unsigned int lsb;
@@ -586,7 +530,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 			lsb = hstate_index_to_shift(VM_FAULT_GET_HINDEX(fault));
 
 		arm64_force_sig_mceerr(BUS_MCEERR_AR, (void __user *)addr, lsb,
-				       inf->name);
+				       far, esr, inf->name);
 	} else {
 		/*
 		 * Something tried to access memory that isn't in our memory
@@ -594,7 +538,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 		 */
 		arm64_force_sig_fault(SIGSEGV,
 				      fault == VM_FAULT_BADACCESS ? SEGV_ACCERR : SEGV_MAPERR,
-				      (void __user *)addr,
+				      (void __user *)addr, far, esr,
 				      inf->name);
 	}
 
@@ -605,30 +549,32 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 	return 0;
 }
 
-static int __kprobes do_translation_fault(unsigned long addr,
+static int __kprobes do_translation_fault(unsigned long far,
 					  unsigned int esr,
 					  struct pt_regs *regs)
 {
+	unsigned long addr = untagged_addr(far);
+
 	if (is_ttbr0_addr(addr))
-		return do_page_fault(addr, esr, regs);
+		return do_page_fault(far, esr, regs);
 
-	do_bad_area(addr, esr, regs);
+	do_bad_area(far, esr, regs);
 	return 0;
 }
 
-static int do_alignment_fault(unsigned long addr, unsigned int esr,
+static int do_alignment_fault(unsigned long far, unsigned int esr,
 			      struct pt_regs *regs)
 {
-	do_bad_area(addr, esr, regs);
+	do_bad_area(far, esr, regs);
 	return 0;
 }
 
-static int do_bad(unsigned long addr, unsigned int esr, struct pt_regs *regs)
+static int do_bad(unsigned long far, unsigned int esr, struct pt_regs *regs)
 {
 	return 1; /* "fault" */
 }
 
-static int do_sea(unsigned long addr, unsigned int esr, struct pt_regs *regs)
+static int do_sea(unsigned long far, unsigned int esr, struct pt_regs *regs)
 {
 	const struct fault_info *inf;
 	void __user *siaddr;
@@ -644,7 +590,7 @@ static int do_sea(unsigned long addr, unsigned int esr, struct pt_regs *regs)
 	if (esr & ESR_ELx_FnV)
 		siaddr = NULL;
 	else
-		siaddr  = (void __user *)addr;
+		siaddr  = (void __user *)untagged_addr(far);
 	arm64_notify_die(inf->name, regs, inf->sig, inf->code, siaddr, esr);
 
 	return 0;
@@ -717,11 +663,12 @@ static const struct fault_info fault_info[] = {
 	{ do_bad,		SIGKILL, SI_KERNEL,	"unknown 63"			},
 };
 
-void do_mem_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs)
+void do_mem_abort(unsigned long far, unsigned int esr, struct pt_regs *regs)
 {
 	const struct fault_info *inf = esr_to_fault_info(esr);
+	unsigned long addr = untagged_addr(far);
 
-	if (!inf->fn(addr, esr, regs))
+	if (!inf->fn(far, esr, regs))
 		return;
 
 	if (!user_mode(regs)) {
@@ -730,8 +677,8 @@ void do_mem_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs)
 		show_pte(addr);
 	}
 
-	arm64_notify_die(inf->name, regs,
-			 inf->sig, inf->code, (void __user *)addr, esr);
+	arm64_notify_die(inf->name, regs, inf->sig, inf->code,
+			 (void __user *)addr, esr);
 }
 NOKPROBE_SYMBOL(do_mem_abort);
 
@@ -744,8 +691,8 @@ NOKPROBE_SYMBOL(do_el0_irq_bp_hardening);
 
 void do_sp_pc_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs)
 {
-	arm64_notify_die("SP/PC alignment exception", regs,
-			 SIGBUS, BUS_ADRALN, (void __user *)addr, esr);
+	arm64_notify_die("SP/PC alignment exception", regs, SIGBUS, BUS_ADRALN,
+			 (void __user *)addr, esr);
 }
 NOKPROBE_SYMBOL(do_sp_pc_abort);
 
@@ -871,8 +818,8 @@ void do_debug_exception(unsigned long addr_if_watchpoint, unsigned int esr,
 		arm64_apply_bp_hardening();
 
 	if (inf->fn(addr_if_watchpoint, esr, regs)) {
-		arm64_notify_die(inf->name, regs,
-				 inf->sig, inf->code, (void __user *)pc, esr);
+		arm64_notify_die(inf->name, regs, inf->sig, inf->code,
+				 (void __user *)pc, esr);
 	}
 
 	debug_exception_exit(regs);
-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
