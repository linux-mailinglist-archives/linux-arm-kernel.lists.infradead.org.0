Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9EF1C0863
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 22:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YeCzX1ZLM9/TrKXNhbYlgUNHPYG0evLB2f7ug4f4HDw=; b=JvQO3qPqGof4D/
	+MZw6/jqKVQkEn3hXQ/WybKVCfOYk2wB30y7GAzOnkPOY1B9fD9Jex6HD8Hye4F2+ru4omJzKbIm+
	NiY5G0QMW9LdZ5U6wHUbcJh0z38aJ+t2RQ8NTnlEaHerKQAdQVaPAsF/A83FV5f8e0Bbi9ZfU5CsY
	HEVB9rtpe+NkP9qhms27E5G7I0rG4tXVCQW0Lmlvktci/5FfuMKf/99tRU+BooqC+RDXmEIWKy5Tm
	JqWU4+N9uGodYd+BMbPd/5aOQqWBZ71CTIz59YmF6hz+GkX4VunrIl1ZaF0I7+RFQUtoyzwQMlonB
	kh+bJyROqVN5+GE8ER+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUG10-0004y9-4M; Thu, 30 Apr 2020 20:42:38 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUFxP-0000Ii-7W; Thu, 30 Apr 2020 20:39:01 +0000
IronPort-SDR: c0SWPryJxRYn2cUQWi7nXXvwrP4SK0V4tJANARuvAzJZ3e0G5gnVIAaKX5dhmBbKSprL4JZCMC
 jjYzf2CCbCoQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 13:38:54 -0700
IronPort-SDR: 1zW4R/di1yOmFQjOinki9gQXHIO0HhUnvrHlFLKKsDTsh5FthTJNqNObnrQWSaqvEWrH+kalPy
 kjLmGcduGYnw==
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="433098668"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 13:38:53 -0700
From: ira.weiny@intel.com
To: linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>
Subject: [PATCH V1 06/10] arch/kunmap_atomic: Consolidate duplicate code
Date: Thu, 30 Apr 2020 13:38:41 -0700
Message-Id: <20200430203845.582900-7-ira.weiny@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200430203845.582900-1-ira.weiny@intel.com>
References: <20200430203845.582900-1-ira.weiny@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_133855_375938_08B5570D 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Helge Deller <deller@gmx.de>, x86@kernel.org, linux-csky@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ira Weiny <ira.weiny@intel.com>

Every single architecture (including !CONFIG_HIGHMEM) calls...

	pagefault_enable();
	preempt_enable();

... before returning from __kunmap_atomic().  Lift this code into the
kunmap_atomic() macro.

While we are at it rename __kunmap_atomic() to kunmap_atomic_high() to
be consistent.

Signed-off-by: Ira Weiny <ira.weiny@intel.com>

---
Changes from V0:
	rename __kunmap_atomic() to kunmap_atomic_high()
	Fix mips issue
---
 arch/arc/include/asm/highmem.h        |  2 +-
 arch/arc/mm/highmem.c                 |  7 ++-----
 arch/arm/include/asm/highmem.h        |  2 +-
 arch/arm/mm/highmem.c                 |  6 ++----
 arch/csky/include/asm/highmem.h       |  2 +-
 arch/csky/mm/highmem.c                |  9 +++------
 arch/microblaze/include/asm/highmem.h |  2 +-
 arch/microblaze/mm/highmem.c          |  6 ++----
 arch/mips/include/asm/highmem.h       |  2 +-
 arch/mips/mm/cache.c                  |  4 ++--
 arch/mips/mm/highmem.c                |  6 ++----
 arch/nds32/include/asm/highmem.h      |  2 +-
 arch/nds32/mm/highmem.c               |  6 ++----
 arch/parisc/include/asm/cacheflush.h  |  4 +---
 arch/powerpc/include/asm/highmem.h    |  2 +-
 arch/powerpc/mm/highmem.c             |  6 ++----
 arch/sparc/include/asm/highmem.h      |  2 +-
 arch/sparc/mm/highmem.c               |  6 ++----
 arch/x86/include/asm/highmem.h        |  2 +-
 arch/x86/mm/highmem_32.c              |  7 ++-----
 arch/xtensa/include/asm/highmem.h     |  2 +-
 arch/xtensa/mm/highmem.c              |  7 ++-----
 include/linux/highmem.h               | 10 ++++++----
 23 files changed, 40 insertions(+), 64 deletions(-)

