Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB04F78B6F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 14:13:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ynlqoNpzZfaH5Je5o9FVA0Y7JsjJx+JdtMiQ7R+nDiw=; b=dxWjS5pTSIphV5
	mvybueN3uHSa+UAtV0GS1CXyYm5itbNAsyvVPOpGwYYsF50d4++m/6lzcPzU3kvx7HJ7IClwtck4s
	h32eijrvcCS1Xl/8pOH+aL942AgqJECn8FUsrL3ZnBz9uEEu/Tc8AMIAv+iAasHgknqZYWKdw4rN0
	QzsulZtHT6/7KejSRnifQ8ZRzGsRzL6y8U4V6onAOAv2z3R1exH2dBM0Cv4Gy5v+NuJ4rtU5INbpn
	AqCXmbhbzc/hlE5mdttm9f0LIg/AXk+2HIB/a6Ri/VxPu/OFcCarf0fjOIS1AuPHNXF7Zr0wRGTrX
	hdNvyv0YAb4fsET1I8kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4Wk-000881-Ic; Mon, 29 Jul 2019 12:13:18 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4Wd-000864-5N
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 12:13:13 +0000
Received: from LHREML711-CAH.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 6CF1177BEB65B21DC160;
 Mon, 29 Jul 2019 13:12:58 +0100 (IST)
Received: from LHREML524-MBB.china.huawei.com ([169.254.3.194]) by
 LHREML711-CAH.china.huawei.com ([10.201.108.34]) with mapi id 14.03.0415.000; 
 Mon, 29 Jul 2019 13:12:48 +0100
From: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
To: Christoph Hellwig <hch@lst.de>, Robin Murphy <robin.murphy@arm.com>
Subject: RE: [PATCH 07/24] iommu/dma: Move domain lookup into
 __iommu_dma_{map,	unmap}
Thread-Topic: [PATCH 07/24] iommu/dma: Move domain lookup into
 __iommu_dma_{map,	unmap}
Thread-Index: AQHVDt4W3gOYMtyd7EGom44w8Atw56bh634g
Date: Mon, 29 Jul 2019 12:12:48 +0000
Message-ID: <5FC3163CFD30C246ABAA99954A238FA83F328FAB@lhreml524-mbb.china.huawei.com>
References: <20190520072948.11412-1-hch@lst.de>
 <20190520072948.11412-8-hch@lst.de>
