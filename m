Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2916E1E5CE9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 12:16:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VOXwDi2NAwa3CbyZooH/HbLjb65x7DgAi57zWO1Za6I=; b=FvgxKN7meOJAu/
	cl55FYDvJzk0G6WvxWhZqfp7Mpcrbph+NSK1MncMX9V/qzT0/4yeRCU7LRvKaJAvBExMIa4BpZhLi
	GG34AXKGVwLKdRZZgOV9Toh7ENbr/hhABNf6f3aCV5tuiUTFfA84g8gwVj0mcyMi/l/JHkSfol7hh
	Ki7dm9x7mL/zvlbKh8QTeHyrysKMug7sRjC40/YiivtkrIsDT1BgYwmV5xJMeOKLW+/geKqjZRZ5K
	uH0RNrZ60Xn9WlQp77JbSXVV5A/sRF3hfEVvTm0gr+MsrF6dPhcMcpkzTJn3Onnj3ovTwpZ9aBUDQ
	YbeZPdE3RDtottYHhX2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeFaB-0000QG-4K; Thu, 28 May 2020 10:16:15 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeFZK-0008Iq-0P
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 10:15:24 +0000
Received: by mail-ua1-x944.google.com with SMTP id r9so4798367ual.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 03:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ud/RiagjQwezZ9O6WViaS3IQ8v4tVVsn5ht8/yzb11s=;
 b=DhWW2TZaU6JSigxodhdP2DkzM4mSPNd/RucxhTUXSsjV2pHcFpvc8dEh3Ov7JMQxW6
 fsUmTCaDFFHufNAajsvLIzzYGP27pmDxmGitL7edYHfBuuBBtFXfv/oGTsfoH/k9HpXO
 YFjP318+AFWQO5KHD3GxtTJLxRgCuuogI11pGC2wv09t42wptDew4J71VpJrkm0yNN7X
 ztL9NDef6xu6ZxXatZVug/HPuCc7NzpsKknCfdtuZQ8WKAaG23yuNJ8T6dCSkBhWfVJQ
 5pvbOSmYg8z0luYXa051rY+OPSqgN1Sl+Hdx8FpAGQhONh4SiM57g8CEvgyQT3b44vPz
 3pNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ud/RiagjQwezZ9O6WViaS3IQ8v4tVVsn5ht8/yzb11s=;
 b=uXU3yNodPrtMcO8MHWFyX3NyxlQGv9gVOn6oYhWtLz+WOtv6otLNz+2jWePLX7Pd5K
 kRvGJzZ5gcY/FUxQbDPbzKOvGifQEbNIjfd25/lVouJswZSdm2zu44hSq0uApBijHJPZ
 rhIYOOCB6UuDWAfCypa1amZgPXzQ2vIHqQYax4qycIayufghCs/bTs03xJuG91jw5DPn
 o1X0Otehklw9gT0szGq6y5BnJ4To51rT4HhAH9DNbAWpeTfaoJYky3CzAighVa6ThpY+
 6i0iIH/iX6T9oJMbSeLuEdVIA7eI6j8JNXYC3+hdhIn159bkRJJ/i+9NPuBE4XyGyFEy
 2jgw==
X-Gm-Message-State: AOAM5305ZZoaApDep7MaAh4BJC1FCky9js7pjkIfm2craOGXYdDbGskk
 k9Vn9DK6r5OLFOYjWw+qY7rUUnhDs8UBkSCf75sMCA==
X-Google-Smtp-Source: ABdhPJzzUCLBDPc9vy6c4Wlx/ry5lzfnFWaQGL62VHDyVauoVjIMYJ4ubcUNE8X304skZQRC7fxZJhLStDrVyXFD/q4=
X-Received: by 2002:a9f:3701:: with SMTP id z1mr1467376uad.100.1590660920925; 
 Thu, 28 May 2020 03:15:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200527105659.142560-1-eugen.hristev@microchip.com>
In-Reply-To: <20200527105659.142560-1-eugen.hristev@microchip.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 28 May 2020 12:14:44 +0200
Message-ID: <CAPDyKFrQXNVbwKrt10kZUBd-edGq+GbLM2rB+vsRrnd+JE_gLw@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-of-at91: fix CALCR register being rewritten
To: Eugen Hristev <eugen.hristev@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_031522_426028_55E3CFE3 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 27 May 2020 at 12:57, Eugen Hristev <eugen.hristev@microchip.com> wrote:
>
> When enabling calibration at reset, the CALCR register was completely
> rewritten. This may cause certain bits being deleted unintentedly.
> Fix by issuing a read-modify-write operation.
>
> Fixes: 727d836a375a ("mmc: sdhci-of-at91: add DT property to enable calibration on full reset")
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>

Applied for next and by adding a stable tag, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/sdhci-of-at91.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
> index 25f4e0f4f53b..1ece2c50042c 100644
> --- a/drivers/mmc/host/sdhci-of-at91.c
> +++ b/drivers/mmc/host/sdhci-of-at91.c
> @@ -121,9 +121,12 @@ static void sdhci_at91_reset(struct sdhci_host *host, u8 mask)
>             || mmc_gpio_get_cd(host->mmc) >= 0)
>                 sdhci_at91_set_force_card_detect(host);
>
> -       if (priv->cal_always_on && (mask & SDHCI_RESET_ALL))
> -               sdhci_writel(host, SDMMC_CALCR_ALWYSON | SDMMC_CALCR_EN,
> +       if (priv->cal_always_on && (mask & SDHCI_RESET_ALL)) {
> +               u32 calcr = sdhci_readl(host, SDMMC_CALCR);
> +
> +               sdhci_writel(host, calcr | SDMMC_CALCR_ALWYSON | SDMMC_CALCR_EN,
>                              SDMMC_CALCR);
> +       }
>  }
>
>  static const struct sdhci_ops sdhci_at91_sama5d2_ops = {
> --
> 2.25.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
