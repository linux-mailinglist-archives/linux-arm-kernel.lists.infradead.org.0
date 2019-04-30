Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 258A1F586
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 13:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wzK3M21I0NL3ehz6B1G+lpFaCGKeB6odjnB7WEctwx0=; b=Z3vnyU3gsYU2+dxBatVfHTarN
	FVb7Bk1pkI/qj7ed3r6Hi6Y3nfvc3Uac3BM+/BBfTWkzlXwryHp9dlNrxALOv0FZ5GPqr7mEfI8Gl
	wmSwz0u3RnXm9kczwe3iGB45JoXXqXqUp65ukXuNxYw83RDJIbHObczdvg/bBjbFcVud6u+17JPZO
	ETlM6E8vxGd5uW/RADhxCuhjgzPuXODKSbtpGJK8cnvKQrTOUe13CmjGXk9yDMbh+gaQhZZqwLyQU
	i0BZrDG/x4a++BCr1uziwdPkHnIY+jAOicNqbsVAs6Q3JEQNt/Mkmsitj8+lya09gn9q5YNbDm8DJ
	p1IvyfnPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLQuq-0004DZ-0M; Tue, 30 Apr 2019 11:27:16 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLQui-0004Cb-9t; Tue, 30 Apr 2019 11:27:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 70BD380D;
 Tue, 30 Apr 2019 04:27:07 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B9CB03F5C1;
 Tue, 30 Apr 2019 04:27:03 -0700 (PDT)
Subject: Re: [PATCH v2 3/4] iommu/dma-iommu: Use the dev->coherent_dma_mask
To: Christoph Hellwig <hch@infradead.org>, Tom Murphy <tmurphy@arista.com>
References: <20190430002952.18909-1-tmurphy@arista.com>
 <20190430002952.18909-4-tmurphy@arista.com>
 <20190430111222.GA3191@infradead.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <da835ce2-f73e-3035-e1d7-d3028cc1a838@arm.com>
Date: Tue, 30 Apr 2019 12:27:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190430111222.GA3191@infradead.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_042708_352224_7982807E 
X-CRM114-Status: GOOD (  30.49  )
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
Cc: linux-arm-kernel@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, David Brown <david.brown@linaro.org>,
 iommu@lists.linux-foundation.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Andy Gross <andy.gross@linaro.org>, murphyt7@tcd.ie,
 David Woodhouse <dwmw2@infradead.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/04/2019 12:12, Christoph Hellwig wrote:
