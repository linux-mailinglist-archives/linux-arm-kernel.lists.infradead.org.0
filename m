Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41661133F8B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 11:45:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jkcLjl7RrXX5k8e3AoCd4iEuVRW3EbMZ0+yLG3Wd7Do=; b=sRR2OH/v2tM05T
	nDz0uknKrSJKMRP0+UNv0FSgjElHAX8WJ3p8RDgZm1lDSRz0YdOjt6PmMEN900WoztpoKg4mIecYg
	7nRM3lQH706H04lBpQP5wWgx7E4M7QFEu/EF29diMBEoPQV0W9yosXhmjDltbgP5+qVYJqeYU/PJS
	N4CwF4yCRemUWq4zMFswUF6xA3oUx8hLwmIjxXrnSuaCVPuWRAIIg/y4QAQ58PNOM0RyEseWss+P2
	kFZlyAzG3BqLaDccelzCFo2rUHliY5aDDHfQdadij/jcynoiydiXCa1eFEWallybN6OAe6jcFYGts
	pZN2b4cckDxBR1zi+8Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip8qG-0003hN-Q6; Wed, 08 Jan 2020 10:45:36 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip8q8-0003gh-AD
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 10:45:29 +0000
Received: by mail-wm1-x343.google.com with SMTP id 20so1948073wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 02:45:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cWNocU7eA9+Wp59TtXNSPoHKPg/gQFuCfBlz6EP4IJM=;
 b=XL4fjlnoCxTK5zuVeOatSIA0QPobR9ogTd6FCkUDTguco9kcRi9Tbnhk/6Vceo4ZRo
 jar35VEPwdo1p2/UGuWCkf22+E/TvJ2RGq1aHs9TUQHytq9JhAgi/QSsTYzpvaNXM1uH
 YtAXDpIYKRMyvRU7wONZ2e/Us8z48GwassZeYBUak8x3TTPT3hl5/PUrJCbNlweOhwNm
 l2DlBC+QW9aCGTwb02ek/YJauLcmN0emIq4z8/76Y2jnJVpouUB0JpfsZ8AdmR7GtDG+
 SqXmjRY9xY7BB4V7pz6oHGSo6xD0eXICGBijwUrM1evNAgt5o9JMAB0o/lBkl5ux0wGT
 DTog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cWNocU7eA9+Wp59TtXNSPoHKPg/gQFuCfBlz6EP4IJM=;
 b=qoJAxPm+ZxyVRhTeKrIVJcSLQNpRCBmfdBJpYqxoYtYPZURG2WeLhADbeEBFnqq0oF
 ZV/AC8O3JA/tNFAo26JvPDkOJ/CoA1PqSyyNtBZ97zy45Ns1xKXuer+CWe6pQl+aAPWj
 OxWZFJqStH3jejDrZoR9ZR9pXjbpzFtetNTB24JyOR6e4F3TMWX5AFxpz3i3FU8d8DXX
 fGs/soIC3pRUU1F9Obf4WESwIOfDaGBRMh+tvw5cjjtIbWQyYKaPwEbVj+7mHOYS1hXo
 Th2PzxV3CTmtXzlLGpO6GfMZZhuzSp/J3d9pwp63mlv/hGdD8JCq/0YlotX4NeELq8Hh
 rSRQ==
X-Gm-Message-State: APjAAAUdR8JXypUkaSf7s2olSO66xAwKaPr5vILmXec5f2kuASjogCFd
 TcCHgVhydowXDZl4g6tlmAN/FlE8n0OEZyrxHaA=
X-Google-Smtp-Source: APXvYqxCEiSVPvqEPV1TYN+VTi6zRgss5wzhXYoBJ7RLBYKSCj5Cw8CA6v+eMTnefLxFNeJid/0wFmP3UfzNj91cJPQ=
X-Received: by 2002:a1c:f008:: with SMTP id a8mr3018534wmb.81.1578480326589;
 Wed, 08 Jan 2020 02:45:26 -0800 (PST)
MIME-Version: 1.0
References: <20200108101006.150706-1-andre.przywara@arm.com>
 <20200108101006.150706-2-andre.przywara@arm.com>
