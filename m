Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BFEB672D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 17:33:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mde/yJoqfQReULpp63QP8i3S/sykcmks9N0Xmll8FZg=; b=nkIC8YeJI2cS+l
	yJ0nhSEXW3FthiIHsyRmAfjV5xw3M7E2TX7058ZhNTyMI2hvHMIC6Mmma2qDGAFmjG+sY8SmaWM+6
	guBWFhqhSoGH5Jw0bmKyx1kMXNISGw0bG61B3JdfmdApUOZvNdDZtR0aOfSEvM6tr6YtNLk5cLE2a
	xqjCn05QFirNbdgaCV84FEMTBa3cjQvxOuBAx6vDI+i/Tct2mcm90b72pH9G+anzvKY7gwmI8q/AT
	Vz9zINhx70O0rYRr6df96ZAQGlTL/2bW3NltPgp6aYnADyysXA8UtOd00LYSeXqXLNRFjJdYQ3nnm
	K6S5e545SVEmxNFuh4mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAbx6-0004AJ-IZ; Wed, 18 Sep 2019 15:33:08 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAbwt-00049N-23
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 15:32:56 +0000
Received: by mail-io1-xd42.google.com with SMTP id n197so132274iod.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 08:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xJ/cS8LcWo36On2CRn3NQ8qNeTLdwfUQ9LdgXSyXFCI=;
 b=hOIAcY9Ksndwp9AC0VindSRz3r66JG/ms4yVbpBtr4zTBwwCAm1t5GAtaDvfp+ULhD
 J0i3UHDoxR9OxWh8GaBew41KFK6N6DB2SONhSJCHKrag8uZnWBTE1466IDR5Zc7HckLN
 46P4yhy7AjIC9487c2WAZqNswJJ5zbiLOocZY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xJ/cS8LcWo36On2CRn3NQ8qNeTLdwfUQ9LdgXSyXFCI=;
 b=lJT3+9JyK0si5dHv4suC4PdNdTAp2QDXmpnRx0sb3i7fJ4beK+b76K9Ou+fNhGqEIN
 eCXwFJ2sR0OaYTuxdyoqea9SdYjDj/UY/5Z33a0a8ib63gY6DMf8V6kCIC3mKoIkvk1j
 kO7o4fLWCkC1RbY4frtnx1W+cAWVxtM9SpqSjjAHPhJd2J3jn9MQmla5LLkMZZY81Dcn
 44JWLKjBHoWLfcOyxkCrUqu/7XPS3PK/9KkiB3um4bE5168WokD/+kK7BfxoHOugMSWI
 0Ail2CKRVX8zwMpTHwOClu1D5VGjN/4ZrPCv57FF374fMkKPyvczRKrywCVlK6DmKcA7
 Y5Vw==
X-Gm-Message-State: APjAAAUua1jVO9vJJwstNYCEVm7as6JGioC68LBcdxAtwFNaVLWO7HV4
 54SUUxobHfEe2Ihqqv7hBgcSbctHrao=
X-Google-Smtp-Source: APXvYqweR83THpQorpUMyYi6zyE63vOKyhTtzrn6yMPqypm0biwFCPFKcoUH4pCVH1zxCjjHZg/yMw==
X-Received: by 2002:a5d:9dd4:: with SMTP id 20mr5886691ioo.1.1568820773898;
 Wed, 18 Sep 2019 08:32:53 -0700 (PDT)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com.
 [209.85.166.50])
 by smtp.gmail.com with ESMTPSA id b11sm4632891ion.62.2019.09.18.08.32.52
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Sep 2019 08:32:53 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id q10so257958iop.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 08:32:52 -0700 (PDT)
X-Received: by 2002:a6b:b704:: with SMTP id h4mr4680779iof.218.1568820772456; 
 Wed, 18 Sep 2019 08:32:52 -0700 (PDT)
MIME-Version: 1.0
References: <4febe7a87a95ed607b4dc68ba96b15210df84e9e.1568731534.git.robin.murphy@arm.com>
In-Reply-To: <4febe7a87a95ed607b4dc68ba96b15210df84e9e.1568731534.git.robin.murphy@arm.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 18 Sep 2019 08:32:40 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W_kSWyWgGZvEpY3bnwEWdgnEWmkHf1qPSS2aQ9i0suJA@mail.gmail.com>
Message-ID: <CAD=FV=W_kSWyWgGZvEpY3bnwEWdgnEWmkHf1qPSS2aQ9i0suJA@mail.gmail.com>
Subject: Re: [PATCH v2] iommu/arm-smmu: Report USF more clearly
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_083255_130182_36AC5E0D 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <joro@8bytes.org>,
 Will Deacon <will@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Sep 17, 2019 at 7:45 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Although CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT is a welcome tool
> for smoking out inadequate firmware, the failure mode is non-obvious
> and can be confusing for end users. Add some special-case reporting of
> Unidentified Stream Faults to help clarify this particular symptom.
> Since we're adding yet another print to the mix, also break out an
> explicit ratelimit state to make sure everything stays together (and
> reduce the static storage footprint a little).
>
> CC: Douglas Anderson <dianders@chromium.org>

nit: Cc, not CC.


> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/arm-smmu.c | 21 ++++++++++++++++-----
>  drivers/iommu/arm-smmu.h |  2 ++
>  2 files changed, 18 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index b7cf24402a94..b27020fd6c90 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -36,6 +36,7 @@
>  #include <linux/pci.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
> +#include <linux/ratelimit.h>
>  #include <linux/slab.h>
>
>  #include <linux/amba/bus.h>
> @@ -485,6 +486,8 @@ static irqreturn_t arm_smmu_global_fault(int irq, void *dev)
>  {
>         u32 gfsr, gfsynr0, gfsynr1, gfsynr2;
>         struct arm_smmu_device *smmu = dev;
> +       static DEFINE_RATELIMIT_STATE(rs, DEFAULT_RATELIMIT_INTERVAL,
> +                                     DEFAULT_RATELIMIT_BURST);
>
>         gfsr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_sGFSR);
>         gfsynr0 = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_sGFSYNR0);
> @@ -494,11 +497,19 @@ static irqreturn_t arm_smmu_global_fault(int irq, void *dev)
>         if (!gfsr)
>                 return IRQ_NONE;
>
> -       dev_err_ratelimited(smmu->dev,
> -               "Unexpected global fault, this could be serious\n");
> -       dev_err_ratelimited(smmu->dev,
> -               "\tGFSR 0x%08x, GFSYNR0 0x%08x, GFSYNR1 0x%08x, GFSYNR2 0x%08x\n",
> -               gfsr, gfsynr0, gfsynr1, gfsynr2);
> +       if (__ratelimit(&rs)) {
> +               if (IS_ENABLED(CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT) &&
> +                   (gfsr & sGFSR_USF))
> +                       dev_err(smmu->dev,
> +                               "Blocked unknown Stream ID 0x%hx; boot with \"arm-smmu.disable_bypass=0\" to allow, but this may have security implications\n",

optional nit: "%#hx" instead of "0x%hx"

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