diff --git a/arch/arc/include/asm/highmem.h b/arch/arc/include/asm/highmem.h
index 75bd0fa77fe2..e16531495620 100644
--- a/arch/arc/include/asm/highmem.h
+++ b/arch/arc/include/asm/highmem.h
@@ -31,7 +31,7 @@
 #include <asm/cacheflush.h>
 
 extern void *kmap_atomic_high(struct page *page);
-extern void __kunmap_atomic(void *kvaddr);
+extern void kunmap_atomic_high(void *kvaddr);
 
 extern void kmap_init(void);
 
diff --git a/arch/arc/mm/highmem.c b/arch/arc/mm/highmem.c
index 0964b011c29f..5d3eab4ac0b0 100644
--- a/arch/arc/mm/highmem.c
+++ b/arch/arc/mm/highmem.c
@@ -65,7 +65,7 @@ void *kmap_atomic_high(struct page *page)
 }
 EXPORT_SYMBOL(kmap_atomic_high);
 
-void __kunmap_atomic(void *kv)
+void kunmap_atomic_high(void *kv)
 {
 	unsigned long kvaddr = (unsigned long)kv;
 
@@ -87,11 +87,8 @@ void __kunmap_atomic(void *kv)
 
 		kmap_atomic_idx_pop();
 	}
-
-	pagefault_enable();
-	preempt_enable();
 }
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
 
 static noinline pte_t * __init alloc_kmap_pgtable(unsigned long kvaddr)
 {
diff --git a/arch/arm/include/asm/highmem.h b/arch/arm/include/asm/highmem.h
index 4edb6db3a5c8..a9d5e9bce1cc 100644
--- a/arch/arm/include/asm/highmem.h
+++ b/arch/arm/include/asm/highmem.h
@@ -61,7 +61,7 @@ static inline void *kmap_high_get(struct page *page)
  */
 #ifdef CONFIG_HIGHMEM
 extern void *kmap_atomic_high(struct page *page);
-extern void __kunmap_atomic(void *kvaddr);
+extern void kunmap_atomic_high(void *kvaddr);
 extern void *kmap_atomic_pfn(unsigned long pfn);
 #endif
 
diff --git a/arch/arm/mm/highmem.c b/arch/arm/mm/highmem.c
index 075fdc235091..ac8394655a6e 100644
--- a/arch/arm/mm/highmem.c
+++ b/arch/arm/mm/highmem.c
@@ -73,7 +73,7 @@ void *kmap_atomic_high(struct page *page)
 }
 EXPORT_SYMBOL(kmap_atomic_high);
 
-void __kunmap_atomic(void *kvaddr)
+void kunmap_atomic_high(void *kvaddr)
 {
 	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 	int idx, type;
@@ -95,10 +95,8 @@ void __kunmap_atomic(void *kvaddr)
 		/* this address was obtained through kmap_high_get() */
 		kunmap_high(pte_page(pkmap_page_table[PKMAP_NR(vaddr)]));
 	}
