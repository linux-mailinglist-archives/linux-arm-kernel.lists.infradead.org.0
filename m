Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9C727AC6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:37:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ECYGQUVCM/uLoETMciIrqPNF+TmkuaFa5dAMb/kJd0Y=; b=Av2TLv/SKt5lukxbJOrmw16jfv
	RAQRO1FfY+xqO09wTx1EwPpYH8B/9Sm2NCrEUBKJQrUV7N0BBkFjeRSQb+RaoJsFo2qr7SDOwdgxE
	RrDDerHk9U4ukSlFohDK0yWxuYLUdEbcjuGlSHwB0aUhZ8SXdAAL2SL9dNdi6rcGHTvVHdZ8Gr0AI
	KgVDShJRsyiO78Il9f+ttwSARg5I5C1DLQLDmx1XT8JjqOH5DovWk9+Jt01sJfwkUWCRMPdOgQNnI
	aSg/cJDeGLGR/ZDihO2ZOZFIrLSZ1nHY+xxk6ytHfY+9e4oEF0fytixnlxLe0BXuPuonO4d98OWzN
	NJTtaaHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTl5r-0002OK-Ta; Thu, 23 May 2019 10:37:03 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTl4T-0000gT-HS
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 10:35:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5757AA78;
 Thu, 23 May 2019 03:35:37 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 425933F718;
 Thu, 23 May 2019 03:35:35 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: kvmarm@lists.cs.columbia.edu,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 07/15] arm64: KVM: split debug save restore across vm/traps
 activation
Date: Thu, 23 May 2019 11:34:54 +0100
Message-Id: <20190523103502.25925-8-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190523103502.25925-1-sudeep.holla@arm.com>
References: <20190523103502.25925-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_033538_057760_BC2D55AF 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: kvm@vger.kernel.org, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If we enable profiling buffer controls at EL1 generate a trap exception
to EL2, it also changes profiling buffer to use EL1&0 stage 1 translation
regime in case of VHE. To support SPE both in the guest and host, we
need to first stop profiling and flush the profiling buffers before
we activate/switch vm or enable/disable the traps.

In prepartion to do that, lets split the debug save restore functionality
into 4 steps:
1. debug_save_host_context - saves the host context
2. debug_restore_guest_context - restore the guest context
3. debug_save_guest_context - saves the guest context
4. debug_restore_host_context - restores the host context

Lets rename existing __debug_switch_to_{host,guest} to make sure it's
aligned to the above and just add the place holders for new ones getting
added here as we need them to support SPE in guests.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/include/asm/kvm_hyp.h |  6 ++++--
 arch/arm64/kvm/hyp/debug-sr.c    | 25 ++++++++++++++++---------
 arch/arm64/kvm/hyp/switch.c      | 12 ++++++++----
 3 files changed, 28 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index 782955db61dd..1c5ed80fcbda 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -164,8 +164,10 @@ void sysreg_restore_guest_state_vhe(struct kvm_cpu_context *ctxt);
 void __sysreg32_save_state(struct kvm_vcpu *vcpu);
 void __sysreg32_restore_state(struct kvm_vcpu *vcpu);
 
-void __debug_switch_to_guest(struct kvm_vcpu *vcpu);
-void __debug_switch_to_host(struct kvm_vcpu *vcpu);
+void __debug_save_host_context(struct kvm_vcpu *vcpu);
+void __debug_restore_guest_context(struct kvm_vcpu *vcpu);
+void __debug_save_guest_context(struct kvm_vcpu *vcpu);
+void __debug_restore_host_context(struct kvm_vcpu *vcpu);
 
 void __fpsimd_save_state(struct user_fpsimd_state *fp_regs);
 void __fpsimd_restore_state(struct user_fpsimd_state *fp_regs);
diff --git a/arch/arm64/kvm/hyp/debug-sr.c b/arch/arm64/kvm/hyp/debug-sr.c
index fa51236ebcb3..618884df1dc4 100644
--- a/arch/arm64/kvm/hyp/debug-sr.c
+++ b/arch/arm64/kvm/hyp/debug-sr.c
@@ -149,20 +149,13 @@ static void __hyp_text __debug_restore_state(struct kvm_vcpu *vcpu,
 	write_sysreg(ctxt->sys_regs[MDCCINT_EL1], mdccint_el1);
 }
 
-void __hyp_text __debug_switch_to_guest(struct kvm_vcpu *vcpu)
+void __hyp_text __debug_restore_guest_context(struct kvm_vcpu *vcpu)
 {
 	struct kvm_cpu_context *host_ctxt;
 	struct kvm_cpu_context *guest_ctxt;
 	struct kvm_guest_debug_arch *host_dbg;
 	struct kvm_guest_debug_arch *guest_dbg;
 
-	/*
-	 * Non-VHE: Disable and flush SPE data generation
-	 * VHE: The vcpu can run, but it can't hide.
-	 */
-	if (!has_vhe())
-		__debug_save_spe_nvhe(&vcpu->arch.host_debug_state.pmscr_el1);
-
 	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
 		return;
 
@@ -175,7 +168,7 @@ void __hyp_text __debug_switch_to_guest(struct kvm_vcpu *vcpu)
 	__debug_restore_state(vcpu, guest_dbg, guest_ctxt);
 }
 
