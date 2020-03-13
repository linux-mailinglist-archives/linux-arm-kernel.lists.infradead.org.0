Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 982FF185206
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 00:04:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZnLFJemX8IJgqNsF0Syb9UUUsYdAv23IXh6V6SaSjI=; b=V2JZOu1LwBhfhP
	gcs/r3Hw+iTEGZggYAh5XU0x4nUK7jzSEQzDJYET7A8VeqKXY9vOnMs4tj9mZpqVxmg9TyZCaxPrs
	Gckzs50UNmomKgOMKMhntBSIaMPXTM0Ddd6o1z/b2iU4B/VcKAQwioDq2+ZH6OtrSs4miLH2pVMO8
	tIIVv/YRFER2Ah/AxXmeinKh9WE94akFXUD8Lr60+E8gSHxkQ3P2oYxD2jydcbZg8KwEOGn9XnKJl
	QpKvTUOhn7BM44iJnHT+ZtFiC3efAS1WvPIGTbeSG+Pv8leaRmhfK8++NCnQS4PFFk56m+5AmI50p
	1z9tH96hCwBDlfRFOHxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCtLe-0005sE-UR; Fri, 13 Mar 2020 23:04:10 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCtLX-0005rZ-N2
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 23:04:05 +0000
Received: by mail-ua1-x941.google.com with SMTP id 9so3763107uav.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 16:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RS54kqU4ZoL/JYf9xb8FmVEyuposBptYBdg1XhxTjvU=;
 b=Wm2F80U/qMBMSKwzTlzGHa6o1sLnPfF3HvOrwUtm0NxjB+l1CPOtDjpjcN7UGsEaXs
 MJkWKdzoiWZBrVH/YKlVsWtLo/y0pmgZtOQtPI/fWesyUvta/tmr5Sc6A4cLNQPPJQHr
 ZbXhPrL1eHpHoounZ1UpwBb7q46D7oRaDqqU0WOgfzjI3QtPs2sMHHQUUL9d/8R8lGyU
 Wt8ILFTgOQC3fwRuTQj49ZyL3RmQya6KcGA9QgtXCW9LewqD8Qkj806K00ZciJmlIrKU
 mKsWXvvyBVmcT5eg2mGo4uXDKG3lgiQwR3e8W7+umbSZDImAW83qc49BeY760W2cbWMB
 /+qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RS54kqU4ZoL/JYf9xb8FmVEyuposBptYBdg1XhxTjvU=;
 b=TOqvbRvzCGxOnFQyHiT86vKFhEuFf0oIITM+wsgvXIF4m5BwSjON8s1wWJVPXtt6ue
 2ttxqCdxBVS5r2LHxg7fVAq0xoCQ6/MpQHUh0h6UU1kU7O8IksfEJuJwR6fJgvVoGspW
 g1dKTGy6uyyDEnQTLREdDXeLZfaNTjCK2xJfo5W4x8e4G9xpZYDdLrXcw4P2tSlFFxBI
 ay/KNWWsfU5kVxzOOuMFxrNa+3xjyKDI/I80jHUb4OfErKMKezT8DTuwhV+JKXNVjJz8
 aJJiJ8sKUl7a9wjRW+D5BMy3W7zugdH6+Ut+1IBES0N1GvgkMZKHeAGaDzi3sEVbg/9h
 guGQ==
X-Gm-Message-State: ANhLgQ2D2QKXKmWLHTYn9hEltRttiupCN4CNM4/pt3tmM8p4u4IQHdEy
 IE17mPhwjPAHLJtG7mtsnSjYmMaYc8RnvZQ3tGIPXA==
X-Google-Smtp-Source: ADFU+vslrgWZ+WwLQNF/SvQm9l+ZtDJHO/NTwCrNcP545NTgh6V4fcUru4452BxUtt7jtERTCU5sKZW85KUcjRGmknk=
X-Received: by 2002:ab0:7381:: with SMTP id l1mr10024983uap.104.1584140641580; 
 Fri, 13 Mar 2020 16:04:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200312142904.232822-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200312142904.232822-1-tudor.ambarus@microchip.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Sat, 14 Mar 2020 00:03:25 +0100
Message-ID: <CAPDyKFpCnXri=Lj8kDUgWn-zHRudLeOvegDjQakzckR7OndbXA@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-of-at91: Display clock changes for debug
 purpose only
To: Tudor.Ambarus@microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_160403_816621_BD4227E1 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Ludovic Desroches <Ludovic.Desroches@microchip.com>,
 Cristian.Birsan@microchip.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Mar 2020 at 15:29, <Tudor.Ambarus@microchip.com> wrote:
>
> From: Cristian Birsan <cristian.birsan@microchip.com>
>
> The sdhci_at91_set_clks_presets() function is called multiple times
> at runtime and the messages are shown on the console. Display clk mul,
> gck rate and clk base for debug porpose only.
>
> Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/sdhci-of-at91.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
> index ab2bd314a390..88f17abb69a7 100644
> --- a/drivers/mmc/host/sdhci-of-at91.c
> +++ b/drivers/mmc/host/sdhci-of-at91.c
> @@ -204,8 +204,8 @@ static int sdhci_at91_set_clks_presets(struct device *dev)
>         /* Set capabilities in ro mode. */
>         writel(0, host->ioaddr + SDMMC_CACR);
>
> -       dev_info(dev, "update clk mul to %u as gck rate is %u Hz and clk base is %u Hz\n",
> -                clk_mul, gck_rate, clk_base_rate);
> +       dev_dbg(dev, "update clk mul to %u as gck rate is %u Hz and clk base is %u Hz\n",
> +               clk_mul, gck_rate, clk_base_rate);
>
>         /*
>          * We have to set preset values because it depends on the clk_mul
> --
> 2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
