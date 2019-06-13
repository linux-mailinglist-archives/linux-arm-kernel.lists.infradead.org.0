Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2594E441C6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:19:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EGa6/Gj7w/M+4rx8z8YalGXcD4/oV+j7QbtOGUpz67Y=; b=tNEMlMb6GL53Q9dsPQzzuvmjtq
	/vnDDdyN44ywpb/E/CgY5v5QdEQihuubEm5x5dNOCcLy5B7Ni0bYTpLuvdyzsq5Z62uOSiBpqBPaS
	TbbltCFsq0XZl+2r+fdBE82/nqBBy8uQEuW2pGQabsqxh18mfknL24aenlS+rbMRilc4iD22W8cvM
	ozbyw580b2v/VXTa1OWVFGvqg9KHUEUwJUA97y8OVEXLDB/HFDDfXPhCYiXvSTXLQguJXRye7RjTV
	STqZ4WkfCK5mNTMyuvYAw6/LeksUDhAdWRd8W2PquRl0r8nMt3cMfnQ/oX4YWIvbiPaqcqVULlvCt
	q0KuYKWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSRn-0005zz-Bc; Thu, 13 Jun 2019 16:19:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSPa-0004A3-IB
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:17:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 412FB106F;
 Thu, 13 Jun 2019 09:17:14 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E0E6F3F694;
 Thu, 13 Jun 2019 09:17:12 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v2 7/8] arm64/sve: Don't disable SVE on syscalls return
Date: Thu, 13 Jun 2019 17:16:55 +0100
Message-Id: <20190613161656.20765-8-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190613161656.20765-1-julien.grall@arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_091714_786285_CF956E07 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, Julien Grall <julien.grall@arm.com>,
 alex.bennee@linaro.org, Dave.Martin@arm.com, Daniel.Kiss@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Per the syscalls ABI, SVE registers will be unknown after a syscalls. In
practice the kernel will disable SVE and zero all the registers but the
first 128-bits of the vector on the next SVE instructions. In workload
mixing SVE and syscall, this will result of 2 entry/exit to the kernel
per exit.

To avoid the second entry/exit, a new flag TIF_SVE_NEEDS_FLUSH is
introduced to mark a task that needs to flush the SVE context on
return to userspace.

On entry to a syscall, the flag TIF_SVE will still be cleared. It will
be restored on return to userspace once the SVE state has been flushed.
This means that if a task requires to synchronize the FP state during a
syscall (e.g context switch, signal), only the FPSIMD registers will be
saved. When the task is rescheduled, the SVE state will be loaded from
FPSIMD state.

Signed-off-by: Julien Grall <julien.grall@arm.com>

---
    Changes in v2:
        - Fix typo in a comment
---
 arch/arm64/include/asm/thread_info.h |  5 ++++-
 arch/arm64/kernel/fpsimd.c           | 32 ++++++++++++++++++++++++++++++++
 arch/arm64/kernel/process.c          |  1 +
 arch/arm64/kernel/ptrace.c           |  7 +++++++
 arch/arm64/kernel/signal.c           | 14 +++++++++++++-
 arch/arm64/kernel/syscall.c          | 13 +++++--------
 6 files changed, 62 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
index f1d032be628a..d87bcd80cb0f 100644
--- a/arch/arm64/include/asm/thread_info.h
+++ b/arch/arm64/include/asm/thread_info.h
@@ -86,6 +86,7 @@ void arch_release_task_struct(struct task_struct *tsk);
 #define TIF_FOREIGN_FPSTATE	3	/* CPU's FP state is not current's */
 #define TIF_UPROBE		4	/* uprobe breakpoint or singlestep */
 #define TIF_FSCHECK		5	/* Check FS is USER_DS on return */
+#define TIF_SVE_NEEDS_FLUSH	6	/* Flush SVE registers on return */
 #define TIF_NOHZ		7
 #define TIF_SYSCALL_TRACE	8
 #define TIF_SYSCALL_AUDIT	9
