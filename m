Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F5BB0AC3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 10:59:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mxmC8w3PAiwyeAv/DHuO/7GfzK0seV/praHOM/qPXno=; b=T2hGX+keJw7jPRtqTVi/aHZJkX
	NUK//+s21Kvmidovku9kV/USaqWa3jIuiY5xymZicELruUvsn0p6O1GhUUT3igEpq6VJyo+iIgz/p
	IFynPthftLhmexzGRkYoCzxTL/ElaGiMC2ysb6A6WVE6njdLSBS52KQh/LlD2njMNKajTwe3wLVW3
	1yyhNr7O87PhDQt3utEu5tX0XeU+PDYIDCtOkrEYpbh9TMjrPG4ng4IImLl58UMlw0pw7O4aKVxC1
	q/QtZ2eTXGXPqsNb2W779DBjumaOC8zcFv4Ey/3eOhZU6O8Slfu87BNrrgZHAaikm1uxij/UCYD3v
	WjsGL9Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8KxF-0001XT-FI; Thu, 12 Sep 2019 08:59:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Kx3-0001X8-VQ
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 08:59:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D6FA1000;
 Thu, 12 Sep 2019 01:59:41 -0700 (PDT)
Received: from [10.162.41.127] (p8cg001049571a15.blr.arm.com [10.162.41.127])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 1746F3F71F; Thu, 12 Sep 2019 01:59:39 -0700 (PDT)
Subject: Re: [PATCH] aarch64/mm: speedup memory initialisation
To: Hubert Ralf <Ralf.Hubert@preh.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20190910085822.27072-1-ralf.hubert@preh.de>
 <645c9de8-d82a-8d51-ae4a-bcf903ccd1e5@arm.com>
 <bf14a3cb2812c03d08c380fccc4ca336cb7b5352.camel@preh.de>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <7ac85677-782a-5080-558f-bc210b5aad10@arm.com>
Date: Thu, 12 Sep 2019 14:29:49 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <bf14a3cb2812c03d08c380fccc4ca336cb7b5352.camel@preh.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_015942_100028_6E714127 
X-CRM114-Status: GOOD (  20.12  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/12/2019 02:10 PM, Hubert Ralf wrote:
> Am Donnerstag, den 12.09.2019, 13:42 +0530 schrieb Anshuman Khandual:
>>
>> On 09/10/2019 02:29 PM, Hubert Ralf wrote:
>>> On ARM64 memmap_init_zone is used during bootmem_init, which iterates over
>>> all pages in the memory starting at the lowest address until the highest
>>> address is reached. On arm64 this ends up in searching a memmory region
>>> containing for each single page between lowest and highest available
>>> physicall address.
>>>
>>> Having a sparse memory system there may be some big holes in the
>>> memory map. For each page in this holes a lookup is done, which is
>>> implemented as a binary search on the available memory blocks.
>>>
>>> Adding a memmap_init for aarch64 to do the init only for the available
>>> memory areas reduces the time needed for initialising memory on startup.
>>> On a Renesas R-CAR M3 based system with a total hole of 20GB bootmem_init
>>> execution time is reduced from 378ms to 84ms.
>>>
>>> Signed-off-by: Ralf Hubert <ralf.hubert@preh.de>
>>> ---
>>>  arch/arm64/include/asm/pgtable.h |  7 +++++++
>>>  arch/arm64/mm/init.c             | 24 ++++++++++++++++++++++++
>>>  2 files changed, 31 insertions(+)
>>>
>>> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
>>> index e09760ece844..8c6eefc08b0b 100644
>>> --- a/arch/arm64/include/asm/pgtable.h
>>> +++ b/arch/arm64/include/asm/pgtable.h
>>> @@ -298,6 +298,13 @@ static inline int pte_same(pte_t pte_a, pte_t pte_b)
>>>  	return (lhs == rhs);
>>>  }
>>>  
>>> +#ifdef CONFIG_SPARSEMEM
>>> +/* arch mem_map init routine is needed due to holes in a memmap */
>>> +#   define __HAVE_ARCH_MEMMAP_INIT
>>
>> This is not required any more. Its gone with the following commit which
>> also made generic memmap_init() an weak function currently overridden
>> only on ia64.
>>
>> dfb3ccd00a0 ("mm: make memmap_init a proper function")
>>
>>> +	void memmap_init(unsigned long size, int nid, unsigned long zone,
>>> +			 unsigned long start_pfn);
>>> +#endif /* CONFIG_SPARSEMEM */
>>> +
>>>  /*
>>>   * Huge pte definitions.
>>>   */
>>> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
>>> index f3c795278def..206b28310872 100644
>>> --- a/arch/arm64/mm/init.c
>>> +++ b/arch/arm64/mm/init.c
>>> @@ -250,6 +250,30 @@ int pfn_valid(unsigned long pfn)
>>>  }
>>>  EXPORT_SYMBOL(pfn_valid);
>>>  
>>> +#ifdef CONFIG_SPARSEMEM
>>> +void __meminit
>>> +memmap_init(unsigned long size, int nid, unsigned long zone,
>>> +	    unsigned long start_pfn)
>>> +{
>>> +	struct memblock_region *reg;
>>> +
>>> +	for_each_memblock(memory, reg) {
>>> +		unsigned long start = memblock_region_memory_base_pfn(reg);
>>> +		unsigned long end = memblock_region_memory_end_pfn(reg);
>>> +
>>> +		if (start < start_pfn)
>>> +			start = start_pfn;
>>> +		if (end > start_pfn + size)
>>> +			end = start_pfn + size;
>>> +
>>> +		if (start < end) {
>>> +			memmap_init_zone(end - start, nid, zone, start,
>>> +					 MEMMAP_EARLY, NULL);
>>> +		}
>>> +	}
>>> +}
>>> +#endif /* CONFIG_SPARSEMEM */
>>
>> In generic mmap_init(), the current high cost comes from early_pfn_valid()
>> check for each pfn in memmap_init_zone() given that early_pfn_valid() is
>> pfn_valid() when CONFIG_SPARSEMEM which is known to be expensive on arm64.
>>
>> Though we cannot do anything about pfns which are really present but the
>> high cost for non present pfns should be eliminated. The following check
>> in the above for_each_memblock() loop can achieve that.
>>
>> if (reg->flags & MEMBLOCK_NOMAP)
>> 	continue;
>>
>> MEMBLOCK_NOMAP universally should not be initialized into a zone and holes
>> if any should also be universally skipped across platforms. So these changes
>> can be moved into generic memmap_init() which will benefit other platforms.
> Not sure if I got this. This is a additional short path for memblocks with
> the MEMBLOCK_NOMAP flag set, right? For memblocks without these flag the remaining
> code still needs to be executed?

Right, they should be initialized in the zone.

> 
> In my case I have 4 memblocks with 1.5GB RAM at 0x4000 0000, 0x4 8000 0000,
> 0x6 0000 0000 and 0x6 8000 0000. None of them has the MEMBLOCK_NOMAP flag set.

All of them should be added into the zone with memmap_init_zone() because none of
them has the flag.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
