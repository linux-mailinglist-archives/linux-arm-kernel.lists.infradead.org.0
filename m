Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBB2635E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 14:29:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hgp0q4y3nVnQk1UhJMHh5av3al3nzQc3/rI9k2AwCAs=; b=OPe5YMJQA6gvdm
	8dCnyn6xCM6KfT9mreCCr7iIAm54LzMXVtbSMLbKI3NfzNYsr2UIHi+/uYGlOXqpaWEJ+1krbZ2u3
	HbyszDo3tinx/3obG6FAQ0XGQTEXJLWaNt/dtfx84iCWpF7TH5rxvqATH8ur66Bm06q8VOi2jpb/P
	JPJIKuoF/dbYDBYnyR3PwE2s0P0mAouc0uhCIM7wJBmW/FbUg95wKFB7X0IwlCOR9Qtbu2R94Kn6u
	vR0764j9gJfiWdtBZA/4NmVgW8fcWB2EQKbMAKTMYUVnQy84RuYP8FgupWASM10MGSx+usuU0ui/7
	+Orqgnb6yMfNlt1Y/VYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkpFL-0001GY-F6; Tue, 09 Jul 2019 12:29:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkpBs-0006oq-PD
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 12:25:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5C27D15A1;
 Tue,  9 Jul 2019 05:25:48 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com (unknown [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 903E83F59C;
 Tue,  9 Jul 2019 05:25:46 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 14/18] arm64: KVM: Propagate full Spectre v2 workaround state
 to KVM guests
Date: Tue,  9 Jul 2019 13:25:03 +0100
Message-Id: <20190709122507.214494-15-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190709122507.214494-1-marc.zyngier@arm.com>
References: <20190709122507.214494-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_052549_113237_1726D544 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Steven Price <steven.price@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andre Przywara <andre.przywara@arm.com>

Recent commits added the explicit notion of "workaround not required" to
the state of the Spectre v2 (aka. BP_HARDENING) workaround, where we
just had "needed" and "unknown" before.

Export this knowledge to the rest of the kernel and enhance the existing
kvm_arm_harden_branch_predictor() to report this new state as well.
Export this new state to guests when they use KVM's firmware interface
emulation.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Steven Price <steven.price@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm/include/asm/kvm_host.h     | 12 +++++++++---
 arch/arm64/include/asm/cpufeature.h |  6 ++++++
 arch/arm64/include/asm/kvm_host.h   | 16 ++++++++++++++--
 arch/arm64/kernel/cpu_errata.c      | 23 ++++++++++++++++++-----
 virt/kvm/arm/psci.c                 | 10 +++++++++-
 5 files changed, 56 insertions(+), 11 deletions(-)

diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
index f80418ddeb60..e74e8f408987 100644
--- a/arch/arm/include/asm/kvm_host.h
+++ b/arch/arm/include/asm/kvm_host.h
@@ -362,7 +362,11 @@ static inline void kvm_vcpu_pmu_restore_host(struct kvm_vcpu *vcpu) {}
 static inline void kvm_arm_vhe_guest_enter(void) {}
 static inline void kvm_arm_vhe_guest_exit(void) {}
 
-static inline bool kvm_arm_harden_branch_predictor(void)
+#define KVM_BP_HARDEN_UNKNOWN		-1
+#define KVM_BP_HARDEN_WA_NEEDED		0
+#define KVM_BP_HARDEN_NOT_REQUIRED	1
+
+static inline int kvm_arm_harden_branch_predictor(void)
 {
 	switch(read_cpuid_part()) {
 #ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
@@ -370,10 +374,12 @@ static inline bool kvm_arm_harden_branch_predictor(void)
 	case ARM_CPU_PART_CORTEX_A12:
 	case ARM_CPU_PART_CORTEX_A15:
 	case ARM_CPU_PART_CORTEX_A17:
-		return true;
+		return KVM_BP_HARDEN_WA_NEEDED;
 #endif
+	case ARM_CPU_PART_CORTEX_A7:
+		return KVM_BP_HARDEN_NOT_REQUIRED;
 	default:
-		return false;
+		return KVM_BP_HARDEN_UNKNOWN;
 	}
 }
 
diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 373799b7982f..948427f6b3d9 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -614,6 +614,12 @@ static inline bool system_uses_irq_prio_masking(void)
 	       cpus_have_const_cap(ARM64_HAS_IRQ_PRIO_MASKING);
 }
 
