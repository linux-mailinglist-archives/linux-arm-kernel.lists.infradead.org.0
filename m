Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FF11F6475
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 11:12:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WkjN8w2dx8YKBX/kjDQ2JoPmtT3VlrLfU/8osdHc+w=; b=jND7CIAVYxSHZD
	KxBE0o7FoLCSVH1UGBWZUlT4YP1OMbMF6jbk5aTIjV22KYEjI6WMsDIIDefu/CJXsdTbGlK7KO+Z+
	zS4EGYGF5TnLKpg3PIrigFs7szuBXd37PXM2RYzkX/OmA/eQesUQ9lazGWKV0jFf4tGRWKm033D8T
	wIsWvhJtylptP4Yt1rVCUE72+Irf3oS4dIpcJIZrnp6TKrtVUVSzaz/hL+x3lY5q9QjHv2hd0kcc6
	thDAhirQT+kiir9Y4MRZjWQKKD03WOrIERz5sVwVBdjutq2KDGGhBEGzw5TxSv9mkKUlz1dL2HOkz
	69N34WobgY6tPUGtroaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjJFq-00073F-Ez; Thu, 11 Jun 2020 09:12:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjJDw-0005ZZ-Ta
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 09:10:15 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7FFCA2081A;
 Thu, 11 Jun 2020 09:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591866612;
 bh=LrJuTKlNXi8lbOBqQ8upVYMPjpFyfQxm7kVAOe0pMNs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LU44dOUBpNSyC4AZLqOvj2F9VUCTk9c/AVJ+4U0Vdc/jiuZ8AbDNH/3nFw802zXlu
 sSV7AghypL/NlksCggkJG3gSH4jr+d2EDUqLr6d4voN3iMbzuGAu29GO/Mt7khPKy1
 6NJVm4yuuiCIIFcoKp+2+SPukhayFfitsUqr8T6s=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jjJDv-0022ZT-0C; Thu, 11 Jun 2020 10:10:11 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 06/11] KVM: arm64: Handle PtrAuth traps early
Date: Thu, 11 Jun 2020 10:09:51 +0100
Message-Id: <20200611090956.1537104-7-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200611090956.1537104-1-maz@kernel.org>
References: <20200611090956.1537104-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 ascull@google.com, james.morse@arm.com, mark.rutland@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_021012_999529_1E348E90 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Scull <ascull@google.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current way we deal with PtrAuth is a bit heavy handed:

- We forcefully save the host's keys on each vcpu_load()
- Handling the PtrAuth trap forces us to go all the way back
  to the exit handling code to just set the HCR bits

Overall, this is pretty cumbersome. A better approach would be
to handle it the same way we deal with the FPSIMD registers:

- On vcpu_load() disable PtrAuth for the guest
- On first use, save the host's keys, enable PtrAuth in the
  guest

Crucially, this can happen as a fixup, which is done very early
on exit. We can then reenter the guest immediately without
leaving the hypervisor role.

Another thing is that it simplify the rest of the host handling:
exiting all the way to the host means that the only possible
outcome for this trap is to inject an UNDEF.

Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/kvm/arm.c         | 17 +---------
 arch/arm64/kvm/handle_exit.c | 17 ++--------
 arch/arm64/kvm/hyp/switch.c  | 61 ++++++++++++++++++++++++++++++++++++
 arch/arm64/kvm/sys_regs.c    | 13 +++-----
 4 files changed, 70 insertions(+), 38 deletions(-)

diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
index 152049c5055d..14b747266607 100644
--- a/arch/arm64/kvm/arm.c
+++ b/arch/arm64/kvm/arm.c
@@ -337,12 +337,6 @@ void kvm_arch_vcpu_unblocking(struct kvm_vcpu *vcpu)
 	preempt_enable();
 }
 
-#define __ptrauth_save_key(regs, key)						\
-({										\
-	regs[key ## KEYLO_EL1] = read_sysreg_s(SYS_ ## key ## KEYLO_EL1);	\
-	regs[key ## KEYHI_EL1] = read_sysreg_s(SYS_ ## key ## KEYHI_EL1);	\
-})
-
 void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 {
 	int *last_ran;
@@ -376,17 +370,8 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 	else
 		vcpu_set_wfx_traps(vcpu);
 
-	if (vcpu_has_ptrauth(vcpu)) {
-		struct kvm_cpu_context *ctxt = vcpu->arch.host_cpu_context;
-
-		__ptrauth_save_key(ctxt->sys_regs, APIA);
-		__ptrauth_save_key(ctxt->sys_regs, APIB);
-		__ptrauth_save_key(ctxt->sys_regs, APDA);
-		__ptrauth_save_key(ctxt->sys_regs, APDB);
-		__ptrauth_save_key(ctxt->sys_regs, APGA);
-
+	if (vcpu_has_ptrauth(vcpu))
 		vcpu_ptrauth_disable(vcpu);
-	}
 }
 
 void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu)
diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
index 065251efa2e6..5a02d4c90559 100644
--- a/arch/arm64/kvm/handle_exit.c
+++ b/arch/arm64/kvm/handle_exit.c
@@ -162,25 +162,14 @@ static int handle_sve(struct kvm_vcpu *vcpu, struct kvm_run *run)
 	return 1;
 }
 
