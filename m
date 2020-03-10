Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A1B17F0A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 07:36:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0AhcFSwizWHJ9CN5RipkES5u10ZOpttt8czTJ9jgYSY=; b=Pxm/IGlcALHxGO
	9hxbBlGbUsLpxWHzzRbQMS/Z1QZ4oH2dfwVtU+jya7DtrF+XZoKBFNkfFpEYD34kA2RkcQa+xRyr5
	BDD2MRwoocklJzceJeuftymVIDQqBOfHGP/B10pxBrNt5Y/uMVa+p8tSfbHzD5thjN+j04icbzIHH
	tPIEA5CFQWUy/eremMfG09krDt1MQKULSkpZaolktwi6z9iQuCjVqjS+6mHsInWj0+Ge/m2roGt5P
	I4NPs3WjB0P18B6+doOJbusJUlcEztQyy9HHvoRb7wApa1GNVE+VCDOzvHhzy/QsUwJ2DcTg0F8Ki
	Q0ad2onz9otkYasA/Miw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBYUx-0002VV-Bs; Tue, 10 Mar 2020 06:36:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBYUp-0002VB-6w
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 06:36:09 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C5631205F4;
 Tue, 10 Mar 2020 06:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583822166;
 bh=bTNPYhUOk+1dd0RDITJK0+F52k2DHJVpTbJslmJTQRo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wnTtFImMTnM7/Smb4S6UunGy37CoMlgyFxUoG4zwV39HZb+8UtovTSsX0bBsumyr9
 RoT+Pm+Ellf1+TI8zqEiEreicnDWG6YONLW9r6ob2r6zoo0bOtKNfslOkKslOjQKob
 jgvzT2widN4d81R/dtrbk6wru236aPSe44P4Yw2g=
