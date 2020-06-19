Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3391200C3C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 16:45:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0548ZC4kzMCmoRGS8msZMD2m79eLJMWNmJ/B8d2el5o=; b=aZOnldoR8uidFQ
	6WD8hiILW+KWfPVzpBMejGaq557vbMxM2JSq2OkQBBRcJhXPKe467E91VeruqtMzJCms1q2etp1Aq
	Y9c+coumfvqM6MmVHX8WpcqJCwmIrSnH1rH1Bp9HR03k8Ls8ucwmgUTx5DEPcfu0/9N993erK2cip
	H4eGJyX+8geDsoP1yQgYqcT76h/wfiuxNcciUYpPFr4CAwdPSu19oTXp8H45lC++hHIufvIg/ZVrp
	9Qqc072kkyaQnZqazVhUglZdVsBaT2IjkUo6l6MnHXnAe87qIaBG0XViNYADovsm8FWJKLlPv+1ZJ
	BKNftBPDYPi4Qj0/J2Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmIGc-0008Ss-Md; Fri, 19 Jun 2020 14:45:18 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmIGQ-0007JU-Fs
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 14:45:08 +0000
Received: by mail-ed1-x541.google.com with SMTP id x25so7798657edr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 07:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n3TBE7tx6S7GnpZVCrwlr/3N+oOzUPGbvusmUOmG/T0=;
 b=AxLuXevQ37Qe6irR4ELS8KP+FbtI7KzXJI7NPPBrQFIdiz2bPyjW2dwsDyUEuAZ6Gj
 obAXbSqGvGp46HL1svoQ4ohhMLjIhlffXnHZ/rd6JE333aLAHAfe6p6IEAkDpMyo0pXz
 3gqCLLWBaQXFA+AKx51giDtpvGcOTXpNZQBkXRmjuL5/eK+mv5WjFpQ7EHYykN0iQqJQ
 5tiAnbC+hsmw05IcJKVRoieT8Q91BROe1dS0b8nEaqn6ub+ly4za5VRH9v4PT/EhZQS7
 GynsqTBgTG8dn/wZF0n7EHmYWJlx404GKADvC7euqmHvIFUdOyYzOlOpc7sXgaE5Mzfs
 JnlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n3TBE7tx6S7GnpZVCrwlr/3N+oOzUPGbvusmUOmG/T0=;
 b=NfI++Ztd9knj8x5xj4RK92ovMBlqOCIpP7Dbe/IaLZfi4kxyNxs2XReipBbW55yobl
 nSVv1IW6fcAnZnXL6la/jFcsJjmmm0b6d162AfL3T/Y9rZBD4O8NSDRr0dgLcnrEziRY
 7QW4k5DmnCXgwBm/E2YpD083fpJuTY8CtBMoBmCi/BqvvF+7g/6K4ohLoI5ItfcDZ5vd
 1pLvpRfbD2KX+/QLZXSYIe36r6H6P5PDhX3DBnm4NUYRTortWEx3dvA4T7EXpb/Fq+q+
 ZOhsbMUNjIiLkj3cgxOJ7NBlFOq7wmJgD3n0rM6V2yuInyeLD9j0iEmsMyHZssAIjrAx
 jZCQ==
X-Gm-Message-State: AOAM531nqGF18rfoANGz+3tKBvqPGJneFaJx1eS1m40k6GdDsHQuDovv
 kPbq+/ncikzkIfkuCyNxHd0YCTCPYab0tiOUTx4=
X-Google-Smtp-Source: ABdhPJyrHWOsI7xCVBWiV5yZaFNfurId9widfkp7/AgosrKLWEbgVSdn17jhr9iXO5CndhUq8INILlVyez+GNc7k8GQ=
X-Received: by 2002:aa7:da14:: with SMTP id r20mr3712651eds.7.1592577904398;
 Fri, 19 Jun 2020 07:45:04 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200619103702eucas1p1c57147013bbac3968f6ba073caec68b5@eucas1p1.samsung.com>
 <20200619103636.11974-1-m.szyprowski@samsung.com>
 <20200619103636.11974-14-m.szyprowski@samsung.com>