+#define ARM64_BP_HARDEN_UNKNOWN		-1
+#define ARM64_BP_HARDEN_WA_NEEDED	0
+#define ARM64_BP_HARDEN_NOT_REQUIRED	1
+
+int get_spectre_v2_workaround_state(void);
+
 #define ARM64_SSBD_UNKNOWN		-1
 #define ARM64_SSBD_FORCE_DISABLE	0
 #define ARM64_SSBD_KERNEL		1
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index c328191aa202..d9770daf3d7d 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -620,9 +620,21 @@ static inline void kvm_arm_vhe_guest_exit(void)
 	isb();
 }
 
-static inline bool kvm_arm_harden_branch_predictor(void)
+#define KVM_BP_HARDEN_UNKNOWN		-1
+#define KVM_BP_HARDEN_WA_NEEDED		0
+#define KVM_BP_HARDEN_NOT_REQUIRED	1
+
+static inline int kvm_arm_harden_branch_predictor(void)
 {
-	return cpus_have_const_cap(ARM64_HARDEN_BRANCH_PREDICTOR);
+	switch (get_spectre_v2_workaround_state()) {
+	case ARM64_BP_HARDEN_WA_NEEDED:
+		return KVM_BP_HARDEN_WA_NEEDED;
+	case ARM64_BP_HARDEN_NOT_REQUIRED:
+		return KVM_BP_HARDEN_NOT_REQUIRED;
+	case ARM64_BP_HARDEN_UNKNOWN:
+	default:
+		return KVM_BP_HARDEN_UNKNOWN;
+	}
 }
 
 #define KVM_SSBD_UNKNOWN		-1
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index ca11ff7bf55e..1e43ba5c79b7 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -554,6 +554,17 @@ cpu_enable_cache_maint_trap(const struct arm64_cpu_capabilities *__unused)
 static bool __hardenbp_enab = true;
 static bool __spectrev2_safe = true;
 
+int get_spectre_v2_workaround_state(void)
+{
+	if (__spectrev2_safe)
+		return ARM64_BP_HARDEN_NOT_REQUIRED;
+
+	if (!__hardenbp_enab)
+		return ARM64_BP_HARDEN_UNKNOWN;
+
+	return ARM64_BP_HARDEN_WA_NEEDED;
+}
+
 /*
  * List of CPUs that do not need any Spectre-v2 mitigation at all.
  */
@@ -854,13 +865,15 @@ ssize_t cpu_show_spectre_v1(struct device *dev, struct device_attribute *attr,
 ssize_t cpu_show_spectre_v2(struct device *dev, struct device_attribute *attr,
 		char *buf)
 {
-	if (__spectrev2_safe)
+	switch (get_spectre_v2_workaround_state()) {
+	case ARM64_BP_HARDEN_NOT_REQUIRED:
 		return sprintf(buf, "Not affected\n");
-
-	if (__hardenbp_enab)
+        case ARM64_BP_HARDEN_WA_NEEDED:
 		return sprintf(buf, "Mitigation: Branch predictor hardening\n");
-
-	return sprintf(buf, "Vulnerable\n");
+        case ARM64_BP_HARDEN_UNKNOWN:
+	default:
+		return sprintf(buf, "Vulnerable\n");
+	}
 }
 
 ssize_t cpu_show_spec_store_bypass(struct device *dev,
diff --git a/virt/kvm/arm/psci.c b/virt/kvm/arm/psci.c
index be3c9cdca9f3..355b9e38a42d 100644
--- a/virt/kvm/arm/psci.c
+++ b/virt/kvm/arm/psci.c
@@ -401,8 +401,16 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
 		feature = smccc_get_arg1(vcpu);
 		switch(feature) {
 		case ARM_SMCCC_ARCH_WORKAROUND_1:
-			if (kvm_arm_harden_branch_predictor())
+			switch (kvm_arm_harden_branch_predictor()) {
+			case KVM_BP_HARDEN_UNKNOWN:
+				break;
+			case KVM_BP_HARDEN_WA_NEEDED:
 				val = SMCCC_RET_SUCCESS;
+				break;
+			case KVM_BP_HARDEN_NOT_REQUIRED:
+				val = SMCCC_RET_NOT_REQUIRED;
+				break;
+			}
 			break;
 		case ARM_SMCCC_ARCH_WORKAROUND_2:
 			switch (kvm_arm_have_ssbd()) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
