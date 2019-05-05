Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8772713CDC
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 04:44:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ehqzXqxI+owqQRLoHYwB5hPWVLdDqLgvWFpyzqLd3NA=; b=onUgP+2+1wy6FoXvAO2ChzUFv
	FdREwFHGChtqsCiOpxz/1sv5kspP0B9/3H9Ob3czVjH2ZxsgChzrBGOE2mQN5h/3e86pEJ79NgeJl
	LWKzk7/KyrR2RtyqwLdfdY0gkJrLFo4b2y+Wa3fBUqRbGVvwlppMd+b+T81TxcsIRdQp52YM4eBTo
	NUnMAJdiNl1pS+6TTKLgIk/8ATu81qGzsRbIyPGq7RbgigbDd82g0nZs1u4DwUq9XwXG/YKBiVlJF
	t1o/dZrYWPT5l6U9ujqYJeIcgYH2Xn4wtNXI9yZoE/JnGrQctoik+WwSV2a3Uh3gjA+e7K4i6aRj3
	U+iS19ICQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hN78Z-0000gp-QF; Sun, 05 May 2019 02:44:23 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN78J-0000eo-A8; Sun, 05 May 2019 02:44:08 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 May 2019 19:44:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,431,1549958400"; d="scan'208";a="146346574"
Received: from allen-box.sh.intel.com (HELO [10.239.159.136])
 ([10.239.159.136])
 by fmsmga008.fm.intel.com with ESMTP; 04 May 2019 19:43:55 -0700
Subject: Re: [RFC 6/7] iommu/vt-d: convert the intel iommu driver to the
 dma-iommu ops api
To: Tom Murphy <tmurphy@arista.com>, iommu@lists.linux-foundation.org
References: <20190504132327.27041-1-tmurphy@arista.com>
 <20190504132327.27041-7-tmurphy@arista.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <602b77a2-9c68-ad14-b64f-904a7ff27a15@linux.intel.com>
Date: Sun, 5 May 2019 10:37:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190504132327.27041-7-tmurphy@arista.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_194407_404840_5A99DD4F 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, linux-arm-msm@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 murphyt7@tcd.ie, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 5/4/19 9:23 PM, Tom Murphy wrote:
> static int intel_iommu_add_device(struct device *dev)
>   {
> +	struct dmar_domain *dmar_domain;
> +	struct iommu_domain *domain;
>   	struct intel_iommu *iommu;
>   	struct iommu_group *group;
> -	struct iommu_domain *domain;
> +	dma_addr_t base;
>   	u8 bus, devfn;
>   
>   	iommu = device_to_iommu(dev, &bus, &devfn);
> @@ -4871,9 +4514,12 @@ static int intel_iommu_add_device(struct device *dev)
>   	if (IS_ERR(group))
>   		return PTR_ERR(group);
>   
> +	base = IOVA_START_PFN << VTD_PAGE_SHIFT;
>   	domain = iommu_get_domain_for_dev(dev);
> +	dmar_domain = to_dmar_domain(domain);
>   	if (domain->type == IOMMU_DOMAIN_DMA)
> -		dev->dma_ops = &intel_dma_ops;
> +		iommu_setup_dma_ops(dev, base,
> +				__DOMAIN_MAX_ADDR(dmar_domain->gaw) - base);

I didn't find the implementation of iommu_setup_dma_ops() in this
series. Will the iova resource be initialized in this function?

If so, will this block iommu_group_create_direct_mappings() which
reserves and maps the reserved iova ranges.

>   
>   	iommu_group_put(group);
>   	return 0;
> @@ -5002,19 +4648,6 @@ int intel_iommu_enable_pasid(struct intel_iommu *iommu, struct intel_svm_dev *sd
>   	return ret;
>   }
>   
> -static void intel_iommu_apply_resv_region(struct device *dev,
> -					  struct iommu_domain *domain,
> -					  struct iommu_resv_region *region)
> -{
> -	struct dmar_domain *dmar_domain = to_dmar_domain(domain);
> -	unsigned long start, end;
> -
> -	start = IOVA_PFN(region->start);
> -	end   = IOVA_PFN(region->start + region->length - 1);
> -
> -	WARN_ON_ONCE(!reserve_iova(&dmar_domain->iovad, start, end));
> -}
> -
>   struct intel_iommu *intel_svm_device_to_iommu(struct device *dev)
>   {
>   	struct intel_iommu *iommu;
> @@ -5050,13 +4683,13 @@ const struct iommu_ops intel_iommu_ops = {
>   	.detach_dev		= intel_iommu_detach_device,
>   	.map			= intel_iommu_map,
>   	.unmap			= intel_iommu_unmap,
> +	.flush_iotlb_all	= iommu_flush_iova,
>   	.flush_iotlb_range	= intel_iommu_flush_iotlb_range,
>   	.iova_to_phys		= intel_iommu_iova_to_phys,
>   	.add_device		= intel_iommu_add_device,
>   	.remove_device		= intel_iommu_remove_device,
>   	.get_resv_regions	= intel_iommu_get_resv_regions,
>   	.put_resv_regions	= intel_iommu_put_resv_regions,
> -	.apply_resv_region	= intel_iommu_apply_resv_region,

With this removed, how will iommu_group_create_direct_mappings() work?

Best regards,
Lu Baolu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
