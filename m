Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A08B09F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 10:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MAj9RxpSnKzIPTnJkT7/jpLEq6WeuUjfRoDpjh5+JZQ=; b=QtkUaRk6ylkIBybrB4Gb7hloQe
	83L1KNpoKfyZaQFKqlwnx4Sipy1eeER4CS/ceF5LuLosKP1FKflSA/fQlQycuTf3cQwYEMxa7o9eC
	JPuPm8jhAvpELyyp3BlauJF2c/68DdOlmwtwv7S9J/gKhafLyIJhGCC9PQTV6EcatWvuiHFljQfhX
	gJvd1hPoaOZdcZDNzUodHeRwxzm3Snyg/6rYI9Uq+rLrvKlsNLP/FSXrguaqvN9isRf7ABKibNF6d
	Bz7qn9DryDOwDveIP9Rwmo2FjVeTdUHmOoRl1CacWWlWj3/dAQ3IAyjmT0pZA1HwEfZPT3BYt4iWD
	CpVCMiIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8KDb-0007NF-LC; Thu, 12 Sep 2019 08:12:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8KDM-0007Mq-Mt
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 08:12:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F3F7028;
 Thu, 12 Sep 2019 01:12:26 -0700 (PDT)
Received: from [10.162.41.127] (p8cg001049571a15.blr.arm.com [10.162.41.127])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 0943B3F71F; Thu, 12 Sep 2019 01:12:25 -0700 (PDT)
Subject: Re: [PATCH] aarch64/mm: speedup memory initialisation
To: Hubert Ralf <Ralf.Hubert@preh.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20190910085822.27072-1-ralf.hubert@preh.de>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <645c9de8-d82a-8d51-ae4a-bcf903ccd1e5@arm.com>
Date: Thu, 12 Sep 2019 13:42:35 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190910085822.27072-1-ralf.hubert@preh.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_011228_836641_23928D4E 
X-CRM114-Status: GOOD (  23.90  )
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



On 09/10/2019 02:29 PM, Hubert Ralf wrote:
> On ARM64 memmap_init_zone is used during bootmem_init, which iterates over
> all pages in the memory starting at the lowest address until the highest
> address is reached. On arm64 this ends up in searching a memmory region
> containing for each single page between lowest and highest available
> physicall address.
> 
> Having a sparse memory system there may be some big holes in the
> memory map. For each page in this holes a lookup is done, which is
> implemented as a binary search on the available memory blocks.
> 
> Adding a memmap_init for aarch64 to do the init only for the available
> memory areas reduces the time needed for initialising memory on startup.
> On a Renesas R-CAR M3 based system with a total hole of 20GB bootmem_init
> execution time is reduced from 378ms to 84ms.
> 
> Signed-off-by: Ralf Hubert <ralf.hubert@preh.de>
> ---
>  arch/arm64/include/asm/pgtable.h |  7 +++++++
>  arch/arm64/mm/init.c             | 24 ++++++++++++++++++++++++
>  2 files changed, 31 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index e09760ece844..8c6eefc08b0b 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -298,6 +298,13 @@ static inline int pte_same(pte_t pte_a, pte_t pte_b)
>  	return (lhs == rhs);
>  }
>  
> +#ifdef CONFIG_SPARSEMEM
> +/* arch mem_map init routine is needed due to holes in a memmap */
> +#   define __HAVE_ARCH_MEMMAP_INIT

This is not required any more. Its gone with the following commit which
also made generic memmap_init() an weak function currently overridden
only on ia64.

dfb3ccd00a0 ("mm: make memmap_init a proper function")

> +	void memmap_init(unsigned long size, int nid, unsigned long zone,
> +			 unsigned long start_pfn);
> +#endif /* CONFIG_SPARSEMEM */
> +
>  /*
>   * Huge pte definitions.
>   */
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index f3c795278def..206b28310872 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -250,6 +250,30 @@ int pfn_valid(unsigned long pfn)
>  }
>  EXPORT_SYMBOL(pfn_valid);
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

In generic mmap_init(), the current high cost comes from early_pfn_valid()
check for each pfn in memmap_init_zone() given that early_pfn_valid() is
pfn_valid() when CONFIG_SPARSEMEM which is known to be expensive on arm64.

Though we cannot do anything about pfns which are really present but the
high cost for non present pfns should be eliminated. The following check
in the above for_each_memblock() loop can achieve that.

if (reg->flags & MEMBLOCK_NOMAP)
	continue;

MEMBLOCK_NOMAP universally should not be initialized into a zone and holes
if any should also be universally skipped across platforms. So these changes
can be moved into generic memmap_init() which will benefit other platforms.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
