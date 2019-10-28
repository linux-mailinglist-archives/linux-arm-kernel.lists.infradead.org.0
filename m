Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33332E7A22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 21:33:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kd33qt4OEzrEmyZFZle0kXKPsPx+uDB6BOGjjzkN6Ho=; b=SwV5GbYrlPSEUTrwMMrc/6xvhu
	M1BioA+D4lV1sXv/yHqYG9cPvV0u4ZxTRPVJXGQJ4RW/AVr0cA2BVF3j9B1av0qMi8XPh9ZmS3DCq
	1NXXMfL12C9SNluUAjmAgI/pzwT+4xvksxMQZO4F1OfO1OEzlOXf6cPS1fh4QUkRg3zeJYU5kqKoT
	0UowkSJpsf/Ktejm6irZ6MegOp0azJD+Ik1d20tI/VT4iDvQsP7r4T7fj3qFYZruhkY0V9ZPqLchV
	JNg9ix/jftRSurrcucOTw8l1RzrjFEQMkEOdjLb56z3Ear1i5Qp2bcIs1P1aJ7ggR0XEQVv+Oqs4G
	OwpglMaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPBhb-0001w7-2C; Mon, 28 Oct 2019 20:33:23 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPBhE-0001lp-57
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 20:33:01 +0000
Received: by mail-wr1-x443.google.com with SMTP id a11so11298520wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 13:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EwQTFZSk5O7vX7swlaOuLVLMaZkFLorXcfCxGEXx5Qo=;
 b=gOAfVpawMglDHZyrr5hx99nNlkPDeJH+UcHFvmuFudu4djfLHIZj6rLEpNTKdhq4b2
 /m/k921iasrcaLlxBKRfjNHJgCwPOdrB5YlJCHCMULiMHTZFu5TL7B8EkQnhtp5xfEQb
 LpPlrW9g9Z+gso+Hh0/+dUhoUm9OsU1eCSnafVGDSqzHLh0G7wGY8dgqecP0ZSTnjdYM
 yOwGVQ85kzjeHYdLqn2oALSNlncob1hjaj8Fbu0NiQB6qW0cvOULJ8ypxzSmAxsmV2Uf
 DlJhhS3wKCf2wtA1zSWOy/fWD3C6xDEZH+gQaW5y1vopTQ+xfGj6coQVeGJvz/EK2PP6
 CoUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EwQTFZSk5O7vX7swlaOuLVLMaZkFLorXcfCxGEXx5Qo=;
 b=l+FnM65CJeTAtRCZT524+jW0ke5foJAfeiiQzVMU1EHOC/wqJVDbc3bFNBURwzUTHD
 jBnWohZ/oQ+mLb4dmFv2/G1IDDi6yN+yy4ZgglfV7G99iuNy9R4lSVro4WKgPhV4cp1y
 or4/Lj/T9TS1FTAo8fK9G8mOenUoD21OL1Yz/0ehpifNh7H/9lHbsOrE9b+X79Q+WXZ7
 /uqFfhHaA9EJOFyqKLcmlcSxcUS0pd5lgBvhfq/PpetzgQ3cZGYxKnPtxMV4aXfmgC5a
 DTqzeyzIZdTTSYnr77SdCQRnYI9z+kMwznl25EJ3Unqqm5aPkvmD/mrEe88XkKVs5JMd
 NTDA==
X-Gm-Message-State: APjAAAXHeDCobmpjcqXMPFhPBDMRjAI0PzRdov9UXskNxJZdkcS7Z+zF
 T2OVQPKdFPm+b/B89GWeDryjw76jZ1udkg==
X-Google-Smtp-Source: APXvYqyLBGOlH+bPmEXY+7+tPa3M41JiOd8S2fUC3UGdD2WwRX9+AKmDGwnzfi61kjv8yE1ia8Y9Nw==
X-Received: by 2002:adf:fcc7:: with SMTP id f7mr16981514wrs.345.1572294777264; 
 Mon, 28 Oct 2019 13:32:57 -0700 (PDT)
