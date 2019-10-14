Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B37A8D5C37
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 09:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5DIDZxmCIZAj1Xg79Dv8kKrELzFSm2EMQnEEJgAt6Zk=; b=LwC7kXj8dvzoGN
	wStnhYT0U6pMhQJm7Tey4psU5S+A+HizhzSfnzM5y6ofVoN0y9+d94/92odjBfgUmOtHP3uuRAqJB
	FBuTWyAV+LaNM144KmyGjhN/gmbPsBQnN+WD62bVymVbSENIth/D3v6pY8NaDTuRf+QtmvBDOCJlv
	08R38HJmke7YAjqGxQMCwb+BH2FFoRJEdhKKsZhali4F82A9Tzi0QOQKqk/nSNaR9PkgPYK9xAjkO
	bDk9ze2G3+Qi4NZwt7awQakM2EfdanP00fMT62MHcqkPYQXyvxyTro6TH9w26Rgd5K31shlHUnh9R
	3uIxbYA/BpnqIETFCVHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJufN-00032e-Br; Mon, 14 Oct 2019 07:21:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJufE-00031t-6o
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 07:21:10 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E57D2064A;
 Mon, 14 Oct 2019 07:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571037667;
 bh=LHI7E4Z46ak5al1oSJPGEpNNULHgG/MIjjLXb8KWlfI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tEardf9N3+13C2SpBvqEO7yaWuT24T8mKn+vIi7oD7PbKx7OpqjzNNwy4ZDGJdOHv
 666Fs0oizMe6yenxTuJKkOB2A5dgkRbkp5boSha9kn5Gm/QNOnnnPtgLk0Pj2FTpA/
 hNbcixrybI8hUUEmoDIgQBxtdNAeJen0M4LcXXPg=
Date: Mon, 14 Oct 2019 15:20:49 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Oliver Graute <oliver.graute@gmail.com>
Subject: Re: [PATCHv6 2/2] ARM: dts: Add support for i.MX6 UltraLite DART
 Variscite Customboard
Message-ID: <20191014072047.GG12262@dragon>
References: <1569342022-15901-1-git-send-email-oliver.graute@gmail.com>
 <1569342022-15901-3-git-send-email-oliver.graute@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569342022-15901-3-git-send-email-oliver.graute@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_002108_290118_6897E278 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 narmstrong@baylibre.com, Sascha Hauer <s.hauer@pengutronix.de>,
 m.felsch@pengutronix.de, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 06:20:21PM +0200, Oliver Graute wrote:
> This patch adds DeviceTree Source for the i.MX6 UltraLite DART NAND/WIFI
> 
> Signed-off-by: Oliver Graute <oliver.graute@gmail.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Marco Felsch <m.felsch@pengutronix.de>
> ---
> Changelog:
> v6:
>  - added some muxing
>  - added codec in sound node
>  - added adc1 node
> 
>  arch/arm/boot/dts/Makefile                      |   1 +
>  arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts | 221 ++++++++++++++++++++++++
>  2 files changed, 222 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index a24a6a1..a2a69e4 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -579,6 +579,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
>  	imx6ul-tx6ul-0010.dtb \
>  	imx6ul-tx6ul-0011.dtb \
>  	imx6ul-tx6ul-mainboard.dtb \
> +	imx6ul-var-6ulcustomboard.dtb \
>  	imx6ull-14x14-evk.dtb \
>  	imx6ull-colibri-eval-v3.dtb \
>  	imx6ull-colibri-wifi-eval-v3.dtb \
> diff --git a/arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts b/arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts
> new file mode 100644
> index 00000000..031d8d4
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts
> @@ -0,0 +1,221 @@
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
> +	compatible = "variscite,6ulcustomboard", "fsl,imx6ul";

The compatible needs to be documented.

> +
> +	backlight {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm1 0 20000>;
> +		brightness-levels = <0 4 8 16 32 64 128 255>;
> +		default-brightness-level = <6>;
> +		status = "okay";
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio_keys>;
> +
> +		user {
> +			gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_BACK>;
> +			gpio-key,wakeup;

Check out Documentation/devicetree/bindings/power/wakeup-source.txt

> +		};
> +	};
> +
> +	gpio-leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio_leds>;
> +
> +		d16-led {
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
> +		simple-audio-card,bitclock-master = <&codec_dai>;
> +		simple-audio-card,frame-master = <&codec_dai>;
> +
> +		cpu_dai: simple-audio-card,cpu {
> +				sound-dai = <&sai2>;

Bad indentation.

Shawn

> +		};
> +
> +		codec_dai: simple-audio-card,codec {
> +			sound-dai = <&wm8731>;
> +			system-clock-frequency = <12288000>;
> +		};
> +	};
> +};
> +
> +&adc1 {
> +	vref-supply = <&reg_touch_3v3>;
> +	status = "okay";
> +};
> +
> +&can1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexcan1>;
> +	status = "okay";
> +};
> +
> +&can2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexcan2>;
> +	status = "okay";
> +};
> +
> +&fec1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet1>;
> +	status = "okay";
> +};
> +
> +&fec2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet2>;
> +	status = "okay";
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
> +	wm8731: audio-codec@1a {
> +		compatible = "wlf,wm8731";
> +		reg = <0x1a>;
> +		#sound-dai-cells = <0>;
> +		clocks = <&clks IMX6UL_CLK_SAI2>;
> +		clock-names = "mclk";
> +	};
> +
> +	touchscreen@38 {
> +		compatible = "edt,edt-ft5x06";
> +		reg = <0x38>;
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <4 IRQ_TYPE_NONE>;
> +		touchscreen-size-x = <800>;
> +		touchscreen-size-y = <480>;
> +		touchscreen-inverted-x;
> +		touchscreen-inverted-y;
> +		wakeup-source;
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
> +	pinctrl-0 = <&pinctrl_lcdif>;
> +	display = <&display0>;
> +	status = "okay";
> +
> +	display0: display0 {
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
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm1>;
> +	status = "okay";
> +};
> +
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> +
> +&uart3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart3>;
> +	uart-has-rtscts;
> +	status = "okay";
> +};
> +
> +&usbotg1 {
> +	disable-over-current;
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +&usbotg2 {
> +	disable-over-current;
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl_rtc: rtcgrp {
> +		fsl,pins = <
> +			MX6UL_PAD_SNVS_TAMPER7__GPIO5_IO07	0x1b0b0
> +		>;
> +	};
> +};
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