In-Reply-To: <20200619103636.11974-14-m.szyprowski@samsung.com>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 19 Jun 2020 07:45:32 -0700
Message-ID: <CAF6AEGv9We+wD72_px3mucsXQuTFZ3ZX_CAA1LTysMBdiDcEFw@mail.gmail.com>
Subject: Re: [PATCH v7 13/36] drm: msm: fix common struct sg_table related
 issues
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_074506_591662_FC6A8D6F 
X-CRM114-Status: GOOD (  22.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robdclark[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: freedreno <freedreno@lists.freedesktop.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sean Paul <sean@poorly.run>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 19, 2020 at 3:37 AM Marek Szyprowski
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

Acked-by: Rob Clark <robdclark@gmail.com>

(let me know if you want me to take this one in via msm-next or if the
plan is to take the series via drm-misc)


> ---
>  drivers/gpu/drm/msm/msm_gem.c    | 13 +++++--------
>  drivers/gpu/drm/msm/msm_gpummu.c | 14 ++++++--------
>  drivers/gpu/drm/msm/msm_iommu.c  |  2 +-
>  3 files changed, 12 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/msm/msm_gem.c b/drivers/gpu/drm/msm/msm_gem.c
> index 38b0c0e1f83e..e0d5fd36ea8f 100644
> --- a/drivers/gpu/drm/msm/msm_gem.c
> +++ b/drivers/gpu/drm/msm/msm_gem.c
> @@ -53,11 +53,10 @@ static void sync_for_device(struct msm_gem_object *msm_obj)
>         struct device *dev = msm_obj->base.dev->dev;
>
>         if (get_dma_ops(dev) && IS_ENABLED(CONFIG_ARM64)) {
> -               dma_sync_sg_for_device(dev, msm_obj->sgt->sgl,
> -                       msm_obj->sgt->nents, DMA_BIDIRECTIONAL);
> +               dma_sync_sgtable_for_device(dev, msm_obj->sgt,
> +                                           DMA_BIDIRECTIONAL);
>         } else {
> -               dma_map_sg(dev, msm_obj->sgt->sgl,
> -                       msm_obj->sgt->nents, DMA_BIDIRECTIONAL);
> +               dma_map_sgtable(dev, msm_obj->sgt, DMA_BIDIRECTIONAL, 0);
>         }
>  }
>
> @@ -66,11 +65,9 @@ static void sync_for_cpu(struct msm_gem_object *msm_obj)
>         struct device *dev = msm_obj->base.dev->dev;
>
>         if (get_dma_ops(dev) && IS_ENABLED(CONFIG_ARM64)) {
> -               dma_sync_sg_for_cpu(dev, msm_obj->sgt->sgl,
> -                       msm_obj->sgt->nents, DMA_BIDIRECTIONAL);
> +               dma_sync_sgtable_for_cpu(dev, msm_obj->sgt, DMA_BIDIRECTIONAL);
>         } else {
> -               dma_unmap_sg(dev, msm_obj->sgt->sgl,
> -                       msm_obj->sgt->nents, DMA_BIDIRECTIONAL);
> +               dma_unmap_sgtable(dev, msm_obj->sgt, DMA_BIDIRECTIONAL, 0);
>         }
>  }
>
> diff --git a/drivers/gpu/drm/msm/msm_gpummu.c b/drivers/gpu/drm/msm/msm_gpummu.c
> index 310a31b05faa..319f06c28235 100644
> --- a/drivers/gpu/drm/msm/msm_gpummu.c
> +++ b/drivers/gpu/drm/msm/msm_gpummu.c
> @@ -30,21 +30,19 @@ static int msm_gpummu_map(struct msm_mmu *mmu, uint64_t iova,
>  {
>         struct msm_gpummu *gpummu = to_msm_gpummu(mmu);
>         unsigned idx = (iova - GPUMMU_VA_START) / GPUMMU_PAGE_SIZE;
> -       struct scatterlist *sg;
> +       struct sg_dma_page_iter dma_iter;
>         unsigned prot_bits = 0;
> -       unsigned i, j;
>
>         if (prot & IOMMU_WRITE)
>                 prot_bits |= 1;
>         if (prot & IOMMU_READ)
>                 prot_bits |= 2;
>
> -       for_each_sg(sgt->sgl, sg, sgt->nents, i) {
> -               dma_addr_t addr = sg->dma_address;
> -               for (j = 0; j < sg->length / GPUMMU_PAGE_SIZE; j++, idx++) {
> -                       gpummu->table[idx] = addr | prot_bits;
> -                       addr += GPUMMU_PAGE_SIZE;
> -               }
> +       for_each_sgtable_dma_page(sgt, &dma_iter, 0) {
> +               dma_addr_t addr = sg_page_iter_dma_address(&dma_iter);
> +
> +               BUILD_BUG_ON(GPUMMU_PAGE_SIZE != PAGE_SIZE);
> +               gpummu->table[idx++] = addr | prot_bits;
>         }
>
>         /* we can improve by deferring flush for multiple map() */
> diff --git a/drivers/gpu/drm/msm/msm_iommu.c b/drivers/gpu/drm/msm/msm_iommu.c
> index 3a381a9674c9..6c31e65834c6 100644
> --- a/drivers/gpu/drm/msm/msm_iommu.c
> +++ b/drivers/gpu/drm/msm/msm_iommu.c
> @@ -36,7 +36,7 @@ static int msm_iommu_map(struct msm_mmu *mmu, uint64_t iova,
>         struct msm_iommu *iommu = to_msm_iommu(mmu);
>         size_t ret;
>
> -       ret = iommu_map_sg(iommu->domain, iova, sgt->sgl, sgt->nents, prot);
> +       ret = iommu_map_sgtable(iommu->domain, iova, sgt, prot);
>         WARN_ON(!ret);
>
>         return (ret == len) ? 0 : -EINVAL;
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
