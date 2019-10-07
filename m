Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60053CE4F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 16:18:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efi4WyhzsRC9v8vwDHVVM+GaX1glm1wGPUg8gP7w+no=; b=moGxIehA7wrp8I
	kGLzFQZBxQ0y++Aep/oSZh4XqmZxwBHojh5UibdKFN9GH+GZjhCt/M/sYHfJTA++f5GG1SHnmvQpT
	K+eUx6B6lYjOxWPpNbvuEgU03dyHqQB5zliZrbPUOdLlvF698vmPLiR7jqUW7AswR8tNKGqHAHQWx
	0QMe2zb8QFNGvBEV1vuHs1oU8aehoLc/k+iu/H0kyZbFscS5+YEKQdOnWSdOFr/OBywUmQKjnuMpk
	Ie6dosJi0W8NDcQJwx6NHv0lvUTKqJBK5um3cuVk+Dv9XA0mHaksbINbj80FVA2wtfiSS6/x5aMsU
	GfqHDJyCnDIi939EB9xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHTpn-00075D-ET; Mon, 07 Oct 2019 14:17:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHTpe-000747-DB
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 14:17:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6527D142F;
 Mon,  7 Oct 2019 07:17:46 -0700 (PDT)
Received: from E120351.arm.com (unknown [10.1.28.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BC6CF3F703;
 Mon,  7 Oct 2019 07:17:41 -0700 (PDT)
Date: Mon, 7 Oct 2019 15:17:38 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V8 2/2] arm64/mm: Enable memory hot remove
Message-ID: <20191007141738.GA93112@E120351.arm.com>
References: <1569217425-23777-1-git-send-email-anshuman.khandual@arm.com>
 <1569217425-23777-3-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569217425-23777-3-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_071750_535907_20B0AA6B 
X-CRM114-Status: GOOD (  23.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, mhocko@suse.com, david@redhat.com, linux-mm@kvack.org,
 arunks@codeaurora.org, cpandya@codeaurora.org, will@kernel.org,
 ira.weiny@intel.com, steven.price@arm.com, valentin.schneider@arm.com,
 suzuki.poulose@arm.com, Robin.Murphy@arm.com, broonie@kernel.org, cai@lca.pw,
 ard.biesheuvel@arm.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, steve.capper@arm.com,
 logang@deltatee.com, linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 mgorman@techsingularity.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 11:13:45AM +0530, Anshuman Khandual wrote:
> The arch code for hot-remove must tear down portions of the linear map and
> vmemmap corresponding to memory being removed. In both cases the page
> tables mapping these regions must be freed, and when sparse vmemmap is in
> use the memory backing the vmemmap must also be freed.
> 
> This patch adds unmap_hotplug_range() and free_empty_tables() helpers which
> can be used to tear down either region and calls it from vmemmap_free() and
> ___remove_pgd_mapping(). The sparse_vmap argument determines whether the
> backing memory will be freed.

Can you change the 'sparse_vmap' name to something more meaningful which
would suggest freeing of the backing memory?

> It makes two distinct passes over the kernel page table. In the first pass
> with unmap_hotplug_range() it unmaps, invalidates applicable TLB cache and
> frees backing memory if required (vmemmap) for each mapped leaf entry. In
> the second pass with free_empty_tables() it looks for empty page table
> sections whose page table page can be unmapped, TLB invalidated and freed.
> 
> While freeing intermediate level page table pages bail out if any of its
> entries are still valid. This can happen for partially filled kernel page
> table either from a previously attempted failed memory hot add or while
> removing an address range which does not span the entire page table page
> range.
> 
> The vmemmap region may share levels of table with the vmalloc region.
> There can be conflicts between hot remove freeing page table pages with
> a concurrent vmalloc() walking the kernel page table. This conflict can
> not just be solved by taking the init_mm ptl because of existing locking
> scheme in vmalloc(). So free_empty_tables() implements a floor and ceiling
> method which is borrowed from user page table tear with free_pgd_range()
> which skips freeing page table pages if intermediate address range is not
> aligned or maximum floor-ceiling might not own the entire page table page.
> 
> While here update arch_add_memory() to handle __add_pages() failures by
> just unmapping recently added kernel linear mapping. Now enable memory hot
> remove on arm64 platforms by default with ARCH_ENABLE_MEMORY_HOTREMOVE.
> 
> This implementation is overall inspired from kernel page table tear down
> procedure on X86 architecture and user page table tear down method.
> 
> Acked-by: Steve Capper <steve.capper@arm.com>
> Acked-by: David Hildenbrand <david@redhat.com>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>

Given the amount of changes since version 7, do the acks still stand?

[...]
> +static void free_pte_table(pmd_t *pmdp, unsigned long addr, unsigned long end,
> +			   unsigned long floor, unsigned long ceiling)
> +{
> +	struct page *page;
> +	pte_t *ptep;
> +	int i;
> +
> +	if (!pgtable_range_aligned(addr, end, floor, ceiling, PMD_MASK))
> +		return;
> +
> +	ptep = pte_offset_kernel(pmdp, 0UL);
> +	for (i = 0; i < PTRS_PER_PTE; i++) {
> +		if (!pte_none(READ_ONCE(ptep[i])))
> +			return;
> +	}
> +
> +	page = pmd_page(READ_ONCE(*pmdp));

Arguably, that's not the pmd page we are freeing here. Even if you get
the same result, pmd_page() is normally used for huge pages pointed at
by the pmd entry. Since you have the ptep already, why not use
virt_to_page(ptep)?

> +	pmd_clear(pmdp);
> +	__flush_tlb_kernel_pgtable(addr);
> +	free_hotplug_pgtable_page(page);
> +}
> +
> +static void free_pmd_table(pud_t *pudp, unsigned long addr, unsigned long end,
> +			   unsigned long floor, unsigned long ceiling)
> +{
> +	struct page *page;
> +	pmd_t *pmdp;
> +	int i;
> +
> +	if (CONFIG_PGTABLE_LEVELS <= 2)
> +		return;
> +
> +	if (!pgtable_range_aligned(addr, end, floor, ceiling, PUD_MASK))
> +		return;
> +
> +	pmdp = pmd_offset(pudp, 0UL);
> +	for (i = 0; i < PTRS_PER_PMD; i++) {
> +		if (!pmd_none(READ_ONCE(pmdp[i])))
> +			return;
> +	}
> +
> +	page = pud_page(READ_ONCE(*pudp));

Same here, virt_to_page(pmdp).

> +	pud_clear(pudp);
> +	__flush_tlb_kernel_pgtable(addr);
> +	free_hotplug_pgtable_page(page);
> +}
> +
> +static void free_pud_table(pgd_t *pgdp, unsigned long addr, unsigned  long end,
> +			   unsigned long floor, unsigned long ceiling)
> +{
> +	struct page *page;
> +	pud_t *pudp;
> +	int i;
> +
> +	if (CONFIG_PGTABLE_LEVELS <= 3)
> +		return;
> +
> +	if (!pgtable_range_aligned(addr, end, floor, ceiling, PGDIR_MASK))
> +		return;
> +
> +	pudp = pud_offset(pgdp, 0UL);
> +	for (i = 0; i < PTRS_PER_PUD; i++) {
> +		if (!pud_none(READ_ONCE(pudp[i])))
> +			return;
> +	}
> +
> +	page = pgd_page(READ_ONCE(*pgdp));

As above.

> +	pgd_clear(pgdp);
> +	__flush_tlb_kernel_pgtable(addr);
> +	free_hotplug_pgtable_page(page);
> +}
> +
> +static void unmap_hotplug_pte_range(pmd_t *pmdp, unsigned long addr,
> +				    unsigned long end, bool sparse_vmap)
> +{
> +	struct page *page;
> +	pte_t *ptep, pte;
> +
> +	do {
> +		ptep = pte_offset_kernel(pmdp, addr);
> +		pte = READ_ONCE(*ptep);
> +		if (pte_none(pte))
> +			continue;
> +
> +		WARN_ON(!pte_present(pte));
> +		page = sparse_vmap ? pte_page(pte) : NULL;
> +		pte_clear(&init_mm, addr, ptep);
> +		flush_tlb_kernel_range(addr, addr + PAGE_SIZE);
> +		if (sparse_vmap)
> +			free_hotplug_page_range(page, PAGE_SIZE);

You could only set 'page' if sparse_vmap (or even drop 'page' entirely).
The compiler is probably smart enough to optimise it but using a
pointless ternary operator just makes the code harder to follow.

> +	} while (addr += PAGE_SIZE, addr < end);
> +}
[...]
> +static void free_empty_pte_table(pmd_t *pmdp, unsigned long addr,
> +				 unsigned long end)
> +{
> +	pte_t *ptep, pte;
> +
> +	do {
> +		ptep = pte_offset_kernel(pmdp, addr);
> +		pte = READ_ONCE(*ptep);
> +		WARN_ON(!pte_none(pte));
> +	} while (addr += PAGE_SIZE, addr < end);
> +}
> +
> +static void free_empty_pmd_table(pud_t *pudp, unsigned long addr,
> +				 unsigned long end, unsigned long floor,
> +				 unsigned long ceiling)
> +{
> +	unsigned long next;
> +	pmd_t *pmdp, pmd;
> +
> +	do {
> +		next = pmd_addr_end(addr, end);
> +		pmdp = pmd_offset(pudp, addr);
> +		pmd = READ_ONCE(*pmdp);
> +		if (pmd_none(pmd))
> +			continue;
> +
> +		WARN_ON(!pmd_present(pmd) || !pmd_table(pmd) || pmd_sect(pmd));
> +		free_empty_pte_table(pmdp, addr, next);
> +		free_pte_table(pmdp, addr, next, floor, ceiling);

Do we need two closely named functions here? Can you not collapse
free_empty_pud_table() and free_pte_table() into a single one? The same
comment for the pmd/pud variants. I just find this confusing.

> +	} while (addr = next, addr < end);

You could make these function in two steps: first, as above, invoke the
next level recursively; second, after the do..while loop, check whether
it's empty and free the pmd page as in free_pmd_table().

> +}
[...]

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
