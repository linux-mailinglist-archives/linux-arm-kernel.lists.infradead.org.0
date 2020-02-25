Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A96416F3F2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 00:54:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XqcxWHOCTzfCOIiQ2FnsQ9d4rxYbsAGdEZ4apjHD5pk=; b=bMId96gdrhJdW+
	8s/T9nBtpy+M0ORnsWfCFSWfeNOFMM9pagsWhgBYglMu8FHL+BzNlfUHOGoUz4QE8NXXYavBjGnHi
	zs3Oe+UcM1l9O3yliwN0tqoQnjljzHoZrPhiR1MRp/i70TeAq4qZ7nD36bRCSdmW9PxPZObuorHj+
	Fd8o8x6mlAe3pRPng73MHleJvnVt12BWBe9ix+uLflZiJoOFf/X2Y15SEt/7FcGFxXa0t5x2ODJ+N
	EkdBUweMFUOzbNGRxpahyeuHQwOfUQveuuuzgZMFD9JRibyoC2UVJbsOFJhLOUB8DAJBYvrJhRJ45
	YVdhJykBssqa6YWVYUqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6k1k-0005VD-SV; Tue, 25 Feb 2020 23:54:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6k0L-0004NL-VJ
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 23:52:47 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F9CB24676;
 Tue, 25 Feb 2020 23:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582674765;
 bh=nW9Ojf+Onj3hkHhtHqQ6GbPRjL6Rw7C9mYC7UfzdDh8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KPyJ4K8sbQwj/MYcNjC9AG0YM5UEWqHjJF/jzzPKfx6UIiPGDTYGrUuASs7wtSRst
 FGRycaBdPbNbKLF+4MOxi7iSEH8ftwy9xBrHqf4zAubIXR5XJ/XwmGzohkI7844e8I
 nXkvkY7MAEj2NEiyTFw+qYv01g1eUdSja+SlURdM=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j6k0J-007xuY-Qf; Tue, 25 Feb 2020 23:52:43 +0000
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 5/5] arm64: Ask the compiler to __always_inline functions used
 by KVM at HYP
Date: Tue, 25 Feb 2020 23:52:23 +0000
Message-Id: <20200225235223.12839-6-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200225235223.12839-1-maz@kernel.org>
References: <20200225235223.12839-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, james.morse@arm.com, jcline@redhat.com,
 mark.rutland@arm.com, will@kernel.org, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_155246_060051_783D35DC 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Jeremy Cline <jcline@redhat.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: James Morse <james.morse@arm.com>

KVM uses some of the static-inline helpers like icache_is_vipt() from
its HYP code. This assumes the function is inlined so that the code is
mapped to EL2. The compiler may decide not to inline these, and the
out-of-line version may not be in the __hyp_text section.

Add the additional __always_ hint to these static-inlines that are used
by KVM.

Signed-off-by: James Morse <james.morse@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Acked-by: Will Deacon <will@kernel.org>
Link: https://lore.kernel.org/r/20200220165839.256881-4-james.morse@arm.com
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
index 0e6d03c7e368..be078699ac4b 100644
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
