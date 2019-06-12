Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A40642E2C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 19:59:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dvF4MpqfF6WI8jPFUVAk0Of+t+EzTUURCUm9/YIPHE=; b=dkLGgfyEqjLDKf
	s3cEkXiauhUfAnYfaZYArJdQGa9p5mFxAhCL1x4wtbImEELImOrpBe6PtG47tcyczM13SmeA7hmP1
	nG63XVqJyBQFv/bWm/jkLxAuqirgHjCWhuXFmLJHckG3tuVQLe7QnI10zP/hbaaCyzbDRomfR35Ib
	pWRBWMYFr5NetNK8V9uu6AJuzt4/8T74YzEJPhj773ZScnti6t/hTIywmGHgHaJ7F/C8OBJ70lGSJ
	gFoJOMoCCKWCvNSqOnRbzk71BdfJ6YfV7SiuiFoZPhqVLQE9evabxSLxLPWP7VAL5BSg32o7Xq1j2
	K3sc89EuksY24qX6MX3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb7WY-0005VY-Gp; Wed, 12 Jun 2019 17:59:02 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb7WK-0005V3-Ed
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 17:58:50 +0000
Received: by mail-it1-x143.google.com with SMTP id j204so11990623ite.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 10:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iJG2vQZhcPeJyWwyoiZlnIBWFYcWNy7uPN6RTvt3o+0=;
 b=XzeKPY4UghingG2IHUZj64o5cUYXhSbgoRNlc2ZYSYp19Xb8MeOj9g4cyCBylvQIJh
 wLdBJkIJKdeeyzOChwsKtMRRjxXx+i7HA90CEf1Zjd+ke64dOY4eZ0vo4X+P8bUVg2x8
 cTnwDbkdqGs29ml8EOlAOsZ/CeH1L2BFZnzI96H2449TrjsRS3mLgYGPhGde3CEOFWTU
 d5rtmjG4RDEjw06GweP8Ae/jfnCaibpeyqnj1mhSIkHNUliG5KoRzga9xg6ZfrcBJTBP
 toh6V70LGrupSKYSDQK32DkuGqg9WZcJzYMNZ1/7Wmtg2LyTXR72r+qsWNzwhviHYpN8
 SWUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iJG2vQZhcPeJyWwyoiZlnIBWFYcWNy7uPN6RTvt3o+0=;
 b=EsxvhiaxEtocrRvS21B3wWsYmRN1UWOD3ETESc7fZrrM0gHSF+V3/c6pzZ7+IhjTd1
 WhVdliISP6pHhVdyy96WYRSdIhpIcLQluhOwJguD8wO/YDoUMrZUYvh9BNj1xBRyVM6H
 jRjP/6gjqOAXdZ1cTrIi3QNo3XsumAzcWyQ6O1s2HTgVoBYyyoCbWeAELrXHFCNsr8wX
 y5ZkxOWG7XUV8LIqjS4xoz/hzrhAgw54Kkmip+jH0Pw7ZkMKQmra7LAAsNG2RspUs+8r
 i2s7VGyaq3Cun4inApgWDknJft7L7DXnpb08b+7+ubJjJnCGaidc2VTGmEwfOrymdDoM
 5xcQ==
X-Gm-Message-State: APjAAAVeuH+WdyK6glUCBJLMrtCrdiNF6gpBFERNjjf/6t3UCuDHocsI
 Vi4aa9KCZAkqYV93eOZPYeNhMw7FORWHnmOR4Z0=
X-Google-Smtp-Source: APXvYqy8FsnT2tXAP9AmLOyZ4r6ik6vu3DdC9qVPGnxzd/WzDMecFvfZ2ITzSGUE4E2Ce+Va6U+5wKKkP5QgrxvaLiI=
X-Received: by 2002:a02:7121:: with SMTP id n33mr52373916jac.19.1560362326654; 
 Wed, 12 Jun 2019 10:58:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190605210856.20677-1-bjorn.andersson@linaro.org>
 <20190605210856.20677-3-bjorn.andersson@linaro.org>
In-Reply-To: <20190605210856.20677-3-bjorn.andersson@linaro.org>
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Date: Wed, 12 Jun 2019 11:58:35 -0600
Message-ID: <CAOCk7Nocb7VO5xCcuK1FAPVdPr9U-7z8qOL4yt3ig=05e7brgg@mail.gmail.com>
Subject: Re: [RFC 2/2] iommu: arm-smmu: Don't blindly use first SMR to
 calculate mask
To: Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_105848_514916_850FE1EA 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffrey.l.hugo[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Patrick Daly <pdaly@codeaurora.org>, Jeffrey Hugo <jhugo@codeaurora.org>,
 MSM <linux-arm-msm@vger.kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, lkml <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, Vivek Gautam <vivek.gautam@codeaurora.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 5, 2019 at 3:09 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> With the SMRs inherited from the bootloader the first SMR might actually
> be valid and in use. As such probing the SMR mask using the first SMR
> might break a stream in use. Search for an unused stream and use this to
> probe the SMR mask.
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Reviewed-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>

I don't quite like the situation where the is no SMR to compute the mask, but I
think the way you've handled it is the best option/

I'm curious, why is this not included in patch #1?  Seems like patch
#1 introduces
the issue, yet doesn't also fix it.

> ---
>  drivers/iommu/arm-smmu.c | 20 ++++++++++++++++----
>  1 file changed, 16 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index c8629a656b42..0c6f5fe6f382 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -1084,23 +1084,35 @@ static void arm_smmu_test_smr_masks(struct arm_smmu_device *smmu)
>  {
>         void __iomem *gr0_base = ARM_SMMU_GR0(smmu);
>         u32 smr;
> +       int idx;
>
>         if (!smmu->smrs)
>                 return;
>
> +       for (idx = 0; idx < smmu->num_mapping_groups; idx++) {
> +               smr = readl_relaxed(gr0_base + ARM_SMMU_GR0_SMR(idx));
> +               if (!(smr & SMR_VALID))
> +                       break;
> +       }
> +
> +       if (idx == smmu->num_mapping_groups) {
> +               dev_err(smmu->dev, "Unable to compute streamid_mask\n");
> +               return;
> +       }
> +
>         /*
>          * SMR.ID bits may not be preserved if the corresponding MASK
>          * bits are set, so check each one separately. We can reject
>          * masters later if they try to claim IDs outside these masks.
>          */
>         smr = smmu->streamid_mask << SMR_ID_SHIFT;
> -       writel_relaxed(smr, gr0_base + ARM_SMMU_GR0_SMR(0));
> -       smr = readl_relaxed(gr0_base + ARM_SMMU_GR0_SMR(0));
> +       writel_relaxed(smr, gr0_base + ARM_SMMU_GR0_SMR(idx));
> +       smr = readl_relaxed(gr0_base + ARM_SMMU_GR0_SMR(idx));
>         smmu->streamid_mask = smr >> SMR_ID_SHIFT;
>
>         smr = smmu->streamid_mask << SMR_MASK_SHIFT;
> -       writel_relaxed(smr, gr0_base + ARM_SMMU_GR0_SMR(0));
> -       smr = readl_relaxed(gr0_base + ARM_SMMU_GR0_SMR(0));
> +       writel_relaxed(smr, gr0_base + ARM_SMMU_GR0_SMR(idx));
> +       smr = readl_relaxed(gr0_base + ARM_SMMU_GR0_SMR(idx));
>         smmu->smr_mask_mask = smr >> SMR_MASK_SHIFT;
>  }
>
> --
> 2.18.0
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
