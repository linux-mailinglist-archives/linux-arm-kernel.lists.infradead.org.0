Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFCE72A1D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dsimvXLXCgxz67KCHg29MjDMJsrVSfn8+Ka0gM1sngs=; b=TqqagVzCNwwDcA
	1E9sUrQo04R7rVUnKEa/wJ3MgjZnun5cil/9Te0h+yRk/Rs1dF6Sk3VKhGSnQOm1hu4Y0c5h70yo6
	RWaWzX2MA3ZgQA1RiYoo2A2h2YwAnOQhMZEQ+ERszaPVNX/hBFknjUK75UadOarBnOeQVYS8pRbGH
	mTjreeG+iO1vyzdGgHNUJfIrZtCqL6ybD/zJPip7pTdkvXIBn8zXuhiw1rgQRmc56SokIhZ2pCn78
	pXK5MLhiznQ1LszxkQ3FY4FHghrtYb7eZ4U1EuibzGkKZF6oYqYaoIyzS85l6zE4rprQVPVn106kc
	IsJXdhzPsznso/D1acvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqCf1-0001oD-5f; Wed, 24 Jul 2019 08:30:07 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqCej-0001mc-Dy
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:29:51 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 58B05B3F612EF878FD0E;
 Wed, 24 Jul 2019 16:29:35 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Wed, 24 Jul 2019
 16:29:32 +0800
Subject: Re: [PATCH v12 1/2] mm: page_alloc: introduce
 memblock_next_valid_pfn() (again) for arm64
To: Mike Rapoport <rppt@linux.ibm.com>
References: <1563861073-47071-1-git-send-email-guohanjun@huawei.com>
 <1563861073-47071-2-git-send-email-guohanjun@huawei.com>
 <20190723083027.GB4896@rapoport-lnx>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <e4668d2a-23d9-c089-c713-a4a0495e8c9e@huawei.com>
