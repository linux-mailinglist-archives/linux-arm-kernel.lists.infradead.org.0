Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A662245BA3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 13:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jWhmlUuUwmM9d7KjEVK6iRlkxqGB8ZvOYJraz+TqNHE=; b=YMpReqgS2VTwpP
	TZW6gkFIv8i+qXHYLy7BKbMbnAdO8PYpxIFc5yRwEGh41vaYcFg/eo9d/BHTEwQ92oEC3bXrK8mHd
	s8aCkYpmRBtg/PcJ7lIuhz1WWodPdQ789k5dnaLYJaMZLL2/eg2CxQK7JoparcnrdkEwOghfiCU/4
	Q9NNTg0hPRvajeSBi/4dDNhN5/PxbKhI3lnLnYjP23Ab8NaIoxz+C6go6mys91BZ06IJEDeYzcJdZ
	MMqhkYa4Gr8oGvq0SCHL5AI0P/vqCzIYlDxzWxzGkLbU/kdY/g5IJq/Dgzqv3M1dyAleZfUww8eWy
	WJX+f41TD0X4GHHYofYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbkdY-000602-UF; Fri, 14 Jun 2019 11:44:52 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbkdP-0005wt-5c
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 11:44:45 +0000
Received: by mail-pf1-x443.google.com with SMTP id t16so1303725pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 04:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DduYJgjpNHHfGFtHP2kceFno1x3DB1w1qTO8i5hXNlE=;
 b=v/RSgQ9MMRKvLWkghflGgMhYiE+ORKSFimOMdrzVTA7GdECq971hdPpT9oOGSPaqJo
 QZvieRjVupnIiTUXUYmz4L/htPZ5Z5X3zuhQ+YtOUbAeODv/0eVbkcfhGZIasaYNK4q8
 B2ONvV00DFHhoHX+TihSjME5jP6c7bXfeBcqfRPWPo6XFFLsTz7kIMxnz0XKoiQTgWOq
 Z9w5NwwLVyiM8rXqkWdra1kAor0tBNuIr8LMowkx5ZhqTNobF0Bu6oiQaSRDtMBnFGVN
 f6KYdz1fWmkdUBCAlfbPUpFiiUoYF+ws7GW4SnB36hz1UKgAauDshyPskZ6weeCsffVd
 HH+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DduYJgjpNHHfGFtHP2kceFno1x3DB1w1qTO8i5hXNlE=;
 b=bgG0w6ag5x1I7FsxEvKzgD/LVppPJNbHR+11z0iMCC/6KLVoSpmaHk+nGo8PEGqaJF
 YJn+8UosYdxmUQ9AZJxYnKobLOpjjR+ltuyLbsAbatNNBZ/GZwN109Ebugyfuqtq6/EJ
 NeuilsQDfBt4rGctn4WCI0sVptxkgbHQdEh8ArMq+ONeZZwgp3jMKNVWiDjvkyyF3cZR
 6WZCSAVLzsuxhLtPmfzonl77vGfpFG4xR7oTcaa7aWIEBFxckBp2QcIatmn2PQoLru+j
 dj+KO6oYWbuv4/91JQLfA1hgkrcMbn/FEgrq1DW2U58UP/uiAGQUs/oR+Brc9T9n73wQ
 EIew==
X-Gm-Message-State: APjAAAXoXVm5L6jBBzmLRJx2hUyy5sJHs2a7s6BjfjkFCrg1BApECefn
 MWLFF5EP7wiH2T3roBDo2A+w
X-Google-Smtp-Source: APXvYqy+gGSxMu5GjqkQ6K2WDTiSDOYWekZ//+9J8G1xXbqUZTLLfsfic0PizQvXbEXhE6POWBw0qw==
X-Received: by 2002:a17:90a:ac11:: with SMTP id
 o17mr10887447pjq.134.1560512681628; 
 Fri, 14 Jun 2019 04:44:41 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:7241:dfde:bdd9:1134:3bdd:7ab4])
 by smtp.gmail.com with ESMTPSA id c69sm3428947pje.6.2019.06.14.04.44.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 14 Jun 2019 04:44:40 -0700 (PDT)
