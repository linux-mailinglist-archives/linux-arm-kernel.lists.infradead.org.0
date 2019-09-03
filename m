Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF970A6604
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 11:47:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gDdD1B0LSNvKXLd7rrnsBLISw6gDSCOKJE4p8PqsnrQ=; b=mDzZyc2+BaKEPGb29G8+Uvu4Jh
	COL1HltEJPjHuxHb7+giBkmCYE3Xp2LL2awyYB0WBntUAKrf0NmetPIJ9o67v603UWVxpWu5YeQw1
	HTuqn6dLhDueSqCxXgt9dwKz8xB3vDJvoW/TubZdooCQ0xiTuZEI5HGgnv/xHipjzjKgrDruVZw5i
	pGZNwsxgatsY0C+h/jefiH75rB/RvA8d+ItlPDDWVal3ZG5cMWLUHFNzdsP6+TXJVHbesfETuUV4F
	e4+mw/bexyyQmXh3WxuagZHwNZw1LnsxexNHYutilt+V9A6OD1wOgFURShzyHNn09g0oC4SSoXoUq
	65BAFTAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i55PH-0007zV-1i; Tue, 03 Sep 2019 09:47:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i55OK-0007Oa-KT
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 09:46:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F7AD1570;
 Tue,  3 Sep 2019 02:46:23 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.42.170])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6C9123F59C;
 Tue,  3 Sep 2019 02:46:16 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, akpm@linux-foundation.org,
 catalin.marinas@arm.com, will@kernel.org