-/*
- * Handle the guest trying to use a ptrauth instruction, or trying to access a
- * ptrauth register.
- */
-void kvm_arm_vcpu_ptrauth_trap(struct kvm_vcpu *vcpu)
-{
-	if (vcpu_has_ptrauth(vcpu))
-		vcpu_ptrauth_enable(vcpu);
-	else
-		kvm_inject_undefined(vcpu);
-}
-
 /*
  * Guest usage of a ptrauth instruction (which the guest EL1 did not turn into
- * a NOP).
+ * a NOP). If we get here, it is that we didn't fixup ptrauth on exit, and all
+ * that we can do is give the guest an UNDEF.
  */
 static int kvm_handle_ptrauth(struct kvm_vcpu *vcpu, struct kvm_run *run)
 {
-	kvm_arm_vcpu_ptrauth_trap(vcpu);
+	kvm_inject_undefined(vcpu);
 	return 1;
 }
 
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index c07a45643cd4..d60c2ef0fe8c 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -490,6 +490,64 @@ static bool __hyp_text handle_tx2_tvm(struct kvm_vcpu *vcpu)
 	return true;
 }
 
+static bool __hyp_text esr_is_ptrauth_trap(u32 esr)
+{
+	u32 ec = ESR_ELx_EC(esr);
+
+	if (ec == ESR_ELx_EC_PAC)
+		return true;
+
+	if (ec != ESR_ELx_EC_SYS64)
+		return false;
+
+	switch (esr_sys64_to_sysreg(esr)) {
+	case SYS_APIAKEYLO_EL1:
+	case SYS_APIAKEYHI_EL1:
+	case SYS_APIBKEYLO_EL1:
+	case SYS_APIBKEYHI_EL1:
+	case SYS_APDAKEYLO_EL1:
+	case SYS_APDAKEYHI_EL1:
+	case SYS_APDBKEYLO_EL1:
+	case SYS_APDBKEYHI_EL1:
+	case SYS_APGAKEYLO_EL1:
+	case SYS_APGAKEYHI_EL1:
+		return true;
+	}
+
+	return false;
+}
+
+#define __ptrauth_save_key(regs, key)						\
+({										\
+	regs[key ## KEYLO_EL1] = read_sysreg_s(SYS_ ## key ## KEYLO_EL1);	\
+	regs[key ## KEYHI_EL1] = read_sysreg_s(SYS_ ## key ## KEYHI_EL1);	\
+})
+
+static bool __hyp_text __hyp_handle_ptrauth(struct kvm_vcpu *vcpu)
+{
+	struct kvm_cpu_context *ctxt;
+	u64 val;
+
+	if (!vcpu_has_ptrauth(vcpu) ||
+	    !esr_is_ptrauth_trap(kvm_vcpu_get_hsr(vcpu)))
+		return false;
+
+	ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
+	__ptrauth_save_key(ctxt->sys_regs, APIA);
+	__ptrauth_save_key(ctxt->sys_regs, APIB);
+	__ptrauth_save_key(ctxt->sys_regs, APDA);
+	__ptrauth_save_key(ctxt->sys_regs, APDB);
+	__ptrauth_save_key(ctxt->sys_regs, APGA);
+
+	vcpu_ptrauth_enable(vcpu);
+
+	val = read_sysreg(hcr_el2);
+	val |= (HCR_API | HCR_APK);
+	write_sysreg(val, hcr_el2);
+
+	return true;
+}
+
 /*
  * Return true when we were able to fixup the guest exit and should return to
  * the guest, false when we should restore the host state and return to the
@@ -524,6 +582,9 @@ static bool __hyp_text fixup_guest_exit(struct kvm_vcpu *vcpu, u64 *exit_code)
 	if (__hyp_handle_fpsimd(vcpu))
 		return true;
 
+	if (__hyp_handle_ptrauth(vcpu))
+		return true;
+
 	if (!__populate_fault_info(vcpu))
 		return true;
 
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index ad1d57501d6d..564995084cf8 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1034,16 +1034,13 @@ static bool trap_ptrauth(struct kvm_vcpu *vcpu,
 			 struct sys_reg_params *p,
 			 const struct sys_reg_desc *rd)
 {
-	kvm_arm_vcpu_ptrauth_trap(vcpu);
-
 	/*
-	 * Return false for both cases as we never skip the trapped
-	 * instruction:
-	 *
-	 * - Either we re-execute the same key register access instruction
-	 *   after enabling ptrauth.
-	 * - Or an UNDEF is injected as ptrauth is not supported/enabled.
+	 * If we land here, that is because we didn't fixup the access on exit
+	 * by allowing the PtrAuth sysregs. The only way this happens is when
+	 * the guest does not have PtrAuth support enabled.
 	 */
+	kvm_inject_undefined(vcpu);
+
 	return false;
 }
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