@@ -113,10 +114,12 @@ void arch_release_task_struct(struct task_struct *tsk);
 #define _TIF_FSCHECK		(1 << TIF_FSCHECK)
 #define _TIF_32BIT		(1 << TIF_32BIT)
 #define _TIF_SVE		(1 << TIF_SVE)
+#define _TIF_SVE_NEEDS_FLUSH	(1 << TIF_SVE_NEEDS_FLUSH)
 
 #define _TIF_WORK_MASK		(_TIF_NEED_RESCHED | _TIF_SIGPENDING | \
 				 _TIF_NOTIFY_RESUME | _TIF_FOREIGN_FPSTATE | \
-				 _TIF_UPROBE | _TIF_FSCHECK)
+				 _TIF_UPROBE | _TIF_FSCHECK | \
+				 _TIF_SVE_NEEDS_FLUSH)
 
 #define _TIF_SYSCALL_WORK	(_TIF_SYSCALL_TRACE | _TIF_SYSCALL_AUDIT | \
 				 _TIF_SYSCALL_TRACEPOINT | _TIF_SECCOMP | \
diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index 92f418e4f989..41ab73b12f4a 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -161,6 +161,8 @@ extern void __percpu *efi_sve_state;
  */
 static void __sve_free(struct task_struct *task)
 {
+	/* SVE context will be zeroed when allocated. */
+	clear_tsk_thread_flag(task, TIF_SVE_NEEDS_FLUSH);
 	kfree(task->thread.sve_state);
 	task->thread.sve_state = NULL;
 }
@@ -217,6 +219,11 @@ static void sve_free(struct task_struct *task)
  *  * FPSR and FPCR are always stored in task->thread.uw.fpsimd_state
  *    irrespective of whether TIF_SVE is clear or set, since these are
  *    not vector length dependent.
+ *
+ *  * When TIF_SVE_NEEDS_FLUSH is set, all the SVE registers but the first
+ *    128-bits of the Z-registers are logically zero but not stored anywhere.
+ *    Saving logically zero bits across context switches is therefore
+ *    pointless, although they must be zeroed before re-entering userspace.
  */
 
 /*
@@ -226,6 +233,14 @@ static void sve_free(struct task_struct *task)
  * thread_struct is known to be up to date, when preparing to enter
  * userspace.
  *
+ * When TIF_SVE_NEEDS_FLUSH is set, the SVE state will be restored from the
+ * FPSIMD state.
+ *
+ * TIF_SVE_NEEDS_FLUSH and TIF_SVE set at the same time should never happen.
+ * In the unlikely case it happens, the code is able to cope with it. It will
+ * first restore the SVE registers and then flush them in
+ * fpsimd_restore_current_state.
+ *
  * Softirqs (and preemption) must be disabled.
  */
 static void task_fpsimd_load(void)
@@ -236,6 +251,12 @@ static void task_fpsimd_load(void)
 		sve_load_state(sve_pffr(&current->thread),
 			       &current->thread.uw.fpsimd_state.fpsr,
 			       sve_vq_from_vl(current->thread.sve_vl) - 1);
+	else if (system_supports_sve() &&
+		 test_and_clear_thread_flag(TIF_SVE_NEEDS_FLUSH)) {
+		sve_load_from_fpsimd_state(&current->thread.uw.fpsimd_state,
+					   sve_vq_from_vl(current->thread.sve_vl) - 1);
+		set_thread_flag(TIF_SVE);
+	}
 	else
 		fpsimd_load_state(&current->thread.uw.fpsimd_state);
 }
@@ -1070,6 +1091,17 @@ void fpsimd_restore_current_state(void)
 		fpsimd_bind_task_to_cpu();
 	}
 
+	if (system_supports_sve() &&
+	    test_and_clear_thread_flag(TIF_SVE_NEEDS_FLUSH)) {
+		/*
+		 * The userspace had SVE enabled on entry to the kernel
+		 * and requires the state to be flushed.
+		 */
+		sve_flush_live();
+		sve_user_enable();
+		set_thread_flag(TIF_SVE);
+	}
+
 	local_bh_enable();
 }
 
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 3767fb21a5b8..8c67ef89b01a 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -367,6 +367,7 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
 	 * and disable discard SVE state for p:
 	 */
 	clear_tsk_thread_flag(p, TIF_SVE);
