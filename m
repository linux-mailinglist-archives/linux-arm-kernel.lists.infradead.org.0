Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4484E118419
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 10:51:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jF4Kwh4UQHQXOTORYP5XQeezxzFkskB3vzonZIzExq0=; b=W+jQsSTxUcr3vt
	l6wrCIwYYtTFY8CwBj7yhX2uCzppxuh63cM2icos8DyWnx1+iT3OC1s5uLvhi9QhhbwPDvkyigCpu
	bgHosDkcbEw5Qxq3MNyb/prk6u2VbqrC94xEgv0O6bfOJ7MBj1SsFkg9RpHjFbZKxgNqY/cMFwEf1
	2q2BY8Ns8Kd1kYp+pR5PCsp6A6IORNPQbYvSyOpr/ZEBVTIdaR4QO2AJsZiB6rO01oW8FyTWvNhRl
	mfzuojgnY5vptF4kzT1vO1k5dALGUOC6cE5zSnCDtQdu0LqyxeuEoURiRGLs+H0RR4KaYcBtM9wWA
	BGsVPumRlhk13XDCce1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iecBG-0005FT-EV; Tue, 10 Dec 2019 09:51:46 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iecAz-00056M-CJ
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 09:51:31 +0000
Received: by mail-vs1-xe41.google.com with SMTP id y195so12569072vsy.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 01:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KMORO6YLurGC9coObMxz6fn2NzFCAetPjibkmjGyJDQ=;
 b=qg2idsjzuM2EuulQzs29kdk+EbcoL3LZeGdKFx4UZWJFOCsLHnmWc/hU73nthUZD+F
 arcP1pp32UjqCNm5/aPyoOH3mVM9F3flbtbe9u2HpPhFyBb8uaFp/t15yLayWsAjvmVD
 jjzXA5tO29AYwR82Qstx2Lg3ILrPBMLWlLGeXZje/PEVo0ei7BFhqpHzL5YUcHiQHETp
 70wHWykRYkNsgx2wwiyVZ1/CQZ6O1/bAVaXArRu1qJ7kbtHyOUSxpVp8ZQr5+DsYCl1D
 5mZwNwYGOE4o5is8DhOMS3vgfbp3OMflJ6d1pu44qdG5Ah4LWJYNN9dE08thuz4QrmkM
 Ws+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KMORO6YLurGC9coObMxz6fn2NzFCAetPjibkmjGyJDQ=;
 b=A5ayCZmfN2uI8Nn/wuqYrZVfbvAY84NTMIru4RkoyLCHz3D8RDXtGmmht1d5h9RdTZ
 ro7xw7a2RA10GQvHJnJYdCfmiB8a6lzacA+/7eURmjhsAUaJE5n7I6cWpVmnEOvYwQoe
 bheJ96rnRL6qiCm37hR9HDl2zqGF7RQ6JO1fvqZZIAoDXRKHxHRsK2xdxRH0blxjJp97
 N+tvEZNc3j3kivNmLO3lrcBc2oc5iF69+IoevdaWA0JLdJ/C7SQ3deqxT+kz7Wu9T8fl
 cAsl3rq4O7KINMNfUtwPIoLU43t7YYiH53a1XgEdrBfzfQGIxcKQjYA8fnp87suh/4yx
 CE6w==
X-Gm-Message-State: APjAAAVSPKmlWhLF9yiSBYr+Qe29teYrGfDof37Iwd0LqWrMoq3LbAGf
 yQisS5jN5PwzRHpWD+sS7JBErPPgIE7FUbw56JjGpA==
X-Google-Smtp-Source: APXvYqyqVsfloBxPx+OU7yT1yq+RRFLOjF9tbpSgQt+rFvvOjS8FfYO5WQc5l2AzCPayN08YsHD/0wd7QvMvEkOnnXY=
X-Received: by 2002:a05:6102:5d1:: with SMTP id
 v17mr24239747vsf.200.1575971487761; 
 Tue, 10 Dec 2019 01:51:27 -0800 (PST)
