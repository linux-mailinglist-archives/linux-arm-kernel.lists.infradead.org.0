Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7C62FF06
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 17:12:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oP78zHkpCBsHS2QHTwDtD54fu1SEmlHNReJqkdNL/kc=; b=t4eVKqoD2eRbSm
	K7g3vOg/gSlKQiw6e0DF50Idp3gyE8EdrtaVxWSa1aEXdZQI7kwfMV8UEgZGaPa3jby1AY/FDU0EG
	+65Jvn0ZNb8cPDmpypTL1dAU9nj5/5vJXGoyQxHigMPX5/NaDuppDWSzFrP0EyGCP71CgS/qy8swV
	ZyDNv8eeyGoO1rSTAKn10E9LabI75kSIJSNjDPzDeAwRsDMzIwu7mLX0QnfKY3aNWFAvculljrbZH
	2whfdquC+RnN4gg0K2JQcmKZapW0ouNF8Kldq8uXDmi8oSrk/KaLQsC7xGcHrRO9v9+WEXqAtaCcf
	9TFAsd0kedpOB856o7nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWMjW-0001ZQ-Nv; Thu, 30 May 2019 15:12:46 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWMjP-0001Xm-U6
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 15:12:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 401CF341;
 Thu, 30 May 2019 08:12:33 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1F8A13F59C;
 Thu, 30 May 2019 08:12:29 -0700 (PDT)
Date: Thu, 30 May 2019 16:12:27 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V5 3/3] arm64/mm: Enable memory hot remove
Message-ID: <20190530151227.GD56046@lakrids.cambridge.arm.com>
References: <1559121387-674-1-git-send-email-anshuman.khandual@arm.com>
 <1559121387-674-4-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559121387-674-4-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_081239_980641_3180B2F9 
X-CRM114-Status: GOOD (  36.29  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mhocko@suse.com, mgorman@techsingularity.net, david@redhat.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, logang@deltatee.com, arunks@codeaurora.org, cai@lca.pw,
 ard.biesheuvel@arm.com, cpandya@codeaurora.org, james.morse@arm.com,
 akpm@linux-foundation.org, ira.weiny@intel.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anshuman,

From reviwing the below, I can see some major issues that need to be
addressed, which I've commented on below.

Andrew, please do not pick up this patch.

On Wed, May 29, 2019 at 02:46:27PM +0530, Anshuman Khandual wrote:
> The arch code for hot-remove must tear down portions of the linear map and
> vmemmap corresponding to memory being removed. In both cases the page
> tables mapping these regions must be freed, and when sparse vmemmap is in
> use the memory backing the vmemmap must also be freed.
> 
> This patch adds a new remove_pagetable() helper which can be used to tear
> down either region, and calls it from vmemmap_free() and
> ___remove_pgd_mapping(). The sparse_vmap argument determines whether the
> backing memory will be freed.
> 
> While freeing intermediate level page table pages bail out if any of it's

Nit: s/it's/its/

> entries are still valid. This can happen for partially filled kernel page
> table either from a previously attempted failed memory hot add or while
> removing an address range which does not span the entire page table page
> range.
> 
> The vmemmap region may share levels of table with the vmalloc region. Take
> the kernel ptl so that we can safely free potentially-shared tables.

AFAICT, this is not sufficient; please see below for details.

> While here update arch_add_memory() to handle __add_pages() failures by
> just unmapping recently added kernel linear mapping. Now enable memory hot
> remove on arm64 platforms by default with ARCH_ENABLE_MEMORY_HOTREMOVE.
> 
> This implementation is overall inspired from kernel page table tear down
> procedure on X86 architecture.
> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> Acked-by: David Hildenbrand <david@redhat.com>

Looking at this some more, I don't think this is quite right, and tI
think that structure of the free_*() and remove_*() functions makes this
unnecessarily hard to follow. We should aim for this to be obviously
correct.

The x86 code is the best template to follow here. As mentioned
previously, I'm fairly certain it's not entirely correct (e.g. due to
missing TLB maintenance), and we've already diverged a fair amount in
fixing up obvious issues, so we shouldn't aim to mirror it.

I think that the structure of unmap_region() is closer to what we want
here -- do one pass to unmap leaf entries (and freeing the associated
memory if unmapping the vmemmap), then do a second pass cleaning up any
empty tables.

In general I'm concerned that we don't strictly follow a
clear->tlbi->free sequence, and free pages before tearing down their
corresponding mapping. It doesn't feel great to leave a cacheable alias
around, even transiently. Further, as commented below, the
remove_p?d_table() functions leave stale leaf entries in the TLBs when
removing section entries.

> ---
>  arch/arm64/Kconfig  |   3 +
>  arch/arm64/mm/mmu.c | 211 +++++++++++++++++++++++++++++++++++++++++++++++++++-
>  2 files changed, 212 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 697ea05..7f917fe 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -268,6 +268,9 @@ config HAVE_GENERIC_GUP
>  config ARCH_ENABLE_MEMORY_HOTPLUG
>  	def_bool y
>  
> +config ARCH_ENABLE_MEMORY_HOTREMOVE
> +	def_bool y
> +
>  config SMP
>  	def_bool y
>  
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index a1bfc44..4803624 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -733,6 +733,187 @@ int kern_addr_valid(unsigned long addr)
>  
>  	return pfn_valid(pte_pfn(pte));
>  }
> +
> +#ifdef CONFIG_MEMORY_HOTPLUG
> +static void free_hotplug_page_range(struct page *page, ssize_t size)

