Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B8E18D874
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 20:36:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JB8SjZujCVQOWS+ukm/OTQx5mll0ma0YcxizC9/yBwE=; b=iqt+U4poXXm8AELQ0RNCVblYX
	YNv6XZjva1teKptyu/ymsvWcp6e9CQFCzzUjOUrLxY/NWVMIZYUQw/15J0ueK5yQUwS8PPSQky++j
	JQYtFy5LGi1JpGO7i+1t2zudO0bkFBFBjipsPq0PideGwm2JPI8+mfNRskByLKWtWxyfz0HTWTnej
	Usg5422XSw3yBtLkOswiGLQgpPy0Jt642P5CLPg7Wu/vA/BR+b1qD6sklCQP/qb86dKLUiuuqwkgE
	a1+AVfn2ek0Ruajv7g2QuEx4Tze4t8KjFuZdtT+V7Nh4Ei/Bdt8Vtf0YdP5r/g1iWwP26/5MyzZzU
	zlU+VntEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFNRA-0000Jy-2J; Fri, 20 Mar 2020 19:36:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFNR2-0000IK-3N
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 19:36:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 457FB1FB;
 Fri, 20 Mar 2020 12:35:54 -0700 (PDT)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 68C873F52E;
 Fri, 20 Mar 2020 12:35:52 -0700 (PDT)
Subject: Re: [PATCH V2 2/2] arm64/mm: Enable vmem_altmap support for vmemmap
 mappings
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1583331030-7335-1-git-send-email-anshuman.khandual@arm.com>
 <1583331030-7335-3-git-send-email-anshuman.khandual@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d428e636-0f48-6738-2296-91dba8fc6404@arm.com>