In-Reply-To: <20200108101006.150706-2-andre.przywara@arm.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Wed, 8 Jan 2020 11:45:15 +0100
Message-ID: <CAJiuCccSWR4oMF5x67eUVMFL6YhRMJVo_r0VfCUVVRtAJ9uR2w@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 1/2] arm64: dts: sun50i: H6: Add SPI
 controllers nodes and pinmuxes
To: Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_024528_362603_CE9651F7 
X-CRM114-Status: GOOD (  24.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, linux-spi@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Mark Brown <broonie@kernel.org>, Icenowy Zheng <icenowy@aosc.xyz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andre,

On Wed, 8 Jan 2020 at 11:10, Andre Przywara <andre.przywara@arm.com> wrote:
>
> The Allwinner H6 SoC contains two SPI controllers similar to the H3/A64,
> but with the added capability of 3-wire and 4-wire operation modes.
> For now the driver does not support those, but the SPI registers are
> fully backwards-compatible, just adding bits and registers which were
> formerly reserved. So we can use the existing driver for the "normal" SPI
> modes, for instance to access the SPI NOR flash soldered on the PineH64
> board.
> We use an H6 specific compatible string in addition to the existing H3
> string, so when the driver later gains Quad SPI support, it should work
> automatically without any DT changes.
>
> Tested by accessing the SPI flash on a Pine H64 board (SPI0), also
> connecting another SPI flash to the SPI1 header pins.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 54 ++++++++++++++++++++
>  1 file changed, 54 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> index 3329283e38ab..40835850893e 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> @@ -338,6 +338,30 @@
>                                 bias-pull-up;
>                         };
>
> +                       /omit-if-no-ref/
> +                       spi0_pins: spi0-pins {
> +                               pins = "PC0", "PC2", "PC3";
> +                               function = "spi0";
> +                       };
> +
> +                       /omit-if-no-ref/
> +                       spi0_cs_pin: spi0-cs-pin {
> +                               pins = "PC5";
> +                               function = "spi0";
> +                       };
> +
> +                       /omit-if-no-ref/
> +                       spi1_pins: spi1-pins {
> +                               pins = "PH4", "PH5", "PH6";
> +                               function = "spi1";
> +                       };
> +
> +                       /omit-if-no-ref/
> +                       spi1_cs_pin: spi1-cs-pin {
> +                               pins = "PH3";
> +                               function = "spi1";
> +                       };
> +
>                         spdif_tx_pin: spdif-tx-pin {
>                                 pins = "PH7";
>                                 function = "spdif";
> @@ -504,6 +528,36 @@
>                         #size-cells = <0>;
>                 };
>
> +               spi0: spi@5010000 {
> +                       compatible = "allwinner,sun50i-h6-spi",
> +                                    "allwinner,sun8i-h3-spi";

You need to document this compatible in the dt-bindings to avoid any warnings.

Regards,
Clement




> +                       reg = <0x05010000 0x1000>;
> +                       interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks = <&ccu CLK_BUS_SPI0>, <&ccu CLK_SPI0>;
> +                       clock-names = "ahb", "mod";
> +                       dmas = <&dma 22>, <&dma 22>;
> +                       dma-names = "rx", "tx";
> +                       resets = <&ccu RST_BUS_SPI0>;
> +                       status = "disabled";
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +               };
> +
> +               spi1: spi@5011000 {
> +                       compatible = "allwinner,sun50i-h6-spi",
> +                                    "allwinner,sun8i-h3-spi";
> +                       reg = <0x05011000 0x1000>;
> +                       interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks = <&ccu CLK_BUS_SPI1>, <&ccu CLK_SPI1>;
> +                       clock-names = "ahb", "mod";
> +                       dmas = <&dma 23>, <&dma 23>;
> +                       dma-names = "rx", "tx";
> +                       resets = <&ccu RST_BUS_SPI1>;
> +                       status = "disabled";
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +               };
> +
>                 emac: ethernet@5020000 {
>                         compatible = "allwinner,sun50i-h6-emac",
>                                      "allwinner,sun50i-a64-emac";
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20200108101006.150706-2-andre.przywara%40arm.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
