Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5552B1BCCAA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 21:47:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1u+h49BFHtBjsLxvecLsBX0N3VyAxR1cdCCpiXLGLNs=; b=pD4Vo1KCCKnnvQ
	9s/S1XRA1CjgTzqJrbZxbf82uvg8zottXZoGiuNUYc0Sp2N3BMBosnEA6e9OX+MafwQwxqQV1jxA3
	1vWksZmzs4AHOHXLFTougIRE2Az8J75tnHyWCD/sklRACtaYDjsnzaUucI2kmevpvO4ZoluSAfpnZ
	K6mSJpRpI/oYN5zUBeMiNqzlPXkeFpH4ajBtYxxWO1AUui7hGKXgMGRY+3KVghlENCw9w/qD1R2OF
	2A6dKXt9HPS5Y/YH2ApaRX1f/AoZT9kKLhzju3BSOfuLyRauEi8E6MF8m0THR0D7yoa81X86jusWR
	IoNH9z6gKBGFl+bdeVFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTWC5-0001aY-V3; Tue, 28 Apr 2020 19:47:01 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jTW9z-0005uk-2o; Tue, 28 Apr 2020 19:44:51 +0000
From: Matthew Wilcox <willy@infradead.org>
To: linux-mm@kvack.org
Subject: [PATCH 6/7] mm: Set pt_mm in PTE constructor
Date: Tue, 28 Apr 2020 12:44:48 -0700
Message-Id: <20200428194449.22615-7-willy@infradead.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200428194449.22615-1-willy@infradead.org>
References: <20200428194449.22615-1-willy@infradead.org>
MIME-Version: 1.0
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Russell King <linux@armlinux.org.uk>, linux-m68k@lists.linux-m68k.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Matthew Wilcox (Oracle)" <willy@infradead.org>

By setting pt_mm for pages in use as page tables, we can help with
debugging and lay the foundation for handling hardware errors in page
tables more gracefully.  It also opens up the possibility for adding
more sanity checks in the future.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 arch/arc/include/asm/pgalloc.h      | 2 +-
 arch/arm/mm/mmu.c                   | 2 +-
 arch/arm64/mm/mmu.c                 | 2 +-
 arch/m68k/include/asm/mcf_pgalloc.h | 2 +-
 arch/m68k/mm/motorola.c             | 2 +-
 arch/openrisc/include/asm/pgalloc.h | 2 +-
 arch/powerpc/mm/pgtable-frag.c      | 2 +-
 arch/s390/mm/pgalloc.c              | 2 +-
 arch/sparc/mm/init_64.c             | 2 +-
 arch/sparc/mm/srmmu.c               | 2 +-
 arch/xtensa/include/asm/pgalloc.h   | 2 +-
 include/asm-generic/pgalloc.h       | 2 +-
 include/linux/mm.h                  | 5 ++++-
 13 files changed, 16 insertions(+), 13 deletions(-)

diff --git a/arch/arc/include/asm/pgalloc.h b/arch/arc/include/asm/pgalloc.h
index b747f2ec2928..5f6b1f3bc2a2 100644
--- a/arch/arc/include/asm/pgalloc.h
+++ b/arch/arc/include/asm/pgalloc.h
@@ -108,7 +108,7 @@ pte_alloc_one(struct mm_struct *mm)
 		return 0;
 	memzero((void *)pte_pg, PTRS_PER_PTE * sizeof(pte_t));
 	page = virt_to_page(pte_pg);
