Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA32F135FAC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 18:50:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nusCV9S3W3YTXl6xfv++C27fIBnCFsbWJ5pZbDL0M1Y=; b=VYVjsqaE7tuwDT
	qABvyYOyqHfN4FJD+q+N2WZzzGEn6ININz7Oq2+4tmaiykjQCOkcEO4gx2z7FxU97Qf5inAxcSnzg
	ZDdL1TOVDrjKiMVGeGzs2L77HMz78bXcUMDYmKM5k48R7IGpbCTalnNDr8rI0buzuuEwVlV9EoHQu
	x/Tv6Wkd6GmDbFJSbc0C4ESLEAygGqet6HJFK00z3ICQ8QDK9InWY6A1mpIE7XEh/6rWG6GvYGxjl
	wuCehaVYKQYv5e/ZFvfGeECyqsAX/vYfg370aX2La2vwWsPEhM7OIwbzgpv4BEnU8Pw6gTMU3YxXM
	8kfNcnXfMrwY7ShlZ8Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipbx7-0003ZS-Po; Thu, 09 Jan 2020 17:50:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipbwQ-0001z6-RX
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 17:49:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A4421063;
 Thu,  9 Jan 2020 09:49:54 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6FEFC3F703;
 Thu,  9 Jan 2020 09:49:53 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: Move the LSE gas support detection to Kconfig
Date: Thu,  9 Jan 2020 17:49:48 +0000
Message-Id: <20200109174948.48211-3-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200109174948.48211-1-catalin.marinas@arm.com>
References: <20200109174948.48211-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_094954_976624_52E9EE15 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Will Deacon <will@kernel.org>
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
 arch/arm64/Kconfig                    |  4 ++++
 arch/arm64/Makefile                   | 13 ++-----------
 arch/arm64/include/asm/atomic_ll_sc.h |  2 +-
 arch/arm64/include/asm/lse.h          |  6 +++---
 arch/arm64/kernel/cpufeature.c        |  4 ++--
 5 files changed, 12 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index b1b4476ddb83..2a0521f0f156 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1362,8 +1362,12 @@ config ARM64_PAN
 	 The feature is detected at runtime, and will remain as a 'nop'
 	 instruction if the cpu does not implement the feature.
 
+config ARM64_AS_HAS_LSE
+	def_bool $(as-instr,.arch_extension lse)
+
 config ARM64_LSE_ATOMICS
 	bool "Atomic instructions"
+	depends on ARM64_AS_HAS_LSE
 	depends on JUMP_LABEL
 	default y
 	help
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 1fbe24d4fdb6..cca6de192d42 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -30,15 +30,6 @@ LDFLAGS_vmlinux	+= --fix-cortex-a53-843419
   endif
 endif
 
-# Check for binutils support for specific extensions
-lseinstr := $(call as-instr,.arch_extension lse,-DCONFIG_AS_LSE=1)
-
-ifeq ($(CONFIG_ARM64_LSE_ATOMICS), y)
-  ifeq ($(lseinstr),)
-$(warning LSE atomics not supported by binutils)
-  endif
-endif
-
 cc_has_k_constraint := $(call try-run,echo				\
 	'int main(void) {						\
 		asm volatile("and w0, w0, %w0" :: "K" (4294967295));	\
@@ -53,11 +44,11 @@ $(warning Detected assembler with broken .inst; disassembly will be unreliable)
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