-	pagefault_enable();
-	preempt_enable();
 }
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
 
 void *kmap_atomic_pfn(unsigned long pfn)
 {
diff --git a/arch/csky/include/asm/highmem.h b/arch/csky/include/asm/highmem.h
index 6807df1232f3..5bbbe59e60a9 100644
--- a/arch/csky/include/asm/highmem.h
+++ b/arch/csky/include/asm/highmem.h
@@ -33,7 +33,7 @@ extern pte_t *pkmap_page_table;
 #define ARCH_HAS_KMAP_FLUSH_TLB
 extern void kmap_flush_tlb(unsigned long addr);
 extern void *kmap_atomic_high(struct page *page);
-extern void __kunmap_atomic(void *kvaddr);
+extern void kunmap_atomic_high(void *kvaddr);
 extern void *kmap_atomic_pfn(unsigned long pfn);
 extern struct page *kmap_atomic_to_page(void *ptr);
 
diff --git a/arch/csky/mm/highmem.c b/arch/csky/mm/highmem.c
index 63d74b47eee6..0aafbbbe651c 100644
--- a/arch/csky/mm/highmem.c
+++ b/arch/csky/mm/highmem.c
@@ -39,13 +39,13 @@ void *kmap_atomic_high(struct page *page)
 }
 EXPORT_SYMBOL(kmap_atomic_high);
 
-void __kunmap_atomic(void *kvaddr)
+void kunmap_atomic_high(void *kvaddr)
 {
 	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 	int idx;
 
 	if (vaddr < FIXADDR_START)
-		goto out;
+		return;
 
 #ifdef CONFIG_DEBUG_HIGHMEM
 	idx = KM_TYPE_NR*smp_processor_id() + kmap_atomic_idx();
@@ -58,11 +58,8 @@ void __kunmap_atomic(void *kvaddr)
 	(void) idx; /* to kill a warning */
 #endif
 	kmap_atomic_idx_pop();
-out:
-	pagefault_enable();
-	preempt_enable();
 }
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
 
 /*
  * This is the same as kmap_atomic() but can map memory that doesn't
diff --git a/arch/microblaze/include/asm/highmem.h b/arch/microblaze/include/asm/highmem.h
index fe4ad8bac9ae..5fc56b0107be 100644
--- a/arch/microblaze/include/asm/highmem.h
+++ b/arch/microblaze/include/asm/highmem.h
@@ -52,7 +52,7 @@ extern pte_t *pkmap_page_table;
 #define PKMAP_ADDR(nr)  (PKMAP_BASE + ((nr) << PAGE_SHIFT))
 
 extern void *kmap_atomic_prot(struct page *page, pgprot_t prot);
-extern void __kunmap_atomic(void *kvaddr);
+extern void kunmap_atomic_high(void *kvaddr);
 
 static inline void *kmap_atomic_high(struct page *page)
 {
diff --git a/arch/microblaze/mm/highmem.c b/arch/microblaze/mm/highmem.c
index a14f356b055b..1026aeffe11a 100644
--- a/arch/microblaze/mm/highmem.c
+++ b/arch/microblaze/mm/highmem.c
@@ -51,7 +51,7 @@ void *kmap_atomic_prot(struct page *page, pgprot_t prot)
 }
 EXPORT_SYMBOL(kmap_atomic_prot);
 
-void __kunmap_atomic(void *kvaddr)
+void kunmap_atomic_high(void *kvaddr)
 {
 	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 	int type;
@@ -77,7 +77,5 @@ void __kunmap_atomic(void *kvaddr)
 	local_flush_tlb_page(NULL, vaddr);
 
 	kmap_atomic_idx_pop();
-	pagefault_enable();
-	preempt_enable();
 }
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
diff --git a/arch/mips/include/asm/highmem.h b/arch/mips/include/asm/highmem.h
index a515bcf15d4b..d9f774bd4938 100644
--- a/arch/mips/include/asm/highmem.h
+++ b/arch/mips/include/asm/highmem.h
@@ -49,7 +49,7 @@ extern pte_t *pkmap_page_table;
 #define ARCH_HAS_KMAP_FLUSH_TLB
 extern void kmap_flush_tlb(unsigned long addr);
 extern void *kmap_atomic_high(struct page *page);
-extern void __kunmap_atomic(void *kvaddr);
+extern void kunmap_atomic_high(void *kvaddr);
 extern void *kmap_atomic_pfn(unsigned long pfn);
 
 #define flush_cache_kmaps()	BUG_ON(cpu_has_dc_aliases)
diff --git a/arch/mips/mm/cache.c b/arch/mips/mm/cache.c
index f015bb51fab0..1873c2a01fdb 100644
--- a/arch/mips/mm/cache.c
+++ b/arch/mips/mm/cache.c
@@ -104,7 +104,7 @@ void __flush_dcache_page(struct page *page)
 	flush_data_cache_page(addr);
 
 	if (PageHighMem(page))
-		__kunmap_atomic((void *)addr);
+		kunmap_atomic((void *)addr);
 }
 
 EXPORT_SYMBOL(__flush_dcache_page);
@@ -147,7 +147,7 @@ void __update_cache(unsigned long address, pte_t pte)
 			flush_data_cache_page(addr);
 
 		if (PageHighMem(page))
-			__kunmap_atomic((void *)addr);
+			kunmap_atomic((void *)addr);
 
 		ClearPageDcacheDirty(page);
 	}
diff --git a/arch/mips/mm/highmem.c b/arch/mips/mm/highmem.c
index 2bda56372995..155fbb107b35 100644
--- a/arch/mips/mm/highmem.c
+++ b/arch/mips/mm/highmem.c
@@ -36,7 +36,7 @@ void *kmap_atomic_high(struct page *page)
 }
 EXPORT_SYMBOL(kmap_atomic_high);
 
-void __kunmap_atomic(void *kvaddr)
+void kunmap_atomic_high(void *kvaddr)
 {
 	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 	int type __maybe_unused;
@@ -63,10 +63,8 @@ void __kunmap_atomic(void *kvaddr)
 	}
 #endif
 	kmap_atomic_idx_pop();
-	pagefault_enable();
-	preempt_enable();
 }
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
 
 /*
  * This is the same as kmap_atomic() but can map memory that doesn't
diff --git a/arch/nds32/include/asm/highmem.h b/arch/nds32/include/asm/highmem.h
index 28f5e7072c70..97648b678108 100644
--- a/arch/nds32/include/asm/highmem.h
+++ b/arch/nds32/include/asm/highmem.h
@@ -52,7 +52,7 @@ extern void kmap_init(void);
  */
 #ifdef CONFIG_HIGHMEM
 extern void *kmap_atomic_high(struct page *page);
