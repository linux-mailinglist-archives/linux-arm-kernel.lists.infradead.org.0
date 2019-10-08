Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D587CF1C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 06:36:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/3b2fgseOBQQI61EQrIrOYmyFxa+RaM8R04jYJoXL+A=; b=hdgyJEfUwd2ZJ3
	JafmdGOWuwwj+yy1i14O8vOjH9ahaWsnIpM8DfFOQEDnpihOJzaCxbR7Xsw+TaXHjKiESyMTHvgLZ
	0h5RLjTBRENBxdggllN1YxgMfTXebPacH4dCE+8CAVtDYiI8pR8X7OxG4ZxfWHtameFUlkB96B/Vs
	/Pr84KnCDdE7nkhDB2T1EucHo7GXok0z3E7sU+HEdBEqUma4CfcaIaoVkPvD3YVSs2/s2qV6P7egD
	BGBtHLrAxu7OcazPF+Jojyj6VfWIMUMiGuWJvPqSAPKjH6zxZl3ROE/ERvCy1WbLBaiP5JN8I8Yah
	C00Kda75hM31o4rpndAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHhER-0005N3-SS; Tue, 08 Oct 2019 04:36:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHhEJ-0005MU-JN
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 04:36:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A34FF142F;
 Mon,  7 Oct 2019 21:36:09 -0700 (PDT)
Received: from [10.162.40.139] (p8cg001049571a15.blr.arm.com [10.162.40.139])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 A1A7B3F703; Mon,  7 Oct 2019 21:36:02 -0700 (PDT)
Subject: Re: [PATCH V8 2/2] arm64/mm: Enable memory hot remove
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1569217425-23777-1-git-send-email-anshuman.khandual@arm.com>
 <1569217425-23777-3-git-send-email-anshuman.khandual@arm.com>
 <20191007141738.GA93112@E120351.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <6c277085-a430-eab4-3a4e-99fcfa170c10@arm.com>
Date: Tue, 8 Oct 2019 10:06:26 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191007141738.GA93112@E120351.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_213611_727546_D4F31915 
X-CRM114-Status: GOOD (  28.99  )
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



On 10/07/2019 07:47 PM, Catalin Marinas wrote:
> On Mon, Sep 23, 2019 at 11:13:45AM +0530, Anshuman Khandual wrote:
>> The arch code for hot-remove must tear down portions of the linear map and
>> vmemmap corresponding to memory being removed. In both cases the page
>> tables mapping these regions must be freed, and when sparse vmemmap is in
>> use the memory backing the vmemmap must also be freed.
>>
>> This patch adds unmap_hotplug_range() and free_empty_tables() helpers which
>> can be used to tear down either region and calls it from vmemmap_free() and
>> ___remove_pgd_mapping(). The sparse_vmap argument determines whether the
>> backing memory will be freed.
> 
> Can you change the 'sparse_vmap' name to something more meaningful which
> would suggest freeing of the backing memory?

free_mapped_mem or free_backed_mem ? Even shorter forms like free_mapped or
free_backed might do as well. Do you have a particular preference here ? But
yes, sparse_vmap has been very much specific to vmemmap for these functions
which are now very generic in nature.

> 
>> It makes two distinct passes over the kernel page table. In the first pass
>> with unmap_hotplug_range() it unmaps, invalidates applicable TLB cache and
>> frees backing memory if required (vmemmap) for each mapped leaf entry. In
>> the second pass with free_empty_tables() it looks for empty page table
>> sections whose page table page can be unmapped, TLB invalidated and freed.
>>
>> While freeing intermediate level page table pages bail out if any of its
>> entries are still valid. This can happen for partially filled kernel page
>> table either from a previously attempted failed memory hot add or while
>> removing an address range which does not span the entire page table page
>> range.
>>
>> The vmemmap region may share levels of table with the vmalloc region.
>> There can be conflicts between hot remove freeing page table pages with
>> a concurrent vmalloc() walking the kernel page table. This conflict can
>> not just be solved by taking the init_mm ptl because of existing locking
>> scheme in vmalloc(). So free_empty_tables() implements a floor and ceiling
>> method which is borrowed from user page table tear with free_pgd_range()
>> which skips freeing page table pages if intermediate address range is not
>> aligned or maximum floor-ceiling might not own the entire page table page.
>>
>> While here update arch_add_memory() to handle __add_pages() failures by
>> just unmapping recently added kernel linear mapping. Now enable memory hot
>> remove on arm64 platforms by default with ARCH_ENABLE_MEMORY_HOTREMOVE.
>>
>> This implementation is overall inspired from kernel page table tear down
>> procedure on X86 architecture and user page table tear down method.
>>
>> Acked-by: Steve Capper <steve.capper@arm.com>
>> Acked-by: David Hildenbrand <david@redhat.com>
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> 
> Given the amount of changes since version 7, do the acks still stand?

