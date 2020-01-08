Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E88613450A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 15:32:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vd/tSQpo5VtXeMlvNaItYqCYxP7t3DVZ4ItyF+qlyok=; b=Rxig0XnjqAs56j
	fKabhQSEO+st5b/eE4hjPjgYJheE7ZjfnK+pbjI6g4HuicmmHGeCyjPtDdTPRuaW4kBhyeb4L9x1U
	iCgCA+f16mU5Ylv8MwYT95D6UwS56Ek6WFNpFdmM0wF5QDA0VZY6FEIiOOpGp9atHt3stjrsaK3Yc
	MIAZTzJolLpISu4JUCeYWX2BOErhWUEF9rc+fWM+636LnBAX47edsiT0c88lbw5plqiRpDUBDjClg
	H3PvHYKvC2LcwMeg2PpzbI4eaXDCpSOHRDTrdHb2lw2gC9RiI2zWTK1f3Gdramg18HHdiAjFnfr0A
	5SPSvPOpH9HqT+E1HSEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipCO2-00033K-TR; Wed, 08 Jan 2020 14:32:42 +0000
Received: from mail.blih.net ([212.83.177.182])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipCNv-00032v-1S
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 14:32:37 +0000
Received: from mail.blih.net (mail.blih.net [212.83.177.182])
 by mail.blih.net (OpenSMTPD) with ESMTP id 44fc4725;
 Wed, 8 Jan 2020 15:32:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=bidouilliste.com; h=date
 :from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-type:content-transfer-encoding; s=mail;
 bh=2yUHFzCKidxrTbLTYWuAZ0T5Tlo=; b=jgLCFiOQaLOxXHprjINfgd7x7d8W
 UNDP9F659T9fBhRFiVeP/PV/20Bhc7XkY2PW1cPHb8G0s+tsmCcUKE0n4U88npEc
 8oR+SA1cQCvVmEflHGLWN4EgirZC55s1kYDMzHDBrLAK/EEXGQkv6FbxRHZjhvhd
 2/f547rCFfM5alY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=bidouilliste.com; h=date
 :from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-type:content-transfer-encoding; q=dns; s=
 mail; b=bvBMmkZ221zKQvLyKxA+SPMgg+O573MGZjvnAWQfZdAUqvKpJYa6gBUL
 3eCkdxCRQi0aXy2uhUrTlGYmCOokssIwj6KLahT/X7Q+ne71OEQmm3lUqMXJpfFZ
 9ZNCND5YDXSAQGZZrG8vc95Z1DjJtIlHG8IZAU490cE1Vy75P0U=
Received: from skull.home.blih.net (lfbn-idf2-1-1164-130.w90-92.abo.wanadoo.fr
 [90.92.223.130])
 by mail.blih.net (OpenSMTPD) with ESMTPSA id 4fe403c8
 TLS version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO;
 Wed, 8 Jan 2020 15:32:32 +0100 (CET)
Date: Wed, 8 Jan 2020 15:32:30 +0100
From: Emmanuel Vadot <manu@bidouilliste.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 1/2] arm64: dts: sun50i: H6: Add SPI controllers nodes
 and pinmuxes
Message-Id: <20200108153230.509ce90f4cbdf1122dbd6d59@bidouilliste.com>
In-Reply-To: <20200108114706.5f27a9b2@donnerap.cambridge.arm.com>
References: <20200108101006.150706-1-andre.przywara@arm.com>
 <20200108101006.150706-2-andre.przywara@arm.com>
 <20200108123448.26286186e74f899caaf5ad35@bidouilliste.com>
 <20200108114706.5f27a9b2@donnerap.cambridge.arm.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; amd64-portbld-freebsd13.0)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_063235_489210_16CD4174 
