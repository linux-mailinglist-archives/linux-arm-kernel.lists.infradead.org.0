Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A421365B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 04:10:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qJTb3WEkGdynY/iZl0XFe0GKiXVQbM559O0Rt5u/0Ns=; b=CvHVL5Jx+IUFpRHzm3WmGxiKaz
	tPtos2ECPY5BVl/e4GOZvaPtrsquz11Y7TJXRgk8vqWXPI4NMfnIaWS5YAIberQklnL4zzOPd0s+c
	wsDDIyDsnILTByGb4GtLWi+iYnInAWiSqiyi3ucY51tW7CEu6n2mF4LWXt2U7EruVucm3jhUHsYjD
	ieq3kZqe5QnoPH+UEdyO2wd44JrQJ4/VduBBFruh9NANVRTv1M8QEzq2Xk1RD3vBfZjzHmrnV++UC
	NR1ntgFZeV2FUmhiPgvTpRql2vmbnxIjrbRsJrvwefCX+ev++Ma2chVSxPvUbo3BcKqWllCDlAKUc
	P/iCTyTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipkgh-0001qY-IY; Fri, 10 Jan 2020 03:10:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipkfo-0001GY-E1
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 03:09:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8654A12FC;
 Thu,  9 Jan 2020 19:09:18 -0800 (PST)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.42.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1BC813F703;
 Thu,  9 Jan 2020 19:09:11 -0800 (PST)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, akpm@linux-foundation.org,
 catalin.marinas@arm.com, will@kernel.org
Subject: [PATCH V11 5/5] arm64/mm: Enable memory hot remove
Date: Fri, 10 Jan 2020 08:39:15 +0530
Message-Id: <1578625755-11792-6-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578625755-11792-1-git-send-email-anshuman.khandual@arm.com>
References: <1578625755-11792-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_190920_688738_45A5BEAA 
X-CRM114-Status: GOOD (  21.88  )
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
Cc: mark.rutland@arm.com, ira.weiny@intel.com, david@redhat.com,
 mgorman@techsingularity.net, steve.capper@arm.com, Robin.Murphy@arm.com,
 steven.price@arm.com, broonie@kernel.org, cai@lca.pw, ard.biesheuvel@arm.com,
 cpandya@codeaurora.org, arunks@codeaurora.org, dan.j.williams@intel.com,
 Anshuman Khandual <anshuman.khandual@arm.com>, logang@deltatee.com,
 valentin.schneider@arm.com, suzuki.poulose@arm.com, osalvador@suse.de
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

Boot memory on arm64 cannot be removed. Hence subscribe the earlier added
platform call back mechanism arch_memory_removable() and reject any boot
memory removal requests.

While here update arch_add_memory() to handle __add_pages() failures by
just unmapping recently added kernel linear mapping. Now enable memory hot
remove on arm64 platforms by default with ARCH_ENABLE_MEMORY_HOTREMOVE.

This implementation is overall inspired from kernel page table tear down
procedure on X86 architecture and user page table tear down method.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Steve Capper <steve.capper@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/Kconfig              |   3 +
 arch/arm64/include/asm/memory.h |   6 +
 arch/arm64/mm/mmu.c             | 334 ++++++++++++++++++++++++++++++++++++++--
 3 files changed, 334 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index b1b4476..402a114 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -277,6 +277,9 @@ config ZONE_DMA32
 config ARCH_ENABLE_MEMORY_HOTPLUG
 	def_bool y
 
+config ARCH_ENABLE_MEMORY_HOTREMOVE
+	def_bool y
+
 config SMP
 	def_bool y
 
diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index a4f9ca5..045a512 100644
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
@@ -292,6 +293,11 @@ static inline void *phys_to_virt(phys_addr_t x)
 	return (void *)(__phys_to_virt(x));
 }
 
