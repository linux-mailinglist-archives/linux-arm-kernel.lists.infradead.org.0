Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2791117712
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 21:12:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rntdYKrEORTfomcI3FTXaj32T9ihf9x8MkwL87WT8d8=; b=naVCteNIZu20k+
	8tmgCaEc1o+uSJ9a/nX3yyHmR5ZwQ848jSU9eTR7Ry+GL0UwBb1T3wYM0+1keMD0bYI+wEp7UQbTV
	mRoSEwiIrM1+Kkm2MojPy/xxWZuqrX58Uw2sDqNhsHpz8g3u+qtALByw218k6dphVQLXTn+IP7Mv5
	lrekj5GTE4MlGJ+175XDGXqvGc5RxTvaGbp/I0QGvfm2iWDe06MIFsmHbTULgbIIa5unSduubo0P9
	KWSs6ygpvJKUlKVJVbNBVf0AnFY0S4iM8tYgqHcof2U76uAiXKUNfwzHFb2Hz96Z3VgDpiReCxvJG
	qMK3QNkHpJuMOfR9jPDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePNt-0000bM-W2; Mon, 09 Dec 2019 20:11:57 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePNk-0000Zc-Rd
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 20:11:50 +0000
Received: by mail-ed1-x544.google.com with SMTP id cm12so13812765edb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 12:11:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wZ2HOTqwIQ1NAAnGyBsMzZ3ZgaYWTk44q8tb0yDSItU=;
 b=KStCE1zdCoPav3I7cdyQFhCBV5DOWW+tMPDgsnz0bHDBXlJFk+/oAeNNpktiM8ai8G
 +M2zh2KIUP/+eZwy+eNkkDv9L1DWkeUjn0245DOKZUhvUODAC8Yv01KnChdek69IURzH
 /yRnR4O5MnoSHA17qiPKeNo7YKRdqrX10tlkTXtj9vQ29MY/lk54fV4dzhOsj4il2y4P
 0RL43Y+f1RkX8tht0uasZFTCbCh4No/u9+1uZOh/OJilWcq60HWKAR6yOXmLQPwBspGm
 RzxDrBDtK+nwWOI5mlbTWVmcnFJEtYJzzLrshrmR/HPX0gIP8t4y0xP5XJUZGMJUO/uN
 n8ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wZ2HOTqwIQ1NAAnGyBsMzZ3ZgaYWTk44q8tb0yDSItU=;
 b=r2Vzon7g5TGl4NacCdzyM/QZkLPWqOVjZcm+qKtzM1gs2kRunINCqBBHp05LzNhAp2
 UnJ239vSpPDx10Zx1LRTZukWE/fGKQYhZUz/MGFzG4qcuBtA4RK4QrMYIicA/2P75wwf
 ys/XB0FR6okcZvgLTJstuOI4FA5c+uc3ngOoqj3xoZwmwg7rKqTLKVE9u68P1P3Tuzh/
 3+tpn21Q9gju1DH5D1eJGwRVdmS+SPPFT6eu0jDG+8JElJLiUchZFv6Q7mKb4oyxW6oP
 QUUv0Ctonhc4p9ThBvypLTN+221f450ijXogooPqQ5RP0re6ubq1dymzQ1rEqQNBsq4v
 QLdQ==
X-Gm-Message-State: APjAAAVgUYCOHMYTnseRhJzxxzn7J+rJFYlNPveGPNdCPXxD8Xdoso7/
 W5thKBaFJjKcEeNjEl0eTMbRYqMdm8GKnQcAeq0=
X-Google-Smtp-Source: APXvYqxNLhd1U+YLI5W6r0mL/L/+plGCkZf16NdFCgs7JirzvWpkN6MvND4INCC+rb/8RpnVv3kc/vAkMgSl4wSOWkE=
X-Received: by 2002:a50:fc85:: with SMTP id f5mr34613985edq.294.1575922304961; 
 Mon, 09 Dec 2019 12:11:44 -0800 (PST)
MIME-Version: 1.0
References: <1574465484-7115-1-git-send-email-jcrouse@codeaurora.org>
 <0101016e95754002-c2fa43aa-b14b-4cff-b6f9-a67c96661e26-000000@us-west-2.amazonses.com>
