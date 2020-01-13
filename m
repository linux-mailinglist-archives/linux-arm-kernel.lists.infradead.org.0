Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AF0139D5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 00:32:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GRJgz88ggpt2p9sN0NweTOPiZCU/sGn5l3FeYg2hcQk=; b=h69omVI7cd/eZr
	cdv6syXw4MBM3IcQJBJIn+UkM/ztXYgBOCbGgXGfy+tIAKdruEN2OMO/KYuvgXk4hMUcIVhR11Q7m
	Q2x1lSFY9Nr5bpmbKhkoESMGkDULCVD7giVKYIsn3+8w70AcjovO4ZMMSJ4vJO6ZUjcT2TbAL3J91
	YbT1QMI7JPmOWvMLM2V9EyH/AnB+QgcWgInvARQ1arOrONU8ktv7QLFlzbrw65PLSwK0BAuereRSr
	swwfnbQt42o+hWUp/rZ2JcrQHyzYlG1srvXRD8umCk7nboKFC/ZEJn481M5tr2G6/DflvcaSwQW7E
	ZB5AlfDwFDBh3pe+NOCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir9CX-000732-PW; Mon, 13 Jan 2020 23:32:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir9BB-0005uH-4Q
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 23:31:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 51C6A1424;
 Mon, 13 Jan 2020 15:31:28 -0800 (PST)
Received: from ewhatever.cambridge.arm.com (ewhatever.cambridge.arm.com
 [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3809E3F68E;
 Mon, 13 Jan 2020 15:31:27 -0800 (PST)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 7/7] arm64: nofpsmid: Handle TIF_FOREIGN_FPSTATE flag
 cleanly
Date: Mon, 13 Jan 2020 23:30:23 +0000
Message-Id: <20200113233023.928028-8-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200113233023.928028-1-suzuki.poulose@arm.com>
References: <20200113233023.928028-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_153129_292551_58465DA6 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 catalin.marinas@arm.com, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We detect the absence of FP/SIMD after an incapable CPU is brought up,
and by then we have kernel threads running already with TIF_FOREIGN_FPSTATE set
which could be set for early userspace applications (e.g, modprobe triggered
from initramfs) and init. This could cause the applications to loop forever in
do_nofity_resume() as we never clear the TIF flag, once we now know that
we don't support FP.

Fix this by making sure that we clear the TIF_FOREIGN_FPSTATE flag
for tasks which may have them set, as we would have done in the normal
case, but avoiding touching the hardware state (since we don't support any).

Also to make sure we handle the cases seemlessly we categorise the
helper functions to two :
 1) Helpers for common core code, which calls into take appropriate
    actions without knowing the current FPSIMD state of the CPU/task.

    e.g fpsimd_restore_current_state(), fpsimd_flush_task_state(),
        fpsimd_save_and_flush_cpu_state().

    We bail out early for these functions, taking any appropriate actions
    (e.g, clearing the TIF flag) where necessary to hide the handling
    from core code.

 2) Helpers used when the presence of FP/SIMD is apparent.
    i.e, save/restore the FP/SIMD register state, modify the CPU/task
    FP/SIMD state.
    e.g,

    fpsimd_save(), task_fpsimd_load() - save/restore task FP/SIMD registers

    fpsimd_bind_task_to_cpu()  \
                                - Update the "state" metadata for CPU/task.
    fpsimd_bind_state_to_cpu() /

    fpsimd_update_current_state() - Update the fp/simd state for the current
                                    task from memory.

    These must not be called in the absence of FP/SIMD. Put in a WARNING
    to make sure they are not invoked in the absence of FP/SIMD.

KVM also uses the TIF_FOREIGN_FPSTATE flag to manage the FP/SIMD state
on the CPU. However, without FP/SIMD support we trap all accesses and
inject undefined instruction. Thus we should never "load" guest state.
Add a sanity check to make sure this is valid.

Fixes: 82e0191a1aa11abf ("arm64: Support systems without FP/ASIMD")
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Acked-by: Marc Zyngier <maz@kernel.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
Changes since v2:
  - Fixed a nit, dont combine WARN_ON()s