Subject: [PATCH V7 3/3] arm64/mm: Enable memory hot remove
Date: Tue,  3 Sep 2019 15:15:58 +0530
Message-Id: <1567503958-25831-4-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567503958-25831-1-git-send-email-anshuman.khandual@arm.com>
References: <1567503958-25831-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_024624_809169_3104BAB8 
X-CRM114-Status: GOOD (  22.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, mhocko@suse.com, david@redhat.com,
 ira.weiny@intel.com, steve.capper@arm.com, mgorman@techsingularity.net,
 steven.price@arm.com, broonie@kernel.org, cai@lca.pw, ard.biesheuvel@arm.com,
 cpandya@codeaurora.org, arunks@codeaurora.org, dan.j.williams@intel.com,
 Robin.Murphy@arm.com, logang@deltatee.com, valentin.schneider@arm.com,
 suzuki.poulose@arm.com, osalvador@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The arch code for hot-remove must tear down portions of the linear map and
vmemmap corresponding to memory being removed. In both cases the page
tables mapping these regions must be freed, and when sparse vmemmap is in
use the memory backing the vmemmap must also be freed.

This patch adds a new remove_pagetable() helper which can be used to tear
down either region, and calls it from vmemmap_free() and
___remove_pgd_mapping(). The sparse_vmap argument determines whether the
backing memory will be freed.

remove_pagetable() makes two distinct passes over the kernel page table.
In the first pass it unmaps, invalidates applicable TLB cache and frees
backing memory if required (vmemmap) for each mapped leaf entry. In the
second pass it looks for empty page table sections whose page table page
can be unmapped, TLB invalidated and freed.

While freeing intermediate level page table pages bail out if any of its
entries are still valid. This can happen for partially filled kernel page
table either from a previously attempted failed memory hot add or while
removing an address range which does not span the entire page table page
range.

The vmemmap region may share levels of table with the vmalloc region.
There can be conflicts between hot remove freeing page table pages with
a concurrent vmalloc() walking the kernel page table. This conflict can
not just be solved by taking the init_mm ptl because of existing locking
scheme in vmalloc(). Hence unlike linear mapping, skip freeing page table
pages while tearing down vmemmap mapping when vmalloc and vmemmap ranges
overlap.

While here update arch_add_memory() to handle __add_pages() failures by
just unmapping recently added kernel linear mapping. Now enable memory hot
remove on arm64 platforms by default with ARCH_ENABLE_MEMORY_HOTREMOVE.

This implementation is overall inspired from kernel page table tear down
procedure on X86 architecture.

Acked-by: Steve Capper <steve.capper@arm.com>
Acked-by: David Hildenbrand <david@redhat.com>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/Kconfig              |   3 +
 arch/arm64/include/asm/memory.h |   1 +
 arch/arm64/mm/mmu.c             | 338 +++++++++++++++++++++++++++++++-
 3 files changed, 333 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 6481964b6425..0079820af308 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -274,6 +274,9 @@ config ZONE_DMA32
 config ARCH_ENABLE_MEMORY_HOTPLUG
 	def_bool y
 
+config ARCH_ENABLE_MEMORY_HOTREMOVE
+	def_bool y
+
 config SMP
 	def_bool y
 
diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index b61b50bf68b1..615dcd08acfa 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -54,6 +54,7 @@
 #define MODULES_VADDR		(BPF_JIT_REGION_END)
 #define MODULES_VSIZE		(SZ_128M)
 #define VMEMMAP_START		(-VMEMMAP_SIZE - SZ_2M)
+#define VMEMMAP_END		(VMEMMAP_START + VMEMMAP_SIZE)
 #define PCI_IO_END		(VMEMMAP_START - SZ_2M)
 #define PCI_IO_START		(PCI_IO_END - PCI_IO_SIZE)
 #define FIXADDR_TOP		(PCI_IO_START - SZ_2M)
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index ee1bf416368d..980d761a7327 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -60,6 +60,14 @@ static pud_t bm_pud[PTRS_PER_PUD] __page_aligned_bss __maybe_unused;
 
 static DEFINE_SPINLOCK(swapper_pgdir_lock);
 
+/*
+ * This represents if vmalloc and vmemmap address range overlap with
+ * each other on an intermediate level kernel page table entry which
+ * in turn helps in deciding whether empty kernel page table pages
+ * if any can be freed during memory hotplug operation.
+ */
+static bool vmalloc_vmemmap_overlap;
+
 void set_swapper_pgd(pgd_t *pgdp, pgd_t pgd)
 {
 	pgd_t *fixmap_pgdp;
@@ -723,6 +731,250 @@ int kern_addr_valid(unsigned long addr)
 
 	return pfn_valid(pte_pfn(pte));
 }
+
+#ifdef CONFIG_MEMORY_HOTPLUG
+static void free_hotplug_page_range(struct page *page, size_t size)
+{
+	WARN_ON(!page || PageReserved(page));
+	free_pages((unsigned long)page_address(page), get_order(size));
+}
+
+static void free_hotplug_pgtable_page(struct page *page)
+{
+	free_hotplug_page_range(page, PAGE_SIZE);
+}
+
+static void free_pte_table(pmd_t *pmdp, unsigned long addr)
+{
+	struct page *page;
+	pte_t *ptep;
+	int i;
+
+	ptep = pte_offset_kernel(pmdp, 0UL);
+	for (i = 0; i < PTRS_PER_PTE; i++) {
+		if (!pte_none(READ_ONCE(ptep[i])))
+			return;
+	}
+
+	page = pmd_page(READ_ONCE(*pmdp));
+	pmd_clear(pmdp);
+	__flush_tlb_kernel_pgtable(addr);
+	free_hotplug_pgtable_page(page);
+}
+
+static void free_pmd_table(pud_t *pudp, unsigned long addr)
+{
+	struct page *page;
+	pmd_t *pmdp;
+	int i;
+
+	if (CONFIG_PGTABLE_LEVELS <= 2)
+		return;
+
+	pmdp = pmd_offset(pudp, 0UL);
+	for (i = 0; i < PTRS_PER_PMD; i++) {
+		if (!pmd_none(READ_ONCE(pmdp[i])))
+			return;
+	}
+
+	page = pud_page(READ_ONCE(*pudp));
+	pud_clear(pudp);
+	__flush_tlb_kernel_pgtable(addr);
+	free_hotplug_pgtable_page(page);
+}
+
+static void free_pud_table(pgd_t *pgdp, unsigned long addr)
+{
+	struct page *page;
+	pud_t *pudp;
+	int i;
+
+	if (CONFIG_PGTABLE_LEVELS <= 3)
+		return;
+
+	pudp = pud_offset(pgdp, 0UL);
+	for (i = 0; i < PTRS_PER_PUD; i++) {
+		if (!pud_none(READ_ONCE(pudp[i])))
+			return;
+	}
+
+	page = pgd_page(READ_ONCE(*pgdp));
+	pgd_clear(pgdp);
+	__flush_tlb_kernel_pgtable(addr);
+	free_hotplug_pgtable_page(page);
+}
+
+static void unmap_hotplug_pte_range(pmd_t *pmdp, unsigned long addr,
+				    unsigned long end, bool sparse_vmap)
+{
+	struct page *page;
+	pte_t *ptep, pte;
+
+	do {
+		ptep = pte_offset_kernel(pmdp, addr);
+		pte = READ_ONCE(*ptep);
+		if (pte_none(pte))
+			continue;
+
+		WARN_ON(!pte_present(pte));
+		page = sparse_vmap ? pte_page(pte) : NULL;
+		pte_clear(&init_mm, addr, ptep);
+		flush_tlb_kernel_range(addr, addr + PAGE_SIZE);
+		if (sparse_vmap)
+			free_hotplug_page_range(page, PAGE_SIZE);
+	} while (addr += PAGE_SIZE, addr < end);
+}
+
+static void unmap_hotplug_pmd_range(pud_t *pudp, unsigned long addr,
+				    unsigned long end, bool sparse_vmap)
+{
+	unsigned long next;
+	struct page *page;
+	pmd_t *pmdp, pmd;
+
+	do {
+		next = pmd_addr_end(addr, end);
+		pmdp = pmd_offset(pudp, addr);
+		pmd = READ_ONCE(*pmdp);
+		if (pmd_none(pmd))
+			continue;
+
+		WARN_ON(!pmd_present(pmd));
+		if (pmd_sect(pmd)) {
+			page = sparse_vmap ? pmd_page(pmd) : NULL;
+			pmd_clear(pmdp);
+			flush_tlb_kernel_range(addr, next);
+			if (sparse_vmap)
+				free_hotplug_page_range(page, PMD_SIZE);
+			continue;
+		}
+		WARN_ON(!pmd_table(pmd));
+		unmap_hotplug_pte_range(pmdp, addr, next, sparse_vmap);
+	} while (addr = next, addr < end);
+}
+
+static void unmap_hotplug_pud_range(pgd_t *pgdp, unsigned long addr,
+				    unsigned long end, bool sparse_vmap)
+{
+	unsigned long next;
+	struct page *page;
+	pud_t *pudp, pud;
+
+	do {
+		next = pud_addr_end(addr, end);
+		pudp = pud_offset(pgdp, addr);
+		pud = READ_ONCE(*pudp);
+		if (pud_none(pud))
+			continue;
+
+		WARN_ON(!pud_present(pud));
+		if (pud_sect(pud)) {
+			page = sparse_vmap ? pud_page(pud) : NULL;
+			pud_clear(pudp);
+			flush_tlb_kernel_range(addr, next);
+			if (sparse_vmap)
+				free_hotplug_page_range(page, PUD_SIZE);
+			continue;
+		}
+		WARN_ON(!pud_table(pud));
+		unmap_hotplug_pmd_range(pudp, addr, next, sparse_vmap);
+	} while (addr = next, addr < end);
+}
+
+static void unmap_hotplug_range(unsigned long addr, unsigned long end,
+				bool sparse_vmap)
+{
+	unsigned long next;
+	pgd_t *pgdp, pgd;
+
+	do {
+		next = pgd_addr_end(addr, end);
+		pgdp = pgd_offset_k(addr);
+		pgd = READ_ONCE(*pgdp);
+		if (pgd_none(pgd))
+			continue;
+
+		WARN_ON(!pgd_present(pgd));
+		unmap_hotplug_pud_range(pgdp, addr, next, sparse_vmap);
+	} while (addr = next, addr < end);
+}
+
+static void free_empty_pte_table(pmd_t *pmdp, unsigned long addr,
+				 unsigned long end)
+{
+	pte_t *ptep, pte;
+
+	do {
+		ptep = pte_offset_kernel(pmdp, addr);
+		pte = READ_ONCE(*ptep);
+		WARN_ON(!pte_none(pte));
+	} while (addr += PAGE_SIZE, addr < end);
+}
+
+static void free_empty_pmd_table(pud_t *pudp, unsigned long addr,
+				 unsigned long end)
+{
+	unsigned long next;
+	pmd_t *pmdp, pmd;
+
+	do {
+		next = pmd_addr_end(addr, end);
+		pmdp = pmd_offset(pudp, addr);
+		pmd = READ_ONCE(*pmdp);
+		if (pmd_none(pmd))
+			continue;
+
+		WARN_ON(!pmd_present(pmd) || !pmd_table(pmd) || pmd_sect(pmd));
+		free_empty_pte_table(pmdp, addr, next);
+		free_pte_table(pmdp, addr);
+	} while (addr = next, addr < end);
+}
+
+static void free_empty_pud_table(pgd_t *pgdp, unsigned long addr,
+				 unsigned long end)
+{
+	unsigned long next;
+	pud_t *pudp, pud;
+
+	do {
+		next = pud_addr_end(addr, end);
+		pudp = pud_offset(pgdp, addr);
+		pud = READ_ONCE(*pudp);
+		if (pud_none(pud))
+			continue;
+
+		WARN_ON(!pud_present(pud) || !pud_table(pud) || pud_sect(pud));
+		free_empty_pmd_table(pudp, addr, next);
+		free_pmd_table(pudp, addr);
+	} while (addr = next, addr < end);
+}
+
+static void free_empty_tables(unsigned long addr, unsigned long end)
+{
+	unsigned long next;
+	pgd_t *pgdp, pgd;
+
+	do {
+		next = pgd_addr_end(addr, end);
+		pgdp = pgd_offset_k(addr);
+		pgd = READ_ONCE(*pgdp);
+		if (pgd_none(pgd))
+			continue;
+
+		WARN_ON(!pgd_present(pgd));
+		free_empty_pud_table(pgdp, addr, next);
+		free_pud_table(pgdp, addr);
+	} while (addr = next, addr < end);
+}
+
+static void remove_pagetable(unsigned long start, unsigned long end,
+			     bool sparse_vmap)
+{
+	unmap_hotplug_range(start, end, sparse_vmap);
+	free_empty_tables(start, end);
+}
+#endif
+
 #ifdef CONFIG_SPARSEMEM_VMEMMAP
 #if !ARM64_SWAPPER_USES_SECTION_MAPS
 int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
@@ -770,6 +1022,28 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
 void vmemmap_free(unsigned long start, unsigned long end,
 		struct vmem_altmap *altmap)
 {
+#ifdef CONFIG_MEMORY_HOTPLUG
+	/*
+	 * FIXME: We should have called remove_pagetable(start, end, true).
+	 * vmemmap and vmalloc virtual range might share intermediate kernel
+	 * page table entries. Removing vmemmap range page table pages here
+	 * can potentially conflict with a concurrent vmalloc() allocation.
+	 *
+	 * This is primarily because vmalloc() does not take init_mm ptl for
+	 * the entire page table walk and it's modification. Instead it just
+	 * takes the lock while allocating and installing page table pages
+	 * via [p4d|pud|pmd|pte]_alloc(). A concurrently vanishing page table
+	 * entry via memory hot remove can cause vmalloc() kernel page table
+	 * walk pointers to be invalid on the fly which can cause corruption
+	 * or worst, a crash.
+	 *
+	 * So free_empty_tables() gets called where vmalloc and vmemmap range
+	 * do not overlap at any intermediate level kernel page table entry.
+	 */
+	unmap_hotplug_range(start, end, true);
+	if (!vmalloc_vmemmap_overlap)
+		free_empty_tables(start, end);
+#endif
 }
 #endif	/* CONFIG_SPARSEMEM_VMEMMAP */
 
@@ -1048,10 +1322,18 @@ int p4d_free_pud_page(p4d_t *p4d, unsigned long addr)
 }
 
 #ifdef CONFIG_MEMORY_HOTPLUG
