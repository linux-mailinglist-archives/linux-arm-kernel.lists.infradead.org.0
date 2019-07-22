Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7909701FE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 16:14:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F8+8LtJ7iNh1x1pQ+udc/FUZiuqLdl1UlAIDay5e8Mo=; b=dq6kGFLTtgPgCe
	mY1i8MpLxtdkyOpKg+SwIYXdaYJPFyraOUDxVoz33ofcHqRpYvzGeJFshqTtIcWJZYAD5o+4KEt4R
	vHsMKUe5R2ENJ/0mfS2Yi8hj/44ZVQ+uS+a3GrNF9Oe9E4fJSWdes/bL5q2mzWdgCtGnZvgMpjAWI
	scljYbWM6OUbbtpwTeBFVZFitnqJMPn7DNT9Kili8gp0iLNq4nLaLoUNTJQPNLi3PG788XFy+NtaF
	Gf1vw+acyzEUH7Gp+GhPwDSrY0VZhRXG5naY4K476Mq07kT48s3vWjw5L8jwryFBLIjZduoAjUSrV
	UXGEpfc5PA7HxltR8QcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZ5T-0001Ff-71; Mon, 22 Jul 2019 14:14:47 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZ5G-0001FG-58
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 14:14:35 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id E8BE828B3C5
Message-ID: <dde3ab7c7a7058b05251dbe49a826d33a11b4c40.camel@collabora.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx6qdl-wandboard: Add OV5645 camera support
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Date: Mon, 22 Jul 2019 11:14:25 -0300
In-Reply-To: <20190722133651.14729-1-festevam@gmail.com>
References: <20190722133651.14729-1-festevam@gmail.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_071434_459037_6F2A5A60 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-07-22 at 10:36 -0300, Fabio Estevam wrote:
> From: Ezequiel Garcia <ezequiel@collabora.com>
> 
> imx6qdl-wandboard can be connected to a OV5645 camera via
> MIPI CSI port. Add support for it.
> 
> PAD_GPIO_6 has been originally used for the Ethernet FEC
> ERR006687 workaround, but it needs to be used to provide the
> camera sensor clock, so adjust it accordingly.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  arch/arm/boot/dts/imx6qdl-wandboard.dtsi | 73 ++++++++++++++++++++++--
>  arch/arm64/boot/dts/freescale/Makefile   |  1 +
>  2 files changed, 70 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-wandboard.dtsi b/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
> index 50d9a989e06a..2cfb4112a467 100644
> --- a/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
> @@ -33,6 +33,30 @@
>  		spdif-out;
>  	};
>  
> +	reg_1p5v: regulator-1p5v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "1P5V";
> +		regulator-min-microvolt = <1500000>;
> +		regulator-max-microvolt = <1500000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_1p8v: regulator-1p8v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "1P8V";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_2p8v: regulator-2p8v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "2P8V";
> +		regulator-min-microvolt = <2800000>;
> +		regulator-max-microvolt = <2800000>;
> +		regulator-always-on;
> +	};
> +
>  	reg_2p5v: regulator-2p5v {
>  		compatible = "regulator-fixed";
>  		regulator-name = "2P5V";
> @@ -94,6 +118,29 @@
>  		VDDIO-supply = <&reg_3p3v>;
>  		lrclk-strength = <3>;
>  	};
> +
> +	camera@3c {
> +		compatible = "ovti,ov5645";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_ov5645>;
> +		reg = <0x3c>;
> +		clocks = <&clks IMX6QDL_CLK_CKO2>;
> +		clock-names = "xclk";
> +		clock-frequency = <24000000>;
> +		vdddo-supply = <&reg_1p8v>;
> +		vdda-supply = <&reg_2p8v>;
> +		vddd-supply = <&reg_1p5v>;
> +		enable-gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
> +		reset-gpios = <&gpio4 14 GPIO_ACTIVE_LOW>;
> +
> +		port {
> +			ov5645_to_mipi_csi2: endpoint {
> +				remote-endpoint = <&mipi_csi2_in>;
> +				clock-lanes = <0>;
> +				data-lanes = <1 2>;
> +			};
> +		};
> +	};
>  };
>  
>  &iomuxc {
> @@ -128,7 +175,6 @@
>  				MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b030
>  				MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b030
>  				MX6QDL_PAD_GPIO_16__ENET_REF_CLK	0x4001b0a8
> -				MX6QDL_PAD_GPIO_6__ENET_IRQ		0x000b1
>  			>;
>  		};
>  
> @@ -152,6 +198,14 @@
>  			>;
>  		};
>  
> +		pinctrl_ov5645: ov5645grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_GPIO_3__CCM_CLKO2		0x000b0
> +				MX6QDL_PAD_GPIO_6__GPIO1_IO06		0x1b0b0
> +				MX6QDL_PAD_KEY_COL4__GPIO4_IO14		0x1b0b0
> +			>;
> +		};
> +
>  		pinctrl_spdif: spdifgrp {
>  			fsl,pins = <
>  				MX6QDL_PAD_ENET_RXD0__SPDIF_OUT		0x1b0b0
> @@ -226,12 +280,23 @@
>  	pinctrl-0 = <&pinctrl_enet>;
>  	phy-mode = "rgmii-id";
>  	phy-reset-gpios = <&gpio3 29 GPIO_ACTIVE_LOW>;
> -	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
> -			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
> -	fsl,err006687-workaround-present;
>  	status = "okay";
>  };
>  
> +&mipi_csi {
> +	status = "okay";
> +
> +	port@0 {
> +		reg = <0>;
> +
> +		mipi_csi2_in: endpoint {
> +			remote-endpoint = <&ov5645_to_mipi_csi2>;
> +			clock-lanes = <0>;
> +			data-lanes = <1 2>;
> +		};
> +	};
> +};
> +
>  &spdif {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_spdif>;
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index c043aca66572..99627a499a73 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -23,6 +23,7 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-rdb.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mq-pico-pi.dtb

Ooops, some unrelated imx8 managed to get here :-)

Thanks for submitting the patch!
Eze


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
