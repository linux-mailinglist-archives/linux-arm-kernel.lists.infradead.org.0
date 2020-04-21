Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62351B2987
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lkecKpamLNjcFkutY6rPFD6gqQmRtd9Nd6VLNpqpcj0=; b=bevq3E6SNDfB6p
	jSHvS/1lE5KQ7yKbnXbppSSaewYtaiT3PBFuPvgjobAX8qlq+pUlhzIJczIrdk4PNENHuHIy9cOmv
	1CLw/CS6JHTxA2TTc6xaXGxLtGd471Vp79R/o5ugiZNdshSRkPf+PpZ+8EUayb3hQhiQXckKs5XVE
	ROcY3CfxiYsQDWct166UrRgSMx+Iaa8I8fgfQBpyV4IrSoeqxd/9B0vk30SHBy3z+mIzPMky+pKkO
	t6g0nUcgVRy8ha2Cy/OzjbcxwRwWOnpaPxaNGmTBvO4s0cq0PdV4zu/1kTX3j0L1qY8dgnyxBjMcW
	+cprd1171pk8tvRAeAPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQtsE-0000h4-R2; Tue, 21 Apr 2020 14:27:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtqr-00084c-NA
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:26:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D5E4A101E;
 Tue, 21 Apr 2020 07:26:16 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3457F3F68F;
 Tue, 21 Apr 2020 07:26:15 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 03/23] arm64: mte: CPU feature detection and initial sysreg
 configuration
Date: Tue, 21 Apr 2020 15:25:43 +0100
Message-Id: <20200421142603.3894-4-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200421142603.3894-1-catalin.marinas@arm.com>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_072617_850654_CB94DB76 
X-CRM114-Status: GOOD (  15.75  )
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Suzuki K Poulose <Suzuki.Poulose@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vincenzo Frascino <vincenzo.frascino@arm.com>

Add the cpufeature and hwcap entries to detect the presence of MTE on
the boot CPUs (primary and secondary). Any late secondary CPU not
supporting the feature, if detected during boot, will be parked.

In addition, add the minimum SCTLR_EL1 and HCR_EL2 bits for enabling
MTE. Without subsequent setting of MAIR, these bits do not have an
effect on tag checking.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Co-developed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Suzuki K Poulose <Suzuki.Poulose@arm.com>
---
 arch/arm64/include/asm/cpucaps.h    |  4 +++-
 arch/arm64/include/asm/cpufeature.h |  6 ++++++
 arch/arm64/include/asm/hwcap.h      |  1 +
 arch/arm64/include/asm/kvm_arm.h    |  2 +-
 arch/arm64/include/asm/sysreg.h     |  1 +
 arch/arm64/include/uapi/asm/hwcap.h |  2 ++
 arch/arm64/kernel/cpufeature.c      | 30 +++++++++++++++++++++++++++++
 arch/arm64/kernel/cpuinfo.c         |  2 ++
 8 files changed, 46 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index 8eb5a088ae65..4731ebacff54 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -61,7 +61,9 @@
 #define ARM64_HAS_AMU_EXTN			51
 #define ARM64_HAS_ADDRESS_AUTH			52
 #define ARM64_HAS_GENERIC_AUTH			53
+/* 54 reserved for ARM64_BTI */
+#define ARM64_MTE				55
 
-#define ARM64_NCAPS				54
+#define ARM64_NCAPS				56
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index afe08251ff95..afc315814563 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -674,6 +674,12 @@ static inline bool system_uses_irq_prio_masking(void)
 	       cpus_have_const_cap(ARM64_HAS_IRQ_PRIO_MASKING);
 }
 
+static inline bool system_supports_mte(void)
+{
+	return IS_ENABLED(CONFIG_ARM64_MTE) &&
+		cpus_have_const_cap(ARM64_MTE);
+}
+
 static inline bool system_has_prio_mask_debugging(void)
 {
 	return IS_ENABLED(CONFIG_ARM64_DEBUG_PRIORITY_MASKING) &&
diff --git a/arch/arm64/include/asm/hwcap.h b/arch/arm64/include/asm/hwcap.h
index 0f00265248b5..8b302c88cfeb 100644
--- a/arch/arm64/include/asm/hwcap.h
+++ b/arch/arm64/include/asm/hwcap.h
@@ -94,6 +94,7 @@
 #define KERNEL_HWCAP_BF16		__khwcap2_feature(BF16)
 #define KERNEL_HWCAP_DGH		__khwcap2_feature(DGH)
 #define KERNEL_HWCAP_RNG		__khwcap2_feature(RNG)
+#define KERNEL_HWCAP_MTE		__khwcap2_feature(MTE)
 
 /*
  * This yields a mask that user programs can use to figure out what
diff --git a/arch/arm64/include/asm/kvm_arm.h b/arch/arm64/include/asm/kvm_arm.h
index 8a1cbfd544d6..6c3b2fc922bb 100644
--- a/arch/arm64/include/asm/kvm_arm.h
+++ b/arch/arm64/include/asm/kvm_arm.h
@@ -78,7 +78,7 @@
 			 HCR_AMO | HCR_SWIO | HCR_TIDCP | HCR_RW | HCR_TLOR | \
 			 HCR_FMO | HCR_IMO)
 #define HCR_VIRT_EXCP_MASK (HCR_VSE | HCR_VI | HCR_VF)
-#define HCR_HOST_NVHE_FLAGS (HCR_RW | HCR_API | HCR_APK)
+#define HCR_HOST_NVHE_FLAGS (HCR_RW | HCR_API | HCR_APK | HCR_ATA)
 #define HCR_HOST_VHE_FLAGS (HCR_RW | HCR_TGE | HCR_E2H)
 
 /* TCR_EL2 Registers bits */
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index e823e93b7429..86236ae6c4e7 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -604,6 +604,7 @@
 			 SCTLR_EL1_SA0  | SCTLR_EL1_SED  | SCTLR_ELx_I    |\
 			 SCTLR_EL1_DZE  | SCTLR_EL1_UCT                   |\
 			 SCTLR_EL1_NTWE | SCTLR_ELx_IESB | SCTLR_EL1_SPAN |\
+			 SCTLR_ELx_ITFSB| SCTLR_ELx_ATA  | SCTLR_EL1_ATA0 |\
 			 ENDIAN_SET_EL1 | SCTLR_EL1_UCI  | SCTLR_EL1_RES1)
 
 /* MAIR_ELx memory attributes (used by Linux) */
