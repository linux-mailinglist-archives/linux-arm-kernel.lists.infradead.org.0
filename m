Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FABA29EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:42:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZ6/wD2LuxoI7yha79hmnPHFF54c1H1hG1UiVLNfO0E=; b=nWwBAtLeRzKI0/
	WEg5OGaqciZY7fh3iju4JaKQ6xU9/SIeH4BfiaMGcj8dcWLd6dSulTdsp99EiFli/bJupMbIJkMnE
	EppgUOABLKMjT9hrvi/STdFU1GP7Snq73chb/rxAX8OAm0YivnSGpIVLjHaWl+ppMwzY/blc0UXvX
	Z8/bBwsq6BMmqrM/Q5SKZoae1Rk2iQ8N1WUUJt2pxmB1ZZf19qWFC26zcmfpOUkahNzTnauBSb7/h
	okdaALiPLGQwt9b3JR6DozLm98sllxoqRgiy1B0urmSztzGJ9JHjlkaItqLuS2dGvCBmw6zHeBozQ
	lKGdo82ISQIMCwX5Sl7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3T7b-0006R8-Db; Thu, 29 Aug 2019 22:42:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3T79-0006Da-CV
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:42:02 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A31312189D;
 Thu, 29 Aug 2019 22:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567118519;
 bh=K4rt8zt90Kmj60EUr8Ldv/KP5AZNgIOkytellVQSzmc=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=1YN/3xioK/sOkd2EHLYyrqoX59ZRTxCvQ8FvQpisRpYOU/0fSb7JKuj23nCZQH6hu
 /RlPCh5ef2sQ3bgqTFLrsqntATI/sGsYVmmUrwpiJsHK6U8JdkHPxtUByH2AGJpzQ0
 jVl7lnqoqH4YW8dX0danw5b7kBAaiscoagXBaJPM=
Date: Thu, 29 Aug 2019 15:41:58 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 03/11] xen/arm: simplify dma_cache_maint
In-Reply-To: <20190826121944.515-4-hch@lst.de>
Message-ID: <alpine.DEB.2.21.1908281431390.8175@sstabellini-ThinkPad-T480s>
References: <20190826121944.515-1-hch@lst.de> <20190826121944.515-4-hch@lst.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_154159_493486_8B16CFA0 
X-CRM114-Status: GOOD (  18.35  )
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
> Calculate the required operation in the caller, and pass it directly
> instead of recalculating it for each page, and use simple arithmetics
> to get from the physical address to Xen page size aligned chunks.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/arm/xen/mm.c | 62 +++++++++++++++++------------------------------
>  1 file changed, 22 insertions(+), 40 deletions(-)
> 
> diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
> index 90574d89d0d4..14210ebdea1a 100644
> --- a/arch/arm/xen/mm.c
> +++ b/arch/arm/xen/mm.c
> @@ -35,64 +35,46 @@ unsigned long xen_get_swiotlb_free_pages(unsigned int order)
>  	return __get_free_pages(flags, order);
>  }
>  
> -enum dma_cache_op {
> -       DMA_UNMAP,
> -       DMA_MAP,
> -};
>  static bool hypercall_cflush = false;
>  
> -/* functions called by SWIOTLB */
> -
> -static void dma_cache_maint(dma_addr_t handle, unsigned long offset,
> -	size_t size, enum dma_data_direction dir, enum dma_cache_op op)
> +/* buffers in highmem or foreign pages cannot cross page boundaries */
> +static void dma_cache_maint(dma_addr_t handle, size_t size, u32 op)
>  {
>  	struct gnttab_cache_flush cflush;
> -	unsigned long xen_pfn;
> -	size_t left = size;
>  
> -	xen_pfn = (handle >> XEN_PAGE_SHIFT) + offset / XEN_PAGE_SIZE;
> -	offset %= XEN_PAGE_SIZE;
> +	cflush.a.dev_bus_addr = handle & XEN_PAGE_MASK;
> +	cflush.offset = xen_offset_in_page(handle);
> +	cflush.op = op;
>  
>  	do {
> -		size_t len = left;
> -	
> -		/* buffers in highmem or foreign pages cannot cross page
> -		 * boundaries */
> -		if (len + offset > XEN_PAGE_SIZE)
> -			len = XEN_PAGE_SIZE - offset;
> -
> -		cflush.op = 0;
> -		cflush.a.dev_bus_addr = xen_pfn << XEN_PAGE_SHIFT;
> -		cflush.offset = offset;
> -		cflush.length = len;
> -
> -		if (op == DMA_UNMAP && dir != DMA_TO_DEVICE)
> -			cflush.op = GNTTAB_CACHE_INVAL;
> -		if (op == DMA_MAP) {
> -			if (dir == DMA_FROM_DEVICE)
> -				cflush.op = GNTTAB_CACHE_INVAL;
> -			else
> -				cflush.op = GNTTAB_CACHE_CLEAN;
> -		}
> -		if (cflush.op)
> -			HYPERVISOR_grant_table_op(GNTTABOP_cache_flush, &cflush, 1);
> +		if (size + cflush.offset > XEN_PAGE_SIZE)
> +			cflush.length = XEN_PAGE_SIZE - cflush.offset;
> +		else
> +			cflush.length = size;

isn't it missing a:

  cflush.a.dev_bus_addr = handle & XEN_PAGE_MASK;

here?


> +		HYPERVISOR_grant_table_op(GNTTABOP_cache_flush, &cflush, 1);
> +
> +		handle += cflush.length;
> +		size -= cflush.length;
>  
> -		offset = 0;
> -		xen_pfn++;
> -		left -= len;
> -	} while (left);
> +		cflush.offset = 0;
> +	} while (size);
>  }
>  
>  static void __xen_dma_page_dev_to_cpu(struct device *hwdev, dma_addr_t handle,
>  		size_t size, enum dma_data_direction dir)
>  {
> -	dma_cache_maint(handle & PAGE_MASK, handle & ~PAGE_MASK, size, dir, DMA_UNMAP);
> +	if (dir != DMA_TO_DEVICE)
> +		dma_cache_maint(handle, size, GNTTAB_CACHE_INVAL);
>  }
>  
>  static void __xen_dma_page_cpu_to_dev(struct device *hwdev, dma_addr_t handle,
>  		size_t size, enum dma_data_direction dir)
>  {
> -	dma_cache_maint(handle & PAGE_MASK, handle & ~PAGE_MASK, size, dir, DMA_MAP);
> +	if (dir == DMA_FROM_DEVICE)
> +		dma_cache_maint(handle, size, GNTTAB_CACHE_INVAL);
> +	else
> +		dma_cache_maint(handle, size, GNTTAB_CACHE_CLEAN);
>  }
>  
>  void __xen_dma_map_page(struct device *hwdev, struct page *page,
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
