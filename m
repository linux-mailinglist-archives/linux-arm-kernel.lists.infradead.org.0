Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0401D57A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:23:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GqWx0SF8xvGpKLrP96eFRiL60nq2yQM3MhMHeqwMQHU=; b=WgLaDFV3bgUnMj
	HGJrL+0tQo34hFCJGMPuS3d1K+xpBLqieBIdQ9vvNRRRSC/bGVRWxf4hfnka8p6Xr7qQ0f2QCZSQI
	yIQfwQCfsi/zYVT9a0Q/hZ2wyil5iwYkL7qo+1+l66GfEcSCr2yb7bSlT1DiullhMVUxDDc3cYr49
	kv5XZaPdBb+uJ+fwo3U2hq8zmjjCnsp1/Z64F47XZI1lvmvvkoCJoN9Se338Rkf4QkyB36U+tnf7h
	cLc+NtsRZZp2DjW7PMBugPtcBiKOMA0z3I4GynbRaA9nwxre51uDpqYdhc6GekIxPdx4BIZsqLmkw
	vgWGlDwHKTJLk1UsPFeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZe3e-00022q-Iw; Fri, 15 May 2020 17:23:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdxM-0002lG-9U
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:17:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DAD4B11D4;
 Fri, 15 May 2020 10:17:07 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 03E223F305;
 Fri, 15 May 2020 10:17:05 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 23/26] arm64: mte: Check the DT memory nodes for MTE support
Date: Fri, 15 May 2020 18:16:09 +0100
Message-Id: <20200515171612.1020-24-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515171612.1020-1-catalin.marinas@arm.com>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_101708_430923_7B32F04C 
X-CRM114-Status: GOOD (  21.70  )
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
Cc: linux-arch@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Rob Herring <Rob.Herring@arm.com>,
 Peter Collingbourne <pcc@google.com>, linux-mm@kvack.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Even if the ID_AA64PFR1_EL1 register advertises the presence of MTE, it
is not guaranteed that the memory system on the SoC supports the
feature. In the absence of system-wide MTE support, the behaviour is
undefined and the kernel should not enable the MTE memory type in
MAIR_EL1.

For FDT, add an 'arm,armv8.5-memtag' property to the /memory nodes and
check for its presence during MTE probing. For example:

	memory@80000000 {
		device_type = "memory";
		arm,armv8.5-memtag;
		reg = <0x00000000 0x80000000 0 0x80000000>,
		      <0x00000008 0x80000000 0 0x80000000>;
	};

If the /memory nodes are not present in DT or if at least one node does
not support MTE, the feature will be disabled. On EFI systems, it is
assumed that the memory description matches the EFI memory map (if not,
it is considered a firmware bug).

MTE is not currently supported on ACPI systems.

Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Cc: Rob Herring <Rob.Herring@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---

Notes:
    Ongoing (internal) discussions on whether this is the right approach.
    The issue may need to be solved similarly for ACPI systems.
    
    v4:
    - Reworked the CPUID field handling to ensure that it is not exposed to
      user (via MRS emulation) when the feature is not described in the DT.
      Previously, only the HWCAP was hidden.
    
    New in v3.

 arch/arm64/boot/dts/arm/fvp-base-revc.dts |  1 +
 arch/arm64/include/asm/cpufeature.h       |  6 ++-
 arch/arm64/kernel/cpufeature.c            | 59 ++++++++++++++++++++---
 3 files changed, 58 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 66381d89c1ce..c620a289f15e 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -94,6 +94,7 @@
 
 	memory@80000000 {
 		device_type = "memory";
+		arm,armv8.5-memtag;
 		reg = <0x00000000 0x80000000 0 0x80000000>,
 		      <0x00000008 0x80000000 0 0x80000000>;
 	};
diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index afc315814563..0a24d36bf231 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -61,6 +61,7 @@ struct arm64_ftr_bits {
 	u8		shift;
 	u8		width;
 	s64		safe_val; /* safe value for FTR_EXACT features */
+	s64		(*filter)(const struct arm64_ftr_bits *, s64);
 };
 
 /*
@@ -542,7 +543,10 @@ cpuid_feature_extract_field(u64 features, int field, bool sign)
 
 static inline s64 arm64_ftr_value(const struct arm64_ftr_bits *ftrp, u64 val)
 {
-	return (s64)cpuid_feature_extract_field_width(val, ftrp->shift, ftrp->width, ftrp->sign);
+	s64 fval = (s64)cpuid_feature_extract_field_width(val, ftrp->shift, ftrp->width, ftrp->sign);
+	if (ftrp->filter)
+		fval = ftrp->filter(ftrp, fval);
+	return fval;
 }
 
 static inline bool id_aa64mmfr0_mixed_endian_el0(u64 mmfr0)
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index d2fe8ff72324..aaadc1cbc006 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -7,6 +7,7 @@
 
 #define pr_fmt(fmt) "CPU features: " fmt
 
+#include <linux/acpi.h>
 #include <linux/bsearch.h>
 #include <linux/cpumask.h>
 #include <linux/crash_dump.h>
@@ -14,6 +15,7 @@
 #include <linux/stop_machine.h>
 #include <linux/types.h>
 #include <linux/mm.h>
+#include <linux/of.h>
 #include <linux/cpu.h>
 #include <asm/cpu.h>
 #include <asm/cpufeature.h>
@@ -87,23 +89,28 @@ DEFINE_STATIC_KEY_ARRAY_FALSE(cpu_hwcap_keys, ARM64_NCAPS);
 EXPORT_SYMBOL(cpu_hwcap_keys);
 
 #define __ARM64_FTR_BITS(SIGNED, VISIBLE, STRICT, TYPE, SHIFT, WIDTH, SAFE_VAL) \
-	{						\
 		.sign = SIGNED,				\
 		.visible = VISIBLE,			\
 		.strict = STRICT,			\
 		.type = TYPE,				\
 		.shift = SHIFT,				\
 		.width = WIDTH,				\
-		.safe_val = SAFE_VAL,			\
-	}
+		.safe_val = SAFE_VAL
 
 /* Define a feature with unsigned values */
 #define ARM64_FTR_BITS(VISIBLE, STRICT, TYPE, SHIFT, WIDTH, SAFE_VAL) \
-	__ARM64_FTR_BITS(FTR_UNSIGNED, VISIBLE, STRICT, TYPE, SHIFT, WIDTH, SAFE_VAL)
+	{ __ARM64_FTR_BITS(FTR_UNSIGNED, VISIBLE, STRICT, TYPE, SHIFT, WIDTH, SAFE_VAL), }
 
 /* Define a feature with a signed value */
 #define S_ARM64_FTR_BITS(VISIBLE, STRICT, TYPE, SHIFT, WIDTH, SAFE_VAL) \
-	__ARM64_FTR_BITS(FTR_SIGNED, VISIBLE, STRICT, TYPE, SHIFT, WIDTH, SAFE_VAL)
+	{ __ARM64_FTR_BITS(FTR_SIGNED, VISIBLE, STRICT, TYPE, SHIFT, WIDTH, SAFE_VAL), }
+
+/* Define a feature with a filter function to process the field value */
+#define FILTERED_ARM64_FTR_BITS(SIGNED, VISIBLE, STRICT, TYPE, SHIFT, WIDTH, SAFE_VAL, filter_fn) \
+	{											\
+		__ARM64_FTR_BITS(SIGNED, VISIBLE, STRICT, TYPE, SHIFT, WIDTH, SAFE_VAL),	\
+		.filter = filter_fn,								\
+	}
 
 #define ARM64_FTR_END					\
 	{						\
@@ -118,6 +125,42 @@ static void cpu_enable_cnp(struct arm64_cpu_capabilities const *cap);
 
 static bool __system_matches_cap(unsigned int n);
 
+#ifdef CONFIG_ARM64_MTE
+s64 mte_ftr_filter(const struct arm64_ftr_bits *ftrp, s64 val)
+{
+	struct device_node *np;
+	static bool memory_checked = false;
+	static bool mte_capable = true;
+
+	/* EL0-only MTE is not supported by Linux, don't expose it */
+	if (val < ID_AA64PFR1_MTE)
+		return ID_AA64PFR1_MTE_NI;
+
+	if (memory_checked)
+		return mte_capable ? val : ID_AA64PFR1_MTE_NI;
+
+	if (!acpi_disabled) {
+		pr_warn("MTE not supported on ACPI systems\n");
+		return ID_AA64PFR1_MTE_NI;
+	}
+
+	/* check the DT "memory" nodes for MTE support */
+	for_each_node_by_type(np, "memory") {
+		memory_checked = true;
+		mte_capable &= of_property_read_bool(np, "arm,armv8.5-memtag");
+	}
+
+	if (!memory_checked || !mte_capable) {
+		pr_warn("System memory is not MTE-capable\n");
+		memory_checked = true;
+		mte_capable = false;
+		return ID_AA64PFR1_MTE_NI;
+	}
+
+	return val;
+}
+#endif
+
 /*
  * NOTE: Any changes to the visibility of features should be kept in
  * sync with the documentation of the CPU feature register ABI.
@@ -182,8 +225,10 @@ static const struct arm64_ftr_bits ftr_id_aa64pfr0[] = {
 
 static const struct arm64_ftr_bits ftr_id_aa64pfr1[] = {
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR1_SSBS_SHIFT, 4, ID_AA64PFR1_SSBS_PSTATE_NI),
-	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_MTE),
-		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR1_MTE_SHIFT, 4, ID_AA64PFR1_MTE_NI),
+#ifdef CONFIG_ARM64_MTE
+	FILTERED_ARM64_FTR_BITS(FTR_UNSIGNED, FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE,
+				ID_AA64PFR1_MTE_SHIFT, 4, ID_AA64PFR1_MTE_NI, mte_ftr_filter),
+#endif
 	ARM64_FTR_END,
 };
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