Date: Fri, 20 Mar 2020 19:35:50 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <1583331030-7335-3-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_123600_232221_11F48A1E 
X-CRM114-Status: GOOD (  29.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Yu Zhao <yuzhao@google.com>,
 Steve Capper <steve.capper@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org,
 Hsin-Yi Wang <hsinyi@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-04 2:10 pm, Anshuman Khandual wrote:
> Device memory ranges when getting hot added into ZONE_DEVICE, might require
> their vmemmap mapping's backing memory to be allocated from their own range
> instead of consuming system memory. This prevents large system memory usage
> for potentially large device memory ranges. Device driver communicates this
> request via vmem_altmap structure. Architecture needs to take this request
> into account while creating and tearing down vemmmap mappings.
> 
> This enables vmem_altmap support in vmemmap_populate() and vmemmap_free()
> which includes vmemmap_populate_basepages() used for ARM64_16K_PAGES and
> ARM64_64K_PAGES configs.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Steve Capper <steve.capper@arm.com>
> Cc: David Hildenbrand <david@redhat.com>
> Cc: Yu Zhao <yuzhao@google.com>
> Cc: Hsin-Yi Wang <hsinyi@chromium.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>   arch/arm64/mm/mmu.c | 71 ++++++++++++++++++++++++++++++++-------------
>   1 file changed, 51 insertions(+), 20 deletions(-)
> 
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index 27cb95c471eb..0e0a0ecc812e 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -727,15 +727,30 @@ int kern_addr_valid(unsigned long addr)
>   }
>   
>   #ifdef CONFIG_MEMORY_HOTPLUG
> -static void free_hotplug_page_range(struct page *page, size_t size)
> +static void free_hotplug_page_range(struct page *page, size_t size,
> +				    struct vmem_altmap *altmap)
>   {
> -	WARN_ON(PageReserved(page));
> -	free_pages((unsigned long)page_address(page), get_order(size));
> +	if (altmap) {
> +		/*
> +		 * Though unmap_hotplug_range() will tear down altmap based
> +		 * vmemmap mappings at all page table levels, these mappings
> +		 * should only have been created either at PTE or PMD level
> +		 * with vmemmap_populate_basepages() or vmemmap_populate()
> +		 * respectively. Unmapping requests at any other level will
> +		 * be problematic. Drop these warnings when vmemmap mapping
> +		 * is supported at PUD (even perhaps P4D) level.
> +		 */
> +		WARN_ON((size != PAGE_SIZE) && (size != PMD_SIZE));

Isn't that comment equally true of the regular case? AFAICS we don't 
call vmemmap_alloc_block_buf() with larger than PMD_SIZE either. If the 
warnings are useful, shouldn't they cover both cases equally? However, 
given that we never warned before, and the code here appears that it 
would work fine anyway, *are* they really useful?

> +		vmem_altmap_free(altmap, size >> PAGE_SHIFT);
> +	} else {
> +		WARN_ON(PageReserved(page));
> +		free_pages((unsigned long)page_address(page), get_order(size));
> +	}
>   }
>   
>   static void free_hotplug_pgtable_page(struct page *page)
>   {
> -	free_hotplug_page_range(page, PAGE_SIZE);
> +	free_hotplug_page_range(page, PAGE_SIZE, NULL);
>   }
>   
>   static bool pgtable_range_aligned(unsigned long start, unsigned long end,
> @@ -758,7 +773,8 @@ static bool pgtable_range_aligned(unsigned long start, unsigned long end,
>   }
>   
>   static void unmap_hotplug_pte_range(pmd_t *pmdp, unsigned long addr,
> -				    unsigned long end, bool free_mapped)
> +				    unsigned long end, bool free_mapped,
> +				    struct vmem_altmap *altmap)
>   {
>   	pte_t *ptep, pte;
>   
> @@ -772,12 +788,14 @@ static void unmap_hotplug_pte_range(pmd_t *pmdp, unsigned long addr,
>   		pte_clear(&init_mm, addr, ptep);
>   		flush_tlb_kernel_range(addr, addr + PAGE_SIZE);
>   		if (free_mapped)
> -			free_hotplug_page_range(pte_page(pte), PAGE_SIZE);
> +			free_hotplug_page_range(pte_page(pte),
> +						PAGE_SIZE, altmap);
>   	} while (addr += PAGE_SIZE, addr < end);
>   }
>   
>   static void unmap_hotplug_pmd_range(pud_t *pudp, unsigned long addr,
> -				    unsigned long end, bool free_mapped)
> +				    unsigned long end, bool free_mapped,
> +				    struct vmem_altmap *altmap)
>   {
>   	unsigned long next;
>   	pmd_t *pmdp, pmd;
> @@ -800,16 +818,17 @@ static void unmap_hotplug_pmd_range(pud_t *pudp, unsigned long addr,
>   			flush_tlb_kernel_range(addr, addr + PAGE_SIZE);
>   			if (free_mapped)
>   				free_hotplug_page_range(pmd_page(pmd),
> -							PMD_SIZE);
> +							PMD_SIZE, altmap);
>   			continue;
>   		}
>   		WARN_ON(!pmd_table(pmd));
> -		unmap_hotplug_pte_range(pmdp, addr, next, free_mapped);
> +		unmap_hotplug_pte_range(pmdp, addr, next, free_mapped, altmap);
>   	} while (addr = next, addr < end);
>   }
>   
>   static void unmap_hotplug_pud_range(p4d_t *p4dp, unsigned long addr,
> -				    unsigned long end, bool free_mapped)
> +				    unsigned long end, bool free_mapped,
> +				    struct vmem_altmap *altmap)
>   {
>   	unsigned long next;
>   	pud_t *pudp, pud;
> @@ -832,16 +851,17 @@ static void unmap_hotplug_pud_range(p4d_t *p4dp, unsigned long addr,
>   			flush_tlb_kernel_range(addr, addr + PAGE_SIZE);
>   			if (free_mapped)
>   				free_hotplug_page_range(pud_page(pud),
> -							PUD_SIZE);
> +							PUD_SIZE, altmap);
>   			continue;
>   		}
>   		WARN_ON(!pud_table(pud));
> -		unmap_hotplug_pmd_range(pudp, addr, next, free_mapped);
> +		unmap_hotplug_pmd_range(pudp, addr, next, free_mapped, altmap);
>   	} while (addr = next, addr < end);
>   }
>   
>   static void unmap_hotplug_p4d_range(pgd_t *pgdp, unsigned long addr,
> -				    unsigned long end, bool free_mapped)
> +				    unsigned long end, bool free_mapped,
> +				    struct vmem_altmap *altmap)
>   {
>   	unsigned long next;
>   	p4d_t *p4dp, p4d;
> @@ -854,16 +874,24 @@ static void unmap_hotplug_p4d_range(pgd_t *pgdp, unsigned long addr,
>   			continue;
>   
>   		WARN_ON(!p4d_present(p4d));
> -		unmap_hotplug_pud_range(p4dp, addr, next, free_mapped);
> +		unmap_hotplug_pud_range(p4dp, addr, next, free_mapped, altmap);
>   	} while (addr = next, addr < end);
>   }
>   
>   static void unmap_hotplug_range(unsigned long addr, unsigned long end,
> -				bool free_mapped)
> +				bool free_mapped, struct vmem_altmap *altmap)
>   {
>   	unsigned long next;
>   	pgd_t *pgdp, pgd;
>   
> +	/*
> +	 * vmem_altmap can only be used as backing memory in a given
> +	 * page table mapping. In case backing memory itself is not
> +	 * being freed, then altmap is irrelevant. Warn about this
> +	 * inconsistency when encountered.
> +	 */
> +	WARN_ON(!free_mapped && altmap);

Personally I find that comment a bit unclear (particularly the first 
sentence which just seems like a confusing tautology). Is the overall 
point that the altmap only matters when we're unmapping and freeing 
vmemmap pages (such that we free them to the right allocator)? At face 
value it doesn't seem to warrant a warning - it's not necessary to know 
which allocator owns pages that we aren't freeing, but it isn't harmful 
either.

That said, however, after puzzling through the code I get the distinct 
feeling it would be more useful if all those "free_mapped" arguments 
were actually named "is_vmemmap" instead. A that point, the conceptual 
inconsistency would be a little more obvious (and arguably might not 
even need commenting).

All the altmap plumbing itself looks pretty mechanical and hard to 
disagree with :)

