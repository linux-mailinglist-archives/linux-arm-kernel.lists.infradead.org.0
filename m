Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C43AEB20
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 15:07:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mzLdcjTV/AZFsb64OOIvHV2VrIjy6YQVl9Uadu/dhRE=; b=IjTzS3hbKT0nC5J3/eMiHWAbX
	qMqNAnwa5PN1R42wBc3FYSIwrn+CIfwwF0ypJrqI444nPW+GYtbl8SbjtbCj1R2qVl3GZHwiXh5y5
	H5Yjj/luhzBc9pf7nwa3I+Ihmt3fN6pxsl/cOioflM2e4XBIE81pQimHconfngpzMcIj7GlW8tkDH
	uKsYxENb3wWWsUNlvbM+hYmll1C+erHNrK4ZKYQOxu1TNyKu11XQpRuaO8i1aQfPnk6bwTWJkDWeV
	r/or2JpB8ojgglawqWvGR7wlFcz+7+mv3tZKQax97DlFETCauz75+g9waT0+I6H3OMyWvCc5meJm0
	m0B6zRxkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7frs-0000xK-8z; Tue, 10 Sep 2019 13:07:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7frV-0000n2-Df
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 13:07:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4486D1000;
 Tue, 10 Sep 2019 06:07:11 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CF25E3F59C;
 Tue, 10 Sep 2019 06:07:10 -0700 (PDT)
Subject: Re: [PATCH] aarch64/mm: speedup memory initialisation
To: Hubert Ralf <Ralf.Hubert@preh.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20190910085822.27072-1-ralf.hubert@preh.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <0b23bdf5-e9ed-6281-c9d4-304818ce74c4@arm.com>
Date: Tue, 10 Sep 2019 14:07:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190910085822.27072-1-ralf.hubert@preh.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_060713_611593_2DB4B992 
X-CRM114-Status: GOOD (  25.86  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/09/2019 09:59, Hubert Ralf wrote:
> On ARM64 memmap_init_zone is used during bootmem_init, which iterates over
> all pages in the memory starting at the lowest address until the highest
> address is reached. On arm64 this ends up in searching a memmory region
> containing for each single page between lowest and highest available
> physicall address.
> 
> Having a sparse memory system there may be some big holes in the
> memory map. For each page in this holes a lookup is done, which is
> implemented as a binary search on the available memory blocks.

It sounds like that's one of the many related issues for which the real 
solution is "handle EFI no-map regions in a way which makes pfn_valid() 
not terrible" - if we are prepared to have workarounds for individual 
hot-spots, they should probably carry a big reminder to put things back 
once pfn_valid() is sorted out.

That said, even with the current implementation, the memblock search is 
short-circuited by the valid_section() check, so the impact should 
already be limited to just boundary regions where RAM is weirdly aligned 
and a hole starts or ends mid-section. Of course, regardless of any 
check overhead there might well still be an argument for not walking 
through large avoidable holes one PFN at a time, but the rationale as 
given doesn't seem to quite add up.

Robin.

> Adding a memmap_init for aarch64 to do the init only for the available
> memory areas reduces the time needed for initialising memory on startup.
> On a Renesas R-CAR M3 based system with a total hole of 20GB bootmem_init
> execution time is reduced from 378ms to 84ms.
> 
> Signed-off-by: Ralf Hubert <ralf.hubert@preh.de>
> ---
>   arch/arm64/include/asm/pgtable.h |  7 +++++++
>   arch/arm64/mm/init.c             | 24 ++++++++++++++++++++++++
>   2 files changed, 31 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index e09760ece844..8c6eefc08b0b 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -298,6 +298,13 @@ static inline int pte_same(pte_t pte_a, pte_t pte_b)
>   	return (lhs == rhs);
>   }
>   
> +#ifdef CONFIG_SPARSEMEM
> +/* arch mem_map init routine is needed due to holes in a memmap */
> +#   define __HAVE_ARCH_MEMMAP_INIT
> +	void memmap_init(unsigned long size, int nid, unsigned long zone,
> +			 unsigned long start_pfn);
> +#endif /* CONFIG_SPARSEMEM */
> +
>   /*
>    * Huge pte definitions.
>    */
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index f3c795278def..206b28310872 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -250,6 +250,30 @@ int pfn_valid(unsigned long pfn)
>   }
>   EXPORT_SYMBOL(pfn_valid);
>   
> +#ifdef CONFIG_SPARSEMEM
> +void __meminit
> +memmap_init(unsigned long size, int nid, unsigned long zone,
> +	    unsigned long start_pfn)
> +{
> +	struct memblock_region *reg;
> +
> +	for_each_memblock(memory, reg) {
> +		unsigned long start = memblock_region_memory_base_pfn(reg);
> +		unsigned long end = memblock_region_memory_end_pfn(reg);
> +
> +		if (start < start_pfn)
> +			start = start_pfn;
> +		if (end > start_pfn + size)
> +			end = start_pfn + size;
> +
> +		if (start < end) {
> +			memmap_init_zone(end - start, nid, zone, start,
> +					 MEMMAP_EARLY, NULL);
> +		}
> +	}
> +}
> +#endif /* CONFIG_SPARSEMEM */
> +
>   static phys_addr_t memory_limit = PHYS_ADDR_MAX;
>   
>   /*
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
