Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1325BB4F92
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 15:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d1K2WG3YCYZd3504BMxURGSj2egztT/Idr5f8J/bpmY=; b=eIv2dIxPCR+jpI0gIjPy0oiH+q
	Sny9yNinaBPzkobcexISl3bA4Y4hllqzOJWz9kEIE3AQsXe13QDSJr7rMDDGg7BRfyFTx9FLB9a+Y
	rlUhzFIEwjlKA3x24Q/tklWzDth9BNnZaNedbtTjKV7hLT1nIkCxUk8nw4tw27I0NyRtWYehKsuPj
	LcEFEW9LlJv2TEB1NhvHLNbsOjELXmmNdesdFG/D1o8YysI6mHieXKdC9nTSUIpLGgvjhhpJXGgsw
	HBPiBvJoaaIPGABrO2eolRLlQHaWls1RcJiVz20rtzwdmAjRJkCb7mbvbSd7e9aY9lhWr7jTDsGfZ
	yKsC05uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADll-0007eA-AZ; Tue, 17 Sep 2019 13:43:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADlJ-0007YK-Ud
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 13:43:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E1B0D28;
 Tue, 17 Sep 2019 06:43:20 -0700 (PDT)
Received: from e108754-lin.cambridge.arm.com (e108754-lin.cambridge.arm.com
 [10.1.199.68])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8E1D43F575;
 Tue, 17 Sep 2019 06:43:19 -0700 (PDT)
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: catalin.marinas@arm.com, will@kernel.org, maz@kernel.org, corbet@lwn.net
Subject: [PATCH 1/4] arm64: add support for the AMU extension v1
Date: Tue, 17 Sep 2019 14:42:25 +0100
Message-Id: <20190917134228.5369-2-ionela.voinescu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190917134228.5369-1-ionela.voinescu@arm.com>
References: <20190917134228.5369-1-ionela.voinescu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_064322_209553_6BACD402 
X-CRM114-Status: GOOD (  21.88  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ionela Voinescu <ionela.voinescu@arm.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The activity monitors extension is an optional extension introduced
by the ARMv8.4 CPU architecture. This implements basic support for
version 1 of the activity monitors architecture, AMUv1.

This support includes:
- Extension detection on each CPU (boot, secondary, hotplugged)
- Register interface for AMU aarch64 registers
- (while here) create defines for ID_PFR0_EL1 fields when adding
  the AMU field information.

Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/Kconfig               | 27 ++++++++++++
 arch/arm64/include/asm/cpucaps.h |  3 +-
 arch/arm64/include/asm/sysreg.h  | 44 ++++++++++++++++++++
 arch/arm64/kernel/cpufeature.c   | 71 ++++++++++++++++++++++++++++++--
 4 files changed, 140 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 6b6362b83004..3bf7972d43c7 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1410,6 +1410,33 @@ config ARM64_PTR_AUTH
 
 endmenu
 
+menu "ARMv8.4 architectural features"
+
+config ARM64_AMU_EXTN
+	bool "Enable support for the Activity Monitors Unit CPU extension"
+	default y
+	help
+          The activity monitors extension is an optional extension introduced
+          by the ARMv8.4 CPU architecture. This enables support for version 1
+          of the activity monitors architecture, AMUv1.
+
+          To enable the use of this extension on CPUs that implement it, say Y.
+
+          Note that for architectural reasons, firmware _must_ implement AMU
+          support when running on CPUs that present the activity monitors
+          extension. The required support is present in:
+            * Version 1.5 and later of the ARM Trusted Firmware
+
+          For kernels that have this configuration enabled but boot with broken
+          firmware, you may need to say N here until the firmware is fixed.
+          Otherwise you may experience firmware panics or lockups when
+          accessing the counter registers. Even if you are not observing these
+          symptoms, the values returned by the register reads might not
+          correctly reflect reality. Most commonly, the value read will be 0,
+          indicating that the counter is not enabled.
+
+endmenu
+
 config ARM64_SVE
 	bool "ARM Scalable Vector Extension support"
 	default y
diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index f19fe4b9acc4..7f12ad4f69ad 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -52,7 +52,8 @@
 #define ARM64_HAS_IRQ_PRIO_MASKING		42
 #define ARM64_HAS_DCPODP			43
 #define ARM64_WORKAROUND_1463225		44
+#define ARM64_HAS_AMU_EXTN			45
 
-#define ARM64_NCAPS				45
+#define ARM64_NCAPS				46
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 972d196c7714..f090a86a376d 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -382,6 +382,42 @@
 #define SYS_TPIDR_EL0			sys_reg(3, 3, 13, 0, 2)
 #define SYS_TPIDRRO_EL0			sys_reg(3, 3, 13, 0, 3)
 
+/* Definitions for system register interface to AMU for ARMv8.4 onwards */
+#define SYS_AM_EL0(crm, op2)		sys_reg(3, 3, 13, crm, op2)
+#define SYS_AMCR_EL0			SYS_AM_EL0(2, 0)
+#define SYS_AMCFGR_EL0			SYS_AM_EL0(2, 1)
+#define SYS_AMCGCR_EL0			SYS_AM_EL0(2, 2)
+#define SYS_AMUSERENR_EL0		SYS_AM_EL0(2, 3)
+#define SYS_AMCNTENCLR0_EL0		SYS_AM_EL0(2, 4)
+#define SYS_AMCNTENSET0_EL0		SYS_AM_EL0(2, 5)
+#define SYS_AMCNTENCLR1_EL0		SYS_AM_EL0(3, 0)
+#define SYS_AMCNTENSET1_EL0		SYS_AM_EL0(3, 1)
+
+/*
+ * Group 0 of activity monitors (architected):
+ *                op0 CRn   op1   op2     CRm
+ * Counter:       11  1101  011   n<2:0>  010:n<3>
+ * Type:          11  1101  011   n<2:0>  011:n<3>
+ * n: 0-3
+ *
+ * Group 1 of activity monitors (auxiliary):
+ *                op0 CRn   op1   op2     CRm
+ * Counter:       11  1101  011   n<2:0>  110:n<3>
+ * Type:          11  1101  011   n<2:0>  111:n<3>
+ * n: 0-15
+ */
+
+#define SYS_AMEVCNTR0_EL0(n)            SYS_AM_EL0(4 + ((n) >> 3), (n) & 0x7)
+#define SYS_AMEVTYPE0_EL0(n)            SYS_AM_EL0(6 + ((n) >> 3), (n) & 0x7)
+#define SYS_AMEVCNTR1_EL0(n)            SYS_AM_EL0(12 + ((n) >> 3), (n) & 0x7)
+#define SYS_AMEVTYPE1_EL0(n)            SYS_AM_EL0(14 + ((n) >> 3), (n) & 0x7)
+
+/* V1: Fixed (architecturally defined) activity monitors */
+#define SYS_AMEVCNTR0_CORE_EL0          SYS_AMEVCNTR0_EL0(0)
+#define SYS_AMEVCNTR0_CONST_EL0         SYS_AMEVCNTR0_EL0(1)
+#define SYS_AMEVCNTR0_INST_RET_EL0      SYS_AMEVCNTR0_EL0(2)
+#define SYS_AMEVCNTR0_MEM_STALL         SYS_AMEVCNTR0_EL0(3)
+
 #define SYS_CNTFRQ_EL0			sys_reg(3, 3, 14, 0, 0)
 
 #define SYS_CNTP_TVAL_EL0		sys_reg(3, 3, 14, 2, 0)
@@ -577,6 +613,7 @@
 #define ID_AA64PFR0_CSV3_SHIFT		60
 #define ID_AA64PFR0_CSV2_SHIFT		56
 #define ID_AA64PFR0_DIT_SHIFT		48
+#define ID_AA64PFR0_AMU_SHIFT		44
 #define ID_AA64PFR0_SVE_SHIFT		32
 #define ID_AA64PFR0_RAS_SHIFT		28
 #define ID_AA64PFR0_GIC_SHIFT		24
@@ -587,6 +624,7 @@
 #define ID_AA64PFR0_EL1_SHIFT		4
 #define ID_AA64PFR0_EL0_SHIFT		0
 
+#define ID_AA64PFR0_AMU			0x1
 #define ID_AA64PFR0_SVE			0x1
 #define ID_AA64PFR0_RAS_V1		0x1
 #define ID_AA64PFR0_FP_NI		0xf
@@ -709,6 +747,12 @@
 #define ID_AA64MMFR0_TGRAN16_NI		0x0
 #define ID_AA64MMFR0_TGRAN16_SUPPORTED	0x1
 
+#define ID_PFR0_AMU_SHIFT		20
+#define ID_PFR0_STATE3_SHIFT		12
+#define ID_PFR0_STATE2_SHIFT		8
+#define ID_PFR0_STATE1_SHIFT		4
+#define ID_PFR0_STATE0_SHIFT		0
+
 #if defined(CONFIG_ARM64_4K_PAGES)
 #define ID_AA64MMFR0_TGRAN_SHIFT	ID_AA64MMFR0_TGRAN4_SHIFT
 #define ID_AA64MMFR0_TGRAN_SUPPORTED	ID_AA64MMFR0_TGRAN4_SUPPORTED
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 9323bcc40a58..cce86c6a5d00 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -155,6 +155,7 @@ static const struct arm64_ftr_bits ftr_id_aa64pfr0[] = {
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_CSV3_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_CSV2_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_DIT_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_AMU_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_SVE),
 				   FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_SVE_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_RAS_SHIFT, 4, 0),