-void __hyp_text __debug_switch_to_host(struct kvm_vcpu *vcpu)
+void __hyp_text __debug_restore_host_context(struct kvm_vcpu *vcpu)
 {
 	struct kvm_cpu_context *host_ctxt;
 	struct kvm_cpu_context *guest_ctxt;
@@ -199,6 +192,20 @@ void __hyp_text __debug_switch_to_host(struct kvm_vcpu *vcpu)
 	vcpu->arch.flags &= ~KVM_ARM64_DEBUG_DIRTY;
 }
 
+void __hyp_text __debug_save_host_context(struct kvm_vcpu *vcpu)
+{
+	/*
+	 * Non-VHE: Disable and flush SPE data generation
+	 * VHE: The vcpu can run, but it can't hide.
+	 */
+	if (!has_vhe())
+		__debug_save_spe_nvhe(&vcpu->arch.host_debug_state.pmscr_el1);
+}
+
+void __hyp_text __debug_save_guest_context(struct kvm_vcpu *vcpu)
+{
+}
+
 u32 __hyp_text __kvm_get_mdcr_el2(void)
 {
 	return read_sysreg(mdcr_el2);
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 9b2461138ddc..844f0dd7a7f0 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -515,6 +515,7 @@ int kvm_vcpu_run_vhe(struct kvm_vcpu *vcpu)
 	guest_ctxt = &vcpu->arch.ctxt;
 
 	sysreg_save_host_state_vhe(host_ctxt);
+	__debug_save_host_context(vcpu);
 
 	/*
 	 * ARM erratum 1165522 requires us to configure both stage 1 and
@@ -531,7 +532,7 @@ int kvm_vcpu_run_vhe(struct kvm_vcpu *vcpu)
 	__activate_traps(vcpu);
 
 	sysreg_restore_guest_state_vhe(guest_ctxt);
-	__debug_switch_to_guest(vcpu);
+	__debug_restore_guest_context(vcpu);
 
 	__set_guest_arch_workaround_state(vcpu);
 
@@ -545,6 +546,7 @@ int kvm_vcpu_run_vhe(struct kvm_vcpu *vcpu)
 	__set_host_arch_workaround_state(vcpu);
 
 	sysreg_save_guest_state_vhe(guest_ctxt);
+	__debug_save_guest_context(vcpu);
 
 	__deactivate_traps(vcpu);
 
@@ -553,7 +555,7 @@ int kvm_vcpu_run_vhe(struct kvm_vcpu *vcpu)
 	if (vcpu->arch.flags & KVM_ARM64_FP_ENABLED)
 		__fpsimd_save_fpexc32(vcpu);
 
-	__debug_switch_to_host(vcpu);
+	__debug_restore_host_context(vcpu);
 
 	return exit_code;
 }
@@ -587,6 +589,7 @@ int __hyp_text __kvm_vcpu_run_nvhe(struct kvm_vcpu *vcpu)
 	pmu_switch_needed = __pmu_switch_to_guest(host_ctxt);
 
 	__sysreg_save_state_nvhe(host_ctxt);
+	__debug_save_host_context(vcpu);
 
 	__activate_vm(kern_hyp_va(vcpu->kvm));
 	__activate_traps(vcpu);
@@ -600,7 +603,7 @@ int __hyp_text __kvm_vcpu_run_nvhe(struct kvm_vcpu *vcpu)
 	 */
 	__sysreg32_restore_state(vcpu);
 	__sysreg_restore_state_nvhe(guest_ctxt);
-	__debug_switch_to_guest(vcpu);
+	__debug_restore_guest_context(vcpu);
 
 	__set_guest_arch_workaround_state(vcpu);
 
@@ -614,6 +617,7 @@ int __hyp_text __kvm_vcpu_run_nvhe(struct kvm_vcpu *vcpu)
 	__set_host_arch_workaround_state(vcpu);
 
 	__sysreg_save_state_nvhe(guest_ctxt);
+	__debug_save_guest_context(vcpu);
 	__sysreg32_save_state(vcpu);
 	__timer_disable_traps(vcpu);
 	__hyp_vgic_save_state(vcpu);
@@ -630,7 +634,7 @@ int __hyp_text __kvm_vcpu_run_nvhe(struct kvm_vcpu *vcpu)
 	 * This must come after restoring the host sysregs, since a non-VHE
 	 * system may enable SPE here and make use of the TTBRs.
 	 */
-	__debug_switch_to_host(vcpu);
+	__debug_restore_host_context(vcpu);
 
 	if (pmu_switch_needed)
 		__pmu_switch_to_host(host_ctxt);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
