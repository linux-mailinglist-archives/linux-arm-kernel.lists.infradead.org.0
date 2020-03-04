Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 151C5178989
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 05:29:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8gByrbDMvQLT0iC98xU0cbQ8ZrcXR3AbNDU1nrHSiAA=; b=HmDHEc+bf2GoCXiAkGBiE+31KI
	GltoPyiMMeBnScG1c3cF+qpzjImv0dSpZOIz5ea3xQB9Bs7nJ9unqSzGVdKWWjkgPotkETRSMv1hg
	Iiq/2opGVSt+dACsR3zfsRMiTV3QyMZw+Ia0kxMpmU9uq44lt1BxA8D2VeT3XpP0emMDbkIW3n4DT
	KlqBjsLpf6bRMvei1Y09crOYbk0OXoVISO2qccDrx+Mw9w2f0hUtl6vJ9h63P/Xok8dZ6o0ab/nMM
	NLJkxbLT/gfoanKSsaqVyCbSvUjX2VMcxEw3jv9R+pARPshbOA++v2a3lID1+tIEbnUhwO2fgfhwe
	tz0zkvJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9LfE-0005mo-BH; Wed, 04 Mar 2020 04:29:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Leg-0005RA-UE
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 04:29:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0ECB131B;
 Tue,  3 Mar 2020 20:29:10 -0800 (PST)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.88])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 107DD3F534;
 Tue,  3 Mar 2020 20:29:02 -0800 (PST)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, akpm@linux-foundation.org,
 catalin.marinas@arm.com, will@kernel.org, rppt@linux.ibm.com
Subject: [PATCH V14 2/2] arm64/mm: Enable memory hot remove
Date: Wed,  4 Mar 2020 09:58:43 +0530
Message-Id: <1583296123-18546-3-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583296123-18546-1-git-send-email-anshuman.khandual@arm.com>
References: <1583296123-18546-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_202911_264830_882B2425 
X-CRM114-Status: GOOD (  22.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, ira.weiny@intel.com, david@redhat.com,
 mgorman@techsingularity.net, steve.capper@arm.com, Robin.Murphy@arm.com,
 steven.price@arm.com, broonie@kernel.org, cai@lca.pw, ard.biesheuvel@arm.com,
 arunks@codeaurora.org, dan.j.williams@intel.com, anshuman.khandual@arm.com,
 logang@deltatee.com, valentin.schneider@arm.com, suzuki.poulose@arm.com,
 osalvador@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The arch code for hot-remove must tear down portions of the linear map and
vmemmap corresponding to memory being removed. In both cases the page
tables mapping these regions must be freed, and when sparse vmemmap is in
use the memory backing the vmemmap must also be freed.

This patch adds unmap_hotplug_range() and free_empty_tables() helpers which
can be used to tear down either region and calls it from vmemmap_free() and
___remove_pgd_mapping(). The free_mapped argument determines whether the
backing memory will be freed.

It makes two distinct passes over the kernel page table. In the first pass
with unmap_hotplug_range() it unmaps, invalidates applicable TLB cache and
frees backing memory if required (vmemmap) for each mapped leaf entry. In
the second pass with free_empty_tables() it looks for empty page table
sections whose page table page can be unmapped, TLB invalidated and freed.

While freeing intermediate level page table pages bail out if any of its
entries are still valid. This can happen for partially filled kernel page
table either from a previously attempted failed memory hot add or while
removing an address range which does not span the entire page table page
range.

The vmemmap region may share levels of table with the vmalloc region.
There can be conflicts between hot remove freeing page table pages with
a concurrent vmalloc() walking the kernel page table. This conflict can
not just be solved by taking the init_mm ptl because of existing locking
scheme in vmalloc(). So free_empty_tables() implements a floor and ceiling
method which is borrowed from user page table tear with free_pgd_range()
which skips freeing page table pages if intermediate address range is not
aligned or maximum floor-ceiling might not own the entire page table page.

Boot memory on arm64 cannot be removed. Hence this registers a new memory
hotplug notifier which prevents boot memory offlining and it's removal.

While here update arch_add_memory() to handle __add_pages() failures by
just unmapping recently added kernel linear mapping. Now enable memory hot
remove on arm64 platforms by default with ARCH_ENABLE_MEMORY_HOTREMOVE.

This implementation is overall inspired from kernel page table tear down
procedure on X86 architecture and user page table tear down method.

[Mike and Catalin added P4D page table level support]

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/Kconfig              |   3 +
 arch/arm64/include/asm/memory.h |   1 +
 arch/arm64/mm/mmu.c             | 379 +++++++++++++++++++++++++++++++-
 3 files changed, 374 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 0b30e884e088..8fb0ba221a26 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -281,6 +281,9 @@ config ZONE_DMA32
 config ARCH_ENABLE_MEMORY_HOTPLUG
 	def_bool y
 
+config ARCH_ENABLE_MEMORY_HOTREMOVE
+	def_bool y
+
 config SMP
 	def_bool y
 
diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index 4d94676e5a8b..2be67b232499 100644
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
index 128f70852bf3..9b08f7c7e6f0 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -17,6 +17,7 @@
 #include <linux/mman.h>
 #include <linux/nodemask.h>
 #include <linux/memblock.h>
+#include <linux/memory.h>
 #include <linux/fs.h>
 #include <linux/io.h>
 #include <linux/mm.h>
@@ -724,6 +725,312 @@ int kern_addr_valid(unsigned long addr)
 
 	return pfn_valid(pte_pfn(pte));
 }