-extern void __kunmap_atomic(void *kvaddr);
+extern void kunmap_atomic_high(void *kvaddr);
 extern void *kmap_atomic_pfn(unsigned long pfn);
 extern struct page *kmap_atomic_to_page(void *ptr);
 #endif
diff --git a/arch/nds32/mm/highmem.c b/arch/nds32/mm/highmem.c
index f5f3a21460c4..f6e6915c0d31 100644
--- a/arch/nds32/mm/highmem.c
+++ b/arch/nds32/mm/highmem.c
@@ -34,7 +34,7 @@ void *kmap_atomic_high(struct page *page)
 
 EXPORT_SYMBOL(kmap_atomic_high);
 
-void __kunmap_atomic(void *kvaddr)
+void kunmap_atomic_high(void *kvaddr)
 {
 	if (kvaddr >= (void *)FIXADDR_START) {
 		unsigned long vaddr = (unsigned long)kvaddr;
@@ -45,8 +45,6 @@ void __kunmap_atomic(void *kvaddr)
 		ptep = pte_offset_kernel(pmd_off_k(vaddr), vaddr);
 		set_pte(ptep, 0);
 	}
-	pagefault_enable();
-	preempt_enable();
 }
 
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
diff --git a/arch/parisc/include/asm/cacheflush.h b/arch/parisc/include/asm/cacheflush.h
index 0c83644bfa5c..119c9a7681bc 100644
--- a/arch/parisc/include/asm/cacheflush.h
+++ b/arch/parisc/include/asm/cacheflush.h
@@ -122,11 +122,9 @@ static inline void *kmap_atomic(struct page *page)
 	return page_address(page);
 }
 
