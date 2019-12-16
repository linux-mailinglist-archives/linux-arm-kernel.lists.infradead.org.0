Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D579121205
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 18:44:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1BEeV4C1/nianqR6Tv/N3vw82FCM1Ih3wxcivpyrlU=; b=toxczDkK1Mi4nC
	U5aBNhE1c6YxL5GtPuUKFZIEWqEXdu105I4blQE4S4Q0Z9iaOWrXvKOZOGn2dq4Vt21Sl4FPoElAG
	TVRzwEj2+bE1dUnUbwV7jMa7slC+8wpLKkp9k/Grvv1g1R5dV+x3Ei/c6ZOK0aHUg24ZAkadDI5Ys
	aiwqvR1EM98iaQrGEWxe7OFYjpFmtRRZjhlC7X21xPOw39abtAyv75pEfb9DJtkVOVKciXjF50EMX
	GKpK3dpUpRKaeS9AXpne3KxEGPS3dfRPLLkvrvA5qd7iT1rQ9SvF4qcf4WpY8Dg5X72if0aBrwwA5
	btEJSuq/i4kEGp8yn/XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iguPs-0001i2-Dm; Mon, 16 Dec 2019 17:44:20 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iguPk-0001go-V7
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 17:44:14 +0000
Received: by mail-ed1-x544.google.com with SMTP id f8so5760000edv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 09:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dotsp4hlrRRgAJ8KtDm+ECaZ4Cv3RzpcnEOHjwNyGY4=;
 b=XuMhWcCBF/5Ytd0QFb2aWT2ZjIhuShrmxVGkMOWEHF4GTXo/JJO3tpKzaYezLulgtb
 ymJn6D9SihsyvAj/EkVlj+aj0p9Ywx+4WTU8EuNhn01x+niEpzjpq4vjuYeRmoNeByn4
 PJZ0QlMrGdlv1Ma6updVH0Q6orL1dTU2clAJaH8wkau3kwvAj6eTD5Tpe4oSrym6hJ9Q
 7eNQp6O33KdXkmOj224psFuq5lGg+mHv/9oIs69Uqb+zT1cnAuC1Iuw/itukC1gfD577
 fUSzQTCBMpZ6lVtgzcUx0NJlloH5c2qOEvZWhWWlxw7dbGyvfsGEpCpyfTXO1vkLURHr
 uZRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dotsp4hlrRRgAJ8KtDm+ECaZ4Cv3RzpcnEOHjwNyGY4=;
 b=om6H3ZenGzTB1IUcsbXMc5qfSl5UBWMB1bJ3tg/5R9h6k3CNuWvpqInmrVVwqWTaEb
 mMfVoQTRE7xEK73u2Tr9NBsUl8eAUZE9RL/ISihAhxaXB3IQZ576rurhLEK2fijqQAUS
 /BL8Qf4AWleH/NmdbJZBqSyPtR37kXyQyfiiIcIxnryyxdTOMlRGfclbt/HFu2S38oU2
 0bpzNnbvnk29D3OIQqqLNZotBdyATaRMc6F+NhJtVhARCIeivZ++2fmetDdZOMYq+vX8
 609U1X1m8CVO/yr/maIzk0Is9cjj0ZDdxuriIOy/3v4Ji9RiKpziHNGKIu4tLrlvjAi7
 1zaw==
X-Gm-Message-State: APjAAAUPmTK+RVGfAFkt9fGQpXosNmLbRqAthM5KRWzEuS38w5NHwERm
 jKQ0/MEIpzRG5munEJ/ljPBniwXP726nVNf8xoI=
X-Google-Smtp-Source: APXvYqzMZmKG4O0FupZLieU7MkUuk6V2ElDf+PeLMM9q5q0SW8+Pb9iyDBHD9J+QeQV1ICnDIpyJSoUw51ELTZ5J+Xk=
X-Received: by 2002:aa7:d6d1:: with SMTP id x17mr365496edr.57.1576518246192;
 Mon, 16 Dec 2019 09:44:06 -0800 (PST)
