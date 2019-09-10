Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFB0AE1A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 02:18:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D8+PsTKB3zctMk2VPs/iTBGRhgvE9x2jM3owcBSPJko=; b=KirfDPNt96caLA
	/ATjaODPmUg74aJTKwK4zUpVbbLJVPGHgAu1wf7CKF4b5Oegi+iJ1ge+2jCK+yOV7Tb1qwxK+GR52
	7mmyMXwoabW1ZPmgsSEgvclo/DGR0q6G3xTgfPa5/EPqmAKkYs9qN4xKl4yiNwWwNPR6JlKkeQs5L
	6+RL55/WaR7rTe1qAbr+HpqHnkC4vp3O5I72Op2dGMrCyPIad0xDuDQEaqca9wIsRwbvPiPYvxmey
	hXCQGoq1dT5Ye7lVT5Z/6KW4xP7NvySQS9PysFVkVSY958263Q6nEaUAh72buKILruZxwisIXMWnh
	vdQg9qwCDAR73hcG4RmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Trz-0002ps-M4; Tue, 10 Sep 2019 00:18:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Trd-0002fK-C4
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 00:18:35 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 993D421924;
 Tue, 10 Sep 2019 00:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568074713;
 bh=dKUKP3JPu7hVaTGP/S7YYTxBafVoENZ0MqGtavG/XfE=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=ICKCzJ/tQcgzvr4AuWWrSSWAMgo/0zHUMkF/TlGCj70+2xzfS3uf/i3xzDUbh8xmQ
 1Z6ktOKxbMzN89BMGZl+7e6Jg3qHxS/ZguCel7w3EqnaqShpDKLeJnt3o/I8SLqYfH
 gqdTVOzVv1KrLeujtImQbq/9LKuweVBSM8lx0hkw=
Date: Mon, 9 Sep 2019 17:18:32 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 02/11] xen/arm: consolidate page-coherent.h
In-Reply-To: <20190905113408.3104-3-hch@lst.de>
Message-ID: <alpine.DEB.2.21.1909091701030.29131@sstabellini-ThinkPad-T480s>
References: <20190905113408.3104-1-hch@lst.de>
 <20190905113408.3104-3-hch@lst.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_171833_451623_B35ECD77 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
> Shared the duplicate arm/arm64 code in include/xen/arm/page-coherent.h.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>


