Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E011FFD7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 08:48:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2WiOzIaml6840WLfHbTYxW3ou21nGQQ7xuSthQlwbw=; b=mGcHsulsM/vxnB
	KGg1hejwbfKAvQdYG4r08aetfok5UW6y+a5x49K+uL97vwKgSGduX/dMxR/TsHrTvEnlHx/fvEL8s
	tgxa54eEZ/Fou8totdQqfDeb7xxwudCA4Ls9j4SinLGRl751QSEyctssDU3EGuo0Ibnk7R2qyJhxN
	rkuaqxLRcO/aOrT5aw0QNqGA7sDm1xgqO7seg7zquDdMfet6wTC8i+E3KIjTfn2r+2oT+qI+m1s8J
	NC5GRs3fsIVSWAGaW5wRZ1+JwzgzgebbcABFX0xgEHMIqPGX7nmXS0tFy7FpJW5dwbTaYZGn0QYby
	FWsUtWfpT+5ZcN7ugZwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRABf-0001HR-Pa; Thu, 16 May 2019 06:48:19 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRABX-0001Gk-Pc
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 06:48:13 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 8FC5760A4E; Thu, 16 May 2019 06:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557989290;
 bh=ZG75f0lAOy1l5nnTA2W31hBIGHC2MtPKNbbEUIh5Wf0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ip+KhnSDwqQ6o84dfRIgliZ9j6YSTEa9vIzYvXc943S2AD3mA8aQ+Z0lkcoi/m49p
 7aMiny8cvc23arEec0ailuT7eJKEu+iZqrEv3Uvhpfs7pXfdnVzTNs6zAzJA1zNZs0
 NfoQDxOP6wNxrgjB0i1sbFBmV0CzKI9A98mS5vQo=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
 [209.85.208.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: vivek.gautam@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 860F660CF0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 06:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557989287;
 bh=ZG75f0lAOy1l5nnTA2W31hBIGHC2MtPKNbbEUIh5Wf0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=i8Skn8GMp5Ca9Xq4RekrA/tI7vqbQdhgnWOmKSuIrmQ1hdYfYfUDwAIyRZea+9d+G
 WUE6mX2GhMtI+iPujURAFxvOvZfEuvFPjDKiHlJCif+q4kZ70YgN4D9tX1B83SWBW5
 /EQyE2vOidCqzDcB15dYsgku1yKEywtYvDOrkzVU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 860F660CF0
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=vivek.gautam@codeaurora.org
Received: by mail-ed1-f48.google.com with SMTP id n17so3650300edb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 23:48:06 -0700 (PDT)
X-Gm-Message-State: APjAAAVHJBaSlPBKAoYQpZvq98y6EaTwm84a+CnKAazwNXE4DkKaxTjR
 C1MU4yaiYD7RNgFqNGt2mO6R+win6jwAgHvXgWo=
X-Google-Smtp-Source: APXvYqwE4sv9OWAdotkgId+uAs3Ngm4nCDGeM/ygr0LbOzm5ahsK2cp4+ig58+Nr8zmvRko1JQyh3Xh0k05F1GQXZQg=
X-Received: by 2002:a50:94db:: with SMTP id t27mr1721377eda.173.1557989284710; 
 Wed, 15 May 2019 23:48:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190515233234.22990-1-bjorn.andersson@linaro.org>
In-Reply-To: <20190515233234.22990-1-bjorn.andersson@linaro.org>
From: Vivek Gautam <vivek.gautam@codeaurora.org>
Date: Thu, 16 May 2019 12:17:53 +0530
X-Gmail-Original-Message-ID: <CAFp+6iEMQd1uAWdkLysYWt0et8eRojoivG6+e78y0DU+4=H+_g@mail.gmail.com>
Message-ID: <CAFp+6iEMQd1uAWdkLysYWt0et8eRojoivG6+e78y0DU+4=H+_g@mail.gmail.com>
Subject: Re: [PATCH] iommu: io-pgtable: Support non-coherent page tables
To: Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_234812_079344_3003A901 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Vivek Gautam <vgautam@qti.qualcomm.com>,
 Will Deacon <will.deacon@arm.com>, open list <linux-kernel@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 5:03 AM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> Describe the memory related to page table walks as non-cachable for iommu
> instances that are not DMA coherent.
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  drivers/iommu/io-pgtable-arm.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
> index 4e21efbc4459..68ff22ffd2cb 100644
> --- a/drivers/iommu/io-pgtable-arm.c
> +++ b/drivers/iommu/io-pgtable-arm.c
> @@ -803,9 +803,15 @@ arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
>                 return NULL;
>
>         /* TCR */
> -       reg = (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH0_SHIFT) |
> -             (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_IRGN0_SHIFT) |
> -             (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_ORGN0_SHIFT);
> +       if (cfg->quirks & IO_PGTABLE_QUIRK_NO_DMA) {
> +               reg = (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH0_SHIFT) |
> +                     (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_IRGN0_SHIFT) |
> +                     (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_ORGN0_SHIFT);
> +       } else {
> +               reg = (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH0_SHIFT) |
> +                     (ARM_LPAE_TCR_RGN_NC << ARM_LPAE_TCR_IRGN0_SHIFT) |
> +                     (ARM_LPAE_TCR_RGN_NC << ARM_LPAE_TCR_ORGN0_SHIFT);
> +       }

This looks okay to me based on the discussion that we had on a similar
patch that I
posted. So,
Reviewed-by: Vivek Gautam <vivek.gautam@codeaurora.org>

[1] https://lore.kernel.org/patchwork/patch/1032939/

Thanks & regards
Vivek

>
>         switch (ARM_LPAE_GRANULE(data)) {
>         case SZ_4K:
> --
> 2.18.0
>
> _______________________________________________
> iommu mailing list
> iommu@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/iommu



-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