The size argument should never be negative, so size_t would be best.

> +{
> +	WARN_ON(PageReserved(page));
> +	free_pages((unsigned long)page_address(page), get_order(size));
> +}
> +
> +static void free_hotplug_pgtable_page(struct page *page)
> +{
> +	free_hotplug_page_range(page, PAGE_SIZE);
> +}
> +
> +static void free_pte_table(pte_t *ptep, pmd_t *pmdp, unsigned long addr)
> +{
> +	struct page *page;
> +	int i;
> +
> +	for (i = 0; i < PTRS_PER_PTE; i++) {
> +		if (!pte_none(ptep[i]))
> +			return;
> +	}
> +
> +	page = pmd_page(READ_ONCE(*pmdp));
> +	pmd_clear(pmdp);
> +	__flush_tlb_kernel_pgtable(addr);
> +	free_hotplug_pgtable_page(page);
> +}
> +
> +static void free_pmd_table(pmd_t *pmdp, pud_t *pudp, unsigned long addr)
> +{
> +	struct page *page;
> +	int i;
> +
> +	if (CONFIG_PGTABLE_LEVELS <= 2)
> +		return;
> +
> +	for (i = 0; i < PTRS_PER_PMD; i++) {
> +		if (!pmd_none(pmdp[i]))
> +			return;
> +	}
> +
> +	page = pud_page(READ_ONCE(*pudp));
> +	pud_clear(pudp);
> +	__flush_tlb_kernel_pgtable(addr);
> +	free_hotplug_pgtable_page(page);
> +}
> +
> +static void free_pud_table(pud_t *pudp, pgd_t *pgdp, unsigned long addr)
> +{
> +	struct page *page;
> +	int i;
> +
> +	if (CONFIG_PGTABLE_LEVELS <= 3)
> +		return;
> +
> +	for (i = 0; i < PTRS_PER_PUD; i++) {
> +		if (!pud_none(pudp[i]))
> +			return;
> +	}
> +
> +	page = pgd_page(READ_ONCE(*pgdp));
> +	pgd_clear(pgdp);
> +	__flush_tlb_kernel_pgtable(addr);
> +	free_hotplug_pgtable_page(page);
> +}
> +
> +static void
> +remove_pte_table(pmd_t *pmdp, unsigned long addr,

Please put this on a single line.

All the existing functions in this file (and the ones you add above)
have the return type on the same line as the name, and since this
portion of the prototype doesn't encroach 80 columns there's no reason
to flow it.

> +			unsigned long end, bool sparse_vmap)
> +{
> +	struct page *page;
> +	pte_t *ptep, pte;
> +	unsigned long start = addr;
> +
> +	for (; addr < end; addr += PAGE_SIZE) {
> +		ptep = pte_offset_kernel(pmdp, addr);
> +		pte = READ_ONCE(*ptep);
> +
> +		if (pte_none(pte))
> +			continue;
> +
> +		WARN_ON(!pte_present(pte));
> +		if (sparse_vmap) {
> +			page = pte_page(pte);
> +			free_hotplug_page_range(page, PAGE_SIZE);
> +		}
> +		pte_clear(&init_mm, addr, ptep);
> +	}
> +	flush_tlb_kernel_range(start, end);
> +}

