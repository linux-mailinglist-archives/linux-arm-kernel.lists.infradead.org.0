Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B5DAE1A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 02:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtHnZRn6Jp30ucHJQpcpBKmz3J5OaF2aG19qforE7sQ=; b=tLeULGTGs69QKY
	oVv3BQAY0iKxf2y+sutt/zUSY1UqEui+K/e9Zek+5cpRgVn18ekHjl8JW1ZMZ+QcvvyiRRp/uoSj7
	XAxbbcMVcuMfTh2fGzJHD3YI/qokzo+Cs8LUR3HeHbaZ/s+AX6q3n1pXXJXEIClziqOXjToIbrGQa
	cxK1OczOJVQy7lBdL5gsrCdB2ysleanWBV9B+PTwXv9LY3gJ8j2mm9AYSf3zJq3lAYw+INbESb1Hv
	dNMeKY9LKS+nVQukXh2kv6Csmgycs4Hyc3rS6xvCkCGJMYtEgj6mFCtuBakKiok3Aii5tULfoorXf
	gg7DDD6Vdl9gucBTMx5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Trn-0002fZ-Jw; Tue, 10 Sep 2019 00:18:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Tra-0002ev-FD
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 00:18:32 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C351C21670;
 Tue, 10 Sep 2019 00:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568074709;
 bh=YgqPgucJuky5FcSp0vrxNvRL/Fngfl3HUuoywRnLxy0=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=jDdg6bjkfqRkN2qiY8xoU/nMdM+W40s+tBS17TmDrDcR3MECdp1nBG0NCqvoH4YvV
 BhBFaNaLjghh08U+HyVFYhOT2bdGVC30dg4Fe3ALVyp/kGUA3+wG2mX1tAtaVHNUem
 LmajRzth9Ln8b9KkbWlaJjYNjxw9p2XvDczARe2k=
Date: Mon, 9 Sep 2019 17:18:27 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 01/11] xen/arm: use dma-noncoherent.h calls for xen-swiotlb
 cache maintainance
In-Reply-To: <20190905113408.3104-2-hch@lst.de>
Message-ID: <alpine.DEB.2.21.1909091659220.29131@sstabellini-ThinkPad-T480s>
References: <20190905113408.3104-1-hch@lst.de>
 <20190905113408.3104-2-hch@lst.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_171830_557790_F56FD723 