Date: Tue, 10 Mar 2020 14:36:00 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH] arm64: dts: imx: Add Beacon i.mx8mm development kit
Message-ID: <20200310063556.GM15729@dragon>
References: <20200220120207.1285448-1-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220120207.1285448-1-aford173@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_233607_305682_F107802F 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 aford@beaconembedded.com, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 06:02:06AM -0600, Adam Ford wrote:
> Beacon Embeddedworks is launching a development kit based on the
> i.MX8M Mini SoC.  The kit consists of a System on Module (SOM)
> + baseboard.  The SOM has the SoC, eMMC, and Ethernet. The baseboard
> has an wm8962 audio CODEC, a single USB OTG, and three USB host ports.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 
> diff --git a/arch/arm64/boot/dts/freescale/beacon-imx8mm-baseboard.dtsi b/arch/arm64/boot/dts/freescale/beacon-imx8mm-baseboard.dtsi
> new file mode 100644
> index 000000000000..6f6a3e8ebb91
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/beacon-imx8mm-baseboard.dtsi
> @@ -0,0 +1,289 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright 2020 Compass Electronics Group, LLC
> + */
> +
> +/ {
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led0 {
> +			label = "gen_led0";
> +			gpios = <&pca6416_1 4 GPIO_ACTIVE_HIGH>;
> +			default-state = "none";
> +		};
> +
> +		led1 {
> +			label = "gen_led1";
> +			gpios = <&pca6416_1 5 GPIO_ACTIVE_HIGH>;
> +			default-state = "none";
> +		};
> +
> +		led2 {
> +			label = "gen_led2";
> +			gpios = <&pca6416_1 6 GPIO_ACTIVE_HIGH>;
> +			default-state = "none";
> +		};
> +
> +		led3 {
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&pinctrl_led3>;
> +			label = "heartbeat";
> +			gpios = <&gpio4 28 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +
> +	reg_audio: regulator-audio {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3v3_aud";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&pca6416_1 11 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	reg_usdhc2_vmmc: regulator-usdhc2 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VSD_3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	sound {
> +		compatible = "fsl,imx-audio-wm8962";
> +		model = "wm8962-audio";
> +		audio-cpu = <&sai3>;
> +		audio-codec = <&wm8962>;
> +		audio-routing =
> +			"Headphone Jack", "HPOUTL",
> +			"Headphone Jack", "HPOUTR",
> +			"Ext Spk", "SPKOUTL",
> +			"Ext Spk", "SPKOUTR",
> +			"AMIC", "MICBIAS",
> +			"IN3R", "AMIC";
> +	};
> +};
> +
> +&ecspi2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_espi2>;
> +	status = "okay";

'status' goes to the last of property list.

> +	cs-gpios = <&gpio5 9 0>;
> +
> +	at25@0 {
> +		compatible = "atmel,at25";
> +		reg = <0>;
> +		spi-max-frequency = <5000000>;
> +		spi-cpha;
> +		spi-cpol;
> +

Drop the newline.

> +		pagesize = <32>;
> +		size = <2048>;
> +		address-width = <16>;
> +	};
> +};
> +
> +&i2c2 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	status = "okay";
> +};
> +
> +&i2c4 {
> +
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&pinctrl_i2c4>;

Two names with only one pinctrl handle?

> +	status = "okay";
> +
> +	pca6416_0: gpio@20 {
> +		compatible = "nxp,pcal6416";
> +		reg = <0x20>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pcal6414>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <27 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +
> +	pca6416_1: gpio@21 {
> +		compatible = "nxp,pcal6416";
> +		reg = <0x21>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <27 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +
> +	wm8962: audio-codec@1a {

Sort the nodes in unit-address.

> +		compatible = "wlf,wm8962";
> +		reg = <0x1a>;
> +		clocks = <&clk IMX8MM_CLK_SAI3_ROOT>;
> +		clock-names = "xclk";
> +		DCVDD-supply = <&reg_audio>;
> +		DBVDD-supply = <&reg_audio>;
> +		AVDD-supply = <&reg_audio>;
> +		CPVDD-supply = <&reg_audio>;
> +		MICVDD-supply = <&reg_audio>;
> +		PLLVDD-supply = <&reg_audio>;
> +		SPKVDD1-supply = <&reg_audio>;
> +		SPKVDD2-supply = <&reg_audio>;
> +		gpio-cfg = <
> +			0x0000 /* 0:Default */
> +			0x0000 /* 1:Default */
> +			0x0000 /* 2:FN_DMICCLK */
> +			0x0000 /* 3:Default */
> +			0x0000 /* 4:FN_DMICCDAT */
> +			0x0000 /* 5:Default */
> +		>;
> +	};
> +};
> +
> +&sai3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_sai3>;
> +	assigned-clocks = <&clk IMX8MM_CLK_SAI3>;
> +	assigned-clock-parents = <&clk IMX8MM_AUDIO_PLL1_OUT>;
> +	assigned-clock-rates = <24576000>;
> +	fsl,sai-mclk-direction-output;
> +	status = "okay";
> +};
> +
> +&snvs_pwrkey {
> +	status = "okay";
> +};
> +
> +&uart2 { /* console */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2>;
> +	status = "okay";
> +};
> +
> +&uart3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart3>;
> +	assigned-clocks = <&clk IMX8MM_CLK_UART3>;
> +	assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_80M>;
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;

As pinctrl_usdhc2_gpio is not going to change anyway in state of 100mhz
and 200mhz, we do not need to put it in those state, right?

> +	bus-width = <4>;
> +	vmmc-supply = <&reg_usdhc2_vmmc>;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +

Drop the newline.

> +	pinctrl_i2c2: i2c2grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C2_SCL_I2C2_SCL		0x400001c3
> +			MX8MM_IOMUXC_I2C2_SDA_I2C2_SDA		0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c4: i2c4grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C4_SCL_I2C4_SCL		0x400001c3
> +			MX8MM_IOMUXC_I2C4_SDA_I2C4_SDA		0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_espi2: espi2grp {

Sort the pinctrl entries alphabetically.

> +		fsl,pins = <
> +			MX8MM_IOMUXC_ECSPI2_SCLK_ECSPI2_SCLK		0x82
> +			MX8MM_IOMUXC_ECSPI2_MOSI_ECSPI2_MOSI		0x82
> +			MX8MM_IOMUXC_ECSPI2_MISO_ECSPI2_MISO		0x82
> +			MX8MM_IOMUXC_ECSPI1_SS0_GPIO5_IO9		0x41
> +		>;
> +	};
> +
> +	pinctrl_led3: led3grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SAI3_RXFS_GPIO4_IO28	0x41
> +		>;
> +	};
> +
> +	pinctrl_pcal6414: pcal6414-gpio {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SAI2_MCLK_GPIO4_IO27		0x19
> +		>;
> +	};
> +
> +	pinctrl_sai3: sai3grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SAI3_TXFS_SAI3_TX_SYNC     0xd6
> +			MX8MM_IOMUXC_SAI3_TXC_SAI3_TX_BCLK      0xd6
> +			MX8MM_IOMUXC_SAI3_MCLK_SAI3_MCLK        0xd6
> +			MX8MM_IOMUXC_SAI3_TXD_SAI3_TX_DATA0     0xd6
> +			MX8MM_IOMUXC_SAI3_RXD_SAI3_RX_DATA0	0xd6
> +		>;
> +	};
> +
> +	pinctrl_uart2: uart2grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_UART2_RXD_UART2_DCE_RX	0x140
> +			MX8MM_IOMUXC_UART2_TXD_UART2_DCE_TX	0x140
> +		>;
> +	};
> +
> +	pinctrl_uart3: uart3grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_ECSPI1_SCLK_UART3_DCE_RX	0x40
> +			MX8MM_IOMUXC_ECSPI1_MOSI_UART3_DCE_TX	0x40
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_gpio: usdhc2grpgpio {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD2_CD_B_USDHC2_CD_B	0x41
> +			MX8MM_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK	0x190
> +			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD	0x1d0
> +			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d0
> +			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d0
> +			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d0
> +			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d0
> +			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK	0x194
> +			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD	0x1d4
> +			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d4
> +			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d4
> +			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d4
> +			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d4
> +			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK	0x196
> +			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD	0x1d6
> +			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d6
> +			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d6
> +			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d6
> +			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d6
> +			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
> +		>;
> +	};
> +};
> +
> diff --git a/arch/arm64/boot/dts/freescale/beacon-imx8mm-kit.dts b/arch/arm64/boot/dts/freescale/beacon-imx8mm-kit.dts
> new file mode 100644
> index 000000000000..417b15d345d5
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/beacon-imx8mm-kit.dts
> @@ -0,0 +1,19 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright 2020 Compass Electronics Group, LLC
> + */
> +
> +/dts-v1/;
> +
> +#include "imx8mm.dtsi"
> +#include "beacon-imx8mm-som.dtsi"
> +#include "beacon-imx8mm-baseboard.dtsi"
> +
> +/ {
> +	model = "Beacon EmbeddedWorks i.MX8M Mini Development Kit";
> +	compatible = "fsl,imx8mm";
> +
> +	chosen {
> +		stdout-path = &uart2;
> +	};
> +};