Date: Fri, 14 Jun 2019 17:14:33 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org
Subject: Re: [PATCH v2 2/2] ARM: dts: Add support for 96Boards Meerkat96 board
Message-ID: <20190614114433.GA24166@Mani-XPS-13-9360>
References: <20190613132705.5150-1-manivannan.sadhasivam@linaro.org>
 <20190613132705.5150-3-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613132705.5150-3-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_044443_247560_89FEEEAA 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, yossi@novtech.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, pbrobinson@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

On Thu, Jun 13, 2019 at 06:57:05PM +0530, Manivannan Sadhasivam wrote:
> Add devicetree support for 96Boards Meerkat96 board from Novtech. This
> board is one of the Consumer Edition boards of the 96Boards family based
> on i.MX7D SoC. Following are the currently supported features of the
> board:
> 
> * uSD
> * WiFi/BT
> * USB
> 
> More information about this board can be found in 96Boards product page:
> https://www.96boards.org/product/imx7-96/
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  arch/arm/boot/dts/Makefile            |   1 +
>  arch/arm/boot/dts/imx7d-meerkat96.dts | 389 ++++++++++++++++++++++++++
>  2 files changed, 390 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx7d-meerkat96.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index f4f5aeaf3298..3018a763dbd1 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -579,6 +579,7 @@ dtb-$(CONFIG_SOC_IMX7D) += \
>  	imx7d-cl-som-imx7.dtb \
>  	imx7d-colibri-emmc-eval-v3.dtb \
>  	imx7d-colibri-eval-v3.dtb \
> +	imx7d-meerkat96.dtb \
>  	imx7d-nitrogen7.dtb \
>  	imx7d-pico-hobbit.dtb \
>  	imx7d-pico-pi.dtb \
> diff --git a/arch/arm/boot/dts/imx7d-meerkat96.dts b/arch/arm/boot/dts/imx7d-meerkat96.dts
> new file mode 100644
> index 000000000000..a86dc4878e44
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx7d-meerkat96.dts
> @@ -0,0 +1,389 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
> +/*
> + * Copyright (C) 2019 Linaro Ltd.
> + */
> +
> +/dts-v1/;
> +
> +#include "imx7d.dtsi"
> +
> +/ {
> +	model = "96Boards Meerkat96 Board";
> +	compatible = "novtech,imx7d-meerkat96", "fsl,imx7d";
> +
> +	chosen {
> +		stdout-path = &uart6;
> +	};
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +		reg = <0x80000000 0x20000000>; /* 512MB */
> +	};
> +
> +	reg_wlreg_on: regulator-wlreg-on {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_wlreg_on>;
> +		regulator-name = "wlreg_on";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		startup-delay-us = <100>;
> +		gpio = <&gpio6 15 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-always-on;
> +	};
> +
> +	reg_3p3v: regulator-3p3v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3P3V";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_usb_otg1_vbus: regulator-usb-otg1-vbus {
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb_otg1_vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
> +	reg_usb_otg2_vbus: regulator-usb-otg2-vbus {
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb_otg2_vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&gpio1 2 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	sw1a_reg: sw1a {
> +		compatible = "regulator-fixed";

Actually I was wrong here. This is not a fixed regulator node as the voltage
level varies. Since there is no PMIC support exist now, can I remove this node?
Or I should make it as fixed 0.7v?

Thanks,
Mani

> +		regulator-name = "sw1a_reg";
> +		regulator-min-microvolt = <700000>;
> +		regulator-max-microvolt = <1475000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +		regulator-ramp-delay = <6250>;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio_leds>;
> +
> +		led1 {
> +			label = "green:user1";
> +			gpios = <&gpio1 4 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger = "heartbeat";
> +			default-state = "off";
> +		};
> +
> +		led2 {
> +			label = "green:user2";
> +			gpios = <&gpio1 5 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger = "mmc0";
> +			default-state = "off";
> +		};
> +
> +		led3 {
> +			label = "green:user3";
> +			gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger = "mmc1";
> +			default-state = "off";
> +		};
> +
> +		led4 {
> +			label = "green:user4";
> +			gpios = <&gpio1 7 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger = "none";
> +			default-state = "off";
> +			panic-indicator;
> +		};
> +
> +		led5 {
> +			label = "yellow:wlan";
> +			gpios = <&gpio1 0 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "phy0tx";
> +			default-state = "off";
> +		};
> +
> +		led6 {
> +			label = "blue:bt";
> +			gpios = <&gpio5 2 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "bluetooth-power";
> +			default-state = "off";
> +		};
> +	};
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&sw1a_reg>;
> +};
> +
> +&i2c1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	status = "okay";
> +};
> +
> +&i2c2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	status = "okay";
> +};
> +
> +&i2c3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c3>;
> +	status = "okay";
> +};
> +
> +&i2c4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c4>;
> +	status = "okay";
> +};
> +
> +&lcdif {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_lcdif>;
> +	status = "okay";
> +};
> +
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	assigned-clocks = <&clks IMX7D_UART1_ROOT_SRC>;
> +	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
> +	status = "okay";
> +};
> +
> +&uart3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart3>;
> +	assigned-clocks = <&clks IMX7D_UART3_ROOT_SRC>;
> +	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
> +	uart-has-rtscts;
> +	status = "okay";
> +};
> +
> +&uart6 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart6>;
> +	assigned-clocks = <&clks IMX7D_UART6_ROOT_SRC>;
> +	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
> +	status = "okay";
> +};
> +
> +&uart7 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart7 &pinctrl_bt_gpios>;
> +	assigned-clocks = <&clks IMX7D_UART7_ROOT_SRC>;
> +	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
> +	uart-has-rtscts;
> +	fsl,dte-mode;
> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "brcm,bcm43438-bt";
> +		device-wakeup-gpios = <&gpio6 13 GPIO_ACTIVE_HIGH>;
> +		host-wakeup-gpios = <&gpio4 17 GPIO_ACTIVE_HIGH>;
> +	};
> +};
> +
> +&usbotg1 {
> +	vbus-supply = <&reg_usb_otg1_vbus>;
> +	status = "okay";
> +};
> +
> +&usbotg2 {
> +	vbus-supply = <&reg_usb_otg2_vbus>;
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +&usdhc1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	keep-power-in-suspend;
> +	tuning-step = <2>;
> +	vmmc-supply = <&reg_3p3v>;
> +	no-1-8-v;
> +	broken-cd;
> +	status = "okay";
> +};
> +
> +&usdhc3 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc3>;
> +	bus-width = <4>;
> +	no-1-8-v;
> +	no-mmc;
> +	non-removable;
> +	keep-power-in-suspend;
> +	wakeup-source;
> +	vmmc-supply = <&reg_wlreg_on>;
> +	vqmmc-supply =<&reg_3p3v>;
> +	status = "okay";
> +
> +	brcmf: wifi@1 {
> +		reg = <1>;
> +		compatible = "brcm,bcm4329-fmac";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_wlan_irq>;
> +		interrupt-parent = <&gpio6>;
> +		interrupts = <14 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "host-wake";
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl_bt_gpios: btgpiosgrp {
> +		fsl,pins = <
> +			MX7D_PAD_SAI1_TX_BCLK__GPIO6_IO13	0x59
> +			MX7D_PAD_ECSPI1_MOSI__GPIO4_IO17	0x1f
> +		>;
> +	};
> +
> +	pinctrl_gpio_leds: gpioledsgrp {
> +		fsl,pins = <
> +			MX7D_PAD_LPSR_GPIO1_IO00__GPIO1_IO0	0x59
> +			MX7D_PAD_LPSR_GPIO1_IO04__GPIO1_IO4	0x59
> +			MX7D_PAD_LPSR_GPIO1_IO05__GPIO1_IO5	0x59
> +			MX7D_PAD_LPSR_GPIO1_IO06__GPIO1_IO6	0x59
> +			MX7D_PAD_LPSR_GPIO1_IO07__GPIO1_IO7	0x59
> +			MX7D_PAD_SD1_RESET_B__GPIO5_IO2		0x59
> +		>;
> +	};
> +
> +	pinctrl_i2c1: i2c1grp {
> +		fsl,pins = <
> +			MX7D_PAD_I2C1_SDA__I2C1_SDA		0x4000007f
> +			MX7D_PAD_I2C1_SCL__I2C1_SCL		0x4000007f
> +		>;
> +	};
> +
> +	pinctrl_i2c2: i2c2grp {
> +		fsl,pins = <
> +			MX7D_PAD_I2C2_SDA__I2C2_SDA		0x4000007f
> +			MX7D_PAD_I2C2_SCL__I2C2_SCL		0x4000007f
> +		>;
> +	};
> +
> +	pinctrl_i2c3: i2c3grp {
> +		fsl,pins = <
> +			MX7D_PAD_ENET1_RGMII_RD1__I2C3_SDA	0x4000007f
> +			MX7D_PAD_ENET1_RGMII_RD0__I2C3_SCL	0x4000007f
> +		>;
> +	};
> +
> +	pinctrl_i2c4: i2c4grp {
> +		fsl,pins = <
> +			MX7D_PAD_SAI1_RX_BCLK__I2C4_SDA		0x4000007f
> +			MX7D_PAD_SAI1_RX_SYNC__I2C4_SCL		0x4000007f
> +		>;
> +	};
> +
> +	pinctrl_lcdif: lcdifgrp {
> +		fsl,pins = <
> +			MX7D_PAD_LCD_DATA00__LCD_DATA0		0x79
> +			MX7D_PAD_LCD_DATA01__LCD_DATA1		0x79
> +			MX7D_PAD_LCD_DATA02__LCD_DATA2		0x79
> +			MX7D_PAD_LCD_DATA03__LCD_DATA3		0x79
> +			MX7D_PAD_LCD_DATA04__LCD_DATA4		0x79
> +			MX7D_PAD_LCD_DATA05__LCD_DATA5		0x79
> +			MX7D_PAD_LCD_DATA06__LCD_DATA6		0x79
> +			MX7D_PAD_LCD_DATA07__LCD_DATA7		0x79
> +			MX7D_PAD_LCD_DATA08__LCD_DATA8		0x79
> +			MX7D_PAD_LCD_DATA09__LCD_DATA9		0x79
> +			MX7D_PAD_LCD_DATA10__LCD_DATA10		0x79
> +			MX7D_PAD_LCD_DATA11__LCD_DATA11		0x79
> +			MX7D_PAD_LCD_DATA12__LCD_DATA12		0x79
> +			MX7D_PAD_LCD_DATA13__LCD_DATA13		0x79
> +			MX7D_PAD_LCD_DATA14__LCD_DATA14		0x79
> +			MX7D_PAD_LCD_DATA15__LCD_DATA15		0x79
> +			MX7D_PAD_LCD_DATA16__LCD_DATA16		0x79
> +			MX7D_PAD_LCD_DATA17__LCD_DATA17		0x79
> +			MX7D_PAD_LCD_DATA18__LCD_DATA18		0x79
> +			MX7D_PAD_LCD_DATA19__LCD_DATA19		0x79
> +			MX7D_PAD_LCD_DATA20__LCD_DATA20		0x79
> +			MX7D_PAD_LCD_DATA21__LCD_DATA21		0x79
> +			MX7D_PAD_LCD_DATA22__LCD_DATA22		0x79
> +			MX7D_PAD_LCD_DATA23__LCD_DATA23		0x79
> +			MX7D_PAD_LCD_CLK__LCD_CLK		0x79
> +			MX7D_PAD_LCD_ENABLE__LCD_ENABLE		0x79
> +			MX7D_PAD_LCD_VSYNC__LCD_VSYNC		0x79
> +			MX7D_PAD_LCD_HSYNC__LCD_HSYNC		0x79
> +			MX7D_PAD_LCD_RESET__LCD_RESET		0x79
> +		>;
> +	};
> +
> +	pinctrl_uart1: uart1grp {
> +		fsl,pins = <
> +			MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX	0x79
> +			MX7D_PAD_UART1_RX_DATA__UART1_DCE_RX	0x79
> +		>;
> +	};
> +
> +	pinctrl_uart3: uart3grp {
> +		fsl,pins = <
> +			MX7D_PAD_SD3_DATA4__UART3_DCE_RX	0x79
> +			MX7D_PAD_SD3_DATA5__UART3_DCE_TX	0x79
> +			MX7D_PAD_SD3_DATA6__UART3_DCE_RTS	0x79
> +			MX7D_PAD_SD3_DATA7__UART3_DCE_CTS	0x79
> +		>;
> +	};
> +
> +	pinctrl_uart6: uart6grp {
> +		fsl,pins = <
> +			MX7D_PAD_SD1_CD_B__UART6_DCE_RX		0x79
> +			MX7D_PAD_SD1_WP__UART6_DCE_TX		0x79
> +		>;
> +	};
> +
> +	pinctrl_uart7: uart7grp {
> +		fsl,pins = <
> +			MX7D_PAD_ECSPI2_SCLK__UART7_DTE_TX	0x79
> +			MX7D_PAD_ECSPI2_MOSI__UART7_DTE_RX	0x79
> +			MX7D_PAD_ECSPI2_MISO__UART7_DTE_CTS	0x79
> +			MX7D_PAD_ECSPI2_SS0__UART7_DTE_RTS	0x79
> +		>;
> +	};
> +
> +	pinctrl_usdhc1: usdhc1grp {
> +		fsl,pins = <
> +			MX7D_PAD_SD1_CMD__SD1_CMD		0x59
> +			MX7D_PAD_SD1_CLK__SD1_CLK		0x19
> +			MX7D_PAD_SD1_DATA0__SD1_DATA0		0x59
> +			MX7D_PAD_SD1_DATA1__SD1_DATA1		0x59
> +			MX7D_PAD_SD1_DATA2__SD1_DATA2		0x59
> +			MX7D_PAD_SD1_DATA3__SD1_DATA3		0x59
> +		>;
> +	};
> +
> +	pinctrl_usdhc3: usdhc3grp {
> +		fsl,pins = <
> +			MX7D_PAD_SD3_CMD__SD3_CMD		0x59
> +			MX7D_PAD_SD3_CLK__SD3_CLK		0x0D
> +			MX7D_PAD_SD3_DATA0__SD3_DATA0		0x59
> +			MX7D_PAD_SD3_DATA1__SD3_DATA1		0x59
> +			MX7D_PAD_SD3_DATA2__SD3_DATA2		0x59
> +			MX7D_PAD_SD3_DATA3__SD3_DATA3		0x59
> +		>;
> +	};
> +
> +	pinctrl_wlan_irq: wlanirqgrp {
> +		fsl,pins = <
> +			MX7D_PAD_SAI1_TX_SYNC__GPIO6_IO14	0x19
> +		>;
> +	};
> +
> +	pinctrl_wlreg_on: wlregongrp {
> +		fsl,pins = <
> +			MX7D_PAD_SAI1_TX_DATA__GPIO6_IO15	0x19
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