>>   static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
>> -		size_t size, int prot, struct iommu_domain *domain)
>> +		size_t size, int prot, struct iommu_domain *domain,
>> +		dma_addr_t dma_limit)
> 
> Can we just call this dma_mask?
> 
>>   static void iommu_dma_unmap_resource(struct device *dev, dma_addr_t handle,
>> @@ -1250,7 +1251,8 @@ static struct iommu_dma_msi_page *iommu_dma_get_msi_page(struct device *dev,
>>   	if (!msi_page)
>>   		return NULL;
>>   
>> -	iova = __iommu_dma_map(dev, msi_addr, size, prot, domain);
>> +	iova = __iommu_dma_map(dev, msi_addr, size, prot, domain,
>> +			dma_get_mask(dev));
> 
> Hmm, I don't think we need the DMA mask for the MSI mapping, this
> should probably always use a 64-bit mask.

If that were true then we wouldn't need DMA masks for regular mappings 
either. If we have to map the MSI doorbell at all, then we certainly 
have to place it at an IOVA that the relevant device is actually capable 
of addressing.

Robin.

>  Or we could just untangle
> it from the DMA mapping fast path entire, something like:
> 
> ---
>  From 0debafc85174ca830f2e371ff8e8f7465bde3ad8 Mon Sep 17 00:00:00 2001
> From: Christoph Hellwig <hch@lst.de>
> Date: Tue, 30 Apr 2019 07:06:23 -0400
> Subject: iommu/dma: opencode __iommu_dma_map in iommu_dma_get_msi_page
> 
> The MSI page mapping really is a little different from the normal DMA
> mappings and doesn't need to look at the DMA mask.  Just open code
> it instead of trying to squeeze the behavior into the DMA path helpers.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/iommu/dma-iommu.c | 27 +++++++--------------------
>   1 file changed, 7 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index 58c35bab7626..2ac0df0879d7 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -358,11 +358,6 @@ static dma_addr_t iommu_dma_alloc_iova(struct iommu_domain *domain,
>   	struct iova_domain *iovad = &cookie->iovad;
>   	unsigned long shift, iova_len, iova = 0;
>   
> -	if (cookie->type == IOMMU_DMA_MSI_COOKIE) {
> -		cookie->msi_iova += size;
> -		return cookie->msi_iova - size;
> -	}
> -
>   	shift = iova_shift(iovad);
>   	iova_len = size >> shift;
>   	/*
> @@ -397,10 +392,7 @@ static void iommu_dma_free_iova(struct iommu_dma_cookie *cookie,
>   {
>   	struct iova_domain *iovad = &cookie->iovad;
>   
> -	/* The MSI case is only ever cleaning up its most recent allocation */
> -	if (cookie->type == IOMMU_DMA_MSI_COOKIE)
> -		cookie->msi_iova -= size;
> -	else if (cookie->fq_domain)	/* non-strict mode */
> +	if (cookie->fq_domain)	/* non-strict mode */
>   		queue_iova(iovad, iova_pfn(iovad, iova),
>   				size >> iova_shift(iovad), 0);
>   	else
> @@ -430,14 +422,10 @@ static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
>   {
>   	struct iommu_domain *domain = iommu_get_dma_domain(dev);
>   	struct iommu_dma_cookie *cookie = domain->iova_cookie;
> -	size_t iova_off = 0;
> +	size_t iova_off = iova_offset(&cookie->iovad, phys);
>   	dma_addr_t iova;
>   
> -	if (cookie->type == IOMMU_DMA_IOVA_COOKIE) {
> -		iova_off = iova_offset(&cookie->iovad, phys);
> -		size = iova_align(&cookie->iovad, size + iova_off);
> -	}
> -
> +	size = iova_align(&cookie->iovad, size + iova_off);
>   	iova = iommu_dma_alloc_iova(domain, size, dma_get_mask(dev), dev);
>   	if (!iova)
>   		return DMA_MAPPING_ERROR;
> @@ -1121,7 +1109,6 @@ static struct iommu_dma_msi_page *iommu_dma_get_msi_page(struct device *dev,
>   {
>   	struct iommu_dma_cookie *cookie = domain->iova_cookie;
>   	struct iommu_dma_msi_page *msi_page;
> -	dma_addr_t iova;
>   	int prot = IOMMU_WRITE | IOMMU_NOEXEC | IOMMU_MMIO;
>   	size_t size = cookie_msi_granule(cookie);
>   
> @@ -1134,16 +1121,16 @@ static struct iommu_dma_msi_page *iommu_dma_get_msi_page(struct device *dev,
>   	if (!msi_page)
>   		return NULL;
>   
> -	iova = __iommu_dma_map(dev, msi_addr, size, prot);
> -	if (iova == DMA_MAPPING_ERROR)
> +	if (iommu_map(domain, cookie->msi_iova, msi_addr, size, prot))
>   		goto out_free_page;
>   
>   	INIT_LIST_HEAD(&msi_page->list);
>   	msi_page->phys = msi_addr;
> -	msi_page->iova = iova;
> +	msi_page->iova = cookie->msi_iova;
>   	list_add(&msi_page->list, &cookie->msi_page_list);
> -	return msi_page;
>   
> +	cookie->msi_iova += size;
> +	return msi_page;
>   out_free_page:
>   	kfree(msi_page);
>   	return NULL;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
