Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 582001663A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:00:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sXA30bei0/Laf6kr8ktIOTzO3iU0J/PZbe72bPeuZRw=; b=LkcatN349yTRXn
	lysdNAIr0+b+MtO52cDaqxXbEEcsQGa3pK3KXs0k+9petpbPAeNvTWQUr5KBDzrVg5//N14SMX5m0
	X8B36LRdqpwBMUJBFiVKotL9Y7W6O1uvh0sjnX6TeCgRMyezQ5GQvo/oTMS6JHqlEp+16oP6CuT4p
	fIQsylQPLfsywZ6jjz8AuwsTdBqNEa4o7wK/M4LZwXkNt7l313W3UtxqpcLpDdtEAMLaIhfySzym4
	T8bEQRN2CywiZIMdaO9X+uDGA2CVtOahgagP5GYatrAHDGNHVV2pati7rCootyLKHcWLD84GDm++4
	Ijii9afH+/9CC62fwRZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pB9-0006Kr-9G; Thu, 20 Feb 2020 16:59:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pAJ-0005nh-RC
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 16:59:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 54FCF31B;
 Thu, 20 Feb 2020 08:59:07 -0800 (PST)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 05B783F68F;
 Thu, 20 Feb 2020 08:59:05 -0800 (PST)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH 3/3] arm64: Ask the compiler to __always_inline functions used
 by KVM at HYP
Date: Thu, 20 Feb 2020 16:58:39 +0000
Message-Id: <20200220165839.256881-4-james.morse@arm.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200220165839.256881-1-james.morse@arm.com>
References: <20200220165839.256881-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_085907_994791_888F7FB7 
X-CRM114-Status: GOOD (  12.10  )
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KVM uses some of the static-inline helpers like icache_is_vipt() from
its HYP code. This assumes the function is inlined so that the code is
mapped to EL2. The compiler may decide not to inline these, and the
out-of-line version may not be in the __hyp_text section.

Add the additional __always_ hint to these static-inlines that are used
by KVM.

Signed-off-by: James Morse <james.morse@arm.com>
---
 arch/arm64/include/asm/cache.h      | 2 +-
 arch/arm64/include/asm/cacheflush.h | 2 +-
 arch/arm64/include/asm/cpufeature.h | 8 ++++----
 arch/arm64/include/asm/io.h         | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/include/asm/cache.h b/arch/arm64/include/asm/cache.h
index 806e9dc2a852..a4d1b5f771f6 100644
--- a/arch/arm64/include/asm/cache.h
+++ b/arch/arm64/include/asm/cache.h
@@ -69,7 +69,7 @@ static inline int icache_is_aliasing(void)
 	return test_bit(ICACHEF_ALIASING, &__icache_flags);
 }
 
-static inline int icache_is_vpipt(void)
+static __always_inline int icache_is_vpipt(void)
 {
 	return test_bit(ICACHEF_VPIPT, &__icache_flags);
 }
diff --git a/arch/arm64/include/asm/cacheflush.h b/arch/arm64/include/asm/cacheflush.h
index 665c78e0665a..e6cca3d4acf7 100644
--- a/arch/arm64/include/asm/cacheflush.h
+++ b/arch/arm64/include/asm/cacheflush.h
@@ -145,7 +145,7 @@ extern void copy_to_user_page(struct vm_area_struct *, struct page *,
 #define ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE 1
 extern void flush_dcache_page(struct page *);
 
-static inline void __flush_icache_all(void)
+static __always_inline void __flush_icache_all(void)
 {
 	if (cpus_have_const_cap(ARM64_HAS_CACHE_DIC))
 		return;
diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 42ce41eef274..2a746b99e937 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -435,13 +435,13 @@ cpuid_feature_extract_signed_field(u64 features, int field)
 	return cpuid_feature_extract_signed_field_width(features, field, 4);
 }
 
-static inline unsigned int __attribute_const__
+static __always_inline unsigned int __attribute_const__
 cpuid_feature_extract_unsigned_field_width(u64 features, int field, int width)
 {
 	return (u64)(features << (64 - width - field)) >> (64 - width);
 }
 
-static inline unsigned int __attribute_const__
+static __always_inline unsigned int __attribute_const__
 cpuid_feature_extract_unsigned_field(u64 features, int field)
 {
 	return cpuid_feature_extract_unsigned_field_width(features, field, 4);
@@ -564,7 +564,7 @@ static inline bool system_supports_mixed_endian(void)
 	return val == 0x1;
 }
 
-static inline bool system_supports_fpsimd(void)
+static __always_inline bool system_supports_fpsimd(void)
 {
 	return !cpus_have_const_cap(ARM64_HAS_NO_FPSIMD);
 }
@@ -575,7 +575,7 @@ static inline bool system_uses_ttbr0_pan(void)
 		!cpus_have_const_cap(ARM64_HAS_PAN);
 }
 
-static inline bool system_supports_sve(void)
+static __always_inline bool system_supports_sve(void)
 {
 	return IS_ENABLED(CONFIG_ARM64_SVE) &&
 		cpus_have_const_cap(ARM64_SVE);
diff --git a/arch/arm64/include/asm/io.h b/arch/arm64/include/asm/io.h
index 4e531f57147d..6facd1308e7c 100644
--- a/arch/arm64/include/asm/io.h
+++ b/arch/arm64/include/asm/io.h
@@ -34,7 +34,7 @@ static inline void __raw_writew(u16 val, volatile void __iomem *addr)
 }
 
 #define __raw_writel __raw_writel
-static inline void __raw_writel(u32 val, volatile void __iomem *addr)
+static __always_inline void __raw_writel(u32 val, volatile void __iomem *addr)
 {
 	asm volatile("str %w0, [%1]" : : "rZ" (val), "r" (addr));
 }
@@ -69,7 +69,7 @@ static inline u16 __raw_readw(const volatile void __iomem *addr)
 }
 
 #define __raw_readl __raw_readl
-static inline u32 __raw_readl(const volatile void __iomem *addr)
+static __always_inline u32 __raw_readl(const volatile void __iomem *addr)
 {
 	u32 val;
 	asm volatile(ALTERNATIVE("ldr %w0, [%1]",
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