-static inline void __kunmap_atomic(void *addr)
+static inline void kunmap_atomic_high(void *addr)
 {
 	flush_kernel_dcache_page_addr(addr);
-	pagefault_enable();
-	preempt_enable();
 }
 
 #define kmap_atomic_prot(page, prot)	kmap_atomic(page)
diff --git a/arch/powerpc/include/asm/highmem.h b/arch/powerpc/include/asm/highmem.h
index ac0efc2cf08a..1845fbd7ce61 100644
--- a/arch/powerpc/include/asm/highmem.h
+++ b/arch/powerpc/include/asm/highmem.h
@@ -60,7 +60,7 @@ extern pte_t *pkmap_page_table;
 #define PKMAP_ADDR(nr)  (PKMAP_BASE + ((nr) << PAGE_SHIFT))
 
 extern void *kmap_atomic_prot(struct page *page, pgprot_t prot);
-extern void __kunmap_atomic(void *kvaddr);
+extern void kunmap_atomic_high(void *kvaddr);
 
 static inline void *kmap_atomic_high(struct page *page)
 {
diff --git a/arch/powerpc/mm/highmem.c b/arch/powerpc/mm/highmem.c
index f9558ef4b8fa..162958321e28 100644
--- a/arch/powerpc/mm/highmem.c
+++ b/arch/powerpc/mm/highmem.c
@@ -40,7 +40,7 @@ void *kmap_atomic_prot(struct page *page, pgprot_t prot)
 }
 EXPORT_SYMBOL(kmap_atomic_prot);
 
-void __kunmap_atomic(void *kvaddr)
+void kunmap_atomic_high(void *kvaddr)
 {
 	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 
@@ -66,7 +66,5 @@ void __kunmap_atomic(void *kvaddr)
 	}
 
 	kmap_atomic_idx_pop();
-	pagefault_enable();
-	preempt_enable();
 }
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
diff --git a/arch/sparc/include/asm/highmem.h b/arch/sparc/include/asm/highmem.h
index c96a0603d821..94dd6e4c5fa4 100644
--- a/arch/sparc/include/asm/highmem.h
+++ b/arch/sparc/include/asm/highmem.h
@@ -51,7 +51,7 @@ void kmap_init(void) __init;
 #define PKMAP_END (PKMAP_ADDR(LAST_PKMAP))
 
 void *kmap_atomic_high(struct page *page);
-void __kunmap_atomic(void *kvaddr);
+void kunmap_atomic_high(void *kvaddr);
 
 #define flush_cache_kmaps()	flush_cache_all()
 
diff --git a/arch/sparc/mm/highmem.c b/arch/sparc/mm/highmem.c
index b53070ab6a31..469786bc430f 100644
--- a/arch/sparc/mm/highmem.c
+++ b/arch/sparc/mm/highmem.c
@@ -84,7 +84,7 @@ void *kmap_atomic_high(struct page *page)
 }
 EXPORT_SYMBOL(kmap_atomic_high);
 
-void __kunmap_atomic(void *kvaddr)
+void kunmap_atomic_high(void *kvaddr)
 {
 	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 	int type;
@@ -126,7 +126,5 @@ void __kunmap_atomic(void *kvaddr)
 #endif
 
 	kmap_atomic_idx_pop();
-	pagefault_enable();
-	preempt_enable();
 }
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
diff --git a/arch/x86/include/asm/highmem.h b/arch/x86/include/asm/highmem.h
index 72e154e17416..ff87aba96eee 100644
--- a/arch/x86/include/asm/highmem.h
+++ b/arch/x86/include/asm/highmem.h
@@ -63,7 +63,7 @@ void *kmap_atomic_high(struct page *page)
 {
 	return kmap_atomic_prot(page, kmap_prot);
 }