diff --git a/arch/arm64/include/uapi/asm/hwcap.h b/arch/arm64/include/uapi/asm/hwcap.h
index 7752d93bb50f..73ac5aede18c 100644
--- a/arch/arm64/include/uapi/asm/hwcap.h
+++ b/arch/arm64/include/uapi/asm/hwcap.h
@@ -73,5 +73,7 @@
 #define HWCAP2_BF16		(1 << 14)
 #define HWCAP2_DGH		(1 << 15)
 #define HWCAP2_RNG		(1 << 16)
+/* bit 17 reserved for HWCAP2_BTI */
+#define HWCAP2_MTE		(1 << 18)
 
 #endif /* _UAPI__ASM_HWCAP_H */
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 9fac745aa7bb..512a8b24c5df 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -182,6 +182,8 @@ static const struct arm64_ftr_bits ftr_id_aa64pfr0[] = {
 
 static const struct arm64_ftr_bits ftr_id_aa64pfr1[] = {
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR1_SSBS_SHIFT, 4, ID_AA64PFR1_SSBS_PSTATE_NI),
+	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_MTE),
+		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR1_MTE_SHIFT, 4, ID_AA64PFR1_MTE_NI),
 	ARM64_FTR_END,
 };
 
@@ -1409,6 +1411,18 @@ static bool can_use_gic_priorities(const struct arm64_cpu_capabilities *entry,
 }
 #endif
 
+#ifdef CONFIG_ARM64_MTE
+static void cpu_enable_mte(struct arm64_cpu_capabilities const *cap)
+{
+	/* all non-zero tags excluded by default */
+	write_sysreg_s(SYS_GCR_EL1_RRND | SYS_GCR_EL1_EXCL_MASK, SYS_GCR_EL1);
+	write_sysreg_s(0, SYS_TFSR_EL1);
+	write_sysreg_s(0, SYS_TFSRE0_EL1);
+
+	isb();
+}
+#endif /* CONFIG_ARM64_MTE */
+
 /* Internal helper functions to match cpu capability type */
 static bool
 cpucap_late_cpu_optional(const struct arm64_cpu_capabilities *cap)
@@ -1779,6 +1793,19 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.min_field_value = 1,
 	},
 #endif
+#ifdef CONFIG_ARM64_MTE
+	{
+		.desc = "Memory Tagging Extension",
+		.capability = ARM64_MTE,
+		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+		.matches = has_cpuid_feature,
+		.sys_reg = SYS_ID_AA64PFR1_EL1,
+		.field_pos = ID_AA64PFR1_MTE_SHIFT,
+		.min_field_value = ID_AA64PFR1_MTE,
+		.sign = FTR_UNSIGNED,
+		.cpu_enable = cpu_enable_mte,
+	},
+#endif /* CONFIG_ARM64_MTE */
 	{},
 };
 
@@ -1892,6 +1919,9 @@ static const struct arm64_cpu_capabilities arm64_elf_hwcaps[] = {
 	HWCAP_MULTI_CAP(ptr_auth_hwcap_addr_matches, CAP_HWCAP, KERNEL_HWCAP_PACA),
 	HWCAP_MULTI_CAP(ptr_auth_hwcap_gen_matches, CAP_HWCAP, KERNEL_HWCAP_PACG),
 #endif
+#ifdef CONFIG_ARM64_MTE
+	HWCAP_CAP(SYS_ID_AA64PFR1_EL1, ID_AA64PFR1_MTE_SHIFT, FTR_UNSIGNED, ID_AA64PFR1_MTE, CAP_HWCAP, KERNEL_HWCAP_MTE),
+#endif /* CONFIG_ARM64_MTE */
 	{},
 };
 
diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
index 86136075ae41..d14b29de2c73 100644
--- a/arch/arm64/kernel/cpuinfo.c
+++ b/arch/arm64/kernel/cpuinfo.c
@@ -92,6 +92,8 @@ static const char *const hwcap_str[] = {
 	"bf16",
 	"dgh",
 	"rng",
+	"",		/* reserved for BTI */
+	"mte",
 	NULL
 };
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