MIME-Version: 1.0
References: <1576514271-15687-1-git-send-email-jcrouse@codeaurora.org>
 <1576514271-15687-6-git-send-email-jcrouse@codeaurora.org>
In-Reply-To: <1576514271-15687-6-git-send-email-jcrouse@codeaurora.org>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 16 Dec 2019 09:43:55 -0800
Message-ID: <CAF6AEGsWAjgcsqMQEtCfUn9smqfVyOcf-Nn1+eJGrMuLkjgwRA@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] drm/msm/a6xx: Support split pagetables
To: Jordan Crouse <jcrouse@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_094413_002183_3F5A8205 
X-CRM114-Status: GOOD (  24.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 David Airlie <airlied@linux.ie>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 8:38 AM Jordan Crouse <jcrouse@codeaurora.org> wrote:
>
> Attempt to enable split pagetables if the arm-smmu driver supports it.
> This will move the default address space from the default region to
> the address range assigned to TTBR1. The behavior should be transparent
> to the driver for now but it gets the default buffers out of the way
> when we want to start swapping TTBR0 for context-specific pagetables.
>
> Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>

Reviewed-by: Rob Clark <robdclark@gmail.com>

(my previous r-b's on the other patches from v2 carries over to v3)

> ---
>
>  drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 52 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 51 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> index 5dc0b2c..1c6da93 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> @@ -811,6 +811,56 @@ static unsigned long a6xx_gpu_busy(struct msm_gpu *gpu)
>         return (unsigned long)busy_time;
>  }
>
> +static struct msm_gem_address_space *
> +a6xx_create_address_space(struct msm_gpu *gpu, struct platform_device *pdev)
> +{
> +       struct iommu_domain *iommu = iommu_domain_alloc(&platform_bus_type);
> +       struct msm_gem_address_space *aspace;
> +       struct msm_mmu *mmu;
> +       u64 start, size;
> +       u32 val = 1;
> +       int ret;
> +
> +       if (!iommu)
> +               return ERR_PTR(-ENOMEM);
> +
> +       /*
> +        * Try to request split pagetables - the request has to be made before
> +        * the domian is attached
> +        */
> +       iommu_domain_set_attr(iommu, DOMAIN_ATTR_SPLIT_TABLES, &val);
> +
> +       mmu = msm_iommu_new(&pdev->dev, iommu);
> +       if (IS_ERR(mmu)) {
> +               iommu_domain_free(iommu);
> +               return ERR_CAST(mmu);
> +       }
> +
> +       /*
> +        * After the domain is attached, see if the split tables were actually
> +        * successful.
> +        */
> +       ret = iommu_domain_get_attr(iommu, DOMAIN_ATTR_SPLIT_TABLES, &val);
> +       if (!ret && val) {
> +               /*
> +                * The aperture start will be at the beginning of the TTBR1
> +                * space so use that as a base
> +                */
> +               start = iommu->geometry.aperture_start;
> +               size = 0xffffffff;
> +       } else {
> +               /* Otherwise use the legacy 32 bit region */
> +               start = SZ_16M;
> +               size = 0xffffffff - SZ_16M;
> +       }
> +
> +       aspace = msm_gem_address_space_create(mmu, "gpu", start, size);
> +       if (IS_ERR(aspace))
> +               iommu_domain_free(iommu);
> +
> +       return aspace;
> +}
> +
>  static const struct adreno_gpu_funcs funcs = {
>         .base = {
>                 .get_param = adreno_get_param,
> @@ -832,7 +882,7 @@ static const struct adreno_gpu_funcs funcs = {
>  #if defined(CONFIG_DRM_MSM_GPU_STATE)
>                 .gpu_state_get = a6xx_gpu_state_get,
>                 .gpu_state_put = a6xx_gpu_state_put,
> -               .create_address_space = adreno_iommu_create_address_space,
> +               .create_address_space = a6xx_create_address_space,
>  #endif
>         },
>         .get_timestamp = a6xx_get_timestamp,
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
