Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AC1E449
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 16:09:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZENopipmsflf8LHP57djhbVss1BjUMrTJd1wtNxmBxg=; b=eiAVdjkiU+dnZads/bnEgG9J9
	EgMsETQo8TUILpzwbSmkIVOR+wcUd5K4yqomhDCqrS4hrLFUB6ZmqZBXX9MFbWVmuNBZ9w5cQPPL2
	iqVLF6XaK43tuYi+jma+vZ+sfW8KdQDzLBE9+VdNKmiRvyuVnrKKQhx5YHMEz+wbHzHr4ajfHvjAP
	Dtbwx5n+8zF87FoUH7saSLqLGcDV6ZlinxGde6iq+k1IgXMnn1w2PTcNQDZ73YzaEhNu+h12ubXsY
	65Lkc+WhJmIOMNZU56OGq+1TNlf0AaHqLYGICISfSq29EZLYFhxDlokrleSCbSumeDEZoh2hSlwS7
	Ou8unT8hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL6xw-0001q6-7g; Mon, 29 Apr 2019 14:09:08 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL6xq-0001pi-1H
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 14:09:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3072FA78;
 Mon, 29 Apr 2019 07:09:01 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BBEE43F5C1;
 Mon, 29 Apr 2019 07:08:59 -0700 (PDT)
Subject: Re: [PATCH 21/26] iommu/dma: Refactor iommu_dma_get_sgtable
To: Christoph Hellwig <hch@lst.de>
References: <20190422175942.18788-1-hch@lst.de>
 <20190422175942.18788-22-hch@lst.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <10b0710c-b2b4-7647-6846-71d9df4bd038@arm.com>
Date: Mon, 29 Apr 2019 15:08:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190422175942.18788-22-hch@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_070902_078377_F9AB1283 
X-CRM114-Status: GOOD (  27.53  )
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
> Inline __iommu_dma_get_sgtable_page into the main function, and use the
> fact that __iommu_dma_get_pages return NULL for remapped contigous
> allocations to simplify the code flow a bit.

Yeah, even I was a bit dubious about the readability of "if (page)... 
else if (pages)..." that my attempt ended up with, so I don't really 
have anything to complain about here.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/iommu/dma-iommu.c | 45 +++++++++++++++------------------------
>   1 file changed, 17 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index acdfe866cb29..138b85e675c8 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -1070,42 +1070,31 @@ static int iommu_dma_mmap(struct device *dev, struct vm_area_struct *vma,
>   	return __iommu_dma_mmap(pages, size, vma);
>   }
>   
> -static int __iommu_dma_get_sgtable_page(struct sg_table *sgt, struct page *page,
> -		size_t size)
> -{
> -	int ret = sg_alloc_table(sgt, 1, GFP_KERNEL);
> -
> -	if (!ret)
> -		sg_set_page(sgt->sgl, page, PAGE_ALIGN(size), 0);
> -	return ret;
> -}
> -
>   static int iommu_dma_get_sgtable(struct device *dev, struct sg_table *sgt,
>   		void *cpu_addr, dma_addr_t dma_addr, size_t size,
>   		unsigned long attrs)
>   {
> -	unsigned int count = PAGE_ALIGN(size) >> PAGE_SHIFT;
> -	struct page **pages;
> +	struct page *page;
> +	int ret;
>   
> -	if (!is_vmalloc_addr(cpu_addr)) {
> -		struct page *page = virt_to_page(cpu_addr);
> -		return __iommu_dma_get_sgtable_page(sgt, page, size);
> -	}
> +	if (is_vmalloc_addr(cpu_addr)) {
> +		struct page **pages = __iommu_dma_get_pages(cpu_addr);
>   
> -	if (attrs & DMA_ATTR_FORCE_CONTIGUOUS) {
> -		/*
> -		 * DMA_ATTR_FORCE_CONTIGUOUS allocations are always remapped,
> -		 * hence in the vmalloc space.
> -		 */
> -		struct page *page = vmalloc_to_page(cpu_addr);
> -		return __iommu_dma_get_sgtable_page(sgt, page, size);
> +		if (pages) {
> +			return sg_alloc_table_from_pages(sgt, pages,
> +					PAGE_ALIGN(size) >> PAGE_SHIFT,
> +					0, size, GFP_KERNEL);
> +		}
> +
> +		page = vmalloc_to_page(cpu_addr);
> +	} else {
> +		page = virt_to_page(cpu_addr);
>   	}
>   
> -	pages = __iommu_dma_get_pages(cpu_addr);
> -	if (WARN_ON_ONCE(!pages))
> -		return -ENXIO;
> -	return sg_alloc_table_from_pages(sgt, pages, count, 0, size,
> -					 GFP_KERNEL);
> +	ret = sg_alloc_table(sgt, 1, GFP_KERNEL);
> +	if (!ret)
> +		sg_set_page(sgt->sgl, page, PAGE_ALIGN(size), 0);
> +	return ret;
>   }
>   
>   static const struct dma_map_ops iommu_dma_ops = {
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