+
+#ifdef CONFIG_MEMORY_HOTPLUG
+static void free_hotplug_page_range(struct page *page, size_t size)
+{
+	WARN_ON(PageReserved(page));
+	free_pages((unsigned long)page_address(page), get_order(size));
+}
+
+static void free_hotplug_pgtable_page(struct page *page)
+{
+	free_hotplug_page_range(page, PAGE_SIZE);
+}
+
+static bool pgtable_range_aligned(unsigned long start, unsigned long end,
+				  unsigned long floor, unsigned long ceiling,
+				  unsigned long mask)
+{
+	start &= mask;
+	if (start < floor)
+		return false;
+
+	if (ceiling) {
+		ceiling &= mask;
+		if (!ceiling)
+			return false;
+	}
+
+	if (end - 1 > ceiling - 1)
+		return false;
+	return true;
+}
+
+static void unmap_hotplug_pte_range(pmd_t *pmdp, unsigned long addr,
+				    unsigned long end, bool free_mapped)
+{
+	pte_t *ptep, pte;
+
+	do {
+		ptep = pte_offset_kernel(pmdp, addr);
+		pte = READ_ONCE(*ptep);
+		if (pte_none(pte))
+			continue;
+
+		WARN_ON(!pte_present(pte));
+		pte_clear(&init_mm, addr, ptep);
+		flush_tlb_kernel_range(addr, addr + PAGE_SIZE);
+		if (free_mapped)
+			free_hotplug_page_range(pte_page(pte), PAGE_SIZE);
+	} while (addr += PAGE_SIZE, addr < end);
+}
+
+static void unmap_hotplug_pmd_range(pud_t *pudp, unsigned long addr,
+				    unsigned long end, bool free_mapped)
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
+		WARN_ON(!pmd_present(pmd));
+		if (pmd_sect(pmd)) {
+			pmd_clear(pmdp);
+
+			/*
+			 * One TLBI should be sufficient here as the PMD_SIZE
+			 * range is mapped with a single block entry.
+			 */
+			flush_tlb_kernel_range(addr, addr + PAGE_SIZE);
+			if (free_mapped)
+				free_hotplug_page_range(pmd_page(pmd),
+							PMD_SIZE);
+			continue;
+		}
+		WARN_ON(!pmd_table(pmd));
+		unmap_hotplug_pte_range(pmdp, addr, next, free_mapped);
+	} while (addr = next, addr < end);
+}
+
+static void unmap_hotplug_pud_range(p4d_t *p4dp, unsigned long addr,
+				    unsigned long end, bool free_mapped)
+{
+	unsigned long next;
+	pud_t *pudp, pud;
+
+	do {
+		next = pud_addr_end(addr, end);
+		pudp = pud_offset(p4dp, addr);
+		pud = READ_ONCE(*pudp);
+		if (pud_none(pud))
+			continue;
+
+		WARN_ON(!pud_present(pud));
+		if (pud_sect(pud)) {
+			pud_clear(pudp);
+
+			/*
+			 * One TLBI should be sufficient here as the PUD_SIZE
+			 * range is mapped with a single block entry.
+			 */
+			flush_tlb_kernel_range(addr, addr + PAGE_SIZE);
+			if (free_mapped)
+				free_hotplug_page_range(pud_page(pud),
+							PUD_SIZE);
+			continue;
+		}
+		WARN_ON(!pud_table(pud));
+		unmap_hotplug_pmd_range(pudp, addr, next, free_mapped);
+	} while (addr = next, addr < end);
+}
+
+static void unmap_hotplug_p4d_range(pgd_t *pgdp, unsigned long addr,
+				    unsigned long end, bool free_mapped)
+{
+	unsigned long next;
+	p4d_t *p4dp, p4d;
+
+	do {
+		next = p4d_addr_end(addr, end);
+		p4dp = p4d_offset(pgdp, addr);
+		p4d = READ_ONCE(*p4dp);
+		if (p4d_none(p4d))
+			continue;
+
+		WARN_ON(!p4d_present(p4d));
+		unmap_hotplug_pud_range(p4dp, addr, next, free_mapped);
+	} while (addr = next, addr < end);
+}
+
+static void unmap_hotplug_range(unsigned long addr, unsigned long end,
+				bool free_mapped)
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
+		unmap_hotplug_p4d_range(pgdp, addr, next, free_mapped);
+	} while (addr = next, addr < end);
+}
+
+static void free_empty_pte_table(pmd_t *pmdp, unsigned long addr,
+				 unsigned long end, unsigned long floor,
+				 unsigned long ceiling)
+{
+	pte_t *ptep, pte;
+	unsigned long i, start = addr;
+
+	do {
+		ptep = pte_offset_kernel(pmdp, addr);
+		pte = READ_ONCE(*ptep);
+
+		/*
+		 * This is just a sanity check here which verifies that
+		 * pte clearing has been done by earlier unmap loops.
+		 */
+		WARN_ON(!pte_none(pte));
+	} while (addr += PAGE_SIZE, addr < end);
+
+	if (!pgtable_range_aligned(start, end, floor, ceiling, PMD_MASK))
+		return;
+
+	/*
+	 * Check whether we can free the pte page if the rest of the
+	 * entries are empty. Overlap with other regions have been
+	 * handled by the floor/ceiling check.
+	 */
+	ptep = pte_offset_kernel(pmdp, 0UL);
+	for (i = 0; i < PTRS_PER_PTE; i++) {
+		if (!pte_none(READ_ONCE(ptep[i])))
+			return;
+	}
+
+	pmd_clear(pmdp);
+	__flush_tlb_kernel_pgtable(start);
+	free_hotplug_pgtable_page(virt_to_page(ptep));
+}
+
+static void free_empty_pmd_table(pud_t *pudp, unsigned long addr,
+				 unsigned long end, unsigned long floor,
+				 unsigned long ceiling)
+{
+	pmd_t *pmdp, pmd;
+	unsigned long i, next, start = addr;
+
+	do {
+		next = pmd_addr_end(addr, end);
+		pmdp = pmd_offset(pudp, addr);
+		pmd = READ_ONCE(*pmdp);
+		if (pmd_none(pmd))
+			continue;
+
+		WARN_ON(!pmd_present(pmd) || !pmd_table(pmd) || pmd_sect(pmd));
+		free_empty_pte_table(pmdp, addr, next, floor, ceiling);
+	} while (addr = next, addr < end);
+
+	if (CONFIG_PGTABLE_LEVELS <= 2)
+		return;
+
+	if (!pgtable_range_aligned(start, end, floor, ceiling, PUD_MASK))
+		return;
+
+	/*
+	 * Check whether we can free the pmd page if the rest of the
+	 * entries are empty. Overlap with other regions have been
+	 * handled by the floor/ceiling check.
+	 */
+	pmdp = pmd_offset(pudp, 0UL);
+	for (i = 0; i < PTRS_PER_PMD; i++) {
+		if (!pmd_none(READ_ONCE(pmdp[i])))
+			return;
+	}
+
+	pud_clear(pudp);
+	__flush_tlb_kernel_pgtable(start);
+	free_hotplug_pgtable_page(virt_to_page(pmdp));
+}
+
+static void free_empty_pud_table(p4d_t *p4dp, unsigned long addr,
+				 unsigned long end, unsigned long floor,
+				 unsigned long ceiling)
+{
+	pud_t *pudp, pud;
+	unsigned long i, next, start = addr;
+
+	do {
+		next = pud_addr_end(addr, end);
+		pudp = pud_offset(p4dp, addr);
+		pud = READ_ONCE(*pudp);
+		if (pud_none(pud))
+			continue;
+
+		WARN_ON(!pud_present(pud) || !pud_table(pud) || pud_sect(pud));
+		free_empty_pmd_table(pudp, addr, next, floor, ceiling);
+	} while (addr = next, addr < end);
+
+	if (CONFIG_PGTABLE_LEVELS <= 3)
+		return;
+
+	if (!pgtable_range_aligned(start, end, floor, ceiling, PGDIR_MASK))
+		return;
+
+	/*
+	 * Check whether we can free the pud page if the rest of the
+	 * entries are empty. Overlap with other regions have been
+	 * handled by the floor/ceiling check.
+	 */
+	pudp = pud_offset(p4dp, 0UL);
+	for (i = 0; i < PTRS_PER_PUD; i++) {
+		if (!pud_none(READ_ONCE(pudp[i])))
+			return;
+	}
+
+	p4d_clear(p4dp);
+	__flush_tlb_kernel_pgtable(start);
+	free_hotplug_pgtable_page(virt_to_page(pudp));
+}
+
+static void free_empty_p4d_table(pgd_t *pgdp, unsigned long addr,
+				 unsigned long end, unsigned long floor,
+				 unsigned long ceiling)
+{
+	unsigned long next;
+	p4d_t *p4dp, p4d;
+
+	do {
+		next = p4d_addr_end(addr, end);
+		p4dp = p4d_offset(pgdp, addr);
+		p4d = READ_ONCE(*p4dp);
+		if (p4d_none(p4d))
+			continue;
+
+		WARN_ON(!p4d_present(p4d));
+		free_empty_pud_table(p4dp, addr, next, floor, ceiling);
+	} while (addr = next, addr < end);
+}
+
+static void free_empty_tables(unsigned long addr, unsigned long end,
+			      unsigned long floor, unsigned long ceiling)
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
+		free_empty_p4d_table(pgdp, addr, next, floor, ceiling);
+	} while (addr = next, addr < end);
+}
+#endif
+
 #ifdef CONFIG_SPARSEMEM_VMEMMAP
 #if !ARM64_SWAPPER_USES_SECTION_MAPS
 int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
