Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E6F3C49A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 08:59:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ZucKY8L23PgOTpEnU6Ddqfx9sm59+2AyMBahqOSgmY=; b=NlPDZDPdx3W48q
	Lpw4d7zoVEjUE7p3EV1X/yj44wKRFeFngevUagqbjpxULPyb1So2Omeb2iVJ47mfj2DJozzpjnaGl
	zuYdyzimoeia8O1KXNkZC8p7tE5pZtIIXh/H8LJZpy8DnH2SBuwqol2CqMHCiKzYmcg6O68tFY4Js
	ZrtA3UgWu8kQfKbgr7sGjFcONR0V9f3OQNiLbMgzo/E3tuSBmpqczf9zriHc3ch+/LH6PcX3lPCKP
	0HqMqfJFhC4mIKo/SxG/S76WiatfJVEXZ1IyK9AvYZdzQLvqurRlSM1x8zcnRHTZLwhMTFWmbm4Rb
	AzuaWUlAwmNiKJjtRC0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haakp-0006Vu-0f; Tue, 11 Jun 2019 06:59:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haakV-0006VT-CO
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 06:59:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 95920346;
 Mon, 10 Jun 2019 23:59:13 -0700 (PDT)
Received: from [10.162.43.135] (p8cg001049571a15.blr.arm.com [10.162.43.135])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 99F453F73C; Mon, 10 Jun 2019 23:59:11 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 4/4] mm/vmalloc: Hugepage vmalloc mappings
To: Nicholas Piggin <npiggin@gmail.com>, linux-mm@kvack.org
References: <20190610043838.27916-1-npiggin@gmail.com>
 <20190610043838.27916-4-npiggin@gmail.com>
 <a3b2dcb1-148e-b2f1-e181-92c16d868bc9@arm.com>
 <1560210095.fpemv3ultp.astroid@bobo.none>
Message-ID: <2bd573d5-84ab-4b27-2126-863681ca3ef4@arm.com>
Date: Tue, 11 Jun 2019 12:29:30 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1560210095.fpemv3ultp.astroid@bobo.none>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_235915_518027_E00948C7 
X-CRM114-Status: GOOD (  36.72  )
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
Cc: linuxppc-dev@lists.ozlabs.org, Ard Biesheuvel <Ard.Biesheuvel@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/11/2019 05:46 AM, Nicholas Piggin wrote:
> Anshuman Khandual's on June 10, 2019 6:53 pm:
>> On 06/10/2019 10:08 AM, Nicholas Piggin wrote:
>>> For platforms that define HAVE_ARCH_HUGE_VMAP, have vmap allow vmalloc to
>>> allocate huge pages and map them.
>>
>> IIUC that extends HAVE_ARCH_HUGE_VMAP from iormap to vmalloc. 
>>
>>>
>>> This brings dTLB misses for linux kernel tree `git diff` from 45,000 to
>>> 8,000 on a Kaby Lake KVM guest with 8MB dentry hash and mitigations=off
>>> (performance is in the noise, under 1% difference, page tables are likely
>>> to be well cached for this workload). Similar numbers are seen on POWER9.
>>
>> Sure will try this on arm64.
>>
>>>
>>> Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
>>> ---
>>>  include/asm-generic/4level-fixup.h |   1 +
>>>  include/asm-generic/5level-fixup.h |   1 +
>>>  include/linux/vmalloc.h            |   1 +
>>>  mm/vmalloc.c                       | 132 +++++++++++++++++++++++------
>>>  4 files changed, 107 insertions(+), 28 deletions(-)
>>>
>>> diff --git a/include/asm-generic/4level-fixup.h b/include/asm-generic/4level-fixup.h
>>> index e3667c9a33a5..3cc65a4dd093 100644
>>> --- a/include/asm-generic/4level-fixup.h
>>> +++ b/include/asm-generic/4level-fixup.h
>>> @@ -20,6 +20,7 @@
>>>  #define pud_none(pud)			0
>>>  #define pud_bad(pud)			0
>>>  #define pud_present(pud)		1
>>> +#define pud_large(pud)			0
>>>  #define pud_ERROR(pud)			do { } while (0)
>>>  #define pud_clear(pud)			pgd_clear(pud)
>>>  #define pud_val(pud)			pgd_val(pud)
>>> diff --git a/include/asm-generic/5level-fixup.h b/include/asm-generic/5level-fixup.h
>>> index bb6cb347018c..c4377db09a4f 100644
>>> --- a/include/asm-generic/5level-fixup.h
>>> +++ b/include/asm-generic/5level-fixup.h
>>> @@ -22,6 +22,7 @@
>>>  #define p4d_none(p4d)			0
>>>  #define p4d_bad(p4d)			0
>>>  #define p4d_present(p4d)		1
>>> +#define p4d_large(p4d)			0
>>>  #define p4d_ERROR(p4d)			do { } while (0)
>>>  #define p4d_clear(p4d)			pgd_clear(p4d)
>>>  #define p4d_val(p4d)			pgd_val(p4d)
>>
>> Both of these are required from vmalloc_to_page() which as per a later comment
>> should be part of a prerequisite patch before this series.
> 
> I'm not sure what you mean. This patch is where they get used.

