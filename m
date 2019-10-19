Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1D2DD629
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 04:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sftStdxW/GU8AbtLxGiz33zxdQE7sju5FUsgf1FntSY=; b=COc9xguYbWfqP8F87eiSlEk0J1
	bjmNdMmYl2scTBsqr2Zc+lp1anzrmLBFEMy8wdbrAq6gtdizXWN7SdXrYwjspi76fkTzl7XJc03s6
	BeleyLUA+w+zzZK38Df6nk63TLPLA1AUbDHIjgh2B/C2XtZmC70xMHkxegR7y8eSwD5sxToA1ZREQ
	rlHjLXGmvtbudcb8cnPgElOwRDgK8I4fpODx2ZrARvA7iBukK8k5WDmz6czlbdYOz66ZDqtk/kW0X
	n6UqDIFQxJhtI4Wghu/JxM8dV0He8Di8E5aA+IXF9uU9fpbx1uNxCDGlb+8Y3wBNcd/yB82Wru+yX
	1Zd4TlpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLeMu-0006pT-98; Sat, 19 Oct 2019 02:21:24 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLeMQ-0006bo-Gr
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 02:20:56 +0000
Received: by mail-pf1-x441.google.com with SMTP id b128so4944952pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 19:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Uw3LOwSxYR0rUB8GOou/gxOPSuuyfL+uur/3c2lm+bk=;
 b=S8cdn7m3UXuQy6lrcZ51sRS0wcNGcIRyRu7F2ZnZ8fXWDc3RynLld2+zawnx8/795v
 IwissLFOahwcEDTADKzxax6tokwOtuow+T7z3iMcZyYKjQ9UGmQcA+MmzxrgERUkUfFl
 Bzkt/h9tzrt1Ms/6NBGhbD7VXqudG0jx3rRHGiMIToJQ12F+BXInAU9g3oHwYcNJVp9D
 DKC7VYo17fT/5bH4mEElVwDg1VtWRm5HzAjSmOnz+IfQzDVdsCfcM61o1oL0Cf/JaI2A
 qfq6JA7mfOLUPBzq062ZNKQfRiTSPWNSNEy2VNCVcOcsCRVDNK7Nlnx6EhvVRQJcBMvi
 O2AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Uw3LOwSxYR0rUB8GOou/gxOPSuuyfL+uur/3c2lm+bk=;
 b=OfY2Pd5uVOOZ1VAdujLybZrf0vj+vP/ocBKKrBq+qQRx27ZoBZQK7G0sDRA9vfqXWI
 VRtUOmmfxDtA0x4p+DE9nJuPEjx4Q9Ew5YWCC5sXKyo7Z+e4QWXX8a4sCpMMfwF1qms8
 tP36MRkMz4K1+Slcommg8p5GiKqF7hrAq8cvKslBLPxm022cn43o44WTUvrK7r9jHVAO
 QpoYmbVdil559HIACNntRdiZh1kmsHf7NLiilh7pqNdws5rQVmBeyBoiNz3vALG6KvW7
 ww32MS2pK1NBo7c1gXYBVBmu5IQaOUPzrSKL/eAwtvkvGqsuoAWjlQVIIoe7JrceZ5qp
 0qwA==
X-Gm-Message-State: APjAAAVV1fIKnxrp4izPinTjHujxhIJe13x44kP3FQd/3f0JwjJuvMBm
 IqH2flOaoXeS5vmHiMsdpFyzZ3UdFsE=
X-Google-Smtp-Source: APXvYqzhDDfASdj6fJU1Ansr+2GoL3Ld1GRF1jwyiVSMZ+nSyo8NywWB0KvBFp9vjlGjOrhOIW/46w==
X-Received: by 2002:a65:6898:: with SMTP id e24mr11643791pgt.358.1571451652950; 
 Fri, 18 Oct 2019 19:20:52 -0700 (PDT)
Received: from localhost.localdomain (97-113-7-119.tukw.qwest.net.
 [97.113.7.119])
 by smtp.gmail.com with ESMTPSA id l22sm6635148pgj.4.2019.10.18.19.20.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 19:20:52 -0700 (PDT)
From: Richard Henderson <richard.henderson@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: Implement archrandom.h for ARMv8.5-RNG
Date: Fri, 18 Oct 2019 19:20:48 -0700
Message-Id: <20191019022048.28065-2-richard.henderson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191019022048.28065-1-richard.henderson@linaro.org>
References: <20191019022048.28065-1-richard.henderson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_192054_561929_78EC7055 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org,
 Dave.Martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Expose the ID_AA64ISAR0.RNDR field to userspace, as the
RNG system registers are always available at EL0.

Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
---
 Documentation/arm64/cpu-feature-registers.rst |  2 +
 arch/arm64/include/asm/archrandom.h           | 76 +++++++++++++++++++
 arch/arm64/include/asm/cpucaps.h              |  3 +-
 arch/arm64/include/asm/sysreg.h               |  1 +
 arch/arm64/kernel/cpufeature.c                | 34 +++++++++
 arch/arm64/Kconfig                            | 12 +++
 drivers/char/Kconfig                          |  4 +-
 7 files changed, 129 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm64/include/asm/archrandom.h

diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
index 2955287e9acc..78d6f5c6e824 100644
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
diff --git a/arch/arm64/include/asm/archrandom.h b/arch/arm64/include/asm/archrandom.h
new file mode 100644
index 000000000000..80369898e274
--- /dev/null
+++ b/arch/arm64/include/asm/archrandom.h
@@ -0,0 +1,76 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_ARCHRANDOM_H
+#define _ASM_ARCHRANDOM_H
+
+#include <asm/cpufeature.h>
+
+/* Unconditional execution of RNDR and RNDRRS.  */
+
+static inline bool arm_rndr(unsigned long *v)
+{
+	int pass;
+
+	asm("mrs %0, s3_3_c2_c4_0\n\t"  /* RNDR */
+	    "cset %w1, ne"
+	    : "=r"(*v), "=r"(pass));
+	return pass != 0;
+}
+
+static inline bool arm_rndrrs(unsigned long *v)
+{
+	int pass;
+
+	asm("mrs %0, s3_3_c2_c4_1\n\t"  /* RNDRRS */
+	    "cset %w1, ne"
+	    : "=r"(*v), "=r"(pass));
+	return pass != 0;
+}
+
+#ifdef CONFIG_ARCH_RANDOM
+
+/*
+ * Note that these two interfaces, random and random_seed, are strongly
+ * tied to the Intel instructions RDRAND and RDSEED.  RDSEED is the
+ * "enhanced" version and has stronger guarantees.  The ARMv8.5-RNG
+ * instruction RNDR corresponds to RDSEED, thus we put our implementation
+ * into the random_seed set of functions.
+ *
+ * Note as well that Intel does not have an instruction that corresponds
+ * to the RNDRRS instruction, so there's no generic interface for that.
+ */
+static inline bool arch_has_random(void)
+{
+	return false;
+}
+
+static inline bool arch_get_random_long(unsigned long *v)
+{
+	return false;
+}
+
+static inline bool arch_get_random_int(unsigned int *v)
+{
+	return false;
+}
+
+static inline bool arch_has_random_seed(void)
+{
+	return cpus_have_const_cap(ARM64_HAS_RNG);
+}
+
+static inline bool arch_get_random_seed_long(unsigned long *v)
+{
+	/* If RNDR fails, attempt to re-seed with RNDRRS.  */
+	return arch_has_random_seed() && (arm_rndr(v) || arm_rndrrs(v));
+}
+
+static inline bool arch_get_random_seed_int(unsigned int *v)
+{
+	unsigned long vl = 0;
+	bool ret = arch_get_random_seed_long(&vl);
+	*v = vl;
+	return ret;
+}
+
+#endif /* CONFIG_ARCH_RANDOM */
+#endif /* _ASM_ARCHRANDOM_H */
diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index f19fe4b9acc4..2fc15765d25d 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -52,7 +52,8 @@
 #define ARM64_HAS_IRQ_PRIO_MASKING		42
 #define ARM64_HAS_DCPODP			43
 #define ARM64_WORKAROUND_1463225		44
+#define ARM64_HAS_RNG				45
 
-#define ARM64_NCAPS				45
+#define ARM64_NCAPS				46
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 972d196c7714..7a0c159661cd 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -539,6 +539,7 @@
 			 ENDIAN_SET_EL1 | SCTLR_EL1_UCI  | SCTLR_EL1_RES1)
 
 /* id_aa64isar0 */
+#define ID_AA64ISAR0_RNDR_SHIFT		60
 #define ID_AA64ISAR0_TS_SHIFT		52
 #define ID_AA64ISAR0_FHM_SHIFT		48
 #define ID_AA64ISAR0_DP_SHIFT		44
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index cabebf1a7976..34b9731e1fab 100644
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
@@ -1261,6 +1262,27 @@ static bool can_use_gic_priorities(const struct arm64_cpu_capabilities *entry,
 }
 #endif
 
+#ifdef CONFIG_ARCH_RANDOM
+static bool can_use_rng(const struct arm64_cpu_capabilities *entry, int scope)
+{
+	unsigned long tmp;
+	int i;
+
+	if (!has_cpuid_feature(entry, scope))
+		return false;
+
+	/*
+	 * Re-seed from the true random number source.
+	 * If this fails, disable the feature.
+	 */
+	for (i = 0; i < 10; ++i) {
+		if (arm_rndrrs(&tmp))
+			return true;
+	}
+	return false;
+}
+#endif
+
 static const struct arm64_cpu_capabilities arm64_features[] = {
 	{
 		.desc = "GIC system register CPU interface",
@@ -1560,6 +1582,18 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.sign = FTR_UNSIGNED,
 		.min_field_value = 1,
 	},
+#endif
+#ifdef CONFIG_ARCH_RANDOM
+	{
+		.desc = "Random Number Generator",
+		.capability = ARM64_HAS_RNG,
+		.type = ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE,
+		.matches = can_use_rng,
+		.sys_reg = SYS_ID_AA64ISAR0_EL1,
+		.field_pos = ID_AA64ISAR0_RNDR_SHIFT,
+		.sign = FTR_UNSIGNED,
+		.min_field_value = 1,
+	},
 #endif
 	{},
 };
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 950a56b71ff0..a035c178102a 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1421,6 +1421,18 @@ config ARM64_PTR_AUTH
 
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
diff --git a/drivers/char/Kconfig b/drivers/char/Kconfig
index df0fc997dc3e..f26a0a8cc0d0 100644
--- a/drivers/char/Kconfig
+++ b/drivers/char/Kconfig
@@ -539,7 +539,7 @@ endmenu
 
 config RANDOM_TRUST_CPU
 	bool "Trust the CPU manufacturer to initialize Linux's CRNG"
-	depends on X86 || S390 || PPC
+	depends on X86 || S390 || PPC || ARM64
 	default n
 	help
 	Assume that CPU manufacturer (e.g., Intel or AMD for RDSEED or
@@ -559,4 +559,4 @@ config RANDOM_TRUST_BOOTLOADER
 	device randomness. Say Y here to assume the entropy provided by the
 	booloader is trustworthy so it will be added to the kernel's entropy
 	pool. Otherwise, say N here so it will be regarded as device input that
-	only mixes the entropy pool.
\ No newline at end of file
+	only mixes the entropy pool.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
