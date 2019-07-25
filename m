Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA59B75389
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QMIZO6NsIN+BoUqxqPDfaV2quO5Sfj04BYZz9tj6XHI=; b=V8QcbGv3mRL9pE
	kXO7gozVkwWZukRAg/HpiJKEj8RN7HV5To2njBVeIJvCd2vwqgQ2E2dlcJ4B1W/4yNhq0W+ymmrIH
	sP5eJ9hVmiuvy7ACHfcKy38crSgUMSuZAMYIKi4+bszkl3EBQLDV1cBQDfKIfiOVNg1/BQUJ40Qyt
	YJAl1bUGOkyd7SEVXcou54k4aj45ogdL8kSYQ2oVJsEpPtrjoRO8QFipoi7uUsqFtrP77v6Q44R9i
	V94c4dHf+NVAudgru2V9MOWs9yPnsY9UeHbXQeoSoHIkkFnnncS6SOtb1+mpw5SiASLCqqZaIOOkj
	Fw0hxxaXY3a/ZMsnehsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgGs-0004PU-Gf; Thu, 25 Jul 2019 16:07:10 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgGe-0004P2-0g
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:06:57 +0000
Received: by mail-vk1-xa42.google.com with SMTP id s16so10138891vke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 09:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j4i8w9Kr6s0PSmw7woZ7h8pKLb/pNRsFccRAOvuNOpk=;
 b=uzCFtgHlrcbsjdi9+t4cRoMJEPLPUy6CNPcdz+xpdwFEOhQsc9IVpHdNKiQjYpUEK9
 LNAa5fcYBaeGzt1M4KOvDDb1gTH1kXLX+S6+54oxu7dzVVbUvJUtPUVcvuBQ2LyBfHUU
 zXt4Jh+mvxYcnl98CiNNdhmg1jjlXX3ZXSuvZ2cd+RQYR0dgHVu1cvhoBsGQRCAguiGh
 Dwc/v3mECILcLvUAZ9EJPMzeE5dlYbm+MrKP2eQiaZesGCNNVxHeIIJxO+yP+543nnKv
 hn5GO2/w6tlJ9PiY7EK/zmKPVHmVtTLdR2eFn6iDiTdj8eS3PWHuchbCdnbiQrarxagJ
 JGtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j4i8w9Kr6s0PSmw7woZ7h8pKLb/pNRsFccRAOvuNOpk=;
 b=jB2imxNkuaoouBjm5ppHogEZsNdh+1Rzst1vH+W/sjDkrB61O/SkEqW98tEUzOIbKS
 6JJYtvygzwNC6W1+ux9qjAGetKgy1hmehpHiVUvURiYNEnL8tZxjGqmztgE5BirMdab7
 ihJMj3HPxtROiTz5NuoxLO6dXbTy6PqYQ1fK7sQEM3B7mJvqn4ldv1P+Gk3uPUYtmu6v
 8FP2QEtVcxGCPQOj0gMr3MUjrZBsYn9l3RfGXBDeOOSeUhhsO14jpWy1uaqW8oi0f5bI
 Ctpx4PAzIX502bHAd87/cnEqSP9mC1tAq3ImnD+ryMZCLFoZabtZw8/4F3nVqIMC737r
 OOVQ==
X-Gm-Message-State: APjAAAXu4DO8QbdO6Zu+FxzQfTT16hU2lr1HX2/EDqf2vxiBkbC7pzxw
 dmrjmygYgLxhMlszD1YbmDqZp04Iuzotd/1hHDo=
X-Google-Smtp-Source: APXvYqwgwDqpsWNLo+H70+5x1cZL09rHVbL+sr/g+NLtDIYDxR3O/b4ANbpuw1/A6zcLHbGh4mXHxwEJHhs2RFuZ3tU=
X-Received: by 2002:a1f:b0b:: with SMTP id 11mr34502286vkl.64.1564070813830;
 Thu, 25 Jul 2019 09:06:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190524040633.16854-1-nicoleotsuka@gmail.com>
 <20190524040633.16854-2-nicoleotsuka@gmail.com>
In-Reply-To: <20190524040633.16854-2-nicoleotsuka@gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 25 Jul 2019 13:06:42 -0300
Message-ID: <CAAEAJfA+edVLfZzEZe98249Y7NZQFht9185JH21pV10Bq9Wk3w@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dma-contiguous: Abstract dma_{alloc,
 free}_contiguous()