-	if (!pgtable_pte_page_ctor(page)) {
+	if (!pgtable_pte_page_ctor(page, mm)) {
 		__free_page(page);
 		return 0;
 	}
diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
index e5275bfbe695..9c16c45570ba 100644
--- a/arch/arm/mm/mmu.c
+++ b/arch/arm/mm/mmu.c
@@ -707,7 +707,7 @@ static void *__init late_alloc(unsigned long sz, struct mm_struct *mm)
 {
 	void *ptr = (void *)__get_free_pages(GFP_PGTABLE_KERNEL, get_order(sz));
 
-	if (!ptr || !pgtable_pte_page_ctor(virt_to_page(ptr)))
+	if (!ptr || !pgtable_pte_page_ctor(virt_to_page(ptr), mm))
 		BUG();
 	return ptr;
 }
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 69ecc83c3be0..c706bed1e496 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -381,7 +381,7 @@ static phys_addr_t pgd_pgtable_alloc(int shift, struct mm_struct *mm)
 	 * folded, and if so pgtable_pmd_page_ctor() becomes nop.
 	 */
 	if (shift == PAGE_SHIFT)
-		BUG_ON(!pgtable_pte_page_ctor(phys_to_page(pa)));
+		BUG_ON(!pgtable_pte_page_ctor(phys_to_page(pa), mm));
 	else if (shift == PMD_SHIFT)
 		BUG_ON(!pgtable_pmd_page_ctor(phys_to_page(pa)));
 
diff --git a/arch/m68k/include/asm/mcf_pgalloc.h b/arch/m68k/include/asm/mcf_pgalloc.h
index bc1228e00518..369a3523e834 100644
--- a/arch/m68k/include/asm/mcf_pgalloc.h
+++ b/arch/m68k/include/asm/mcf_pgalloc.h
@@ -50,7 +50,7 @@ static inline pgtable_t pte_alloc_one(struct mm_struct *mm)
 
 	if (!page)
 		return NULL;
-	if (!pgtable_pte_page_ctor(page)) {
+	if (!pgtable_pte_page_ctor(page, mm)) {
 		__free_page(page);
 		return NULL;
 	}
diff --git a/arch/m68k/mm/motorola.c b/arch/m68k/mm/motorola.c
index 7743480be0cf..6bb7c9f348ad 100644
--- a/arch/m68k/mm/motorola.c
+++ b/arch/m68k/mm/motorola.c
@@ -137,7 +137,7 @@ void *get_pointer_table(int type, struct mm_struct *mm)
 			 * m68k doesn't have SPLIT_PTE_PTLOCKS for not having
 			 * SMP.
 			 */
-			pgtable_pte_page_ctor(virt_to_page(page));
+			pgtable_pte_page_ctor(virt_to_page(page, mm));
 		}
 
 		mmu_page_ctor(page);
diff --git a/arch/openrisc/include/asm/pgalloc.h b/arch/openrisc/include/asm/pgalloc.h
index da12a4c38c4b..1a80dfc928b5 100644
--- a/arch/openrisc/include/asm/pgalloc.h
+++ b/arch/openrisc/include/asm/pgalloc.h
@@ -75,7 +75,7 @@ static inline struct page *pte_alloc_one(struct mm_struct *mm)
 	if (!pte)
 		return NULL;
 	clear_page(page_address(pte));
-	if (!pgtable_pte_page_ctor(pte)) {
+	if (!pgtable_pte_page_ctor(pte, mm)) {
 		__free_page(pte);
 		return NULL;
 	}
diff --git a/arch/powerpc/mm/pgtable-frag.c b/arch/powerpc/mm/pgtable-frag.c
index ee4bd6d38602..59a8c85e01ac 100644
--- a/arch/powerpc/mm/pgtable-frag.c
+++ b/arch/powerpc/mm/pgtable-frag.c
@@ -61,7 +61,7 @@ static pte_t *__alloc_for_ptecache(struct mm_struct *mm, int kernel)
 		page = alloc_page(PGALLOC_GFP | __GFP_ACCOUNT);
 		if (!page)
 			return NULL;
-		if (!pgtable_pte_page_ctor(page)) {
+		if (!pgtable_pte_page_ctor(page, mm)) {
 			__free_page(page);
 			return NULL;
 		}
diff --git a/arch/s390/mm/pgalloc.c b/arch/s390/mm/pgalloc.c
index 498c98a312f4..0363828749e2 100644
--- a/arch/s390/mm/pgalloc.c
+++ b/arch/s390/mm/pgalloc.c
@@ -208,7 +208,7 @@ unsigned long *page_table_alloc(struct mm_struct *mm)
 	page = alloc_page(GFP_KERNEL);
 	if (!page)
 		return NULL;
-	if (!pgtable_pte_page_ctor(page)) {
+	if (!pgtable_pte_page_ctor(page, mm)) {
 		__free_page(page);
 		return NULL;
 	}
diff --git a/arch/sparc/mm/init_64.c b/arch/sparc/mm/init_64.c
index 1cf0d666dea3..d2cc80828415 100644
--- a/arch/sparc/mm/init_64.c
+++ b/arch/sparc/mm/init_64.c
@@ -2928,7 +2928,7 @@ pgtable_t pte_alloc_one(struct mm_struct *mm)
 	struct page *page = alloc_page(GFP_KERNEL | __GFP_ZERO);
 	if (!page)
 		return NULL;
-	if (!pgtable_pte_page_ctor(page)) {
+	if (!pgtable_pte_page_ctor(page, mm)) {
 		free_unref_page(page);
 		return NULL;
 	}
diff --git a/arch/sparc/mm/srmmu.c b/arch/sparc/mm/srmmu.c
index b7c94de70cca..019ff2019b55 100644
--- a/arch/sparc/mm/srmmu.c
+++ b/arch/sparc/mm/srmmu.c
@@ -382,7 +382,7 @@ pgtable_t pte_alloc_one(struct mm_struct *mm)
 	if ((pte = (unsigned long)pte_alloc_one_kernel(mm)) == 0)
 		return NULL;
 	page = pfn_to_page(__nocache_pa(pte) >> PAGE_SHIFT);
-	if (!pgtable_pte_page_ctor(page)) {
+	if (!pgtable_pte_page_ctor(page, mm)) {
 		__free_page(page);
 		return NULL;
 	}
diff --git a/arch/xtensa/include/asm/pgalloc.h b/arch/xtensa/include/asm/pgalloc.h
index 1d38f0e755ba..43cc05255832 100644
--- a/arch/xtensa/include/asm/pgalloc.h
+++ b/arch/xtensa/include/asm/pgalloc.h
@@ -55,7 +55,7 @@ static inline pgtable_t pte_alloc_one(struct mm_struct *mm)
 	if (!pte)
 		return NULL;
 	page = virt_to_page(pte);
-	if (!pgtable_pte_page_ctor(page)) {
+	if (!pgtable_pte_page_ctor(page, mm)) {
 		__free_page(page);
 		return NULL;
 	}
diff --git a/include/asm-generic/pgalloc.h b/include/asm-generic/pgalloc.h
index 73f7421413cb..24c2d6e194fb 100644
--- a/include/asm-generic/pgalloc.h
+++ b/include/asm-generic/pgalloc.h
@@ -63,7 +63,7 @@ static inline pgtable_t __pte_alloc_one(struct mm_struct *mm, gfp_t gfp)
 	pte = alloc_page(gfp);
 	if (!pte)
 		return NULL;
-	if (!pgtable_pte_page_ctor(pte)) {
+	if (!pgtable_pte_page_ctor(pte, mm)) {
 		__free_page(pte);
 		return NULL;
 	}
diff --git a/include/linux/mm.h b/include/linux/mm.h
index 5a323422d783..2a98eebeba91 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2157,11 +2157,13 @@ static inline void pgtable_init(void)
 	pgtable_cache_init();
 }
 
-static inline bool pgtable_pte_page_ctor(struct page *page)
+static inline
+bool pgtable_pte_page_ctor(struct page *page, struct mm_struct *mm)
 {
 	if (!ptlock_init(page))
 		return false;
 	__SetPageTable(page);
+	page->pt_mm = mm;
 	inc_zone_page_state(page, NR_PAGETABLE);
 	return true;
 }
@@ -2170,6 +2172,7 @@ static inline void pgtable_pte_page_dtor(struct page *page)
 {
 	ptlock_free(page);
 	__ClearPageTable(page);
+	page->pt_mm = NULL;
 	dec_zone_page_state(page, NR_PAGETABLE);
 }
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