MIME-Version: 1.0
References: <20191128074522.69706-1-ludovic.desroches@microchip.com>
 <20191128074522.69706-2-ludovic.desroches@microchip.com>
In-Reply-To: <20191128074522.69706-2-ludovic.desroches@microchip.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 10 Dec 2019 10:50:51 +0100
Message-ID: <CAPDyKFrJmWTtJGT+KuPSVb_ywQ3uwwdYzipK=B_1_dBeuM5dMg@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] mmc: sdhci-of-at91: rework clocks management to
 support SAM9x60 device
To: Ludovic Desroches <ludovic.desroches@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_015129_474738_5C06029A 
X-CRM114-Status: GOOD (  29.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Eugen.Hristev@microchip.com,
 Adrian Hunter <adrian.hunter@intel.com>, claudiu.beznea@microchip.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 Nov 2019 at 08:45, Ludovic Desroches
<ludovic.desroches@microchip.com> wrote:
>
> In the SAM9x60 SoC, there are only two clocks instead of three for the
> SDHCI device. The base clk is no longer provided, it is generated
> internally from the mult clk.
>
> The values of the base clk and mul in the capabilities registers may not
> reflect the reality as the mult clk is a programmable clock which can take
> several rates. As we can't trust those values, take them from the clock
> tree and update the capabilities according to.
>
> As we can have the same pitfall, in some cases, with the SAMA5D2 Soc,
> stop relying on capabilities too.
>
> Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> Acked-by: Adrian Hunter <adrian.hunter@intel.com>


Applied for next, thanks!

Kind regards
Uffe


> ---
>
> Changes:
> - v4: fix typo for the capabilities register and remove extra
>   parentheses
> - v3: none
> - v2: none
>
>  drivers/mmc/host/sdhci-of-at91.c | 105 +++++++++++++++++--------------
>  1 file changed, 58 insertions(+), 47 deletions(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
> index 5959e394b416..b2a8c45c9c23 100644
> --- a/drivers/mmc/host/sdhci-of-at91.c
> +++ b/drivers/mmc/host/sdhci-of-at91.c
> @@ -33,7 +33,14 @@
>
>  #define SDHCI_AT91_PRESET_COMMON_CONF  0x400 /* drv type B, programmable clock mode */
>
> +struct sdhci_at91_soc_data {
> +       const struct sdhci_pltfm_data *pdata;
> +       bool baseclk_is_generated_internally;
> +       unsigned int divider_for_baseclk;
> +};
> +
>  struct sdhci_at91_priv {
> +       const struct sdhci_at91_soc_data *soc_data;
>         struct clk *hclock;
>         struct clk *gck;
>         struct clk *mainck;
> @@ -141,12 +148,24 @@ static const struct sdhci_ops sdhci_at91_sama5d2_ops = {
>         .set_power              = sdhci_at91_set_power,
>  };
>
> -static const struct sdhci_pltfm_data soc_data_sama5d2 = {
> +static const struct sdhci_pltfm_data sdhci_sama5d2_pdata = {
>         .ops = &sdhci_at91_sama5d2_ops,
>  };
>
> +static const struct sdhci_at91_soc_data soc_data_sama5d2 = {
> +       .pdata = &sdhci_sama5d2_pdata,
> +       .baseclk_is_generated_internally = false,
> +};
> +
> +static const struct sdhci_at91_soc_data soc_data_sam9x60 = {
> +       .pdata = &sdhci_sama5d2_pdata,
> +       .baseclk_is_generated_internally = true,
> +       .divider_for_baseclk = 2,
> +};
> +
>  static const struct of_device_id sdhci_at91_dt_match[] = {
>         { .compatible = "atmel,sama5d2-sdhci", .data = &soc_data_sama5d2 },
> +       { .compatible = "microchip,sam9x60-sdhci", .data = &soc_data_sam9x60 },
>         {}
>  };
>  MODULE_DEVICE_TABLE(of, sdhci_at91_dt_match);
> @@ -156,50 +175,37 @@ static int sdhci_at91_set_clks_presets(struct device *dev)
>         struct sdhci_host *host = dev_get_drvdata(dev);
>         struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
>         struct sdhci_at91_priv *priv = sdhci_pltfm_priv(pltfm_host);
> -       int ret;
>         unsigned int                    caps0, caps1;
>         unsigned int                    clk_base, clk_mul;
> -       unsigned int                    gck_rate, real_gck_rate;
> +       unsigned int                    gck_rate, clk_base_rate;
>         unsigned int                    preset_div;
>
> -       /*
> -        * The mult clock is provided by as a generated clock by the PMC
> -        * controller. In order to set the rate of gck, we have to get the
> -        * base clock rate and the clock mult from capabilities.
> -        */
>         clk_prepare_enable(priv->hclock);
>         caps0 = readl(host->ioaddr + SDHCI_CAPABILITIES);
>         caps1 = readl(host->ioaddr + SDHCI_CAPABILITIES_1);
> -       clk_base = (caps0 & SDHCI_CLOCK_V3_BASE_MASK) >> SDHCI_CLOCK_BASE_SHIFT;
> -       clk_mul = (caps1 & SDHCI_CLOCK_MUL_MASK) >> SDHCI_CLOCK_MUL_SHIFT;
> -       gck_rate = clk_base * 1000000 * (clk_mul + 1);
> -       ret = clk_set_rate(priv->gck, gck_rate);
> -       if (ret < 0) {
> -               dev_err(dev, "failed to set gck");
> -               clk_disable_unprepare(priv->hclock);
> -               return ret;
> -       }
> -       /*
> -        * We need to check if we have the requested rate for gck because in
> -        * some cases this rate could be not supported. If it happens, the rate
> -        * is the closest one gck can provide. We have to update the value
> -        * of clk mul.
> -        */
> -       real_gck_rate = clk_get_rate(priv->gck);
> -       if (real_gck_rate != gck_rate) {
> -               clk_mul = real_gck_rate / (clk_base * 1000000) - 1;
> -               caps1 &= (~SDHCI_CLOCK_MUL_MASK);
> -               caps1 |= ((clk_mul << SDHCI_CLOCK_MUL_SHIFT) &
> -                         SDHCI_CLOCK_MUL_MASK);
> -               /* Set capabilities in r/w mode. */
> -               writel(SDMMC_CACR_KEY | SDMMC_CACR_CAPWREN,
> -                      host->ioaddr + SDMMC_CACR);
> -               writel(caps1, host->ioaddr + SDHCI_CAPABILITIES_1);
> -               /* Set capabilities in ro mode. */
> -               writel(0, host->ioaddr + SDMMC_CACR);
> -               dev_info(dev, "update clk mul to %u as gck rate is %u Hz\n",
> -                        clk_mul, real_gck_rate);
> -       }
> +
> +       gck_rate = clk_get_rate(priv->gck);
> +       if (priv->soc_data->baseclk_is_generated_internally)
> +               clk_base_rate = gck_rate / priv->soc_data->divider_for_baseclk;
> +       else
> +               clk_base_rate = clk_get_rate(priv->mainck);
> +
> +       clk_base = clk_base_rate / 1000000;
> +       clk_mul = gck_rate / clk_base_rate - 1;
> +
> +       caps0 &= ~SDHCI_CLOCK_V3_BASE_MASK;
> +       caps0 |= (clk_base << SDHCI_CLOCK_BASE_SHIFT) & SDHCI_CLOCK_V3_BASE_MASK;
> +       caps1 &= ~SDHCI_CLOCK_MUL_MASK;
> +       caps1 |= (clk_mul << SDHCI_CLOCK_MUL_SHIFT) & SDHCI_CLOCK_MUL_MASK;
> +       /* Set capabilities in r/w mode. */
> +       writel(SDMMC_CACR_KEY | SDMMC_CACR_CAPWREN, host->ioaddr + SDMMC_CACR);
> +       writel(caps0, host->ioaddr + SDHCI_CAPABILITIES);
> +       writel(caps1, host->ioaddr + SDHCI_CAPABILITIES_1);
> +       /* Set capabilities in ro mode. */
> +       writel(0, host->ioaddr + SDMMC_CACR);
> +
> +       dev_info(dev, "update clk mul to %u as gck rate is %u Hz and clk base is %u Hz\n",
> +                clk_mul, gck_rate, clk_base_rate);
>
>         /*
>          * We have to set preset values because it depends on the clk_mul
> @@ -207,19 +213,19 @@ static int sdhci_at91_set_clks_presets(struct device *dev)
>          * maximum sd clock value is 120 MHz instead of 208 MHz. For that
>          * reason, we need to use presets to support SDR104.
>          */
> -       preset_div = DIV_ROUND_UP(real_gck_rate, 24000000) - 1;
> +       preset_div = DIV_ROUND_UP(gck_rate, 24000000) - 1;
>         writew(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
>                host->ioaddr + SDHCI_PRESET_FOR_SDR12);
> -       preset_div = DIV_ROUND_UP(real_gck_rate, 50000000) - 1;
> +       preset_div = DIV_ROUND_UP(gck_rate, 50000000) - 1;
>         writew(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
>                host->ioaddr + SDHCI_PRESET_FOR_SDR25);
> -       preset_div = DIV_ROUND_UP(real_gck_rate, 100000000) - 1;
> +       preset_div = DIV_ROUND_UP(gck_rate, 100000000) - 1;
>         writew(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
>                host->ioaddr + SDHCI_PRESET_FOR_SDR50);
> -       preset_div = DIV_ROUND_UP(real_gck_rate, 120000000) - 1;
> +       preset_div = DIV_ROUND_UP(gck_rate, 120000000) - 1;
>         writew(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
>                host->ioaddr + SDHCI_PRESET_FOR_SDR104);
> -       preset_div = DIV_ROUND_UP(real_gck_rate, 50000000) - 1;
> +       preset_div = DIV_ROUND_UP(gck_rate, 50000000) - 1;
>         writew(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
>                host->ioaddr + SDHCI_PRESET_FOR_DDR50);
>
> @@ -314,7 +320,7 @@ static const struct dev_pm_ops sdhci_at91_dev_pm_ops = {
>  static int sdhci_at91_probe(struct platform_device *pdev)
>  {
>         const struct of_device_id       *match;
> -       const struct sdhci_pltfm_data   *soc_data;
> +       const struct sdhci_at91_soc_data        *soc_data;
>         struct sdhci_host               *host;
>         struct sdhci_pltfm_host         *pltfm_host;
>         struct sdhci_at91_priv          *priv;
> @@ -325,17 +331,22 @@ static int sdhci_at91_probe(struct platform_device *pdev)
>                 return -EINVAL;
>         soc_data = match->data;
>
> -       host = sdhci_pltfm_init(pdev, soc_data, sizeof(*priv));
> +       host = sdhci_pltfm_init(pdev, soc_data->pdata, sizeof(*priv));
>         if (IS_ERR(host))
>                 return PTR_ERR(host);
>
>         pltfm_host = sdhci_priv(host);
>         priv = sdhci_pltfm_priv(pltfm_host);
> +       priv->soc_data = soc_data;
>
>         priv->mainck = devm_clk_get(&pdev->dev, "baseclk");
>         if (IS_ERR(priv->mainck)) {
> -               dev_err(&pdev->dev, "failed to get baseclk\n");
> -               return PTR_ERR(priv->mainck);
> +               if (soc_data->baseclk_is_generated_internally) {
> +                       priv->mainck = NULL;
> +               } else {
> +                       dev_err(&pdev->dev, "failed to get baseclk\n");
> +                       return PTR_ERR(priv->mainck);
> +               }
>         }
>
>         priv->hclock = devm_clk_get(&pdev->dev, "hclock");
> --
> 2.24.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