+static void __remove_pgd_mapping(pgd_t *pgdir, unsigned long start, u64 size)
+{
+	unsigned long end = start + size;
+
+	WARN_ON(pgdir != init_mm.pgd);
+	remove_pagetable(start, end, false);
+}
+
 int arch_add_memory(int nid, u64 start, u64 size,
 			struct mhp_restrictions *restrictions)
 {
-	int flags = 0;
+	int ret, flags = 0;
 
 	if (rodata_full || debug_pagealloc_enabled())
 		flags = NO_BLOCK_MAPPINGS | NO_CONT_MAPPINGS;
@@ -1059,9 +1341,14 @@ int arch_add_memory(int nid, u64 start, u64 size,
 	__create_pgd_mapping(swapper_pg_dir, start, __phys_to_virt(start),
 			     size, PAGE_KERNEL, __pgd_pgtable_alloc, flags);
 
-	return __add_pages(nid, start >> PAGE_SHIFT, size >> PAGE_SHIFT,
+	ret = __add_pages(nid, start >> PAGE_SHIFT, size >> PAGE_SHIFT,
 			   restrictions);
+	if (ret)
+		__remove_pgd_mapping(swapper_pg_dir,
+				     __phys_to_virt(start), size);
+	return ret;
 }
+
 void arch_remove_memory(int nid, u64 start, u64 size,
 			struct vmem_altmap *altmap)
 {
@@ -1069,14 +1356,47 @@ void arch_remove_memory(int nid, u64 start, u64 size,
 	unsigned long nr_pages = size >> PAGE_SHIFT;
 	struct zone *zone;
 
-	/*
-	 * FIXME: Cleanup page tables (also in arch_add_memory() in case
-	 * adding fails). Until then, this function should only be used
-	 * during memory hotplug (adding memory), not for memory
-	 * unplug. ARCH_ENABLE_MEMORY_HOTREMOVE must not be
-	 * unlocked yet.
-	 */
 	zone = page_zone(pfn_to_page(start_pfn));
 	__remove_pages(zone, start_pfn, nr_pages, altmap);
+	__remove_pgd_mapping(swapper_pg_dir, __phys_to_virt(start), size);
+}
+
+static int __init find_vmalloc_vmemmap_overlap(void)
+{
+	unsigned long gap_start, gap_end;
+
+	/*
+	 * vmalloc and vmemmap address ranges should be linearly
+	 * increasing and non-overlapping before the gap between
+	 * them can be measured.
+	 */
+	BUILD_BUG_ON(VMALLOC_END <= VMALLOC_START);
+	BUILD_BUG_ON(VMEMMAP_END <= VMEMMAP_START);
+	BUILD_BUG_ON((VMEMMAP_START >= VMALLOC_START)
+			&& (VMEMMAP_START <= VMALLOC_END));
+	BUILD_BUG_ON((VMEMMAP_END >= VMALLOC_START)
+			&& (VMEMMAP_END <= VMALLOC_END));
+
+	/*
+	 * vmalloc and vmemmap can only be non-overlapping disjoint
+	 * ranges. So [gap_start..gap_end] is determined which will
+	 * represent the gap between the above mentioned ranges.
+	 */
+	if (VMEMMAP_START > VMALLOC_END) {
+		gap_start = VMALLOC_END;
+		gap_end = VMEMMAP_START;
+	} else {
+		gap_start = VMEMMAP_END;
+		gap_end = VMALLOC_START;
+	}
+
+	/*
+	 * Race condition during memory hot-remove exists when the
+	 * gap edges share same PGD entry in kernel page table.
+	 */
+	if ((gap_start & PGDIR_MASK) == (gap_end & PGDIR_MASK))
+		vmalloc_vmemmap_overlap = true;
+	return 0;
 }
+early_initcall(find_vmalloc_vmemmap_overlap);
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