+#ifdef CONFIG_MEMORY_HOTREMOVE
+#define arch_memory_removable arch_memory_removable
+extern bool arch_memory_removable(u64 base, u64 size);
+#endif
+
 /*
  * Drivers should NOT use these either.
  */
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 40797cb..2cb1b2e 100644
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
@@ -724,6 +725,275 @@ int kern_addr_valid(unsigned long addr)
 
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
+static void unmap_hotplug_pud_range(pgd_t *pgdp, unsigned long addr,
+				    unsigned long end, bool free_mapped)
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
+		unmap_hotplug_pud_range(pgdp, addr, next, free_mapped);
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
+static void free_empty_pud_table(pgd_t *pgdp, unsigned long addr,
+				 unsigned long end, unsigned long floor,
+				 unsigned long ceiling)
+{
+	pud_t *pudp, pud;
+	unsigned long i, next, start = addr;
+
+	do {
+		next = pud_addr_end(addr, end);
+		pudp = pud_offset(pgdp, addr);
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
+	pudp = pud_offset(pgdp, 0UL);
+	for (i = 0; i < PTRS_PER_PUD; i++) {
+		if (!pud_none(READ_ONCE(pudp[i])))
+			return;
+	}
+
+	pgd_clear(pgdp);
+	__flush_tlb_kernel_pgtable(start);
+	free_hotplug_pgtable_page(virt_to_page(pudp));
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
+		free_empty_pud_table(pgdp, addr, next, floor, ceiling);
+	} while (addr = next, addr < end);
+}
+#endif
+
 #ifdef CONFIG_SPARSEMEM_VMEMMAP
 #if !ARM64_SWAPPER_USES_SECTION_MAPS
 int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
@@ -771,6 +1041,12 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
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
 
@@ -1049,10 +1325,41 @@ int p4d_free_pud_page(p4d_t *p4d, unsigned long addr)
 }
 
 #ifdef CONFIG_MEMORY_HOTPLUG
+static bool range_overlaps_bootmem(u64 base, u64 size)
+{
+	unsigned long addr, end = base + size;
+	unsigned long mem_block_size = memory_block_size_bytes();
+
+	WARN_ON(!IS_ALIGNED(base, mem_block_size));
+	WARN_ON(!IS_ALIGNED(size, mem_block_size));
+
+	/*
+	 * Both memory hot add and remove happens in memory block
+	 * units. Any given memory block on the system was either
+	 * added during boot or at runtime via hotplug.
+	 */
+	for (addr = base; addr <= end; addr += mem_block_size) {
+		if (memblock_is_boot_memory(addr))
+			return true;
+	}
+	return false;
+}
+
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
@@ -1062,8 +1369,13 @@ int arch_add_memory(int nid, u64 start, u64 size,
 
 	memblock_clear_nomap(start, size);
 
-	return __add_pages(nid, start >> PAGE_SHIFT, size >> PAGE_SHIFT,
+	ret = __add_pages(nid, start >> PAGE_SHIFT, size >> PAGE_SHIFT,
 			   restrictions);
+	if (ret)
+		__remove_pgd_mapping(swapper_pg_dir,
+				     __phys_to_virt(start), size);
+	return ret;
+
 }
 void arch_remove_memory(int nid, u64 start, u64 size,
 			struct vmem_altmap *altmap)
@@ -1071,13 +1383,17 @@ void arch_remove_memory(int nid, u64 start, u64 size,
 	unsigned long start_pfn = start >> PAGE_SHIFT;
 	unsigned long nr_pages = size >> PAGE_SHIFT;
 
-	/*
-	 * FIXME: Cleanup page tables (also in arch_add_memory() in case
-	 * adding fails). Until then, this function should only be used
-	 * during memory hotplug (adding memory), not for memory
-	 * unplug. ARCH_ENABLE_MEMORY_HOTREMOVE must not be
-	 * unlocked yet.
-	 */
+	WARN_ON(range_overlaps_bootmem(start, size));
 	__remove_pages(start_pfn, nr_pages, altmap);
+	__remove_pgd_mapping(swapper_pg_dir, __phys_to_virt(start), size);
+}
+#endif
+
+#ifdef CONFIG_MEMORY_HOTREMOVE
+bool arch_memory_removable(u64 base, u64 size)
+{
+	if (range_overlaps_bootmem(base, size))
+		return false;
+	return true;
 }
 #endif
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
