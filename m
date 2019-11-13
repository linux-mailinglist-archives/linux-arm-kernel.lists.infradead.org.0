Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC95EFAE3C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:12:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G68POxr3rQVdWvQorbdNqBqTJWrYM6ls29uFrdWo5lU=; b=UOYGK1zHCBVUPvoV3dpnvv2SVo
	AO4sr3TRZ4JYWtZDf5Pe+lz7O30uAHK5ujP8AnLFWQRMuYAX/q3b1a/ys+yxAPlSIHiSrM/FT3xi+
	dBBaRpz8XXs/oF5vFFpnp9mAJvyXqyNEunvcS8I4AkXsAU0VAb9NPeBUbjJCv7ATOdbbZ2wn3u2fe
	z57B0A2FLbkBeZefHSmcvvZ9cE13izkEN/nJKvxcixp33jK5i6iKCbE2YJR2ZGzTaB6SdUxCmMlGP
	9Q1+lOMVpgtGQkiLWsUc2jZvPzpDMvx4JLbR4TzXkS2TmO9eChDm/4n84EDc59j/SNMP3OQK1L0ng
	hKVG33qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpda-0007QG-Nk; Wed, 13 Nov 2019 10:12:34 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpdC-0007BY-9B
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:12:12 +0000
Received: by mail-wm1-x344.google.com with SMTP id j18so4482359wmk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 02:12:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZeSFK22/SicCjIc4YKdSujM14J/zNNDOvuuwebke770=;
 b=X9oiJf9VnEU+yohB39AJRQ5qE407rW7F5jDP3mdmXPwIX8Qh3OhjvhpcYpxuXTWlzX
 UDixFjUaXvCyudYqQzC+iKbyFTGzKKSnsuBJ0N4JKjM2aiKHmN0yaul1uuGZPuxVCod5
 h36ROeh19mnK0LeJfFCuSM5JIsdvvfY6l0LOOBUsbqpP1vih0Io63U3YQShLr78u0lA8
 0G3lY9aEuCZIsnEFkQWkT+jXrTGx7T2E3tydZ7AtSfjBV5VJ5lmJyq+aaeLBtx6sNP6Q
 WuzecOr9T6WnX2416yY8uhwejaLOY7LCysLXEQgDlkUA4ten0FufiRfN2U9It2NwvMrL
 UDqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZeSFK22/SicCjIc4YKdSujM14J/zNNDOvuuwebke770=;
 b=U/kilghBg+yjEbKRQ9PXX2F0Rd9iovMrZFHKP36TKZiCksXYOPk2lHqa9IhfRnMOyw
 oeJ+9MT9eWcG8VH3pM/XvpB5GcwklsgKGNmC5B49dReSV1SUlhrdQKCUzZ+QYnlZ5saT
 xW6jnJQuPbWPM3Ei6NW3rxvKlFvE+r+Ya9i1gblwXK6QRVBa3RC4qBWVfR4niQpTBxvh
 smWbpN17d7ZVxTkhpjbuKc7tgfz2AvsY2ywuIcnChJYF6h2B/xWq6A3t1BKaS5Z252xF
 qc+wqG1b+lcD4/oLUaPCodebMC9wOPYYhw9Y8CMTTAtFkeB/AxyXkRlJscMJdqgIqAkM
 Cv9w==
X-Gm-Message-State: APjAAAWdBt5a4P5w5aLpQ/s53wj8/I7Mgf/JQbu4DufzqpDrFn9wWv0v
 vEyOnA22/qSXizzvx9fEBHKr/+MYHoqO1w==
X-Google-Smtp-Source: APXvYqxHhNNtv3vBeAIuM/4LVqLDWBT6Gvanj9S0ZJrAHI+A2y4W/DtjHFu8CZJzCJzL12tZseKCwQ==
X-Received: by 2002:a7b:c445:: with SMTP id l5mr1902400wmi.140.1573639927638; 
 Wed, 13 Nov 2019 02:12:07 -0800 (PST)
Received: from localhost.localdomain
 (219.red-37-158-56.dynamicip.rima-tde.net. [37.158.56.219])
 by smtp.gmail.com with ESMTPSA id j66sm1488993wma.19.2019.11.13.02.12.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 02:12:07 -0800 (PST)
