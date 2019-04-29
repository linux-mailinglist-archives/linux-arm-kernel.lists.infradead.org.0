Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 961FBE351
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 15:11:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=93uokUwzFgb+7NciCacS1PXXQyzxhv0djWpUWJJ7QP0=; b=MmlrwQzQzquq3LWF7ATk7mP60
	9r69kvLYpm9Jb9OtLkB2MAjXAzKdxVNnUMjDXPIEe+5zpthZzBHukilsjN3mb9PGsuDXzsKk734CW
	Ca/6hRcnjrWPWMIeqtm+Nq0TBOmcJ9Jc0J8bx50b8sU3R4IHeNDC2l37ovxc2VZP2YbTiTK+hYLaQ
	HiBKenUX5q1hjXIfmWPgEgSiWtIUeVaK+0WtZt28cr+irl/9qpgzjoCvOvFGf+WdxZVqZlv+yQW+U
	VgyRMI/NnqOW53UszvpGP0a4gjQ28vzISvn/O/Oo5/4P441IlIBjo/LFuO2jXye2p9WMq9377qVyv
	4jTx4nYyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL63Z-0003Gl-92; Mon, 29 Apr 2019 13:10:53 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL63R-0003GK-ED
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 13:10:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C948A78;
 Mon, 29 Apr 2019 06:10:44 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2716E3F71A;
 Mon, 29 Apr 2019 06:10:43 -0700 (PDT)
Subject: Re: [PATCH 12/26] iommu/dma: Refactor the page array remapping
 allocator
To: Christoph Hellwig <hch@lst.de>
References: <20190422175942.18788-1-hch@lst.de>
 <20190422175942.18788-13-hch@lst.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <847e0d85-36c6-01d1-6547-5ca9d3f0931a@arm.com>
