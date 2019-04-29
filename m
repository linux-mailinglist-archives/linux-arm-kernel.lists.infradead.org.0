Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D19E524
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 16:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gzW9QcQ/V39265JoKLd1eaFcOMNdheKdwsrAs/8O+uY=; b=f+F/KpH+qVCDKC55WrFhCqfdw
	S1gjWbhCyElFPUhJGzTUkfxphpVvIdTv6yE712xBLTSRS7hep/1OIeWpnnO8n5KIA1jtL5c83wMfz
	ajvxheLEBAYQfPXi2Z4Ky/b9bfBPURkV7C2aitg4ipWTNJ1JeK7herrEE/zCjZW98yuRWDLF9EA28
	5JPLYqCUcoeOiZDQ1irckhIhqI0V360/4nbIeqXK8ANNVLJXQ+12UvsfgZ/6g/v1B/3clqmfPkf6+
	7WSB0n64L4BjEGiGz8F0fcNWnwym12ks/ZY998BS901fjePMALSYk/8BSLbIA9A4+L0gkbibPBN+V
	TNkPK30YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL7YI-0007yQ-LB; Mon, 29 Apr 2019 14:46:42 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL7Y7-0007xe-OQ
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 14:46:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C24A80D;
 Mon, 29 Apr 2019 07:46:31 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BA8DB3F5C1;
 Mon, 29 Apr 2019 07:46:29 -0700 (PDT)
Subject: Re: [PATCH 23/26] iommu/dma: Don't depend on CONFIG_DMA_DIRECT_REMAP
To: Christoph Hellwig <hch@lst.de>
References: <20190422175942.18788-1-hch@lst.de>
 <20190422175942.18788-24-hch@lst.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <57ecaf25-ac9a-ec34-d552-bcbc1891875e@arm.com>
Date: Mon, 29 Apr 2019 15:46:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190422175942.18788-24-hch@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_074634_510735_85BAFF45 
X-CRM114-Status: GOOD (  25.03  )
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
> For entirely dma coherent architectures there is no requirement to ever
> remap dma coherent allocation.  Move all the remap and pool code under
> IS_ENABLED() checks and drop the Kconfig dependency.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/iommu/Kconfig     |  1 -
>   drivers/iommu/dma-iommu.c | 16 +++++++++-------
>   2 files changed, 9 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
> index bdc14baf2ee5..6f07f3b21816 100644
> --- a/drivers/iommu/Kconfig
> +++ b/drivers/iommu/Kconfig
> @@ -95,7 +95,6 @@ config IOMMU_DMA
>   	select IOMMU_API
>   	select IOMMU_IOVA
>   	select NEED_SG_DMA_LENGTH
> -	depends on DMA_DIRECT_REMAP
>   
>   config FSL_PAMU
>   	bool "Freescale IOMMU support"
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index 8fc6098c1eeb..278a9a960107 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -923,10 +923,11 @@ static void __iommu_dma_free(struct device *dev, size_t size, void *cpu_addr)
>   	struct page *page = NULL;
>   
>   	/* Non-coherent atomic allocation? Easy */
> -	if (dma_free_from_pool(cpu_addr, alloc_size))
> +	if (IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) &&
> +	    dma_free_from_pool(cpu_addr, alloc_size))
>   		return;
>   
> -	if (is_vmalloc_addr(cpu_addr)) {
> +	if (IS_ENABLED(CONFIG_DMA_REMAP) && is_vmalloc_addr(cpu_addr)) {
>   		/*
>   		 * If it the address is remapped, then it's either non-coherent
>   		 * or highmem CMA, or an iommu_dma_alloc_remap() construction.
> @@ -972,7 +973,7 @@ static void *iommu_dma_alloc_pages(struct device *dev, size_t size,
>   	if (!page)
>   		return NULL;
>   
> -	if (!coherent || PageHighMem(page)) {
> +	if (IS_ENABLED(CONFIG_DMA_REMAP) && (!coherent || PageHighMem(page))) {
>   		pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
>   
>   		cpu_addr = dma_common_contiguous_remap(page, alloc_size,
> @@ -1005,11 +1006,12 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
>   
>   	gfp |= __GFP_ZERO;
>   
> -	if (gfpflags_allow_blocking(gfp) &&
> +	if (IS_ENABLED(CONFIG_DMA_REMAP) && gfpflags_allow_blocking(gfp) &&
>   	    !(attrs & DMA_ATTR_FORCE_CONTIGUOUS))
>   		return iommu_dma_alloc_remap(dev, size, handle, gfp, attrs);
>   
> -	if (!gfpflags_allow_blocking(gfp) && !coherent)
> +	if (IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) &&
> +	    !gfpflags_allow_blocking(gfp) && !coherent)
>   		cpu_addr = dma_alloc_from_pool(PAGE_ALIGN(size), &page, gfp);
>   	else
>   		cpu_addr = iommu_dma_alloc_pages(dev, size, &page, gfp, attrs);
> @@ -1041,7 +1043,7 @@ static int iommu_dma_mmap(struct device *dev, struct vm_area_struct *vma,
>   	if (off >= nr_pages || vma_pages(vma) > nr_pages - off)
>   		return -ENXIO;
>   
> -	if (is_vmalloc_addr(cpu_addr)) {
> +	if (IS_ENABLED(CONFIG_DMA_REMAP) && is_vmalloc_addr(cpu_addr)) {
>   		struct page **pages = __iommu_dma_get_pages(cpu_addr);
>   
>   		if (pages)
> @@ -1063,7 +1065,7 @@ static int iommu_dma_get_sgtable(struct device *dev, struct sg_table *sgt,
>   	struct page *page;
>   	int ret;
>   
> -	if (is_vmalloc_addr(cpu_addr)) {
> +	if (IS_ENABLED(CONFIG_DMA_REMAP) && is_vmalloc_addr(cpu_addr)) {
>   		struct page **pages = __iommu_dma_get_pages(cpu_addr);
>   
>   		if (pages) {
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
