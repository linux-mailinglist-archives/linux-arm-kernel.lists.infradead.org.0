Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04028A2A3C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OytoFd396HduMHzOCYj9sVvF82zHnDaMYZcQZkM7OzA=; b=PoN4/yqTJSOyYN
	YMmjaODJenjdvvQzsNW+dbgKRPDOmJ1CcSe9Idq+G8ZjDqXJEYJ4LXh/9s2R+WF4mY+A5x0MiOa1M
	pQsnTFVO5QSWPF50Ysf8Up8cVXMlt8YtSoVDxLnOLpy5/y5NaZ7jKJUnbNc069pywG8+j18ep7mQE
	nG+DIy4hSUCuiX4r9xNKNzwqmJo6a/VjcB92UeaH+ohsxxzXColt7Fzcfkh4xy1gc2wJjHByaxCCF
	2/Ci9OaJtuxwVwmv5pStic9vM9i6VNe5XcLxblSMQwgIt4ePdpe8KCAz7LxNziMbJ5ryXIxQPlRYw
	lU1ajaPHerbmORdDwxpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3TDx-0003G1-NJ; Thu, 29 Aug 2019 22:49:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3TCo-0002K6-2W
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:47:52 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5176E21874;
 Thu, 29 Aug 2019 22:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567118869;
 bh=5HuSUM+1ADSY3mn/95Vd7pryktLmy7b2HnKbDfxjNWc=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=mC20uFDvUjMbNsrXK6+NPH0duT8dJ859vxTO1Mo0FdeG3qYY80Zbcx/T6/BHvR7XD
 VH5Ex31xgsDQO/htEb2Wtz7ET4+YCGNvyJEVZJFSl1Dj97pfvZ4ANtxEdto7PflLC3
 D1PKu2hS9bV4GpzwV8fQ7Vrf9//Xgwt6mVwI585s=
Date: Thu, 29 Aug 2019 15:47:48 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 08/11] swiotlb-xen: simplify cache maintainance
In-Reply-To: <20190826121944.515-9-hch@lst.de>
Message-ID: <alpine.DEB.2.21.1908281525450.8175@sstabellini-ThinkPad-T480s>
References: <20190826121944.515-1-hch@lst.de> <20190826121944.515-9-hch@lst.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_154750_336161_30D1F7B8 
X-CRM114-Status: GOOD (  25.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 xen-devel@lists.xenproject.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 26 Aug 2019, Christoph Hellwig wrote:
> Now that we know we always have the dma-noncoherent.h helpers available
> if we are on an architecture with support for non-coherent devices,
> we can just call them directly, and remove the calls to the dma-direct
> routines, including the fact that we call the dma_direct_map_page
> routines but ignore the value returned from it.  Instead we now have
> Xen wrappers for the arch_sync_dma_for_{device,cpu} helpers that call
> the special Xen versions of those routines for foreign pages.
> 
> Note that the new helpers get the physical address passed in addition
> to the dma address to avoid another translation for the local cache
> maintainance.  The pfn_valid checks remain on the dma address as in
> the old code, even if that looks a little funny.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
>
> ---
>  arch/arm/xen/mm.c                        | 64 ++++++----------------
>  arch/x86/include/asm/xen/page-coherent.h | 11 ----
>  drivers/xen/swiotlb-xen.c                | 20 +++----
>  include/xen/arm/page-coherent.h          | 69 ++----------------------
>  4 files changed, 31 insertions(+), 133 deletions(-)

WOW nice! Now I really can see why this series was worth doing :-)

Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>




> diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
> index b7d53415532b..7096652f5a1e 100644
> --- a/arch/arm/xen/mm.c
> +++ b/arch/arm/xen/mm.c
> @@ -61,63 +61,33 @@ static void dma_cache_maint(dma_addr_t handle, size_t size, u32 op)
>  	} while (size);
>  }
>  
> -static void __xen_dma_page_dev_to_cpu(struct device *hwdev, dma_addr_t handle,
> -		size_t size, enum dma_data_direction dir)
> +/*
> + * Dom0 is mapped 1:1, and while the Linux page can span across multiple Xen
> + * pages, it is not possible for it to contain a mix of local and foreign Xen
> + * pages.  Calling pfn_valid on a foreign mfn will always return false, so if
> + * pfn_valid returns true the pages is local and we can use the native
> + * dma-direct functions, otherwise we call the Xen specific version.
> + */
> +void xen_dma_sync_for_cpu(struct device *dev, dma_addr_t handle,
> +		phys_addr_t paddr, size_t size, enum dma_data_direction dir)
>  {
> -	if (dir != DMA_TO_DEVICE)
> +	if (pfn_valid(PFN_DOWN(handle)))
> +		arch_sync_dma_for_cpu(dev, paddr, size, dir);
> +	else if (dir != DMA_TO_DEVICE)
>  		dma_cache_maint(handle, size, GNTTAB_CACHE_INVAL);
>  }
>  
> -static void __xen_dma_page_cpu_to_dev(struct device *hwdev, dma_addr_t handle,
> -		size_t size, enum dma_data_direction dir)
> +void xen_dma_sync_for_device(struct device *dev, dma_addr_t handle,
> +		phys_addr_t paddr, size_t size, enum dma_data_direction dir)
>  {
> -	if (dir == DMA_FROM_DEVICE)
> +	if (pfn_valid(PFN_DOWN(handle)))
> +		arch_sync_dma_for_device(dev, paddr, size, dir);
> +	else if (dir == DMA_FROM_DEVICE)
>  		dma_cache_maint(handle, size, GNTTAB_CACHE_INVAL);
>  	else
>  		dma_cache_maint(handle, size, GNTTAB_CACHE_CLEAN);
>  }
>  
> -void __xen_dma_map_page(struct device *hwdev, struct page *page,
> -	     dma_addr_t dev_addr, unsigned long offset, size_t size,
> -	     enum dma_data_direction dir, unsigned long attrs)
> -{
> -	if (dev_is_dma_coherent(hwdev))
> -		return;
> -	if (attrs & DMA_ATTR_SKIP_CPU_SYNC)
> -		return;
> -
> -	__xen_dma_page_cpu_to_dev(hwdev, dev_addr, size, dir);
> -}
> -
> -void __xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
> -		size_t size, enum dma_data_direction dir,
> -		unsigned long attrs)
> -
> -{
> -	if (dev_is_dma_coherent(hwdev))
> -		return;
> -	if (attrs & DMA_ATTR_SKIP_CPU_SYNC)
> -		return;
> -
> -	__xen_dma_page_dev_to_cpu(hwdev, handle, size, dir);
> -}
> -
> -void __xen_dma_sync_single_for_cpu(struct device *hwdev,
> -		dma_addr_t handle, size_t size, enum dma_data_direction dir)
> -{
> -	if (dev_is_dma_coherent(hwdev))
> -		return;
> -	__xen_dma_page_dev_to_cpu(hwdev, handle, size, dir);
> -}
> -
> -void __xen_dma_sync_single_for_device(struct device *hwdev,
> -		dma_addr_t handle, size_t size, enum dma_data_direction dir)
> -{
> -	if (dev_is_dma_coherent(hwdev))
> -		return;
> -	__xen_dma_page_cpu_to_dev(hwdev, handle, size, dir);
> -}
> -
>  bool xen_arch_need_swiotlb(struct device *dev,
>  			   phys_addr_t phys,
>  			   dma_addr_t dev_addr)
> diff --git a/arch/x86/include/asm/xen/page-coherent.h b/arch/x86/include/asm/xen/page-coherent.h
> index 8ee33c5edded..c9c8398a31ff 100644
> --- a/arch/x86/include/asm/xen/page-coherent.h
> +++ b/arch/x86/include/asm/xen/page-coherent.h
> @@ -2,17 +2,6 @@
>  #ifndef _ASM_X86_XEN_PAGE_COHERENT_H
>  #define _ASM_X86_XEN_PAGE_COHERENT_H
>  
> -#include <asm/page.h>
> -#include <linux/dma-mapping.h>
> -
> -static inline void xen_dma_map_page(struct device *hwdev, struct page *page,
> -	     dma_addr_t dev_addr, unsigned long offset, size_t size,
> -	     enum dma_data_direction dir, unsigned long attrs) { }
> -
> -static inline void xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
> -		size_t size, enum dma_data_direction dir,
> -		unsigned long attrs) { }
> -
>  static inline void xen_dma_sync_single_for_cpu(struct device *hwdev,
>  		dma_addr_t handle, size_t size, enum dma_data_direction dir) { }
>  
> diff --git a/drivers/xen/swiotlb-xen.c b/drivers/xen/swiotlb-xen.c
> index f9dd4cb6e4b3..a642e284f1e2 100644
> --- a/drivers/xen/swiotlb-xen.c
> +++ b/drivers/xen/swiotlb-xen.c
> @@ -28,6 +28,7 @@
>  
>  #include <linux/memblock.h>
>  #include <linux/dma-direct.h>
> +#include <linux/dma-noncoherent.h>
>  #include <linux/export.h>
>  #include <xen/swiotlb-xen.h>
>  #include <xen/page.h>
> @@ -390,6 +391,7 @@ static dma_addr_t xen_swiotlb_map_page(struct device *dev, struct page *page,
>  	if (map == (phys_addr_t)DMA_MAPPING_ERROR)
>  		return DMA_MAPPING_ERROR;
>  
> +	phys = map;
>  	dev_addr = xen_phys_to_bus(map);
>  
>  	/*
> @@ -401,14 +403,9 @@ static dma_addr_t xen_swiotlb_map_page(struct device *dev, struct page *page,
>  		return DMA_MAPPING_ERROR;
>  	}
>  
> -	page = pfn_to_page(map >> PAGE_SHIFT);
> -	offset = map & ~PAGE_MASK;
>  done:
> -	/*
> -	 * we are not interested in the dma_addr returned by xen_dma_map_page,
> -	 * only in the potential cache flushes executed by the function.
> -	 */
> -	xen_dma_map_page(dev, page, dev_addr, offset, size, dir, attrs);
> +	if (!dev_is_dma_coherent(dev) && !(attrs & DMA_ATTR_SKIP_CPU_SYNC))
> +		xen_dma_sync_for_device(dev, dev_addr, phys, size, dir);
>  	return dev_addr;
>  }
>  
> @@ -428,7 +425,8 @@ static void xen_unmap_single(struct device *hwdev, dma_addr_t dev_addr,
>  
>  	BUG_ON(dir == DMA_NONE);
>  
> -	xen_dma_unmap_page(hwdev, dev_addr, size, dir, attrs);
> +	if (!dev_is_dma_coherent(hwdev) && !(attrs & DMA_ATTR_SKIP_CPU_SYNC))
> +		xen_dma_sync_for_cpu(hwdev, dev_addr, paddr, size, dir);
>  
>  	/* NOTE: We use dev_addr here, not paddr! */
>  	if (is_xen_swiotlb_buffer(dev_addr))
> @@ -448,7 +446,8 @@ xen_swiotlb_sync_single_for_cpu(struct device *dev, dma_addr_t dma_addr,
>  {
>  	phys_addr_t paddr = xen_bus_to_phys(dma_addr);
>  
> -	xen_dma_sync_single_for_cpu(dev, dma_addr, size, dir);
> +	if (!dev_is_dma_coherent(dev))
> +		xen_dma_sync_for_cpu(dev, dma_addr, paddr, size, dir);
>  
>  	if (is_xen_swiotlb_buffer(dma_addr))
>  		swiotlb_tbl_sync_single(dev, paddr, size, dir, SYNC_FOR_CPU);
> @@ -463,7 +462,8 @@ xen_swiotlb_sync_single_for_device(struct device *dev, dma_addr_t dma_addr,
>  	if (is_xen_swiotlb_buffer(dma_addr))
>  		swiotlb_tbl_sync_single(dev, paddr, size, dir, SYNC_FOR_DEVICE);
>  
> -	xen_dma_sync_single_for_device(dev, dma_addr, size, dir);
> +	if (!dev_is_dma_coherent(dev))
> +		xen_dma_sync_for_device(dev, dma_addr, paddr, size, dir);
>  }
>  
>  /*
> diff --git a/include/xen/arm/page-coherent.h b/include/xen/arm/page-coherent.h
> index 07c104dbc21f..635492d41ebe 100644
> --- a/include/xen/arm/page-coherent.h
> +++ b/include/xen/arm/page-coherent.h
> @@ -2,70 +2,9 @@
>  #ifndef _XEN_ARM_PAGE_COHERENT_H
>  #define _XEN_ARM_PAGE_COHERENT_H
>  
> -#include <linux/dma-mapping.h>
> -#include <asm/page.h>
> -
> -void __xen_dma_map_page(struct device *hwdev, struct page *page,
> -	     dma_addr_t dev_addr, unsigned long offset, size_t size,
> -	     enum dma_data_direction dir, unsigned long attrs);
> -void __xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
> -		size_t size, enum dma_data_direction dir,
> -		unsigned long attrs);
> -void __xen_dma_sync_single_for_cpu(struct device *hwdev,
> -		dma_addr_t handle, size_t size, enum dma_data_direction dir);
> -void __xen_dma_sync_single_for_device(struct device *hwdev,
> -		dma_addr_t handle, size_t size, enum dma_data_direction dir);
> -
> -static inline void xen_dma_sync_single_for_cpu(struct device *hwdev,
> -		dma_addr_t handle, size_t size, enum dma_data_direction dir)
> -{
> -	unsigned long pfn = PFN_DOWN(handle);
> -
> -	if (pfn_valid(pfn))
> -		dma_direct_sync_single_for_cpu(hwdev, handle, size, dir);
> -	else
> -		__xen_dma_sync_single_for_cpu(hwdev, handle, size, dir);
> -}
> -
> -static inline void xen_dma_sync_single_for_device(struct device *hwdev,
> -		dma_addr_t handle, size_t size, enum dma_data_direction dir)
> -{
> -	unsigned long pfn = PFN_DOWN(handle);
> -	if (pfn_valid(pfn))
> -		dma_direct_sync_single_for_device(hwdev, handle, size, dir);
> -	else
> -		__xen_dma_sync_single_for_device(hwdev, handle, size, dir);
> -}
> -
> -static inline void xen_dma_map_page(struct device *hwdev, struct page *page,
> -	     dma_addr_t dev_addr, unsigned long offset, size_t size,
> -	     enum dma_data_direction dir, unsigned long attrs)
> -{
> -	unsigned long pfn = PFN_DOWN(dev_addr);
> -
> -	/*
> -	 * Dom0 is mapped 1:1, and while the Linux page can span across multiple
> -	 * Xen pages, it is not possible for it to contain a mix of local and
> -	 * foreign Xen pages.  Calling pfn_valid on a foreign mfn will always
> -	 * return false, so if pfn_valid returns true the pages is local and we
> -	 * can use the native dma-direct functions, otherwise we call the Xen
> -	 * specific version.
> -	 */
> -	if (pfn_valid(pfn))
> -		dma_direct_map_page(hwdev, page, offset, size, dir, attrs);
> -	else
> -		__xen_dma_map_page(hwdev, page, dev_addr, offset, size, dir, attrs);
> -}
> -
> -static inline void xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
> -		size_t size, enum dma_data_direction dir, unsigned long attrs)
> -{
> -	unsigned long pfn = PFN_DOWN(handle);
> -
> -	if (pfn_valid(pfn))
> -		dma_direct_unmap_page(hwdev, handle, size, dir, attrs);
> -	else
> -		__xen_dma_unmap_page(hwdev, handle, size, dir, attrs);
> -}
> +void xen_dma_sync_for_cpu(struct device *dev, dma_addr_t handle,
> +		phys_addr_t paddr, size_t size, enum dma_data_direction dir);
> +void xen_dma_sync_for_device(struct device *dev, dma_addr_t handle,
> +		phys_addr_t paddr, size_t size, enum dma_data_direction dir);
>  
>  #endif /* _XEN_ARM_PAGE_COHERENT_H */
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
