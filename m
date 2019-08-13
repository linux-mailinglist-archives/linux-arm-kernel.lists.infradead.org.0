Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5188BF2E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VYVfcX/c2EsZnHiLPMTJPosrrKC6BdoMS1K0Ri5p4SY=; b=g3To3P0TiZZ0Dd26jh94sdz/ix
	KnSmGCL+WCApqNYzDHGH/LDid0DxzvgcqsLDHgjjgHXJatgp0BX9OqigxQO9OYfw9LXHGlP6KY32f
	Z+KLp4OdJUajqnRjgV1tC6cWbt6gtWByDX6ic1XPEAbAnwYu6vCI93eGDIUqkmj1ZzXOMFwRQSvzo
	0ZlK3qgc0I3zj4yMGSEYYupzLbHFpo3JLIpf4x1kLZU4i20vHT/1UmMpx9L77clT4ReC1uYh8zvkf
	SXgX3HmQXWXJlgpvwI65N5O3744PBGF6cRHq2J0cVV839bviTfY7P3MyCdZFKu6RIjw8qxn6MFvHl
	Ku595zyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaDZ-0001qz-34; Tue, 13 Aug 2019 17:04:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaBR-0008NH-Lv
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:02:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 16AC8337;
 Tue, 13 Aug 2019 10:02:05 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EC7A13F706;
 Tue, 13 Aug 2019 10:02:03 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 8/8] arm64: memory: Cosmetic cleanups
Date: Tue, 13 Aug 2019 18:01:49 +0100
Message-Id: <20190813170149.26037-9-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190813170149.26037-1-will@kernel.org>
References: <20190813170149.26037-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_100205_866063_3C884C0A 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Steve Capper <steve.capper@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Qian Cai <cai@lca.pw>,
 Andrey Konovalov <andreyknvl@google.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cleanup memory.h so that the indentation is consistent, remove pointless
line-wrapping and use consistent parameter names for different versions
of the same macro.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/memory.h | 23 +++++++++++------------
 1 file changed, 11 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index d31e4b6e349f..69f4cecb7241 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -12,10 +12,10 @@
 
 #include <linux/compiler.h>
 #include <linux/const.h>
+#include <linux/sizes.h>
 #include <linux/types.h>
 #include <asm/bug.h>
 #include <asm/page-def.h>
-#include <linux/sizes.h>
 
 /*
  * Size of the PCI I/O space. This must remain a power of two so that
@@ -66,8 +66,8 @@
 
 #define _VA_START(va)		(-(UL(1) << ((va) - 1)))
 
-#define KERNEL_START      _text
-#define KERNEL_END        _end
+#define KERNEL_START		_text
+#define KERNEL_END		_end
 
 #ifdef CONFIG_ARM64_VA_BITS_52
 #define MAX_USER_VA_BITS	52
@@ -132,14 +132,14 @@
  * 16 KB granule: 128 level 3 entries, with contiguous bit
  * 64 KB granule:  32 level 3 entries, with contiguous bit
  */
-#define SEGMENT_ALIGN			SZ_2M
+#define SEGMENT_ALIGN		SZ_2M
 #else
 /*
  *  4 KB granule:  16 level 3 entries, with contiguous bit
  * 16 KB granule:   4 level 3 entries, without contiguous bit
  * 64 KB granule:   1 level 3 entry
  */
-#define SEGMENT_ALIGN			SZ_64K
+#define SEGMENT_ALIGN		SZ_64K
 #endif
 
 /*
@@ -253,8 +253,7 @@ static inline const void *__tag_set(const void *addr, u8 tag)
 
 #define __virt_to_phys_nodebug(x) ({					\
 	phys_addr_t __x = (phys_addr_t)(__tag_reset(x));		\
-	__is_lm_address(__x) ? __lm_to_phys(__x) :			\
-			       __kimg_to_phys(__x);			\
+	__is_lm_address(__x) ? __lm_to_phys(__x) : __kimg_to_phys(__x);	\
 })
 
 #define __pa_symbol_nodebug(x)	__kimg_to_phys((phys_addr_t)(x))
@@ -301,17 +300,17 @@ static inline void *phys_to_virt(phys_addr_t x)
 #define __pa_nodebug(x)		__virt_to_phys_nodebug((unsigned long)(x))
 #define __va(x)			((void *)__phys_to_virt((phys_addr_t)(x)))
 #define pfn_to_kaddr(pfn)	__va((pfn) << PAGE_SHIFT)
-#define virt_to_pfn(x)      __phys_to_pfn(__virt_to_phys((unsigned long)(x)))
-#define sym_to_pfn(x)	    __phys_to_pfn(__pa_symbol(x))
+#define virt_to_pfn(x)		__phys_to_pfn(__virt_to_phys((unsigned long)(x)))
+#define sym_to_pfn(x)		__phys_to_pfn(__pa_symbol(x))
 
 /*
- *  virt_to_page(k)	convert a _valid_ virtual address to struct page *
- *  virt_addr_valid(k)	indicates whether a virtual address is valid
+ *  virt_to_page(x)	convert a _valid_ virtual address to struct page *
+ *  virt_addr_valid(x)	indicates whether a virtual address is valid
  */
 #define ARCH_PFN_OFFSET		((unsigned long)PHYS_PFN_OFFSET)
 
 #if !defined(CONFIG_SPARSEMEM_VMEMMAP) || defined(CONFIG_DEBUG_VIRTUAL)
-#define virt_to_page(kaddr)	pfn_to_page(virt_to_pfn(kaddr))
+#define virt_to_page(x)		pfn_to_page(virt_to_pfn(x))
 #else
 #define page_to_virt(x)	({						\
 	__typeof__(x) __page = x;					\
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