In case you move out vmalloc_to_page() changes to a separate patch.

> 
> Possibly I could split this and the vmalloc_to_page change out. I'll
> consider it.
> 
>>> diff --git a/include/linux/vmalloc.h b/include/linux/vmalloc.h
>>> index 812bea5866d6..4c92dc608928 100644
>>> --- a/include/linux/vmalloc.h
>>> +++ b/include/linux/vmalloc.h
>>> @@ -42,6 +42,7 @@ struct vm_struct {
>>>  	unsigned long		size;
>>>  	unsigned long		flags;
>>>  	struct page		**pages;
>>> +	unsigned int		page_shift;
>>
>> So the entire vm_struct will be mapped with a single page_shift. It cannot have
>> mix and match mappings with PAGE_SIZE, PMD_SIZE, PUD_SIZE etc in case the
>> allocation fails for larger ones, falling back etc what over other reasons.
> 
> For now, yes. I have a bit of follow up work to improve that and make
> it able to fall back, but it's a bit more churn and not a significant
> benefit just yet because there are not a lot of very large vmallocs
> (except the early hashes which can be satisfied with large allocs).

Right but it will make this new feature complete like ioremap which logically
supports till P4D (though AFAICT not used). If there are no actual vmalloc
requests that large it is fine. Allocation attempts will start from the page
table level depending on the requested size. It is better to have PUD/P4D
considerations now rather than trying to after fit it later.

> 
>>
>>>  	unsigned int		nr_pages;
>>>  	phys_addr_t		phys_addr;
>>>  	const void		*caller;
>>> diff --git a/mm/vmalloc.c b/mm/vmalloc.c
>>> index dd27cfb29b10..0cf8e861caeb 100644
>>> --- a/mm/vmalloc.c
>>> +++ b/mm/vmalloc.c
>>> @@ -36,6 +36,7 @@
>>>  #include <linux/rbtree_augmented.h>
>>>  
>>>  #include <linux/uaccess.h>
>>> +#include <asm/pgtable.h>
>>>  #include <asm/tlbflush.h>
>>>  #include <asm/shmparam.h>
>>>  
>>> @@ -440,6 +441,41 @@ static int vmap_pages_range(unsigned long start, unsigned long end,
>>>  	return ret;
>>>  }
>>>  
>>> +#ifdef CONFIG_HAVE_ARCH_HUGE_VMAP
>>> +static int vmap_hpages_range(unsigned long start, unsigned long end,
>>
>> A small nit (if you agree) s/hpages/huge_pages/
> 
> Hmm. It's not actually a good function name because it can do small
> pages as well. vmap_pages_size_range or something may be better.

Right.

> 
>>
>>> +				   pgprot_t prot, struct page **pages,
>>
>> Re-order (prot <---> pages) just to follow the standard like before.
> 
> Will do.
> 
>>> +				   unsigned int page_shift)
>>> +{
>>> +	unsigned long addr = start;
>>> +	unsigned int i, nr = (end - start) >> (PAGE_SHIFT + page_shift);
>>
>> s/nr/nr_huge_pages ?
> 
> Sure.
> 
>> Also should not we check for the alignment of the range [start...end] with
>> respect to (1UL << [PAGE_SHIFT + page_shift]).
> 
> The caller should if it specifies large page. Could check and -EINVAL
> for incorrect alignment.

That might be a good check here.

> 
>>> +
>>> +	for (i = 0; i < nr; i++) {
>>> +		int err;
>>> +
>>> +		err = vmap_range_noflush(addr,
>>> +					addr + (PAGE_SIZE << page_shift),
>>> +					__pa(page_address(pages[i])), prot,
>>> +					PAGE_SHIFT + page_shift);
>>> +		if (err)
>>> +			return err;
>>> +
>>> +		addr += PAGE_SIZE << page_shift;
>>> +	}
>>> +	flush_cache_vmap(start, end);
>>> +
>>> +	return nr;
>>> +}
>>> +#else
>>> +static int vmap_hpages_range(unsigned long start, unsigned long end,
>>> +			   pgprot_t prot, struct page **pages,
>>> +			   unsigned int page_shift)
>>> +{
>>> +	BUG_ON(page_shift != PAGE_SIZE);
>>> +	return vmap_pages_range(start, end, prot, pages);
>>> +}
>>> +#endif
>>> +
>>> +
>>>  int is_vmalloc_or_module_addr(const void *x)
>>>  {
>>>  	/*
>>> @@ -462,7 +498,7 @@ struct page *vmalloc_to_page(const void *vmalloc_addr)
>>>  {
>>>  	unsigned long addr = (unsigned long) vmalloc_addr;
>>>  	struct page *page = NULL;
>>> -	pgd_t *pgd = pgd_offset_k(addr);
>>> +	pgd_t *pgd;
>>>  	p4d_t *p4d;
>>>  	pud_t *pud;
>>>  	pmd_t *pmd;
>>> @@ -474,27 +510,38 @@ struct page *vmalloc_to_page(const void *vmalloc_addr)
>>>  	 */
>>>  	VIRTUAL_BUG_ON(!is_vmalloc_or_module_addr(vmalloc_addr));
>>>  
>>> +	pgd = pgd_offset_k(addr);
>>>  	if (pgd_none(*pgd))
>>>  		return NULL;
>>> +
>>
>> Small nit. Stray line here.
>>
>> 'pgd' related changes here seem to be just cleanups and should not part of this patch.
> 
> Yeah I figure it doesn't matter to make small changes close by, but
> maybe that's more frowned upon now for git blame?

Right. But I guess it should be okay if you can make vmalloc_to_page()
changes as a separate patch. This patch which adds a new feature should
not have any clean ups IMHO.

> 
>>>  	p4d = p4d_offset(pgd, addr);
>>>  	if (p4d_none(*p4d))
>>>  		return NULL;
>>> -	pud = pud_offset(p4d, addr);
>>> +#ifdef CONFIG_HAVE_ARCH_HUGE_VMAP
>>> +	if (p4d_large(*p4d))
>>> +		return p4d_page(*p4d) + ((addr & ~P4D_MASK) >> PAGE_SHIFT);
>>> +#endif
>>> +	if (WARN_ON_ONCE(p4d_bad(*p4d)))
>>> +		return NULL;
>>>  
>>> -	/*
>>> -	 * Don't dereference bad PUD or PMD (below) entries. This will also
>>> -	 * identify huge mappings, which we may encounter on architectures
>>> -	 * that define CONFIG_HAVE_ARCH_HUGE_VMAP=y. Such regions will be
>>> -	 * identified as vmalloc addresses by is_vmalloc_addr(), but are
>>> -	 * not [unambiguously] associated with a struct page, so there is
>>> -	 * no correct value to return for them.
>>> -	 */
>>
>> What changed the situation so that we could return struct page for a huge
>> mapping now ?
> 
> For the PUD case? Nothing changed, per se, we I just calculate the
> correct struct page now, so I may return it.

I was just curious what prevented this earlier (before this series). The
comment here and commit message which added this change making me wonder
what was the reason for not doing this earlier.  

> 
>> AFAICT even after this patch, PUD/P4D level huge pages can only
>> be created with ioremap_page_range() not with vmalloc() which creates PMD
>> sized mappings only. Hence if it's okay to dereference struct page of a huge
>> mapping (not withstanding the comment here) it should be part of an earlier
>> patch fixing it first for existing ioremap_page_range() huge mappings.
> 
> Possibly yes, we can consider 029c54b095995 to be a band-aid for huge
> vmaps which is fixed properly by this change, in which case it could
> make sense to break this into its own patch.

On arm64 [pud|pmd]_bad() calls out huge mappings at PUD or PMD. I still wonder what
Ard (copied him now) meant by "not [unambiguously] associated with a struct page".
He also mentioned about compound pages in the commit message. Anyways these makes
sense (fetching the struct page) unless I am missing something. But should be part
of a separate patch.

pXd_page(*pXd) + ((addr & ~PXD_MASK) >> PAGE_SHIFT)

> 
>>
>>> -	WARN_ON_ONCE(pud_bad(*pud));
>>> -	if (pud_none(*pud) || pud_bad(*pud))
>>> +	pud = pud_offset(p4d, addr);
>>> +	if (pud_none(*pud))
>>> +		return NULL;
>>> +#ifdef CONFIG_HAVE_ARCH_HUGE_VMAP
>>> +	if (pud_large(*pud))
>>> +		return pud_page(*pud) + ((addr & ~PUD_MASK) >> PAGE_SHIFT);
>>> +#endif
>>> +	if (WARN_ON_ONCE(pud_bad(*pud)))
>>>  		return NULL;
>>> +
>>>  	pmd = pmd_offset(pud, addr);
>>> -	WARN_ON_ONCE(pmd_bad(*pmd));
>>> -	if (pmd_none(*pmd) || pmd_bad(*pmd))
>>> +	if (pmd_none(*pmd))
>>> +		return NULL;
>>> +#ifdef CONFIG_HAVE_ARCH_HUGE_VMAP
>>> +	if (pmd_large(*pmd))
>>> +		return pmd_page(*pmd) + ((addr & ~PMD_MASK) >> PAGE_SHIFT);
>>> +#endif
>>> +	if (WARN_ON_ONCE(pmd_bad(*pmd)))
>>>  		return NULL;
>>
>> At each page table level, we are checking in this order
>>
>> pXX_none() --> pXX_large() --> pXX_bad()
>>
>> Are not these alternative orders bit better
>>
>> pXX_bad() --> pXX_none() --> pXX_large()
>>
>> Or
>>
>> pXX_none() --> pXX_bad() --> pXX_large()
>>
>> Checking for pXX_bad() at the end does not make much sense.
> 
> Yeah the order tends to go none->bad. It's not 100% clear we can
> test bad before none (at least it goes against convention). But good
> point should be changed to your last sequence I think.

Sure.

> 
>>
>>>  
>>>  	ptep = pte_offset_map(pmd, addr);
>>> @@ -502,6 +549,7 @@ struct page *vmalloc_to_page(const void *vmalloc_addr)
>>>  	if (pte_present(pte))
>>>  		page = pte_page(pte);
>>>  	pte_unmap(ptep);
>>> +
>>
>> Small nit. Stray line here.
> 
> I don't mind adding some lines here and there, like here. It is an
> unrelated (alleged-)cleanup though.
> 
>>
>>>  	return page;
>>>  }
>>>  EXPORT_SYMBOL(vmalloc_to_page);
>>> @@ -2185,8 +2233,9 @@ static struct vm_struct *__get_vm_area_node(unsigned long size,
>>>  		return NULL;
>>>  
>>>  	if (flags & VM_IOREMAP)
>>> -		align = 1ul << clamp_t(int, get_count_order_long(size),
>>> -				       PAGE_SHIFT, IOREMAP_MAX_ORDER);
>>> +		align = max(align,
>>> +				1ul << clamp_t(int, get_count_order_long(size),
>>> +				       PAGE_SHIFT, IOREMAP_MAX_ORDER));
>>>  
>>>  	area = kzalloc_node(sizeof(*area), gfp_mask & GFP_RECLAIM_MASK, node);
>>>  	if (unlikely(!area))
>>> @@ -2398,7 +2447,7 @@ static void __vunmap(const void *addr, int deallocate_pages)
>>>  			struct page *page = area->pages[i];
>>>  
>>>  			BUG_ON(!page);
>>> -			__free_pages(page, 0);
>>> +			__free_pages(page, area->page_shift);
>>
>> area->page_shift' turns out to be effective page order. I think the name here is bit
>> misleading. s/page_shift/page_order or nr_pages should be better IMHO. page_shift is
>> not actual shift (1UL << area->shift to get size) nor does it sound like page 'order'.
> 
> Yeah good point.
> 
>>>  		}
>>>  
>>>  		kvfree(area->pages);
>>> @@ -2541,14 +2590,17 @@ static void *__vmalloc_area_node(struct vm_struct *area, gfp_t gfp_mask,
>>>  				 pgprot_t prot, int node)
>>>  {
>>>  	struct page **pages;
>>> +	unsigned long addr = (unsigned long)area->addr;
>>> +	unsigned long size = get_vm_area_size(area);
>>> +	unsigned int page_shift = area->page_shift;
>>> +	unsigned int shift = page_shift + PAGE_SHIFT;
>>>  	unsigned int nr_pages, array_size, i;
>>>  	const gfp_t nested_gfp = (gfp_mask & GFP_RECLAIM_MASK) | __GFP_ZERO;
>>>  	const gfp_t alloc_mask = gfp_mask | __GFP_NOWARN;
>>>  	const gfp_t highmem_mask = (gfp_mask & (GFP_DMA | GFP_DMA32)) ?
>>> -					0 :
>>> -					__GFP_HIGHMEM;
>>> +					0 : __GFP_HIGHMEM;
>>>  
>>> -	nr_pages = get_vm_area_size(area) >> PAGE_SHIFT;
>>> +	nr_pages = size >> shift;
>>>  	array_size = (nr_pages * sizeof(struct page *));
>>>  
>>>  	area->nr_pages = nr_pages;
>>> @@ -2569,10 +2621,8 @@ static void *__vmalloc_area_node(struct vm_struct *area, gfp_t gfp_mask,
>>>  	for (i = 0; i < area->nr_pages; i++) {
>>>  		struct page *page;
>>>  
>>> -		if (node == NUMA_NO_NODE)
>>> -			page = alloc_page(alloc_mask|highmem_mask);
>>> -		else
>>> -			page = alloc_pages_node(node, alloc_mask|highmem_mask, 0);
>>> +		page = alloc_pages_node(node,
>>> +				alloc_mask|highmem_mask, page_shift);
>>
>> alloc_mask remains the exact same like before even for these high order pages.
> 
> Is there a problem there? I don't see.

There is no problem. I justed noted it.

> 
>>>  
>>>  		if (unlikely(!page)) {
>>>  			/* Successfully allocated i pages, free them in __vunmap() */
>>> @@ -2584,8 +2634,9 @@ static void *__vmalloc_area_node(struct vm_struct *area, gfp_t gfp_mask,
>>>  			cond_resched();
>>>  	}
>>>  
>>> -	if (map_vm_area(area, prot, pages))
>>> +	if (vmap_hpages_range(addr, addr + size, prot, pages, page_shift) < 0)
>>>  		goto fail;
>>> +
>>>  	return area->addr;
>>>  
>>>  fail:
>>> @@ -2619,22 +2670,39 @@ void *__vmalloc_node_range(unsigned long size, unsigned long align,
>>>  			pgprot_t prot, unsigned long vm_flags, int node,
>>>  			const void *caller)
>>>  {
>>> -	struct vm_struct *area;
>>> +	struct vm_struct *area = NULL;
>>>  	void *addr;
>>>  	unsigned long real_size = size;
>>> +	unsigned long real_align = align;
>>> +	unsigned int shift = PAGE_SHIFT;
>>>  
>>>  	size = PAGE_ALIGN(size);
>>>  	if (!size || (size >> PAGE_SHIFT) > totalram_pages())
>>>  		goto fail;
>>>  
>>> +	if (IS_ENABLED(CONFIG_HAVE_ARCH_HUGE_VMAP)) {
>>> +		unsigned long size_per_node;
>>> +
>>> +		size_per_node = size;
>>> +		if (node == NUMA_NO_NODE)
>>> +			size_per_node /= num_online_nodes();
>>> +		if (size_per_node >= PMD_SIZE)
>>> +			shift = PMD_SHIFT;
>>
>> There are two problems here.
>>
>> 1. Should not size_per_node be aligned with PMD_SIZE to avoid wasting memory later
>>    because of alignment upwards (making it worse for NUMA_NO_NODE)
> 
> I'm not sure what you mean, it's just a heuristic to check for node
> interleaving, and use small pages if large can not interleave well.
> 
>> 2. What about PUD_SIZE which is not considered here at all
> 
> Yeah, not doing PUD pages at all. It would be pretty trivial to add 
> after PMD is working, but would it actually get used anywhere?

But it should make this feature logically complete. Allocation attempts can start
at right pgtable level depending on the requested size. I dont think it will have
any performance impact or something.

> 
>> 3. We should have similar knobs like ioremap controlling different size huge mappings
>>
>> static int __read_mostly ioremap_p4d_capable;
>> static int __read_mostly ioremap_pud_capable;
>> static int __read_mostly ioremap_pmd_capable;
>> static int __read_mostly ioremap_huge_disabled;
>>
>> while also giving arch a chance to weigh in through similar overrides like these.
>>
>> arch_ioremap_[pud|pmd]_supported() ---> probably unifying it for vmalloc() 
> 
> I'm not sure if that makes sense. IO mappings I could see maybe having
> some quirks or bugs or support issues. Cacheable mappings should be the
> "base" for supporting larger pages, if the platform has trouble with
> those then it should just avoid the feature I think.
> 
> Or is there a good reason to add the option? I don't mind, I just want
> to avoid proliferation.

We might need atleast for the potential problem on arm64 as discussed on the
other thread.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