Received: from localhost.localdomain (230.106.138.88.rev.sfr.net.
 [88.138.106.230])
 by smtp.gmail.com with ESMTPSA id q15sm7227992wrr.82.2019.10.28.13.32.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 13:32:56 -0700 (PDT)
From: richard.henderson@linaro.org
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/1] arm64: Implement archrandom.h for ARMv8.5-RNG
Date: Mon, 28 Oct 2019 21:32:54 +0100
Message-Id: <20191028203254.7152-2-richard.henderson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028203254.7152-1-richard.henderson@linaro.org>
References: <20191028203254.7152-1-richard.henderson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_133300_197115_6AE63977 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com, ard.biesheuvel@linaro.org,
 catalin.marinas@arm.com, Richard Henderson <richard.henderson@linaro.org>,
 will@kernel.org, Dave.Martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Richard Henderson <richard.henderson@linaro.org>

Expose the ID_AA64ISAR0.RNDR field to userspace, as the
RNG system registers are always available at EL0.

Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
---
v2: Use __mrs_s and fix missing cc clobber (Mark),
    Log rng failures with pr_warn (Mark),
    Use __must_check; put RNDR in arch_get_random_long and RNDRRS
    in arch_get_random_seed_long (Ard),
    Use ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE, and check this_cpu_has_cap
    when reading random data.  Move everything out of line, now that
    there are 5 other function calls involved, and to unify the rate
    limiting on the pr_warn.
---
 Documentation/arm64/cpu-feature-registers.rst |  2 +
 arch/arm64/include/asm/archrandom.h           | 32 +++++++
 arch/arm64/include/asm/cpucaps.h              |  3 +-
 arch/arm64/include/asm/sysreg.h               |  4 +
 arch/arm64/kernel/cpufeature.c                | 13 +++
 arch/arm64/kernel/random.c                    | 95 +++++++++++++++++++
 arch/arm64/Kconfig                            | 12 +++
 arch/arm64/kernel/Makefile                    |  1 +
 drivers/char/Kconfig                          |  4 +-
 9 files changed, 163 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm64/include/asm/archrandom.h
 create mode 100644 arch/arm64/kernel/random.c

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
index 000000000000..2f166decb7d8
--- /dev/null
+++ b/arch/arm64/include/asm/archrandom.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_ARCHRANDOM_H
+#define _ASM_ARCHRANDOM_H
+
+#ifdef CONFIG_ARCH_RANDOM
+
+bool __must_check arch_get_random_long(unsigned long *v);
+bool __must_check arch_get_random_int(unsigned int *v);
+bool __must_check arch_get_random_seed_long(unsigned long *v);
+bool __must_check arch_get_random_seed_int(unsigned int *v);
+
+/*
+ * These functions are technically part of the linux/random.h interface,
+ * but are not currently used.  For arm64, they're not actually usable
+ * separately from arch_get_random_long, etc, because we have to disable
+ * preemption around the per-cpu test plus the system register read.
+ * Against some future use, pretend success here, deferring failure to
+ * the actual read.
+ */
+
+static inline bool arch_has_random(void)
+{
+	return true;
+}
+
+static inline bool arch_has_random_seed(void)
+{
+	return true;
+}
+
+#endif /* CONFIG_ARCH_RANDOM */
+#endif /* _ASM_ARCHRANDOM_H */
diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index ac1dbca3d0cd..1dd7644bc59a 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -54,7 +54,8 @@
 #define ARM64_WORKAROUND_1463225		44
 #define ARM64_WORKAROUND_CAVIUM_TX2_219_TVM	45
 #define ARM64_WORKAROUND_CAVIUM_TX2_219_PRFM	46
+#define ARM64_HAS_RNG				47
 
-#define ARM64_NCAPS				47
+#define ARM64_NCAPS				48
 
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
index 80f459ad0190..456d5c461cbf 100644
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
@@ -1565,6 +1566,18 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.sign = FTR_UNSIGNED,
 		.min_field_value = 1,
 	},
