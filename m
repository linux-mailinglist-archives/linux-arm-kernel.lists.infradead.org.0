Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D084F7909F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:18:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mk4SEqleZXO+8Qnx2wLMPmjdSg35D/uT+eftpB7yptk=; b=MBGUheFCKLYd/a
	gqEALmlCflMlraEbekF7zwAEufat99Xe/gHTzDCKus6DAFNCv6MSGhSijceqOatU8fJZkguTHnk11
	LuNWoG2dwBaVo2H4KY6KEJo1mWnC1EN1b9UImDMJuLRjdRtg0og9tQFj0ppX1Bw/U1TQrSW8beXWP
	Td60cdgtNZROq3k+0jrBp0CaArcHAGX8GLg+SqKStGkf+tZeWWFPVKiNh2gr+CYDRrORvEgOp1raY
	nsy9Sf/iq1+8fZWwRYzFa6Rl83h8nM+I5bdxlaRd4//2Ensi7NGxWzmGbu5cgDUFYpe7CDsKJf5NY
	O4dh0PNEFpM7nksCdieA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8MB-0003g8-EH; Mon, 29 Jul 2019 16:18:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8K7-0002w9-Co
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:16:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 288EC337;
 Mon, 29 Jul 2019 09:16:26 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D8883F694;
 Mon, 29 Jul 2019 09:16:25 -0700 (PDT)
Date: Mon, 29 Jul 2019 17:15:19 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] iommu/dma: Handle MSI mappings separately
Message-ID: <20190729171519.4dc6f0fb@donnerap.cambridge.arm.com>
In-Reply-To: <2b2595de703c60a772ebcffe248d0cf036143e6a.1564414114.git.robin.murphy@arm.com>
References: <2b2595de703c60a772ebcffe248d0cf036143e6a.1564414114.git.robin.murphy@arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_091634_161572_1B4DEBA0 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: maz@kernel.org, joro@8bytes.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 29 Jul 2019 16:32:38 +0100
Robin Murphy <robin.murphy@arm.com> wrote:

Hi,

> MSI pages must always be mapped into a device's *current* domain, which
> *might* be the default DMA domain, but might instead be a VFIO domain
> with its own MSI cookie. This subtlety got accidentally lost in the
> streamlining of __iommu_dma_map(), but rather than reintroduce more
> complexity and/or special-casing, it turns out neater to just split this
> path out entirely.
> 
> Since iommu_dma_get_msi_page() already duplicates much of what
> __iommu_dma_map() does, it can easily just make the allocation and
> mapping calls directly as well. That way we can further streamline the
> helper back to exclusively operating on DMA domains.
> 
> Fixes: b61d271e59d7 ("iommu/dma: Move domain lookup into __iommu_dma_{map,unmap}")
> Reported-by: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
> Reported-by: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

Thanks, that indeed fixes the pass through problem for me, the NVMe and SATA controller can now happily receive MSIs again.

Tested-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre.

> ---
>  drivers/iommu/dma-iommu.c | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index a7f9c3edbcb2..6441197a75ea 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -459,13 +459,11 @@ static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
>  {
>  	struct iommu_domain *domain = iommu_get_dma_domain(dev);
>  	struct iommu_dma_cookie *cookie = domain->iova_cookie;
> -	size_t iova_off = 0;
> +	struct iova_domain *iovad = &cookie->iovad;
> +	size_t iova_off = iova_offset(iovad, phys);
>  	dma_addr_t iova;
>  
> -	if (cookie->type == IOMMU_DMA_IOVA_COOKIE) {
> -		iova_off = iova_offset(&cookie->iovad, phys);
> -		size = iova_align(&cookie->iovad, size + iova_off);
> -	}
> +	size = iova_align(iovad, size + iova_off);
>  
>  	iova = iommu_dma_alloc_iova(domain, size, dma_get_mask(dev), dev);
>  	if (!iova)
> @@ -1147,16 +1145,21 @@ static struct iommu_dma_msi_page *iommu_dma_get_msi_page(struct device *dev,
>  	if (!msi_page)
>  		return NULL;
>  
> -	iova = __iommu_dma_map(dev, msi_addr, size, prot);
> -	if (iova == DMA_MAPPING_ERROR)
> +	iova = iommu_dma_alloc_iova(domain, size, dma_get_mask(dev), dev);
> +	if (!iova)
>  		goto out_free_page;
>  
> +	if (iommu_map(domain, iova, msi_addr, size, prot))
> +		goto out_free_iova;
> +
>  	INIT_LIST_HEAD(&msi_page->list);
>  	msi_page->phys = msi_addr;
>  	msi_page->iova = iova;
>  	list_add(&msi_page->list, &cookie->msi_page_list);
>  	return msi_page;
>  
> +out_free_iova:
> +	iommu_dma_free_iova(cookie, iova, size);
>  out_free_page:
>  	kfree(msi_page);
>  	return NULL;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
