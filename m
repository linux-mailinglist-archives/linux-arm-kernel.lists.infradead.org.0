Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 111D3DC344
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 12:59:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Nj2Iy6GzQqpU/S0zl3tMtMYciOzs1j0NLI94ZgMjQw=; b=cXbu20eugLiFDv
	dFt3yoVIGRrCSNhE2DfNP2NifP0zd+Urgl4jrApXSsshKY+RCJbkuTByWgrlgHrRPAX3kQHpZfIhZ
	Q//HUUeGtmn++zWJ+UtfWjVHNO7QhxlMuIpVSThcn1jbNVbyTSFdhTIQlqmoajefLo98mK0AEfiLE
	FCo3pXxRtgMVapv3da9ixodGPsNn7drL8vjVJIYHjADWuIn2Z3emLxp71/kfGlPn0YPhrgCZmu115
	gnckPRX/9tGmbBPe7Yw8/uKv2FDwATnH79vH8YzLrzu71Iby6O9lFxi4mbgCePpjhs4MgY8R+z15s
	W6l4h6m+N6m1HH7/aOgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPyF-0007dx-NP; Fri, 18 Oct 2019 10:58:59 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPy4-0007cy-6d
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 10:58:49 +0000
Received: by mail-vs1-xe41.google.com with SMTP id z14so3702704vsz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 03:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Rio9HHOlkvh+lIpCQASjDvFu34ch6yz1YASODTUfN2A=;
 b=x+ivwMa1fuOo73+TkPEdt11VJpA5s5IaNM4sh0A4umv+Kpq/SIrNSspl+Tx6BxkHYY
 RGSVUmvMZ49HKAPY82E2W2EXufUFG0ArEJgsKO2irYjk/IFl7cZriGK8qRvmlpM5DiI4
 cW4RyJmj6uE0YSjjvo3dcX10dzCulzvu3Wdu8JdDMZA8ZyqvmS1gBcQtAT6sZMSEGUxe
 b3hhe8+ibWVBQRUWstv/Fvg1kRt6EKrLFHH+vqY7nvhAYcBSj/NDyg1zXhKZySE4005U
 /Gbap+Mi81K6+uIXOrxUfYlABOUqEqwZBfS0dsqwISFWanRaHb3jm1VdybIarZTQFU0m
 4jfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Rio9HHOlkvh+lIpCQASjDvFu34ch6yz1YASODTUfN2A=;
 b=hb7X6gqivLDob3mlKVSJyzuoeQPpMXls7iKwyTe7AAVwm2yy1j5jiXrw4pFmcRUAdt
 wvAxCn08Raf4JQrvzj8T28qVS8IRfsJlay7oOxGhtf36fZ3BH3gTLAvU3OENTx542yom
 kwBSrQID2cMega+Rg3eRyt2c23Cqbqc0gaIzr5ziOAnTjZemVfV8McZIhVKBYnnvfCt+
 HcR9W5i6VSikuKCim10Yn/ELDbBvZjH5LqCSdrqbRjJBfRmlqZSsn+ivYzK1t06umaJR
 YsuOjzCgTak9HN1+Ry2TXsifamnrzZyEWAgWkm/lIFvf9AKtYmpG218WjoS//jMlAMkA
 9JVg==
X-Gm-Message-State: APjAAAVQUKBbsXSsKIyeXNDdClj26NSuLyW7nMsp17UjujDCaai+1rlb
 OQohXiN/IwlhLX2Ba66wzmSUzNkt8oZvpMCJLS9dxg==
X-Google-Smtp-Source: APXvYqwRBr47REEzkA0e8ZYJ3EAkV4RqwFlssr91UqI3z8UAFs6Fwd6iaf/97SDUNB8MbcQd5ZnSNa99yYm/Z5IUQR4=
X-Received: by 2002:a67:cf05:: with SMTP id y5mr5230380vsl.34.1571396327014;
 Fri, 18 Oct 2019 03:58:47 -0700 (PDT)
MIME-Version: 1.0
References: <4d269f30b1122487a2b5c8b48e24f78f2b75a509.1570537903.git.nicolas.ferre@microchip.com>
In-Reply-To: <4d269f30b1122487a2b5c8b48e24f78f2b75a509.1570537903.git.nicolas.ferre@microchip.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 18 Oct 2019 12:58:10 +0200
Message-ID: <CAPDyKFqcOKhqza=Gbjbwim1no2_NBLEzrq6JRoK_7U9hGXL5Xg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: sdhci-of-at91: add the
 microchip,sdcal-inverted property
To: Nicolas Ferre <nicolas.ferre@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_035848_253310_02B5F249 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
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
> Add the specific microchip,sdcal-inverted property to at91 sdhci
> device binding.
> This optional property describes how the SoC SDCAL pin is connected.
> It could be handled at SiP, SoM or board level.
>
> This property read by at91 sdhci driver will allow to put in place a
> software workaround that would reduce power consumption.
>
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/sdhci-atmel.txt | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> index 1b662d7171a0..503c6dbac1b2 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> @@ -9,6 +9,11 @@ Required properties:
>  - clocks:              Phandlers to the clocks.
>  - clock-names:         Must be "hclock", "multclk", "baseclk";
>
> +Optional properties:
> +- microchip,sdcal-inverted: when present, polarity on the SDCAL SoC pin is
> +  inverted. The default polarity for this signal is described in the datasheet.
> +  For instance on SAMA5D2, the pin is usually tied to the GND with a resistor
> +  and a capacitor (see "SDMMC I/O Calibration" chapter).
>
>  Example:
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