+#endif
+#ifdef CONFIG_ARCH_RANDOM
+	{
+		.desc = "Random Number Generator",
+		.capability = ARM64_HAS_RNG,
+		.type = ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE,
+		.matches = has_cpuid_feature,
+		.sys_reg = SYS_ID_AA64ISAR0_EL1,
+		.field_pos = ID_AA64ISAR0_RNDR_SHIFT,
+		.sign = FTR_UNSIGNED,
+		.min_field_value = 1,
+	},
 #endif
 	{},
 };
diff --git a/arch/arm64/kernel/random.c b/arch/arm64/kernel/random.c
new file mode 100644
index 000000000000..17956d3251c4
--- /dev/null
+++ b/arch/arm64/kernel/random.c
@@ -0,0 +1,95 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Random number generation using ARMv8.5-RNG.
+ */
+
+#include <linux/random.h>
+#include <linux/ratelimit.h>
+#include <linux/printk.h>
+#include <linux/preempt.h>
+#include <asm/cpufeature.h>
+
+bool arch_get_random_long(unsigned long *v)
+{
+	bool ok;
+
+	preempt_disable_notrace();
+
+	ok = this_cpu_has_cap(ARM64_HAS_RNG);
+	if (ok) {
+		/*
+		 * Reads of RNDR set PSTATE.NZCV to 0b0000 on success,
+		 * and set PSTATE.NZCV to 0b0100 otherwise.
+		 */
+		asm volatile(
+			__mrs_s("%0", SYS_RNDR_EL0) "\n"
+		"	cset %w1, ne\n"
+		: "=r"(*v), "=r"(ok)
+		:
+		: "cc");
+
+		if (unlikely(!ok)) {
+			pr_warn_ratelimited("cpu%d: sys_rndr failed\n",
+					    read_cpuid_id());
+		}
+	}
+
+	preempt_enable_notrace();
+	return ok;
+}
+
+bool arch_get_random_int(unsigned int *v)
+{
+	unsigned long val;
+
+	if (arch_get_random_long(&val)) {
+		*v = val;
+		return true;
+	}
+
+	return false;
+}
+
+bool arch_get_random_seed_long(unsigned long *v)
+{
+	preempt_disable_notrace();
+
+	if (this_cpu_has_cap(ARM64_HAS_RNG)) {
+		unsigned long ok, val;
+
+		/*
+		 * Reads of RNDRRS set PSTATE.NZCV to 0b0000 on success,
+		 * and set PSTATE.NZCV to 0b0100 otherwise.
+		 */
+		asm volatile(
+			__mrs_s("%0", SYS_RNDRRS_EL0) "\n"
+		"	cset %1, ne\n"
+		: "=r"(val), "=r"(ok)
+		:
+		: "cc");
+
+		if (likely(ok)) {
+			*v = val;
+			preempt_enable_notrace();
+			return true;
+		}
+
+		pr_warn_ratelimited("cpu%d: sys_rndrrs failed\n",
+				    read_cpuid_id());
+	}
+
+	preempt_enable_notrace();
+	return false;
+}
+
+bool arch_get_random_seed_int(unsigned int *v)
+{
+	unsigned long val;
+
+	if (arch_get_random_seed_long(&val)) {
+		*v = val;
+		return true;
+	}
+
+	return false;
+}
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3f047afb982c..5bc88601f07b 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1438,6 +1438,18 @@ config ARM64_PTR_AUTH
 
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
diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
index 478491f07b4f..a47c2b984da7 100644
--- a/arch/arm64/kernel/Makefile
+++ b/arch/arm64/kernel/Makefile
@@ -63,6 +63,7 @@ obj-$(CONFIG_CRASH_CORE)		+= crash_core.o
 obj-$(CONFIG_ARM_SDE_INTERFACE)		+= sdei.o
 obj-$(CONFIG_ARM64_SSBD)		+= ssbd.o
 obj-$(CONFIG_ARM64_PTR_AUTH)		+= pointer_auth.o
+obj-$(CONFIG_ARCH_RANDOM)		+= random.o
 
 obj-y					+= vdso/ probes/
 obj-$(CONFIG_COMPAT_VDSO)		+= vdso32/
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
