Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A63611773F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 21:18:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=saCvoHrIeqMbIhLdBugWF3zeaAWFD9DG44TOBMqBEKs=; b=TeBgLv7dYp7QgO
	UXgeeyM8UW7k67R94or/j/TLudeduz3285aysZB5adKx0pzyI9CBPwA+5XiPwrLm+iFJRhQHB46bk
	KHyObZMQydWHn9sjqgxA8Jfhizyvy8BebvSIcyCQ/9rZB2pCLUL6goSR7qN+QTU2inWBlAmoSrnzl
	SDg7j9TZLq8AV4l6Q5s9uj06hBaGiWI8wBbTay/V5vqOFPhK5gpNg21UB/n0WUOYJtoNgfuBYYViE
	Tm08hBkirkbaxHS7rHLcGCWE1a9u0+WEZBV+5GxeqijsBp8LFoVXO8ThHHwPsJFPYReYZhiXwo7Kl
	q7QqS6AkxfYlWYUUMBug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePTv-0002dR-Op; Mon, 09 Dec 2019 20:18:11 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePTp-0002cz-CZ
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 20:18:06 +0000
Received: by mail-ed1-x544.google.com with SMTP id m8so13822109edi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 12:18:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h2yqKOxOZBGE0XueAD5uhzXamZSICOv0vTonYy2m++Q=;
 b=SMQVSBiO2u7Fb5SpKffbCQvDZoPGHmi8wphxbwhMj4d0exd0owRkFxjpbTAwhxstzL
 PcIqghdn1ODiO38nNuxtULQ7kFYYBtlB4UTyHkeimMxte1v13RifPXHF6Vz93hb0dFTw
 ACxTBwDk8OuONNYiGCvtzif1RaZYg6S7no/8ZJr5Rtc1NyHshQ5O/L2XC5w4rsN5cuOy
 UmKUxOyzzh5Jwd2hdRRUhb01wcNmbvrXenst78KwnqSGgdt5W+GEltl7u0owv/ScCOCc
 B4cTZ0FbsZYQyOxRmVL59rrJqlBH7ff3R9ppLQRI0qy+wMia4LChmaIREb9OZJijeQKk
 TtTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h2yqKOxOZBGE0XueAD5uhzXamZSICOv0vTonYy2m++Q=;
 b=KnBc5qtvd7u+n/FKNN4IODDvDjp/s7xnsSnP3rO76Mz+eCLpG3YitnGf89OCSwEcmU
 QMPi+xBZkOwd3c2Yn561bqxYqL/AXOo1/quhT22I6bXjpKuL1JqAEqI45RcvO/IubHyk
 ZNaL5kqdZ8rZsT/AXRQAtXJYgXQLTKtj6lJl9kfKvOWzkpFAG2u5/PJt6VwAtog0Qeb/
 b7fSauk3SIJh9K6UF+VVK65K50umpBBkZDFgtL4J9lLq/teHGvqm9lz2buCQTqBrvZIE
 p95V9O6XP06u68oJbYt+ia/QDOA/CbzYkVk6rZmUT+DxO30lXDZ+SzcbvzzpEt4ni6a+
 Qj3g==
X-Gm-Message-State: APjAAAVA8KbtSHBDCv9nKCxPFW3lmIHYx/rQiKP7pXmDkyBOu+bVoWwX
 ELdkuRkj4g+oswXWQJm/REAZ4qGdjzGIqOyBS8U=
X-Google-Smtp-Source: APXvYqxJoAfWGwg6T+oY0GTnfrw6XGw523tgFtibpXV6QP979ZIcnXwmJaPC+BaZ7VZ5Fotc0CennR+6m2o6cXTwAmY=
X-Received: by 2002:a17:906:34d7:: with SMTP id
 h23mr33858892ejb.90.1575922684081; 
 Mon, 09 Dec 2019 12:18:04 -0800 (PST)
MIME-Version: 1.0
References: <1574465484-7115-1-git-send-email-jcrouse@codeaurora.org>
 <0101016e95754ea7-d6414f4c-9e25-4bc4-a852-7116a783bf63-000000@us-west-2.amazonses.com>
In-Reply-To: <0101016e95754ea7-d6414f4c-9e25-4bc4-a852-7116a783bf63-000000@us-west-2.amazonses.com>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 9 Dec 2019 12:17:53 -0800
Message-ID: <CAF6AEGuchn7fa+8j45sCH7Sd2_dz5WokeeinR8RYr8xvY4Uq+g@mail.gmail.com>
Subject: Re: [PATCH v2 7/8] drm/msm/a6xx: Support split pagetables
To: Jordan Crouse <jcrouse@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_121805_464234_5EF9706A 
X-CRM114-Status: GOOD (  23.32  )
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
Cc: freedreno <freedreno@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Mamta Shukla <mamtashukla555@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 3:32 PM Jordan Crouse <jcrouse@codeaurora.org> wrote:
>
> Attempt to enable split pagetables if the arm-smmu driver supports it.
> This will move the default address space from the default region to
> the address range assigned to TTBR1. The behavior should be transparent
> to the driver for now but it gets the default buffers out of the way
> when we want to start swapping TTBR0 for context-specific pagetables.
>
> Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
> ---
>
>  drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 46 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 45 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> index 5dc0b2c..96b3b28 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> @@ -811,6 +811,50 @@ static unsigned long a6xx_gpu_busy(struct msm_gpu *gpu)
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
> +       /* Try to request split pagetables */
> +       iommu_domain_set_attr(iommu, DOMAIN_ATTR_SPLIT_TABLES, &val);
> +
> +       mmu = msm_iommu_new(&pdev->dev, iommu);
> +       if (IS_ERR(mmu)) {
> +               iommu_domain_free(iommu);
> +               return ERR_CAST(mmu);
> +       }
> +
> +       /* Check to see if split pagetables were successful */
> +       ret = iommu_domain_get_attr(iommu, DOMAIN_ATTR_SPLIT_TABLES, &val);

I assume the split between this and iommu_domain_set_attr() is because
attach needs to happen in between?  At any rate, if it needs to be
like this, maybe a comment is in order.  As it is it looks like
something future-self would "cleanup"..

BR,
-R

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
> @@ -832,7 +876,7 @@ static const struct adreno_gpu_funcs funcs = {
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
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
