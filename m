Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B5718004F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 15:36:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLDxDB7ipSq7EivJHJJldYwqsl3UD0ZvHEu0khjia8g=; b=OFbkLKrt8P9F5G
	nm4d7qHQemCyMNFuX/9N8gqz150PyPVUxH5pS64CskHglSsIyg6bicOMXlmYAG9Fq8OG9f/cJO4lu
	ocgmH3PmddvOzn6aGqvcDFlVoJtICivmHBu+YAVY+MzqFBejR+6xLZt55ClraLqRP7jwNJyN4M9w/
	AqVzMsRobj8ICpGSq9wzRW8CgUo8/fmnJTnQ0jvjbFBHBWhmhsDdIxSiJNAOoYIEzj/QRD7yMdRwl
	IptHkWsdf+obzDHJnoExF9QV8h+9wVHFvMO6k8uDCbIi9L/1dQbVPZEji1MbiWZaiMzaMcTqlqMTi
	HU/jxYDOGjJRbpC+CQBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBfzG-0006fB-Vx; Tue, 10 Mar 2020 14:36:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBfz9-0006ei-D1
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 14:35:56 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8169720873;
 Tue, 10 Mar 2020 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583850954;
 bh=aCCuA3dmGtkJtVIm9+cu7oR9EQfoMXkZDErROpFdOnw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HZc4jcnM4S0S2twxQbZDvHetUiXt8rTb2p94bhnjTVbfh6TRwKE/XqRk9G+ExqMQW
 4KnT8iadi5r7a7aoXWYjxgsV9DHeeKvji5li0FbfcD6FvioVdg4PmkAIkc981GblEb
 YWQw79FBPhG6cjd/CA/XN9oaLAZmzEzKA/smWxbk=
Date: Tue, 10 Mar 2020 22:35:49 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 2/6] ARM: dts: imx7d-pico: Add support for the dwarf
 baseboard
Message-ID: <20200310143548.GA21213@dragon>
References: <20200224193200.2773-1-festevam@gmail.com>
 <20200224193200.2773-2-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224193200.2773-2-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_073555_482635_F735B196 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: robh+dt@kernel.org, otavio@ossystems.com.br,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 04:31:56PM -0300, Fabio Estevam wrote:
> Add support for the imx7d pico board with dwarf baseboard combination.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  .../devicetree/bindings/arm/fsl.yaml          |  1 +

Have bindings as a separate patch.  Or just merge it into patch #1.

>  arch/arm/boot/dts/Makefile                    |  1 +
>  arch/arm/boot/dts/imx7d-pico-dwarf.dts        | 87 +++++++++++++++++++
>  3 files changed, 89 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx7d-pico-dwarf.dts
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index bad56df60f87..098aee4930a0 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -286,6 +286,7 @@ properties:
>                - fsl,imx7d-sdb             # i.MX7 SabreSD Board
>                - fsl,imx7d-sdb-reva        # i.MX7 SabreSD Rev-A Board
>                - novtech,imx7d-meerkat96   # i.MX7 Meerkat96 Board
> +              - technexion,imx7d-pico-dwarf   # TechNexion i.MX7D Pico-Dwarf
>                - technexion,imx7d-pico-hobbit  # TechNexion i.MX7D Pico-Hobbit
>                - technexion,imx7d-pico-pi      # TechNexion i.MX7D Pico-Pi
>                - toradex,colibri-imx7d                   # Colibri iMX7 Dual Module
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 732933318a61..888eaa8b1f92 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -615,6 +615,7 @@ dtb-$(CONFIG_SOC_IMX7D) += \
>  	imx7d-mba7.dtb \
>  	imx7d-meerkat96.dtb \
>  	imx7d-nitrogen7.dtb \
> +	imx7d-pico-dwarf.dtb \
>  	imx7d-pico-hobbit.dtb \
>  	imx7d-pico-pi.dtb \
>  	imx7d-sbc-imx7.dtb \
> diff --git a/arch/arm/boot/dts/imx7d-pico-dwarf.dts b/arch/arm/boot/dts/imx7d-pico-dwarf.dts
> new file mode 100644
> index 000000000000..ff734936b77b
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx7d-pico-dwarf.dts
> @@ -0,0 +1,87 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +//
> +// Copyright 2015 Technexion Ltd.
> +//
> +// Author: Wig Cheng  <wig.cheng@technexion.com>
> +//	   Richard Hu <richard.hu@technexion.com>
> +//	   Tapani Utriainen <tapani@technexion.com>
> +/dts-v1/;
> +
> +#include "imx7d-pico.dtsi"
> +/ {
> +	model = "TechNexion PICO-IMX7D and DWARF baseboard";
> +	compatible = "technexion,imx7d-pico-dwarf", "fsl,imx7d";
> +
> +	sound {
> +		compatible = "fsl,imx-audio-sgtl5000";
> +		model = "imx7d-sgtl5000";
> +		audio-cpu = <&sai1>;
> +		audio-codec = <&sgtl5000>;
> +		audio-routing =
> +			"LINE_IN", "Line In Jack",
> +			"MIC_IN", "Mic Jack",
> +			"Mic Jack", "Mic Bias",
> +			"Headphone Jack", "HP_OUT";
> +	};
> +
> +	sys_mclk: clock-sys-mclk {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <24576000>;
> +	};
> +};
> +
> +&i2c1 {
> +	clock_frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	status = "okay";
> +
> +	sgtl5000: codec@a {

audio-codec for node name.

Shawn

> +		reg = <0x0a>;
> +		compatible = "fsl,sgtl5000";
> +		clocks = <&sys_mclk>;
> +		VDDA-supply = <&reg_2p5v>;
> +		VDDIO-supply = <&reg_3p3v>;
> +	};
> +
> +	pressure-sensor@60 {
> +		compatible = "fsl,mpl3115";
> +		reg = <0x60>;
> +	};
> +};
> +
> +&i2c4 {
> +	clock_frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	status = "okay";
> +
> +	pca9554: io-expander@25 {
> +		compatible = "nxp,pca9554";
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		#interrupt-cells = <2>;
> +		reg = <0x25>;
> +	};
> +
> +	touchscreen@38 {
> +		compatible = "edt,edt-ft5x06";
> +		reg = <0x38>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_touchscreen>;
> +		interrupt-parent = <&gpio2>;
> +		interrupts = <13 IRQ_TYPE_EDGE_FALLING>;
> +		reset-gpios = <&pca9554 4 GPIO_ACTIVE_LOW>;
> +		touchscreen-size-x = <800>;
> +		touchscreen-size-y = <480>;
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl_touchscreen: touchscreengrp {
> +		fsl,pins = <
> +			MX7D_PAD_EPDC_DATA13__GPIO2_IO13	0x14
> +		>;
> +	};
> +};
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
