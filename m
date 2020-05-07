Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CE01C826D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 08:20:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YmOGXdw+Ytj6WIcWlDr7jMwcn+1bWYxEBvUNWWPPyHY=; b=JH+
	GpJAZV5LAuFSp+Oejmowzy3ripgEHmX0KB6r88VxJ/udV0U1+/B+uaFw34v8hDjOpKJeoSIo1e8N1
	IQih1QB/KVLD4pXsiU1/nnjac1HK7P22t8i9Vtjaf5Eis49qQbc2T0ca/1K7UND73i2w3lgoYmFee
	BNUAhnZg/lmYCOXoroENbiufyaY7Fv5s32H/idmX2EWvdeDz7uxh7R037FfeSIBRTvLB2Ls1BPcUR
	DkrtFehrkYdn/gjrJHiIo8euKd3vflkrWJM0Iinrlji5fjOVcl1LQyZeyOhd2kKZjSqu6DywFWZzK
	1LgUsML8CTDCh0z1AhggEgugfdOCajA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWZto-00013t-HF; Thu, 07 May 2020 06:20:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWZte-00012V-MK
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 06:20:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E224D1FB;
 Wed,  6 May 2020 23:20:36 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.73.155])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E6D923F71F;
 Wed,  6 May 2020 23:20:33 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/cpufeature: Verify KVM capabilities during CPU hotplug
Date: Thu,  7 May 2020 11:49:47 +0530
Message-Id: <1588832387-8489-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_232038_825782_848C82A8 
X-CRM114-Status: GOOD (  14.83  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This validates KVM capabilities like VMID width, IPA range for hotplug CPU
against system finalized values. While here, it factors out get_vmid_bits()
for general use and also defines ID_AA64MMFR0_PARANGE_MASK.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: kvmarm@lists.cs.columbia.edu
Cc: linux-kernel@vger.kernel.org

Suggested-by: Suzuki Poulose <suzuki.poulose@arm.com>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/include/asm/cpufeature.h | 22 +++++++++++++++++++
 arch/arm64/include/asm/kvm_mmu.h    |  2 +-
 arch/arm64/include/asm/sysreg.h     |  1 +
 arch/arm64/kernel/cpufeature.c      |  2 ++
 arch/arm64/kvm/reset.c              | 33 +++++++++++++++++++++++++++--
 5 files changed, 57 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index afe08251ff95..6808a2091de4 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -745,6 +745,28 @@ static inline bool cpu_has_hw_af(void)
 extern bool cpu_has_amu_feat(int cpu);
 #endif
 
+static inline unsigned int get_vmid_bits(u64 mmfr1)
+{
+	int vmid_bits;
+
+	vmid_bits = cpuid_feature_extract_unsigned_field(mmfr1,
+						ID_AA64MMFR1_VMIDBITS_SHIFT);
+	if (vmid_bits == ID_AA64MMFR1_VMIDBITS_16)
+		return 16;
+
+	/*
+	 * Return the default here even if any reserved
+	 * value is fetched from the system register.
+	 */
+	return 8;
+}
+
+#ifdef CONFIG_KVM_ARM_HOST
+void verify_kvm_capabilities(void);
+#else
+static inline void verify_kvm_capabilities(void) { }
+#endif
+
 #endif /* __ASSEMBLY__ */
 
 #endif
diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
index 30b0e8d6b895..a7137e144b97 100644
--- a/arch/arm64/include/asm/kvm_mmu.h
+++ b/arch/arm64/include/asm/kvm_mmu.h
@@ -416,7 +416,7 @@ static inline unsigned int kvm_get_vmid_bits(void)
 {
 	int reg = read_sanitised_ftr_reg(SYS_ID_AA64MMFR1_EL1);
 
-	return (cpuid_feature_extract_unsigned_field(reg, ID_AA64MMFR1_VMIDBITS_SHIFT) == 2) ? 16 : 8;
+	return get_vmid_bits(reg);
 }
 
 /*
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index c4ac0ac25a00..3510a4668970 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -705,6 +705,7 @@
 #define ID_AA64MMFR0_TGRAN16_SUPPORTED	0x1
 #define ID_AA64MMFR0_PARANGE_48		0x5
 #define ID_AA64MMFR0_PARANGE_52		0x6
+#define ID_AA64MMFR0_PARANGE_MASK	0x7
 
 #ifdef CONFIG_ARM64_PA_BITS_52
 #define ID_AA64MMFR0_PARANGE_MAX	ID_AA64MMFR0_PARANGE_52
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 9fac745aa7bb..041dd610b0f8 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -2206,6 +2206,8 @@ static void verify_local_cpu_capabilities(void)
 
 	if (system_supports_sve())
 		verify_sve_features();
+
+	verify_kvm_capabilities();
 }
 
 void check_local_cpu_capabilities(void)
diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
index 30b7ea680f66..1eebcc2a8396 100644
--- a/arch/arm64/kvm/reset.c
+++ b/arch/arm64/kvm/reset.c
@@ -340,11 +340,39 @@ int kvm_reset_vcpu(struct kvm_vcpu *vcpu)
 	return ret;
 }
 
+void verify_kvm_capabilities(void)
+{
+	u64 safe_mmfr1, mmfr0, mmfr1;
+	int parange, ipa_max;
+	unsigned int safe_vmid_bits, vmid_bits;
+
+	safe_mmfr1 = read_sanitised_ftr_reg(SYS_ID_AA64MMFR1_EL1);
+	mmfr0 = read_cpuid(ID_AA64MMFR0_EL1);
+	mmfr1 = read_cpuid(ID_AA64MMFR1_EL1);
+
+	/* Verify VMID bits */
+	safe_vmid_bits = get_vmid_bits(safe_mmfr1);
+	vmid_bits = get_vmid_bits(mmfr1);
+	if (vmid_bits < safe_vmid_bits) {
+		pr_crit("CPU%d: VMID width mismatch\n", smp_processor_id());
+		cpu_die_early();
+	}
+
+	/* Verify IPA range */
+	parange = mmfr0 & ID_AA64MMFR0_PARANGE_MASK;
+	ipa_max = id_aa64mmfr0_parange_to_phys_shift(parange);
+	if (ipa_max < kvm_ipa_limit) {
+		pr_crit("CPU%d: IPA range mismatch\n", smp_processor_id());
+		cpu_die_early();
+	}
+}
+
 void kvm_set_ipa_limit(void)
 {
 	unsigned int ipa_max, pa_max, va_max, parange;
 
-	parange = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1) & 0x7;
+	parange = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1) &
+						ID_AA64MMFR0_PARANGE_MASK;
 	pa_max = id_aa64mmfr0_parange_to_phys_shift(parange);
 
 	/* Clamp the IPA limit to the PA size supported by the kernel */
@@ -406,7 +434,8 @@ int kvm_arm_setup_stage2(struct kvm *kvm, unsigned long type)
 		phys_shift = KVM_PHYS_SHIFT;
 	}
 
-	parange = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1) & 7;
+	parange = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1) &
+						ID_AA64MMFR0_PARANGE_MASK;
 	if (parange > ID_AA64MMFR0_PARANGE_MAX)
 		parange = ID_AA64MMFR0_PARANGE_MAX;
 	vtcr |= parange << VTCR_EL2_PS_SHIFT;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
