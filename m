Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9011E5CDD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 12:16:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BsfOEYzQj0gmrMxrMrxWVduJZdc55kmTw5TvXyAdQI8=; b=FNE8WgK9Knk6AA
	iGzMQJlaYMjt+YjAr8yMdEloNccTgIii5tI7rmXQMZfywMY2jjHxoUbmLmlSwoOWu+3e+4llfyvee
	wLQjN/ejfWy/zwCCkvkm1oqRR//qvFaI22QV5JVYRsKtgo62HftPMyer+hNZv6skOJzBN/GFo7qc9
	7BRbuYRZihAJ0D9DKDN7Fl1J5AXckCpApQd0GRLAm0f8P/pjXCKUJvisX04PULkYoRzZTLCaX5BDP
	fVT7fXB6SyH0oHoIbwvQxugipIe1qxyR5eoihXaJU4oWz9lnQammpfdWZo7j6vtD5EVsjgXFQSoft
	MIY7yJHEGLyJycGT4ZhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeFZs-0000DW-1e; Thu, 28 May 2020 10:15:56 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeFZ5-0006W9-0O
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 10:15:09 +0000
Received: by mail-vs1-xe44.google.com with SMTP id c1so226074vsc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 03:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NnFvkEinSu8JNeeiaCqqDDP3KthjxwCRXHN9I0khteE=;
 b=JKXLgYnRrXprs68FC8fP4Hq7I9VPldQJYeOyc/9tZMIvKGkf3t5OoImS5K4atsMnAN
 r27FPxAuUszQNOJP2Mc0e0W6PepVkbJr7xfkUcfmu59eRZHeKzQsqFqgPrCLjhZ2QcZm
 B98a7+5hvdsR4PehdNAbX2Q5Irc8IRfgouLxpRWRu9GLQmRxE+zYRiXyI51m7zoRSkTJ
 +rswdazaCjsE26eujh5yTeYERp1E0iZsmhEVLg3VEOfm4tqR8fEEMp3c4DUPAf0RW48B
 6C4TICJ1VGKAY2wPQ1LKT6XGF2yPvJNdhTWDNUDY6Dvh2AZDUdM0GPcSLgQ5yRXyb7ex
 BfEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NnFvkEinSu8JNeeiaCqqDDP3KthjxwCRXHN9I0khteE=;
 b=l1kgl3bRdY/qOfAWK5k6k33AT6QC/2FsvBYFlrtCc7tBZUJCezNyHHkZrbkHprwNvT
 KFof2aH4+ENA5ydEIrJRCiQm09+jlV1Aiuoxu7L+BUZpf6/WwdPuCbPGAw9sZa4/DEyn
 CvcRYLjyNJsuI4I6rSKHMvJIJLxmmnLaGMICI4Ab3sSStq/Kq+XRrIsyQ9R/kUcE596G
 TfCUJwIfCQCpT6H5dpLbTlOoHFEC3PluXctAqQBuFHtPmztMmGqTPoFzMKBV4H+hBLO1
 YjN27R7rMQGq76ohI43eNcj89R/9T65M+uCe/BIRwbq21KtqYuZ4riJfM1vDJFSxGEBi
 W1fg==
X-Gm-Message-State: AOAM531JLRndx9EEkMU+WCyEXw9UN+nEAlubtCskgv+7jORS0gp4RAD6
 9/8hfv/6o7Mjynrezx+jVYCJHWHnfk/oFzmgzx/zbg==
X-Google-Smtp-Source: ABdhPJzVo18IfEZvDNjehMuUK+Er1KC2DxaDvMSbNlAbvNzpRPVY17HtVDdF3JBPl18RRNoiV/BlCC6N4HoAjWTgSlA=
X-Received: by 2002:a67:ec58:: with SMTP id z24mr1378822vso.200.1590660905952; 
 Thu, 28 May 2020 03:15:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200526155103.12514-1-ludovic.barre@st.com>
 <20200526155103.12514-3-ludovic.barre@st.com>