Date: Wed, 24 Jul 2019 16:29:11 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20190723083027.GB4896@rapoport-lnx>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_012949_674142_D4049E8F 
X-CRM114-Status: GOOD (  25.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Jia
 He <hejianet@gmail.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/7/23 16:30, Mike Rapoport wrote:
> On Tue, Jul 23, 2019 at 01:51:12PM +0800, Hanjun Guo wrote:
>> From: Jia He <hejianet@gmail.com>
>>
>> Commit b92df1de5d28 ("mm: page_alloc: skip over regions of invalid pfns
>> where possible") optimized the loop in memmap_init_zone(). But it causes
>> possible panic on x86 due to specific memory mapping on x86_64 which will
>> skip valid pfns as well, so Daniel Vacek reverted it later.
>>
>> But as suggested by Daniel Vacek, it is fine to using memblock to skip
>> gaps and finding next valid frame with CONFIG_HAVE_ARCH_PFN_VALID.
>>
>> Daniel said:
>> "On arm and arm64, memblock is used by default. But generic version of
>> pfn_valid() is based on mem sections and memblock_next_valid_pfn() does
>> not always return the next valid one but skips more resulting in some
>> valid frames to be skipped (as if they were invalid). And that's why
>> kernel was eventually crashing on some !arm machines."
> 
> I think that the crash on x86 was not related to CONFIG_HAVE_ARCH_PFN_VALID
> but rather to the x86 way to setup memblock.  Some of the x86 reserved
> memory areas were never added to memblock.memory, which makes memblock's
> view of the physical memory incomplete and that's why
> memblock_next_valid_pfn() could skip valid PFNs on x86.

Thank you for kindly clarify, I will update the patch with your comments
in next version.

> 
>> Introduce a new config option CONFIG_HAVE_MEMBLOCK_PFN_VALID and only
>> selected for arm64, using the new config option to guard the
>> memblock_next_valid_pfn().
>  
> As far as I can tell, the memblock_next_valid_pfn() should work on most
> architectures and not only on ARM. For sure there is should be no
> dependency between CONFIG_HAVE_ARCH_PFN_VALID and memblock_next_valid_pfn().
> 
> I believe that the configuration option to guard memblock_next_valid_pfn()
> should be opt-out and that only x86 will require it.

So how about introduce a configuration option, say, CONFIG_HAVE_ARCH_PFN_INVALID,
selected by x86 and keep it default unselected for all other architecture?

> 
>> This was tested on a HiSilicon Kunpeng920 based ARM64 server, the speedup
>> is pretty impressive for bootmem_init() at boot:
>>
>> with 384G memory,
>> before: 13310ms
>> after:  1415ms
>>
>> with 1T memory,
>> before: 20s
>> after:  2s
>>
>> Suggested-by: Daniel Vacek <neelx@redhat.com>
>> Signed-off-by: Jia He <hejianet@gmail.com>
>> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
>> ---
>>  arch/arm64/Kconfig     |  1 +
>>  include/linux/mmzone.h |  9 +++++++++
>>  mm/Kconfig             |  3 +++
>>  mm/memblock.c          | 31 +++++++++++++++++++++++++++++++
>>  mm/page_alloc.c        |  4 +++-
>>  5 files changed, 47 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>> index 697ea0510729..058eb26579be 100644
>> --- a/arch/arm64/Kconfig
>> +++ b/arch/arm64/Kconfig
>> @@ -893,6 +893,7 @@ config ARCH_FLATMEM_ENABLE
>>  
>>  config HAVE_ARCH_PFN_VALID
>>  	def_bool y
>> +	select HAVE_MEMBLOCK_PFN_VALID
>>
>>  config HW_PERF_EVENTS
>>  	def_bool y
>> diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
>> index 70394cabaf4e..24cb6bdb1759 100644
>> --- a/include/linux/mmzone.h
>> +++ b/include/linux/mmzone.h
>> @@ -1325,6 +1325,10 @@ static inline int pfn_present(unsigned long pfn)
>>  #endif
>>  
>>  #define early_pfn_valid(pfn)	pfn_valid(pfn)
>> +#ifdef CONFIG_HAVE_MEMBLOCK_PFN_VALID
>> +extern unsigned long memblock_next_valid_pfn(unsigned long pfn);
>> +#define next_valid_pfn(pfn)	memblock_next_valid_pfn(pfn)
> 
> Please make it 'static inline' and move out of '#ifdef CONFIG_SPARSEMEM'

Will do.

> 
>> +#endif
>>  void sparse_init(void);
>>  #else
>>  #define sparse_init()	do {} while (0)
>> @@ -1347,6 +1351,11 @@ struct mminit_pfnnid_cache {
>>  #define early_pfn_valid(pfn)	(1)
>>  #endif
>>  
>> +/* fallback to default definitions */
>> +#ifndef next_valid_pfn
>> +#define next_valid_pfn(pfn)	(pfn + 1)
> 
> static inline as well.

OK.

> 
>> +#endif
>> +
>>  void memory_present(int nid, unsigned long start, unsigned long end);
>>  
>>  /*
>> diff --git a/mm/Kconfig b/mm/Kconfig
>> index f0c76ba47695..c578374b6413 100644
>> --- a/mm/Kconfig
>> +++ b/mm/Kconfig
>> @@ -132,6 +132,9 @@ config HAVE_MEMBLOCK_NODE_MAP
>>  config HAVE_MEMBLOCK_PHYS_MAP
>>  	bool
>>  
>> +config HAVE_MEMBLOCK_PFN_VALID
>> +	bool
>> +
>>  config HAVE_GENERIC_GUP
>>  	bool
>>  
>> diff --git a/mm/memblock.c b/mm/memblock.c
>> index 7d4f61ae666a..d57ba51bb9cd 100644
>> --- a/mm/memblock.c
>> +++ b/mm/memblock.c
>> @@ -1251,6 +1251,37 @@ int __init_memblock memblock_set_node(phys_addr_t base, phys_addr_t size,
>>  	return 0;
>>  }
>>  #endif /* CONFIG_HAVE_MEMBLOCK_NODE_MAP */
>> +
>> +#ifdef CONFIG_HAVE_MEMBLOCK_PFN_VALID
>> +unsigned long __init_memblock memblock_next_valid_pfn(unsigned long pfn)
>> +{
>> +	struct memblock_type *type = &memblock.memory;
>> +	unsigned int right = type->cnt;
>> +	unsigned int mid, left = 0;
>> +	phys_addr_t addr = PFN_PHYS(++pfn);
>> +
>> +	do {
>> +		mid = (right + left) / 2;
>> +
>> +		if (addr < type->regions[mid].base)
>> +			right = mid;
>> +		else if (addr >= (type->regions[mid].base +
>> +				  type->regions[mid].size))
>> +			left = mid + 1;
>> +		else {
>> +			/* addr is within the region, so pfn is valid */
>> +			return pfn;
>> +		}
>> +	} while (left < right);
>> +
> 
> We have memblock_search() for this.

I will update my patch as you suggested.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
