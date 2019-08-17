Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C320790C7B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 05:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdMXYld8zRPj22CVvvJkX6LZXhOd5v4GlSajmJ83QbQ=; b=tjBUZoA4VThbaU
	zsg3uA7pqqAejma/vQhlBRYO7ceiDfWhO4knCKIrEe0YHl3oOh9HqX9puicddG7gqQUImqD+0W7en
	T6i89HiR/L0MUqjtaZZFXVQ9I0JBO0cP68ujGJB9OfuX+1qNwbthFw5WpmfnmMptjK9jZ3P+TR54y
	jAgPyopx9vf5uJWiujSuWs8zXxCPeu1ytDqGJ7lKLEw5wE4urPXUnvSNpJxELz9rxCKMzA1o8jRQx
	2mjclagVqWFWGq2l3Ju+H1cAqwJC6hXgQ+zZj41geSHjEOKWEOyo5Zr3IC3mfZA+tfYm2OTsRh7Zx
	ne+tE9H4W/MqG51uj/7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hypZi-0005hD-1N; Sat, 17 Aug 2019 03:40:18 +0000
Received: from mail3-165.sinamail.sina.com.cn ([202.108.3.165])
 by bombadil.infradead.org with smtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hypZW-0005Nv-LT
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 03:40:08 +0000
Received: from unknown (HELO localhost.localdomain)([222.131.78.247])
 by sina.com with ESMTP
 id 5D5776EB00008B47; Sat, 17 Aug 2019 11:39:27 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 426700329115
From: Hillf Danton <hdanton@sina.com>
To: Tom Murphy <murphyt7@tcd.ie>
Subject: Re: [PATCH V5 3/5] iommu/dma-iommu: Handle deferred devices
Date: Sat, 17 Aug 2019 11:39:14 +0800
Message-Id: <20190817033914.4812-1-hdanton@sina.com>
In-Reply-To: <20190815110944.3579-1-murphyt7@tcd.ie>
References: <20190815110944.3579-1-murphyt7@tcd.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_204006_893923_1A984DD0 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.108.3.165 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.108.3.165 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hdanton[at]sina.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Heiko Stuebner <heiko@sntech.de>, virtualization@lists.linux-foundation.org,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Will Deacon <will@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-s390@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, David Woodhouse <dwmw2@infradead.org>,
 linux-kernel@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
 Kukjin Kim <kgene@kernel.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Thu, 15 Aug 2019 12:09:41 +0100 Tom Murphy wrote:
> 
> Handle devices which defer their attach to the iommu in the dma-iommu api
> 
> Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
> ---
>  drivers/iommu/dma-iommu.c | 27 ++++++++++++++++++++++++++-
>  1 file changed, 26 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index 2712fbc68b28..906b7fa14d3c 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -22,6 +22,7 @@
>  #include <linux/pci.h>
>  #include <linux/scatterlist.h>
>  #include <linux/vmalloc.h>
> +#include <linux/crash_dump.h>
>  
>  struct iommu_dma_msi_page {
>  	struct list_head	list;
> @@ -351,6 +352,21 @@ static int iommu_dma_init_domain(struct iommu_domain *domain, dma_addr_t base,
>  	return iova_reserve_iommu_regions(dev, domain);
>  }
>  
> +static int handle_deferred_device(struct device *dev,
> +	struct iommu_domain *domain)
> +{
> +	const struct iommu_ops *ops = domain->ops;
> +
> +	if (!is_kdump_kernel())
> +		return 0;
> +
> +	if (unlikely(ops->is_attach_deferred &&
> +		ops->is_attach_deferred(domain, dev)))
> +		return iommu_attach_device(domain, dev);
> +
> +	return 0;
> +}
> +
>  /**
>   * dma_info_to_prot - Translate DMA API directions and attributes to IOMMU API
>   *                    page flags.
> @@ -463,6 +479,9 @@ static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
>  	size_t iova_off = iova_offset(iovad, phys);
>  	dma_addr_t iova;
>  
> +	if (unlikely(handle_deferred_device(dev, domain)))
> +		return DMA_MAPPING_ERROR;
> +
>  	size = iova_align(iovad, size + iova_off);
>  
>  	iova = iommu_dma_alloc_iova(domain, size, dma_get_mask(dev), dev);

iommu_map_atomic() is applied to __iommu_dma_map() in 2/5.
Is it an atomic context currently given the mutex_lock() in
iommu_attach_device()?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
