Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3D19B27B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:53:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XQGoSkf22rrPOrwBv8Q7tkm+35QgFUxl3rlYSoksfEI=; b=DZ4
	Iwm7Tmw4UEnWtuTVNoQPMW8GD4SynbAI9TTrctnqYD9koEWzNi7RiVgjI5UwuCglRcTGEGliODBMo
	79Uhr+185oPxz0UUNMr1K6dJGTLsprhWEqbQx1shYxDuQLXufvolBJelMDwh7NkiA7jke6bD4WEiC
	t+Zuil5eyPC5EHkn0MXoA6Q7FnvFdCcJY8F0uRfbYNg4gL2gY4UogDCStstdc1z2LndXP9T2tr4v7
	mqY0PYzm5Bd9Ah1kgbEktJxW4DfVD0WIrmP+/PoqLTRlDn+IpWqiaTKzAa2qK99IH6QH/10LkhWxN
	JI3ABhnsWcXkEgxFAjjV8r1WZBytC8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1AwK-00014U-Tw; Fri, 23 Aug 2019 14:53:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i1AwD-00013e-AR
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:53:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E0C1A28;
 Fri, 23 Aug 2019 07:53:12 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 03F303F718;
 Fri, 23 Aug 2019 07:53:11 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Add support for the Transactional Memory Extension
 (TME)
Date: Fri, 23 Aug 2019 15:52:25 +0100
Message-Id: <20190823145225.16106-1-will@kernel.org>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_075313_455198_F01E6368 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, maz@kernel.org,
 Will Deacon <will@kernel.org>, jade.alglave@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Whilst the Transactional Memory Extension doesn't require substantial
support in the kernel in order to be used from userspace or guest
operating systems, we do need to enable it before exposing its existence
via the ID register emulation and a new hwcap.

Signed-off-by: Will Deacon <will@kernel.org>
---
 Documentation/arm64/cpu-feature-registers.rst |  2 ++
 arch/arm64/include/asm/cpucaps.h              |  3 ++-
 arch/arm64/include/asm/esr.h                  |  3 ++-
 arch/arm64/include/asm/hwcap.h                |  1 +
 arch/arm64/include/asm/kvm_arm.h              |  5 +++--
 arch/arm64/include/asm/kvm_emulate.h          |  3 +++
 arch/arm64/include/asm/sysreg.h               |  5 +++++
 arch/arm64/include/uapi/asm/hwcap.h           |  1 +
 arch/arm64/kernel/cpufeature.c                | 18 ++++++++++++++++++
 arch/arm64/kernel/cpuinfo.c                   |  1 +
 arch/arm64/kernel/traps.c                     |  1 +
 11 files changed, 39 insertions(+), 4 deletions(-)

diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
index 2955287e9acc..ec256423982e 100644
--- a/Documentation/arm64/cpu-feature-registers.rst
+++ b/Documentation/arm64/cpu-feature-registers.rst
@@ -131,6 +131,8 @@ infrastructure:
      +------------------------------+---------+---------+
      | RDM                          | [31-28] |    y    |
      +------------------------------+---------+---------+
+     | TME                          | [27-24] |    y    |
+     +------------------------------+---------+---------+
      | ATOMICS                      | [23-20] |    y    |
      +------------------------------+---------+---------+
      | CRC32                        | [19-16] |    y    |
diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index f19fe4b9acc4..0996ae1b9036 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -52,7 +52,8 @@
 #define ARM64_HAS_IRQ_PRIO_MASKING		42
 #define ARM64_HAS_DCPODP			43
 #define ARM64_WORKAROUND_1463225		44
+#define ARM64_HAS_TME				45
 
-#define ARM64_NCAPS				45
+#define ARM64_NCAPS				46
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/include/asm/esr.h b/arch/arm64/include/asm/esr.h
index cb29253ae86b..e3b47853389a 100644
--- a/arch/arm64/include/asm/esr.h
+++ b/arch/arm64/include/asm/esr.h
@@ -35,7 +35,8 @@
 #define ESR_ELx_EC_SYS64	(0x18)
 #define ESR_ELx_EC_SVE		(0x19)
 #define ESR_ELx_EC_ERET		(0x1a)	/* EL2 only */
-/* Unallocated EC: 0x1b - 0x1E */
+#define ESR_ELx_EC_TME		(0x1b)
+/* Unallocated EC: 0x1C - 0x1E */
 #define ESR_ELx_EC_IMP_DEF	(0x1f)	/* EL3 only */
 #define ESR_ELx_EC_IABT_LOW	(0x20)
 #define ESR_ELx_EC_IABT_CUR	(0x21)
