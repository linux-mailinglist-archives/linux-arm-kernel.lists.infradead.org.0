Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AF91FECF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 07:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Vu9qzEZ7yPA2s4HPDrpbxH5HnmPQ5SvSUxSzFaVxqw=; b=qImvBZifj2vIH7
	Dr0068CAEM8jjndiToQMZWYHt1TCnif39Q7xL3xVIF38WjOzdbhp/Sr6FhihxB0ETjQYLy6F1ZeJp
	oX95gDJwva1TQIoqgVjEg8J9toTUM9p/DSA2iqRojk0b6SFvRgAnM55XD7S7VlveyTMYNnPgG1pO5
	k6uheycraZMba9eGRwCCF3O+77oeA4tTD4EzBimrvWGVpLxJknU4T3fPZq8pGxHxIG28GXGMiC4Cl
	xyoVCBL2XtWp4FZAwlJS2448A4xopFkFyNii4HPbM2KQu0y+JhqlAH53qbDrySEhdTWwRF0k9eq7f
	R4NyOZMp73X7IhpW4DJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR92r-000505-Fl; Thu, 16 May 2019 05:35:09 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR92f-0004zU-HS
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 05:34:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 41FA11715;
 Wed, 15 May 2019 22:34:54 -0700 (PDT)
Received: from [10.163.1.137] (unknown [10.163.1.137])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 262853F71E;
 Wed, 15 May 2019 22:34:41 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V3 4/4] arm64/mm: Enable memory hot remove
To: Mark Rutland <mark.rutland@arm.com>
References: <1557824407-19092-1-git-send-email-anshuman.khandual@arm.com>
 <1557824407-19092-5-git-send-email-anshuman.khandual@arm.com>
 <20190515114911.GC23983@lakrids.cambridge.arm.com>