> ---
>  arch/arm/include/asm/xen/page-coherent.h   | 75 --------------------
>  arch/arm64/include/asm/xen/page-coherent.h | 75 --------------------
>  include/xen/arm/page-coherent.h            | 80 ++++++++++++++++++++++
>  3 files changed, 80 insertions(+), 150 deletions(-)
> 
> diff --git a/arch/arm/include/asm/xen/page-coherent.h b/arch/arm/include/asm/xen/page-coherent.h
> index 602ac02f154c..27e984977402 100644
> --- a/arch/arm/include/asm/xen/page-coherent.h
> +++ b/arch/arm/include/asm/xen/page-coherent.h
> @@ -1,77 +1,2 @@
>  /* SPDX-License-Identifier: GPL-2.0 */
> -#ifndef _ASM_ARM_XEN_PAGE_COHERENT_H
> -#define _ASM_ARM_XEN_PAGE_COHERENT_H
> -
> -#include <linux/dma-mapping.h>
> -#include <asm/page.h>
>  #include <xen/arm/page-coherent.h>
> -
> -static inline void *xen_alloc_coherent_pages(struct device *hwdev, size_t size,
> -		dma_addr_t *dma_handle, gfp_t flags, unsigned long attrs)
> -{
> -	return dma_direct_alloc(hwdev, size, dma_handle, flags, attrs);
> -}
> -
> -static inline void xen_free_coherent_pages(struct device *hwdev, size_t size,
> -		void *cpu_addr, dma_addr_t dma_handle, unsigned long attrs)
> -{
> -	dma_direct_free(hwdev, size, cpu_addr, dma_handle, attrs);
> -}
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
> -	unsigned long page_pfn = page_to_xen_pfn(page);
> -	unsigned long dev_pfn = XEN_PFN_DOWN(dev_addr);
> -	unsigned long compound_pages =
> -		(1<<compound_order(page)) * XEN_PFN_PER_PAGE;
> -	bool local = (page_pfn <= dev_pfn) &&
> -		(dev_pfn - page_pfn < compound_pages);
> -
> -	if (local)
> -		dma_direct_map_page(hwdev, page, offset, size, dir, attrs);
> -	else
> -		__xen_dma_map_page(hwdev, page, dev_addr, offset, size, dir, attrs);
> -}
> -
> -static inline void xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
> -		size_t size, enum dma_data_direction dir, unsigned long attrs)
> -{
> -	unsigned long pfn = PFN_DOWN(handle);
> -	/*
> -	 * Dom0 is mapped 1:1, while the Linux page can be spanned accross
> -	 * multiple Xen page, it's not possible to have a mix of local and
> -	 * foreign Xen page. Dom0 is mapped 1:1, so calling pfn_valid on a
> -	 * foreign mfn will always return false. If the page is local we can
> -	 * safely call the native dma_ops function, otherwise we call the xen
> -	 * specific function.
> -	 */
> -	if (pfn_valid(pfn))
> -		dma_direct_unmap_page(hwdev, handle, size, dir, attrs);
> -	else
> -		__xen_dma_unmap_page(hwdev, handle, size, dir, attrs);
> -}
> -
> -#endif /* _ASM_ARM_XEN_PAGE_COHERENT_H */
> diff --git a/arch/arm64/include/asm/xen/page-coherent.h b/arch/arm64/include/asm/xen/page-coherent.h
> index d88e56b90b93..27e984977402 100644
> --- a/arch/arm64/include/asm/xen/page-coherent.h
> +++ b/arch/arm64/include/asm/xen/page-coherent.h
> @@ -1,77 +1,2 @@
>  /* SPDX-License-Identifier: GPL-2.0 */
> -#ifndef _ASM_ARM64_XEN_PAGE_COHERENT_H
> -#define _ASM_ARM64_XEN_PAGE_COHERENT_H
> -
> -#include <linux/dma-mapping.h>
> -#include <asm/page.h>
>  #include <xen/arm/page-coherent.h>
> -
> -static inline void *xen_alloc_coherent_pages(struct device *hwdev, size_t size,
> -		dma_addr_t *dma_handle, gfp_t flags, unsigned long attrs)
> -{
> -	return dma_direct_alloc(hwdev, size, dma_handle, flags, attrs);
> -}
> -
> -static inline void xen_free_coherent_pages(struct device *hwdev, size_t size,
> -		void *cpu_addr, dma_addr_t dma_handle, unsigned long attrs)
> -{
> -	dma_direct_free(hwdev, size, cpu_addr, dma_handle, attrs);
> -}
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
> -	unsigned long page_pfn = page_to_xen_pfn(page);
> -	unsigned long dev_pfn = XEN_PFN_DOWN(dev_addr);
> -	unsigned long compound_pages =
> -		(1<<compound_order(page)) * XEN_PFN_PER_PAGE;
> -	bool local = (page_pfn <= dev_pfn) &&
> -		(dev_pfn - page_pfn < compound_pages);
> -
> -	if (local)
> -		dma_direct_map_page(hwdev, page, offset, size, dir, attrs);
> -	else
> -		__xen_dma_map_page(hwdev, page, dev_addr, offset, size, dir, attrs);
> -}
> -
> -static inline void xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
> -		size_t size, enum dma_data_direction dir, unsigned long attrs)
> -{
> -	unsigned long pfn = PFN_DOWN(handle);
> -	/*
> -	 * Dom0 is mapped 1:1, while the Linux page can be spanned accross
> -	 * multiple Xen page, it's not possible to have a mix of local and
> -	 * foreign Xen page. Dom0 is mapped 1:1, so calling pfn_valid on a
> -	 * foreign mfn will always return false. If the page is local we can
> -	 * safely call the native dma_ops function, otherwise we call the xen
> -	 * specific function.
> -	 */
> -	if (pfn_valid(pfn))
> -		dma_direct_unmap_page(hwdev, handle, size, dir, attrs);
> -	else
> -		__xen_dma_unmap_page(hwdev, handle, size, dir, attrs);
> -}
> -
> -#endif /* _ASM_ARM64_XEN_PAGE_COHERENT_H */
> diff --git a/include/xen/arm/page-coherent.h b/include/xen/arm/page-coherent.h
> index 2ca9164a79bf..a840d6949a87 100644
> --- a/include/xen/arm/page-coherent.h
> +++ b/include/xen/arm/page-coherent.h
> @@ -2,6 +2,9 @@
>  #ifndef _XEN_ARM_PAGE_COHERENT_H
>  #define _XEN_ARM_PAGE_COHERENT_H
>  
> +#include <linux/dma-mapping.h>
> +#include <asm/page.h>
> +
>  void __xen_dma_map_page(struct device *hwdev, struct page *page,
>  	     dma_addr_t dev_addr, unsigned long offset, size_t size,
>  	     enum dma_data_direction dir, unsigned long attrs);
> @@ -13,4 +16,81 @@ void __xen_dma_sync_single_for_cpu(struct device *hwdev,
>  void __xen_dma_sync_single_for_device(struct device *hwdev,
>  		dma_addr_t handle, size_t size, enum dma_data_direction dir);
>  
> +static inline void *xen_alloc_coherent_pages(struct device *hwdev, size_t size,
> +		dma_addr_t *dma_handle, gfp_t flags, unsigned long attrs)
> +{
> +	return dma_direct_alloc(hwdev, size, dma_handle, flags, attrs);
> +}
> +
> +static inline void xen_free_coherent_pages(struct device *hwdev, size_t size,
> +		void *cpu_addr, dma_addr_t dma_handle, unsigned long attrs)
> +{
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
> +}
> +
> +static inline void xen_dma_map_page(struct device *hwdev, struct page *page,
> +	     dma_addr_t dev_addr, unsigned long offset, size_t size,
> +	     enum dma_data_direction dir, unsigned long attrs)
> +{
> +	unsigned long page_pfn = page_to_xen_pfn(page);
> +	unsigned long dev_pfn = XEN_PFN_DOWN(dev_addr);
> +	unsigned long compound_pages =
> +		(1<<compound_order(page)) * XEN_PFN_PER_PAGE;
> +	bool local = (page_pfn <= dev_pfn) &&
> +		(dev_pfn - page_pfn < compound_pages);
> +
> +	/*
> +	 * Dom0 is mapped 1:1, while the Linux page can span across
> +	 * multiple Xen pages, it's not possible for it to contain a
> +	 * mix of local and foreign Xen pages. So if the first xen_pfn
> +	 * == mfn the page is local otherwise it's a foreign page
> +	 * grant-mapped in dom0. If the page is local we can safely
> +	 * call the native dma_ops function, otherwise we call the xen
> +	 * specific function.
> +	 */
> +	if (local)
> +		dma_direct_map_page(hwdev, page, offset, size, dir, attrs);
> +	else
> +		__xen_dma_map_page(hwdev, page, dev_addr, offset, size, dir, attrs);
> +}
> +
> +static inline void xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
> +		size_t size, enum dma_data_direction dir, unsigned long attrs)
> +{
> +	unsigned long pfn = PFN_DOWN(handle);
> +	/*
> +	 * Dom0 is mapped 1:1, while the Linux page can be spanned accross
> +	 * multiple Xen page, it's not possible to have a mix of local and
> +	 * foreign Xen page. Dom0 is mapped 1:1, so calling pfn_valid on a
> +	 * foreign mfn will always return false. If the page is local we can
> +	 * safely call the native dma_ops function, otherwise we call the xen
> +	 * specific function.
> +	 */
> +	if (pfn_valid(pfn))
> +		dma_direct_unmap_page(hwdev, handle, size, dir, attrs);
> +	else
> +		__xen_dma_unmap_page(hwdev, handle, size, dir, attrs);
> +}
> +
>  #endif /* _XEN_ARM_PAGE_COHERENT_H */
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
