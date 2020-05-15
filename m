Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDE61D46C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 09:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZlXl6cWF+HZ37a+lEuCy0jMBp8NzzgDhrRVzDNz3LE=; b=KU56nmAcsLaJBF
	ezmmiFc1S1a+1ATpHAiRnMoA2WjYgDoStuHRg0BN0RoZKgnZ2gDBw2rIYJK/+ug9PIzWAd2nKA3/v
	FLJjg3H6wKIqyGNvdVMIZ1gkYykv/5ZaEOdEdRN67+HUGYL8XqSuxMHsLk2aDW98iwOHMuqc1uRHL
	2ANpzts50Q4JrjiTnlovbMpY65XqeLArBt5DW1CNHDTJC5LUaq/kNVjr19BPcWpJCrEfqN1Avy4e4
	F0JZaEUu/jp2w2COqYZuOj6NKQrKGp4+sWhOMJ7HW1kau7J/HGqFZiVTw5tRsl85jUhUNXT/fYeR0
	6OS/yt9qwyXWiFR8iw3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZUUL-0000Nj-E2; Fri, 15 May 2020 07:10:33 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZUTj-00068F-Dy
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 07:09:59 +0000
Received: by mail-vk1-xa43.google.com with SMTP id m18so321101vkk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 00:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nMrcey/VFjUSqrjmSceZhxBusEA8rOudHxgtgSRpgfU=;
 b=SwZCCMCJbOBupMcaeooj/s7BAmGaJ/3z/skTTeDsZpnlf1qg7kUgvUIv3IkwGvJ/Wr
 6KwHNDn1QH/j30ziOgwaorN+O8qAPNXgOPR2spd7gTdrFKRdTN9qa9bav1qNW6eeoJAH
 GX8WaR2pnxXgRthv+Z31yFvaAJNS5jTQlofDczO5IyzrmIkmNP4V28cSShjDaRORX0J2
 vBfvwoVNb673WSLC4owlYDDQTxHhz5gtzzDq0G/ITqJhhrdV2o1uG1ElZZxmpclJyf0k
 HJvqWvY0yjhPcM28P24HxsgcXA7AZ+4eR4eAjX3lAS6+53qe+liFrcR75aqKGmee1bU5
 b1NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nMrcey/VFjUSqrjmSceZhxBusEA8rOudHxgtgSRpgfU=;
 b=KB/vgN4q7RqzM9XQj0Ng98ibqiRFPXiBLOXsCBSnTuUOPQi30Y1npfcnAhsQ9YmFg+
 Ggdk2V5TqlGllylSRICNY4XSMfwl1G+MIAnu+YjTGydF5hJcZnBl9MZpSiYw+SOvySKu
 pC5CH1Dg5Yf/niQS+s+NNyV3Of7HalhoQrnBaWj1huzlsLM3LV+1LNkEVoo0cL4M19R7
 8oJff8hNvf8L6Q94aodPZrotjxsumqUWfNw1D3jKKUJUpysXkDQOc9YLqr7nB6LGCcmc
 HVC6XYdWZa3dAJgXqldi5tdnHhWxlVGv8kFphYVdn5sVG8r3GSTrpA4yUZPxiakb/cfq
 1C/Q==
X-Gm-Message-State: AOAM530BotumoKTWMojWV7dQD/yMR+MHMQJRrkJ1QjCV9N61pJ1KH45n
 kXHcQcgsjWkT2HCk/6jILFAisDByywmhlZq7ImAQUQ==
X-Google-Smtp-Source: ABdhPJyVP1iYk14ai3Il/5aiDDhXOrIwFuiSmo7BZ5JEF7Q90kBiwKNuigTJo948jZVQpR4ilQM0T8TYUktDKtiia6I=
X-Received: by 2002:a1f:fc06:: with SMTP id a6mr1674172vki.101.1589526594549; 
 Fri, 15 May 2020 00:09:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200511062828.1791484-1-yamada.masahiro@socionext.com>