X-CRM114-Status: GOOD (  24.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, gross@suse.com, x86@kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 xen-devel@lists.xenproject.org, boris.ostrovsky@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 5 Sep 2019, Christoph Hellwig wrote:
> Copy the arm64 code that uses the dma-direct/swiotlb helpers for DMA
> on-coherent devices.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

This is much better and much more readable.

Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>

> ---
>  arch/arm/include/asm/device.h            |  3 -
>  arch/arm/include/asm/xen/page-coherent.h | 72 +++++++++---------------
>  arch/arm/mm/dma-mapping.c                |  8 +--
>  drivers/xen/swiotlb-xen.c                | 20 -------
>  4 files changed, 28 insertions(+), 75 deletions(-)
> 
> diff --git a/arch/arm/include/asm/device.h b/arch/arm/include/asm/device.h
> index f6955b55c544..c675bc0d5aa8 100644
> --- a/arch/arm/include/asm/device.h
> +++ b/arch/arm/include/asm/device.h
> @@ -14,9 +14,6 @@ struct dev_archdata {
>  #endif
>  #ifdef CONFIG_ARM_DMA_USE_IOMMU
>  	struct dma_iommu_mapping	*mapping;
> -#endif
> -#ifdef CONFIG_XEN
> -	const struct dma_map_ops *dev_dma_ops;
>  #endif
>  	unsigned int dma_coherent:1;
>  	unsigned int dma_ops_setup:1;
> diff --git a/arch/arm/include/asm/xen/page-coherent.h b/arch/arm/include/asm/xen/page-coherent.h
> index 2c403e7c782d..602ac02f154c 100644
> --- a/arch/arm/include/asm/xen/page-coherent.h
> +++ b/arch/arm/include/asm/xen/page-coherent.h
> @@ -6,23 +6,37 @@
>  #include <asm/page.h>
>  #include <xen/arm/page-coherent.h>
>  
> -static inline const struct dma_map_ops *xen_get_dma_ops(struct device *dev)
> -{
> -	if (dev && dev->archdata.dev_dma_ops)
> -		return dev->archdata.dev_dma_ops;
> -	return get_arch_dma_ops(NULL);
> -}
> -
>  static inline void *xen_alloc_coherent_pages(struct device *hwdev, size_t size,
>  		dma_addr_t *dma_handle, gfp_t flags, unsigned long attrs)
>  {
> -	return xen_get_dma_ops(hwdev)->alloc(hwdev, size, dma_handle, flags, attrs);
> +	return dma_direct_alloc(hwdev, size, dma_handle, flags, attrs);
>  }
>  
>  static inline void xen_free_coherent_pages(struct device *hwdev, size_t size,
>  		void *cpu_addr, dma_addr_t dma_handle, unsigned long attrs)
>  {
> -	xen_get_dma_ops(hwdev)->free(hwdev, size, cpu_addr, dma_handle, attrs);
> +	dma_direct_free(hwdev, size, cpu_addr, dma_handle, attrs);
> +}
> +
> +static inline void xen_dma_sync_single_for_cpu(struct device *hwdev,
> +		dma_addr_t handle, size_t size, enum dma_data_direction dir)
> +{
> +	unsigned long pfn = PFN_DOWN(handle);
> +
> +	if (pfn_valid(pfn))
> +		dma_direct_sync_single_for_cpu(hwdev, handle, size, dir);
> +	else
> +		__xen_dma_sync_single_for_cpu(hwdev, handle, size, dir);
> +}
> +
> +static inline void xen_dma_sync_single_for_device(struct device *hwdev,
> +		dma_addr_t handle, size_t size, enum dma_data_direction dir)
> +{
> +	unsigned long pfn = PFN_DOWN(handle);
> +	if (pfn_valid(pfn))
> +		dma_direct_sync_single_for_device(hwdev, handle, size, dir);
> +	else
> +		__xen_dma_sync_single_for_device(hwdev, handle, size, dir);
>  }
>  
>  static inline void xen_dma_map_page(struct device *hwdev, struct page *page,
> @@ -36,17 +50,8 @@ static inline void xen_dma_map_page(struct device *hwdev, struct page *page,
>  	bool local = (page_pfn <= dev_pfn) &&
>  		(dev_pfn - page_pfn < compound_pages);
>  
> -	/*
> -	 * Dom0 is mapped 1:1, while the Linux page can span across
> -	 * multiple Xen pages, it's not possible for it to contain a
> -	 * mix of local and foreign Xen pages. So if the first xen_pfn
> -	 * == mfn the page is local otherwise it's a foreign page
> -	 * grant-mapped in dom0. If the page is local we can safely
> -	 * call the native dma_ops function, otherwise we call the xen
> -	 * specific function.
> -	 */
>  	if (local)
> -		xen_get_dma_ops(hwdev)->map_page(hwdev, page, offset, size, dir, attrs);
> +		dma_direct_map_page(hwdev, page, offset, size, dir, attrs);
>  	else
>  		__xen_dma_map_page(hwdev, page, dev_addr, offset, size, dir, attrs);
>  }
> @@ -63,33 +68,10 @@ static inline void xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
>  	 * safely call the native dma_ops function, otherwise we call the xen
>  	 * specific function.
>  	 */
> -	if (pfn_valid(pfn)) {
> -		if (xen_get_dma_ops(hwdev)->unmap_page)
> -			xen_get_dma_ops(hwdev)->unmap_page(hwdev, handle, size, dir, attrs);
> -	} else
> +	if (pfn_valid(pfn))
> +		dma_direct_unmap_page(hwdev, handle, size, dir, attrs);
> +	else
>  		__xen_dma_unmap_page(hwdev, handle, size, dir, attrs);
>  }
>  
> -static inline void xen_dma_sync_single_for_cpu(struct device *hwdev,
> -		dma_addr_t handle, size_t size, enum dma_data_direction dir)
> -{
> -	unsigned long pfn = PFN_DOWN(handle);
> -	if (pfn_valid(pfn)) {
> -		if (xen_get_dma_ops(hwdev)->sync_single_for_cpu)
> -			xen_get_dma_ops(hwdev)->sync_single_for_cpu(hwdev, handle, size, dir);
> -	} else
> -		__xen_dma_sync_single_for_cpu(hwdev, handle, size, dir);
> -}
> -
> -static inline void xen_dma_sync_single_for_device(struct device *hwdev,
> -		dma_addr_t handle, size_t size, enum dma_data_direction dir)
> -{
> -	unsigned long pfn = PFN_DOWN(handle);
> -	if (pfn_valid(pfn)) {
> -		if (xen_get_dma_ops(hwdev)->sync_single_for_device)
> -			xen_get_dma_ops(hwdev)->sync_single_for_device(hwdev, handle, size, dir);
> -	} else
> -		__xen_dma_sync_single_for_device(hwdev, handle, size, dir);
> -}
> -
>  #endif /* _ASM_ARM_XEN_PAGE_COHERENT_H */
> diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
> index d42557ee69c2..738097396445 100644
> --- a/arch/arm/mm/dma-mapping.c
> +++ b/arch/arm/mm/dma-mapping.c
> @@ -1132,10 +1132,6 @@ static const struct dma_map_ops *arm_get_dma_map_ops(bool coherent)
>  	 * 32-bit DMA.
>  	 * Use the generic dma-direct / swiotlb ops code in that case, as that
>  	 * handles bounce buffering for us.
> -	 *
> -	 * Note: this checks CONFIG_ARM_LPAE instead of CONFIG_SWIOTLB as the
> -	 * latter is also selected by the Xen code, but that code for now relies
> -	 * on non-NULL dev_dma_ops.  To be cleaned up later.
>  	 */
>  	if (IS_ENABLED(CONFIG_ARM_LPAE))
>  		return NULL;
> @@ -2363,10 +2359,8 @@ void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
>  	set_dma_ops(dev, dma_ops);
>  
>  #ifdef CONFIG_XEN
> -	if (xen_initial_domain()) {
> -		dev->archdata.dev_dma_ops = dev->dma_ops;
> +	if (xen_initial_domain())
>  		dev->dma_ops = xen_dma_ops;
> -	}
>  #endif
>  	dev->archdata.dma_ops_setup = true;
>  }
> diff --git a/drivers/xen/swiotlb-xen.c b/drivers/xen/swiotlb-xen.c
> index ae1df496bf38..eee86cc7046b 100644
> --- a/drivers/xen/swiotlb-xen.c
> +++ b/drivers/xen/swiotlb-xen.c
> @@ -557,11 +557,6 @@ xen_swiotlb_dma_mmap(struct device *dev, struct vm_area_struct *vma,
>  		     void *cpu_addr, dma_addr_t dma_addr, size_t size,
>  		     unsigned long attrs)
>  {
> -#ifdef CONFIG_ARM
> -	if (xen_get_dma_ops(dev)->mmap)
> -		return xen_get_dma_ops(dev)->mmap(dev, vma, cpu_addr,
> -						    dma_addr, size, attrs);
> -#endif
>  	return dma_common_mmap(dev, vma, cpu_addr, dma_addr, size, attrs);
>  }
>  
> @@ -574,21 +569,6 @@ xen_swiotlb_get_sgtable(struct device *dev, struct sg_table *sgt,
>  			void *cpu_addr, dma_addr_t handle, size_t size,
>  			unsigned long attrs)
>  {
> -#ifdef CONFIG_ARM
> -	if (xen_get_dma_ops(dev)->get_sgtable) {
> -#if 0
> -	/*
> -	 * This check verifies that the page belongs to the current domain and
> -	 * is not one mapped from another domain.
> -	 * This check is for debug only, and should not go to production build
> -	 */
> -		unsigned long bfn = PHYS_PFN(dma_to_phys(dev, handle));
> -		BUG_ON (!page_is_ram(bfn));
> -#endif
> -		return xen_get_dma_ops(dev)->get_sgtable(dev, sgt, cpu_addr,
> -							   handle, size, attrs);
> -	}
> -#endif
>  	return dma_common_get_sgtable(dev, sgt, cpu_addr, handle, size, attrs);
>  }
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
