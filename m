Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A53BFE388
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 15:18:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zf+LHwQzyXs9CjFLp6jQ29WM7LLB3BIbWmcr7V0Ywvg=; b=OxnsdhacahJB9pnrUD+ejy0Oa
	64M0ydWU5132NB4cO8W/G1DEs5B5AI4LuQbk5fZ2J4BqLO9y4TE4eqjJGW814cJkowPAKT8kwGTiQ
	ab9Milk1YjQXURQVCsyp2I1uEK+Mk4Q6alLYZ2p2MQZ3TkxYUdAVUo1xZ9F6uQLnR39qfjLqvx89W
	nD0EdLAbOFB3xXVmnLcC8LlhDAqhC8Ck9mIkq/6yFxHtDyn02A+VncbCdEfsgPxDiN+1ubPJj2Fhb
	bitCJydyzQL60r8qNfBEEvBh1dpxH/jwEODojxtLAElyaxXWyg/uEyFLkFmSzxvd6E8Ib61sKvnh1
	9bBsRwr4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL6Ae-00078g-Nt; Mon, 29 Apr 2019 13:18:12 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL6AX-00078K-Tf
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 13:18:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4441AA78;
 Mon, 29 Apr 2019 06:18:05 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CCF433F71A;
 Mon, 29 Apr 2019 06:18:03 -0700 (PDT)
Subject: Re: [PATCH 13/26] iommu/dma: Remove __iommu_dma_free
To: Christoph Hellwig <hch@lst.de>
References: <20190422175942.18788-1-hch@lst.de>
 <20190422175942.18788-14-hch@lst.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <9c53d0e6-3692-e151-c64b-0070a89ca725@arm.com>
Date: Mon, 29 Apr 2019 14:18:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190422175942.18788-14-hch@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_061805_964326_BC56418F 
X-CRM114-Status: GOOD (  22.99  )
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
> We only have a single caller of this function left, so open code it there.

Heh, I even caught myself out for a moment thinking this looked 
redundant with #18 now, but no :)

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/iommu/dma-iommu.c | 21 ++-------------------
>   1 file changed, 2 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index b8e46e89a60a..4632b9d301a1 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -534,24 +534,6 @@ static struct page **__iommu_dma_get_pages(void *cpu_addr)
>   	return area->pages;
>   }
>   
> -/**
> - * iommu_dma_free - Free a buffer allocated by iommu_dma_alloc_remap()
> - * @dev: Device which owns this buffer
> - * @pages: Array of buffer pages as returned by __iommu_dma_alloc_remap()
> - * @size: Size of buffer in bytes
> - * @handle: DMA address of buffer
> - *
> - * Frees both the pages associated with the buffer, and the array
> - * describing them
> - */
> -static void __iommu_dma_free(struct device *dev, struct page **pages,
> -		size_t size, dma_addr_t *handle)
> -{
> -	__iommu_dma_unmap(dev, *handle, size);
> -	__iommu_dma_free_pages(pages, PAGE_ALIGN(size) >> PAGE_SHIFT);
> -	*handle = DMA_MAPPING_ERROR;
> -}
> -
>   /**
>    * iommu_dma_alloc_remap - Allocate and map a buffer contiguous in IOVA space
>    * @dev: Device to allocate memory for. Must be a real device
> @@ -1034,7 +1016,8 @@ static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
>   
>   		if (WARN_ON(!pages))
>   			return;
> -		__iommu_dma_free(dev, pages, iosize, &handle);
> +		__iommu_dma_unmap(dev, handle, iosize);
> +		__iommu_dma_free_pages(pages, size >> PAGE_SHIFT);
>   		dma_common_free_remap(cpu_addr, size, VM_USERMAP);
>   	} else {
>   		__iommu_dma_unmap(dev, handle, iosize);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
