Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5573243238
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 04:33:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kSWJS7Puo7fB65E8X/cfq5cA/9b81A62ywLdIqJj6Ow=; b=ZEEmC+HE9FQnpe
	4AtyYfODDpDMz8qwxKZy5ce35Pe0xdOM1ggYqbsv+GiPsW45XXbBM9oUrs7l9q4R831LPLPbgGCC1
	X89Jk1vzbfApuw+CtjDoXR3s5El7MO7vx9FaaFgjH6itc2WYqgmByw56VKNrLEWZXnvDhpoDxXFPM
	Waskw7+cNRCJUX6TSrhxcVe64+UFd0UF8wpszcKmbqLwMzmM/HtorAASrYKQVgnkZP+GH+K/l2N8G
	37Q9Te1pz1oW28h4bdpJY8qxGIgLrmHUAxk5I6KqHAvM3CzIwQCejQiiFI+MHj2xDYLCZEPIh1SB0
	YeNtNNksWax6ZRXFHW1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbFY5-0008Hg-FA; Thu, 13 Jun 2019 02:33:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbFXp-0008HF-Fo
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 02:32:55 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4FAEB20B7C;
 Thu, 13 Jun 2019 02:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560393173;
 bh=LnrX3QbNG16Vax5M8OMl2q8+jnztx7pr7pXC+2mnaZI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BkL5smRT+h3GoqgDWmluADRt99F7Fl0wrw6zjCw6urH6/AoBRpCRzdp9k7AwcBbRh
 PYW5oWl2uwPkuz64lENGfVt6+dBFbUe03pVSrOqRfiq78oak7qtr8UA/9zIiwyMTvY
 UzyklPgJSCvK8Zk/m+4zLUx5t03xbTYIdSMH8nPM=
Date: Thu, 13 Jun 2019 10:32:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Oliver Graute <oliver.graute@gmail.com>
Subject: Re: [PATCHv3 2/2] ARM: dts: Add support for i.MX6 UltraLite DART
 Variscite Customboard
Message-ID: <20190613023210.GE20747@dragon>
References: <1559839624-12286-1-git-send-email-oliver.graute@gmail.com>
 <1559839624-12286-3-git-send-email-oliver.graute@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559839624-12286-3-git-send-email-oliver.graute@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_193253_563634_33867AA1 