diff --git a/arch/arm64/include/asm/hwcap.h b/arch/arm64/include/asm/hwcap.h
index 3d2f2472a36c..365cbaa97d66 100644
--- a/arch/arm64/include/asm/hwcap.h
+++ b/arch/arm64/include/asm/hwcap.h
@@ -86,6 +86,7 @@
 #define KERNEL_HWCAP_SVESM4		__khwcap2_feature(SVESM4)
 #define KERNEL_HWCAP_FLAGM2		__khwcap2_feature(FLAGM2)
 #define KERNEL_HWCAP_FRINT		__khwcap2_feature(FRINT)
+#define KERNEL_HWCAP_TME		__khwcap2_feature(TME)
 
 /*
  * This yields a mask that user programs can use to figure out what
diff --git a/arch/arm64/include/asm/kvm_arm.h b/arch/arm64/include/asm/kvm_arm.h
index a8b205e5c4a8..ca8ac52827d4 100644
--- a/arch/arm64/include/asm/kvm_arm.h
+++ b/arch/arm64/include/asm/kvm_arm.h
@@ -15,6 +15,7 @@
 #define HCR_FWB		(UL(1) << 46)
 #define HCR_API		(UL(1) << 41)
 #define HCR_APK		(UL(1) << 40)
+#define HCR_TME		(UL(1) << 39)
 #define HCR_TEA		(UL(1) << 37)
 #define HCR_TERR	(UL(1) << 36)
 #define HCR_TLOR	(UL(1) << 35)
@@ -78,8 +79,8 @@
 			 HCR_AMO | HCR_SWIO | HCR_TIDCP | HCR_RW | HCR_TLOR | \
 			 HCR_FMO | HCR_IMO)
 #define HCR_VIRT_EXCP_MASK (HCR_VSE | HCR_VI | HCR_VF)
-#define HCR_HOST_NVHE_FLAGS (HCR_RW | HCR_API | HCR_APK)
-#define HCR_HOST_VHE_FLAGS (HCR_RW | HCR_TGE | HCR_E2H)
+#define HCR_HOST_NVHE_FLAGS (HCR_RW | HCR_API | HCR_APK | HCR_TME)
+#define HCR_HOST_VHE_FLAGS (HCR_RW | HCR_TGE | HCR_E2H | HCR_TME)
 
 /* TCR_EL2 Registers bits */
 #define TCR_EL2_RES1		((1 << 31) | (1 << 23))
diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
index d69c1efc63e7..ac3b3db923a6 100644
--- a/arch/arm64/include/asm/kvm_emulate.h
+++ b/arch/arm64/include/asm/kvm_emulate.h
@@ -70,6 +70,9 @@ static inline void vcpu_reset_hcr(struct kvm_vcpu *vcpu)
 	if (cpus_have_const_cap(ARM64_MISMATCHED_CACHE_TYPE) ||
 	    vcpu_el1_is_32bit(vcpu))
 		vcpu->arch.hcr_el2 |= HCR_TID2;
+
+	if (cpus_have_const_cap(ARM64_HAS_TME))
+		vcpu->arch.hcr_el2 |= HCR_TME;
 }
 
 static inline unsigned long *vcpu_hcr(struct kvm_vcpu *vcpu)
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 1df45c7ffcf7..55a4ad380d71 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -478,6 +478,10 @@
 #define SYS_CNTV_CVAL_EL02		sys_reg(3, 5, 14, 3, 2)
 
 /* Common SCTLR_ELx flags. */
+#define SCTLR_ELx_TME	(BIT(53))
+#define SCTLR_ELx_TME0	(BIT(52))
+#define SCTLR_ELx_TMT	(BIT(51))
+#define SCTLR_ELx_TMT0	(BIT(50))
 #define SCTLR_ELx_DSSBS	(BIT(44))
 #define SCTLR_ELx_ENIA	(BIT(31))
 #define SCTLR_ELx_ENIB	(BIT(30))
@@ -543,6 +547,7 @@
 #define ID_AA64ISAR0_SM3_SHIFT		36
 #define ID_AA64ISAR0_SHA3_SHIFT		32
 #define ID_AA64ISAR0_RDM_SHIFT		28
+#define ID_AA64ISAR0_TME_SHIFT		24
 #define ID_AA64ISAR0_ATOMICS_SHIFT	20
 #define ID_AA64ISAR0_CRC32_SHIFT	16
 #define ID_AA64ISAR0_SHA2_SHIFT		12
