Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE22243668
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:23:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ug4IWBLkt6pxH8s5pNuy4ZiUFYMK1rpJGb93/P/R8wI=; b=gIi4XXMniivGBP
	EpCmWPpIeXeMb94OS23iTRgQCNCWsM6WopqB6hd1+FsixqnwDdHDkUjYApEZ6mY1ZRR3hUix21uKs
	v4o9yTNzEzlCJdB2WU+s98ui/vaxUjXBY2ztNW3nD6nwDALqFFmZjThqK3j+spLwZ2gVHTXNGRtRj
	i070DpMBnmBSOfk413MqRP2CF8sqpcZvJzKQhW5L6J/tJyh4a+JJnW2ZK8xEarXuaH1vrfKDXm6R5
	peC5MHD+JeHolxsB3vdMoRtjdM9sHAvhmR+io5/byA8TejbJCe83q0ujLVFkk82HeSbHUyPyDldMs
	Axn/jQwv1dCFIKG74OUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPhV-0001B6-8X; Thu, 13 Jun 2019 13:23:33 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPhB-00019O-SD
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:23:15 +0000
Received: by mail-pf1-x441.google.com with SMTP id q10so11837884pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 06:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MaIyElzKL5RKMB8l9eySyc6lvUx5AGZ+HAJN95Nni9U=;
 b=eeL24GRuf0+MT9gvXofIXXhK7ay/UZyh8gEHofspIt995zp3HPNqaRQQmrDCUU69cN
 XLktcycXvXzNiLNN8t3c44g7ZCw3CbG7oIB39WPpYsjUT2NP/XaVZuetpmjGibHiODOD
 rpAHaEewjHTAn0HtU8ikObP/RAKKVEollnmdnV/9EqfZC3icbr+cYbLIsutFWZ7yCllV
 PwwRBV6b8Bf9/4nIUrg1OBQmCFT/EnvwFPZWUjVBOyLcURPoJNW998Bde1Pmh0uLl/Hv
 ftyKXCfebsas+zt8tLdYaQCKzb1OcAFF3Vl1txUq2/06oN1+9Kt04t0RfqTlylAIyBU1
 SSzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MaIyElzKL5RKMB8l9eySyc6lvUx5AGZ+HAJN95Nni9U=;
 b=Y27juh6GZoPRd9sqd8pFUNga0V3vu7PhzDFRcaWgjrbhVqY9kYjHZhqpSi06acyqoJ
 2P4SzM8DpDOewAuG7SEWIv107Me0Phwur1TjnNsSq9gcu/vfssq5XFi3WnxUUbEk1yk6
 +6LPLYZFqXJ5oj5aVYTxXdUNpLIQO01U19pw2XTVSJs//VlxWLYMgCsn+XPsNhOlJNcy
 bodDlSQ4zMaaRrCYvEWzpZ4zwwm29w/wxLgtLz9vYrDbJth3ACODowZ5hY0lauva0OeE
 kSI2xp4oLU0n6rocwQkIFPxFazFIZqSaTbOKqLtfjEEInJWOiZj99LpYelLhUuta10wf
 M/iQ==
X-Gm-Message-State: APjAAAW/aycMlg76/xs/xxxJElEtZVoYzL65HwIVU3kXq8ZMAuJTexhx
 sDOQgPxx1kQ1NunDUCHW11jU
X-Google-Smtp-Source: APXvYqyFmMCW0hVXmZ1u+Axd9A96fVJqu6PJ3yff+WZbb+5Sz4BnH+MEtpVu3O3hzTg6ht6anJ4uhg==
X-Received: by 2002:a17:90a:2627:: with SMTP id
 l36mr5745282pje.71.1560432192614; 
 Thu, 13 Jun 2019 06:23:12 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:7141:4858:bdd9:1134:3bdd:7ab4])
 by smtp.gmail.com with ESMTPSA id f88sm3311pjg.5.2019.06.13.06.23.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Jun 2019 06:23:11 -0700 (PDT)
