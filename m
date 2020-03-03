Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AA3177D52
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 18:23:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RJgtUk2SA9LqFYg8E+3vQm66e2lT8c0Cpb35n/4/bHI=; b=YRg9RHIEF1Yk9q89VB2CI4+UT
	egH4ZZouyHsyYxD0E8YiJSA4sD9s/aEEaRsIiVL6dXn04kgeaN6OVW6FSdqMCiSFUFw1i3pOrm9RA
	GZjf9TJoi1L7gjSW7GsxtS0u4xG9CC7aDyWSd8B//6zQldDIuUpW0waEl8+krfxsSKVcSlPFt/VYJ
	HQOn0VWFoI5JXvBOQz7Mx7AZWhdTfdZCA7jjlqaPnXk7/a+e+6Wd1611B3qSHsSCtr8L4D/724IKN
	N1Z/qKgQHXStYLePHqIIvhQWuxbUgjx9EcfrPMiDmCnrslX4kmNyYdOigLmgLrxJySh8ni4yGP37x
	uLVYsk3Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9BGU-00086W-N8; Tue, 03 Mar 2020 17:23:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9BGO-00085l-2E
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 17:23:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BC5852F;
 Tue,  3 Mar 2020 09:23:20 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D2C7F3F534;
 Tue,  3 Mar 2020 09:23:19 -0800 (PST)
Subject: Re: [PATCH] iommu/dma: Fix MSI reservation allocation
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200303115154.32263-1-maz@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f0fc18a5-17a9-4c53-052b-00272bbd2691@arm.com>
Date: Tue, 3 Mar 2020 17:23:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200303115154.32263-1-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_092324_196371_D308844C 
X-CRM114-Status: GOOD (  24.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Eric Auger <eric.auger@redhat.com>, Joerg Roedel <jroedel@suse.de>,
 Will Deacon <will@kernel.org>, stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/03/2020 11:51 am, Marc Zyngier wrote:
> The way cookie_init_hw_msi_region() allocates the iommu_dma_msi_page
> structures doesn't match the way iommu_put_dma_cookie() frees them.
> 
> The former performs a single allocation of all the required structures,
> while the latter tries to free them one at a time. It doesn't quite
> work for the main use case (the GICv3 ITS where the range is 64kB)
> when the base ganule size is 4kB.
> 
> This leads to a nice slab corruption on teardown, which is easily
> observable by simply creating a VF on a SRIOV-capable device, and
> tearing it down immediately (no need to even make use of it).
> 
> Fix it by allocating iommu_dma_msi_page structures one at a time.

Bleh, you know you're supposed to be using 64K pages on those things, 
right? :P

> Fixes: 7c1b058c8b5a3 ("iommu/dma: Handle IOMMU API reserved regions")
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Joerg Roedel <jroedel@suse.de>
> Cc: Eric Auger <eric.auger@redhat.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: stable@vger.kernel.org
> ---
>   drivers/iommu/dma-iommu.c | 36 ++++++++++++++++++++++++------------
>   1 file changed, 24 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index a2e96a5fd9a7..01fa64856c12 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -171,25 +171,37 @@ static int cookie_init_hw_msi_region(struct iommu_dma_cookie *cookie,
>   		phys_addr_t start, phys_addr_t end)
>   {
>   	struct iova_domain *iovad = &cookie->iovad;
> -	struct iommu_dma_msi_page *msi_page;
> -	int i, num_pages;
> +	struct iommu_dma_msi_page *msi_page, *tmp;
> +	int i, num_pages, ret = 0;
> +	phys_addr_t base;
>   
> -	start -= iova_offset(iovad, start);
> +	base = start -= iova_offset(iovad, start);
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
> +		if (!msi_page) {
> +			ret = -ENOMEM;

I think we can just return here and skip the cleanup below - by the time 
we get here the cookie itself has already been allocated and 
initialised, so even if iommu_dma_init_domain() fails someone else has 
already accepted the responsibility of calling iommu_put_dma_cookie() at 
some point later, which will clean up properly.

Cheers,
Robin.

> +			break;
> +		}
> +		msi_page->phys = start;
> +		msi_page->iova = start;
> +		INIT_LIST_HEAD(&msi_page->list);
> +		list_add(&msi_page->list, &cookie->msi_page_list);
>   		start += iovad->granule;
>   	}
>   
> -	return 0;
> +	if (ret) {
> +		list_for_each_entry_safe(msi_page, tmp,
> +					 &cookie->msi_page_list, list) {
> +			if (msi_page->phys >= base && msi_page->phys < start) {
> +				list_del(&msi_page->list);
> +				kfree(msi_page);
> +			}
> +		}
> +	}
> +
> +	return ret;
>   }
>   
>   static int iova_reserve_pci_windows(struct pci_dev *dev,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