@@ -308,10 +309,11 @@ static const struct arm64_ftr_bits ftr_id_mmfr4[] = {
 };
 
 static const struct arm64_ftr_bits ftr_id_pfr0[] = {
-	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 12, 4, 0),		/* State3 */
-	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 8, 4, 0),		/* State2 */
-	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 4, 4, 0),		/* State1 */
-	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 0, 4, 0),		/* State0 */
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_PFR0_AMU_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_PFR0_STATE3_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_PFR0_STATE2_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_PFR0_STATE1_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_PFR0_STATE0_SHIFT, 4, 0),
 	ARM64_FTR_END,
 };
 
@@ -1143,6 +1145,49 @@ static bool has_hw_dbm(const struct arm64_cpu_capabilities *cap,
 
 #endif
 
+#ifdef CONFIG_ARM64_AMU_EXTN
+
+/*
+ * This per cpu variable only signals that the CPU implementation supports the
+ * AMU but does not provide information regarding all the events that it
+ * supports.
+ * When this amu_feat per CPU variable is true, the user of this feature can
+ * only rely on the presence of the 4 fixed counters. But this does not
+ * guarantee that the counters are enabled or access to these counters is
+ * provided by code executed at higher exception levels.
+ */
+DEFINE_PER_CPU(bool, amu_feat) = false;
+
+static void cpu_amu_enable(struct arm64_cpu_capabilities const *cap)
+{
+	if (has_cpuid_feature(cap, SCOPE_LOCAL_CPU)) {
+		pr_info("detected CPU%d: Activity Monitors extension\n",
+			smp_processor_id());
+		this_cpu_write(amu_feat, true);
+	}
+}
+
+static bool has_amu(const struct arm64_cpu_capabilities *cap,
+		       int __unused)
+{
+	/*
+	 * The AMU extension is a non-conflicting feature: the kernel can
+	 * safely run a mix of CPUs with and without support for the
+	 * activity monitors extension.
+	 * Therefore, unconditionally enable the capability to allow
+	 * any late CPU to use the feature.
+	 *
+	 * With this feature unconditionally enabled, the cpu_enable
+	 * function will be called for all CPUs that match the criteria,
+	 * including secondary and hotplugged, marking this feature as
+	 * present on that respective CPU. The enable function will also
+	 * print a detection message.
+	 */
+
+	return true;
+}
+#endif
+
 #ifdef CONFIG_ARM64_VHE
 static bool runs_at_el2(const struct arm64_cpu_capabilities *entry, int __unused)
 {
@@ -1412,6 +1457,24 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.cpu_enable = cpu_clear_disr,
 	},
 #endif /* CONFIG_ARM64_RAS_EXTN */
+#ifdef CONFIG_ARM64_AMU_EXTN
+	{
+		/*
+		 * The feature is enabled by default if CONFIG_ARM64_AMU_EXTN=y.
+		 * Therefore, don't provide .desc as we don't want the detection
+		 * message to be shown until at least one CPU is detected to
+		 * support the feature.
+		 */
+		.capability = ARM64_HAS_AMU_EXTN,
+		.type = ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE,
+		.matches = has_amu,
+		.sys_reg = SYS_ID_AA64PFR0_EL1,
+		.sign = FTR_UNSIGNED,
+		.field_pos = ID_AA64PFR0_AMU_SHIFT,
+		.min_field_value = ID_AA64PFR0_AMU,
+		.cpu_enable = cpu_amu_enable,
+	},
+#endif /* CONFIG_ARM64_AMU_EXTN */
 	{
 		.desc = "Data cache clean to the PoU not required for I/D coherence",
 		.capability = ARM64_HAS_CACHE_IDC,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
