Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D012E45E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 16:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oAdwwe5hoc87M728B9j6uyHq9tGhl9UzmkToKPRtNsg=; b=qtPikxVPRm5e/nPgthmeM1vne
	WSwfeW8NxpQTLZw4HgcOtrEN1tWuqz00gMdcakjV52kANVzfWOFi/yjY4AduH3ingxa08m7uIcGWi
	kiOuuvtEZeRGbkBSsArBxXg1kZjWpf4J8WrJPVpaFhcjivtl+SEagmJA/ZUP7Ju47X1pKQ1ygIRIp
	ZZW9c4H52mWbltfrsqDiyMFeRyEQZGo3sSh8pH0UzrTu/1qnKfQ8mxozIld3J7yYKGp1cqX5reLDF
	VHnjx8qSN1qlvwe1P1eC2wAovoR55lpIXBFByAHXfo5zrdeB8RGiLZNi30JPJYLHgHPu67b4QY3Go
	aL7fZSHCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL70W-0004Bq-HA; Mon, 29 Apr 2019 14:11:48 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL70O-0004B1-EV
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 14:11:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9284FA78;
 Mon, 29 Apr 2019 07:11:39 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2B8C23F5C1;
 Mon, 29 Apr 2019 07:11:38 -0700 (PDT)
Subject: Re: [PATCH 19/26] iommu/dma: Cleanup variable naming in
 iommu_dma_alloc
To: Christoph Hellwig <hch@lst.de>
References: <20190422175942.18788-1-hch@lst.de>
 <20190422175942.18788-20-hch@lst.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <49314f40-0676-629c-379f-fc05e75fb078@arm.com>
Date: Mon, 29 Apr 2019 15:11:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190422175942.18788-20-hch@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_071140_507095_1FF78868 
X-CRM114-Status: GOOD (  24.49  )
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
> Most importantly clear up the size / iosize confusion.  Also rename addr
> to cpu_addr to match the surrounding code and make the intention a little
> more clear.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> [hch: split from a larger patch]

I can't bring myself to actually ack "my" patch, but I am perfectly 
happy with the split :)

Robin.

> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/iommu/dma-iommu.c | 45 +++++++++++++++++++--------------------
>   1 file changed, 22 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index 95a12e975994..9b269f0792f3 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -960,64 +960,63 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
>   {
>   	bool coherent = dev_is_dma_coherent(dev);
>   	int ioprot = dma_info_to_prot(DMA_BIDIRECTIONAL, coherent, attrs);
> -	size_t iosize = size;
> +	size_t alloc_size = PAGE_ALIGN(size);
>   	struct page *page = NULL;
> -	void *addr;
> +	void *cpu_addr;
>   
> -	size = PAGE_ALIGN(size);
>   	gfp |= __GFP_ZERO;
>   
>   	if (gfpflags_allow_blocking(gfp) &&
>   	    !(attrs & DMA_ATTR_FORCE_CONTIGUOUS))
> -		return iommu_dma_alloc_remap(dev, iosize, handle, gfp, attrs);
> +		return iommu_dma_alloc_remap(dev, size, handle, gfp, attrs);
>   
>   	if (!gfpflags_allow_blocking(gfp) && !coherent) {
> -		addr = dma_alloc_from_pool(size, &page, gfp);
> -		if (!addr)
> +		cpu_addr = dma_alloc_from_pool(alloc_size, &page, gfp);
> +		if (!cpu_addr)
>   			return NULL;
>   
> -		*handle = __iommu_dma_map(dev, page_to_phys(page), iosize,
> +		*handle = __iommu_dma_map(dev, page_to_phys(page), size,
>   					  ioprot);
>   		if (*handle == DMA_MAPPING_ERROR) {
> -			dma_free_from_pool(addr, size);
> +			dma_free_from_pool(cpu_addr, alloc_size);
>   			return NULL;
>   		}
> -		return addr;
> +		return cpu_addr;
>   	}
>   
>   	if (gfpflags_allow_blocking(gfp))
> -		page = dma_alloc_from_contiguous(dev, size >> PAGE_SHIFT,
> -						 get_order(size),
> +		page = dma_alloc_from_contiguous(dev, alloc_size >> PAGE_SHIFT,
> +						 get_order(alloc_size),
>   						 gfp & __GFP_NOWARN);
>   	if (!page)
> -		page = alloc_pages(gfp, get_order(size));
> +		page = alloc_pages(gfp, get_order(alloc_size));
>   	if (!page)
>   		return NULL;
>   
> -	*handle = __iommu_dma_map(dev, page_to_phys(page), iosize, ioprot);
> +	*handle = __iommu_dma_map(dev, page_to_phys(page), size, ioprot);
>   	if (*handle == DMA_MAPPING_ERROR)
>   		goto out_free_pages;
>   
>   	if (!coherent || PageHighMem(page)) {
>   		pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
>   
> -		addr = dma_common_contiguous_remap(page, size, VM_USERMAP, prot,
> -				__builtin_return_address(0));
> -		if (!addr)
> +		cpu_addr = dma_common_contiguous_remap(page, alloc_size,
> +				VM_USERMAP, prot, __builtin_return_address(0));
> +		if (!cpu_addr)
>   			goto out_unmap;
>   
>   		if (!coherent)
> -			arch_dma_prep_coherent(page, iosize);
> +			arch_dma_prep_coherent(page, size);
>   	} else {
> -		addr = page_address(page);
> +		cpu_addr = page_address(page);
>   	}
> -	memset(addr, 0, size);
> -	return addr;
> +	memset(cpu_addr, 0, alloc_size);
> +	return cpu_addr;
>   out_unmap:
> -	__iommu_dma_unmap(dev, *handle, iosize);
> +	__iommu_dma_unmap(dev, *handle, size);
>   out_free_pages:
> -	if (!dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT))
> -		__free_pages(page, get_order(size));
> +	if (!dma_release_from_contiguous(dev, page, alloc_size >> PAGE_SHIFT))
> +		__free_pages(page, get_order(alloc_size));
>   	return NULL;
>   }
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
