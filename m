Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B55A29BF2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 18:15:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TSA9YhBlC1Vh0CuZnPU2Pkni82kQx+c4SSaquDsGz5U=; b=s2FHXyd1yqbCrt
	uPG2NolCSgp+OOog/0Je+eEIcklUxhN3H7Az8x2MfieyUEp1bpAGeggIOi9h/tmncZRBfzjA0lejA
	/oDYDlWO50IfNmP6VAgEnM/WZ+a1AlqweApDLln276uMNULX2dY4UeFSGwiCxzdI/6+ChYxybTY41
	Qc+AZco/p8W3Ao6lojiAt3ezYTYWiUNvQ74xggXqmGNfAoQon5QSN3JxcrMcJdIPXoqACg0LDrPBg
	NTbH2Rloll6Q30JKijDHFO1ypssl0Er20cxkqNIZepg/p3LHImqTSpVlpDuSjIrD2r4rbipSA5G1z
	W0410mWgSO6doA4G1ZrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUCr0-0005mS-Fr; Fri, 24 May 2019 16:15:34 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUCqt-0005m3-Hu
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 16:15:29 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 09:15:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,507,1549958400"; d="scan'208";a="177765957"
Received: from iweiny-desk2.sc.intel.com ([10.3.52.157])
 by fmsmga002.fm.intel.com with ESMTP; 24 May 2019 09:15:23 -0700
Date: Fri, 24 May 2019 09:16:19 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Nicolin Chen <nicoleotsuka@gmail.com>
Subject: Re: [PATCH v3 2/2] dma-contiguous: Use fallback alloc_pages for
 single pages
Message-ID: <20190524161618.GB23100@iweiny-DESK2.sc.intel.com>
References: <20190524040633.16854-1-nicoleotsuka@gmail.com>
 <20190524040633.16854-3-nicoleotsuka@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524040633.16854-3-nicoleotsuka@gmail.com>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_091527_638692_557AB803 
X-CRM114-Status: GOOD (  25.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: tony@atomide.com, catalin.marinas@arm.com, will.deacon@arm.com,
 jcmvbkbc@gmail.com, hch@lst.de, m.szyprowski@samsung.com, sfr@canb.auug.org.au,
 dann.frazier@canonical.com, joro@8bytes.org, linux@armlinux.org.uk,
 treding@nvidia.com, linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 akpm@linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 chris@zankel.net, wsa+renesas@sang-engineering.com, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 iamjoonsoo.kim@lge.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 09:06:33PM -0700, Nicolin Chen wrote:
> The addresses within a single page are always contiguous, so it's
> not so necessary to always allocate one single page from CMA area.
> Since the CMA area has a limited predefined size of space, it may
> run out of space in heavy use cases, where there might be quite a
> lot CMA pages being allocated for single pages.
> 
> However, there is also a concern that a device might care where a
> page comes from -- it might expect the page from CMA area and act
> differently if the page doesn't.

How does a device know, after this call, if a CMA area was used?  From the
patches I figured a device should not care.

> 
> This patch tries to use the fallback alloc_pages path, instead of
> one-page size allocations from the global CMA area in case that a
> device does not have its own CMA area. This'd save resources from
> the CMA global area for more CMA allocations, and also reduce CMA
> fragmentations resulted from trivial allocations.
> 
> Signed-off-by: Nicolin Chen <nicoleotsuka@gmail.com>
> ---
>  kernel/dma/contiguous.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
> index 21f39a6cb04f..6914b92d5c88 100644
> --- a/kernel/dma/contiguous.c
> +++ b/kernel/dma/contiguous.c
> @@ -223,14 +223,23 @@ bool dma_release_from_contiguous(struct device *dev, struct page *pages,
>   * This function allocates contiguous memory buffer for specified device. It
>   * first tries to use device specific contiguous memory area if available or
>   * the default global one, then tries a fallback allocation of normal pages.
> + *
> + * Note that it byapss one-page size of allocations from the global area as
> + * the addresses within one page are always contiguous, so there is no need
> + * to waste CMA pages for that kind; it also helps reduce fragmentations.
>   */
>  struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
>  {
>  	int node = dev ? dev_to_node(dev) : NUMA_NO_NODE;
>  	size_t count = PAGE_ALIGN(size) >> PAGE_SHIFT;
>  	size_t align = get_order(PAGE_ALIGN(size));
> -	struct cma *cma = dev_get_cma_area(dev);
>  	struct page *page = NULL;
> +	struct cma *cma = NULL;
> +
> +	if (dev && dev->cma_area)
> +		cma = dev->cma_area;
> +	else if (count > 1)
> +		cma = dma_contiguous_default_area;

Doesn't dev_get_dma_area() already do this?

Ira

>  
>  	/* CMA can be used only in the context which permits sleeping */
>  	if (cma && gfpflags_allow_blocking(gfp)) {
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