---
 arch/arm64/kernel/fpsimd.c  | 30 +++++++++++++++++++++++++++---
 arch/arm64/kvm/hyp/switch.c | 10 +++++++++-
 2 files changed, 36 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index 3eb338f14386..94289d126993 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -269,6 +269,7 @@ static void sve_free(struct task_struct *task)
  */
 static void task_fpsimd_load(void)
 {
+	WARN_ON(!system_supports_fpsimd());
 	WARN_ON(!have_cpu_fpsimd_context());
 
 	if (system_supports_sve() && test_thread_flag(TIF_SVE))
@@ -289,6 +290,7 @@ static void fpsimd_save(void)
 		this_cpu_ptr(&fpsimd_last_state);
 	/* set by fpsimd_bind_task_to_cpu() or fpsimd_bind_state_to_cpu() */
 
+	WARN_ON(!system_supports_fpsimd());
 	WARN_ON(!have_cpu_fpsimd_context());
 
 	if (!test_thread_flag(TIF_FOREIGN_FPSTATE)) {
@@ -1092,6 +1094,7 @@ void fpsimd_bind_task_to_cpu(void)
 	struct fpsimd_last_state_struct *last =
 		this_cpu_ptr(&fpsimd_last_state);
 
+	WARN_ON(!system_supports_fpsimd());
 	last->st = &current->thread.uw.fpsimd_state;
 	last->sve_state = current->thread.sve_state;
 	last->sve_vl = current->thread.sve_vl;
@@ -1114,6 +1117,7 @@ void fpsimd_bind_state_to_cpu(struct user_fpsimd_state *st, void *sve_state,
 	struct fpsimd_last_state_struct *last =
 		this_cpu_ptr(&fpsimd_last_state);
 
+	WARN_ON(!system_supports_fpsimd());
 	WARN_ON(!in_softirq() && !irqs_disabled());
 
 	last->st = st;
@@ -1128,8 +1132,19 @@ void fpsimd_bind_state_to_cpu(struct user_fpsimd_state *st, void *sve_state,
  */
 void fpsimd_restore_current_state(void)
 {
-	if (!system_supports_fpsimd())
+	/*
+	 * For the tasks that were created before we detected the absence of
+	 * FP/SIMD, the TIF_FOREIGN_FPSTATE could be set via fpsimd_thread_switch(),
+	 * e.g, init. This could be then inherited by the children processes.
+	 * If we later detect that the system doesn't support FP/SIMD,
+	 * we must clear the flag for  all the tasks to indicate that the
+	 * FPSTATE is clean (as we can't have one) to avoid looping for ever in
+	 * do_notify_resume().
+	 */
+	if (!system_supports_fpsimd()) {
+		clear_thread_flag(TIF_FOREIGN_FPSTATE);
 		return;
+	}
 
 	get_cpu_fpsimd_context();
 
@@ -1148,7 +1163,7 @@ void fpsimd_restore_current_state(void)
  */
 void fpsimd_update_current_state(struct user_fpsimd_state const *state)
 {
-	if (!system_supports_fpsimd())
+	if (WARN_ON(!system_supports_fpsimd()))
 		return;
 
 	get_cpu_fpsimd_context();
@@ -1179,7 +1194,13 @@ void fpsimd_update_current_state(struct user_fpsimd_state const *state)
 void fpsimd_flush_task_state(struct task_struct *t)
 {
 	t->thread.fpsimd_cpu = NR_CPUS;
-
+	/*
+	 * If we don't support fpsimd, bail out after we have
+	 * reset the fpsimd_cpu for this task and clear the
+	 * FPSTATE.
+	 */
+	if (!system_supports_fpsimd())
+		return;
 	barrier();
 	set_tsk_thread_flag(t, TIF_FOREIGN_FPSTATE);
 
@@ -1193,6 +1214,7 @@ void fpsimd_flush_task_state(struct task_struct *t)
  */
 static void fpsimd_flush_cpu_state(void)
 {
+	WARN_ON(!system_supports_fpsimd());
 	__this_cpu_write(fpsimd_last_state.st, NULL);
 	set_thread_flag(TIF_FOREIGN_FPSTATE);
 }
@@ -1203,6 +1225,8 @@ static void fpsimd_flush_cpu_state(void)
  */
 void fpsimd_save_and_flush_cpu_state(void)
 {
+	if (!system_supports_fpsimd())
+		return;
 	WARN_ON(preemptible());
 	__get_cpu_fpsimd_context();
 	fpsimd_save();
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 72fbbd86eb5e..e5816d885761 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -28,7 +28,15 @@
 /* Check whether the FP regs were dirtied while in the host-side run loop: */
 static bool __hyp_text update_fp_enabled(struct kvm_vcpu *vcpu)
 {
-	if (vcpu->arch.host_thread_info->flags & _TIF_FOREIGN_FPSTATE)
+	/*
+	 * When the system doesn't support FP/SIMD, we cannot rely on
+	 * the _TIF_FOREIGN_FPSTATE flag. However, we always inject an
+	 * abort on the very first access to FP and thus we should never
+	 * see KVM_ARM64_FP_ENABLED. For added safety, make sure we always
+	 * trap the accesses.
+	 */
+	if (!system_supports_fpsimd() ||
+	    vcpu->arch.host_thread_info->flags & _TIF_FOREIGN_FPSTATE)
 		vcpu->arch.flags &= ~(KVM_ARM64_FP_ENABLED |
 				      KVM_ARM64_FP_HOST);
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