Message-ID: <499ebd4b-c905-dd99-3fc7-66050d89dc35@arm.com>
Date: Thu, 16 May 2019 11:04:48 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190515114911.GC23983@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_223457_590259_3BD12C06 
X-CRM114-Status: GOOD (  36.61  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: cai@lca.pw, mhocko@suse.com, ira.weiny@intel.com, david@redhat.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 logang@deltatee.com, james.morse@arm.com, cpandya@codeaurora.org,
 arunks@codeaurora.org, akpm@linux-foundation.org, osalvador@suse.de,
 mgorman@techsingularity.net, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/15/2019 05:19 PM, Mark Rutland wrote:
> Hi Anshuman,
> 
> On Tue, May 14, 2019 at 02:30:07PM +0530, Anshuman Khandual wrote:
>> Memory removal from an arch perspective involves tearing down two different
>> kernel based mappings i.e vmemmap and linear while releasing related page
>> table and any mapped pages allocated for given physical memory range to be
>> removed.
>>
>> Define a common kernel page table tear down helper remove_pagetable() which
>> can be used to unmap given kernel virtual address range. In effect it can
>> tear down both vmemap or kernel linear mappings. This new helper is called
>> from both vmemamp_free() and ___remove_pgd_mapping() during memory removal.
>>
>> For linear mapping there are no actual allocated pages which are mapped to
>> create the translation. Any pfn on a given entry is derived from physical
>> address (__va(PA) --> PA) whose linear translation is to be created. They
>> need not be freed as they were never allocated in the first place. But for
>> vmemmap which is a real virtual mapping (like vmalloc) physical pages are
>> allocated either from buddy or memblock which get mapped in the kernel page
>> table. These allocated and mapped pages need to be freed during translation
>> tear down. But page table pages need to be freed in both these cases.
> 
> As previously discussed, we should only hot-remove memory which was
> hot-added, so we shouldn't encounter memory allocated from memblock.

Right, not applicable any more. Will drop this word.

> 
>> These mappings need to be differentiated while deciding if a mapped page at
>> any level i.e [pte|pmd|pud]_page() should be freed or not. Callers for the
>> mapping tear down process should pass on 'sparse_vmap' variable identifying
>> kernel vmemmap mappings.
> 
> I think that you can simplify the paragraphs above down to:
> 
>   The arch code for hot-remove must tear down portions of the linear map
>   and vmemmap corresponding to memory being removed. In both cases the
>   page tables mapping these regions must be freed, and when sparse
>   vmemmap is in use the memory backing the vmemmap must also be freed.
> 
>   This patch adds a new remove_pagetable() helper which can be used to
>   tear down either region, and calls it from vmemmap_free() and
>   ___remove_pgd_mapping(). The sparse_vmap argument determines whether
>   the backing memory will be freed.

The current one is bit more descriptive on detail. Anyways will replace with
the above writeup if that is preferred.

> 
> Could you add a paragraph describing when we can encounter partial
> tables (for which we need the p??_none() checks? IIUC that's not just> for cleaning up a failed hot-add, and it would be good to call that out.

Sure, will do.

> 
>> While here update arch_add_mempory() to handle __add_pages() failures by
>> just unmapping recently added kernel linear mapping. Now enable memory hot
>> remove on arm64 platforms by default with ARCH_ENABLE_MEMORY_HOTREMOVE.
> 
> Nit: s/arch_add_mempory/arch_add_memory/.

Oops, will do.

> 
> [...]
> 
>> +#if (CONFIG_PGTABLE_LEVELS > 2)
>> +static void free_pmd_table(pmd_t *pmdp, pud_t *pudp, unsigned long addr)
>> +{
>> +	struct page *page;
>> +	int i;
>> +
>> +	for (i = 0; i < PTRS_PER_PMD; i++) {
>> +		if (!pmd_none(pmdp[i]))
>> +			return;
>> +	}
>> +
>> +	page = pud_page(*pudp);
>> +	pud_clear(pudp);
>> +	__flush_tlb_kernel_pgtable(addr);
>> +	free_hotplug_pgtable_page(page);
>> +}
>> +#else
>> +static void free_pmd_table(pmd_t *pmdp, pud_t *pudp, unsigned long addr) { }
>> +#endif
> 
> Can we fold the check in and remove the ifdeferry? e.g.
> 
> static void free_pmd_table(pmd_t *pmdp, pud_t *pudp, unsigned long addr)
> {
> 	struct page *page;
> 	int i;
> 
> 	if (CONFIG_PGTABLE_LEVELS <= 2)
> 		return;
> 	
> 	...
> }
> 
> ... that would ensure that we always got build coverage here, and

Thats true. This will get compiled for all combinations.

> minimize duplication. We do similar in map_kernel() and
> early_fixmap_init() today.
> 
> Likewise for the other levels.

Sure, will do.

> 
> For arm64, the general policy is to use READ_ONCE() when reading a page
> table entry (even if not strictly necessary), so please do so
> consistently.

For the likes "page = p???_page(*p???p)" which got missed ? Will fix it.

> 
> [...]
> 
>> +static void
>> +remove_pte_table(pmd_t *pmdp, unsigned long addr,
>> +			unsigned long end, bool sparse_vmap)
>> +{
>> +	struct page *page;
>> +	pte_t *ptep;
>> +	unsigned long start = addr;
>> +
>> +	for (; addr < end; addr += PAGE_SIZE) {
>> +		ptep = pte_offset_kernel(pmdp, addr);
>> +		if (!pte_present(*ptep))
>> +			continue;
>> +
>> +		if (sparse_vmap) {
>> +			page = pte_page(READ_ONCE(*ptep));
>> +			free_hotplug_page_range(page, PAGE_SIZE);
>> +		}
>> +		pte_clear(&init_mm, addr, ptep);
>> +	}
>> +	flush_tlb_kernel_range(start, end);
>> +}
> 
> Please use a temporary pte variable here, e.g.
> 
> static void remove_pte_table(pmd_t *pmdp, unsigned long addr,
> 			     unsigned long end, bool sparse_vmap)
> {
> 	unsigned long start = addr;
> 	struct page *page;
> 	pte_t *ptep, pte;
> 
> 	for (; addr < end; addr += PAGE_SIZE) {
> 		ptep = pte_offset_kernel(pmdp, addr);
> 		pte = READ_ONCE(*ptep);
> 
> 		if (!pte_present(pte))
> 			continue;
> 		
> 		if (sparse_vmap) {
> 			page = pte_page(pte);
> 			free_hotplug_page_range(page, PAGE_SIZE);
> 		}
> 
> 		pte_clear(&init_mm, addr, ptep);
> 	}
> 
> 	flush_tlb_kernel_range(start, end);
> }
> 
> Likewise for the other levels.

Makes sense. Will do.

> 
> [...]
> 
>> +static void
>> +remove_pagetable(unsigned long start, unsigned long end, bool sparse_vmap)
>> +{
>> +	unsigned long addr, next;
>> +	pud_t *pudp_base;
>> +	pgd_t *pgdp;
>> +
>> +	spin_lock(&init_mm.page_table_lock);
> 
> It would be good to explain why we need to take the ptl here.

Will update both commit message and add an in-code comment here.

> 
> IIUC that shouldn't be necessary for the linear map. Am I mistaken?

Its not absolutely necessary for linear map right now because both memory hot
plug & ptdump which modifies or walks the page table ranges respectively take
memory hotplug lock. That apart, no other callers creates or destroys linear
mapping at runtime.

> 
> Is there a specific race when tearing down the vmemmap?

This is trickier than linear map. vmemmap additions would be protected with
memory hotplug lock but this can potential collide with vmalloc/IO regions.
Even if they dont right now that will be because they dont share intermediate
page table levels.

Memory hot-remove is not a very performance critical path. Not even as critical
as memory hot add. Hence its not worth relying on current non-overlapping kernel
virtual address range placement and reason it for not taking this critical lock
which might be problematic if things change later. Lets be on the safer side and
keep this lock.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
