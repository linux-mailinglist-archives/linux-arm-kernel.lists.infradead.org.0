Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E04A29ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:42:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+tH1lDscVnDvjDSipAAgMtg/9mpYl4346oCPIVLkU0=; b=dpyV1mYpcNYGj1
	eaugYXO47aYw7AMs8ScTXKIcHem//t73YWsdVFc4kUo2Grug9+yJSkIGJ6GTlC36rvWjTYD0n5Us6
	W6Y4tAMN3rKkfnzQ3FRR6VdTQtWSxDXexfYjnjRtHjIgyQqya/Iy007KJ0Y22lV+/2aiFs+n7MGBi
	+szIwYXiBhDGBEdZyP+sfSlf5kvLmzyUjJ5CqI2F6E/WINJGqMAaHRvSqcGHerO+KCxw55LhsmD2n
	KToDijzYrFPhnrTwgt8vaAJ20/N1hp229Bmm0s5QQ7e4l4GDerP59LQTmQAncXzjTrbBDNwmVA0F8
	zQOvbltN4pPX8/4La5BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3T7N-0006De-Dc; Thu, 29 Aug 2019 22:42:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3T6y-000644-6t
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:41:50 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6846D21874;
 Thu, 29 Aug 2019 22:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567118507;
 bh=zVuq7UiFIvES2V8FNzXq+zN3VeqnlIDeBuJ9TC/EqHQ=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=01g0xDT1GOKWzl8KJpALY9PNSe+2ZwSXIuKKWTkED0X8lgSA65Bl88vOV55gJMkv5
 fm/KMz4qjv1wktgJ2HStodSXuMPPdrMSdxXnb0SXhjdvaAxrcKzx+PRIBrSURCsm5+
 z9PyWIKWOk7Fw8ooI3Sb2GNkwAggegQQjDPJR5v0=
Date: Thu, 29 Aug 2019 15:41:46 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 02/11] xen/arm: use dev_is_dma_coherent
In-Reply-To: <20190826121944.515-3-hch@lst.de>
Message-ID: <alpine.DEB.2.21.1908281419010.8175@sstabellini-ThinkPad-T480s>
References: <20190826121944.515-1-hch@lst.de> <20190826121944.515-3-hch@lst.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_154148_353859_A753FB0E 
X-CRM114-Status: GOOD (  19.41  )
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
Cc: Julien Grall <julien.grall@arm.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 xen-devel@lists.xenproject.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 26 Aug 2019, Christoph Hellwig wrote:
> Use the dma-noncoherent dev_is_dma_coherent helper instead of the home
> grown variant.  Note that both are always initialized to the same
> value in arch_setup_dma_ops.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Julien Grall <julien.grall@arm.com>

Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>


> ---
>  arch/arm/include/asm/dma-mapping.h   |  6 ------
>  arch/arm/xen/mm.c                    | 12 ++++++------
>  arch/arm64/include/asm/dma-mapping.h |  9 ---------
>  3 files changed, 6 insertions(+), 21 deletions(-)
> 
> diff --git a/arch/arm/include/asm/dma-mapping.h b/arch/arm/include/asm/dma-mapping.h
> index dba9355e2484..bdd80ddbca34 100644
> --- a/arch/arm/include/asm/dma-mapping.h
> +++ b/arch/arm/include/asm/dma-mapping.h
> @@ -91,12 +91,6 @@ static inline dma_addr_t virt_to_dma(struct device *dev, void *addr)
>  }
>  #endif
>  
> -/* do not use this function in a driver */
> -static inline bool is_device_dma_coherent(struct device *dev)
> -{
> -	return dev->archdata.dma_coherent;
> -}
> -
>  /**
>   * arm_dma_alloc - allocate consistent memory for DMA
>   * @dev: valid struct device pointer, or NULL for ISA and EISA-like devices
> diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
> index d33b77e9add3..90574d89d0d4 100644
> --- a/arch/arm/xen/mm.c
> +++ b/arch/arm/xen/mm.c
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  #include <linux/cpu.h>
> -#include <linux/dma-mapping.h>
> +#include <linux/dma-noncoherent.h>
>  #include <linux/gfp.h>
>  #include <linux/highmem.h>
>  #include <linux/export.h>
> @@ -99,7 +99,7 @@ void __xen_dma_map_page(struct device *hwdev, struct page *page,
>  	     dma_addr_t dev_addr, unsigned long offset, size_t size,
>  	     enum dma_data_direction dir, unsigned long attrs)
>  {
> -	if (is_device_dma_coherent(hwdev))
> +	if (dev_is_dma_coherent(hwdev))
>  		return;
>  	if (attrs & DMA_ATTR_SKIP_CPU_SYNC)
>  		return;
> @@ -112,7 +112,7 @@ void __xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
>  		unsigned long attrs)
>  
>  {
> -	if (is_device_dma_coherent(hwdev))
> +	if (dev_is_dma_coherent(hwdev))
>  		return;
>  	if (attrs & DMA_ATTR_SKIP_CPU_SYNC)
>  		return;
> @@ -123,7 +123,7 @@ void __xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
>  void __xen_dma_sync_single_for_cpu(struct device *hwdev,
>  		dma_addr_t handle, size_t size, enum dma_data_direction dir)
>  {
> -	if (is_device_dma_coherent(hwdev))
> +	if (dev_is_dma_coherent(hwdev))
>  		return;
>  	__xen_dma_page_dev_to_cpu(hwdev, handle, size, dir);
>  }
> @@ -131,7 +131,7 @@ void __xen_dma_sync_single_for_cpu(struct device *hwdev,
>  void __xen_dma_sync_single_for_device(struct device *hwdev,
>  		dma_addr_t handle, size_t size, enum dma_data_direction dir)
>  {
> -	if (is_device_dma_coherent(hwdev))
> +	if (dev_is_dma_coherent(hwdev))
>  		return;
>  	__xen_dma_page_cpu_to_dev(hwdev, handle, size, dir);
>  }
> @@ -159,7 +159,7 @@ bool xen_arch_need_swiotlb(struct device *dev,
>  	 * memory and we are not able to flush the cache.
>  	 */
>  	return (!hypercall_cflush && (xen_pfn != bfn) &&
> -		!is_device_dma_coherent(dev));
> +		!dev_is_dma_coherent(dev));
>  }
>  
>  int xen_create_contiguous_region(phys_addr_t pstart, unsigned int order,
> diff --git a/arch/arm64/include/asm/dma-mapping.h b/arch/arm64/include/asm/dma-mapping.h
> index bdcb0922a40c..67243255a858 100644
> --- a/arch/arm64/include/asm/dma-mapping.h
> +++ b/arch/arm64/include/asm/dma-mapping.h
> @@ -18,14 +18,5 @@ static inline const struct dma_map_ops *get_arch_dma_ops(struct bus_type *bus)
>  	return NULL;
>  }
>  
> -/*
> - * Do not use this function in a driver, it is only provided for
> - * arch/arm/mm/xen.c, which is used by arm64 as well.
> - */
> -static inline bool is_device_dma_coherent(struct device *dev)
> -{
> -	return dev->dma_coherent;
> -}
> -
>  #endif	/* __KERNEL__ */
>  #endif	/* __ASM_DMA_MAPPING_H */
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