Do we really need this level abstraction or we can just merge -baseboard
and -kit?

> diff --git a/arch/arm64/boot/dts/freescale/beacon-imx8mm-som.dtsi b/arch/arm64/boot/dts/freescale/beacon-imx8mm-som.dtsi
> new file mode 100644
> index 000000000000..a2028322c2a3
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/beacon-imx8mm-som.dtsi
> @@ -0,0 +1,411 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright 2020 Compass Electronics Group, LLC
> + */
> +
> +/ {
> +	usdhc1_pwrseq: usdhc1_pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_usdhc1_gpio>;
> +		reset-gpios = <&gpio2 10 GPIO_ACTIVE_LOW>;
> +		clocks = <&osc_32k>;
> +		clock-names = "ext_clock";
> +		post-power-on-delay-ms = <80>;
> +	};
> +
> +	memory@40000000 {
> +		device_type = "memory";
> +		reg = <0x0 0x40000000 0 0x80000000>;
> +	};
> +};
> +
> +&A53_0 {
> +	cpu-supply = <&buck2_reg>;
> +};
> +
> +&ddrc {
> +	operating-points-v2 = <&ddrc_opp_table>;
> +
> +	ddrc_opp_table: opp-table {
> +		compatible = "operating-points-v2";
> +
> +		opp-25M {
> +			opp-hz = /bits/ 64 <25000000>;
> +		};
> +
> +		opp-100M {
> +			opp-hz = /bits/ 64 <100000000>;
> +		};
> +
> +		opp-750M {
> +			opp-hz = /bits/ 64 <750000000>;
> +		};
> +	};
> +};
> +
> +&fec1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec1>;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&ethphy0>;
> +	fsl,magic-packet;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <0>;
> +		};
> +	};
> +};
> +
> +&i2c1 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	status = "okay";
> +
> +	pmic@4b {
> +		compatible = "rohm,bd71847";
> +		reg = <0x4b>;
> +		pinctrl-0 = <&pinctrl_pmic>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <3 GPIO_ACTIVE_LOW>;
> +		rohm,reset-snvs-powered;
> +
> +		regulators {
> +			buck1_reg: BUCK1 {
> +				regulator-name = "BUCK1";
> +				regulator-min-microvolt = <700000>;
> +				regulator-max-microvolt = <1300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <1250>;
> +			};
> +
> +			buck2_reg: BUCK2 {
> +				regulator-name = "BUCK2";
> +				regulator-min-microvolt = <700000>;
> +				regulator-max-microvolt = <1300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <1250>;
> +				rohm,dvs-run-voltage = <1000000>;
> +				rohm,dvs-idle-voltage = <900000>;
> +			};
> +
> +			buck3_reg: BUCK3 {
> +				// BUCK5 in datasheet
> +				regulator-name = "BUCK3";
> +				regulator-min-microvolt = <700000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck4_reg: BUCK4 {
> +				// BUCK6 in datasheet
> +				regulator-name = "BUCK4";
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck5_reg: BUCK5 {
> +				// BUCK7 in datasheet
> +				regulator-name = "BUCK5";
> +				regulator-min-microvolt = <1605000>;
> +				regulator-max-microvolt = <1995000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck6_reg: BUCK6 {
> +				// BUCK8 in datasheet
> +				regulator-name = "BUCK6";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <1400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo1_reg: LDO1 {
> +				regulator-name = "LDO1";
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo2_reg: LDO2 {
> +				regulator-name = "LDO2";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo3_reg: LDO3 {
> +				regulator-name = "LDO3";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo4_reg: LDO4 {
> +				regulator-name = "LDO4";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo6_reg: LDO6 {
> +				regulator-name = "LDO6";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +		};
> +	};
> +};
> +
> +&i2c3 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c3>;
> +	status = "okay";
> +
> +	eeprom@50 {
> +		compatible = "atmel,24c64";
> +		pagesize = <32>;
> +		read-only;	/* Manufacturing EEPROM programmed at factory */
> +		reg = <0x50>;
> +	};
> +
> +	rtc@51 {
> +		compatible = "nxp,pcf85263";
> +		reg = <0x51>;
> +	};
> +};
> +
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	assigned-clocks = <&clk IMX8MM_CLK_UART1>;
> +	assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_80M>;
> +	fsl,uart-has-rtscts;

uart-has-rtscts

Shawn

> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "brcm,bcm43438-bt";
> +		shutdown-gpios = <&gpio2 6 GPIO_ACTIVE_HIGH>;
> +		host-wakeup-gpios = <&gpio2 8 GPIO_ACTIVE_HIGH>;
> +		device-wakeup-gpios = <&gpio2 7 GPIO_ACTIVE_HIGH>;
> +		clocks = <&osc_32k>;
> +		clock-names = "extclk";
> +	};
> +};
> +
> +&usdhc1 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	bus-width = <4>;
> +	non-removable;
> +	cap-power-off-card;
> +	pm-ignore-notify;
> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&usdhc1_pwrseq>;
> +	status = "okay";
> +
> +	brcmf: bcrmf@1 {
> +		reg = <1>;
> +		compatible = "brcm,bcm4329-fmac";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_wlan>;
> +		interrupt-parent = <&gpio2>;
> +		interrupts = <9 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "host-wake";
> +	};
> +};
> +
> +&usdhc3 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc3>;
> +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> +	bus-width = <8>;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&wdog1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_wdog>;
> +	fsl,ext-reset-output;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +
> +		pinctrl_fec1: fec1grp {
> +			fsl,pins = <
> +				MX8MM_IOMUXC_ENET_MDC_ENET1_MDC		0x3
> +				MX8MM_IOMUXC_ENET_MDIO_ENET1_MDIO	0x3
> +				MX8MM_IOMUXC_ENET_TD3_ENET1_RGMII_TD3	0x1f
> +				MX8MM_IOMUXC_ENET_TD2_ENET1_RGMII_TD2	0x1f
> +				MX8MM_IOMUXC_ENET_TD1_ENET1_RGMII_TD1	0x1f
> +				MX8MM_IOMUXC_ENET_TD0_ENET1_RGMII_TD0	0x1f
> +				MX8MM_IOMUXC_ENET_RD3_ENET1_RGMII_RD3	0x91
> +				MX8MM_IOMUXC_ENET_RD2_ENET1_RGMII_RD2	0x91
> +				MX8MM_IOMUXC_ENET_RD1_ENET1_RGMII_RD1	0x91
> +				MX8MM_IOMUXC_ENET_RD0_ENET1_RGMII_RD0	0x91
> +				MX8MM_IOMUXC_ENET_TXC_ENET1_RGMII_TXC	0x1f
> +				MX8MM_IOMUXC_ENET_RXC_ENET1_RGMII_RXC	0x91
> +				MX8MM_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
> +				MX8MM_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
> +				MX8MM_IOMUXC_SAI2_RXC_GPIO4_IO22	0x19
> +			>;
> +		};
> +
> +		pinctrl_i2c1: i2c1grp {
> +			fsl,pins = <
> +				MX8MM_IOMUXC_I2C1_SCL_I2C1_SCL		0x400001c3
> +				MX8MM_IOMUXC_I2C1_SDA_I2C1_SDA		0x400001c3
> +			>;
> +		};
> +
> +		pinctrl_i2c3: i2c3grp {
> +			fsl,pins = <
> +				MX8MM_IOMUXC_I2C3_SCL_I2C3_SCL		0x400001c3
> +				MX8MM_IOMUXC_I2C3_SDA_I2C3_SDA		0x400001c3
> +			>;
> +		};
> +
> +		pinctrl_pmic: pmicirq {
> +			fsl,pins = <
> +				MX8MM_IOMUXC_GPIO1_IO03_GPIO1_IO3		0x41
> +			>;
> +		};
> +
> +		pinctrl_uart1: uart1grp {
> +			fsl,pins = <
> +				MX8MM_IOMUXC_UART1_RXD_UART1_DCE_RX	0x140
> +				MX8MM_IOMUXC_UART1_TXD_UART1_DCE_TX	0x140
> +				MX8MM_IOMUXC_UART3_RXD_UART1_DCE_CTS_B	0x140
> +				MX8MM_IOMUXC_UART3_TXD_UART1_DCE_RTS_B	0x140
> +				MX8MM_IOMUXC_SD1_DATA4_GPIO2_IO6	0x19
> +				MX8MM_IOMUXC_SD1_DATA5_GPIO2_IO7	0x19
> +				MX8MM_IOMUXC_SD1_DATA6_GPIO2_IO8	0x19
> +				MX8MM_IOMUXC_GPIO1_IO00_ANAMIX_REF_CLK_32K	0x141
> +			>;
> +		};
> +
> +		pinctrl_usdhc1_gpio: usdhc1grpgpio {
> +			fsl,pins = <
> +				MX8MM_IOMUXC_SD1_RESET_B_GPIO2_IO10	0x41
> +			>;
> +		};
> +
> +		pinctrl_usdhc1: usdhc1grp {
> +			fsl,pins = <
> +				MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK		0x190
> +				MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD		0x1d0
> +				MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0	0x1d0
> +				MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1	0x1d0
> +				MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2	0x1d0
> +				MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3	0x1d0
> +			>;
> +		};
> +
> +		pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
> +			fsl,pins = <
> +				MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK		0x194
> +				MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD		0x1d4
> +				MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0	0x1d4
> +				MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1	0x1d4
> +				MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2	0x1d4
> +				MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3	0x1d4
> +			>;
> +		};
> +
> +		pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
> +			fsl,pins = <
> +				MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK		0x196
> +				MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD		0x1d6
> +				MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0	0x1d6
> +				MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1	0x1d6
> +				MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2	0x1d6
> +				MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3	0x1d6
> +			>;
> +		};
> +
> +		pinctrl_usdhc3: usdhc3grp {
> +			fsl,pins = <
> +				MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x190
> +				MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d0
> +				MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d0
> +				MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d0
> +				MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d0
> +				MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d0
> +				MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d0
> +				MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d0
> +				MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d0
> +				MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d0
> +				MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x190
> +			>;
> +		};
> +
> +		pinctrl_usdhc3_100mhz: usdhc3grp100mhz {
> +			fsl,pins = <
> +				MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x194
> +				MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d4
> +				MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d4
> +				MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d4
> +				MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d4
> +				MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d4
> +				MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d4
> +				MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d4
> +				MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d4
> +				MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d4
> +				MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x194
> +			>;
> +		};
> +
> +		pinctrl_usdhc3_200mhz: usdhc3grp200mhz {
> +			fsl,pins = <
> +				MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x196
> +				MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d6
> +				MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d6
> +				MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d6
> +				MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d6
> +				MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d6
> +				MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d6
> +				MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d6
> +				MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d6
> +				MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d6
> +				MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x196
> +			>;
> +		};
> +
> +		pinctrl_wdog: wdoggrp {
> +			fsl,pins = <
> +				MX8MM_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B		0xc6
> +			>;
> +		};
> +
> +		pinctrl_wlan: wlangrp {
> +			fsl,pins = <
> +				MX8MM_IOMUXC_SD1_DATA7_GPIO2_IO9		0x111
> +			>;
> +		};
> +};
> -- 
> 2.25.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
