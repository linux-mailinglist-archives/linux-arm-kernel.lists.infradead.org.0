Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6168917A1E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 10:07:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pYr0MWqEtHTi0jIdxd3u2pDx7ufnr81V0bjQZ31N7xw=; b=D7A5Oy2bAhcXCbtDMLF5L2jPLM
	udJ1fhoLfhG4V168JiNvA/4ft6p3JxFE/oWiZsUv1OV8piE7eBJUZzietkylDqYPl+Et0M7KbpKaH
	zaZG4Nb3i8KADujI1ClvA9NbEp8jtEbLnVZtui39xCekmBknjvWK2CNYUL5uXeKwtLtK6nvvaiqnO
	Dv4JFokdJuIuVk0F8aSJPZTDDv2mz7HtokW5HNl6179X8czzsAjjvwf2YjR2envpH6wrLuKF5ljiB
	dg1LDxwLoyuHMWMtI6NroMOADMHxGjtogDZFu8Nz86UOCMFR8csUggI8c364SNpXxJ0ck8vFE3YWe
	kpZowMMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9mTP-0006cY-4u; Thu, 05 Mar 2020 09:07:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9mSy-0006S4-2F
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 09:06:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5E27F31B;
 Thu,  5 Mar 2020 01:06:51 -0800 (PST)
Received: from e108754-lin.cambridge.arm.com (e108754-lin.cambridge.arm.com
 [10.1.198.53])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EB92F3F534;
 Thu,  5 Mar 2020 01:06:48 -0800 (PST)
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: catalin.marinas@arm.com, will@kernel.org, mark.rutland@arm.com,
 maz@kernel.org, suzuki.poulose@arm.com, sudeep.holla@arm.com,
 lukasz.luba@arm.com, valentin.schneider@arm.com, dietmar.eggemann@arm.com,
 rjw@rjwysocki.net, pkondeti@codeaurora.org, ionela.voinescu@arm.com
Subject: [PATCH v6 1/7] arm64: add support for the AMU extension v1
Date: Thu,  5 Mar 2020 09:06:21 +0000
Message-Id: <20200305090627.31908-2-ionela.voinescu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200305090627.31908-1-ionela.voinescu@arm.com>
References: <20200305090627.31908-1-ionela.voinescu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_010652_223097_E118000E 
X-CRM114-Status: GOOD (  21.77  )
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

Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
Reviewed-by: Valentin Schneider <valentin.schneider@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/Kconfig                  | 27 ++++++++++++
 arch/arm64/include/asm/cpucaps.h    |  3 +-
 arch/arm64/include/asm/cpufeature.h |  5 +++
 arch/arm64/include/asm/sysreg.h     | 38 +++++++++++++++++
 arch/arm64/kernel/cpufeature.c      | 66 +++++++++++++++++++++++++++++
 5 files changed, 138 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 0b30e884e088..fa4e3737149c 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1517,6 +1517,33 @@ config ARM64_PTR_AUTH
 
 endmenu
 
+menu "ARMv8.4 architectural features"
+
+config ARM64_AMU_EXTN
+	bool "Enable support for the Activity Monitors Unit CPU extension"
+	default y
+	help
+	  The activity monitors extension is an optional extension introduced
+	  by the ARMv8.4 CPU architecture. This enables support for version 1
+	  of the activity monitors architecture, AMUv1.
+
+	  To enable the use of this extension on CPUs that implement it, say Y.
+
+	  Note that for architectural reasons, firmware _must_ implement AMU
+	  support when running on CPUs that present the activity monitors
+	  extension. The required support is present in:
+	    * Version 1.5 and later of the ARM Trusted Firmware
+
+	  For kernels that have this configuration enabled but boot with broken
+	  firmware, you may need to say N here until the firmware is fixed.
+	  Otherwise you may experience firmware panics or lockups when
+	  accessing the counter registers. Even if you are not observing these
+	  symptoms, the values returned by the register reads might not
+	  correctly reflect reality. Most commonly, the value read will be 0,
+	  indicating that the counter is not enabled.
+
+endmenu
+
 menu "ARMv8.5 architectural features"
 
 config ARM64_E0PD
diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index 865e0253fc1e..185e44aa2713 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -58,7 +58,8 @@
 #define ARM64_WORKAROUND_SPECULATIVE_AT_NVHE	48
 #define ARM64_HAS_E0PD				49
 #define ARM64_HAS_RNG				50
+#define ARM64_HAS_AMU_EXTN			51
 
-#define ARM64_NCAPS				51
+#define ARM64_NCAPS				52
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 92ef9539874a..485e069d8768 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -678,6 +678,11 @@ static inline bool cpu_has_hw_af(void)
 						ID_AA64MMFR1_HADBS_SHIFT);
 }
 
+#ifdef CONFIG_ARM64_AMU_EXTN
+/* Check whether the cpu supports the Activity Monitors Unit (AMU) */
+extern bool cpu_has_amu_feat(int cpu);
+#endif
+
 #endif /* __ASSEMBLY__ */
 
 #endif
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index b91570ff9db1..085d248f824e 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -386,6 +386,42 @@
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
+#define SYS_AMEVCNTR0_CORE_EL0		SYS_AMEVCNTR0_EL0(0)
+#define SYS_AMEVCNTR0_CONST_EL0		SYS_AMEVCNTR0_EL0(1)
+#define SYS_AMEVCNTR0_INST_RET_EL0	SYS_AMEVCNTR0_EL0(2)
+#define SYS_AMEVCNTR0_MEM_STALL		SYS_AMEVCNTR0_EL0(3)
+
 #define SYS_CNTFRQ_EL0			sys_reg(3, 3, 14, 0, 0)
 
 #define SYS_CNTP_TVAL_EL0		sys_reg(3, 3, 14, 2, 0)
@@ -598,6 +634,7 @@
 #define ID_AA64PFR0_CSV3_SHIFT		60
 #define ID_AA64PFR0_CSV2_SHIFT		56
 #define ID_AA64PFR0_DIT_SHIFT		48
+#define ID_AA64PFR0_AMU_SHIFT		44
 #define ID_AA64PFR0_SVE_SHIFT		32
 #define ID_AA64PFR0_RAS_SHIFT		28
 #define ID_AA64PFR0_GIC_SHIFT		24
@@ -608,6 +645,7 @@
 #define ID_AA64PFR0_EL1_SHIFT		4
 #define ID_AA64PFR0_EL0_SHIFT		0
 
+#define ID_AA64PFR0_AMU			0x1
 #define ID_AA64PFR0_SVE			0x1
 #define ID_AA64PFR0_RAS_V1		0x1
 #define ID_AA64PFR0_FP_NI		0xf
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 0b6715625cf6..301538d3a197 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -163,6 +163,7 @@ static const struct arm64_ftr_bits ftr_id_aa64pfr0[] = {
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_CSV3_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_CSV2_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_DIT_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_AMU_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_SVE),
 				   FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_SVE_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_RAS_SHIFT, 4, 0),
@@ -1222,6 +1223,53 @@ static bool has_hw_dbm(const struct arm64_cpu_capabilities *cap,
 
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
+static struct cpumask amu_cpus __read_mostly;
+
+bool cpu_has_amu_feat(int cpu)
+{
+	return cpumask_test_cpu(cpu, &amu_cpus);
+}
+
+static void cpu_amu_enable(struct arm64_cpu_capabilities const *cap)
+{
+	if (has_cpuid_feature(cap, SCOPE_LOCAL_CPU)) {
+		pr_info("detected CPU%d: Activity Monitors Unit (AMU)\n",
+			smp_processor_id());
+		cpumask_set_cpu(smp_processor_id(), &amu_cpus);
+	}
+}
+
+static bool has_amu(const struct arm64_cpu_capabilities *cap,
+		    int __unused)
+{
+	/*
+	 * The AMU extension is a non-conflicting feature: the kernel can
+	 * safely run a mix of CPUs with and without support for the
+	 * activity monitors extension. Therefore, unconditionally enable
+	 * the capability to allow any late CPU to use the feature.
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
@@ -1499,6 +1547,24 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
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