In-Reply-To: <20200511062828.1791484-1-yamada.masahiro@socionext.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 15 May 2020 09:09:18 +0200
Message-ID: <CAPDyKFqVHMdBwZHDvTC-XkTbBiobEdBFjnjpcgoPoU5rirWWMQ@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci: use FIELD_GET/PREP for current capabilities
 bit masks
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_000955_469525_6D6856FB 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 11 May 2020 at 08:29, Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Use FIELD_GET and FIELD_PREP to get access to the register fields. Delete
> the shift macros and use GENMASK() for the touched macros.
>
> Note that, this has the side-effect of changing the constants to 64-bit on
> 64-bit platforms.
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>
>  drivers/mmc/host/sdhci-esdhc-imx.c |  6 +++---
>  drivers/mmc/host/sdhci.c           | 27 ++++++++++++---------------
>  drivers/mmc/host/sdhci.h           | 11 ++++-------
>  3 files changed, 19 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/mmc/host/sdhci-esdhc-imx.c b/drivers/mmc/host/sdhci-esdhc-imx.c
> index 38cd83118082..9896e03fce71 100644
> --- a/drivers/mmc/host/sdhci-esdhc-imx.c
> +++ b/drivers/mmc/host/sdhci-esdhc-imx.c
> @@ -419,9 +419,9 @@ static u32 esdhc_readl_le(struct sdhci_host *host, int reg)
>
>         if (unlikely(reg == SDHCI_MAX_CURRENT) && esdhc_is_usdhc(imx_data)) {
>                 val = 0;
> -               val |= 0xFF << SDHCI_MAX_CURRENT_330_SHIFT;
> -               val |= 0xFF << SDHCI_MAX_CURRENT_300_SHIFT;
> -               val |= 0xFF << SDHCI_MAX_CURRENT_180_SHIFT;
> +               val |= FIELD_PREP(SDHCI_MAX_CURRENT_330_MASK, 0xFF);
> +               val |= FIELD_PREP(SDHCI_MAX_CURRENT_300_MASK, 0xFF);
> +               val |= FIELD_PREP(SDHCI_MAX_CURRENT_180_MASK, 0xFF);
>         }
>
>         if (unlikely(reg == SDHCI_INT_STATUS)) {
> diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
> index 344a7e0e33fe..7818e650f974 100644
> --- a/drivers/mmc/host/sdhci.c
> +++ b/drivers/mmc/host/sdhci.c
> @@ -4355,35 +4355,32 @@ int sdhci_setup_host(struct sdhci_host *host)
>
>                         curr = min_t(u32, curr, SDHCI_MAX_CURRENT_LIMIT);
>                         max_current_caps =
> -                               (curr << SDHCI_MAX_CURRENT_330_SHIFT) |
> -                               (curr << SDHCI_MAX_CURRENT_300_SHIFT) |
> -                               (curr << SDHCI_MAX_CURRENT_180_SHIFT);
> +                               FIELD_PREP(SDHCI_MAX_CURRENT_330_MASK, curr) |
> +                               FIELD_PREP(SDHCI_MAX_CURRENT_300_MASK, curr) |
> +                               FIELD_PREP(SDHCI_MAX_CURRENT_180_MASK, curr);
>                 }
>         }
>
>         if (host->caps & SDHCI_CAN_VDD_330) {
>                 ocr_avail |= MMC_VDD_32_33 | MMC_VDD_33_34;
>
> -               mmc->max_current_330 = ((max_current_caps &
> -                                  SDHCI_MAX_CURRENT_330_MASK) >>
> -                                  SDHCI_MAX_CURRENT_330_SHIFT) *
> -                                  SDHCI_MAX_CURRENT_MULTIPLIER;
> +               mmc->max_current_330 = FIELD_GET(SDHCI_MAX_CURRENT_330_MASK,
> +                                                max_current_caps) *
> +                                               SDHCI_MAX_CURRENT_MULTIPLIER;
>         }
>         if (host->caps & SDHCI_CAN_VDD_300) {
>                 ocr_avail |= MMC_VDD_29_30 | MMC_VDD_30_31;
>
> -               mmc->max_current_300 = ((max_current_caps &
> -                                  SDHCI_MAX_CURRENT_300_MASK) >>
> -                                  SDHCI_MAX_CURRENT_300_SHIFT) *
> -                                  SDHCI_MAX_CURRENT_MULTIPLIER;
> +               mmc->max_current_300 = FIELD_GET(SDHCI_MAX_CURRENT_300_MASK,
> +                                                max_current_caps) *
> +                                               SDHCI_MAX_CURRENT_MULTIPLIER;
>         }
>         if (host->caps & SDHCI_CAN_VDD_180) {
>                 ocr_avail |= MMC_VDD_165_195;
>
> -               mmc->max_current_180 = ((max_current_caps &
> -                                  SDHCI_MAX_CURRENT_180_MASK) >>
> -                                  SDHCI_MAX_CURRENT_180_SHIFT) *
> -                                  SDHCI_MAX_CURRENT_MULTIPLIER;
> +               mmc->max_current_180 = FIELD_GET(SDHCI_MAX_CURRENT_180_MASK,
> +                                                max_current_caps) *
> +                                               SDHCI_MAX_CURRENT_MULTIPLIER;
>         }
>
>         /* If OCR set by host, use it instead. */
> diff --git a/drivers/mmc/host/sdhci.h b/drivers/mmc/host/sdhci.h
> index d7f1441b0fc3..2ff98891bf25 100644
> --- a/drivers/mmc/host/sdhci.h
> +++ b/drivers/mmc/host/sdhci.h
> @@ -233,13 +233,10 @@
>  #define  SDHCI_SUPPORT_HS400   0x80000000 /* Non-standard */
>
>  #define SDHCI_MAX_CURRENT              0x48
> -#define  SDHCI_MAX_CURRENT_LIMIT       0xFF
> -#define  SDHCI_MAX_CURRENT_330_MASK    0x0000FF
> -#define  SDHCI_MAX_CURRENT_330_SHIFT   0
> -#define  SDHCI_MAX_CURRENT_300_MASK    0x00FF00
> -#define  SDHCI_MAX_CURRENT_300_SHIFT   8
> -#define  SDHCI_MAX_CURRENT_180_MASK    0xFF0000
> -#define  SDHCI_MAX_CURRENT_180_SHIFT   16
> +#define  SDHCI_MAX_CURRENT_LIMIT       GENMASK(7, 0)
> +#define  SDHCI_MAX_CURRENT_330_MASK    GENMASK(7, 0)
> +#define  SDHCI_MAX_CURRENT_300_MASK    GENMASK(15, 8)
> +#define  SDHCI_MAX_CURRENT_180_MASK    GENMASK(23, 16)
>  #define   SDHCI_MAX_CURRENT_MULTIPLIER 4
>
>  /* 4C-4F reserved for more max current */
> --
> 2.25.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