@@ -771,6 +1078,12 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
 void vmemmap_free(unsigned long start, unsigned long end,
 		struct vmem_altmap *altmap)
 {
+#ifdef CONFIG_MEMORY_HOTPLUG
+	WARN_ON((start < VMEMMAP_START) || (end > VMEMMAP_END));
+
+	unmap_hotplug_range(start, end, true);
+	free_empty_tables(start, end, VMEMMAP_START, VMEMMAP_END);
+#endif
 }
 #endif	/* CONFIG_SPARSEMEM_VMEMMAP */
 
@@ -1049,10 +1362,21 @@ int p4d_free_pud_page(p4d_t *p4d, unsigned long addr)
 }
 
 #ifdef CONFIG_MEMORY_HOTPLUG
+static void __remove_pgd_mapping(pgd_t *pgdir, unsigned long start, u64 size)
+{
+	unsigned long end = start + size;
+
+	WARN_ON(pgdir != init_mm.pgd);
+	WARN_ON((start < PAGE_OFFSET) || (end > PAGE_END));
+
+	unmap_hotplug_range(start, end, false);
+	free_empty_tables(start, end, PAGE_OFFSET, PAGE_END);
+}
+
 int arch_add_memory(int nid, u64 start, u64 size,
 			struct mhp_restrictions *restrictions)
 {
-	int flags = 0;
+	int ret, flags = 0;
 
 	if (rodata_full || debug_pagealloc_enabled())
 		flags = NO_BLOCK_MAPPINGS | NO_CONT_MAPPINGS;
@@ -1062,22 +1386,59 @@ int arch_add_memory(int nid, u64 start, u64 size,
 
 	memblock_clear_nomap(start, size);
 
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
 	unsigned long start_pfn = start >> PAGE_SHIFT;
 	unsigned long nr_pages = size >> PAGE_SHIFT;
 
-	/*
-	 * FIXME: Cleanup page tables (also in arch_add_memory() in case
-	 * adding fails). Until then, this function should only be used
-	 * during memory hotplug (adding memory), not for memory
-	 * unplug. ARCH_ENABLE_MEMORY_HOTREMOVE must not be
-	 * unlocked yet.
-	 */
 	__remove_pages(start_pfn, nr_pages, altmap);
+	__remove_pgd_mapping(swapper_pg_dir, __phys_to_virt(start), size);
+}
+
+/*
+ * This memory hotplug notifier helps prevent boot memory from being
+ * inadvertently removed as it blocks pfn range offlining process in
+ * __offline_pages(). Hence this prevents both offlining as well as
+ * removal process for boot memory which is initially always online.
+ * In future if and when boot memory could be removed, this notifier
+ * should be dropped and free_hotplug_page_range() should handle any
+ * reserved pages allocated during boot.
+ */
+static int prevent_bootmem_remove_notifier(struct notifier_block *nb,
+					   unsigned long action, void *data)
+{
+	struct mem_section *ms;
+	struct memory_notify *arg = data;
+	unsigned long end_pfn = arg->start_pfn + arg->nr_pages;
+	unsigned long pfn = arg->start_pfn;
+
+	if (action != MEM_GOING_OFFLINE)
+		return NOTIFY_OK;
+
+	for (; pfn < end_pfn; pfn += PAGES_PER_SECTION) {
+		ms = __pfn_to_section(pfn);
+		if (early_section(ms))
+			return NOTIFY_BAD;
+	}
+	return NOTIFY_OK;
+}
+
+static struct notifier_block prevent_bootmem_remove_nb = {
+	.notifier_call = prevent_bootmem_remove_notifier,
+};
+
+static int __init prevent_bootmem_remove_init(void)
+{
+	return register_memory_notifier(&prevent_bootmem_remove_nb);
 }
+device_initcall(prevent_bootmem_remove_init);
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