To: Nicolin Chen <nicoleotsuka@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_090656_136091_BC7AC163 
X-CRM114-Status: GOOD (  32.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dafna.hirschfeld@collabora.com, Tony Lindgren <tony@atomide.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 jcmvbkbc@gmail.com, hch@lst.de, Marek Szyprowski <m.szyprowski@samsung.com>,
 sfr@canb.auug.org.au, dann.frazier@canonical.com, joro@8bytes.org,
 Russell King <linux@armlinux.org.uk>, treding@nvidia.com,
 linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, chris@zankel.net,
 wsa+renesas@sang-engineering.com, robin.murphy@arm.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, iamjoonsoo.kim@lge.com,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I can't find a way to forward-redirect from Gmail, so I'm Ccing Dafna
who found a regression caused by this commit. Dafna, can you give all
the details, including the log and how you are reproducing it?


On Fri, 24 May 2019 at 01:08, Nicolin Chen <nicoleotsuka@gmail.com> wrote:
>
> Both dma_alloc_from_contiguous() and dma_release_from_contiguous()
> are very simply implemented, but requiring callers to pass certain
> parameters like count and align, and taking a boolean parameter to
> check __GFP_NOWARN in the allocation flags. So every function call
> duplicates similar work:
>   /* A piece of example */
>   unsigned long order = get_order(size);
>   size_t count = size >> PAGE_SHIFT;
>   page = dma_alloc_from_contiguous(dev, count, order, gfp & __GFP_NOWARN);
>   [...]
>   dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT);
>
> Additionally, as CMA can be used only in the context which permits
> sleeping, most of callers do a gfpflags_allow_blocking() check and
> a corresponding fallback allocation of normal pages upon any false
> result:
>   /* A piece of example */
>   if (gfpflags_allow_blocking(flag))
>       page = dma_alloc_from_contiguous();
>   if (!page)
>       page = alloc_pages();
>   [...]
>   if (!dma_release_from_contiguous(dev, page, count))
>       __free_pages(page, get_order(size));
>
> So this patch simplifies those function calls by abstracting these
> operations into the two new functions: dma_{alloc,free}_contiguous.
>
> As some callers of dma_{alloc,release}_from_contiguous() might be
> complicated, this patch just implements these two new functions to
> kernel/dma/direct.c only as an initial step.
>
> Suggested-by: Christoph Hellwig <hch@lst.de>
> Signed-off-by: Nicolin Chen <nicoleotsuka@gmail.com>
> ---
> Changelog
> v2->v3:
>  * Added missing "static inline" in header file to fix build error.
> v1->v2:
>  * Added new functions beside the old ones so we can replace callers
>    one by one later.
>  * Applied new functions to dma/direct.c only, because it's the best
>    example caller to apply and should be safe with the new functions.
>
>  include/linux/dma-contiguous.h | 11 ++++++++
>  kernel/dma/contiguous.c        | 48 ++++++++++++++++++++++++++++++++++
>  kernel/dma/direct.c            | 24 +++--------------
>  3 files changed, 63 insertions(+), 20 deletions(-)
>
> diff --git a/include/linux/dma-contiguous.h b/include/linux/dma-contiguous.h
> index f247e8aa5e3d..00a370c1c140 100644
> --- a/include/linux/dma-contiguous.h
> +++ b/include/linux/dma-contiguous.h
> @@ -115,6 +115,8 @@ struct page *dma_alloc_from_contiguous(struct device *dev, size_t count,
>                                        unsigned int order, bool no_warn);
>  bool dma_release_from_contiguous(struct device *dev, struct page *pages,
>                                  int count);
> +struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp);
> +void dma_free_contiguous(struct device *dev, struct page *page, size_t size);
>
>  #else
>
> @@ -157,6 +159,15 @@ bool dma_release_from_contiguous(struct device *dev, struct page *pages,
>         return false;
>  }
>
> +static inline
> +struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
> +{
> +       return NULL;
> +}
> +
> +static inline
> +void dma_free_contiguous(struct device *dev, struct page *page, size_t size) { }
> +
>  #endif
>
>  #endif
> diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
> index b2a87905846d..21f39a6cb04f 100644
> --- a/kernel/dma/contiguous.c
> +++ b/kernel/dma/contiguous.c
> @@ -214,6 +214,54 @@ bool dma_release_from_contiguous(struct device *dev, struct page *pages,
>         return cma_release(dev_get_cma_area(dev), pages, count);
>  }
>
> +/**
> + * dma_alloc_contiguous() - allocate contiguous pages
> + * @dev:   Pointer to device for which the allocation is performed.
> + * @size:  Requested allocation size.
> + * @gfp:   Allocation flags.
> + *
> + * This function allocates contiguous memory buffer for specified device. It
> + * first tries to use device specific contiguous memory area if available or
> + * the default global one, then tries a fallback allocation of normal pages.
> + */
> +struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
> +{
> +       int node = dev ? dev_to_node(dev) : NUMA_NO_NODE;
> +       size_t count = PAGE_ALIGN(size) >> PAGE_SHIFT;
> +       size_t align = get_order(PAGE_ALIGN(size));
> +       struct cma *cma = dev_get_cma_area(dev);
> +       struct page *page = NULL;
> +
> +       /* CMA can be used only in the context which permits sleeping */
> +       if (cma && gfpflags_allow_blocking(gfp)) {
> +               align = min_t(size_t, align, CONFIG_CMA_ALIGNMENT);
> +               page = cma_alloc(cma, count, align, gfp & __GFP_NOWARN);
> +       }
> +
> +       /* Fallback allocation of normal pages */
> +       if (!page)
> +               page = alloc_pages_node(node, gfp, align);
> +
> +       return page;
> +}
> +
> +/**
> + * dma_free_contiguous() - release allocated pages
> + * @dev:   Pointer to device for which the pages were allocated.
> + * @page:  Pointer to the allocated pages.
> + * @size:  Size of allocated pages.
> + *
> + * This function releases memory allocated by dma_alloc_contiguous(). As the
> + * cma_release returns false when provided pages do not belong to contiguous
> + * area and true otherwise, this function then does a fallback __free_pages()
> + * upon a false-return.
> + */
> +void dma_free_contiguous(struct device *dev, struct page *page, size_t size)
> +{
> +       if (!cma_release(dev_get_cma_area(dev), page, size >> PAGE_SHIFT))
> +               __free_pages(page, get_order(size));
> +}
> +
>  /*
>   * Support for reserved memory regions defined in device tree
>   */
> diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
> index 2c2772e9702a..0816c1e8b05a 100644
> --- a/kernel/dma/direct.c
> +++ b/kernel/dma/direct.c
> @@ -96,8 +96,6 @@ static bool dma_coherent_ok(struct device *dev, phys_addr_t phys, size_t size)
>  struct page *__dma_direct_alloc_pages(struct device *dev, size_t size,
>                 dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
>  {
> -       unsigned int count = PAGE_ALIGN(size) >> PAGE_SHIFT;
> -       int page_order = get_order(size);
>         struct page *page = NULL;
>         u64 phys_mask;
>
> @@ -109,20 +107,9 @@ struct page *__dma_direct_alloc_pages(struct device *dev, size_t size,
>         gfp |= __dma_direct_optimal_gfp_mask(dev, dev->coherent_dma_mask,
>                         &phys_mask);
>  again:
> -       /* CMA can be used only in the context which permits sleeping */
> -       if (gfpflags_allow_blocking(gfp)) {
> -               page = dma_alloc_from_contiguous(dev, count, page_order,
> -                                                gfp & __GFP_NOWARN);
> -               if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
> -                       dma_release_from_contiguous(dev, page, count);
> -                       page = NULL;
> -               }
> -       }
> -       if (!page)
> -               page = alloc_pages_node(dev_to_node(dev), gfp, page_order);
> -
> +       page = dma_alloc_contiguous(dev, size, gfp);
>         if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
> -               __free_pages(page, page_order);
> +               dma_free_contiguous(dev, page, size);
>                 page = NULL;
>
>                 if (IS_ENABLED(CONFIG_ZONE_DMA32) &&
> @@ -154,7 +141,7 @@ void *dma_direct_alloc_pages(struct device *dev, size_t size,
>         if (PageHighMem(page)) {
>                 /*
>                  * Depending on the cma= arguments and per-arch setup
> -                * dma_alloc_from_contiguous could return highmem pages.
> +                * dma_alloc_contiguous could return highmem pages.
>                  * Without remapping there is no way to return them here,
>                  * so log an error and fail.
>                  */
> @@ -176,10 +163,7 @@ void *dma_direct_alloc_pages(struct device *dev, size_t size,
>
>  void __dma_direct_free_pages(struct device *dev, size_t size, struct page *page)
>  {
> -       unsigned int count = PAGE_ALIGN(size) >> PAGE_SHIFT;
> -
> -       if (!dma_release_from_contiguous(dev, page, count))
> -               __free_pages(page, get_order(size));
> +       dma_free_contiguous(dev, page, size);
>  }
>
>  void dma_direct_free_pages(struct device *dev, size_t size, void *cpu_addr,
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