Robin.

> +
>   	do {
>   		next = pgd_addr_end(addr, end);
>   		pgdp = pgd_offset_k(addr);
> @@ -872,7 +900,7 @@ static void unmap_hotplug_range(unsigned long addr, unsigned long end,
>   			continue;
>   
>   		WARN_ON(!pgd_present(pgd));
> -		unmap_hotplug_p4d_range(pgdp, addr, next, free_mapped);
> +		unmap_hotplug_p4d_range(pgdp, addr, next, free_mapped, altmap);
>   	} while (addr = next, addr < end);
>   }
>   
> @@ -1036,7 +1064,7 @@ static void free_empty_tables(unsigned long addr, unsigned long end,
>   int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>   		struct vmem_altmap *altmap)
>   {
> -	return vmemmap_populate_basepages(start, end, node, NULL);
> +	return vmemmap_populate_basepages(start, end, node, altmap);
>   }
>   #else	/* !ARM64_SWAPPER_USES_SECTION_MAPS */
>   int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
> @@ -1063,7 +1091,10 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>   		if (pmd_none(READ_ONCE(*pmdp))) {
>   			void *p = NULL;
>   
> -			p = vmemmap_alloc_block_buf(PMD_SIZE, node);
> +			if (altmap)
> +				p = altmap_alloc_block_buf(PMD_SIZE, altmap);
> +			else
> +				p = vmemmap_alloc_block_buf(PMD_SIZE, node);
>   			if (!p)
>   				return -ENOMEM;
>   
> @@ -1081,7 +1112,7 @@ void vmemmap_free(unsigned long start, unsigned long end,
>   #ifdef CONFIG_MEMORY_HOTPLUG
>   	WARN_ON((start < VMEMMAP_START) || (end > VMEMMAP_END));
>   
> -	unmap_hotplug_range(start, end, true);
> +	unmap_hotplug_range(start, end, true, altmap);
>   	free_empty_tables(start, end, VMEMMAP_START, VMEMMAP_END);
>   #endif
>   }
> @@ -1369,7 +1400,7 @@ static void __remove_pgd_mapping(pgd_t *pgdir, unsigned long start, u64 size)
>   	WARN_ON(pgdir != init_mm.pgd);
>   	WARN_ON((start < PAGE_OFFSET) || (end > PAGE_END));
>   
> -	unmap_hotplug_range(start, end, false);
> +	unmap_hotplug_range(start, end, false, NULL);
>   	free_empty_tables(start, end, PAGE_OFFSET, PAGE_END);
>   }
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
