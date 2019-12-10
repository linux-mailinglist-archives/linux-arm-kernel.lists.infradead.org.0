Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C66118415
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 10:51:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1S6Fx/uGV4+Dv9caJ0VuqHGuuhZI3g0K2gTzyAIhg/Y=; b=e9G3GDxLPoiEFR
	WJikhb7ed1Iv+BWMcYMUs0650XdADTRY+1EOqv4UCqSLYW+Yc81nmD5Rfd4kR5Jb67x4d2F8Hmv71
	y9lvorvdUVH6bCL16vEChCsx8RXhEGPPDYMin+9k1ebQG5/0dvAFSPDxsawt5HTISbpRHdGZoq7lz
	9S/aau/t5SQVpfmVJl4HztXiyQjHOO1ll4mOHHS6eQdyKwZpwbAgjyUt5UDPBFEf1JbQtJGAaoj0O
	eFqrVl4lhC9uXBrJ+PinioUYSPi+ZjL+L2poCsF1SNDPePu/JxGvjvjdNwP2AW5cCN1spq4hqdvRr
	x6/JNxXtvI3vFL0tO/Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iecB3-00056E-TC; Tue, 10 Dec 2019 09:51:33 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iecAv-00055N-5B
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 09:51:26 +0000
Received: by mail-vk1-xa42.google.com with SMTP id o187so5394901vka.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 01:51:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i53YOPIF4tZH71cdZd3N/wfk/VGV4lMlcYM4QZMIJfo=;
 b=LGd2eC5lkimkmaZ3Njofp0kB/S8H0Wm9blwDIUXk+fSx60a/IysurK9R509dQNx75L
 3ObbamEzRKIneBG/3e6kK09eD6M2Xjzp9K/ttwArqlEEZT/mnrZDnp0Zb/Rf93Wkgb43
 asezSds8ySbKZxuyFt0Z6RA8liimQK7jgut6nQnarr9ChA7MWD58yvhdUEXtkrwzeClM
 Iv44zwEJgd4HJuTuihMbyT7O/fM9TzBF4NVCRmIbTyJR1rXtGskOFUHEbYFeHnT1pi0R
 j3wPfbEZ9HAoFj+r5+D3glWIVQNGFqGMBh9T3zE0S6+v99QRaz9o6BkDAb3QaNkokKGi
 aQ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i53YOPIF4tZH71cdZd3N/wfk/VGV4lMlcYM4QZMIJfo=;
 b=GqZA+yU5daPu6dnLX/Dwz0d+tBHQvExBlZA6G+7PjRtYRcgli88rdfSOAL2M02HXBE
 CEpDHORYLHpJGkWiyjqwF/o6mumNyuKCOJ752CNNG2lSi4+JXRgkbmjr0twkJdolmV4X
 hyC0hwUTcp/Wlh9CTxsZeylL2njwV8WRHRweZclqN4jHqupGMfHQl7xnowT+fF4uaswc
 DP8P8oKfd1RJWhY8qH3/dn6gEBFVUeGfRMvBweuyyvzT1n8SNLR6fBMDsh8DZDFnxrv9
 3/7l7sLIA0AnD2ZsVAxXbg9wRJtlUOyzE4lqHc3amksoKfpp1yPC6Y30S3d0JP8KEeIe
 Jqbw==
X-Gm-Message-State: APjAAAUM6ZN18JrQpI8WAiMunKVi3Wmax7Eu6WeWTK/jmg5KKwQfvjrt
 QLIYLXOrjuiMFUra4d2UiJ/bnBlWJ9puG3Q8gEzc1DgY
X-Google-Smtp-Source: APXvYqwGViwBl874UU2PS2zg+6cNGxu0DAuVbaL/ZJ6A8w922cBIox0P2HENEKQLpaVxO7zmetO8tUwJQdTAEqPuVu8=
X-Received: by 2002:a05:6122:5b:: with SMTP id
 q27mr27979454vkn.43.1575971483143; 
 Tue, 10 Dec 2019 01:51:23 -0800 (PST)
MIME-Version: 1.0
References: <20191128074522.69706-1-ludovic.desroches@microchip.com>
In-Reply-To: <20191128074522.69706-1-ludovic.desroches@microchip.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 10 Dec 2019 10:50:46 +0100
Message-ID: <CAPDyKFpCcOxh1+ZniZvxMR=bMCY0S6bk0FAzX2D=GMxMYea_bg@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: sdhci-of-at91: new compatible string
 and update properties
To: Ludovic Desroches <ludovic.desroches@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_015125_198666_3033CC92 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
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
 Rob Herring <robh@kernel.org>,
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
> There is a new compatible string for the SAM9X60 sdhci device. It involves
> an update of the properties about the clocks stuff.
>
> Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>
> Changes:
> - v3: rebase due to conflict with Nicolas' patch
> - v2: remove the extra example and fix node label
>
>  .../devicetree/bindings/mmc/sdhci-atmel.txt         | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> index 503c6dbac1b2..69edfd4d3922 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> @@ -5,11 +5,16 @@ Documentation/devicetree/bindings/mmc/mmc.txt and the properties used by the
>  sdhci-of-at91 driver.
>
>  Required properties:
> -- compatible:          Must be "atmel,sama5d2-sdhci".
> +- compatible:          Must be "atmel,sama5d2-sdhci" or "microchip,sam9x60-sdhci".
>  - clocks:              Phandlers to the clocks.
> -- clock-names:         Must be "hclock", "multclk", "baseclk";
> +- clock-names:         Must be "hclock", "multclk", "baseclk" for
> +                       "atmel,sama5d2-sdhci".
> +                       Must be "hclock", "multclk" for "microchip,sam9x60-sdhci".
>
>  Optional properties:
> +- assigned-clocks:     The same with "multclk".
> +- assigned-clock-rates The rate of "multclk" in order to not rely on the
> +                       gck configuration set by previous components.
>  - microchip,sdcal-inverted: when present, polarity on the SDCAL SoC pin is
>    inverted. The default polarity for this signal is described in the datasheet.
>    For instance on SAMA5D2, the pin is usually tied to the GND with a resistor
> @@ -17,10 +22,12 @@ Optional properties:
>
>  Example:
>
> -sdmmc0: sdio-host@a0000000 {
> +mmc0: sdio-host@a0000000 {
>         compatible = "atmel,sama5d2-sdhci";
>         reg = <0xa0000000 0x300>;
>         interrupts = <31 IRQ_TYPE_LEVEL_HIGH 0>;
>         clocks = <&sdmmc0_hclk>, <&sdmmc0_gclk>, <&main>;
>         clock-names = "hclock", "multclk", "baseclk";
> +       assigned-clocks = <&sdmmc0_gclk>;
> +       assigned-clock-rates = <480000000>;
>  };
> --
> 2.24.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
