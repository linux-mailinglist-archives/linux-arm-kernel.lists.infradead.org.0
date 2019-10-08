Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A412CF8CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 13:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSu8VBlc0sH1ij+jxzmabbz2TZvss2HbiHFuwCXcG38=; b=fszRJWJQZGHrHj
	OiDINHBYntx3Z6j/uzA19au21X8YTebAqokUduQGhafMTm0Mk4mMCYqm8DQmJc0uA9RaztQ6ONpJJ
	Cgpt/1tOD3O1Wqwc7pRbmUqgaJElKrtWffFO08974eHVK2UmiaPlCcCfnOq1V9bXV5h/Fnmh5nWc+
	IFxLAK08w+HakVTRsXZVdSEv9N9C+7gBHNYiHS0d+V1wy2cr+c+SkGAP+hWbde7SDerdcliIFKmXM
	pcpX5THBwoEwiWCq/gvP7TvjF1exRwnqCoJFMvoZmYoShwstYcx8+TVCpj2kTf744ueZVNQiEgYdJ
	GQAFRflAmZ/Pv8Ord/cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHnyw-0006A2-RH; Tue, 08 Oct 2019 11:48:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHnyo-000699-C5
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 11:48:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E0A315BE;
 Tue,  8 Oct 2019 04:48:37 -0700 (PDT)
Received: from [10.162.40.139] (p8cg001049571a15.blr.arm.com [10.162.40.139])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 5087D3F703; Tue,  8 Oct 2019 04:48:30 -0700 (PDT)
Subject: Re: [PATCH V8 2/2] arm64/mm: Enable memory hot remove
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1569217425-23777-1-git-send-email-anshuman.khandual@arm.com>
 <1569217425-23777-3-git-send-email-anshuman.khandual@arm.com>
 <20191007141738.GA93112@E120351.arm.com>
 <6c277085-a430-eab4-3a4e-99fcfa170c10@arm.com>
 <20191008105520.GA5694@arrakis.emea.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <a352b560-f7f2-489c-4439-5214afde9ae5@arm.com>
Date: Tue, 8 Oct 2019 17:18:53 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191008105520.GA5694@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_044838_502057_DD5F0A68 
X-CRM114-Status: GOOD (  24.60  )
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



On 10/08/2019 04:25 PM, Catalin Marinas wrote:
> On Tue, Oct 08, 2019 at 10:06:26AM +0530, Anshuman Khandual wrote:
>> On 10/07/2019 07:47 PM, Catalin Marinas wrote:
>>> On Mon, Sep 23, 2019 at 11:13:45AM +0530, Anshuman Khandual wrote:
>>>> The arch code for hot-remove must tear down portions of the linear map and
>>>> vmemmap corresponding to memory being removed. In both cases the page
>>>> tables mapping these regions must be freed, and when sparse vmemmap is in
>>>> use the memory backing the vmemmap must also be freed.
>>>>
>>>> This patch adds unmap_hotplug_range() and free_empty_tables() helpers which
>>>> can be used to tear down either region and calls it from vmemmap_free() and
>>>> ___remove_pgd_mapping(). The sparse_vmap argument determines whether the
>>>> backing memory will be freed.
>>>
>>> Can you change the 'sparse_vmap' name to something more meaningful which
>>> would suggest freeing of the backing memory?
>>
>> free_mapped_mem or free_backed_mem ? Even shorter forms like free_mapped or
>> free_backed might do as well. Do you have a particular preference here ? But
>> yes, sparse_vmap has been very much specific to vmemmap for these functions
>> which are now very generic in nature.
> 
> free_mapped would do.

Sure.

