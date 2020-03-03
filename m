Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D39C517767C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 13:56:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JFMXq9tb9VDyMmCUxBXli67lTBl6i4txY8nOukvi4w=; b=WWk4sQh5MioFSB
	MtDOuisGy7NyRqvmccq79j4fcfbiKnZ0J/YmaXU+V2tl/+aYLStMMvs6ZK/8ftMwYCwPyKqhjf6Ha
	0pXuI9+7SXbPAEnEVyo4yraa72KB2Aq0pr3dWFpulBdAu7pgcQ2IGH49eqxU9RBAmew3lLS6YZyuu
	3vulWXbmcvxWPeYcFUKN7H0Dctur/ShTRY4ppmjvnJxvy9kZalzZ7ag49lCHNmd5cRFCVOBPjw+7V
	8VEnFLXaucRayPwwpbpM51TolDxV8iJmOvCX93/DBWqQMggw7m8fF+q78YXn4RZ8NJ5pl8zG4GGIH
	TOnXc+fODTVeSPnT+X/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9761-0005HS-Pc; Tue, 03 Mar 2020 12:56:25 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j975u-0005GF-M1
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 12:56:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583240173;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=StD01upWfLys6j/mJDiSTbKkVFO2v53vgbK9NTukAX0=;
 b=VTCyl+ofNQZ5K0yy3TyUzJ/JhwHiZLStYD/BWbezFq9gyGfvxm9bgsg2oZ9oZPlmBjotw+
 31QO/qi+9/6tJr/0BrLeqSPs7iguodcscECYEbycvRK+ATUMoDnmgHQb7sxM04pQ4MCJ+5
 N/3ypDF3qOjsleIjVp8WMVBPKFA5e1s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-157-RtCwRq53P9-lBmzYFQHFyQ-1; Tue, 03 Mar 2020 07:56:08 -0500
X-MC-Unique: RtCwRq53P9-lBmzYFQHFyQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A8BBDDB60;
 Tue,  3 Mar 2020 12:56:06 +0000 (UTC)
Received: from [10.36.116.59] (ovpn-116-59.ams2.redhat.com [10.36.116.59])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F2885C1D6;
 Tue,  3 Mar 2020 12:56:04 +0000 (UTC)
Subject: Re: [PATCH] iommu/dma: Fix MSI reservation allocation
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200303115154.32263-1-maz@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <b340f887-5960-390c-948d-c1b8fa14adec@redhat.com>
Date: Tue, 3 Mar 2020 13:56:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20200303115154.32263-1-maz@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_045618_801013_8E8DCF48 
X-CRM114-Status: GOOD (  24.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Will Deacon <will@kernel.org>, Joerg Roedel <jroedel@suse.de>,
 Robin Murphy <robin.murphy@arm.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,
On 3/3/20 12:51 PM, Marc Zyngier wrote:
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
> 
> Fixes: 7c1b058c8b5a3 ("iommu/dma: Handle IOMMU API reserved regions")
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric

> Signed-off-by: Marc Zyngier <maz@kernel.org>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Joerg Roedel <jroedel@suse.de>
> Cc: Eric Auger <eric.auger@redhat.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: stable@vger.kernel.org
> ---
>  drivers/iommu/dma-iommu.c | 36 ++++++++++++++++++++++++------------
>  1 file changed, 24 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index a2e96a5fd9a7..01fa64856c12 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -171,25 +171,37 @@ static int cookie_init_hw_msi_region(struct iommu_dma_cookie *cookie,
>  		phys_addr_t start, phys_addr_t end)
>  {
>  	struct iova_domain *iovad = &cookie->iovad;
> -	struct iommu_dma_msi_page *msi_page;
> -	int i, num_pages;
> +	struct iommu_dma_msi_page *msi_page, *tmp;
> +	int i, num_pages, ret = 0;
> +	phys_addr_t base;
>  
> -	start -= iova_offset(iovad, start);
> +	base = start -= iova_offset(iovad, start);
>  	num_pages = iova_align(iovad, end - start) >> iova_shift(iovad);
>  
> -	msi_page = kcalloc(num_pages, sizeof(*msi_page), GFP_KERNEL);
> -	if (!msi_page)
> -		return -ENOMEM;
> -
>  	for (i = 0; i < num_pages; i++) {
> -		msi_page[i].phys = start;
> -		msi_page[i].iova = start;
> -		INIT_LIST_HEAD(&msi_page[i].list);
> -		list_add(&msi_page[i].list, &cookie->msi_page_list);
> +		msi_page = kmalloc(sizeof(*msi_page), GFP_KERNEL);
> +		if (!msi_page) {
> +			ret = -ENOMEM;
> +			break;
> +		}
> +		msi_page->phys = start;
> +		msi_page->iova = start;
> +		INIT_LIST_HEAD(&msi_page->list);
> +		list_add(&msi_page->list, &cookie->msi_page_list);
>  		start += iovad->granule;
>  	}
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
>  }
>  
>  static int iova_reserve_pci_windows(struct pci_dev *dev,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