For consistency we should use a do { ... } while (..., addr != end) loop
to iterate over the page tables. All the other code in our mmu.c does
that, and diverging from that doesn't save use anything here but does
make review and maintenance harder.

> +
> +static void
> +remove_pmd_table(pud_t *pudp, unsigned long addr,

Same line please.

> +			unsigned long end, bool sparse_vmap)
> +{
> +	unsigned long next;
> +	struct page *page;
> +	pte_t *ptep_base;
> +	pmd_t *pmdp, pmd;
> +
> +	for (; addr < end; addr = next) {
> +		next = pmd_addr_end(addr, end);
> +		pmdp = pmd_offset(pudp, addr);
> +		pmd = READ_ONCE(*pmdp);
> +
> +		if (pmd_none(pmd))
> +			continue;
> +
> +		WARN_ON(!pmd_present(pmd));
> +		if (pmd_sect(pmd)) {
> +			if (sparse_vmap) {
> +				page = pmd_page(pmd);
> +				free_hotplug_page_range(page, PMD_SIZE);
> +			}
> +			pmd_clear(pmdp);

As mentioned above, this has no corresponding TLB maintenance, and I'm
concerned that we free the page before clearing the entry. If the page
gets re-allocated elsewhere, whoever received the page may not be
expecting a cacheable alias to exist other than the linear map.

> +			continue;
> +		}
> +		ptep_base = pte_offset_kernel(pmdp, 0UL);
> +		remove_pte_table(pmdp, addr, next, sparse_vmap);
> +		free_pte_table(ptep_base, pmdp, addr);
> +	}
> +}
> +
> +static void
> +remove_pud_table(pgd_t *pgdp, unsigned long addr,

Same line please

> +			unsigned long end, bool sparse_vmap)
> +{
> +	unsigned long next;
> +	struct page *page;
> +	pmd_t *pmdp_base;
> +	pud_t *pudp, pud;
> +
> +	for (; addr < end; addr = next) {
> +		next = pud_addr_end(addr, end);
> +		pudp = pud_offset(pgdp, addr);
> +		pud = READ_ONCE(*pudp);
> +
> +		if (pud_none(pud))
> +			continue;
> +
> +		WARN_ON(!pud_present(pud));
> +		if (pud_sect(pud)) {
> +			if (sparse_vmap) {
> +				page = pud_page(pud);
> +				free_hotplug_page_range(page, PUD_SIZE);
> +			}
> +			pud_clear(pudp);

Same issue as in remove_pmd_table().

> +			continue;
> +		}
> +		pmdp_base = pmd_offset(pudp, 0UL);
> +		remove_pmd_table(pudp, addr, next, sparse_vmap);
> +		free_pmd_table(pmdp_base, pudp, addr);
> +	}
> +}
> +
> +static void
> +remove_pagetable(unsigned long start, unsigned long end, bool sparse_vmap)

Same line please (with the sparse_vmap argument flowed on to the next
line as that will encroach 80 characters).

