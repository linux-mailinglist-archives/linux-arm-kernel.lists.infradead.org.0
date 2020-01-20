Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72049142C7C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 14:47:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/lFKT7dEi0iX1xysCCDgD3KNX/tYtwKz4XuRgPentk0=; b=Rd6bfnSluUjLSy
	5e7r6tehJTa/x3q1Vov4S11xr2Tk491zjR1RGPRqbLg7swo5hx4WcCyyIzD0zJCVa8ABpGdlZn+cD
	jKbPJrhCs8eDc/M3+CNL9GK73stbcqyCd8I7BJu8goAk17CO0xpq5fSVvbjWfvkuzny3tx+87/ZP/
	H37gw6t8ZmF16u2OawrIrQYMDF3CoA0K+JnJGzqJjmkschPfp6d9E6qxqCXkQSODEfwvw7LUhZqRc
	+NtLkxeLRGR/hwp9HQfD/SN2A2B8208kTj0ZtAFpCwykRF5VSl3f6Y8RxJ+aAFg9rze1xgN2mMt+L
	0W0yMKhOf3PAs9e67BHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itXOT-0007aS-9b; Mon, 20 Jan 2020 13:47:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itXNu-0007M7-FN
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 13:46:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 196D1FEC;
 Mon, 20 Jan 2020 05:46:29 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 817183F52E;
 Mon, 20 Jan 2020 05:46:28 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v12 1/2] arm64: Implement archrandom.h for ARMv8.5-RNG
Date: Mon, 20 Jan 2020 13:46:20 +0000
Message-Id: <20200120134621.43531-2-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200120134621.43531-1-broonie@kernel.org>
References: <20200120134621.43531-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_054630_597900_0EA9E0DB 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Mark Brown <broonie@kernel.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Richard Henderson <richard.henderson@linaro.org>

Expose the ID_AA64ISAR0.RNDR field to userspace, as the RNG system
registers are always available at EL0.

Implement arch_get_random_seed_long using RNDR.  Given that the
TRNG is likely to be a shared resource between cores, and VMs,
do not explicitly force re-seeding with RNDRRS.  In order to avoid
code complexity and potential issues with hetrogenous systems only
provide values after cpufeature has finalized the system capabilities.

Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
[Modified to only function after cpufeature has finalized the system
capabilities and move all the code into the header -- broonie]
Signed-off-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 Documentation/arm64/cpu-feature-registers.rst |  2 +
 arch/arm64/Kconfig                            | 12 ++++
 arch/arm64/include/asm/archrandom.h           | 67 +++++++++++++++++++
 arch/arm64/include/asm/cpucaps.h              |  3 +-
 arch/arm64/include/asm/sysreg.h               |  4 ++
 arch/arm64/kernel/cpufeature.c                | 13 ++++
 6 files changed, 100 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/include/asm/archrandom.h

diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
index b6e44884e3ad..ce320785fb0c 100644
--- a/Documentation/arm64/cpu-feature-registers.rst
+++ b/Documentation/arm64/cpu-feature-registers.rst
@@ -117,6 +117,8 @@ infrastructure:
      +------------------------------+---------+---------+
      | Name                         |  bits   | visible |
      +------------------------------+---------+---------+
+     | RNDR                         | [63-60] |    y    |
+     +------------------------------+---------+---------+
      | TS                           | [55-52] |    y    |
      +------------------------------+---------+---------+
      | FHM                          | [51-48] |    y    |
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index b1b4476ddb83..835f8158220e 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1484,6 +1484,18 @@ config ARM64_PTR_AUTH
 
 endmenu
 
+menu "ARMv8.5 architectural features"
+
+config ARCH_RANDOM
+	bool "Enable support for random number generation"
+	default y
+	help
+	  Random number generation (part of the ARMv8.5 Extensions)
+	  provides a high bandwidth, cryptographically secure
+	  hardware random number generator.
+
+endmenu
+
 config ARM64_SVE
 	bool "ARM Scalable Vector Extension support"
 	default y
