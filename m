Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF9BA2A36
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KbC6TAaoiPnWArnuj9EqomvHLrvlZO6t5Tq2agA0EVk=; b=jWmcexNsFb3drI
	0iLAH79Y9x85PvtxJrWH1A10AO5tnC04C0wFBQ32++tPnAOCmqGecX8JX+JLSYNbsyJcKW/Bl8/Yf
	GXDRj6FlqpBzgzU+eiK8k8mZK0l2RFPdTheGu3MOFPhhPQUEY+NXVxzakyHWXAbdiaAr/e34eOKjn
	jU3UKpoaOkOD3uql/B6RoEQkXhXOvqBItx9qXZsRDWgFhOugbWH7ZOe8zLTNb8W48HpNo1exzpBMe
	1v4j3r3gYjTjfu1lZrG0lDyrljcdcXwqZwNgfVSZvyeWoSZiYvIpopxhB0MytL46dRmmIW7SCBVwe
	cHebawCtCm0k4hCZ40UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3TDC-0002V5-Be; Thu, 29 Aug 2019 22:48:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3TBu-0001Sf-GH
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:46:56 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A007921874;
 Thu, 29 Aug 2019 22:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567118814;
 bh=5i8UCHTKfxI1RiMfkzSc2sP1EbSS0hZk+I67qfUo5Vk=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=nByf2uix/jKaDvvUZ1qwUvvrxJTXcNbZh5hDsGTEjOY4Jt22C9npxp8mXinRLNkdh
 Ng+zNwUuJ/ZBTQDt7J+XMvSaC6k/RUWNR4LtRYT4no+c2PpjB1n5k0rxg9rEf88n1e
 eJGIHBop60nSe3P/MlgsYuNqtBD9h718EzAH7onw=
Date: Thu, 29 Aug 2019 15:46:53 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 06/11] swiotlb-xen: always use dma-direct helpers to
 alloc coherent pages
In-Reply-To: <20190826121944.515-7-hch@lst.de>
Message-ID: <alpine.DEB.2.21.1908281501120.8175@sstabellini-ThinkPad-T480s>
References: <20190826121944.515-1-hch@lst.de> <20190826121944.515-7-hch@lst.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_154654_683162_56F4E64B 
X-CRM114-Status: GOOD (  15.86  )
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
Cc: jgross@suse.com, Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 xen-devel@lists.xenproject.org, boris.ostrovsky@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ Boris, Juergen

On Mon, 26 Aug 2019, Christoph Hellwig wrote:
> x86 currently calls alloc_pages, but using dma-direct works as well
> there, with the added benefit of using the CMA pool if available.
> The biggest advantage is of course to remove a pointless bit of
> architecture specific code.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/x86/include/asm/xen/page-coherent.h | 16 ----------------
>  drivers/xen/swiotlb-xen.c                |  7 +++----
>  include/xen/arm/page-coherent.h          | 12 ------------
>  3 files changed, 3 insertions(+), 32 deletions(-)
> 
> diff --git a/arch/x86/include/asm/xen/page-coherent.h b/arch/x86/include/asm/xen/page-coherent.h
> index 116777e7f387..8ee33c5edded 100644
> --- a/arch/x86/include/asm/xen/page-coherent.h
> +++ b/arch/x86/include/asm/xen/page-coherent.h
> @@ -5,22 +5,6 @@
>  #include <asm/page.h>
>  #include <linux/dma-mapping.h>
>  
> -static inline void *xen_alloc_coherent_pages(struct device *hwdev, size_t size,
> -		dma_addr_t *dma_handle, gfp_t flags,
> -		unsigned long attrs)
> -{
> -	void *vstart = (void*)__get_free_pages(flags, get_order(size));
> -	*dma_handle = virt_to_phys(vstart);

This is where we need Boris and Juergen's opinion. From an ARM POV it
looks OK.


> -	return vstart;
> -}
> -
> -static inline void xen_free_coherent_pages(struct device *hwdev, size_t size,
> -		void *cpu_addr, dma_addr_t dma_handle,
> -		unsigned long attrs)
> -{
> -	free_pages((unsigned long) cpu_addr, get_order(size));
> -}
> -
>  static inline void xen_dma_map_page(struct device *hwdev, struct page *page,
>  	     dma_addr_t dev_addr, unsigned long offset, size_t size,
>  	     enum dma_data_direction dir, unsigned long attrs) { }
> diff --git a/drivers/xen/swiotlb-xen.c b/drivers/xen/swiotlb-xen.c
> index b8808677ae1d..f9dd4cb6e4b3 100644
> --- a/drivers/xen/swiotlb-xen.c
> +++ b/drivers/xen/swiotlb-xen.c
> @@ -299,8 +299,7 @@ xen_swiotlb_alloc_coherent(struct device *hwdev, size_t size,
>  	 * address. In fact on ARM virt_to_phys only works for kernel direct
>  	 * mapped RAM memory. Also see comment below.
>  	 */
> -	ret = xen_alloc_coherent_pages(hwdev, size, dma_handle, flags, attrs);
> -
> +	ret = dma_direct_alloc(hwdev, size, dma_handle, flags, attrs);
>  	if (!ret)
>  		return ret;
>  
> @@ -319,7 +318,7 @@ xen_swiotlb_alloc_coherent(struct device *hwdev, size_t size,
>  	else {
>  		if (xen_create_contiguous_region(phys, order,
>  						 fls64(dma_mask), dma_handle) != 0) {
> -			xen_free_coherent_pages(hwdev, size, ret, (dma_addr_t)phys, attrs);
> +			dma_direct_free(hwdev, size, ret, (dma_addr_t)phys, attrs);
>  			return NULL;
>  		}
>  		SetPageXenRemapped(virt_to_page(ret));
> @@ -351,7 +350,7 @@ xen_swiotlb_free_coherent(struct device *hwdev, size_t size, void *vaddr,
>  	    TestClearPageXenRemapped(virt_to_page(vaddr)))
>  		xen_destroy_contiguous_region(phys, order);
>  
> -	xen_free_coherent_pages(hwdev, size, vaddr, (dma_addr_t)phys, attrs);
> +	dma_direct_free(hwdev, size, vaddr, (dma_addr_t)phys, attrs);
>  }
>  
>  /*
> diff --git a/include/xen/arm/page-coherent.h b/include/xen/arm/page-coherent.h
> index a840d6949a87..0e244f4fec1a 100644
> --- a/include/xen/arm/page-coherent.h
> +++ b/include/xen/arm/page-coherent.h
> @@ -16,18 +16,6 @@ void __xen_dma_sync_single_for_cpu(struct device *hwdev,
>  void __xen_dma_sync_single_for_device(struct device *hwdev,
>  		dma_addr_t handle, size_t size, enum dma_data_direction dir);
>  
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
>  static inline void xen_dma_sync_single_for_cpu(struct device *hwdev,
>  		dma_addr_t handle, size_t size, enum dma_data_direction dir)
>  {
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
