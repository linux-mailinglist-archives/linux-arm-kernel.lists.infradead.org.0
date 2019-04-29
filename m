Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B17E41E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 16:00:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jor2OGzbCfyrJOqgjz8ioFDU/CFlKJP8EM1zh+zGa5w=; b=XpSTfszyoyusuuDOW1Z1PFFDi
	LCjBKIFQhL2YMXxdfOYHpVZewS85CNRnCMF2yJyWOpN+77qjQKtjwEwR9UaaXU97cUL7hfwJ4Vx2d
	baduJbrBjjrjyW7wC2tX9RkNj12YIY4KDRPd4biKtMO0YmneEyIWByZnZyILJv7c3rf+4YUcZU2em
	VhXWsEPvU5xGIz9ySJEhZ8VRpbElNEmOcHE5fWoEWEBcoJOfsZI6ZI9v+aMoBcjVSjrTEmdZ0bQr4
	bKcf80tB1omWrpql7N4MY+nZR6WPI7Uz42E1ocB5WxLPoedJeHSSNFsCqAQvdDMRYqNmdft5ByPZ1
	9wnu6+pTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL6p0-0006Le-E5; Mon, 29 Apr 2019 13:59:54 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL6ot-0006Kt-CJ
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 13:59:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 47E23A78;
 Mon, 29 Apr 2019 06:59:46 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D67293F5C1;
 Mon, 29 Apr 2019 06:59:44 -0700 (PDT)
Subject: Re: [PATCH 14/26] iommu/dma: Refactor iommu_dma_free
To: Christoph Hellwig <hch@lst.de>
References: <20190422175942.18788-1-hch@lst.de>
 <20190422175942.18788-15-hch@lst.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <8321a363-f448-3e48-48f6-58d2b44a2900@arm.com>
Date: Mon, 29 Apr 2019 14:59:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190422175942.18788-15-hch@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_065947_426773_F5038B73 
X-CRM114-Status: GOOD (  31.68  )
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
> 
> The freeing logic was made particularly horrible by part of it being
> opaque to the arch wrapper, which led to a lot of convoluted repetition
> to ensure each path did everything in the right order. Now that it's
> all private, we can pick apart and consolidate the logically-distinct
> steps of freeing the IOMMU mapping, the underlying pages, and the CPU
> remap (if necessary) into something much more manageable.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> [various cosmetic changes to the code flow]

Hmm, I do still prefer my original flow with the dma_common_free_remap() 
call right out of the way at the end rather than being a special case in 
the middle of all the page-freeing (which is the kind of existing 
complexity I was trying to eliminate). I guess you've done this to avoid 
having "if (!dma_release_from_contiguous(...))..." twice like I ended up 
with, which is fair enough I suppose - once we manage to solve the new 
dma_{alloc,free}_contiguous() interface that may tip the balance so I 
can always revisit this then.

> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/iommu/dma-iommu.c | 75 ++++++++++++++++++---------------------
>   1 file changed, 35 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index 4632b9d301a1..9658c4cc3cfe 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -916,6 +916,41 @@ static void iommu_dma_unmap_resource(struct device *dev, dma_addr_t handle,
>   	__iommu_dma_unmap(dev, handle, size);
>   }
>   
> +static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
> +		dma_addr_t handle, unsigned long attrs)
> +{
> +	size_t alloc_size = PAGE_ALIGN(size);
> +	int count = alloc_size >> PAGE_SHIFT;
> +	struct page *page = NULL;
> +
> +	__iommu_dma_unmap(dev, handle, size);
> +
> +	/* Non-coherent atomic allocation? Easy */
> +	if (dma_free_from_pool(cpu_addr, alloc_size))
> +		return;
> +
> +	if (is_vmalloc_addr(cpu_addr)) {
> +		/*
> +		 * If it the address is remapped, then it's either non-coherent

s/If it/If/

My "easy; more involved; most complex" narrative definitely doesn't 
translate very well to a different order :)

Otherwise,

Reluctantly-Acked-by: Robin Murphy <robin.murphy@arm.com>

> +		 * or highmem CMA, or an iommu_dma_alloc_remap() construction.
> +		 */
> +		struct page **pages = __iommu_dma_get_pages(cpu_addr);
> +
> +		if (pages)
> +			__iommu_dma_free_pages(pages, count);
> +		else
> +			page = vmalloc_to_page(cpu_addr);
> +
> +		dma_common_free_remap(cpu_addr, alloc_size, VM_USERMAP);
> +	} else {
> +		/* Lowmem means a coherent atomic or CMA allocation */
> +		page = virt_to_page(cpu_addr);
> +	}
> +
> +	if (page && !dma_release_from_contiguous(dev, page, count))
> +		__free_pages(page, get_order(alloc_size));
> +}
> +
>   static void *iommu_dma_alloc(struct device *dev, size_t size,
>   		dma_addr_t *handle, gfp_t gfp, unsigned long attrs)
>   {
> @@ -985,46 +1020,6 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
>   	return addr;
>   }
>   
> -static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
> -		dma_addr_t handle, unsigned long attrs)
> -{
> -	size_t iosize = size;
> -
> -	size = PAGE_ALIGN(size);
> -	/*
> -	 * @cpu_addr will be one of 4 things depending on how it was allocated:
> -	 * - A remapped array of pages for contiguous allocations.
> -	 * - A remapped array of pages from iommu_dma_alloc_remap(), for all
> -	 *   non-atomic allocations.
> -	 * - A non-cacheable alias from the atomic pool, for atomic
> -	 *   allocations by non-coherent devices.
> -	 * - A normal lowmem address, for atomic allocations by
> -	 *   coherent devices.
> -	 * Hence how dodgy the below logic looks...
> -	 */
> -	if (dma_in_atomic_pool(cpu_addr, size)) {
> -		__iommu_dma_unmap(dev, handle, iosize);
> -		dma_free_from_pool(cpu_addr, size);
> -	} else if (attrs & DMA_ATTR_FORCE_CONTIGUOUS) {
> -		struct page *page = vmalloc_to_page(cpu_addr);
> -
> -		__iommu_dma_unmap(dev, handle, iosize);
> -		dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT);
> -		dma_common_free_remap(cpu_addr, size, VM_USERMAP);
> -	} else if (is_vmalloc_addr(cpu_addr)){
> -		struct page **pages = __iommu_dma_get_pages(cpu_addr);
> -
> -		if (WARN_ON(!pages))
> -			return;
> -		__iommu_dma_unmap(dev, handle, iosize);
> -		__iommu_dma_free_pages(pages, size >> PAGE_SHIFT);
> -		dma_common_free_remap(cpu_addr, size, VM_USERMAP);
> -	} else {
> -		__iommu_dma_unmap(dev, handle, iosize);
> -		__free_pages(virt_to_page(cpu_addr), get_order(size));
> -	}
> -}
> -
>   static int __iommu_dma_mmap_pfn(struct vm_area_struct *vma,
>   			      unsigned long pfn, size_t size)
>   {
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
