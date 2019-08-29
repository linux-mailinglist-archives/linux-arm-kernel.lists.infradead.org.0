Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9DFA2A38
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:48:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Juo1FS59G4KhNuvkK7BcABUiijtz1uzlOT9N0bL8ks=; b=Ootbu05LZwDVKZ
	V/fl+Q112mvk/4jpNuBSvoMZDW56tM4X7m96JtSH9vdnQZmAW+5Dfzh3Y54FU8UzjBpmRz9eR3tsN
	9eDpHzBL16UZGk8J6P+AO/99FdVAdsMw09dIBV1KHa7L859y5WiCHKrcP4iMKMgfsjY6NLeD6BZwM
	M90xpknfHbRv3FuCGc+MzjUlnupf+lyoYjVpa6dN8uZ1AbpXIyV6dS6J9YQ9Ha55l7+DDGaqwBJcq
	CddWRjEcaikPcWrGmE/gZ2wH8ivw/BzGajWpLLg9ib2bT0t6wb4m0CqpIxLUnEbcnwajEbTbs9bu/
	h7xd5cPSg30TqYKSfYpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3TDY-0002ot-8a; Thu, 29 Aug 2019 22:48:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3TC8-0001gA-4D
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:47:09 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A34F22CEA;
 Thu, 29 Aug 2019 22:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567118827;
 bh=sm/nKdM9UsIhUb6FhRZ+kQtsA7U5a/JALl6VUJ4+q2Q=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=CVS10g5rx/XTa3zAqZYWqPzwDeS4hTCFiG0WkGUDDDvXuwqoTWMRvCZy+4vIOeCa2
 EitnmAkmPhgz8IptegpIpXy8m7xG5dzQc1bFjFWw2Ct4h9eHOTj1kDXw4/JUM1rcEQ
 U7l6bmF3dACn+UY4Le2fqo/wliNCIcEHTnE8qZXE=
Date: Thu, 29 Aug 2019 15:47:06 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 07/11] swiotlb-xen: use the same foreign page check
 everywhere
In-Reply-To: <20190826121944.515-8-hch@lst.de>
Message-ID: <alpine.DEB.2.21.1908281506430.8175@sstabellini-ThinkPad-T480s>
References: <20190826121944.515-1-hch@lst.de> <20190826121944.515-8-hch@lst.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_154708_238335_78CB8E05 
X-CRM114-Status: GOOD (  20.63  )
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
> xen_dma_map_page uses a different and more complicated check for foreign
> pages than the other three cache maintainance helpers.  Switch it to the
> simpler pfn_valid method a well, and document the scheme with a single
> improved comment in xen_dma_map_page.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>


> ---
>  include/xen/arm/page-coherent.h | 31 +++++++++----------------------
>  1 file changed, 9 insertions(+), 22 deletions(-)
> 
> diff --git a/include/xen/arm/page-coherent.h b/include/xen/arm/page-coherent.h
> index 0e244f4fec1a..07c104dbc21f 100644
> --- a/include/xen/arm/page-coherent.h
> +++ b/include/xen/arm/page-coherent.h
> @@ -41,23 +41,17 @@ static inline void xen_dma_map_page(struct device *hwdev, struct page *page,
>  	     dma_addr_t dev_addr, unsigned long offset, size_t size,
>  	     enum dma_data_direction dir, unsigned long attrs)
>  {
> -	unsigned long page_pfn = page_to_xen_pfn(page);
> -	unsigned long dev_pfn = XEN_PFN_DOWN(dev_addr);
> -	unsigned long compound_pages =
> -		(1<<compound_order(page)) * XEN_PFN_PER_PAGE;
> -	bool local = (page_pfn <= dev_pfn) &&
> -		(dev_pfn - page_pfn < compound_pages);
> +	unsigned long pfn = PFN_DOWN(dev_addr);
>  
>  	/*
> -	 * Dom0 is mapped 1:1, while the Linux page can span across
> -	 * multiple Xen pages, it's not possible for it to contain a
> -	 * mix of local and foreign Xen pages. So if the first xen_pfn
> -	 * == mfn the page is local otherwise it's a foreign page
> -	 * grant-mapped in dom0. If the page is local we can safely
> -	 * call the native dma_ops function, otherwise we call the xen
> -	 * specific function.
> +	 * Dom0 is mapped 1:1, and while the Linux page can span across multiple
> +	 * Xen pages, it is not possible for it to contain a mix of local and
> +	 * foreign Xen pages.  Calling pfn_valid on a foreign mfn will always
> +	 * return false, so if pfn_valid returns true the pages is local and we
> +	 * can use the native dma-direct functions, otherwise we call the Xen
> +	 * specific version.
>  	 */
> -	if (local)
> +	if (pfn_valid(pfn))
>  		dma_direct_map_page(hwdev, page, offset, size, dir, attrs);
>  	else
>  		__xen_dma_map_page(hwdev, page, dev_addr, offset, size, dir, attrs);
> @@ -67,14 +61,7 @@ static inline void xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
>  		size_t size, enum dma_data_direction dir, unsigned long attrs)
>  {
>  	unsigned long pfn = PFN_DOWN(handle);
> -	/*
> -	 * Dom0 is mapped 1:1, while the Linux page can be spanned accross
> -	 * multiple Xen page, it's not possible to have a mix of local and
> -	 * foreign Xen page. Dom0 is mapped 1:1, so calling pfn_valid on a
> -	 * foreign mfn will always return false. If the page is local we can
> -	 * safely call the native dma_ops function, otherwise we call the xen
> -	 * specific function.
> -	 */
> +
>  	if (pfn_valid(pfn))
>  		dma_direct_unmap_page(hwdev, handle, size, dir, attrs);
>  	else
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