Date: Mon, 29 Apr 2019 14:10:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190422175942.18788-13-hch@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_061045_494145_BBAD0842 
X-CRM114-Status: GOOD (  30.16  )
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
> Move the call to dma_common_pages_remap into __iommu_dma_alloc and
> rename it to iommu_dma_alloc_remap.  This creates a self-contained
> helper for remapped pages allocation and mapping.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/iommu/dma-iommu.c | 54 +++++++++++++++++++--------------------
>   1 file changed, 26 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index 8e2d9733113e..b8e46e89a60a 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -535,9 +535,9 @@ static struct page **__iommu_dma_get_pages(void *cpu_addr)
>   }
>   
>   /**
> - * iommu_dma_free - Free a buffer allocated by __iommu_dma_alloc()
> + * iommu_dma_free - Free a buffer allocated by iommu_dma_alloc_remap()
>    * @dev: Device which owns this buffer
> - * @pages: Array of buffer pages as returned by __iommu_dma_alloc()
> + * @pages: Array of buffer pages as returned by __iommu_dma_alloc_remap()
>    * @size: Size of buffer in bytes
>    * @handle: DMA address of buffer
>    *
> @@ -553,33 +553,35 @@ static void __iommu_dma_free(struct device *dev, struct page **pages,
>   }
>   
>   /**
> - * __iommu_dma_alloc - Allocate and map a buffer contiguous in IOVA space
> + * iommu_dma_alloc_remap - Allocate and map a buffer contiguous in IOVA space
>    * @dev: Device to allocate memory for. Must be a real device
>    *	 attached to an iommu_dma_domain
>    * @size: Size of buffer in bytes
> + * @dma_handle: Out argument for allocated DMA handle
>    * @gfp: Allocation flags
>    * @attrs: DMA attributes for this allocation
> - * @prot: IOMMU mapping flags
> - * @handle: Out argument for allocated DMA handle
>    *
>    * If @size is less than PAGE_SIZE, then a full CPU page will be allocated,
>    * but an IOMMU which supports smaller pages might not map the whole thing.
>    *
> - * Return: Array of struct page pointers describing the buffer,
> - *	   or NULL on failure.
> + * Return: Mapped virtual address, or NULL on failure.
>    */
> -static struct page **__iommu_dma_alloc(struct device *dev, size_t size,
> -		gfp_t gfp, unsigned long attrs, int prot, dma_addr_t *handle)
> +static void *iommu_dma_alloc_remap(struct device *dev, size_t size,
> +		dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
>   {
>   	struct iommu_domain *domain = iommu_get_dma_domain(dev);
>   	struct iommu_dma_cookie *cookie = domain->iova_cookie;
>   	struct iova_domain *iovad = &cookie->iovad;
> +	bool coherent = dev_is_dma_coherent(dev);
> +	int ioprot = dma_info_to_prot(DMA_BIDIRECTIONAL, coherent, attrs);
> +	pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
> +	unsigned int count, min_size, alloc_sizes = domain->pgsize_bitmap;
>   	struct page **pages;
>   	struct sg_table sgt;
>   	dma_addr_t iova;
> -	unsigned int count, min_size, alloc_sizes = domain->pgsize_bitmap;
> +	void *vaddr;
>   
> -	*handle = DMA_MAPPING_ERROR;
> +	*dma_handle = DMA_MAPPING_ERROR;
>   
>   	min_size = alloc_sizes & -alloc_sizes;
>   	if (min_size < PAGE_SIZE) {
> @@ -605,7 +607,7 @@ static struct page **__iommu_dma_alloc(struct device *dev, size_t size,
>   	if (sg_alloc_table_from_pages(&sgt, pages, count, 0, size, GFP_KERNEL))
>   		goto out_free_iova;
>   
> -	if (!(prot & IOMMU_CACHE)) {
> +	if (!(ioprot & IOMMU_CACHE)) {
>   		struct scatterlist *sg;
>   		int i;
>   
> @@ -613,14 +615,21 @@ static struct page **__iommu_dma_alloc(struct device *dev, size_t size,
>   			arch_dma_prep_coherent(sg_page(sg), sg->length);
>   	}
>   
> -	if (iommu_map_sg(domain, iova, sgt.sgl, sgt.orig_nents, prot)
> +	if (iommu_map_sg(domain, iova, sgt.sgl, sgt.orig_nents, ioprot)
>   			< size)
>   		goto out_free_sg;
>   
> -	*handle = iova;
> +	vaddr = dma_common_pages_remap(pages, size, VM_USERMAP, prot,
> +			__builtin_return_address(0));
> +	if (!vaddr)
> +		goto out_unmap;
> +
> +	*dma_handle = iova;
>   	sg_free_table(&sgt);
> -	return pages;
> +	return vaddr;
>   
> +out_unmap:
> +	__iommu_dma_unmap(dev, iova, size);
>   out_free_sg:
>   	sg_free_table(&sgt);
>   out_free_iova:
> @@ -989,18 +998,7 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
>   						    size >> PAGE_SHIFT);
>   		}
>   	} else {
> -		pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
> -		struct page **pages;
> -
> -		pages = __iommu_dma_alloc(dev, iosize, gfp, attrs, ioprot,
> -					handle);
> -		if (!pages)
> -			return NULL;
> -
> -		addr = dma_common_pages_remap(pages, size, VM_USERMAP, prot,
> -					      __builtin_return_address(0));
> -		if (!addr)
> -			__iommu_dma_free(dev, pages, iosize, handle);
> +		addr = iommu_dma_alloc_remap(dev, iosize, handle, gfp, attrs);
>   	}
>   	return addr;
>   }
> @@ -1014,7 +1012,7 @@ static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
>   	/*
>   	 * @cpu_addr will be one of 4 things depending on how it was allocated:
>   	 * - A remapped array of pages for contiguous allocations.
> -	 * - A remapped array of pages from __iommu_dma_alloc(), for all
> +	 * - A remapped array of pages from iommu_dma_alloc_remap(), for all
>   	 *   non-atomic allocations.
>   	 * - A non-cacheable alias from the atomic pool, for atomic
>   	 *   allocations by non-coherent devices.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
