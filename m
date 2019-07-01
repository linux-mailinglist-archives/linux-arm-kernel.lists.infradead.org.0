Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7058D24C8B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DHpFFyHiGIT8F8bBygicnul2mIW/Sy8V4HZxNiblZ4o=; b=uQrXqdQGNgeyD+
	ddMtOQfsFohqmANLY6LMrTcpXqqAnrn+Ajw1fnYYe8MSV2pYH2PWJJsoiatztkfooKI33s+3wyve6
	cyswRH93IOtnUGKpvU51i58ZCa8BJso1sWVNSSpfnkLQdx6qXExkmCV8oNZTsO6ji2FFxM0PDRqBX
	fpHxMxsZoYDEUcAmk+3WOOofTSlrm82FKhd4Y29y+U0aaajXV4B1L3tszXVzNE5v58fY9SUQksiBh
	f9A0k4qNsrToBo2ozPapDuUqFV/k8X+mutFRRN17LSYohF96fFzTrYeUeODfhx+/GwESY7tjeIyNI
	rRG804lqflsOFOJTlcKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1sZ-00038u-Ti; Tue, 21 May 2019 10:20:19 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1sR-00038V-Qq
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:20:13 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 916CB81DEE;
 Tue, 21 May 2019 10:20:10 +0000 (UTC)
Received: from [10.36.118.15] (unknown [10.36.118.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BE74260143;
 Tue, 21 May 2019 10:20:06 +0000 (UTC)
Subject: Re: [PATCH V4 4/4] arm64/mm: Enable memory hot remove
To: Anshuman Khandual <anshuman.khandual@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 akpm@linux-foundation.org, catalin.marinas@arm.com, will.deacon@arm.com
References: <1558329516-10445-1-git-send-email-anshuman.khandual@arm.com>
 <1558329516-10445-5-git-send-email-anshuman.khandual@arm.com>
From: David Hildenbrand <david@redhat.com>
Openpgp: preference=signencrypt
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
 SE+xAvmumFBY
Organization: Red Hat GmbH
Message-ID: <a660313e-f96c-91ed-1e15-5f3ec6463596@redhat.com>
Date: Tue, 21 May 2019 12:20:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1558329516-10445-5-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Tue, 21 May 2019 10:20:11 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_032011_912625_9D690786 
X-CRM114-Status: GOOD (  28.08  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, mhocko@suse.com, ira.weiny@intel.com,
 mgorman@techsingularity.net, cai@lca.pw, ard.biesheuvel@arm.com,
 cpandya@codeaurora.org, james.morse@arm.com, dan.j.williams@intel.com,
 logang@deltatee.com, arunks@codeaurora.org, osalvador@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20.05.19 07:18, Anshuman Khandual wrote:
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
> entries are still valid. This can happen for partially filled kernel page
> table either from a previously attempted failed memory hot add or while
> removing an address range which does not span the entire page table page
> range.
> 
> The vmemmap region may share levels of table with the vmalloc region. Take
> the kernel ptl so that we can safely free potentially-shared tables.
> 
> While here update arch_add_memory() to handle __add_pages() failures by
> just unmapping recently added kernel linear mapping. Now enable memory hot
> remove on arm64 platforms by default with ARCH_ENABLE_MEMORY_HOTREMOVE.
> 
> This implementation is overall inspired from kernel page table tear down
> procedure on X86 architecture.
> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>  arch/arm64/Kconfig  |   3 +
>  arch/arm64/mm/mmu.c | 212 +++++++++++++++++++++++++++++++++++++++++++++++++++-
>  2 files changed, 213 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 4780eb7..ce24427 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -267,6 +267,9 @@ config HAVE_GENERIC_GUP
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
> index a1bfc44..0cf0d41 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -733,6 +733,187 @@ int kern_addr_valid(unsigned long addr)
>  
>  	return pfn_valid(pte_pfn(pte));
>  }
> +
> +#ifdef CONFIG_MEMORY_HOTPLUG
> +static void free_hotplug_page_range(struct page *page, ssize_t size)
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
> +
> +static void
> +remove_pmd_table(pud_t *pudp, unsigned long addr,
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
> +{
> +	unsigned long addr, next;
> +	pud_t *pudp_base;
> +	pgd_t *pgdp, pgd;
> +
> +	spin_lock(&init_mm.page_table_lock);
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
> @@ -1081,7 +1271,25 @@ int arch_add_memory(int nid, u64 start, u64 size,
>  	__create_pgd_mapping(swapper_pg_dir, start, __phys_to_virt(start),
>  			     size, PAGE_KERNEL, __pgd_pgtable_alloc, flags);
>  
> -	return __add_pages(nid, start >> PAGE_SHIFT, size >> PAGE_SHIFT,
> +	ret = __add_pages(nid, start >> PAGE_SHIFT, size >> PAGE_SHIFT,
>  			   restrictions);
> +	if (ret)
> +		__remove_pgd_mapping(swapper_pg_dir,
> +					__phys_to_virt(start), size);

Nit: Indentation of the parameters looks really weird.

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
> +	__remove_pgd_mapping(swapper_pg_dir,
> +					__phys_to_virt(start), size);

Dito, indentation of the parameters.

For these two changes (arch_*_memory)

Acked-by: David Hildenbrand <david@redhat.com>

-- 

Thanks,

David / dhildenb

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
