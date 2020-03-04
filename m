Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39304179082
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 13:37:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sx4GKnEfRrCL3G2DHYUDDnT1sot6JcdrNtJEcuyYtTM=; b=D2aEGYMvi306ZCNyqhOB8ed5T
	x4brSrwqZkXS3WB09V/Ia+6VT+C9efR1GXzg4IDEx4nVZb7SkquCyq1s1IM2gPs3oL1UAhwgJu4K3
	f9dKZfTj9ICKK4BW9YzLCHIHjNo1VqVo8nfxntODh4EeQlnsSlhnBTilTT/pQOrXzjsIZnsQyuR8/
	vM3nEI+uZEf+3fUYPVJBu50iPacFADdtmx8HaDioGLmKX9vSVvz7sx1BC1yi1Vz8wA/ncrJiV7KHu
	XhTI7WLBPOfEQtvwC7nJ4O+xo+1Djn6BcjgaPPBH9kO3utqWspFs8PKaqlsVCU12ZP3Rhx1/Ege/p
	j6rzGvl/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9TGt-0004o0-Gz; Wed, 04 Mar 2020 12:37:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9TGl-0004nc-0q
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 12:37:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E353731B;
 Wed,  4 Mar 2020 04:36:57 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F0CDB3F6C4;
 Wed,  4 Mar 2020 04:36:56 -0800 (PST)
Subject: Re: [PATCH v2] iommu/dma: Fix MSI reservation allocation
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200304111117.3540-1-maz@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <35a91284-619e-398a-decc-2e3879702335@arm.com>
Date: Wed, 4 Mar 2020 12:36:54 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200304111117.3540-1-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_043659_113770_08357BC1 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Eric Auger <eric.auger@redhat.com>, Joerg Roedel <jroedel@suse.de>,
 Will Deacon <will@kernel.org>, stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/03/2020 11:11 am, Marc Zyngier wrote:
> The way cookie_init_hw_msi_region() allocates the iommu_dma_msi_page
> structures doesn't match the way iommu_put_dma_cookie() frees them.
> 
> The former performs a single allocation of all the required structures,
> while the latter tries to free them one at a time. It doesn't quite
> work for the main use case (the GICv3 ITS where the range is 64kB)
> when the base granule size is 4kB.
> 
> This leads to a nice slab corruption on teardown, which is easily
> observable by simply creating a VF on a SRIOV-capable device, and
> tearing it down immediately (no need to even make use of it).
> Fortunately, this only affects systems where the ITS isn't translated
> by the SMMU, which are both rare and non-standard.
> 
> Fix it by allocating iommu_dma_msi_page structures one at a time.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Fixes: 7c1b058c8b5a3 ("iommu/dma: Handle IOMMU API reserved regions")
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> Reviewed-by: Eric Auger <eric.auger@redhat.com>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Joerg Roedel <jroedel@suse.de>
> Cc: Will Deacon <will@kernel.org>
> Cc: stable@vger.kernel.org
> ---
> * From v1:
>    - Got rid of the superfluous error handling (Robin)
>    - Clarified that it only affects a very small set of systems
>    - Added Eric's RB (which I assume still stands)
> 
>   drivers/iommu/dma-iommu.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index a2e96a5fd9a7..ba128d1cdaee 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -177,15 +177,15 @@ static int cookie_init_hw_msi_region(struct iommu_dma_cookie *cookie,
>   	start -= iova_offset(iovad, start);
>   	num_pages = iova_align(iovad, end - start) >> iova_shift(iovad);
>   
> -	msi_page = kcalloc(num_pages, sizeof(*msi_page), GFP_KERNEL);
> -	if (!msi_page)
> -		return -ENOMEM;
> -
>   	for (i = 0; i < num_pages; i++) {
> -		msi_page[i].phys = start;
> -		msi_page[i].iova = start;
> -		INIT_LIST_HEAD(&msi_page[i].list);
> -		list_add(&msi_page[i].list, &cookie->msi_page_list);
> +		msi_page = kmalloc(sizeof(*msi_page), GFP_KERNEL);
> +		if (!msi_page)
> +			return -ENOMEM;
> +
> +		msi_page->phys = start;
> +		msi_page->iova = start;
> +		INIT_LIST_HEAD(&msi_page->list);
> +		list_add(&msi_page->list, &cookie->msi_page_list);
>   		start += iovad->granule;
>   	}
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