X-CRM114-Status: GOOD (  24.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-sunxi@googlegroups.com,
 Maxime Ripard <mripard@kernel.org>, linux-spi@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Icenowy Zheng <icenowy@aosc.xyz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 8 Jan 2020 11:47:06 +0000
Andre Przywara <andre.przywara@arm.com> wrote:

> On Wed, 8 Jan 2020 12:34:48 +0100
> Emmanuel Vadot <manu@bidouilliste.com> wrote:
> 
> Hi Emmanuel,
> 
> > On Wed,  8 Jan 2020 10:10:05 +0000
> > Andre Przywara <andre.przywara@arm.com> wrote:
> > 
> > > The Allwinner H6 SoC contains two SPI controllers similar to the H3/A64,
> > > but with the added capability of 3-wire and 4-wire operation modes.
> > > For now the driver does not support those, but the SPI registers are
> > > fully backwards-compatible, just adding bits and registers which were
> > > formerly reserved. So we can use the existing driver for the "normal" SPI
> > > modes, for instance to access the SPI NOR flash soldered on the PineH64
> > > board.
> > > We use an H6 specific compatible string in addition to the existing H3
> > > string, so when the driver later gains Quad SPI support, it should work
> > > automatically without any DT changes.
> > > 
> > > Tested by accessing the SPI flash on a Pine H64 board (SPI0), also
> > > connecting another SPI flash to the SPI1 header pins.
> > > 
> > > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > > ---
> > >  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 54 ++++++++++++++++++++
> > >  1 file changed, 54 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > > index 3329283e38ab..40835850893e 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > > @@ -338,6 +338,30 @@
> > >  				bias-pull-up;
> > >  			};
> > >  
> > > +			/omit-if-no-ref/  
> > 
> >  That would prevent users to use an overlay and use those pins, is that
> > something that we want ? I'm not sure that the space saved by those are
> > useful.
> 
> Me neither ;-), but Maxime asked for it before, and it doesn't really hurt.
> 
> For overlays: if a .dtb is compiled with support for overlays (-@ to generate symbols), this tag is ignored, and the nodes stay in the .dtb, regardless of being referenced or not. Just confirmed by trying this.

 Oh I didn't knew that (and didn't tried before sending my mail
sorry :P), then it's good for me leaving them :)

 Thanks,

> Cheers,
> Andre.
> 
> > 
> >  Cheers,
> > 
> > > +			spi0_pins: spi0-pins {
> > > +				pins = "PC0", "PC2", "PC3";
> > > +				function = "spi0";
> > > +			};
> > > +
> > > +			/omit-if-no-ref/
> > > +			spi0_cs_pin: spi0-cs-pin {
> > > +				pins = "PC5";
> > > +				function = "spi0";
> > > +			};
> > > +
> > > +			/omit-if-no-ref/
> > > +			spi1_pins: spi1-pins {
> > > +				pins = "PH4", "PH5", "PH6";
> > > +				function = "spi1";
> > > +			};
> > > +
> > > +			/omit-if-no-ref/
> > > +			spi1_cs_pin: spi1-cs-pin {
> > > +				pins = "PH3";
> > > +				function = "spi1";
> > > +			};
> > > +
> > >  			spdif_tx_pin: spdif-tx-pin {
> > >  				pins = "PH7";
> > >  				function = "spdif";
> > > @@ -504,6 +528,36 @@
> > >  			#size-cells = <0>;
> > >  		};
> > >  
> > > +		spi0: spi@5010000 {
> > > +			compatible = "allwinner,sun50i-h6-spi",
> > > +				     "allwinner,sun8i-h3-spi";
> > > +			reg = <0x05010000 0x1000>;
> > > +			interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
> > > +			clocks = <&ccu CLK_BUS_SPI0>, <&ccu CLK_SPI0>;
> > > +			clock-names = "ahb", "mod";
> > > +			dmas = <&dma 22>, <&dma 22>;
> > > +			dma-names = "rx", "tx";
> > > +			resets = <&ccu RST_BUS_SPI0>;
> > > +			status = "disabled";
> > > +			#address-cells = <1>;
> > > +			#size-cells = <0>;
> > > +		};
> > > +
> > > +		spi1: spi@5011000 {
> > > +			compatible = "allwinner,sun50i-h6-spi",
> > > +				     "allwinner,sun8i-h3-spi";
> > > +			reg = <0x05011000 0x1000>;
> > > +			interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
> > > +			clocks = <&ccu CLK_BUS_SPI1>, <&ccu CLK_SPI1>;
> > > +			clock-names = "ahb", "mod";
> > > +			dmas = <&dma 23>, <&dma 23>;
> > > +			dma-names = "rx", "tx";
> > > +			resets = <&ccu RST_BUS_SPI1>;
> > > +			status = "disabled";
> > > +			#address-cells = <1>;
> > > +			#size-cells = <0>;
> > > +		};
> > > +
> > >  		emac: ethernet@5020000 {
> > >  			compatible = "allwinner,sun50i-h6-emac",
> > >  				     "allwinner,sun50i-a64-emac";
> > > -- 
> > > 2.17.1


-- 
Emmanuel Vadot <manu@bidouilliste.com> <manu@freebsd.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
