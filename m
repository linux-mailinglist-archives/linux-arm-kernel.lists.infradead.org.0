Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB68134117
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 12:47:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nUqEHBWbkLfQuKSYGK5MsiJgQVEJLSy8YVs4XJhouYY=; b=ZlK7+yScXeqXtM
	s4CELtz65GvFOvO2mwk+V+J/gTZZHXGHM2lnCIzNdg7p9id7XaOJrm6J8sF6zPkC+3yAzSfEXKymT
	59jfvio1yJCtByk5g2FD3wjvK4ThpK+ysNC6pFt1HXpGN1IBgMfcM8ugUXTlMOyDBKdDgxt9swkDF
	7+EKj6lvQUMeSa/dU3VMzT/rcbvM1q95ykrFIu18+FD0jRoGhz0FBJwLF7ks65wO1gK5rUV1BK4qa
	AkDmwKy8HN73MVurN+PcUeIUB+K/BwhOB13gWZp6Yg5RdSYsjOL8eo3Q645ay53yANNPq9W88cxSv
	duHQJrOyMRuACJmwjJwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip9oB-0008JT-DI; Wed, 08 Jan 2020 11:47:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9o4-0008J9-RM
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 11:47:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EAE4231B;
 Wed,  8 Jan 2020 03:47:23 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 75C973F703;
 Wed,  8 Jan 2020 03:47:22 -0800 (PST)
Date: Wed, 8 Jan 2020 11:47:06 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Emmanuel Vadot <manu@bidouilliste.com>
Subject: Re: [PATCH 1/2] arm64: dts: sun50i: H6: Add SPI controllers nodes
 and pinmuxes
Message-ID: <20200108114706.5f27a9b2@donnerap.cambridge.arm.com>
In-Reply-To: <20200108123448.26286186e74f899caaf5ad35@bidouilliste.com>
References: <20200108101006.150706-1-andre.przywara@arm.com>
 <20200108101006.150706-2-andre.przywara@arm.com>
 <20200108123448.26286186e74f899caaf5ad35@bidouilliste.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_034724_972636_3DA5DA9D 
X-CRM114-Status: GOOD (  23.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-sunxi@googlegroups.com,
 Maxime Ripard <mripard@kernel.org>, linux-spi@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Icenowy Zheng <icenowy@aosc.xyz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 8 Jan 2020 12:34:48 +0100
Emmanuel Vadot <manu@bidouilliste.com> wrote:

Hi Emmanuel,

> On Wed,  8 Jan 2020 10:10:05 +0000
> Andre Przywara <andre.przywara@arm.com> wrote:
> 
> > The Allwinner H6 SoC contains two SPI controllers similar to the H3/A64,
> > but with the added capability of 3-wire and 4-wire operation modes.
> > For now the driver does not support those, but the SPI registers are
> > fully backwards-compatible, just adding bits and registers which were
> > formerly reserved. So we can use the existing driver for the "normal" SPI
> > modes, for instance to access the SPI NOR flash soldered on the PineH64
> > board.
> > We use an H6 specific compatible string in addition to the existing H3
> > string, so when the driver later gains Quad SPI support, it should work
> > automatically without any DT changes.
> > 
> > Tested by accessing the SPI flash on a Pine H64 board (SPI0), also
> > connecting another SPI flash to the SPI1 header pins.
> > 
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 54 ++++++++++++++++++++
> >  1 file changed, 54 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > index 3329283e38ab..40835850893e 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > @@ -338,6 +338,30 @@
> >  				bias-pull-up;
> >  			};
> >  
> > +			/omit-if-no-ref/  
> 
>  That would prevent users to use an overlay and use those pins, is that
> something that we want ? I'm not sure that the space saved by those are
> useful.

Me neither ;-), but Maxime asked for it before, and it doesn't really hurt.

For overlays: if a .dtb is compiled with support for overlays (-@ to generate symbols), this tag is ignored, and the nodes stay in the .dtb, regardless of being referenced or not. Just confirmed by trying this.

Cheers,
Andre.

> 
>  Cheers,
> 
> > +			spi0_pins: spi0-pins {
> > +				pins = "PC0", "PC2", "PC3";
> > +				function = "spi0";
> > +			};
> > +
> > +			/omit-if-no-ref/
> > +			spi0_cs_pin: spi0-cs-pin {
> > +				pins = "PC5";
> > +				function = "spi0";
> > +			};
> > +
> > +			/omit-if-no-ref/
> > +			spi1_pins: spi1-pins {
> > +				pins = "PH4", "PH5", "PH6";
> > +				function = "spi1";
> > +			};
> > +
> > +			/omit-if-no-ref/
> > +			spi1_cs_pin: spi1-cs-pin {
> > +				pins = "PH3";
> > +				function = "spi1";
> > +			};
> > +
> >  			spdif_tx_pin: spdif-tx-pin {
> >  				pins = "PH7";
> >  				function = "spdif";
> > @@ -504,6 +528,36 @@
> >  			#size-cells = <0>;
> >  		};
> >  
> > +		spi0: spi@5010000 {
> > +			compatible = "allwinner,sun50i-h6-spi",
> > +				     "allwinner,sun8i-h3-spi";
> > +			reg = <0x05010000 0x1000>;
> > +			interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
> > +			clocks = <&ccu CLK_BUS_SPI0>, <&ccu CLK_SPI0>;
> > +			clock-names = "ahb", "mod";
> > +			dmas = <&dma 22>, <&dma 22>;
> > +			dma-names = "rx", "tx";
> > +			resets = <&ccu RST_BUS_SPI0>;
> > +			status = "disabled";
> > +			#address-cells = <1>;
> > +			#size-cells = <0>;
> > +		};
> > +
> > +		spi1: spi@5011000 {
> > +			compatible = "allwinner,sun50i-h6-spi",
> > +				     "allwinner,sun8i-h3-spi";
> > +			reg = <0x05011000 0x1000>;
> > +			interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
> > +			clocks = <&ccu CLK_BUS_SPI1>, <&ccu CLK_SPI1>;
> > +			clock-names = "ahb", "mod";
> > +			dmas = <&dma 23>, <&dma 23>;
> > +			dma-names = "rx", "tx";
> > +			resets = <&ccu RST_BUS_SPI1>;
> > +			status = "disabled";
> > +			#address-cells = <1>;
> > +			#size-cells = <0>;
> > +		};
> > +
> >  		emac: ethernet@5020000 {
> >  			compatible = "allwinner,sun50i-h6-emac",
> >  				     "allwinner,sun50i-a64-emac";
> > -- 
> > 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
