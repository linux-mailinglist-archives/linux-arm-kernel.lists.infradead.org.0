Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF35134096
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 12:35:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iFYGmSn4wUSOZR38k5o5Zbh82aDzIfsWqMOZVXU5s5k=; b=eVaLoEVMn1RBY3
	hJA+8vPmol47Ez0ldoyFczFG3aTjQqNrWq6wZtkFylssNEbp/CerjAFmhgfrzH287l4WnybKsXCd3
	A8k7cm3TmVUhcLIoigtZvy1faWlLWAQb39iYyyNqlX6Z7E6IocXBDNW+QlQE0+ySYXVxUAFIVo05d
	RYQT0XJt+7fH2PWMRvSZnlJ1DGMvwWXRtMmhhMyVBnotZGEgAQ8HgnlJyGcwOSNf3fydknnAllwop
	zdYg3b0Y9ZLyL0xJo6mgC74K/+fcc51Ny3Wj3227RJp6U53+X17uCF8IwX+w/Q//bOaUUkgWhNshs
	DBclorf+zbYXfigVeQDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip9cK-0001fZ-1p; Wed, 08 Jan 2020 11:35:16 +0000
Received: from mail.blih.net ([212.83.177.182])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9c0-0001el-7A
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 11:34:58 +0000
Received: from mail.blih.net (mail.blih.net [212.83.177.182])
 by mail.blih.net (OpenSMTPD) with ESMTP id 27424418;
 Wed, 8 Jan 2020 12:34:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=bidouilliste.com; h=date
 :from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-type:content-transfer-encoding; s=mail;
 bh=7H1NUSmMYGTvCzHTp3u946ayonA=; b=PhASKloPmfq2zxtZhhvFAVJcLYh9
 EeNHZSLV3mkesmLFO4T3Zv9cyEvX7K8LYSaRUbtxmJKYjsJm59EEUnqH7jaTybjT
 MwIQgnrZKmvn/5njwiZ4jPZue6SdVnp3sw8xxu1XjqdfXjYAwEzYS07V1zttJZnb
 u76lUtexR10di7o=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=bidouilliste.com; h=date
 :from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-type:content-transfer-encoding; q=dns; s=
 mail; b=Rxq9HddvpMW4jpGLx2rRA8IPzZWQwam861gSUz+9SUdaKmhBjzGWOdAa
 YtayE0ngW4S0NUt48Yaq4LgJRCyXj4MaleCocNkh652cQxB7HR0uOpdEoKuQoK+q
 xZIua6BHtguXz9stBKjDeKVTyAWVnlYhMNb1RSQUiTZxnRnPOns=
Received: from skull.home.blih.net (lfbn-idf2-1-1164-130.w90-92.abo.wanadoo.fr
 [90.92.223.130])
 by mail.blih.net (OpenSMTPD) with ESMTPSA id 32876efc
 TLS version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO;
 Wed, 8 Jan 2020 12:34:51 +0100 (CET)
Date: Wed, 8 Jan 2020 12:34:48 +0100
From: Emmanuel Vadot <manu@bidouilliste.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 1/2] arm64: dts: sun50i: H6: Add SPI controllers nodes
 and pinmuxes
Message-Id: <20200108123448.26286186e74f899caaf5ad35@bidouilliste.com>
In-Reply-To: <20200108101006.150706-2-andre.przywara@arm.com>
References: <20200108101006.150706-1-andre.przywara@arm.com>
 <20200108101006.150706-2-andre.przywara@arm.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; amd64-portbld-freebsd13.0)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_033456_667495_0B0B3222 
X-CRM114-Status: GOOD (  21.00  )
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


 Hi Andre,

On Wed,  8 Jan 2020 10:10:05 +0000
Andre Przywara <andre.przywara@arm.com> wrote:

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
>  				bias-pull-up;
>  			};
>  
> +			/omit-if-no-ref/

 That would prevent users to use an overlay and use those pins, is that
something that we want ? I'm not sure that the space saved by those are
useful.

 Cheers,

> +			spi0_pins: spi0-pins {
> +				pins = "PC0", "PC2", "PC3";
> +				function = "spi0";
> +			};
> +
> +			/omit-if-no-ref/
> +			spi0_cs_pin: spi0-cs-pin {
> +				pins = "PC5";
> +				function = "spi0";
> +			};
> +
> +			/omit-if-no-ref/
> +			spi1_pins: spi1-pins {
> +				pins = "PH4", "PH5", "PH6";
> +				function = "spi1";
> +			};
> +
> +			/omit-if-no-ref/
> +			spi1_cs_pin: spi1-cs-pin {
> +				pins = "PH3";
> +				function = "spi1";
> +			};
> +
>  			spdif_tx_pin: spdif-tx-pin {
>  				pins = "PH7";
>  				function = "spdif";
> @@ -504,6 +528,36 @@
>  			#size-cells = <0>;
>  		};
>  
> +		spi0: spi@5010000 {
> +			compatible = "allwinner,sun50i-h6-spi",
> +				     "allwinner,sun8i-h3-spi";
> +			reg = <0x05010000 0x1000>;
> +			interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&ccu CLK_BUS_SPI0>, <&ccu CLK_SPI0>;
> +			clock-names = "ahb", "mod";
> +			dmas = <&dma 22>, <&dma 22>;
> +			dma-names = "rx", "tx";
> +			resets = <&ccu RST_BUS_SPI0>;
> +			status = "disabled";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +
> +		spi1: spi@5011000 {
> +			compatible = "allwinner,sun50i-h6-spi",
> +				     "allwinner,sun8i-h3-spi";
> +			reg = <0x05011000 0x1000>;
> +			interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&ccu CLK_BUS_SPI1>, <&ccu CLK_SPI1>;
> +			clock-names = "ahb", "mod";
> +			dmas = <&dma 23>, <&dma 23>;
> +			dma-names = "rx", "tx";
> +			resets = <&ccu RST_BUS_SPI1>;
> +			status = "disabled";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +
>  		emac: ethernet@5020000 {
>  			compatible = "allwinner,sun50i-h6-emac",
>  				     "allwinner,sun50i-a64-emac";
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


-- 
Emmanuel Vadot <manu@bidouilliste.com> <manu@freebsd.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
