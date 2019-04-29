Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF72E51B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 16:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=imhH+eoBJ6xFgLGI/rjkl9+xAKi1vBsloGJM2jqSSlI=; b=rBpyEjouTna2dG8rQ04E++Axt
	ZN+AqxeTX6/vw6mqR+X9gFxZ9wuycElAzkob+NqIVrnrCDMk5LDZJYodoiYz9aniA5ltZJ6cRmR9y
	Z6HLviuqMcgCgkQ/Qtc9PFUIARqsAXKOjRCw8c5gdDhnhk4tN4eE9MBOSfMJ81DjKMjVpe960ZkJ/
	Oa9KqKCI7+LVNotuY8Ft/ofVy2WGulV5m2neaItJbDNUsKCmZ5u5GouQVR32pBlPXGtsN2Qk4A6Er
	CAWwI7wLK7QKoH1Tf9s5CJLHfUTaBBBy87WAzMg2SDUZhEbm1bhnRe8kSbTG9UGMkQTxtCo3dVh8S
	zy/ZgPsYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL7X4-0007aV-WB; Mon, 29 Apr 2019 14:45:27 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL7Wy-0007Zo-OH
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 14:45:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7829780D;
 Mon, 29 Apr 2019 07:45:20 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EADA83F5C1;
 Mon, 29 Apr 2019 07:45:17 -0700 (PDT)
Subject: Re: [PATCH 20/26] iommu/dma: Refactor iommu_dma_alloc, part 2
To: Christoph Hellwig <hch@lst.de>
References: <20190422175942.18788-1-hch@lst.de>
 <20190422175942.18788-21-hch@lst.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <9412baed-0d13-dab7-0bdc-90cfdf8e92f0@arm.com>
Date: Mon, 29 Apr 2019 15:45:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190422175942.18788-21-hch@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_074520_799726_47630159 
X-CRM114-Status: GOOD (  29.40  )
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
Cc: Tom Lendacky <thomas.lendacky@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/04/2019 18:59, Christoph Hellwig wrote:
> From: Robin Murphy <robin.murphy@arm.com>

Honestly I don't think anything left of my patch here...

> Apart from the iommu_dma_alloc_remap() case which remains sufficiently
> different that it's better off being self-contained, the rest of the
> logic can now be consolidated into a single flow which separates the
> logcially-distinct steps of allocating pages, getting the CPU address,
> and finally getting the IOMMU address.

...and it certainly doesn't do that any more.

It's clear that we have fundamentally different ways of reading code, so 
I don't think it's productive to keep arguing personal preference - I 
still find the end result here a fair bit more tolerable than before, so 
if you update the commit message to reflect the actual change (at which 
point there's really nothing left of my authorship) I can live with it.

Robin.

> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> [hch: split the page allocation into a new helper to simplify the flow]
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/iommu/dma-iommu.c | 65 +++++++++++++++++++++------------------
>   1 file changed, 35 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index 9b269f0792f3..acdfe866cb29 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -955,35 +955,14 @@ static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
>   	__iommu_dma_free(dev, size, cpu_addr);
>   }
>   
> -static void *iommu_dma_alloc(struct device *dev, size_t size,
> -		dma_addr_t *handle, gfp_t gfp, unsigned long attrs)
> +static void *iommu_dma_alloc_pages(struct device *dev, size_t size,
> +		struct page **pagep, gfp_t gfp, unsigned long attrs)
>   {
>   	bool coherent = dev_is_dma_coherent(dev);
> -	int ioprot = dma_info_to_prot(DMA_BIDIRECTIONAL, coherent, attrs);
>   	size_t alloc_size = PAGE_ALIGN(size);
>   	struct page *page = NULL;
>   	void *cpu_addr;
>   
> -	gfp |= __GFP_ZERO;
> -
> -	if (gfpflags_allow_blocking(gfp) &&
> -	    !(attrs & DMA_ATTR_FORCE_CONTIGUOUS))
> -		return iommu_dma_alloc_remap(dev, size, handle, gfp, attrs);
> -
> -	if (!gfpflags_allow_blocking(gfp) && !coherent) {
> -		cpu_addr = dma_alloc_from_pool(alloc_size, &page, gfp);
> -		if (!cpu_addr)
> -			return NULL;
> -
> -		*handle = __iommu_dma_map(dev, page_to_phys(page), size,
> -					  ioprot);
> -		if (*handle == DMA_MAPPING_ERROR) {
> -			dma_free_from_pool(cpu_addr, alloc_size);
> -			return NULL;
> -		}
> -		return cpu_addr;
> -	}
> -
>   	if (gfpflags_allow_blocking(gfp))
>   		page = dma_alloc_from_contiguous(dev, alloc_size >> PAGE_SHIFT,
>   						 get_order(alloc_size),
> @@ -993,33 +972,59 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
>   	if (!page)
>   		return NULL;
>   
> -	*handle = __iommu_dma_map(dev, page_to_phys(page), size, ioprot);
> -	if (*handle == DMA_MAPPING_ERROR)
> -		goto out_free_pages;
> -
>   	if (!coherent || PageHighMem(page)) {
>   		pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
>   
>   		cpu_addr = dma_common_contiguous_remap(page, alloc_size,
>   				VM_USERMAP, prot, __builtin_return_address(0));
>   		if (!cpu_addr)
> -			goto out_unmap;
> +			goto out_free_pages;
>   
>   		if (!coherent)
>   			arch_dma_prep_coherent(page, size);
>   	} else {
>   		cpu_addr = page_address(page);
>   	}
> +
> +	*pagep = page;
>   	memset(cpu_addr, 0, alloc_size);
>   	return cpu_addr;
> -out_unmap:
> -	__iommu_dma_unmap(dev, *handle, size);
>   out_free_pages:
>   	if (!dma_release_from_contiguous(dev, page, alloc_size >> PAGE_SHIFT))
>   		__free_pages(page, get_order(alloc_size));
>   	return NULL;
>   }
>   
> +static void *iommu_dma_alloc(struct device *dev, size_t size,
> +		dma_addr_t *handle, gfp_t gfp, unsigned long attrs)
> +{
> +	bool coherent = dev_is_dma_coherent(dev);
> +	int ioprot = dma_info_to_prot(DMA_BIDIRECTIONAL, coherent, attrs);
> +	struct page *page = NULL;
> +	void *cpu_addr;
> +
> +	gfp |= __GFP_ZERO;
> +
> +	if (gfpflags_allow_blocking(gfp) &&
> +	    !(attrs & DMA_ATTR_FORCE_CONTIGUOUS))
> +		return iommu_dma_alloc_remap(dev, size, handle, gfp, attrs);
> +
> +	if (!gfpflags_allow_blocking(gfp) && !coherent)
> +		cpu_addr = dma_alloc_from_pool(PAGE_ALIGN(size), &page, gfp);
> +	else
> +		cpu_addr = iommu_dma_alloc_pages(dev, size, &page, gfp, attrs);
> +	if (!cpu_addr)
> +		return NULL;
> +
> +	*handle = __iommu_dma_map(dev, page_to_phys(page), size, ioprot);
> +	if (*handle == DMA_MAPPING_ERROR) {
> +		__iommu_dma_free(dev, size, cpu_addr);
> +		return NULL;
> +	}
> +
> +	return cpu_addr;
> +}
> +
>   static int __iommu_dma_mmap_pfn(struct vm_area_struct *vma,
>   			      unsigned long pfn, size_t size)
>   {
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
