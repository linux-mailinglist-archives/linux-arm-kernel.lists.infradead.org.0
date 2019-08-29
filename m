Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8590A2A40
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aArs1JiCOSgMENPtNkJM/4GFVctpbDrwssVaEkfYPko=; b=CYYACyJA+A9Yoh
	BZ/6oR8yegsiEb4A7ULJPovS7OJjds62319cNV7jNZiCumYChdHR1kWAHCCdYhhPrnbFuV1WT3/UN
	dABN8qLI8GVG+e5e61qMdszOE7bZ7JiVk+mHTgFh2mCBvmYxfgdbQT0EV8BrX9G01fjECE9ghiHO2
	b6b04Bk9wmrPaLbqTKXhIoBoys7pOOxKqFecWjbEwzoL23Yha9rodWxH9rriHy0cONenVZdp/Od5O
	IYGw7z6mn/ySGUrbAmvrzcdxxOkOe/wsyS+4In/V/YZJSQwhpFoEW8FNsl4QSezS7jyXB198n0pDT
	lWjam83l1BaeBXbzSyPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3TET-0003nf-6o; Thu, 29 Aug 2019 22:49:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3TDA-0002fR-IO
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:48:14 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A476C21874;
 Thu, 29 Aug 2019 22:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567118892;
 bh=qahLSZidWBqyiJ9KPLWGgOnki/Ohn0lpoN98VUjbdJo=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=lox9/f+oJeZihIIKB+HOTjYdPrpnsEmbhUNTlvyPbLyIuqorYqCD/5ugnctXNXr5S
 h9zmT10Nj3xoPfMfmjrctVtlI6lWBTjpTEDIPjzV13CX8jSzyEDs3QtOFIQ8vJWNJn
 iP9g2neD8o6CjtcvfTYgSj6BBKHMbvfVJOT8Yk/g=
Date: Thu, 29 Aug 2019 15:48:11 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 10/11] swiotlb-xen: merge xen_unmap_single into
 xen_swiotlb_unmap_page
In-Reply-To: <20190826121944.515-11-hch@lst.de>
Message-ID: <alpine.DEB.2.21.1908281526470.8175@sstabellini-ThinkPad-T480s>
References: <20190826121944.515-1-hch@lst.de>
 <20190826121944.515-11-hch@lst.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_154812_662806_852729CB 
X-CRM114-Status: GOOD (  14.73  )
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
> No need for a no-op wrapper.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>

> ---
>  drivers/xen/swiotlb-xen.c | 15 ++++-----------
>  1 file changed, 4 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/xen/swiotlb-xen.c b/drivers/xen/swiotlb-xen.c
> index 95911ff9c11c..384304a77020 100644
> --- a/drivers/xen/swiotlb-xen.c
> +++ b/drivers/xen/swiotlb-xen.c
> @@ -414,9 +414,8 @@ static dma_addr_t xen_swiotlb_map_page(struct device *dev, struct page *page,
>   * After this call, reads by the cpu to the buffer are guaranteed to see
>   * whatever the device wrote there.
>   */
> -static void xen_unmap_single(struct device *hwdev, dma_addr_t dev_addr,
> -			     size_t size, enum dma_data_direction dir,
> -			     unsigned long attrs)
> +static void xen_swiotlb_unmap_page(struct device *hwdev, dma_addr_t dev_addr,
> +		size_t size, enum dma_data_direction dir, unsigned long attrs)
>  {
>  	phys_addr_t paddr = xen_bus_to_phys(dev_addr);
>  
> @@ -430,13 +429,6 @@ static void xen_unmap_single(struct device *hwdev, dma_addr_t dev_addr,
>  		swiotlb_tbl_unmap_single(hwdev, paddr, size, dir, attrs);
>  }
>  
> -static void xen_swiotlb_unmap_page(struct device *hwdev, dma_addr_t dev_addr,
> -			    size_t size, enum dma_data_direction dir,
> -			    unsigned long attrs)
> -{
> -	xen_unmap_single(hwdev, dev_addr, size, dir, attrs);
> -}
> -
>  static void
>  xen_swiotlb_sync_single_for_cpu(struct device *dev, dma_addr_t dma_addr,
>  		size_t size, enum dma_data_direction dir)
> @@ -477,7 +469,8 @@ xen_swiotlb_unmap_sg(struct device *hwdev, struct scatterlist *sgl, int nelems,
>  	BUG_ON(dir == DMA_NONE);
>  
>  	for_each_sg(sgl, sg, nelems, i)
> -		xen_unmap_single(hwdev, sg->dma_address, sg_dma_len(sg), dir, attrs);
> +		xen_swiotlb_unmap_page(hwdev, sg->dma_address, sg_dma_len(sg),
> +				dir, attrs);
>  
>  }
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
