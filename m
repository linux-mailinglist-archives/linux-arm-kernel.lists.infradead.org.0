Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FC327AD7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:38:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=W9sFOMY/7b+ySqPCMxdGoAeGkySghL98AOZqsgOhSvo=; b=FcliRCXpvI42P6xOP6/XY/7I6j
	6MoEF2zCG3HP92K26jAxqOWyKAxaGGsYCKgFzJlO88gGVNzzxzbFO/MaciGkWP51aDq/k/XKGgDOA
	4q7vdos0KOsdQABob1bS/z3a1HhwIZFmtWbFCXEh4nkT3wLMUquRLCKRC+Apo+6X0s2EEraaBe604
	MhEuYTcHVQ4rGlM4yqPw9Lgg7FDJSIc3Uj1Y1QUc42/3nkbEO/XV+Ji/v5uMqSKgMcFg5ZrYycml0
	71mFOiB6OQ/fHlOUCyPXn48fLtV3rPa4hgxZkS9ZgfGwBIvAMO2BfqE3KSoi9dXwIENant4wq2PzT
	2K9yrsqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTl6Y-0003JS-O9; Thu, 23 May 2019 10:37:46 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTl4a-0000ru-L2
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 10:36:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 61E02A78;
 Thu, 23 May 2019 03:35:44 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 48CBD3F718;
 Thu, 23 May 2019 03:35:42 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: kvmarm@lists.cs.columbia.edu,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 10/15] arm64: KVM: enable conditional save/restore full SPE
 profiling buffer controls
Date: Thu, 23 May 2019 11:34:57 +0100
Message-Id: <20190523103502.25925-11-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190523103502.25925-1-sudeep.holla@arm.com>
References: <20190523103502.25925-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_033545_607530_557F677A 
X-CRM114-Status: GOOD (  16.35  )
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

Now that we can save/restore the full SPE controls, we can enable it
if SPE is setup and ready to use in KVM. It's supported in KVM only if
all the CPUs in the system supports SPE.

However to support heterogenous systems, we need to move the check if
host supports SPE and do a partial save/restore.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/kvm/hyp/debug-sr.c | 33 ++++++++++++++++-----------------
 include/kvm/arm_spe.h         |  3 +++
 2 files changed, 19 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/kvm/hyp/debug-sr.c b/arch/arm64/kvm/hyp/debug-sr.c
index a4e6eaf5934f..cd0a7571abc1 100644
--- a/arch/arm64/kvm/hyp/debug-sr.c
+++ b/arch/arm64/kvm/hyp/debug-sr.c
@@ -67,18 +67,13 @@
 	}
 
 static void __hyp_text
-__debug_save_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
+__debug_save_spe_context(struct kvm_cpu_context *ctxt, bool full_ctxt)
 {
 	u64 reg;
 
 	/* Clear pmscr in case of early return */
 	ctxt->sys_regs[PMSCR_EL1] = 0;
 
-	/* SPE present on this CPU? */
-	if (!cpuid_feature_extract_unsigned_field(read_sysreg(id_aa64dfr0_el1),
-						  ID_AA64DFR0_PMSVER_SHIFT))
-		return;
-
 	/* Yes; is it owned by higher EL? */
 	reg = read_sysreg_s(SYS_PMBIDR_EL1);
 	if (reg & BIT(SYS_PMBIDR_EL1_P_SHIFT))
@@ -114,7 +109,7 @@ __debug_save_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
 }
 
 static void __hyp_text
-__debug_restore_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
+__debug_restore_spe_context(struct kvm_cpu_context *ctxt, bool full_ctxt)
 {
 	if (!ctxt->sys_regs[PMSCR_EL1])
 		return;
@@ -182,11 +177,14 @@ void __hyp_text __debug_restore_guest_context(struct kvm_vcpu *vcpu)
 	struct kvm_guest_debug_arch *host_dbg;
 	struct kvm_guest_debug_arch *guest_dbg;
 
+	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
+	guest_ctxt = &vcpu->arch.ctxt;
+
+	__debug_restore_spe_context(guest_ctxt, kvm_arm_spe_v1_ready(vcpu));
+
 	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
 		return;
 
-	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
-	guest_ctxt = &vcpu->arch.ctxt;
 	host_dbg = &vcpu->arch.host_debug_state.regs;
 	guest_dbg = kern_hyp_va(vcpu->arch.debug_ptr);
 
@@ -204,8 +202,7 @@ void __hyp_text __debug_restore_host_context(struct kvm_vcpu *vcpu)
 	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
 	guest_ctxt = &vcpu->arch.ctxt;
 
-	if (!has_vhe())
-		__debug_restore_spe_nvhe(host_ctxt, false);
+	__debug_restore_spe_context(host_ctxt, kvm_arm_spe_v1_ready(vcpu));
 
 	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
 		return;
@@ -221,19 +218,21 @@ void __hyp_text __debug_restore_host_context(struct kvm_vcpu *vcpu)
 
 void __hyp_text __debug_save_host_context(struct kvm_vcpu *vcpu)
 {
-	/*
-	 * Non-VHE: Disable and flush SPE data generation
-	 * VHE: The vcpu can run, but it can't hide.
-	 */
 	struct kvm_cpu_context *host_ctxt;
 
 	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
-	if (!has_vhe())
-		__debug_save_spe_nvhe(host_ctxt, false);
+	if (cpuid_feature_extract_unsigned_field(read_sysreg(id_aa64dfr0_el1),
+						 ID_AA64DFR0_PMSVER_SHIFT))
+		__debug_save_spe_context(host_ctxt, kvm_arm_spe_v1_ready(vcpu));
 }
 
 void __hyp_text __debug_save_guest_context(struct kvm_vcpu *vcpu)
 {
+	bool kvm_spe_ready = kvm_arm_spe_v1_ready(vcpu);
+
+	/* SPE present on this vCPU? */
+	if (kvm_spe_ready)
+		__debug_save_spe_context(&vcpu->arch.ctxt, kvm_spe_ready);
 }
 
 u32 __hyp_text __kvm_get_mdcr_el2(void)
diff --git a/include/kvm/arm_spe.h b/include/kvm/arm_spe.h
index 2440ff02f747..fdcb0df1e0fd 100644
--- a/include/kvm/arm_spe.h
+++ b/include/kvm/arm_spe.h
@@ -18,6 +18,8 @@ struct kvm_spe {
 
 #ifdef CONFIG_KVM_ARM_SPE
 
+#define kvm_arm_spe_v1_ready(v)		((v)->arch.spe.ready)
+
 static inline bool kvm_arm_support_spe_v1(void)
 {
 	u64 dfr0 = read_sanitised_ftr_reg(SYS_ID_AA64DFR0_EL1);
@@ -27,6 +29,7 @@ static inline bool kvm_arm_support_spe_v1(void)
 }
 #else
 
+#define kvm_arm_spe_v1_ready(v)		(false)
 #define kvm_arm_support_spe_v1()	(false)
 #endif /* CONFIG_KVM_ARM_SPE */
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
