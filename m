Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5FC4B0A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 06:18:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bdVOXgz3ovbKdRklm3/7FPrpdmcxpKr5hQjy+JyO8Io=; b=k6hqyr+ZRW5W9DQnFlkFQV69r9
	c1HHMsZW6H/ZBCDM3C2QsRXBl9WON2gP7fwodyxtfDDkZqdlDQIxqMarBGy+IG5fZc07KuWUiUURU
	oTUcaCchGSnRr33jGEGTuyLOUtcQwpsuMKvBjZDRw8nmlU41nkqPYuHaY3Z+PcMqxm0yGSaRHvRE5
	gyhomdRde2HgxmIdXBlErGX3Mdi83Gq6ID5PrCjKPbjJ6Ud5MCdMzPTyGkN+KeZSFoa+o3HDxng5o
	vQ3SffeW/F8VOLGSqTjMQnxX/ZPfoPTVuNv1M4BB/+wPovD0Bjs5QWdNhNYU2/b5WhK37aoQOBjAR
	K95IHfzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdS3g-0003tC-S8; Wed, 19 Jun 2019 04:18:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdS2j-0003CH-PH
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 04:17:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6F25CCFC;
 Tue, 18 Jun 2019 21:17:52 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.43.130])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 60B7F3F718;
 Tue, 18 Jun 2019 21:17:46 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, akpm@linux-foundation.org,
 catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCH V6 3/3] arm64/mm: Enable memory hot remove
Date: Wed, 19 Jun 2019 09:47:40 +0530
Message-Id: <1560917860-26169-4-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560917860-26169-1-git-send-email-anshuman.khandual@arm.com>
References: <1560917860-26169-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_211754_329690_7B930FA0 
X-CRM114-Status: GOOD (  19.68  )
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
 cai@lca.pw, ard.biesheuvel@arm.com, cpandya@codeaurora.org,
 james.morse@arm.com, dan.j.williams@intel.com, logang@deltatee.com,
 arunks@codeaurora.org, osalvador@suse.de
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
pages while tearing down vmemmap mapping.

While here update arch_add_memory() to handle __add_pages() failures by
just unmapping recently added kernel linear mapping. Now enable memory hot
remove on arm64 platforms by default with ARCH_ENABLE_MEMORY_HOTREMOVE.

This implementation is overall inspired from kernel page table tear down
procedure on X86 architecture.

Acked-by: David Hildenbrand <david@redhat.com>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/Kconfig  |   3 +
 arch/arm64/mm/mmu.c | 290 ++++++++++++++++++++++++++++++++++++++++++++++++++--
 2 files changed, 284 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 6426f48..9375f26 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -270,6 +270,9 @@ config HAVE_GENERIC_GUP
 config ARCH_ENABLE_MEMORY_HOTPLUG
 	def_bool y
 
+config ARCH_ENABLE_MEMORY_HOTREMOVE
+	def_bool y
+
 config SMP
 	def_bool y
 
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 93ed0df..9e80a94 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -733,6 +733,250 @@ int kern_addr_valid(unsigned long addr)
 
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
@@ -780,6 +1024,27 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
 void vmemmap_free(unsigned long start, unsigned long end,
 		struct vmem_altmap *altmap)
 {
+#ifdef CONFIG_MEMORY_HOTPLUG
+	/*
+	 * FIXME: We should have called remove_pagetable(start, end, true).
+	 * vmemmap and vmalloc virtual range might share intermediate kernel
+	 * page table entries. Removing vmemmap range page table pages here
+	 * can potentially conflict with a cuncurrent vmalloc() allocation.
+	 *
+	 * This is primarily because valloc() does not take init_mm ptl for
+	 * the entire page table walk and it's modification. Instead it just
+	 * takes the lock while allocating and installing page table pages
+	 * via [p4d|pud|pmd|pte]_aloc(). A cuncurrently vanishing page table
+	 * entry via memory hotremove can cause vmalloc() kernel page table
+	 * walk pointers to be invalid on the fly which can cause corruption
+	 * or worst, a crash.
+	 *
+	 * To avoid this problem, lets not free empty page table pages for
+	 * given vmemmap range being hot-removed. Just unmap and free the
+	 * range instead.
+	 */
+	unmap_hotplug_range(start, end, true);
+#endif
 }
 #endif	/* CONFIG_SPARSEMEM_VMEMMAP */
 
@@ -1066,10 +1331,18 @@ int p4d_free_pud_page(p4d_t *p4d, unsigned long addr)
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
@@ -1077,9 +1350,14 @@ int arch_add_memory(int nid, u64 start, u64 size,
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
@@ -1087,14 +1365,8 @@ void arch_remove_memory(int nid, u64 start, u64 size,
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
 }
 #endif
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
