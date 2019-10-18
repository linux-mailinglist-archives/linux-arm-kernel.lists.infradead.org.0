Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DA1DC351
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 12:59:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5EU5RGvFhYpHy8v4FzgCsFkSxnASI9Ve3B3SJIZuiwQ=; b=AYkneU1T21Swy4
	9Z9tD7r7w7/CrmJqvJaZgVS3+78KyhFa2lxxSNBefHnlC407GkFWexzCDN2E6hhY1YuMJgNqJ6HPf
	uoD5BmGQeBJI1IHBtjXjB4E0p7ZbbawOWJ0/jXwExMIGFmKmqmP1JFuMnSSxPL3Qvp0WveCIFrSEj
	3jBIr0P//KuQJ8Q1sfgNaZkZBHcBrvOZFKFSPMyhJsHxGZmnuJwgIuvFi8B/gztediHfaKLt5gbJ6
	fhFPO1jAVKoQ1nKGEn3S7uUJwuzsOWFsyjoi2ku9sOaULZyx96NBZmynZG4t4C01IvWw411ycJo/B
	BTUlGvssc1d8b+gBU3BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPyi-0007xz-H4; Fri, 18 Oct 2019 10:59:28 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPy7-0007du-Dr
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 10:58:53 +0000
Received: by mail-ua1-x942.google.com with SMTP id 107so1595193uau.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 03:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ca95FDLqVIwTMxVi4C0ayivApjVlDjhZW98VO/akMgw=;
 b=txob3QU1ZZTBr0fz4z1FAnmHKFKvTJ+uRKGQjWfv+3JhC2sJ1lflA9qM3Kst2lbjmb
 UU2KSKOk2eLmzH1mxykoepji9eYZNIvnZa72C/jt4hcAlBVJleXvYm9YDNZMxvoQWBNO
 VF4Bxr9D8QmRL2D8MZ9EWW+I3n3etbUrDnpYt/ZC+o0Wj+c+ix3TSf8+Suhyeh115NUC
 tStpPj7Ror60+sjVEEZQa7O0LtgYRjv0BjsUKjv5uA4fe1Z1Q5ouuTwEVwfx0V85FIZa
 zWBehNZCpxNuuobsMOgM96pxaT527zwyBf2bM638+HGqDRPGYtoj++kskg67e+ENTC7Y
 gLLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ca95FDLqVIwTMxVi4C0ayivApjVlDjhZW98VO/akMgw=;
 b=ZKb0SQNaLKe/gqZDw80ockbd7ob69dQ9QlTqDxzMfNq0MSFz/FMWtEZgcDrm3ryzml
 d25zn2ADWVmjtpJ8OHQQIeM46ya/US3i/Iv7LT34Ic4nLoIEr/c/JPOpsz9mAIIzrV6F
 C8PJG7hXnqkiDcOgOo59Y8Q1f0s19WJ0F7qJtxVZ11PI6QudtfTMJpV4t3Xk6AY5PNtO
 vLJvgLA7GO+gCqP4o8dQOy0YEEYeRhKXyVFnUgSCQs9v8hu1MDoSvLb0J0owIcLKT2eE
 9uCxD+ZnC8+PAB/CAagrBIFLKgavNHRP002GNLaplIvUoz7MNBPnD1cIWyCGkG3ZH4to
 4Rpw==
X-Gm-Message-State: APjAAAU3r1RWgoNpIUHfZU4AXgXZHRFYJx4h5oR78/jRFbup1hRKxmCh
 dYjB+CT6nHr9W4QuWKl+rcFX0VPAQyWbbvSiAAsbvg==
X-Google-Smtp-Source: APXvYqziBvPUdA/pLLnCkQCMGiBKL9xGlNYI+FQR3EGKYfmEWMjStiFUlTUn4Sou39IKFohPDlanYzU+rI6rRKbtiJo=
X-Received: by 2002:ab0:348c:: with SMTP id c12mr534722uar.100.1571396330137; 
 Fri, 18 Oct 2019 03:58:50 -0700 (PDT)