diff --git a/arch/arm64/include/uapi/asm/hwcap.h b/arch/arm64/include/uapi/asm/hwcap.h
index a1e72886b30c..751d889265e2 100644
--- a/arch/arm64/include/uapi/asm/hwcap.h
+++ b/arch/arm64/include/uapi/asm/hwcap.h
@@ -65,5 +65,6 @@
 #define HWCAP2_SVESM4		(1 << 6)
 #define HWCAP2_FLAGM2		(1 << 7)
 #define HWCAP2_FRINT		(1 << 8)
+#define HWCAP2_TME		(1 << 9)
 
 #endif /* _UAPI__ASM_HWCAP_H */
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 95201e5ff5e1..6d3593299463 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -126,6 +126,7 @@ static const struct arm64_ftr_bits ftr_id_aa64isar0[] = {
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_SM3_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_SHA3_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_RDM_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_TME_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_ATOMICS_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_CRC32_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_SHA2_SHIFT, 4, 0),
@@ -1252,6 +1253,11 @@ static bool can_use_gic_priorities(const struct arm64_cpu_capabilities *entry,
 }
 #endif
 
+static void cpu_enable_tme(const struct arm64_cpu_capabilities *cap)
+{
+	sysreg_clear_set(sctlr_el1, 0, SCTLR_ELx_TME0);
+}
+
 static const struct arm64_cpu_capabilities arm64_features[] = {
 	{
 		.desc = "GIC system register CPU interface",
@@ -1552,6 +1558,17 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.min_field_value = 1,
 	},
 #endif
+	{
+		.desc = "Transactional memory extension",
+		.capability = ARM64_HAS_TME,
+		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+		.sys_reg = SYS_ID_AA64ISAR0_EL1,
+		.sign = FTR_UNSIGNED,
+		.field_pos = ID_AA64ISAR0_TME_SHIFT,
+		.min_field_value = 1,
+		.matches = has_cpuid_feature,
+		.cpu_enable = cpu_enable_tme,
+	},
 	{},
 };
 
@@ -1615,6 +1632,7 @@ static const struct arm64_cpu_capabilities arm64_elf_hwcaps[] = {
 	HWCAP_CAP(SYS_ID_AA64ISAR0_EL1, ID_AA64ISAR0_SHA2_SHIFT, FTR_UNSIGNED, 2, CAP_HWCAP, KERNEL_HWCAP_SHA512),
 	HWCAP_CAP(SYS_ID_AA64ISAR0_EL1, ID_AA64ISAR0_CRC32_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_CRC32),
 	HWCAP_CAP(SYS_ID_AA64ISAR0_EL1, ID_AA64ISAR0_ATOMICS_SHIFT, FTR_UNSIGNED, 2, CAP_HWCAP, KERNEL_HWCAP_ATOMICS),
+	HWCAP_CAP(SYS_ID_AA64ISAR0_EL1, ID_AA64ISAR0_TME_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_TME),
 	HWCAP_CAP(SYS_ID_AA64ISAR0_EL1, ID_AA64ISAR0_RDM_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_ASIMDRDM),
 	HWCAP_CAP(SYS_ID_AA64ISAR0_EL1, ID_AA64ISAR0_SHA3_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_SHA3),
 	HWCAP_CAP(SYS_ID_AA64ISAR0_EL1, ID_AA64ISAR0_SM3_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_SM3),
diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
index 05933c065732..834ea12323ce 100644
--- a/arch/arm64/kernel/cpuinfo.c
+++ b/arch/arm64/kernel/cpuinfo.c
@@ -84,6 +84,7 @@ static const char *const hwcap_str[] = {
 	"svesm4",
 	"flagm2",
 	"frint",
+	"tme",
 	NULL
 };
 
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 6e950908eb97..1ec8e13a0191 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -746,6 +746,7 @@ static const char *esr_class_str[] = {
 	[ESR_ELx_EC_SYS64]		= "MSR/MRS (AArch64)",
 	[ESR_ELx_EC_SVE]		= "SVE",
 	[ESR_ELx_EC_ERET]		= "ERET/ERETAA/ERETAB",
+	[ESR_ELx_EC_TME]		= "TME TSTART",
 	[ESR_ELx_EC_IMP_DEF]		= "EL3 IMP DEF",
 	[ESR_ELx_EC_IABT_LOW]		= "IABT (lower EL)",
 	[ESR_ELx_EC_IABT_CUR]		= "IABT (current EL)",
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
