Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3274512350A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 19:36:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iuzWBc94nmNpjRLKpWC2xJLgBz0qNMmZKHVX7fHgNLk=; b=KKCmcSrXeNf83V
	fZapxlCIlLnXgRKpOjaBvyl8txJg4pnXa90JexAkNB+yUYP2iQL/8FbeDISehbJ6/u3/487dEwtEI
	E+E00nVeDHg1VnzOFNSMYMAPQIuSTRgnrf5k6zA7c1eKd5z3MRGGFt0oZhyMtWvzg+qgbPt/qmRwQ
	IS3pq4v1hd0/7jH1cFw//FFCbHkbHgekF2disPAprjdl+qdtNrhXIIBH+pvyu3PLgzK7r+CW+VR9k
	C633aGacu6HiwhRgx9gi0DeMisAlaDr91LjEePqvYOAceLhoHdUv49vzFPw02KvMe3tL3/qSS3Bt6
	CFsEco3eDOJy8g+qE38Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihHhg-0002Ec-Lg; Tue, 17 Dec 2019 18:36:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihHfx-0007mf-53
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 18:34:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F0DB331B;
 Tue, 17 Dec 2019 10:34:27 -0800 (PST)
Received: from ewhatever.cambridge.arm.com (ewhatever.cambridge.arm.com
 [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 875223F67D;
 Tue, 17 Dec 2019 10:34:26 -0800 (PST)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 7/7] arm64: nofpsmid: Handle TIF_FOREIGN_FPSTATE flag
 cleanly
Date: Tue, 17 Dec 2019 18:34:02 +0000
Message-Id: <20191217183402.2259904-8-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191217183402.2259904-1-suzuki.poulose@arm.com>
References: <20191217183402.2259904-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_103429_301415_3173D913 
X-CRM114-Status: GOOD (  15.91  )
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
Cc: mark.rutland@arm.com, ard.biesheuvel@linaro.org,
 Marc Zyngier <marc.zyngier@arm.com>, maz@kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 christoffer.dall@arm.com, catalin.marinas@arm.com, will@kernel.org,
 dave.martin@arm.com
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
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 arch/arm64/kernel/fpsimd.c  | 31 +++++++++++++++++++++++++++----
 arch/arm64/kvm/hyp/switch.c |  9 +++++++++
 2 files changed, 36 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index 3eb338f14386..240c52b71cda 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -269,7 +269,7 @@ static void sve_free(struct task_struct *task)
  */
 static void task_fpsimd_load(void)
 {
-	WARN_ON(!have_cpu_fpsimd_context());
+	WARN_ON(!system_supports_fpsimd() || !have_cpu_fpsimd_context());
 
 	if (system_supports_sve() && test_thread_flag(TIF_SVE))
 		sve_load_state(sve_pffr(&current->thread),
@@ -289,6 +289,7 @@ static void fpsimd_save(void)
 		this_cpu_ptr(&fpsimd_last_state);
 	/* set by fpsimd_bind_task_to_cpu() or fpsimd_bind_state_to_cpu() */
 
+	WARN_ON(!system_supports_fpsimd());
 	WARN_ON(!have_cpu_fpsimd_context());
 
 	if (!test_thread_flag(TIF_FOREIGN_FPSTATE)) {
@@ -1092,6 +1093,7 @@ void fpsimd_bind_task_to_cpu(void)
 	struct fpsimd_last_state_struct *last =
 		this_cpu_ptr(&fpsimd_last_state);
 
+	WARN_ON(!system_supports_fpsimd());
 	last->st = &current->thread.uw.fpsimd_state;
 	last->sve_state = current->thread.sve_state;
 	last->sve_vl = current->thread.sve_vl;
@@ -1114,6 +1116,7 @@ void fpsimd_bind_state_to_cpu(struct user_fpsimd_state *st, void *sve_state,
 	struct fpsimd_last_state_struct *last =
 		this_cpu_ptr(&fpsimd_last_state);
 
+	WARN_ON(!system_supports_fpsimd());
 	WARN_ON(!in_softirq() && !irqs_disabled());
 
 	last->st = st;
@@ -1128,8 +1131,19 @@ void fpsimd_bind_state_to_cpu(struct user_fpsimd_state *st, void *sve_state,
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
 
@@ -1148,7 +1162,7 @@ void fpsimd_restore_current_state(void)
  */
 void fpsimd_update_current_state(struct user_fpsimd_state const *state)
 {
-	if (!system_supports_fpsimd())
+	if (WARN_ON(!system_supports_fpsimd()))
 		return;
 
 	get_cpu_fpsimd_context();
@@ -1179,7 +1193,13 @@ void fpsimd_update_current_state(struct user_fpsimd_state const *state)
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
 
@@ -1193,6 +1213,7 @@ void fpsimd_flush_task_state(struct task_struct *t)
  */
 static void fpsimd_flush_cpu_state(void)
 {
+	WARN_ON(!system_supports_fpsimd());
 	__this_cpu_write(fpsimd_last_state.st, NULL);
 	set_thread_flag(TIF_FOREIGN_FPSTATE);
 }
@@ -1203,6 +1224,8 @@ static void fpsimd_flush_cpu_state(void)
  */
 void fpsimd_save_and_flush_cpu_state(void)
 {
+	if (!system_supports_fpsimd())
+		return;
 	WARN_ON(preemptible());
 	__get_cpu_fpsimd_context();
 	fpsimd_save();
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 72fbbd86eb5e..9696ebb5c13a 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -28,10 +28,19 @@
 /* Check whether the FP regs were dirtied while in the host-side run loop: */
 static bool __hyp_text update_fp_enabled(struct kvm_vcpu *vcpu)
 {
+	/*
+	 * When the system doesn't support FP/SIMD, we cannot rely on
+	 * the state of _TIF_FOREIGN_FPSTATE. However, we will never
+	 * set the KVM_ARM64_FP_ENABLED, as the FP/SIMD accesses always
+	 * inject an abort into the guest. Thus we always trap the
+	 * accesses.
+	 */
 	if (vcpu->arch.host_thread_info->flags & _TIF_FOREIGN_FPSTATE)
 		vcpu->arch.flags &= ~(KVM_ARM64_FP_ENABLED |
 				      KVM_ARM64_FP_HOST);
 
+	WARN_ON(!system_supports_fpsimd() &&
+		(vcpu->arch.flags & KVM_ARM64_FP_ENABLED));
 	return !!(vcpu->arch.flags & KVM_ARM64_FP_ENABLED);
 }
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