In-Reply-To: <20190520072948.11412-8-hch@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.202.227.237]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_051311_501734_1413AD5F 
X-CRM114-Status: GOOD (  22.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Tom Murphy <tmurphy@arista.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "Wangzhou \(B\)" <wangzhou1@hisilicon.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

> -----Original Message-----
> From: iommu-bounces@lists.linux-foundation.org
> [mailto:iommu-bounces@lists.linux-foundation.org] On Behalf Of Christoph
> Hellwig
> Sent: 20 May 2019 08:30
> To: Robin Murphy <robin.murphy@arm.com>
> Cc: Tom Murphy <tmurphy@arista.com>; Catalin Marinas
> <catalin.marinas@arm.com>; Will Deacon <will.deacon@arm.com>;
> linux-kernel@vger.kernel.org; iommu@lists.linux-foundation.org;
> linux-arm-kernel@lists.infradead.org
> Subject: [PATCH 07/24] iommu/dma: Move domain lookup into
> __iommu_dma_{map, unmap}
> 
> From: Robin Murphy <robin.murphy@arm.com>
> 
> Most of the callers don't care, and the couple that do already have the
> domain to hand for other reasons are in slow paths where the (trivial)
> overhead of a repeated lookup will be utterly immaterial.

On a Hisilicon ARM64 platform with 5.3-rc1, a F_TRANSALTION error from
smmuv3 is reported when an attempt is made to assign a ixgbe vf dev to a
Guest. 

[  196.747107] arm-smmu-v3 arm-smmu-v3.0.auto: event 0x10 received:
[  196.747109] arm-smmu-v3 arm-smmu-v3.0.auto: 0x00000180 00000010
[  196.747110] arm-smmu-v3 arm-smmu-v3.0.auto: 0x0000020100000000
[  196.747111] arm-smmu-v3 arm-smmu-v3.0.auto: 0x00000000ffffe040
[  196.747113] arm-smmu-v3 arm-smmu-v3.0.auto: 0x00000000ffffe000

Git bisect points to this patch.

Please see below.

> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> [hch: dropped the hunk touching iommu_dma_get_msi_page to avoid a
>  conflict with another series]
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/iommu/dma-iommu.c | 29 ++++++++++++++---------------
>  1 file changed, 14 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index c406abe3be01..6ece8f477fc8 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -448,9 +448,10 @@ static void iommu_dma_free_iova(struct
> iommu_dma_cookie *cookie,
>  				size >> iova_shift(iovad));
>  }
> 
> -static void __iommu_dma_unmap(struct iommu_domain *domain,
> dma_addr_t dma_addr,
> +static void __iommu_dma_unmap(struct device *dev, dma_addr_t dma_addr,
>  		size_t size)
>  {
> +	struct iommu_domain *domain = iommu_get_dma_domain(dev);
>  	struct iommu_dma_cookie *cookie = domain->iova_cookie;
>  	struct iova_domain *iovad = &cookie->iovad;
>  	size_t iova_off = iova_offset(iovad, dma_addr);
> @@ -465,8 +466,9 @@ static void __iommu_dma_unmap(struct
> iommu_domain *domain, dma_addr_t dma_addr,
>  }
> 
>  static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
> -		size_t size, int prot, struct iommu_domain *domain)
> +		size_t size, int prot)
>  {
> +	struct iommu_domain *domain = iommu_get_dma_domain(dev);
>  	struct iommu_dma_cookie *cookie = domain->iova_cookie;
>  	size_t iova_off = 0;
>  	dma_addr_t iova;
> @@ -565,7 +567,7 @@ static struct page
> **__iommu_dma_alloc_pages(struct device *dev,
>  static void __iommu_dma_free(struct device *dev, struct page **pages,
>  		size_t size, dma_addr_t *handle)
>  {
> -	__iommu_dma_unmap(iommu_get_dma_domain(dev), *handle, size);
> +	__iommu_dma_unmap(dev, *handle, size);
>  	__iommu_dma_free_pages(pages, PAGE_ALIGN(size) >> PAGE_SHIFT);
>  	*handle = DMA_MAPPING_ERROR;
>  }
> @@ -718,14 +720,13 @@ static void iommu_dma_sync_sg_for_device(struct
> device *dev,
>  static dma_addr_t __iommu_dma_map_page(struct device *dev, struct page
> *page,
>  		unsigned long offset, size_t size, int prot)
>  {
> -	return __iommu_dma_map(dev, page_to_phys(page) + offset, size, prot,
> -			iommu_get_dma_domain(dev));
> +	return __iommu_dma_map(dev, page_to_phys(page) + offset, size, prot);
>  }
> 
>  static void __iommu_dma_unmap_page(struct device *dev, dma_addr_t
> handle,
>  		size_t size, enum dma_data_direction dir, unsigned long attrs)
>  {
> -	__iommu_dma_unmap(iommu_get_dma_domain(dev), handle, size);
> +	__iommu_dma_unmap(dev, handle, size);
>  }
> 
>  static dma_addr_t iommu_dma_map_page(struct device *dev, struct page
> *page,
> @@ -734,11 +735,10 @@ static dma_addr_t iommu_dma_map_page(struct
> device *dev, struct page *page,
>  {
>  	phys_addr_t phys = page_to_phys(page) + offset;
>  	bool coherent = dev_is_dma_coherent(dev);
> +	int prot = dma_info_to_prot(dir, coherent, attrs);
>  	dma_addr_t dma_handle;
> 
> -	dma_handle =__iommu_dma_map(dev, phys, size,
> -			dma_info_to_prot(dir, coherent, attrs),
> -			iommu_get_dma_domain(dev));
> +	dma_handle =__iommu_dma_map(dev, phys, size, prot);
>  	if (!coherent && !(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
>  	    dma_handle != DMA_MAPPING_ERROR)
>  		arch_sync_dma_for_device(dev, phys, size, dir);
> @@ -750,7 +750,7 @@ static void iommu_dma_unmap_page(struct device
> *dev, dma_addr_t dma_handle,
>  {
>  	if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC))
>  		iommu_dma_sync_single_for_cpu(dev, dma_handle, size, dir);
> -	__iommu_dma_unmap(iommu_get_dma_domain(dev), dma_handle,
> size);
> +	__iommu_dma_unmap(dev, dma_handle, size);
>  }
> 
>  /*
> @@ -931,21 +931,20 @@ static void iommu_dma_unmap_sg(struct device
> *dev, struct scatterlist *sg,
>  		sg = tmp;
>  	}
>  	end = sg_dma_address(sg) + sg_dma_len(sg);
> -	__iommu_dma_unmap(iommu_get_dma_domain(dev), start, end - start);
> +	__iommu_dma_unmap(dev, start, end - start);
>  }
> 
>  static dma_addr_t iommu_dma_map_resource(struct device *dev,
> phys_addr_t phys,
>  		size_t size, enum dma_data_direction dir, unsigned long attrs)
>  {
>  	return __iommu_dma_map(dev, phys, size,
> -			dma_info_to_prot(dir, false, attrs) | IOMMU_MMIO,
> -			iommu_get_dma_domain(dev));
> +			dma_info_to_prot(dir, false, attrs) | IOMMU_MMIO);
>  }
> 
>  static void iommu_dma_unmap_resource(struct device *dev, dma_addr_t
> handle,
>  		size_t size, enum dma_data_direction dir, unsigned long attrs)
>  {
> -	__iommu_dma_unmap(iommu_get_dma_domain(dev), handle, size);
> +	__iommu_dma_unmap(dev, handle, size);
>  }
> 
>  static void *iommu_dma_alloc(struct device *dev, size_t size,
> @@ -1222,7 +1221,7 @@ static struct iommu_dma_msi_page
> *iommu_dma_get_msi_page(struct device *dev,
>  	if (!msi_page)
>  		return NULL;
> 
> -	iova = __iommu_dma_map(dev, msi_addr, size, prot, domain);
> +	iova = __iommu_dma_map(dev, msi_addr, size, prot);

I think the domain here is retrieved using iommu_get_domain_for_dev()
which may not be the default domain returned by iommu_get_dma_domain().

Please check and let me know.

Thanks,
Shameer

>  	if (iova == DMA_MAPPING_ERROR)
>  		goto out_free_page;
> --
> 2.20.1
> 
> _______________________________________________
> iommu mailing list
> iommu@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/iommu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
