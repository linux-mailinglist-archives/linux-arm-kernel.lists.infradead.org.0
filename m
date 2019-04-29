Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F77E342
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 15:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HRWVaU5Ag95zl5Cxe7WIUb9cwE2JXB8igEI8e3RD5is=; b=cLIIxP4mpB7MHHOQ2x1Az+RtC
	VeqC0slZkso9vlfiGB3fYdXz6xO54yotz6raCeNl5rtShbEiqZFQcLAkQJOhObLiDGz5RhvM5vaFV
	hwk5S4aUnFQ2tCumSz5g2gWjKEdX5y7VsBUTchB24lXvVzi6C/ehGHLStKU0WbH/KSQdEoYGkDwJ9
	5oBM9C3BRnmT1aT+NKRb1V51y2Y2hqngQf16tJ/2tVn6T3SvaTHj29xS+zDJU0PQ0RYoBBxgb4HWG
	6L+xley2yT9mTAe5AA5fKmZWsnbDjSdBysDXqAXL0vgUFi8/gkbuVfgqSRdMjC0HVxtJ5JyCGZfvL
	aSYc+KS5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL5yn-0001ZZ-Q3; Mon, 29 Apr 2019 13:05:57 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL5yg-0001Yy-Px
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 13:05:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 81232A78;
 Mon, 29 Apr 2019 06:05:49 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 15DF73F71A;
 Mon, 29 Apr 2019 06:05:47 -0700 (PDT)
Subject: Re: [PATCH 11/26] iommu/dma: Factor out remapped pages lookup
To: Christoph Hellwig <hch@lst.de>
References: <20190422175942.18788-1-hch@lst.de>
 <20190422175942.18788-12-hch@lst.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f8c04947-0ddb-17c5-8918-5859aabc220c@arm.com>
Date: Mon, 29 Apr 2019 14:05:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190422175942.18788-12-hch@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_060550_853164_7078FED2 
X-CRM114-Status: GOOD (  24.43  )
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
> Since we duplicate the find_vm_area() logic a few times in places where
> we only care aboute the pages, factor out a helper to abstract it.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> [hch: don't warn when not finding a region, as we'll rely on that later]

Yeah, I did think about that and the things which it might make a little 
easier, but preserved it as-is for the sake of keeping my modifications 
quick and simple. TBH I'm now feeling more inclined to drop the WARNs 
entirely at this point, since it's not like there's ever been any 
general guarantee that freeing the wrong thing shouldn't just crash, but 
that's something we can easily come back to later if need be.

Robin.

> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/iommu/dma-iommu.c | 32 ++++++++++++++++++++------------
>   1 file changed, 20 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index b52c5d6be7b4..8e2d9733113e 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -525,6 +525,15 @@ static struct page **__iommu_dma_alloc_pages(struct device *dev,
>   	return pages;
>   }
>   
> +static struct page **__iommu_dma_get_pages(void *cpu_addr)
> +{
> +	struct vm_struct *area = find_vm_area(cpu_addr);
> +
> +	if (!area || !area->pages)
> +		return NULL;
> +	return area->pages;
> +}
> +
>   /**
>    * iommu_dma_free - Free a buffer allocated by __iommu_dma_alloc()
>    * @dev: Device which owns this buffer
> @@ -1023,11 +1032,11 @@ static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
>   		dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT);
>   		dma_common_free_remap(cpu_addr, size, VM_USERMAP);
>   	} else if (is_vmalloc_addr(cpu_addr)){
> -		struct vm_struct *area = find_vm_area(cpu_addr);
> +		struct page **pages = __iommu_dma_get_pages(cpu_addr);
>   
> -		if (WARN_ON(!area || !area->pages))
> +		if (WARN_ON(!pages))
>   			return;
> -		__iommu_dma_free(dev, area->pages, iosize, &handle);
> +		__iommu_dma_free(dev, pages, iosize, &handle);
>   		dma_common_free_remap(cpu_addr, size, VM_USERMAP);
>   	} else {
>   		__iommu_dma_unmap(dev, handle, iosize);
> @@ -1049,7 +1058,7 @@ static int iommu_dma_mmap(struct device *dev, struct vm_area_struct *vma,
>   {
>   	unsigned long nr_pages = PAGE_ALIGN(size) >> PAGE_SHIFT;
>   	unsigned long off = vma->vm_pgoff;
> -	struct vm_struct *area;
> +	struct page **pages;
>   	int ret;
>   
>   	vma->vm_page_prot = arch_dma_mmap_pgprot(dev, vma->vm_page_prot, attrs);
> @@ -1074,11 +1083,10 @@ static int iommu_dma_mmap(struct device *dev, struct vm_area_struct *vma,
>   		return __iommu_dma_mmap_pfn(vma, pfn, size);
>   	}
>   
> -	area = find_vm_area(cpu_addr);
> -	if (WARN_ON(!area || !area->pages))
> +	pages = __iommu_dma_get_pages(cpu_addr);
> +	if (WARN_ON_ONCE(!pages))
>   		return -ENXIO;
> -
> -	return __iommu_dma_mmap(area->pages, size, vma);
> +	return __iommu_dma_mmap(pages, size, vma);
>   }
>   
>   static int __iommu_dma_get_sgtable_page(struct sg_table *sgt, struct page *page,
> @@ -1096,7 +1104,7 @@ static int iommu_dma_get_sgtable(struct device *dev, struct sg_table *sgt,
>   		unsigned long attrs)
>   {
>   	unsigned int count = PAGE_ALIGN(size) >> PAGE_SHIFT;
> -	struct vm_struct *area = find_vm_area(cpu_addr);
> +	struct page **pages;
>   
>   	if (!is_vmalloc_addr(cpu_addr)) {
>   		struct page *page = virt_to_page(cpu_addr);
> @@ -1112,10 +1120,10 @@ static int iommu_dma_get_sgtable(struct device *dev, struct sg_table *sgt,
>   		return __iommu_dma_get_sgtable_page(sgt, page, size);
>   	}
>   
> -	if (WARN_ON(!area || !area->pages))
> +	pages = __iommu_dma_get_pages(cpu_addr);
> +	if (WARN_ON_ONCE(!pages))
>   		return -ENXIO;
> -
> -	return sg_alloc_table_from_pages(sgt, area->pages, count, 0, size,
> +	return sg_alloc_table_from_pages(sgt, pages, count, 0, size,
>   					 GFP_KERNEL);
>   }
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
