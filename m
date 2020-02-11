Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B8015990F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:46:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aJzIdLYhIaQwDvFyFpa2C/SuI8rZLg3rNaou5SfLzAY=; b=MzbWNJnX9SaoMGVUrwnrPWygSW
	TeF2HhKcMG4T4feltTxGPJ9q/I6GNYjMqVJqrNaLzv1pkmtGc6CVUUoxK2TR8K81d7oBpYBR93Stq
	TGshg17hmdmDK2xsOOQyNPOHdj8eLejCGiOhesPtN9EusvX/Fu79f3Y8jux9HBHcggiJ9vsu2lp7Y
	XHM2xrGWmVCokS3O5jOe/EtPnt0OvjtdzZos6u39rZqQc8RCzaK0tFl+IHiV3/pXbslhqCsayi3OS
	6481/2xnpGabSqGRNIGd+eCP7A1NQZvRLTQBr8ekXX78IRgzVjPwqrSQdYyXAoZjASlNl/BWIzLry
	gX7WpoZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1aYT-0004oZ-Lg; Tue, 11 Feb 2020 18:46:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1aY6-0004hW-Rq
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 18:46:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 90FA51FB;
 Tue, 11 Feb 2020 10:46:17 -0800 (PST)
Received: from e108754-lin.cambridge.arm.com (e108754-lin.cambridge.arm.com
 [10.1.198.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5C30D3F68F;
 Tue, 11 Feb 2020 10:46:15 -0800 (PST)
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: catalin.marinas@arm.com, will@kernel.org, mark.rutland@arm.com,
 maz@kernel.org, suzuki.poulose@arm.com, sudeep.holla@arm.com,
 lukasz.luba@arm.com, valentin.schneider@arm.com, rjw@rjwysocki.net,
 ionela.voinescu@arm.com
Subject: [PATCH v3 1/7] arm64: add support for the AMU extension v1
Date: Tue, 11 Feb 2020 18:45:36 +0000
Message-Id: <20200211184542.29585-2-ionela.voinescu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200211184542.29585-1-ionela.voinescu@arm.com>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_104619_012893_2BF4621E 
X-CRM114-Status: GOOD (  26.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org, viresh.kumar@linaro.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
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
- disable_amu kernel parameter to disable detection/counter access
  at runtime

Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
---
 .../admin-guide/kernel-parameters.txt         | 10 ++
 arch/arm64/Kconfig                            | 31 ++++++
 arch/arm64/include/asm/cpucaps.h              |  3 +-
 arch/arm64/include/asm/cpufeature.h           |  5 +
 arch/arm64/include/asm/sysreg.h               | 38 ++++++++
 arch/arm64/kernel/cpufeature.c                | 97 +++++++++++++++++++
 6 files changed, 183 insertions(+), 1 deletion(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index ade4e6ec23e0..6f0c6d22fa4c 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -843,6 +843,16 @@
 			can be useful when debugging issues that require an SLB
 			miss to occur.
 
+	disable_amu	[ARM64]
+			Disables detection, enablement and access to counter
+			registers of the Activity Monitors Unit (AMU). By
+			default these are enabled. "disable_amu=0/1" is also
+			allowed.
+			disable_amu / disable_amu=1 - ensures access to AMU's
+			 counter registers is not attempted.
+			disable_amu=0 - enables or maintain detection and
+			 access to AMU's counter registers.
+
 	disable=	[IPV6]
 			See Documentation/networking/ipv6.txt.
 
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3ab05857ca8f..b3408d7629fd 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1484,6 +1484,37 @@ config ARM64_PTR_AUTH
 
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
+          Alternatively, a kernel parameter is provided to disable detection,
+          enablement and access to the counter registers of the Activity
+          Monitors Unit at runtime.
+
+endmenu
+
 config ARM64_SVE
 	bool "ARM Scalable Vector Extension support"
 	default y
diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index b92683871119..7dde890bde50 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -56,7 +56,8 @@
 #define ARM64_WORKAROUND_CAVIUM_TX2_219_PRFM	46
 #define ARM64_WORKAROUND_1542419		47
 #define ARM64_WORKAROUND_1319367		48
+#define ARM64_HAS_AMU_EXTN			49
 
-#define ARM64_NCAPS				49
+#define ARM64_NCAPS				50
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 4261d55e8506..5ae6e00ccabb 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -673,6 +673,11 @@ static inline bool cpu_has_hw_af(void)
 						ID_AA64MMFR1_HADBS_SHIFT);
 }
 
+#ifdef CONFIG_ARM64_AMU_EXTN
+/* Check whether the current CPU supports the Activity Monitors Unit (AMU) */
+extern bool cpu_has_amu_feat(int cpu);
+#endif
+
 #endif /* __ASSEMBLY__ */
 
 #endif
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 6e919fafb43d..eba13b8994ce 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -382,6 +382,42 @@
 #define SYS_TPIDR_EL0			sys_reg(3, 3, 13, 0, 2)
 #define SYS_TPIDRRO_EL0			sys_reg(3, 3, 13, 0, 3)
 
+/* Definitions for system register interface to AMU for ARMv8.4 onwards */
+#define SYS_AM_EL0(crm, op2)		sys_reg(3, 3, 13, (crm), (op2))
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
+ *                op0  op1  CRn   CRm       op2
+ * Counter:       11   011  1101  010:n<3>  n<2:0>
+ * Type:          11   011  1101  011:n<3>  n<2:0>
+ * n: 0-15
+ *
+ * Group 1 of activity monitors (auxiliary):
+ *                op0  op1  CRn   CRm       op2
+ * Counter:       11   011  1101  110:n<3>  n<2:0>
+ * Type:          11   011  1101  111:n<3>  n<2:0>
+ * n: 0-15
+ */
+
+#define SYS_AMEVCNTR0_EL0(n)		SYS_AM_EL0(4 + ((n) >> 3), (n) & 7)
+#define SYS_AMEVTYPE0_EL0(n)		SYS_AM_EL0(6 + ((n) >> 3), (n) & 7)
+#define SYS_AMEVCNTR1_EL0(n)		SYS_AM_EL0(12 + ((n) >> 3), (n) & 7)
+#define SYS_AMEVTYPE1_EL0(n)		SYS_AM_EL0(14 + ((n) >> 3), (n) & 7)
+
+/* AMU v1: Fixed (architecturally defined) activity monitors */
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
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 04cf64e9f0c9..029a473ad273 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -156,6 +156,7 @@ static const struct arm64_ftr_bits ftr_id_aa64pfr0[] = {
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_CSV3_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_CSV2_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_DIT_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_AMU_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_SVE),
 				   FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_SVE_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_RAS_SHIFT, 4, 0),
@@ -1150,6 +1151,84 @@ static bool has_hw_dbm(const struct arm64_cpu_capabilities *cap,
 
 #endif
 
+#ifdef CONFIG_ARM64_AMU_EXTN
+
+/*
+ * The "amu_cpus" cpumask only signals that the CPU implementation for the
+ * flagged CPUs supports the Activity Monitors Unit (AMU) but does not provide
+ * information regarding all the events that it supports. When a CPU bit is
+ * set in the cpumask, the user of this feature can only rely on the presence
+ * of the 4 fixed counters for that CPU. But this does not guarantee that the
+ * counters are enabled or access to these counters is enabled by code
+ * executed at higher exception levels (firmware).
+ */
+static cpumask_var_t amu_cpus;
+
+bool cpu_has_amu_feat(int cpu)
+{
+	if (cpumask_available(amu_cpus))
+		return cpumask_test_cpu(cpu, amu_cpus);
+
+	return false;
+}
+
+static void cpu_amu_enable(struct arm64_cpu_capabilities const *cap)
+{
+	if (has_cpuid_feature(cap, SCOPE_LOCAL_CPU)) {
+		pr_info("detected CPU%d: Activity Monitors Unit (AMU)\n",
+			smp_processor_id());
+		cpumask_set_cpu(smp_processor_id(), amu_cpus);
+	}
+}
+
+/*
+ * For known broken firmware, a kernel parameter ("disable_amu") is provided
+ * to ensure access to AMU counter registers is not attempted. By default,
+ * the feature is enabled, but disable_amu can both be used to disable or
+ * enable the capability at runtime in case the default changes in the future.
+ *
+ * To be noted that for security considerations, this does not bypass the
+ * setting of AMUSERENR_EL0 to trap accesses from EL0 (userspace) to EL1
+ * (kernel). Therefore, firmware should still ensure accesses to AMU registers
+ * are not trapped in EL2/EL3.
+ */
+static bool disable_amu;
+
+static int __init set_disable_amu(char *str)
+{
+	int value = 0;
+
+	disable_amu = get_option(&str, &value) ? !!value : true;
+
+	return 0;
+}
+early_param("disable_amu", set_disable_amu);
+
+static bool has_amu(const struct arm64_cpu_capabilities *cap,
+		       int __unused)
+{
+	/*
+	 * The AMU extension is a non-conflicting feature: the kernel can
+	 * safely run a mix of CPUs with and without support for the
+	 * activity monitors extension. Therefore, if not disabled through
+	 * the kernel command line early parameter, enable the capability
+	 * to allow any late CPU to use the feature.
+	 *
+	 * With this feature enabled, the cpu_enable function will be called
+	 * for all CPUs that match the criteria, including secondary and
+	 * hotplugged, marking this feature as present on that respective CPU.
+	 * The enable function will also print a detection message.
+	 */
+
+	if (!disable_amu && !zalloc_cpumask_var(&amu_cpus, GFP_KERNEL)) {
+		pr_err("Activity Monitors Unit (AMU): fail to allocate memory");
+		disable_amu = true;
+	}
+
+	return !disable_amu;
+}
+#endif
+
 #ifdef CONFIG_ARM64_VHE
 static bool runs_at_el2(const struct arm64_cpu_capabilities *entry, int __unused)
 {
@@ -1419,6 +1498,24 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
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
