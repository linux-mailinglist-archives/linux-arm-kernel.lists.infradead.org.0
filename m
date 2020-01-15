Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D2313BE7C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 12:31:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CaG5vucgNRfGAL3fV+uAK2ir70ZRo04acBeBAA1zfDk=; b=uyMAfLzgMecBxY
	0Oh7KksKTMHKimvqK34obzNOu15c0K5T6FEAmPT91kGZnue3UGqEKE44QTLYz1P0Lh/+ix+Hs1abU
	pwHojlJAX0K6aPdfSotTfFGVCcQwf9km2m0QM7/a46t8Zow0IADaskSIPedNAQinJePPsLjt4nPtd
	50l/+7L2vBJ4O6VZDb1lay+F4gakbKklWIJJ/Ak2+5bHni0y3Ml1XqqSzz6IKhrQYafdlAUY7ojCt
	CCEHdaG7rmMaiDMkdC3ij3wp3lA5NvnOVBnt6iZRNYohZZITXZUqOmd4GwYSLIEjGfUbIOzXucoW8
	5hmmARiKpYi58SPeCnSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irgt8-0001yf-Ho; Wed, 15 Jan 2020 11:31:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgsJ-0001ZR-Lh
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 11:30:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E6EB311B3;
 Wed, 15 Jan 2020 03:30:14 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3EEEA3F6C4;
 Wed, 15 Jan 2020 03:30:14 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] arm64: Move the LSE gas support detection to Kconfig
Date: Wed, 15 Jan 2020 11:30:08 +0000
Message-Id: <20200115113008.3334-3-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.25.0.rc1
In-Reply-To: <20200115113008.3334-1-catalin.marinas@arm.com>
References: <20200115113008.3334-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_033015_791857_3C8FF8EA 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As the Kconfig syntax gained support for $(as-instr) tests, move the LSE
gas support detection from Makefile to the main arm64 Kconfig and remove
the additional CONFIG_AS_LSE definition and check.

Cc: Will Deacon <will@kernel.org>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---

Notes:
    v2:
    - Re-introduce build-time warning if .config wants LSE atomics but gas
      does not support it
    - Given that the patch was modified, I have not added Vladimir's
      reviewed-by tag on v1

 arch/arm64/Kconfig                    |  5 +++++
 arch/arm64/Makefile                   | 11 ++++-------
 arch/arm64/include/asm/atomic_ll_sc.h |  2 +-
 arch/arm64/include/asm/lse.h          |  6 +++---
 arch/arm64/kernel/cpufeature.c        |  4 ++--
 5 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index b1b4476ddb83..cf3b6d2a67cf 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1363,6 +1363,11 @@ config ARM64_PAN
 	 instruction if the cpu does not implement the feature.
 
 config ARM64_LSE_ATOMICS
+	bool
+	default ARM64_USE_LSE_ATOMICS
+	depends on $(as-instr,.arch_extension lse)
+
+config ARM64_USE_LSE_ATOMICS
 	bool "Atomic instructions"
 	depends on JUMP_LABEL
 	default y
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 1fbe24d4fdb6..6dd8ecacc428 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -30,11 +30,8 @@ LDFLAGS_vmlinux	+= --fix-cortex-a53-843419
   endif
 endif
 
-# Check for binutils support for specific extensions
-lseinstr := $(call as-instr,.arch_extension lse,-DCONFIG_AS_LSE=1)
-
-ifeq ($(CONFIG_ARM64_LSE_ATOMICS), y)
-  ifeq ($(lseinstr),)
+ifeq ($(CONFIG_ARM64_USE_LSE_ATOMICS), y)
+  ifneq ($(CONFIG_ARM64_LSE_ATOMICS), y)
 $(warning LSE atomics not supported by binutils)
   endif
 endif
@@ -53,11 +50,11 @@ $(warning Detected assembler with broken .inst; disassembly will be unreliable)
   endif
 endif
 
-KBUILD_CFLAGS	+= -mgeneral-regs-only $(lseinstr) $(brokengasinst)	\
+KBUILD_CFLAGS	+= -mgeneral-regs-only $(brokengasinst)	\
 		   $(compat_vdso) $(cc_has_k_constraint)
 KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
 KBUILD_CFLAGS	+= $(call cc-disable-warning, psabi)
-KBUILD_AFLAGS	+= $(lseinstr) $(brokengasinst) $(compat_vdso)
+KBUILD_AFLAGS	+= $(brokengasinst) $(compat_vdso)
 
 KBUILD_CFLAGS	+= $(call cc-option,-mabi=lp64)
 KBUILD_AFLAGS	+= $(call cc-option,-mabi=lp64)
diff --git a/arch/arm64/include/asm/atomic_ll_sc.h b/arch/arm64/include/asm/atomic_ll_sc.h
index 7b012148bfd6..13869b76b58c 100644
--- a/arch/arm64/include/asm/atomic_ll_sc.h
+++ b/arch/arm64/include/asm/atomic_ll_sc.h
@@ -12,7 +12,7 @@
 
 #include <linux/stringify.h>
 
-#if IS_ENABLED(CONFIG_ARM64_LSE_ATOMICS) && IS_ENABLED(CONFIG_AS_LSE)
+#ifdef CONFIG_ARM64_LSE_ATOMICS
 #define __LL_SC_FALLBACK(asm_ops)					\
 "	b	3f\n"							\
 "	.subsection	1\n"						\
diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
index 80b388278149..4e1009fff686 100644
--- a/arch/arm64/include/asm/lse.h
+++ b/arch/arm64/include/asm/lse.h
@@ -4,7 +4,7 @@
 
 #include <asm/atomic_ll_sc.h>
 
-#if defined(CONFIG_AS_LSE) && defined(CONFIG_ARM64_LSE_ATOMICS)
+#ifdef CONFIG_ARM64_LSE_ATOMICS
 
 #include <linux/compiler_types.h>
 #include <linux/export.h>
@@ -36,7 +36,7 @@ static inline bool system_uses_lse_atomics(void)
 #define ARM64_LSE_ATOMIC_INSN(llsc, lse)				\
 	ALTERNATIVE(llsc, lse, ARM64_HAS_LSE_ATOMICS)
 
-#else	/* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
+#else	/* CONFIG_ARM64_LSE_ATOMICS */
 
 static inline bool system_uses_lse_atomics(void) { return false; }
 
@@ -44,5 +44,5 @@ static inline bool system_uses_lse_atomics(void) { return false; }
 
 #define ARM64_LSE_ATOMIC_INSN(llsc, lse)	llsc
 
-#endif	/* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
+#endif	/* CONFIG_ARM64_LSE_ATOMICS */
 #endif	/* __ASM_LSE_H */
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 04cf64e9f0c9..2595c2886d3f 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1291,7 +1291,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.cpu_enable = cpu_enable_pan,
 	},
 #endif /* CONFIG_ARM64_PAN */
-#if defined(CONFIG_AS_LSE) && defined(CONFIG_ARM64_LSE_ATOMICS)
+#ifdef CONFIG_ARM64_LSE_ATOMICS
 	{
 		.desc = "LSE atomic instructions",
 		.capability = ARM64_HAS_LSE_ATOMICS,
@@ -1302,7 +1302,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.sign = FTR_UNSIGNED,
 		.min_field_value = 2,
 	},
-#endif /* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
+#endif /* CONFIG_ARM64_LSE_ATOMICS */
 	{
 		.desc = "Software prefetching using PRFM",
 		.capability = ARM64_HAS_NO_HW_PREFETCH,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