In-Reply-To: <20200526155103.12514-3-ludovic.barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 28 May 2020 12:14:28 +0200
Message-ID: <CAPDyKForRHZFGEzn=5OVY8YP6okFj7G2e6QTJFH5-Q_xP3QLBw@mail.gmail.com>
Subject: Re: [PATCH 2/2] mmc: mmci_sdmmc: fix DMA API warning max segment size
To: Ludovic Barre <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_031507_075008_1C3AC102 
X-CRM114-Status: GOOD (  18.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 26 May 2020 at 17:51, Ludovic Barre <ludovic.barre@st.com> wrote:
>
> Turning on CONFIG_DMA_API_DEBUG_SG results in the following warning:
> WARNING: CPU: 1 PID: 85 at kernel/dma/debug.c:1302 debug_dma_map_sg+0x2a0/0x3cc
> mmci-pl18x 58005000.sdmmc: DMA-API: mapping sg segment longer than device claims to support [len=126976] [max=65536]
>
> dma api debug checks and compares the segment size to
> dma_get_max_seg_size (dev->dma_parms->max_segment_size),
> the sdmmc variant has an internal DMA and should define
> its max_segment_size constraint to avoid this warning.
>
> This Patch defines the dev->dma_parms->max_segment_size
> with the constraint already set for mmc core
> (host->mmc->max_seg_size).
>
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>

Applied for next, thanks!

Note, a manual backport is needed for stable, as
dma_set_max_seg_size() will fail for older kernels.
We needed to revert 9495b7e92f7 ("driver core: platform: Initialize
dma_parms for platform devices"), for stable kernels [1].

Kind regards
Uffe

[1]
https://lkml.org/lkml/2020/5/26/1216


> ---
>  drivers/mmc/host/mmci_stm32_sdmmc.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/mmc/host/mmci_stm32_sdmmc.c b/drivers/mmc/host/mmci_stm32_sdmmc.c
> index 2965b1c062e1..51db30acf4dc 100644
> --- a/drivers/mmc/host/mmci_stm32_sdmmc.c
> +++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
> @@ -119,20 +119,19 @@ static void sdmmc_idma_unprep_data(struct mmci_host *host,
>  static int sdmmc_idma_setup(struct mmci_host *host)
>  {
>         struct sdmmc_idma *idma;
> +       struct device *dev = mmc_dev(host->mmc);
>
> -       idma = devm_kzalloc(mmc_dev(host->mmc), sizeof(*idma), GFP_KERNEL);
> +       idma = devm_kzalloc(dev, sizeof(*idma), GFP_KERNEL);
>         if (!idma)
>                 return -ENOMEM;
>
>         host->dma_priv = idma;
>
>         if (host->variant->dma_lli) {
> -               idma->sg_cpu = dmam_alloc_coherent(mmc_dev(host->mmc),
> -                                                  SDMMC_LLI_BUF_LEN,
> +               idma->sg_cpu = dmam_alloc_coherent(dev, SDMMC_LLI_BUF_LEN,
>                                                    &idma->sg_dma, GFP_KERNEL);
>                 if (!idma->sg_cpu) {
> -                       dev_err(mmc_dev(host->mmc),
> -                               "Failed to alloc IDMA descriptor\n");
> +                       dev_err(dev, "Failed to alloc IDMA descriptor\n");
>                         return -ENOMEM;
>                 }
>                 host->mmc->max_segs = SDMMC_LLI_BUF_LEN /
> @@ -143,7 +142,7 @@ static int sdmmc_idma_setup(struct mmci_host *host)
>                 host->mmc->max_seg_size = host->mmc->max_req_size;
>         }
>
> -       return 0;
> +       return dma_set_max_seg_size(dev, host->mmc->max_seg_size);
>  }
>
>  static int sdmmc_idma_start(struct mmci_host *host, unsigned int *datactrl)
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