In-Reply-To: <0101016e95754002-c2fa43aa-b14b-4cff-b6f9-a67c96661e26-000000@us-west-2.amazonses.com>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 9 Dec 2019 12:11:35 -0800
Message-ID: <CAF6AEGuAjSyMTqCauO2i6wQDEq1Q1baNMisCr=WZi3WHeyzxmw@mail.gmail.com>
Subject: Re: [PATCH v2 5/8] drm/msm: Attach the IOMMU device during
 initialization
To: Jordan Crouse <jcrouse@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_121148_934660_63499380 
X-CRM114-Status: GOOD (  24.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sean Paul <sean@poorly.run>, freedreno <freedreno@lists.freedesktop.org>,
 Jonathan Marek <jonathan@marek.ca>, Sam Ravnborg <sam@ravnborg.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, David Airlie <airlied@linux.ie>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Georgi Djakov <georgi.djakov@linaro.org>, Bruce Wang <bzwang@chromium.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Mamta Shukla <mamtashukla555@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Drew Davenport <ddavenport@chromium.org>,
 Jeykumar Sankaran <jsanka@codeaurora.org>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 3:32 PM Jordan Crouse <jcrouse@codeaurora.org> wrote:
>
> Everywhere an IOMMU object is created by msm_gpu_create_address_space
> the IOMMU device is attached immediately after. Instead of carrying around
> the infrastructure to do the attach from the device specific code do it
> directly in the msm_iommu_init() function. This gets it out of the way for
> more aggressive cleanups that follow.
>
> Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>

Hmm, yeah, now that we dropped the extra mmu->attach() args (which was
some ancient downstream compat thing), we don't need the separate
attach step.  I suppose we probably should do a similar cleanup for
mmu->detach(), but I guess that can be it's own patch

Reviewed-by: Rob Clark <robdclark@gmail.com>


> ---
>
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c  |  8 --------
>  drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c |  4 ----
>  drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c |  7 -------
>  drivers/gpu/drm/msm/msm_gem_vma.c        | 23 +++++++++++++++++++----
>  drivers/gpu/drm/msm/msm_gpu.c            | 11 +----------
>  drivers/gpu/drm/msm/msm_gpummu.c         |  6 ------
>  drivers/gpu/drm/msm/msm_iommu.c          | 15 +++++++--------
>  drivers/gpu/drm/msm/msm_mmu.h            |  1 -
>  8 files changed, 27 insertions(+), 48 deletions(-)
>
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> index 6c92f0f..b082b23 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> @@ -704,7 +704,6 @@ static int _dpu_kms_mmu_init(struct dpu_kms *dpu_kms)
>  {
>         struct iommu_domain *domain;
>         struct msm_gem_address_space *aspace;
> -       int ret;
>
>         domain = iommu_domain_alloc(&platform_bus_type);
>         if (!domain)
> @@ -720,13 +719,6 @@ static int _dpu_kms_mmu_init(struct dpu_kms *dpu_kms)
>                 return PTR_ERR(aspace);
>         }
>
> -       ret = aspace->mmu->funcs->attach(aspace->mmu);
> -       if (ret) {
> -               DPU_ERROR("failed to attach iommu %d\n", ret);
> -               msm_gem_address_space_put(aspace);
> -               return ret;
> -       }
> -
>         dpu_kms->base.aspace = aspace;
>         return 0;
>  }
> diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c b/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c
> index dda0543..9dba37c 100644
> --- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c
> +++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c
> @@ -518,10 +518,6 @@ struct msm_kms *mdp4_kms_init(struct drm_device *dev)
>                 }
>
>                 kms->aspace = aspace;
> -
> -               ret = aspace->mmu->funcs->attach(aspace->mmu);
> -               if (ret)
> -                       goto fail;
>         } else {
>                 DRM_DEV_INFO(dev->dev, "no iommu, fallback to phys "
>                                 "contig buffers for scanout\n");
> diff --git a/drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c b/drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c
> index e43ecd4..653dab2 100644
> --- a/drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c
> +++ b/drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c
> @@ -736,13 +736,6 @@ struct msm_kms *mdp5_kms_init(struct drm_device *dev)
>                 }
>
>                 kms->aspace = aspace;
> -
> -               ret = aspace->mmu->funcs->attach(aspace->mmu);
> -               if (ret) {
> -                       DRM_DEV_ERROR(&pdev->dev, "failed to attach iommu: %d\n",
> -                               ret);
> -                       goto fail;
> -               }
>         } else {
>                 DRM_DEV_INFO(&pdev->dev,
>                          "no iommu, fallback to phys contig buffers for scanout\n");
> diff --git a/drivers/gpu/drm/msm/msm_gem_vma.c b/drivers/gpu/drm/msm/msm_gem_vma.c
> index 1af5354..91d993a 100644
> --- a/drivers/gpu/drm/msm/msm_gem_vma.c
> +++ b/drivers/gpu/drm/msm/msm_gem_vma.c
> @@ -131,8 +131,8 @@ msm_gem_address_space_create(struct device *dev, struct iommu_domain *domain,
>                 const char *name)
>  {
>         struct msm_gem_address_space *aspace;
> -       u64 size = domain->geometry.aperture_end -
> -               domain->geometry.aperture_start;
> +       u64 start = domain->geometry.aperture_start;
> +       u64 size = domain->geometry.aperture_end - start;
>
>         aspace = kzalloc(sizeof(*aspace), GFP_KERNEL);
>         if (!aspace)
> @@ -141,9 +141,18 @@ msm_gem_address_space_create(struct device *dev, struct iommu_domain *domain,
>         spin_lock_init(&aspace->lock);
>         aspace->name = name;
>         aspace->mmu = msm_iommu_new(dev, domain);
> +       if (IS_ERR(aspace->mmu)) {
> +               int ret = PTR_ERR(aspace->mmu);
>
> -       drm_mm_init(&aspace->mm, (domain->geometry.aperture_start >> PAGE_SHIFT),
> -               size >> PAGE_SHIFT);
> +               kfree(aspace);
> +               return ERR_PTR(ret);
> +       }
> +
> +       /*
> +        * Attaching the IOMMU device changes the aperture values so use the
> +        * cached values instead
> +        */
> +       drm_mm_init(&aspace->mm, start >> PAGE_SHIFT, size >> PAGE_SHIFT);
>
>         kref_init(&aspace->kref);
>
> @@ -164,6 +173,12 @@ msm_gem_address_space_create_a2xx(struct device *dev, struct msm_gpu *gpu,
>         spin_lock_init(&aspace->lock);
>         aspace->name = name;
>         aspace->mmu = msm_gpummu_new(dev, gpu);
> +       if (IS_ERR(aspace->mmu)) {
> +               int ret = PTR_ERR(aspace->mmu);
> +
> +               kfree(aspace);
> +               return ERR_PTR(ret);
> +       }
>
>         drm_mm_init(&aspace->mm, (va_start >> PAGE_SHIFT),
>                 size >> PAGE_SHIFT);
> diff --git a/drivers/gpu/drm/msm/msm_gpu.c b/drivers/gpu/drm/msm/msm_gpu.c
> index 18f3a5c..f7bf80e 100644
> --- a/drivers/gpu/drm/msm/msm_gpu.c
> +++ b/drivers/gpu/drm/msm/msm_gpu.c
> @@ -808,7 +808,6 @@ msm_gpu_create_address_space(struct msm_gpu *gpu, struct platform_device *pdev,
>                 uint64_t va_start, uint64_t va_end)
>  {
>         struct msm_gem_address_space *aspace;
> -       int ret;
>
>         /*
>          * Setup IOMMU.. eventually we will (I think) do this once per context
> @@ -833,17 +832,9 @@ msm_gpu_create_address_space(struct msm_gpu *gpu, struct platform_device *pdev,
>                         va_start, va_end);
>         }
>
> -       if (IS_ERR(aspace)) {
> +       if (IS_ERR(aspace))
>                 DRM_DEV_ERROR(gpu->dev->dev, "failed to init mmu: %ld\n",
>                         PTR_ERR(aspace));
> -               return ERR_CAST(aspace);
> -       }
> -
> -       ret = aspace->mmu->funcs->attach(aspace->mmu);
> -       if (ret) {
> -               msm_gem_address_space_put(aspace);
> -               return ERR_PTR(ret);
> -       }
>
>         return aspace;
>  }
> diff --git a/drivers/gpu/drm/msm/msm_gpummu.c b/drivers/gpu/drm/msm/msm_gpummu.c
> index 34980d8..0ad0f84 100644
> --- a/drivers/gpu/drm/msm/msm_gpummu.c
> +++ b/drivers/gpu/drm/msm/msm_gpummu.c
> @@ -21,11 +21,6 @@ struct msm_gpummu {
>  #define GPUMMU_PAGE_SIZE SZ_4K
>  #define TABLE_SIZE (sizeof(uint32_t) * GPUMMU_VA_RANGE / GPUMMU_PAGE_SIZE)
>
> -static int msm_gpummu_attach(struct msm_mmu *mmu)
> -{
> -       return 0;
> -}
> -
>  static void msm_gpummu_detach(struct msm_mmu *mmu)
>  {
>  }
> @@ -85,7 +80,6 @@ static void msm_gpummu_destroy(struct msm_mmu *mmu)
>  }
>
>  static const struct msm_mmu_funcs funcs = {
> -               .attach = msm_gpummu_attach,
>                 .detach = msm_gpummu_detach,
>                 .map = msm_gpummu_map,
>                 .unmap = msm_gpummu_unmap,
> diff --git a/drivers/gpu/drm/msm/msm_iommu.c b/drivers/gpu/drm/msm/msm_iommu.c
> index ad58cfe..544c519 100644
> --- a/drivers/gpu/drm/msm/msm_iommu.c
> +++ b/drivers/gpu/drm/msm/msm_iommu.c
> @@ -23,13 +23,6 @@ static int msm_fault_handler(struct iommu_domain *domain, struct device *dev,
>         return 0;
>  }
>
> -static int msm_iommu_attach(struct msm_mmu *mmu)
> -{
> -       struct msm_iommu *iommu = to_msm_iommu(mmu);
> -
> -       return iommu_attach_device(iommu->domain, mmu->dev);
> -}
> -
>  static void msm_iommu_detach(struct msm_mmu *mmu)
>  {
>         struct msm_iommu *iommu = to_msm_iommu(mmu);
> @@ -66,7 +59,6 @@ static void msm_iommu_destroy(struct msm_mmu *mmu)
>  }
>
>  static const struct msm_mmu_funcs funcs = {
> -               .attach = msm_iommu_attach,
>                 .detach = msm_iommu_detach,
>                 .map = msm_iommu_map,
>                 .unmap = msm_iommu_unmap,
> @@ -76,6 +68,7 @@ static const struct msm_mmu_funcs funcs = {
>  struct msm_mmu *msm_iommu_new(struct device *dev, struct iommu_domain *domain)
>  {
>         struct msm_iommu *iommu;
> +       int ret;
>
>         iommu = kzalloc(sizeof(*iommu), GFP_KERNEL);
>         if (!iommu)
> @@ -85,5 +78,11 @@ struct msm_mmu *msm_iommu_new(struct device *dev, struct iommu_domain *domain)
>         msm_mmu_init(&iommu->base, dev, &funcs);
>         iommu_set_fault_handler(domain, msm_fault_handler, iommu);
>
> +       ret = iommu_attach_device(iommu->domain, dev);
> +       if (ret) {
> +               kfree(iommu);
> +               return ERR_PTR(ret);
> +       }
> +
>         return &iommu->base;
>  }
> diff --git a/drivers/gpu/drm/msm/msm_mmu.h b/drivers/gpu/drm/msm/msm_mmu.h
> index 67a623f..bae9e8e 100644
> --- a/drivers/gpu/drm/msm/msm_mmu.h
> +++ b/drivers/gpu/drm/msm/msm_mmu.h
> @@ -10,7 +10,6 @@
>  #include <linux/iommu.h>
>
>  struct msm_mmu_funcs {
> -       int (*attach)(struct msm_mmu *mmu);
>         void (*detach)(struct msm_mmu *mmu);
>         int (*map)(struct msm_mmu *mmu, uint64_t iova, struct sg_table *sgt,
>                         unsigned len, int prot);
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
