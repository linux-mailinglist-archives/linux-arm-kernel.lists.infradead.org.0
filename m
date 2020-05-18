Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA281D6E9A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 03:27:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=glV9Yz66gIoOzps8L9jQTt5AQnNvHpQTiOqeWis5XHo=; b=upN8hA2qsAX5bm
	fmZuP61hdu8cglblFdrPCr0kn05Ij+86Y6eoCNSegGzWFxQK2y/Ci4twE00Fm2lzJ9ySPu0zSAShB
	XRFL+Vz09F5ZTFAi1i7d8AY3WdWcC86pFhYYxJveXApvT259FWHC+qJApWbfsa89Ei/6Iwr0RlYUh
	Pct7CY1Fg26H2L7XdxrWfI8w8gdfQX6JNh2Y/d602MOfeMLKI5LvKUGUrED/MflPK4UdQ4RgrFn0d
	JqXDLAEge9w/qmgmZ0kumXVQXCK0wQ5TIqbH9BOMrfohZ7JKnXPKxcKZB/zwH+dd0FDo9QQMbH/EN
	P51YPEySMcj3XMjyUFhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaUZ7-0000z5-3Q; Mon, 18 May 2020 01:27:37 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaUYx-0000yI-Lb
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 01:27:29 +0000
Received: by mail-wm1-x342.google.com with SMTP id u188so8449760wmu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 17 May 2020 18:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uZfH/yW2EkwOl9gEcet4jN7ZXi9BLKHqqQrfr1sC6ac=;
 b=vDcWgigWf+8ZKsquN2u4JqfQ8umHJX5fe46rUTGhJECREweESiSfWnUn0R+kFnVYzL
 Po+JjR2lydKpGPNuAuKUfwyrCt05L9FE2SiboNT/Di3jcIyohybAZ7DEy0Rfme5FXmov
 hLdWtACwrYRBlLG0QN8oUbUrydmDczxFu2izF8ScEASNprtdB5wc/pnUdJmba6hRwV9n
 aHCMGNU+KjzWjQTSpCRhc4bWnVvgd0rJg1YDnGNoSnyOoDtovxLu56C1biuKkr+dRjvW
 tJZ3MvsoObtcyH+Pvwi+VeXvwxYehRqFZ5a/TM/TAH2YVIfFH9U6+mtgTNk5l3SnaaaD
 oGZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uZfH/yW2EkwOl9gEcet4jN7ZXi9BLKHqqQrfr1sC6ac=;
 b=AtLxpFUgQ1gIsnUD05HWvo7d7Sxzi7DNP5aBvA5XQqGuYIMNyFn+vhOHZevg47GN3f
 V4eTpTm/kVnX9DW9K6Pa9XRprpozhN63O2DVY+H3KB98kthgAECeG8apXtgvUVvYRzYS
 RiH5Rh3tsvxZyYUa8GBPCY+u2439fO2fMPhtk9jc/8ErFOKJgIQpHzsvAt1R/KqJcqe8
 5TVFGDDMqmTgd6wb1sSD9VjYedqdvUCHa+d7oqTulhT+i5PpvzrohtamG3bJdRWKwQ/2
 YuqF51GK1fwoZX5b0vOW8BW1ok61aeZqARiuJQamUE3AYPcii2GM0Qb0IXAGHaNpLbvN
 rlxA==
X-Gm-Message-State: AOAM531jybKfV0zlkYqGfjP7TEhrG/syrilqn6jrbh0PLEn7UUBdUreX
 d1Mmsu2R3X7k0xpti5lBDu0qtvhyVsBJHVnsgC8=
X-Google-Smtp-Source: ABdhPJwYXjut1W+agJe7qHIAazerG/VY4Qh5rG0NKf6TSwEA+kmhHmC2ZVellCufA3F7oGA23ea+FfJqOJUfr5uzS0A=
X-Received: by 2002:a05:600c:2255:: with SMTP id
 a21mr17035637wmm.67.1589765242888; 
 Sun, 17 May 2020 18:27:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <CGME20200513133305eucas1p15187ed8fa1e4af181cafa5c65ddab4cd@eucas1p1.samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <20200513133245.6408-13-m.szyprowski@samsung.com>
