Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C165328EE8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 03:52:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WvajV0EKWNgqX5Ckv/rJancsapec9A1Uhxtmf4wCzZE=; b=aY6iyQXI6ClXxB
	vh62ARxaiWcOFHkHsAVz2gzy36AoXf/Vs5Oq0VebBonYnTmL1ArUxgBI1c2XZjcgKht5davVr0ljm
	e78r7t0pVDq6JqgN6f5Z1QFqndW4Z3LnB37kcfSLUowPVZgmPdKs9IJU2gfr6xkaqMKW5LOnxvhHI
	7QeJ/vFVP1ktwi0+l6u2AGdZkE5hTEOKQqI+fkg6EuiIo47DZndItTV3+wguR3/nd5Mtqcm0eJxw3
	sUJbO3ko0IdOK/p04htHaMicoQ8G/qXL/jcH3yD+Xf2cxIXepZhQ5lfKDK3BJDmIiVXDsQQ5drmAG
	k2F7nnFw2FsugggRd9LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTzNx-0000r9-SS; Fri, 24 May 2019 01:52:41 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTzNp-0000qg-BC
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 01:52:35 +0000
Received: from mail-ot1-f72.google.com ([209.85.210.72])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <dann.frazier@canonical.com>)
 id 1hTzNk-0007DA-DZ
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 01:52:28 +0000
Received: by mail-ot1-f72.google.com with SMTP id 73so3764837oty.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 18:52:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fcmxKph3pCyexBJoShQkjYQnPHoxtN7FjobnykSc7YU=;
 b=LHX8OBUPKvWrWGURNpxZyF8bI6wL9iecgRjrDJZkagkczqtK9JGCNsNQWubkLo+0jN
 br58BSgd0OAMv4wpOYgZ39KrRQyWNia1r+EFEtfzhRAAPRyAHrVghSoi5g0VMibBEyQi
 rqHrbwQSzdAgDAFnxlDbBCmv22Zmg82xistowFo3iCmZkGrkR9pQa2cp8Llhp0ARymcc
 agmqZP8Ikg6qWlijgk3MBl1V9QOQSvTHNEM3JJ4HFi2bq4f0bWkcZ6r3r8q2Mzcaq3kU
 gXowlwW9R+SQH4WnOrTSH1MtjP9+cAo3UFxRDyCZXJ66/qx8puCX99cyFnqHtTe8FuXC
 YwXw==
X-Gm-Message-State: APjAAAXeZB8IOpZVzJ9K4FINXbGKedLqZMq3rq7CXkPlpvByTqZhtTEp
 Txq4L+TLMbGAlfkDNWPKdeeYC3ePwpJ/HWmWg4zIbM99WPpD0TwMI+3I0MysN3nmqYHYViAdZqI
 OVB3RBKOuGFlxbXO4iXYrMjv2PXhZv+eL556Tm+qluPgItXa/0FDTN79a8WGTKwlDYRqh
X-Received: by 2002:aca:4457:: with SMTP id r84mr4757186oia.42.1558662745686; 
 Thu, 23 May 2019 18:52:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwcLCDnLkLOViDE8qq4ESbj78foR+joXpI4y59sgFXOXOpy5hw/O2ShIZleoto5LLcrDCmROFuyBhYfkqe1GEc=
X-Received: by 2002:aca:4457:: with SMTP id r84mr4757159oia.42.1558662745338; 
 Thu, 23 May 2019 18:52:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190506223334.1834-1-nicoleotsuka@gmail.com>
 <20190506223334.1834-2-nicoleotsuka@gmail.com>
In-Reply-To: <20190506223334.1834-2-nicoleotsuka@gmail.com>
From: dann frazier <dann.frazier@canonical.com>
Date: Thu, 23 May 2019 19:52:14 -0600
Message-ID: <CALdTtnurdNe4+oJjSJfWw1ONf8-xvJ8KhonQkJNj+4LDZT7jAQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dma-contiguous: Abstract dma_{alloc,
 free}_contiguous()
To: Nicolin Chen <nicoleotsuka@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_185233_767622_3405B21D 
X-CRM114-Status: GOOD (  32.13  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: chris@zankel.net, keescook@chromium.org, linux-xtensa@linux-xtensa.org,
 tony@atomide.com, Catalin Marinas <catalin.marinas@arm.com>, joro@8bytes.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, jcmvbkbc@gmail.com,
 iommu@lists.linux-foundation.org, dwmw2@infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 wsa+renesas@sang-engineering.com, sfr@canb.auug.org.au,
 akpm@linux-foundation.org, treding@nvidia.com,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 iamjoonsoo.kim@lge.com, Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 6, 2019 at 4:35 PM Nicolin Chen <nicoleotsuka@gmail.com> wrote:
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
> v1->v2:
>  * Added new functions beside the old ones so we can replace callers
>    one by one later.
>  * Applied new functions to dma/direct.c only, because it's the best
>    example caller to apply and should be safe with the new functions.
>
>  include/linux/dma-contiguous.h | 10 +++++++
>  kernel/dma/contiguous.c        | 48 ++++++++++++++++++++++++++++++++++
>  kernel/dma/direct.c            | 24 +++--------------
>  3 files changed, 62 insertions(+), 20 deletions(-)
>
> diff --git a/include/linux/dma-contiguous.h b/include/linux/dma-contiguous.h
> index f247e8aa5e3d..dacbdcb91a89 100644
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
> @@ -157,6 +159,14 @@ bool dma_release_from_contiguous(struct device *dev, struct page *pages,
>         return false;
>  }
>
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

This breaks the build for me if CONFIG_DMA_CMA=n:

  LD [M]  fs/9p/9p.o
ld: fs/9p/vfs_inode.o: in function `dma_alloc_contiguous':
vfs_inode.c:(.text+0xa60): multiple definition of
`dma_alloc_contiguous'; fs/9p/vfs_super.o:vfs_super.c:(.text+0x500):
first defined here

Do the following insertions need to be under an #ifdef CONFIG_DMA_CMA ?

  -dann

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
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