From: richard.henderson@linaro.org
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 1/1] arm64: Implement archrandom.h for ARMv8.5-RNG
Date: Wed, 13 Nov 2019 11:11:51 +0100
Message-Id: <20191113101151.13389-2-richard.henderson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191113101151.13389-1-richard.henderson@linaro.org>
References: <20191113101151.13389-1-richard.henderson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_021210_322125_87E3AE8A 
X-CRM114-Status: GOOD (  21.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, Richard Henderson <richard.henderson@linaro.org>,
 linux-crypto@vger.kernel.org, ard.biesheuvel@linaro.org
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
v3: Keep arch_get_random{,_seed}_long in sync.
v4: Use __cpus_have_const_cap before falling back to this_cpu_has_cap.
v5: Improve commentary; fix some checkpatch warnings.
v6: Drop arch_get_random_long, use RNDR in arch_get_random_seed_long,
    do not use RNDRRS at all (Ard).
    Drop the pr_warn mis-communication (Mark).
    Use ARM64_CPUCAP_SYSTEM_FEATURE for feature detection (Mark).
    Move arch_get_random_seed_long back inline using ALTERNATIVE_CB.
---
 Documentation/arm64/cpu-feature-registers.rst |  2 +
 arch/arm64/include/asm/archrandom.h           | 55 +++++++++++++++
 arch/arm64/include/asm/cpucaps.h              |  3 +-
 arch/arm64/include/asm/sysreg.h               |  4 ++
 arch/arm64/kernel/cpufeature.c                | 13 ++++
 arch/arm64/kernel/random.c                    | 67 +++++++++++++++++++
 arch/arm64/Kconfig                            | 12 ++++
 arch/arm64/kernel/Makefile                    |  1 +
 drivers/char/Kconfig                          |  4 +-
 9 files changed, 158 insertions(+), 3 deletions(-)
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
index 000000000000..7b9f397d2a54
--- /dev/null
+++ b/arch/arm64/include/asm/archrandom.h
@@ -0,0 +1,55 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_ARCHRANDOM_H
+#define _ASM_ARCHRANDOM_H
+
+#ifdef CONFIG_ARCH_RANDOM
+
+#include <asm/alternative.h>
+
+void arm64_update_get_random_seed_long(struct alt_instr *alt,
+				       __le32 *origptr, __le32 *updptr,
+				       int nr_inst);
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
+/*
+ * The ALTERNATIVE infrastructure leads GCC to believe that the
+ * inline assembly is quite large, rather than two insns, which
+ * leads to the function being considered not profitable to inline.
+ * Override this decision with __always_inline.
+ */
+static __always_inline __must_check
+bool arch_get_random_seed_long(unsigned long *v)
+{
+	register unsigned long x0 __asm__("x0");
+	unsigned long ok;
+
+	asm volatile(ALTERNATIVE_CB("bl boot_get_random_seed_long\n",
+				    arm64_update_get_random_seed_long)
+		     "cset %1, ne\n"
+		     : "=r" (x0), "=r" (ok) : : "cc");
+
+	*v = x0;
+	return ok;
+}
+
+static __always_inline __must_check
+bool arch_get_random_seed_int(unsigned int *v)
+{
+	unsigned long val;
+	bool ok = arch_get_random_seed_long(&val);
+
+	*v = val;
+	return ok;
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
index 80f459ad0190..8c3be148c3a2 100644
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
diff --git a/arch/arm64/kernel/random.c b/arch/arm64/kernel/random.c
new file mode 100644
index 000000000000..04c65445c43f
--- /dev/null
+++ b/arch/arm64/kernel/random.c
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: GPL-2.0
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
+/*
+ * Before alternatives are finalized, arch_get_random_seed_long calls
+ * this function.  The abi is as if
+ *
+ *     msr x0, rndr
+ *
+ * Preserve all other call-clobbered regs.
+ */
+
+asm(".globl	boot_get_random_seed_long\n"
+".type	boot_get_random_seed_long, @function\n"
+"boot_get_random_seed_long:\n"
+"	stp	x29, x30, [sp, -160]!\n"
+"	stp	x1, x2, [sp, 16]\n"
+"	stp	x3, x4, [sp, 32]\n"
+"	stp	x5, x6, [sp, 48]\n"
+"	stp	x7, x8, [sp, 64]\n"
+"	stp	x9, x10, [sp, 80]\n"
+"	stp	x11, x12, [sp, 96]\n"
+"	stp	x13, x14, [sp, 112]\n"
+"	stp	x15, x16, [sp, 128]\n"
+"	stp	x17, x18, [sp, 144]\n"
+"	mov	x0, " __stringify(ARM64_HAS_RNG) "\n"
+"	bl	this_cpu_has_cap\n"
+"	ldp	x1, x2, [sp, 16]\n"
+"	ldp	x3, x4, [sp, 32]\n"
+"	ldp	x5, x6, [sp, 48]\n"
+"	ldp	x7, x8, [sp, 64]\n"
+"	ldp	x9, x10, [sp, 80]\n"
+"	ldp	x11, x12, [sp, 96]\n"
+"	ldp	x13, x14, [sp, 112]\n"
+"	ldp	x15, x16, [sp, 128]\n"
+"	ldp	x17, x18, [sp, 144]\n"
+"	ldp	x29, x30, [sp], 160\n"
+/* Test this_cpu_has_cap result, clearing x0 and setting Z if false. */
+"	ands	w0, w0, #0xff\n"
+"	beq	1f\n"
+	__mrs_s("x0", SYS_RNDR_EL0) "\n"
+"1:	ret\n"
+".size boot_get_random_seed_long, . - boot_get_random_seed_long\n");
+
+
+void arm64_update_get_random_seed_long(struct alt_instr *alt,
+				       __le32 *origptr, __le32 *updptr,
+				       int nr_inst)
+{
+	u32 insn;
+
+	BUG_ON(nr_inst != 1);
+
+	if (cpus_have_cap(ARM64_HAS_RNG))
+		insn = 0xd53b2400;	/* mrs	x0, rndr */
+	else
+		insn = 0xea1f03e0;	/* ands	x0, xzr, xzr */
+	updptr[0] = cpu_to_le32(insn);
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