> +{
> +	unsigned long addr, next;
> +	pud_t *pudp_base;
> +	pgd_t *pgdp, pgd;
> +
> +	spin_lock(&init_mm.page_table_lock);

Please add a comment above this to explain why we need to take the
init_mm ptl. Per the cover letter, this should be something like:

	/*
	 * We may share tables with the vmalloc region, so we must take
	 * the init_mm ptl so that we can safely free any
	 * potentially-shared tables that we have emptied.
	 */

The vmalloc code doesn't hold the init_mm ptl when walking a table; it
only takes the init_mm ptl when populating a none entry in
__p??_alloc(), to avoid a race where two threads need to populate the
entry.

So AFAICT, taking the init_mm ptl here is not sufficient to make this
safe.

Thanks,
Mark.

> +	for (addr = start; addr < end; addr = next) {
> +		next = pgd_addr_end(addr, end);
> +		pgdp = pgd_offset_k(addr);
> +		pgd = READ_ONCE(*pgdp);
> +
> +		if (pgd_none(pgd))
> +			continue;
> +
> +		WARN_ON(!pgd_present(pgd));
> +		pudp_base = pud_offset(pgdp, 0UL);
> +		remove_pud_table(pgdp, addr, next, sparse_vmap);
> +		free_pud_table(pudp_base, pgdp, addr);
> +	}
> +	spin_unlock(&init_mm.page_table_lock);
> +}
> +#endif
> +
>  #ifdef CONFIG_SPARSEMEM_VMEMMAP
>  #if !ARM64_SWAPPER_USES_SECTION_MAPS
>  int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
> @@ -780,6 +961,9 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>  void vmemmap_free(unsigned long start, unsigned long end,
>  		struct vmem_altmap *altmap)
>  {
> +#ifdef CONFIG_MEMORY_HOTPLUG
> +	remove_pagetable(start, end, true);
> +#endif
>  }
>  #endif	/* CONFIG_SPARSEMEM_VMEMMAP */
>  
> @@ -1070,10 +1254,16 @@ int p4d_free_pud_page(p4d_t *p4d, unsigned long addr)
>  }
>  
>  #ifdef CONFIG_MEMORY_HOTPLUG
> +static void __remove_pgd_mapping(pgd_t *pgdir, unsigned long start, u64 size)
> +{
> +	WARN_ON(pgdir != init_mm.pgd);
> +	remove_pagetable(start, start + size, false);
> +}
> +
>  int arch_add_memory(int nid, u64 start, u64 size,
>  			struct mhp_restrictions *restrictions)
>  {
> -	int flags = 0;
> +	int ret, flags = 0;
>  
>  	if (rodata_full || debug_pagealloc_enabled())
>  		flags = NO_BLOCK_MAPPINGS | NO_CONT_MAPPINGS;
> @@ -1081,7 +1271,24 @@ int arch_add_memory(int nid, u64 start, u64 size,
>  	__create_pgd_mapping(swapper_pg_dir, start, __phys_to_virt(start),
>  			     size, PAGE_KERNEL, __pgd_pgtable_alloc, flags);
>  
> -	return __add_pages(nid, start >> PAGE_SHIFT, size >> PAGE_SHIFT,
> +	ret = __add_pages(nid, start >> PAGE_SHIFT, size >> PAGE_SHIFT,
>  			   restrictions);
> +	if (ret)
> +		__remove_pgd_mapping(swapper_pg_dir,
> +				     __phys_to_virt(start), size);
> +	return ret;
> +}
> +
> +#ifdef CONFIG_MEMORY_HOTREMOVE
> +void arch_remove_memory(int nid, u64 start, u64 size,
> +				struct vmem_altmap *altmap)
> +{
> +	unsigned long start_pfn = start >> PAGE_SHIFT;
> +	unsigned long nr_pages = size >> PAGE_SHIFT;
> +	struct zone *zone = page_zone(pfn_to_page(start_pfn));
> +
> +	__remove_pages(zone, start_pfn, nr_pages, altmap);
> +	__remove_pgd_mapping(swapper_pg_dir, __phys_to_virt(start), size);
>  }
>  #endif
> +#endif
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