Date: Thu, 13 Jun 2019 18:53:01 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH 2/2] ARM: dts: Add support for 96Boards Meerkat96 board
Message-ID: <20190613132301.GB22171@Mani-XPS-13-9360>
References: <20190522131550.9034-1-manivannan.sadhasivam@linaro.org>
 <20190522131550.9034-3-manivannan.sadhasivam@linaro.org>
 <20190603121710.GB15919@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603121710.GB15919@dragon>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_062313_910779_8924F317 
X-CRM114-Status: GOOD (  22.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, yossi@novtech.com, nazik@novtech.com,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org, pbrobinson@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

On Mon, Jun 03, 2019 at 08:17:17PM +0800, Shawn Guo wrote:
> On Wed, May 22, 2019 at 06:45:50PM +0530, Manivannan Sadhasivam wrote:
> > Add devicetree support for 96Boards Meerkat96 board from Novtech. This
> > board is one of the Consumer Edition boards of the 96Boards family based
> > on i.MX7D SoC. Following are the currently supported features of the
> > board:
> > 
> > * uSD
> > * WiFi/BT
> > * USB
> > 
> > More information about this board can be found in 96Boards product page:
> > https://www.96boards.org/product/imx7-96/
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  arch/arm/boot/dts/Makefile            |   1 +
> >  arch/arm/boot/dts/imx7d-meerkat96.dts | 396 ++++++++++++++++++++++++++
> >  2 files changed, 397 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/imx7d-meerkat96.dts
> > 
> > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > index f4f5aeaf3298..3018a763dbd1 100644
> > --- a/arch/arm/boot/dts/Makefile
> > +++ b/arch/arm/boot/dts/Makefile
> > @@ -579,6 +579,7 @@ dtb-$(CONFIG_SOC_IMX7D) += \
> >  	imx7d-cl-som-imx7.dtb \
> >  	imx7d-colibri-emmc-eval-v3.dtb \
> >  	imx7d-colibri-eval-v3.dtb \
> > +	imx7d-meerkat96.dtb \
> >  	imx7d-nitrogen7.dtb \
> >  	imx7d-pico-hobbit.dtb \
> >  	imx7d-pico-pi.dtb \
> > diff --git a/arch/arm/boot/dts/imx7d-meerkat96.dts b/arch/arm/boot/dts/imx7d-meerkat96.dts
> > new file mode 100644
> > index 000000000000..7898d27340f6
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/imx7d-meerkat96.dts
> > @@ -0,0 +1,396 @@
> > +// SPDX-License-Identifier: GPL-2.0+ OR MIT
> > +/*
> > + * Copyright (C) 2019 Linaro Ltd.
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "imx7d.dtsi"
> > +
> > +/ {
> > +	model = "96Boards Meerkat96 Board";
> > +	compatible = "novtech,imx7d-meerkat96", "fsl,imx7d";
> > +
> > +	chosen {
> > +		stdout-path = &uart6;
> > +	};
> > +
> > +	memory@80000000 {
> > +		device_type = "memory";
> > +		reg = <0x80000000 0x20000000>; /* 512MB */
> > +	};
> > +
> > +	reg_wlreg_on: regulator-wlreg_on {
> 
> Use hyphen consistently in node name: regulator-wlreg-on
> 

Ack

> > +		compatible = "regulator-fixed";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_wlreg_on>;
> > +		regulator-name = "wlreg_on";
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		startup-delay-us = <100>;
> > +		gpio = <&gpio6 15 GPIO_ACTIVE_HIGH>;
> > +		enable-active-high;
> > +		regulator-always-on;
> > +	};
> > +
> > +	reg_3p3v: regulator-3p3v {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "3P3V";
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		regulator-always-on;
> > +	};
> > +
> > +	reg_usb_otg1_vbus: regulator-usb-otg1-vbus {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "usb_otg1_vbus";
> > +		regulator-min-microvolt = <5000000>;
> > +		regulator-max-microvolt = <5000000>;
> > +	};
> > +
> > +	reg_usb_otg2_vbus: regulator-usb-otg2-vbus {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "usb_otg2_vbus";
> > +		regulator-min-microvolt = <5000000>;
> > +		regulator-max-microvolt = <5000000>;
> > +		gpio = <&gpio1 2 GPIO_ACTIVE_HIGH>;
> > +		enable-active-high;
> > +	};
> > +
> > +	sw1a_reg: sw1a {
> > +		regulator-name = "sw1a_reg";
> 
> Is it a fixed regulator or what?
> 

yep, missed the compatible. will add it.

> > +		regulator-min-microvolt = <700000>;
> > +		regulator-max-microvolt = <1475000>;
> > +		regulator-boot-on;
> > +		regulator-always-on;
> > +		regulator-ramp-delay = <6250>;
> > +	};
> > +
> > +	leds {
> > +		compatible = "gpio-leds";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_gpio_leds>;
> > +
> > +		led1 {
> > +			label = "green:user1";
> > +			gpios = <&gpio1 4 GPIO_ACTIVE_LOW>;
> > +			linux,default-trigger = "heartbeat";
> > +			default-state = "off";
> > +		};
> > +
> > +		led2 {
> > +			label = "green:user2";
> > +			gpios = <&gpio1 5 GPIO_ACTIVE_LOW>;
> > +			linux,default-trigger = "mmc0";
> > +			default-state = "off";
> > +		};
> > +
> > +		led3 {
> > +			label = "green:user3";
> > +			gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
> > +			linux,default-trigger = "mmc1";
> > +			default-state = "off";
> > +		};
> > +
> > +		led4 {
> > +			label = "green:user4";
> > +			gpios = <&gpio1 7 GPIO_ACTIVE_LOW>;
> > +			linux,default-trigger = "none";
> > +			default-state = "off";
> > +			panic-indicator;
> > +		};
> > +
> > +		led@5 {
> 
> led5
> 

Ack

> > +			label = "yellow:wlan";
> > +			gpios = <&gpio1 0 GPIO_ACTIVE_HIGH>;
> > +			linux,default-trigger = "phy0tx";
> > +			default-state = "off";
> > +		};
> > +
> > +		led@6 {
> 
> led6
>

Ack
 
> > +			label = "blue:bt";
> > +			gpios = <&gpio5 2 GPIO_ACTIVE_HIGH>;
> > +			linux,default-trigger = "bluetooth-power";
> > +			default-state = "off";
> > +		};
> > +	};
> > +};
> > +
> > +&cpu0 {
> > +	cpu-supply = <&sw1a_reg>;
> > +};
> > +
> > +&i2c1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_i2c1>;
> > +	status = "okay";
> > +};
> > +
> > +&i2c2 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_i2c2>;
> > +	status = "okay";
> > +};
> > +
> > +&i2c3 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_i2c3>;
> > +	status = "okay";
> > +};
> > +
> > +&i2c4 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_i2c4>;
> > +	status = "okay";
> > +};
> > +
> > +&lcdif {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_lcdif>;
> > +	status = "okay";
> > +};
> > +
> > +&uart1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_uart1>;
> > +	assigned-clocks = <&clks IMX7D_UART1_ROOT_SRC>;
> > +	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
> > +	status = "okay";
> > +};
> > +
> > +&uart3 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_uart3>;
> > +	assigned-clocks = <&clks IMX7D_UART3_ROOT_SRC>;
> > +	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
> > +	fsl,uart-has-rtscts;
> 
> fsl,uart-has-rtscts is deprecated, should use uart-has-rtscts instead.
> 

