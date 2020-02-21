Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 162EA1680C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 15:51:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rjk1XiMIo7RwYJ8WsxDKWB+iRi6fGdtSykivVnBMBTQ=; b=uAxwRcWYh/w3zdRivOl4wXNe5O
	UR4VjhSwaYF5UUWJJMfBv+4wEkk1F1RanIE33hRErSHGVaSZXQNNYfNFsVxZFrNvQDWSJqL4FfQRF
	wZ6OjMgYW32Ba1fEtUeuPtw9HT8wiO3IQgNq8tzz14+X3CwHmqzWeEcFP8JOvNnVNU9xcnY84XSKl
	9GPafLemXUnPy5grwXWmO+hg5T3JPujU04n1oR3Bfo5RxFywit55vr7Y+Xh/xnBiZw7M6RTBhad0f
	YDIiDZgSptksXZPFwn4vu6ZAD+oJfkT07JNsyCwB4CAP+Mp5wnx0+yJE3VT8YpHTADkKaJDIXhv0n
	CVCkfZhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j59e5-0002kb-LG; Fri, 21 Feb 2020 14:51:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j59dT-0002L7-5U
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 14:50:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BFF841FB;
 Fri, 21 Feb 2020 06:50:34 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8BF163F703;
 Fri, 21 Feb 2020 06:50:33 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv2 2/2] arm64: kvm: hyp: use cpus_have_final_cap()
Date: Fri, 21 Feb 2020 14:50:22 +0000
Message-Id: <20200221145022.27217-3-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200221145022.27217-1-mark.rutland@arm.com>
References: <20200221145022.27217-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_065035_304458_68B82928 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 james.morse@arm.com, maz@kernel.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The KVM hyp code is only run after system capabilities have been
finalized, and thus all const cap checks have been patched. This is
noted in in __cpu_init_hyp_mode(), where we BUG() if called too early:

| /*
|  * Call initialization code, and switch to the full blown HYP code.
|  * If the cpucaps haven't been finalized yet, something has gone very
|  * wrong, and hyp will crash and burn when it uses any
|  * cpus_have_const_cap() wrapper.
|  */

Given this, the hyp code can use cpus_have_final_cap() and avoid
generating code to check the cpu_hwcaps array, which would be unsafe to
run in hyp context.

This patch migrate the KVM hyp code to cpus_have_final_cap(), avoiding
this redundant code generation, and making it possible to detect if we
accidentally invoke this code too early. In the latter case, the BUG()
in cpus_have_final_cap() will cause a hyp panic.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Reviewed-by: Marc Zyngier <maz@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kvm/hyp/switch.c    | 14 +++++++-------
 arch/arm64/kvm/hyp/sysreg-sr.c |  8 ++++----
 arch/arm64/kvm/hyp/tlb.c       |  8 ++++----
 3 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index dfe8dd172512..27fcdff08dd6 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -127,7 +127,7 @@ static void __hyp_text __activate_traps_nvhe(struct kvm_vcpu *vcpu)
 
 	write_sysreg(val, cptr_el2);
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
+	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
 		struct kvm_cpu_context *ctxt = &vcpu->arch.ctxt;
 
 		isb();
@@ -146,12 +146,12 @@ static void __hyp_text __activate_traps(struct kvm_vcpu *vcpu)
 {
 	u64 hcr = vcpu->arch.hcr_el2;
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_CAVIUM_TX2_219_TVM))
+	if (cpus_have_final_cap(ARM64_WORKAROUND_CAVIUM_TX2_219_TVM))
 		hcr |= HCR_TVM;
 
 	write_sysreg(hcr, hcr_el2);
 
-	if (cpus_have_const_cap(ARM64_HAS_RAS_EXTN) && (hcr & HCR_VSE))
+	if (cpus_have_final_cap(ARM64_HAS_RAS_EXTN) && (hcr & HCR_VSE))
 		write_sysreg_s(vcpu->arch.vsesr_el2, SYS_VSESR_EL2);
 
 	if (has_vhe())