+	clear_tsk_thread_flag(p, TIF_SVE_NEEDS_FLUSH);
 	p->thread.sve_state = NULL;
 
 	/*
diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
index b82e0a9b3da3..f44016052cba 100644
--- a/arch/arm64/kernel/ptrace.c
+++ b/arch/arm64/kernel/ptrace.c
@@ -899,6 +899,11 @@ static int sve_set(struct task_struct *target,
 		ret = __fpr_set(target, regset, pos, count, kbuf, ubuf,
 				SVE_PT_FPSIMD_OFFSET);
 		clear_tsk_thread_flag(target, TIF_SVE);
+		/*
+		 * If ptrace requested to use FPSIMD, then don't try to
+		 * re-enable SVE when the task is running again.
+		 */
+		clear_tsk_thread_flag(target, TIF_SVE_NEEDS_FLUSH);
 		goto out;
 	}
 
@@ -923,6 +928,8 @@ static int sve_set(struct task_struct *target,
 	 */
 	fpsimd_sync_to_sve(target);
 	set_tsk_thread_flag(target, TIF_SVE);
+	/* Don't flush SVE registers on return as ptrace will update them. */
+	clear_tsk_thread_flag(target, TIF_SVE_NEEDS_FLUSH);
 
 	BUILD_BUG_ON(SVE_PT_SVE_OFFSET != sizeof(header));
 	start = SVE_PT_SVE_OFFSET;
diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
index ab3e56bbfb07..83a23a1edc7e 100644
--- a/arch/arm64/kernel/signal.c
+++ b/arch/arm64/kernel/signal.c
@@ -530,6 +530,17 @@ static int restore_sigframe(struct pt_regs *regs,
 		} else {
 			err = restore_fpsimd_context(user.fpsimd);
 		}
+
+		/*
+		 * When successfully restoring the:
+		 *	- FPSIMD context, we don't want to re-enable SVE
+		 *	- SVE context, we don't want to override what was
+		 *	restored
+		 */
+		if (err == 0)
+			clear_thread_flag(TIF_SVE_NEEDS_FLUSH);
+
+
 	}
 
 	return err;
@@ -942,7 +953,8 @@ asmlinkage void do_notify_resume(struct pt_regs *regs,
 				rseq_handle_notify_resume(NULL, regs);
 			}
 
-			if (thread_flags & _TIF_FOREIGN_FPSTATE)
+			if (thread_flags & (_TIF_FOREIGN_FPSTATE |
+					    _TIF_SVE_NEEDS_FLUSH))
 				fpsimd_restore_current_state();
 		}
 
diff --git a/arch/arm64/kernel/syscall.c b/arch/arm64/kernel/syscall.c
index 871c739f060a..b9bd7092e253 100644
--- a/arch/arm64/kernel/syscall.c
+++ b/arch/arm64/kernel/syscall.c
@@ -142,16 +142,13 @@ static inline void sve_user_discard(void)
 	if (!system_supports_sve())
 		return;
 
-	clear_thread_flag(TIF_SVE);
-
 	/*
-	 * task_fpsimd_load() won't be called to update CPACR_EL1 in
-	 * ret_to_user unless TIF_FOREIGN_FPSTATE is still set, which only
-	 * happens if a context switch or kernel_neon_begin() or context
-	 * modification (sigreturn, ptrace) intervenes.
-	 * So, ensure that CPACR_EL1 is already correct for the fast-path case.
+	 * TIF_SVE is cleared to save the FPSIMD state rather than the SVE
+	 * state on context switch. The bit will be set again while
+	 * restoring/zeroing the registers.
 	 */
-	sve_user_disable();
+	if (test_and_clear_thread_flag(TIF_SVE))
+		set_thread_flag(TIF_SVE_NEEDS_FLUSH);
 }
 
 asmlinkage void el0_svc_handler(struct pt_regs *regs)
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