Okay

> > +	status = "okay";
> > +};
> > +
> > +&uart6 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_uart6>;
> > +	assigned-clocks = <&clks IMX7D_UART6_ROOT_SRC>;
> > +	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
> > +	status = "okay";
> > +};
> > +
> > +&uart7 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_uart7 &pinctrl_bt_gpios>;
> > +	assigned-clocks = <&clks IMX7D_UART7_ROOT_SRC>;
> > +	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
> > +	fsl,uart-has-rtscts;
> 
> Ditto
> 

Okay

> > +	fsl,dte-mode;
> > +	status = "okay";
> > +
> > +	bluetooth {
> > +		compatible = "brcm,bcm43438-bt";
> > +		device-wakeup-gpios = <&gpio6 13 GPIO_ACTIVE_HIGH>;
> > +		host-wakeup-gpios = <&gpio4 17 GPIO_ACTIVE_HIGH>;
> > +	};
> > +};
> > +
> > +&usbotg1 {
> > +	vbus-supply = <&reg_usb_otg1_vbus>;
> > +	status = "okay";
> > +};
> > +
> > +&usbotg2 {
> > +	vbus-supply = <&reg_usb_otg2_vbus>;
> > +	dr_mode = "host";
> > +	status = "okay";
> > +};
> > +
> > +&usdhc1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_usdhc1>;
> > +	keep-power-in-suspend;
> > +	tuning-step = <2>;
> > +	vmmc-supply = <&reg_3p3v>;
> > +	no-1-8-v;
> > +	broken-cd;
> > +	status = "okay";
> > +};
> > +
> > +&usdhc3 {
> > +	#address-cells = <1>;
> > +	#size-cells = <0>;
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_usdhc3>;
> > +	bus-width = <4>;
> > +	no-1-8-v;
> > +	no-mmc;
> > +	non-removable;
> > +	keep-power-in-suspend;
> > +	enable-sdio-wakeup;
> 
> Should use 'wakeup-source'.  See bindings/power/wakeup-source.txt.
> 

Okay

> > +	vmmc-supply = <&reg_wlreg_on>;
> > +	vqmmc-supply =<&reg_3p3v>;
> > +	status = "okay";
> > +
> > +	brcmf: wifi@1 {
> > +		reg = <1>;
> > +		compatible = "brcm,bcm4329-fmac";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_wlan_irq>;
> > +		interrupt-parent = <&gpio6>;
> > +		interrupts = <14 IRQ_TYPE_LEVEL_HIGH>;
> > +		interrupt-names = "host-wake";
> > +	};
> > +};
> > +
> > +&iomuxc {
> > +	imx7d-sdb {
> 
> This container node is unnecessary now, and can be dropped to save one
> level of indentation.
> 

Ah, thanks for the info. It really got stretched...

> > +		pinctrl_bt_gpios: bt_gpios {
> 
> Please name these pinctrl group node more consistently, something like
> below:
> 
> 	pinctrl_xxx: xxxgrp {
> 		...
> 	};
> 
> Also keep them alphabetically sorted.
> 

Okay

> > +			fsl,pins = <
> > +				MX7D_PAD_SAI1_TX_BCLK__GPIO6_IO13	0x59
> > +				MX7D_PAD_ECSPI1_MOSI__GPIO4_IO17	0x1f
> > +			>;
> > +		};
> > +
> > +		pinctrl_i2c1: i2c1grp {
> > +			fsl,pins = <
> > +				MX7D_PAD_I2C1_SDA__I2C1_SDA		0x4000007f
> > +				MX7D_PAD_I2C1_SCL__I2C1_SCL		0x4000007f
> > +			>;
> > +		};
> > +
> > +		pinctrl_i2c2: i2c2grp {
> > +			fsl,pins = <
> > +				MX7D_PAD_I2C2_SDA__I2C2_SDA		0x4000007f
> > +				MX7D_PAD_I2C2_SCL__I2C2_SCL		0x4000007f
> > +			>;
> > +		};
> > +
> > +		pinctrl_i2c3: i2c3grp {
> > +			fsl,pins = <
> > +				MX7D_PAD_ENET1_RGMII_RD1__I2C3_SDA	0x4000007f
> > +				MX7D_PAD_ENET1_RGMII_RD0__I2C3_SCL	0x4000007f
> > +			>;
> > +		};
> > +
> > +		pinctrl_i2c4: i2c4grp {
> > +			fsl,pins = <
> > +				MX7D_PAD_SAI1_RX_BCLK__I2C4_SDA		0x4000007f
> > +				MX7D_PAD_SAI1_RX_SYNC__I2C4_SCL		0x4000007f
> > +			>;
> > +		};
> > +
> > +		pinctrl_lcdif: lcdifgrp {
> > +			fsl,pins = <
> > +				MX7D_PAD_LCD_DATA00__LCD_DATA0		0x79
> > +				MX7D_PAD_LCD_DATA01__LCD_DATA1		0x79
> > +				MX7D_PAD_LCD_DATA02__LCD_DATA2		0x79
> > +				MX7D_PAD_LCD_DATA03__LCD_DATA3		0x79
> > +				MX7D_PAD_LCD_DATA04__LCD_DATA4		0x79
> > +				MX7D_PAD_LCD_DATA05__LCD_DATA5		0x79
> > +				MX7D_PAD_LCD_DATA06__LCD_DATA6		0x79
> > +				MX7D_PAD_LCD_DATA07__LCD_DATA7		0x79
> > +				MX7D_PAD_LCD_DATA08__LCD_DATA8		0x79
> > +				MX7D_PAD_LCD_DATA09__LCD_DATA9		0x79
> > +				MX7D_PAD_LCD_DATA10__LCD_DATA10		0x79
> > +				MX7D_PAD_LCD_DATA11__LCD_DATA11		0x79
> > +				MX7D_PAD_LCD_DATA12__LCD_DATA12		0x79
> > +				MX7D_PAD_LCD_DATA13__LCD_DATA13		0x79
> > +				MX7D_PAD_LCD_DATA14__LCD_DATA14		0x79
> > +				MX7D_PAD_LCD_DATA15__LCD_DATA15		0x79
> > +				MX7D_PAD_LCD_DATA16__LCD_DATA16		0x79
> > +				MX7D_PAD_LCD_DATA17__LCD_DATA17		0x79
> > +				MX7D_PAD_LCD_DATA18__LCD_DATA18		0x79
> > +				MX7D_PAD_LCD_DATA19__LCD_DATA19		0x79
> > +				MX7D_PAD_LCD_DATA20__LCD_DATA20		0x79
> > +				MX7D_PAD_LCD_DATA21__LCD_DATA21		0x79
> > +				MX7D_PAD_LCD_DATA22__LCD_DATA22		0x79
> > +				MX7D_PAD_LCD_DATA23__LCD_DATA23		0x79
> > +				MX7D_PAD_LCD_CLK__LCD_CLK		0x79
> > +				MX7D_PAD_LCD_ENABLE__LCD_ENABLE		0x79
> > +				MX7D_PAD_LCD_VSYNC__LCD_VSYNC		0x79
> > +				MX7D_PAD_LCD_HSYNC__LCD_HSYNC		0x79
> > +				MX7D_PAD_LCD_RESET__LCD_RESET		0x79
> > +			>;
> > +		};
> > +
> > +		pinctrl_gpio_leds: gpioledsgrp {
> > +			fsl,pins = <
> > +				MX7D_PAD_LPSR_GPIO1_IO00__GPIO1_IO0	0x59
> > +				MX7D_PAD_LPSR_GPIO1_IO04__GPIO1_IO4	0x59
> > +				MX7D_PAD_LPSR_GPIO1_IO05__GPIO1_IO5	0x59
> > +				MX7D_PAD_LPSR_GPIO1_IO06__GPIO1_IO6	0x59
> > +				MX7D_PAD_LPSR_GPIO1_IO07__GPIO1_IO7	0x59
> > +				MX7D_PAD_SD1_RESET_B__GPIO5_IO2		0x59
> > +			>;
> > +		};
> > +
> > +		pinctrl_tda998x: hdmigrp-1 {
> 
> Unused?  Maybe add it later when needed.
> 

yeah, no hdmi support as of now. Will add it later.

Thanks,
Mani

> Shawn
> 
> > +			fsl,pins = <
> > +				MX7D_PAD_EPDC_BDR0__GPIO2_IO28		0x59
> > +			>;
> > +		};
> > +
> > +		pinctrl_uart1: uart1grp {
> > +			fsl,pins = <
> > +				MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX	0x79
> > +				MX7D_PAD_UART1_RX_DATA__UART1_DCE_RX	0x79
> > +			>;
> > +		};
> > +
> > +		pinctrl_uart3: uart3grp {
> > +			fsl,pins = <
> > +				MX7D_PAD_SD3_DATA4__UART3_DCE_RX	0x79
> > +				MX7D_PAD_SD3_DATA5__UART3_DCE_TX	0x79
> > +				MX7D_PAD_SD3_DATA6__UART3_DCE_RTS	0x79
> > +				MX7D_PAD_SD3_DATA7__UART3_DCE_CTS	0x79
> > +			>;
> > +		};
> > +
> > +		pinctrl_uart6: uart6grp {
> > +			fsl,pins = <
> > +				MX7D_PAD_SD1_CD_B__UART6_DCE_RX		0x79
> > +				MX7D_PAD_SD1_WP__UART6_DCE_TX		0x79
> > +			>;
> > +		};
> > +
> > +		pinctrl_uart7: uart7grp {
> > +			fsl,pins = <
> > +				MX7D_PAD_ECSPI2_SCLK__UART7_DTE_TX	0x79
> > +				MX7D_PAD_ECSPI2_MOSI__UART7_DTE_RX	0x79
> > +				MX7D_PAD_ECSPI2_MISO__UART7_DTE_CTS	0x79
> > +				MX7D_PAD_ECSPI2_SS0__UART7_DTE_RTS	0x79
> > +			>;
> > +		};
> > +
> > +		pinctrl_usdhc1: usdhc1grp {
> > +			fsl,pins = <
> > +				MX7D_PAD_SD1_CMD__SD1_CMD		0x59
> > +				MX7D_PAD_SD1_CLK__SD1_CLK		0x19
> > +				MX7D_PAD_SD1_DATA0__SD1_DATA0		0x59
> > +				MX7D_PAD_SD1_DATA1__SD1_DATA1		0x59
> > +				MX7D_PAD_SD1_DATA2__SD1_DATA2		0x59
> > +				MX7D_PAD_SD1_DATA3__SD1_DATA3		0x59
> > +			>;
> > +		};
> > +
> > +		pinctrl_usdhc3: usdhc3grp {
> > +			fsl,pins = <
> > +				MX7D_PAD_SD3_CMD__SD3_CMD		0x59
> > +				MX7D_PAD_SD3_CLK__SD3_CLK		0x0D
> > +				MX7D_PAD_SD3_DATA0__SD3_DATA0		0x59
> > +				MX7D_PAD_SD3_DATA1__SD3_DATA1		0x59
> > +				MX7D_PAD_SD3_DATA2__SD3_DATA2		0x59
> > +				MX7D_PAD_SD3_DATA3__SD3_DATA3		0x59
> > +			>;
> > +		};
> > +
> > +		pinctrl_wlreg_on: wlreg_on {
> > +			fsl,pins = <
> > +				MX7D_PAD_SAI1_TX_DATA__GPIO6_IO15	0x19
> > +			>;
> > +		};
> > +
> > +		pinctrl_wlan_irq: wlan_irq {
> > +			fsl,pins = <
> > +				MX7D_PAD_SAI1_TX_SYNC__GPIO6_IO14	0x19
> > +			>;
> > +		};
> > +	};
> > +};
> > -- 
> > 2.17.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