MIME-Version: 1.0
References: <4d269f30b1122487a2b5c8b48e24f78f2b75a509.1570537903.git.nicolas.ferre@microchip.com>
 <d25c8f909d039938a5696e8de32396cf2aaf54b7.1570537903.git.nicolas.ferre@microchip.com>
In-Reply-To: <d25c8f909d039938a5696e8de32396cf2aaf54b7.1570537903.git.nicolas.ferre@microchip.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 18 Oct 2019 12:58:14 +0200
Message-ID: <CAPDyKFrR810Yb+CqrhvJpSPW0yDEuWsNBysnbEq=3YHcOsVLhw@mail.gmail.com>
Subject: Re: [PATCH 2/2] mmc: sdhci-of-at91: add DT property to enable
 calibration on full reset
To: Nicolas Ferre <nicolas.ferre@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_035851_485101_19839DD1 
X-CRM114-Status: GOOD (  22.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 8 Oct 2019 at 14:34, Nicolas Ferre <nicolas.ferre@microchip.com> wrote:
>
> Add a property to keep the analog calibration cell powered.
> This feature is specific to the Microchip SDHCI IP and outside
> of the standard SDHCI register map.
>
> By always keeping it on, after a full reset sequence, we make sure
> that this feature is activated and not disabled.
>
> We expose a hardware property to the DT as this feature can be used
> to adapt SDHCI behavior vs. how the SDCAL SoC pin is connected
> on the board.
>
> Note that managing properly this property would reduce
> power consumption on some SAMA5D2 SiP revisions.
>
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/sdhci-of-at91.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
> index e7d1920729fb..9571c4a882a9 100644
> --- a/drivers/mmc/host/sdhci-of-at91.c
> +++ b/drivers/mmc/host/sdhci-of-at91.c
> @@ -27,6 +27,9 @@
>  #define SDMMC_CACR     0x230
>  #define                SDMMC_CACR_CAPWREN      BIT(0)
>  #define                SDMMC_CACR_KEY          (0x46 << 8)
> +#define SDMMC_CALCR    0x240
> +#define                SDMMC_CALCR_EN          BIT(0)
> +#define                SDMMC_CALCR_ALWYSON     BIT(4)
>
>  #define SDHCI_AT91_PRESET_COMMON_CONF  0x400 /* drv type B, programmable clock mode */
>
> @@ -35,6 +38,7 @@ struct sdhci_at91_priv {
>         struct clk *gck;
>         struct clk *mainck;
>         bool restore_needed;
> +       bool cal_always_on;
>  };
>
>  static void sdhci_at91_set_force_card_detect(struct sdhci_host *host)
> @@ -116,10 +120,17 @@ static void sdhci_at91_set_uhs_signaling(struct sdhci_host *host,
>
>  static void sdhci_at91_reset(struct sdhci_host *host, u8 mask)
>  {
> +       struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> +       struct sdhci_at91_priv *priv = sdhci_pltfm_priv(pltfm_host);
> +
>         sdhci_reset(host, mask);
>
>         if (host->mmc->caps & MMC_CAP_NONREMOVABLE)
>                 sdhci_at91_set_force_card_detect(host);
> +
> +       if (priv->cal_always_on && (mask & SDHCI_RESET_ALL))
> +               sdhci_writel(host, SDMMC_CALCR_ALWYSON | SDMMC_CALCR_EN,
> +                            SDMMC_CALCR);
>  }
>
>  static const struct sdhci_ops sdhci_at91_sama5d2_ops = {
> @@ -345,6 +356,14 @@ static int sdhci_at91_probe(struct platform_device *pdev)
>
>         priv->restore_needed = false;
>
> +       /*
> +        * if SDCAL pin is wrongly connected, we must enable
> +        * the analog calibration cell permanently.
> +        */
> +       priv->cal_always_on =
> +               device_property_read_bool(&pdev->dev,
> +                                         "microchip,sdcal-inverted");
> +
>         ret = mmc_of_parse(host->mmc);
>         if (ret)
>                 goto clocks_disable_unprepare;
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