In-Reply-To: <20200513133245.6408-13-m.szyprowski@samsung.com>
From: Qiang Yu <yuq825@gmail.com>
Date: Mon, 18 May 2020 09:27:11 +0800
Message-ID: <CAKGbVbsSPhQY5zEBGPQtyhLu38w=Hw73OQr6UiV_dHC46DescQ@mail.gmail.com>
Subject: Re: [PATCH v5 13/38] drm: lima: fix common struct sg_table related
 issues
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_182727_734771_5B67D0D3 
X-CRM114-Status: GOOD (  21.06  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yuq825[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [yuq825[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: lima@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Looks good for me, patch is:
Reviewed-by: Qiang Yu <yuq825@gmail.com>

Regards,
Qiang

On Wed, May 13, 2020 at 9:33 PM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
>
> The Documentation/DMA-API-HOWTO.txt states that the dma_map_sg() function
> returns the number of the created entries in the DMA address space.
> However the subsequent calls to the dma_sync_sg_for_{device,cpu}() and
> dma_unmap_sg must be called with the original number of the entries
> passed to the dma_map_sg().
>
> struct sg_table is a common structure used for describing a non-contiguous
> memory buffer, used commonly in the DRM and graphics subsystems. It
> consists of a scatterlist with memory pages and DMA addresses (sgl entry),
> as well as the number of scatterlist entries: CPU pages (orig_nents entry)
> and DMA mapped pages (nents entry).
>
> It turned out that it was a common mistake to misuse nents and orig_nents
> entries, calling DMA-mapping functions with a wrong number of entries or
> ignoring the number of mapped entries returned by the dma_map_sg()
> function.
>
> To avoid such issues, lets use a common dma-mapping wrappers operating
> directly on the struct sg_table objects and use scatterlist page
> iterators where possible. This, almost always, hides references to the
> nents and orig_nents entries, making the code robust, easier to follow
> and copy/paste safe.
>
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
> For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
> vs. orig_nents misuse' thread:
> https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
> ---
>  drivers/gpu/drm/lima/lima_gem.c | 11 ++++++++---
>  drivers/gpu/drm/lima/lima_vm.c  |  5 ++---
>  2 files changed, 10 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/lima/lima_gem.c b/drivers/gpu/drm/lima/lima_gem.c
> index 5404e0d..cda43f6 100644
> --- a/drivers/gpu/drm/lima/lima_gem.c
> +++ b/drivers/gpu/drm/lima/lima_gem.c
> @@ -69,8 +69,7 @@ int lima_heap_alloc(struct lima_bo *bo, struct lima_vm *vm)
>                 return ret;
>
>         if (bo->base.sgt) {
> -               dma_unmap_sg(dev, bo->base.sgt->sgl,
> -                            bo->base.sgt->nents, DMA_BIDIRECTIONAL);
> +               dma_unmap_sgtable(dev, bo->base.sgt, DMA_BIDIRECTIONAL, 0);
>                 sg_free_table(bo->base.sgt);
>         } else {
>                 bo->base.sgt = kmalloc(sizeof(*bo->base.sgt), GFP_KERNEL);
> @@ -80,7 +79,13 @@ int lima_heap_alloc(struct lima_bo *bo, struct lima_vm *vm)
>                 }
>         }
>
> -       dma_map_sg(dev, sgt.sgl, sgt.nents, DMA_BIDIRECTIONAL);
> +       ret = dma_map_sgtable(dev, &sgt, DMA_BIDIRECTIONAL, 0);
> +       if (ret) {
> +               sg_free_table(&sgt);
> +               kfree(bo->base.sgt);
> +               bo->base.sgt = NULL;
> +               return ret;
> +       }
>
>         *bo->base.sgt = sgt;
>
> diff --git a/drivers/gpu/drm/lima/lima_vm.c b/drivers/gpu/drm/lima/lima_vm.c
> index 5b92fb8..2b2739a 100644
> --- a/drivers/gpu/drm/lima/lima_vm.c
> +++ b/drivers/gpu/drm/lima/lima_vm.c
> @@ -124,7 +124,7 @@ int lima_vm_bo_add(struct lima_vm *vm, struct lima_bo *bo, bool create)
>         if (err)
>                 goto err_out1;
>
> -       for_each_sg_dma_page(bo->base.sgt->sgl, &sg_iter, bo->base.sgt->nents, 0) {
> +       for_each_sgtable_dma_page(bo->base.sgt, &sg_iter, 0) {
>                 err = lima_vm_map_page(vm, sg_page_iter_dma_address(&sg_iter),
>                                        bo_va->node.start + offset);
>                 if (err)
> @@ -298,8 +298,7 @@ int lima_vm_map_bo(struct lima_vm *vm, struct lima_bo *bo, int pageoff)
>         mutex_lock(&vm->lock);
>
>         base = bo_va->node.start + (pageoff << PAGE_SHIFT);
> -       for_each_sg_dma_page(bo->base.sgt->sgl, &sg_iter,
> -                            bo->base.sgt->nents, pageoff) {
> +       for_each_sgtable_dma_page(bo->base.sgt, &sg_iter, pageoff) {
>                 err = lima_vm_map_page(vm, sg_page_iter_dma_address(&sg_iter),
>                                        base + offset);
>                 if (err)
> --
> 1.9.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