> 
>>>> +static void unmap_hotplug_pte_range(pmd_t *pmdp, unsigned long addr,
>>>> +				    unsigned long end, bool sparse_vmap)
>>>> +{
>>>> +	struct page *page;
>>>> +	pte_t *ptep, pte;
>>>> +
>>>> +	do {
>>>> +		ptep = pte_offset_kernel(pmdp, addr);
>>>> +		pte = READ_ONCE(*ptep);
>>>> +		if (pte_none(pte))
>>>> +			continue;
>>>> +
>>>> +		WARN_ON(!pte_present(pte));
>>>> +		page = sparse_vmap ? pte_page(pte) : NULL;
>>>> +		pte_clear(&init_mm, addr, ptep);
>>>> +		flush_tlb_kernel_range(addr, addr + PAGE_SIZE);
>>>> +		if (sparse_vmap)
>>>> +			free_hotplug_page_range(page, PAGE_SIZE);
>>>
>>> You could only set 'page' if sparse_vmap (or even drop 'page' entirely).
>>
>> I am afraid 'page' is being used to hold pte_page(pte) extraction which
>> needs to be freed (sparse_vmap) as we are going to clear the ptep entry
>> in the next statement and lose access to it for good.
> 
> You clear *ptep, not pte.

Ahh, missed that. We have already captured the contents with READ_ONCE().

> 
>> We will need some
>> where to hold onto pte_page(pte) across pte_clear() as we cannot free it
>> before clearing it's entry and flushing the TLB. Hence wondering how the
>> 'page' can be completely dropped.
>>
>>> The compiler is probably smart enough to optimise it but using a
>>> pointless ternary operator just makes the code harder to follow.
>>
>> Not sure I got this but are you suggesting for an 'if' statement here
>>
>> if (sparse_vmap)
>> 	page = pte_page(pte);
>>
>> instead of the current assignment ?
>>
>> page = sparse_vmap ? pte_page(pte) : NULL;
> 
> I suggest:
> 
> 	if (sparse_vmap)
> 		free_hotplug_pgtable_page(pte_page(pte), PAGE_SIZE);

Sure, will do.

> 
>>>> +	} while (addr += PAGE_SIZE, addr < end);
>>>> +}
>>> [...]
>>>> +static void free_empty_pte_table(pmd_t *pmdp, unsigned long addr,
>>>> +				 unsigned long end)
>>>> +{
>>>> +	pte_t *ptep, pte;
>>>> +
>>>> +	do {
>>>> +		ptep = pte_offset_kernel(pmdp, addr);
>>>> +		pte = READ_ONCE(*ptep);
>>>> +		WARN_ON(!pte_none(pte));
>>>> +	} while (addr += PAGE_SIZE, addr < end);
>>>> +}
>>>> +
>>>> +static void free_empty_pmd_table(pud_t *pudp, unsigned long addr,
>>>> +				 unsigned long end, unsigned long floor,
>>>> +				 unsigned long ceiling)
>>>> +{
>>>> +	unsigned long next;
>>>> +	pmd_t *pmdp, pmd;
>>>> +
>>>> +	do {
>>>> +		next = pmd_addr_end(addr, end);
>>>> +		pmdp = pmd_offset(pudp, addr);
>>>> +		pmd = READ_ONCE(*pmdp);
>>>> +		if (pmd_none(pmd))
>>>> +			continue;
>>>> +
>>>> +		WARN_ON(!pmd_present(pmd) || !pmd_table(pmd) || pmd_sect(pmd));
>>>> +		free_empty_pte_table(pmdp, addr, next);
>>>> +		free_pte_table(pmdp, addr, next, floor, ceiling);
>>>
>>> Do we need two closely named functions here? Can you not collapse
>>> free_empty_pud_table() and free_pte_table() into a single one? The same
>>> comment for the pmd/pud variants. I just find this confusing.
>>
>> The two functions could be collapsed into a single one. But just wanted to
>> keep free_pxx_table() part which checks floor/ceiling alignment, non-zero
>> entries clear off the actual page table walking.
> 
> With the pmd variant, they both take the floor/ceiling argument while
> the free_empty_pte_table() doesn't even free anything. So not entirely
> consistent.> 
> Can you not just copy the free_pgd_range() functions but instead of
> p*d_free_tlb() just do the TLB invalidation followed by page freeing?
> That seems to be an easier pattern to follow.
> 

Sure, will follow that pattern.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