I had taken the liberty to carry them till V7 where the implementation has
been sort of structurally similar but as you mention, there have been some
basic changes in the approach since V7. Will drop these tags in next version
and request their fresh ACKs once again.

> 
> [...]
>> +static void free_pte_table(pmd_t *pmdp, unsigned long addr, unsigned long end,
>> +			   unsigned long floor, unsigned long ceiling)
>> +{
>> +	struct page *page;
>> +	pte_t *ptep;
>> +	int i;
>> +
>> +	if (!pgtable_range_aligned(addr, end, floor, ceiling, PMD_MASK))
>> +		return;
>> +
>> +	ptep = pte_offset_kernel(pmdp, 0UL);
>> +	for (i = 0; i < PTRS_PER_PTE; i++) {
>> +		if (!pte_none(READ_ONCE(ptep[i])))
>> +			return;
>> +	}
>> +
>> +	page = pmd_page(READ_ONCE(*pmdp));
> 
> Arguably, that's not the pmd page we are freeing here. Even if you get
> the same result, pmd_page() is normally used for huge pages pointed at
> by the pmd entry. Since you have the ptep already, why not use
> virt_to_page(ptep)?

Makes sense, will do.

> 
>> +	pmd_clear(pmdp);
>> +	__flush_tlb_kernel_pgtable(addr);
>> +	free_hotplug_pgtable_page(page);
>> +}
>> +
>> +static void free_pmd_table(pud_t *pudp, unsigned long addr, unsigned long end,
>> +			   unsigned long floor, unsigned long ceiling)
>> +{
>> +	struct page *page;
>> +	pmd_t *pmdp;
>> +	int i;
>> +
>> +	if (CONFIG_PGTABLE_LEVELS <= 2)
>> +		return;
>> +
>> +	if (!pgtable_range_aligned(addr, end, floor, ceiling, PUD_MASK))
>> +		return;
>> +
>> +	pmdp = pmd_offset(pudp, 0UL);
>> +	for (i = 0; i < PTRS_PER_PMD; i++) {
>> +		if (!pmd_none(READ_ONCE(pmdp[i])))
>> +			return;
>> +	}
>> +
>> +	page = pud_page(READ_ONCE(*pudp));
> 
> Same here, virt_to_page(pmdp).

Will do.

> 
>> +	pud_clear(pudp);
>> +	__flush_tlb_kernel_pgtable(addr);
>> +	free_hotplug_pgtable_page(page);
>> +}
>> +
>> +static void free_pud_table(pgd_t *pgdp, unsigned long addr, unsigned  long end,
>> +			   unsigned long floor, unsigned long ceiling)
>> +{
>> +	struct page *page;
>> +	pud_t *pudp;
>> +	int i;
>> +
>> +	if (CONFIG_PGTABLE_LEVELS <= 3)
>> +		return;
>> +
>> +	if (!pgtable_range_aligned(addr, end, floor, ceiling, PGDIR_MASK))
>> +		return;
>> +
>> +	pudp = pud_offset(pgdp, 0UL);
>> +	for (i = 0; i < PTRS_PER_PUD; i++) {
>> +		if (!pud_none(READ_ONCE(pudp[i])))
>> +			return;
>> +	}
>> +
>> +	page = pgd_page(READ_ONCE(*pgdp));
> 
> As above.

Will do.

> 
>> +	pgd_clear(pgdp);
>> +	__flush_tlb_kernel_pgtable(addr);
>> +	free_hotplug_pgtable_page(page);
>> +}
>> +
>> +static void unmap_hotplug_pte_range(pmd_t *pmdp, unsigned long addr,
>> +				    unsigned long end, bool sparse_vmap)
>> +{
>> +	struct page *page;
>> +	pte_t *ptep, pte;
>> +
>> +	do {
>> +		ptep = pte_offset_kernel(pmdp, addr);
>> +		pte = READ_ONCE(*ptep);
>> +		if (pte_none(pte))
>> +			continue;
>> +
>> +		WARN_ON(!pte_present(pte));
>> +		page = sparse_vmap ? pte_page(pte) : NULL;
>> +		pte_clear(&init_mm, addr, ptep);
>> +		flush_tlb_kernel_range(addr, addr + PAGE_SIZE);
>> +		if (sparse_vmap)
>> +			free_hotplug_page_range(page, PAGE_SIZE);
> 
> You could only set 'page' if sparse_vmap (or even drop 'page' entirely).

I am afraid 'page' is being used to hold pte_page(pte) extraction which
needs to be freed (sparse_vmap) as we are going to clear the ptep entry
in the next statement and lose access to it for good. We will need some
where to hold onto pte_page(pte) across pte_clear() as we cannot free it
before clearing it's entry and flushing the TLB. Hence wondering how the
'page' can be completely dropped.

> The compiler is probably smart enough to optimise it but using a
> pointless ternary operator just makes the code harder to follow.

Not sure I got this but are you suggesting for an 'if' statement here

if (sparse_vmap)
	page = pte_page(pte);

instead of the current assignment ?

page = sparse_vmap ? pte_page(pte) : NULL;

> 
>> +	} while (addr += PAGE_SIZE, addr < end);
>> +}
> [...]
>> +static void free_empty_pte_table(pmd_t *pmdp, unsigned long addr,
>> +				 unsigned long end)
>> +{
>> +	pte_t *ptep, pte;
>> +
>> +	do {
>> +		ptep = pte_offset_kernel(pmdp, addr);
>> +		pte = READ_ONCE(*ptep);
>> +		WARN_ON(!pte_none(pte));
>> +	} while (addr += PAGE_SIZE, addr < end);
>> +}
>> +
>> +static void free_empty_pmd_table(pud_t *pudp, unsigned long addr,
>> +				 unsigned long end, unsigned long floor,
>> +				 unsigned long ceiling)
>> +{
>> +	unsigned long next;
>> +	pmd_t *pmdp, pmd;
>> +
>> +	do {
>> +		next = pmd_addr_end(addr, end);
>> +		pmdp = pmd_offset(pudp, addr);
>> +		pmd = READ_ONCE(*pmdp);
>> +		if (pmd_none(pmd))
>> +			continue;
>> +
>> +		WARN_ON(!pmd_present(pmd) || !pmd_table(pmd) || pmd_sect(pmd));
>> +		free_empty_pte_table(pmdp, addr, next);
>> +		free_pte_table(pmdp, addr, next, floor, ceiling);
> 
> Do we need two closely named functions here? Can you not collapse
> free_empty_pud_table() and free_pte_table() into a single one? The same
> comment for the pmd/pud variants. I just find this confusing.

The two functions could be collapsed into a single one. But just wanted to
keep free_pxx_table() part which checks floor/ceiling alignment, non-zero
entries clear off the actual page table walking.

> 
>> +	} while (addr = next, addr < end);
> 
> You could make these function in two steps: first, as above, invoke the
> next level recursively; second, after the do..while loop, check whether
> it's empty and free the pmd page as in free_pmd_table().

free_pte_table() freeing attempt actually belongs to free_empty_pte_table().
Yes, free_pte_table() part can be moved inside free_empty_pte_table() after
it's do..while(). Also s/free_pte_table/free_pte_page to make it sound more
distinct with respect to free_empty_pte_table(). Just that the pgtable page
freeing part is still wrapped in a helper function to hide it's details.

But if you prefer not to have these helpers free_pxx_page() and directly
encode the second step in free_empty_pxx_table(), then will that instead.

> 
>> +}
> [...]
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