diff --git a/arch/arm64/include/asm/archrandom.h b/arch/arm64/include/asm/archrandom.h
new file mode 100644
index 000000000000..5ea5a1ce5a5f
--- /dev/null
+++ b/arch/arm64/include/asm/archrandom.h
@@ -0,0 +1,67 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_ARCHRANDOM_H
+#define _ASM_ARCHRANDOM_H
+
+#ifdef CONFIG_ARCH_RANDOM
+
+#include <linux/random.h>
+#include <asm/cpufeature.h>
+
+static inline bool __arm64_rndr(unsigned long *v)
+{
+	bool ok;
+
+	/*
+	 * Reads of RNDR set PSTATE.NZCV to 0b0000 on success,
+	 * and set PSTATE.NZCV to 0b0100 otherwise.
+	 */
+	asm volatile(
+		__mrs_s("%0", SYS_RNDR_EL0) "\n"
+	"	cset %w1, ne\n"
+	: "=r" (*v), "=r" (ok)
+	:
+	: "cc");
+
+	return ok;
+}
+
+static inline bool __must_check arch_get_random_long(unsigned long *v)
+{
+	return false;
+}
+
+static inline bool __must_check arch_get_random_int(unsigned int *v)
+{
+	return false;
+}
+
+static inline bool __must_check arch_get_random_seed_long(unsigned long *v)
+{
+	/*
+	 * Only support the generic interface after we have detected
+	 * the system wide capability, avoiding complexity with the
+	 * cpufeature code and with potential scheduling between CPUs
+	 * with and without the feature.
+	 */
+	if (!cpus_have_const_cap(ARM64_HAS_RNG))
+		return false;
+
+	return __arm64_rndr(v);
+}
+
+
+static inline bool __must_check arch_get_random_seed_int(unsigned int *v)
+{
+	unsigned long val;
+	bool ok = arch_get_random_seed_long(&val);
+
+	*v = val;
+	return ok;
+}
+
+#else
+
+static inline bool __arm64_rndr(unsigned long *v) { return false; }
+
+#endif /* CONFIG_ARCH_RANDOM */
+#endif /* _ASM_ARCHRANDOM_H */
diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index b92683871119..515f4fbcbf91 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -56,7 +56,8 @@
 #define ARM64_WORKAROUND_CAVIUM_TX2_219_PRFM	46
 #define ARM64_WORKAROUND_1542419		47
 #define ARM64_WORKAROUND_1319367		48
+#define ARM64_HAS_RNG				49
 
-#define ARM64_NCAPS				49
+#define ARM64_NCAPS				50
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 6e919fafb43d..5e718f279469 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -365,6 +365,9 @@
 #define SYS_CTR_EL0			sys_reg(3, 3, 0, 0, 1)
 #define SYS_DCZID_EL0			sys_reg(3, 3, 0, 0, 7)
 
+#define SYS_RNDR_EL0			sys_reg(3, 3, 2, 4, 0)
+#define SYS_RNDRRS_EL0			sys_reg(3, 3, 2, 4, 1)
+
 #define SYS_PMCR_EL0			sys_reg(3, 3, 9, 12, 0)
 #define SYS_PMCNTENSET_EL0		sys_reg(3, 3, 9, 12, 1)
 #define SYS_PMCNTENCLR_EL0		sys_reg(3, 3, 9, 12, 2)
@@ -539,6 +542,7 @@
 			 ENDIAN_SET_EL1 | SCTLR_EL1_UCI  | SCTLR_EL1_RES1)
 
 /* id_aa64isar0 */
+#define ID_AA64ISAR0_RNDR_SHIFT		60
 #define ID_AA64ISAR0_TS_SHIFT		52
 #define ID_AA64ISAR0_FHM_SHIFT		48
 #define ID_AA64ISAR0_DP_SHIFT		44
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 04cf64e9f0c9..0fea85228956 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -119,6 +119,7 @@ static void cpu_enable_cnp(struct arm64_cpu_capabilities const *cap);
  * sync with the documentation of the CPU feature register ABI.
  */
 static const struct arm64_ftr_bits ftr_id_aa64isar0[] = {
+	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_RNDR_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_TS_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_FHM_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_DP_SHIFT, 4, 0),
@@ -1566,6 +1567,18 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.sign = FTR_UNSIGNED,
 		.min_field_value = 1,
 	},
+#endif
+#ifdef CONFIG_ARCH_RANDOM
+	{
+		.desc = "Random Number Generator",
+		.capability = ARM64_HAS_RNG,
+		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+		.matches = has_cpuid_feature,
+		.sys_reg = SYS_ID_AA64ISAR0_EL1,
+		.field_pos = ID_AA64ISAR0_RNDR_SHIFT,
+		.sign = FTR_UNSIGNED,
+		.min_field_value = 1,
+	},
 #endif
 	{},
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