X-CRM114-Status: GOOD (  20.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 narmstrong@baylibre.com, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 06:47:02PM +0200, Oliver Graute wrote:
> This patch adds DeviceTree Bindings for the i.MX6 UltraLite DART NAND/WIFI

It's device tree source, not bindings.

> 
> Signed-off-by: Oliver Graute <oliver.graute@gmail.com>
> ---
>  arch/arm/boot/dts/Makefile                      |   1 +
>  arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts | 209 ++++++++++++++++++++++++
>  2 files changed, 210 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 5559028..7f03ab5 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -577,6 +577,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
>  	imx6ul-tx6ul-0010.dtb \
>  	imx6ul-tx6ul-0011.dtb \
>  	imx6ul-tx6ul-mainboard.dtb \
> +	imx6ul-var-6ulcustomboard.dtb \
>  	imx6ull-14x14-evk.dtb \
>  	imx6ull-colibri-eval-v3.dtb \
>  	imx6ull-colibri-wifi-eval-v3.dtb \
> diff --git a/arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts b/arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts
> new file mode 100644
> index 0000000..80b860a
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts
> @@ -0,0 +1,209 @@
> +// SPDX-License-Identifier: (GPL-2.0)
> +/*
> + * Support for Variscite DART-6UL Module
> + *
> + * Copyright (C) 2015 Freescale Semiconductor, Inc.
> + * Copyright (C) 2015-2016 Variscite Ltd. - http://www.variscite.com
> + * Copyright (C) 2018-2019 Oliver Graute <oliver.graute@gmail.com>
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/input/input.h>
> +#include "imx6ul-imx6ull-var-dart-common.dtsi"
> +
> +/ {
> +	model = "Variscite i.MX6 UltraLite Carrier-board";
> +	compatible = "fsl,6ulcustomboard", "fsl,imx6ul";

The compatible should be documented.

> +
> +	backlight {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm1 0 20000>;
> +		brightness-levels = <0 4 8 16 32 64 128 255>;
> +		default-brightness-level = <6>;
> +		status = "okay";

Unnecessary 'status'.

> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		user {
> +			gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_BACK>;
> +			gpio-key,wakeup;
> +		};
> +	};
> +
> +	gpio-leds {
> +		compatible = "gpio-leds";
> +
> +		d16_led {

We prefer to use hyphen than underscore in node name.

> +			gpios = <&gpio4 20 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +
> +	sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "wm8731audio";
> +		simple-audio-card,widgets =
> +			"Headphone", "Headphone Jack",
> +			"Line", "Line Jack",
> +			"Microphone", "Mic Jack";
> +		simple-audio-card,routing =
> +			"Headphone Jack", "RHPOUT",
> +			"Headphone Jack", "LHPOUT",
> +			"LLINEIN", "Line Jack",
> +			"RLINEIN", "Line Jack",
> +			"MICIN", "Mic Bias",
> +			"Mic Bias", "Mic Jack";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,bitclock-master = <&sound_master>;
> +		simple-audio-card,frame-master = <&sound_master>;
> +
> +		sound_master: simple-audio-card,cpu {
> +				sound-dai = <&sai2>;
> +		};
> +	};
> +};
> +
> +&can1 {
> +	status = "okay";
> +};
> +
> +&can2 {
> +	status = "okay";
> +};
> +
> +&gpc {
> +	fsl,cpu_pupscr_sw2iso = <0x2>;
> +	fsl,cpu_pupscr_sw = <0x1>;
> +	fsl,cpu_pdnscr_iso2sw = <0x1>;
> +	fsl,cpu_pdnscr_iso = <0x1>;
> +	fsl,ldo-bypass = <0>; /* DCDC, ldo-enable */

All these are bindings from vendor tree?

> +};
> +
> +&fec1 {
> +	status = "okay";

We prefer to put 'status' at the end of property list.

> +	phy-mode = "rgmii";
> +	phy-reset-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
> +	phy-handle = <&ethphy0>;
> +};
> +
> +&fec2 {
> +	status = "okay";
> +	phy-mode = "rgmii";
> +	phy-reset-gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
> +	phy-handle = <&ethphy1>;
> +};
> +
> +&i2c1 {
> +	clock-frequency = <400000>;
> +	status = "okay";
> +};
> +
> +&i2c2 {
> +	clock_frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	status = "okay";
> +
> +	wm8731: codec@1a {

audio-codec for node name.

> +		#sound-dai-cells = <0>;
> +		compatible = "wlf,wm8731";
> +		reg = <0x1a>;
> +		clocks = <&clks IMX6UL_CLK_SAI2>;
> +		clock-names = "mclk";
> +	};
> +
> +	touchscreen@38 {
> +		compatible = "edt,edt-ft5x06";
> +		reg = <0x38>;
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <4 0>;
> +		touchscreen-size-x = <800>;
> +		touchscreen-size-y = <480>;
> +		touchscreen-inverted-x;
> +		touchscreen-inverted-y;
> +	};
> +
> +	rtc@68 {
> +		compatible = "dallas,ds1337";
> +		reg = <0x68>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_rtc>;
> +		interrupt-parent = <&gpio5>;
> +		interrupts = <7 IRQ_TYPE_EDGE_FALLING>;
> +	};
> +};
> +
> +&lcdif {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_lcdif_dat
> +		     &pinctrl_lcdif_ctrl>;
> +	display = <&display0>;
> +	status = "okay";
> +
> +	display0: display {

Have a look at:

https://www.spinics.net/lists/arm-kernel/msg727550.html

Also, can we use new bindings documented in bindings/display/mxsfb.txt?

> +		bits-per-pixel = <16>;
> +		bus-width = <24>;
> +
> +		display-timings {
> +			native-mode = <&timing0>;
> +			timing0: timing0 {
> +				clock-frequency =<35000000>;
> +				hactive = <800>;
> +				vactive = <480>;
> +				hfront-porch = <40>;
> +				hback-porch = <40>;
> +				hsync-len = <48>;
> +				vback-porch = <29>;
> +				vfront-porch = <13>;
> +				vsync-len = <3>;
> +				hsync-active = <0>;
> +				vsync-active = <0>;
> +				de-active = <1>;
> +				pixelclk-active = <0>;
> +			};
> +		};
> +	};
> +};
> +
> +&pwm1 {
> +	status = "okay";
> +};
> +
> +&uart1 {
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> +
> +&uart3 {
> +	status = "okay";
> +};
> +
> +&usbotg1 {
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +&usbotg2 {
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hog_1>;

Isn't imx6ul-imx6ull-var-dart-common.dtsi already having these them?

> +	imx6ul-evk {
> +

This container node shouldn't be needed.

Shawn

> +		pinctrl_rtc: rtcgrp {
> +			fsl,pins = <
> +				MX6UL_PAD_SNVS_TAMPER7__GPIO5_IO07	0x1b0b0
> +			>;
> +		};
> +	};
> +};
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