@@ -181,7 +181,7 @@ static void __hyp_text __deactivate_traps_nvhe(void)
 {
 	u64 mdcr_el2 = read_sysreg(mdcr_el2);
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
+	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
 		u64 val;
 
 		/*
@@ -328,7 +328,7 @@ static bool __hyp_text __populate_fault_info(struct kvm_vcpu *vcpu)
 	 * resolve the IPA using the AT instruction.
 	 */
 	if (!(esr & ESR_ELx_S1PTW) &&
-	    (cpus_have_const_cap(ARM64_WORKAROUND_834220) ||
+	    (cpus_have_final_cap(ARM64_WORKAROUND_834220) ||
 	     (esr & ESR_ELx_FSC_TYPE) == FSC_PERM)) {
 		if (!__translate_far_to_hpfar(far, &hpfar))
 			return false;
@@ -498,7 +498,7 @@ static bool __hyp_text fixup_guest_exit(struct kvm_vcpu *vcpu, u64 *exit_code)
 	if (*exit_code != ARM_EXCEPTION_TRAP)
 		goto exit;
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_CAVIUM_TX2_219_TVM) &&
+	if (cpus_have_final_cap(ARM64_WORKAROUND_CAVIUM_TX2_219_TVM) &&
 	    kvm_vcpu_trap_get_class(vcpu) == ESR_ELx_EC_SYS64 &&
 	    handle_tx2_tvm(vcpu))
 		return true;
@@ -555,7 +555,7 @@ static bool __hyp_text fixup_guest_exit(struct kvm_vcpu *vcpu, u64 *exit_code)
 
 static inline bool __hyp_text __needs_ssbd_off(struct kvm_vcpu *vcpu)
 {
-	if (!cpus_have_const_cap(ARM64_SSBD))
+	if (!cpus_have_final_cap(ARM64_SSBD))
 		return false;
 
 	return !(vcpu->arch.workaround_flags & VCPU_WORKAROUND_2_FLAG);
diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
index 7672a978926c..75b1925763f1 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -71,7 +71,7 @@ static void __hyp_text __sysreg_save_el2_return_state(struct kvm_cpu_context *ct
 	ctxt->gp_regs.regs.pc		= read_sysreg_el2(SYS_ELR);
 	ctxt->gp_regs.regs.pstate	= read_sysreg_el2(SYS_SPSR);
 
-	if (cpus_have_const_cap(ARM64_HAS_RAS_EXTN))
+	if (cpus_have_final_cap(ARM64_HAS_RAS_EXTN))
 		ctxt->sys_regs[DISR_EL1] = read_sysreg_s(SYS_VDISR_EL2);
 }
 
@@ -118,7 +118,7 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 	write_sysreg(ctxt->sys_regs[MPIDR_EL1],		vmpidr_el2);
 	write_sysreg(ctxt->sys_regs[CSSELR_EL1],	csselr_el1);
 
-	if (!cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
+	if (!cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
 		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
 		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
 	} else	if (!ctxt->__hyp_running_vcpu) {
@@ -149,7 +149,7 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 	write_sysreg(ctxt->sys_regs[PAR_EL1],		par_el1);
 	write_sysreg(ctxt->sys_regs[TPIDR_EL1],		tpidr_el1);
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE) &&
+	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE) &&
 	    ctxt->__hyp_running_vcpu) {
 		/*
 		 * Must only be done for host registers, hence the context
@@ -194,7 +194,7 @@ __sysreg_restore_el2_return_state(struct kvm_cpu_context *ctxt)
 	write_sysreg_el2(ctxt->gp_regs.regs.pc,		SYS_ELR);
 	write_sysreg_el2(pstate,			SYS_SPSR);
 
-	if (cpus_have_const_cap(ARM64_HAS_RAS_EXTN))
+	if (cpus_have_final_cap(ARM64_HAS_RAS_EXTN))
 		write_sysreg_s(ctxt->sys_regs[DISR_EL1], SYS_VDISR_EL2);
 }
 
diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
index 92f560e3e1aa..ceaddbe4279f 100644
--- a/arch/arm64/kvm/hyp/tlb.c
+++ b/arch/arm64/kvm/hyp/tlb.c
@@ -23,7 +23,7 @@ static void __hyp_text __tlb_switch_to_guest_vhe(struct kvm *kvm,
 
 	local_irq_save(cxt->flags);
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_VHE)) {
+	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_VHE)) {
 		/*
 		 * For CPUs that are affected by ARM errata 1165522 or 1530923,
 		 * we cannot trust stage-1 to be in a correct state at that
@@ -63,7 +63,7 @@ static void __hyp_text __tlb_switch_to_guest_vhe(struct kvm *kvm,
 static void __hyp_text __tlb_switch_to_guest_nvhe(struct kvm *kvm,
 						  struct tlb_inv_context *cxt)
 {
-	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
+	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
 		u64 val;
 
 		/*
@@ -103,7 +103,7 @@ static void __hyp_text __tlb_switch_to_host_vhe(struct kvm *kvm,
 	write_sysreg(HCR_HOST_VHE_FLAGS, hcr_el2);
 	isb();
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_VHE)) {
+	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_VHE)) {
 		/* Restore the registers to what they were */
 		write_sysreg_el1(cxt->tcr, SYS_TCR);
 		write_sysreg_el1(cxt->sctlr, SYS_SCTLR);
@@ -117,7 +117,7 @@ static void __hyp_text __tlb_switch_to_host_nvhe(struct kvm *kvm,
 {
 	write_sysreg(0, vttbr_el2);
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
+	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
 		/* Ensure write of the host VMID */
 		isb();
 		/* Restore the host's TCR_EL1 */
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