-void __kunmap_atomic(void *kvaddr);
+void kunmap_atomic_high(void *kvaddr);
 void *kmap_atomic_pfn(unsigned long pfn);
 void *kmap_atomic_prot_pfn(unsigned long pfn, pgprot_t prot);
 
diff --git a/arch/x86/mm/highmem_32.c b/arch/x86/mm/highmem_32.c
index 937d2cc40389..af07a6842743 100644
--- a/arch/x86/mm/highmem_32.c
+++ b/arch/x86/mm/highmem_32.c
@@ -30,7 +30,7 @@ void *kmap_atomic_pfn(unsigned long pfn)
 }
 EXPORT_SYMBOL_GPL(kmap_atomic_pfn);
 
-void __kunmap_atomic(void *kvaddr)
+void kunmap_atomic_high(void *kvaddr)
 {
 	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 
@@ -60,11 +60,8 @@ void __kunmap_atomic(void *kvaddr)
 		BUG_ON(vaddr >= (unsigned long)high_memory);
 	}
 #endif
-
-	pagefault_enable();
-	preempt_enable();
 }
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
 
 void __init set_highmem_pages_init(void)
 {
diff --git a/arch/xtensa/include/asm/highmem.h b/arch/xtensa/include/asm/highmem.h
index d4fb9f78ba32..a60a02dc68f6 100644
--- a/arch/xtensa/include/asm/highmem.h
+++ b/arch/xtensa/include/asm/highmem.h
@@ -69,7 +69,7 @@ static inline void flush_cache_kmaps(void)
 }
 
 void *kmap_atomic_high(struct page *page);
-void __kunmap_atomic(void *kvaddr);
+void kunmap_atomic_high(void *kvaddr);
 
 void kmap_init(void);
 
diff --git a/arch/xtensa/mm/highmem.c b/arch/xtensa/mm/highmem.c
index 217f2ebaa298..f57a7770eb08 100644
--- a/arch/xtensa/mm/highmem.c
+++ b/arch/xtensa/mm/highmem.c
@@ -54,7 +54,7 @@ void *kmap_atomic_high(struct page *page)
 }
 EXPORT_SYMBOL(kmap_atomic_high);
 
-void __kunmap_atomic(void *kvaddr)
+void kunmap_atomic_high(void *kvaddr)
 {
 	if (kvaddr >= (void *)FIXADDR_START &&
 	    kvaddr < (void *)FIXADDR_TOP) {
@@ -73,11 +73,8 @@ void __kunmap_atomic(void *kvaddr)
 
 		kmap_atomic_idx_pop();
 	}
-
-	pagefault_enable();
-	preempt_enable();
 }
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
 
 void __init kmap_init(void)
 {
diff --git a/include/linux/highmem.h b/include/linux/highmem.h
index e0106b4f7dbb..601df07607a4 100644
--- a/include/linux/highmem.h
+++ b/include/linux/highmem.h
@@ -145,10 +145,10 @@ static inline void *kmap_atomic(struct page *page)
 }
 #define kmap_atomic_prot(page, prot)	kmap_atomic(page)
 
-static inline void __kunmap_atomic(void *addr)
+static inline void kunmap_atomic_high(void *addr)
 {
-	pagefault_enable();
-	preempt_enable();
+	/* Nothing to do in the CONFIG_HIGHMEM=n case as kunmap_atomic()
+	 * handles re-enabling faults + preemption */
 }
 
 #define kmap_atomic_pfn(pfn)	kmap_atomic(pfn_to_page(pfn))
@@ -198,7 +198,9 @@ static inline void kmap_atomic_idx_pop(void)
 #define kunmap_atomic(addr)                                     \
 do {                                                            \
 	BUILD_BUG_ON(__same_type((addr), struct page *));       \
-	__kunmap_atomic(addr);                                  \
+	kunmap_atomic_high(addr);                                  \
+	pagefault_enable();                                     \
+	preempt_enable();                                       \
 } while (0)
 
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
