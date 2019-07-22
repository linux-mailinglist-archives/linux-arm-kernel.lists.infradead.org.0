Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE376FA31
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 09:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWLgJ8j7W6U6q9neeYt/b6P6fUDtyG4DIWYiA1b93Ic=; b=Jgm+BcdVd6tYm+
	LJLK+NSnYC9eFj4+hhDUXsUQfQkrL9W2cME60odjZTE/klHGZIBPUJP6d8oL8V2R9fu4jCZ+hbwYi
	y2JnRlJzStdOJKOptARv++9GOaQTLe1ga29rHcHFxdXeUmgtkhXDTS0lUbO4SIa42EPNJOSxl7BgV
	GT7mYdqFkMrbbmMe0Zx4EnIPga67+9QlLxE0rFjBZ8ddAcKJtq6mibqZTs8lne1snq5pVbmlio6bO
	qoKQN3tFm048lgbbxACd9vIFNmfY1XiuU5sXpmySjtzYq1HSBvlSHU11tD9zhPhjaz5hHySv48He1
	+ro8s3+UGx2oDVL5vN8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpScB-0005Rx-Ko; Mon, 22 Jul 2019 07:20:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpSbm-0005RS-H8
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 07:19:45 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6385821BE6;
 Mon, 22 Jul 2019 07:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563779982;
 bh=nwdq3eS0DIB8t4IUn/y0FOcWJ6hBllvhVnrlfR3fnMk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Cx7GE7bafHP1GDIZcGn66Yb7vq488rdOoFbxjsSyqalNur1ugy4Vnoul+PD2FUQEr
 lL+zKNfcLm41lgcDaYYCjajz2f/Z6mHTfszPdspoGOgn4sRBSSkzE4oL2qnStA19uV
 pbW9xjofGSY3UexOL2WZewFZdbKrQdOM+uYqWNns=
Date: Mon, 22 Jul 2019 15:19:13 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: =?iso-8859-1?Q?S=E9bastien?= Szymanski <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH 2/2] ARM: dts: opos6ul/opos6uldev: rework device tree to
 support i.MX6ULL
Message-ID: <20190722071909.GE3738@dragon>
References: <20190704142324.17675-1-sebastien.szymanski@armadeus.com>
 <20190704142324.17675-2-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704142324.17675-2-sebastien.szymanski@armadeus.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_001942_611910_BC43E452 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 04:23:24PM +0200, S=E9bastien Szymanski wrote:
> Rework the device trees of the OPOS6UL and OPOS6ULDev boards to support
> the OPOS6UL SoM with an i.MX6ULL SoC.  The device trees are now as
> following:
> - imx6ul-imx6ull-opos6ul.dtsi
> - imx6ul-opos6ul.dtsi
> - imx6ull-opos6ul.dtsi
> - imx6ul-imx6ull-opos6uldev.dtsi
> - imx6ul-opos6uldev.dts
> - imx6ull-opos6uldev.dts

Can you please explain a bit how this complex file hierarchy is created?

> =

> Signed-off-by: S=E9bastien Szymanski <sebastien.szymanski@armadeus.com>
> ---
>  arch/arm/boot/dts/Makefile                    |   1 +
>  arch/arm/boot/dts/imx6ul-imx6ull-opos6ul.dtsi | 148 +++++++
>  .../boot/dts/imx6ul-imx6ull-opos6uldev.dtsi   | 338 ++++++++++++++++
>  arch/arm/boot/dts/imx6ul-opos6ul.dtsi         | 195 +--------
>  arch/arm/boot/dts/imx6ul-opos6uldev.dts       | 380 +-----------------
>  arch/arm/boot/dts/imx6ull-opos6ul.dtsi        |   6 +
>  arch/arm/boot/dts/imx6ull-opos6uldev.dts      |  42 ++
>  7 files changed, 546 insertions(+), 564 deletions(-)
>  create mode 100644 arch/arm/boot/dts/imx6ul-imx6ull-opos6ul.dtsi
>  create mode 100644 arch/arm/boot/dts/imx6ul-imx6ull-opos6uldev.dtsi
>  create mode 100644 arch/arm/boot/dts/imx6ull-opos6ul.dtsi
>  create mode 100644 arch/arm/boot/dts/imx6ull-opos6uldev.dts
> =

> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index dab2914fa293..e2ee3322c47c 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -580,6 +580,7 @@ dtb-$(CONFIG_SOC_IMX6UL) +=3D \
>  	imx6ull-14x14-evk.dtb \
>  	imx6ull-colibri-eval-v3.dtb \
>  	imx6ull-colibri-wifi-eval-v3.dtb \
> +	imx6ull-opos6uldev.dtb \
>  	imx6ulz-14x14-evk.dtb
>  dtb-$(CONFIG_SOC_IMX7D) +=3D \
>  	imx7d-cl-som-imx7.dtb \
> diff --git a/arch/arm/boot/dts/imx6ul-imx6ull-opos6ul.dtsi b/arch/arm/boo=
t/dts/imx6ul-imx6ull-opos6ul.dtsi
> new file mode 100644
> index 000000000000..50af2f571800
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ul-imx6ull-opos6ul.dtsi
> @@ -0,0 +1,148 @@
> +// SPDX-License-Identifier: GPL-2.0 OR X11

DT maintainer prefer to MIT over X11.

> +//
> +// Copyright 2019 Armadeus Systems <support@armadeus.com>
> +
> +/ {
> +	memory@80000000 {
> +		device_type =3D "memory";
> +		reg =3D <0x80000000 0>; /* will be filled by U-Boot */
> +	};
> +
> +	reg_3v3: regulator-3v3 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "3V3";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +	};
> +
> +	usdhc3_pwrseq: usdhc3-pwrseq {
> +		compatible =3D "mmc-pwrseq-simple";
> +		reset-gpios =3D <&gpio2 9 GPIO_ACTIVE_LOW>;
> +	};
> +};
> +
> +&fec1 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_enet1>;
> +	phy-mode =3D "rmii";
> +	phy-reset-duration =3D <1>;
> +	phy-reset-gpios =3D <&gpio4 2 GPIO_ACTIVE_LOW>;
> +	phy-handle =3D <&ethphy1>;
> +	phy-supply =3D <&reg_3v3>;
> +	status =3D "okay";
> +
> +	mdio: mdio {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		ethphy1: ethernet-phy@1 {
> +			compatible =3D "ethernet-phy-ieee802.3-c22";
> +			reg =3D <1>;
> +			interrupt-parent =3D <&gpio4>;
> +			interrupts =3D <16 IRQ_TYPE_LEVEL_LOW>;
> +			status =3D "okay";
> +		};
> +	};
> +};
> +
> +/* Bluetooth */
> +&uart8 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart8>;
> +	uart-has-rtscts;
> +	status =3D "okay";
> +};
> +
> +/* eMMC */
> +&usdhc1 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_usdhc1>;
> +	bus-width =3D <8>;
> +	no-1-8-v;
> +	non-removable;
> +	status =3D "okay";
> +};
> +
> +/* WiFi */
> +&usdhc2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_usdhc2>;
> +	bus-width =3D <4>;
> +	no-1-8-v;
> +	non-removable;
> +	mmc-pwrseq =3D <&usdhc3_pwrseq>;
> +	status =3D "okay";
> +
> +	#address-cells =3D <1>;
> +	#size-cells =3D <0>;
> +
> +	brcmf: wifi@1 {
> +		compatible =3D "brcm,bcm4329-fmac";
> +		reg =3D <1>;
> +		interrupt-parent =3D <&gpio2>;
> +		interrupts =3D <8 IRQ_TYPE_LEVEL_LOW>;
> +		interrupt-names =3D "host-wake";
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl_enet1: enet1grp {
> +		fsl,pins =3D <
> +			MX6UL_PAD_GPIO1_IO06__ENET1_MDIO	0x1b0b0
> +			MX6UL_PAD_GPIO1_IO07__ENET1_MDC		0x1b0b0
> +			MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER	0x130b0
> +			MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN	0x130b0
> +			MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01	0x130b0
> +			MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00	0x130b0
> +			MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00	0x1b0b0
> +			MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01	0x1b0b0
> +			MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b0b0
> +			/* INT# */
> +			MX6UL_PAD_NAND_DQS__GPIO4_IO16		0x1b0b0
> +			/* RST# */
> +			MX6UL_PAD_NAND_DATA00__GPIO4_IO02	0x130b0
> +			MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b031
> +		>;
> +	};
> +
> +	pinctrl_uart8: uart8grp {
> +		fsl,pins =3D <
> +			MX6UL_PAD_ENET2_TX_EN__UART8_DCE_RX	0x1b0b0
> +			MX6UL_PAD_ENET2_TX_DATA1__UART8_DCE_TX	0x1b0b0
> +			MX6UL_PAD_ENET2_RX_ER__UART8_DCE_RTS	0x1b0b0
> +			MX6UL_PAD_ENET2_TX_CLK__UART8_DCE_CTS	0x1b0b0
> +			/* BT_REG_ON */
> +			MX6UL_PAD_ENET2_RX_EN__GPIO2_IO10	0x130b0
> +		>;
> +	};
> +
> +	pinctrl_usdhc1: usdhc1grp {
> +		fsl,pins =3D <
> +			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x17059
> +			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x10059
> +			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x17059
> +			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x17059
> +			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x17059
> +			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x17059
> +			MX6UL_PAD_NAND_READY_B__USDHC1_DATA4	0x17059
> +			MX6UL_PAD_NAND_CE0_B__USDHC1_DATA5	0x17059
> +			MX6UL_PAD_NAND_CE1_B__USDHC1_DATA6	0x17059
> +			MX6UL_PAD_NAND_CLE__USDHC1_DATA7	0x17059
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins =3D <
> +			MX6UL_PAD_LCD_DATA18__USDHC2_CMD	0x1b0b0
> +			MX6UL_PAD_LCD_DATA19__USDHC2_CLK	0x100b0
> +			MX6UL_PAD_LCD_DATA20__USDHC2_DATA0	0x1b0b0
> +			MX6UL_PAD_LCD_DATA21__USDHC2_DATA1	0x1b0b0
> +			MX6UL_PAD_LCD_DATA22__USDHC2_DATA2	0x1b0b0
> +			MX6UL_PAD_LCD_DATA23__USDHC2_DATA3	0x1b0b0
> +			/* WL_REG_ON */
> +			MX6UL_PAD_ENET2_RX_DATA1__GPIO2_IO09	0x130b0
> +			/* WL_IRQ */
> +			MX6UL_PAD_ENET2_RX_DATA0__GPIO2_IO08	0x1b0b0
> +		>;
> +	};
> +};
> diff --git a/arch/arm/boot/dts/imx6ul-imx6ull-opos6uldev.dtsi b/arch/arm/=
boot/dts/imx6ul-imx6ull-opos6uldev.dtsi
> new file mode 100644
> index 000000000000..350b7000fad2
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ul-imx6ull-opos6uldev.dtsi
> @@ -0,0 +1,338 @@
> +// SPDX-License-Identifier: GPL-2.0 OR X11
> +//
> +// Copyright 2019 Armadeus Systems <support@armadeus.com>
> +
> +/ {
> +	chosen {
> +		stdout-path =3D &uart1;
> +	};
> +
> +	backlight: backlight {
> +		compatible =3D "pwm-backlight";
> +		pwms =3D <&pwm3 0 191000>;
> +		brightness-levels =3D <0 4 8 16 32 64 128 255>;
> +		default-brightness-level =3D <7>;
> +		power-supply =3D <&reg_5v>;
> +		status =3D "okay";
> +	};
> +
> +	gpio-keys {
> +		compatible =3D "gpio-keys";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_gpio_keys>;
> +
> +		user-button {
> +			label =3D "User button";
> +			gpios =3D <&gpio2 11 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <BTN_MISC>;
> +			wakeup-source;
> +		};
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		user-led {
> +			label =3D "User";
> +			pinctrl-names =3D "default";
> +			pinctrl-0 =3D <&pinctrl_led>;
> +			gpios =3D <&gpio3 4 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger =3D "heartbeat";
> +		};
> +	};
> +
> +	onewire {
> +		compatible =3D "w1-gpio";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_w1>;
> +		gpios =3D <&gpio5 1 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	panel: panel {
> +		compatible =3D "armadeus,st0700-adapt";
> +		power-supply =3D <&reg_3v3>;
> +		backlight =3D <&backlight>;
> +
> +		port {
> +			panel_in: endpoint {
> +				remote-endpoint =3D <&lcdif_out>;
> +			};
> +		};
> +	};
> +
> +	reg_5v: regulator-5v {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "5V";
> +		regulator-min-microvolt =3D <5000000>;
> +		regulator-max-microvolt =3D <5000000>;
> +	};
> +
> +	reg_usbotg1_vbus: regulator-usbotg1vbus {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "usbotg1vbus";
> +		regulator-min-microvolt =3D <5000000>;
> +		regulator-max-microvolt =3D <5000000>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_usbotg1_vbus>;
> +		gpio =3D <&gpio1 5 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	reg_usbotg2_vbus: regulator-usbotg2vbus {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "usbotg2vbus";
> +		regulator-min-microvolt =3D <5000000>;
> +		regulator-max-microvolt =3D <5000000>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_usbotg2_vbus>;
> +		gpio =3D <&gpio5 9 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +};
> +
> +&adc1 {
> +	vref-supply =3D <&reg_3v3>;
> +	status =3D "okay";
> +};
> +
> +&can1 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_flexcan1>;
> +	xceiver-supply =3D <&reg_5v>;
> +	status =3D "okay";
> +};
> +
> +&can2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_flexcan2>;
> +	xceiver-supply =3D <&reg_5v>;
> +	status =3D "okay";
> +};
> +
> +&ecspi4 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_ecspi4>;
> +	cs-gpios =3D <&gpio4 9 GPIO_ACTIVE_LOW>, <&gpio4 3 GPIO_ACTIVE_LOW>;
> +	status =3D "okay";
> +
> +	spidev0: spi@0 {
> +		compatible =3D "spidev";
> +		reg =3D <0>;
> +		spi-max-frequency =3D <5000000>;
> +	};
> +
> +	spidev1: spi@1 {
> +		compatible =3D "spidev";
> +		reg =3D <1>;
> +		spi-max-frequency =3D <5000000>;
> +	};
> +};
> +
> +&i2c1 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_i2c1>;
> +	clock-frequency =3D <400000>;
> +	status =3D "okay";
> +};
> +
> +&i2c2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_i2c2>;
> +	clock-frequency =3D <400000>;
> +	status =3D "okay";
> +};
> +
> +&lcdif {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_lcdif>;
> +	status =3D "okay";
> +
> +	port {
> +		lcdif_out: endpoint {
> +			remote-endpoint =3D <&panel_in>;
> +		};
> +	};
> +};
> +
> +&pwm3 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_pwm3>;
> +	status =3D "okay";
> +};
> +
> +&snvs_pwrkey {
> +	status =3D "disabled";
> +};
> +
> +&tsc {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_tsc>;
> +	xnur-gpio =3D <&gpio1 3 GPIO_ACTIVE_LOW>;
> +	measure-delay-time =3D <0xffff>;
> +	pre-charge-time =3D <0xffff>;
> +	status =3D "okay";
> +};
> +
> +&uart1 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart1>;
> +	status =3D "okay";
> +};
> +
> +&uart2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart2>;
> +	status =3D "okay";
> +};
> +
> +&usbotg1 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_usbotg1_id>;
> +	vbus-supply =3D <&reg_usbotg1_vbus>;
> +	dr_mode =3D "otg";
> +	disable-over-current;
> +	status =3D "okay";
> +};
> +
> +&usbotg2 {
> +	vbus-supply =3D <&reg_usbotg2_vbus>;
> +	dr_mode =3D "host";
> +	disable-over-current;
> +	status =3D "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_gpios>;
> +
> +	pinctrl_ecspi4: ecspi4grp {
> +		fsl,pins =3D <
> +			MX6UL_PAD_NAND_DATA04__ECSPI4_SCLK	0x1b0b0
> +			MX6UL_PAD_NAND_DATA05__ECSPI4_MOSI	0x1b0b0
> +			MX6UL_PAD_NAND_DATA06__ECSPI4_MISO	0x1b0b0
> +			MX6UL_PAD_NAND_DATA01__GPIO4_IO03	0x1b0b0
> +			MX6UL_PAD_NAND_DATA07__GPIO4_IO09	0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_flexcan1: flexcan1grp {
> +		fsl,pins =3D <
> +			MX6UL_PAD_UART3_CTS_B__FLEXCAN1_TX	0x0b0b0
> +			MX6UL_PAD_UART3_RTS_B__FLEXCAN1_RX	0x0b0b0
> +		>;
> +	};
> +
> +	pinctrl_flexcan2: flexcan2grp {
> +		fsl,pins =3D <
> +			MX6UL_PAD_UART2_CTS_B__FLEXCAN2_TX	0x0b0b0
> +			MX6UL_PAD_UART2_RTS_B__FLEXCAN2_RX	0x0b0b0
> +		>;
> +	};
> +
> +	pinctrl_gpios: gpiosgrp {
> +		fsl,pins =3D <
> +			MX6UL_PAD_GPIO1_IO09__GPIO1_IO09	0x0b0b0
> +			MX6UL_PAD_UART3_RX_DATA__GPIO1_IO25	0x0b0b0
> +			MX6UL_PAD_UART3_TX_DATA__GPIO1_IO24	0x0b0b0
> +			MX6UL_PAD_NAND_RE_B__GPIO4_IO00		0x0b0b0
> +			MX6UL_PAD_GPIO1_IO08__GPIO1_IO08	0x0b0b0
> +			MX6UL_PAD_UART1_CTS_B__GPIO1_IO18	0x0b0b0
> +			MX6UL_PAD_UART1_RTS_B__GPIO1_IO19	0x0b0b0
> +			MX6UL_PAD_NAND_WE_B__GPIO4_IO01		0x0b0b0
> +		>;
> +	};
> +
> +	pinctrl_gpio_keys: gpiokeysgrp {
> +		fsl,pins =3D <
> +			MX6UL_PAD_ENET2_TX_DATA0__GPIO2_IO11	0x0b0b0
> +		>;
> +	};
> +
> +	pinctrl_i2c1: i2c1grp {
> +		fsl,pins =3D <
> +			MX6UL_PAD_UART4_RX_DATA__I2C1_SDA	0x4001b8b0
> +			MX6UL_PAD_UART4_TX_DATA__I2C1_SCL	0x4001b8b0
> +		>;
> +	};
> +
> +	pinctrl_i2c2: i2c2grp {
> +		fsl,pins =3D <
> +			MX6UL_PAD_UART5_RX_DATA__I2C2_SDA	0x4001b8b0
> +			MX6UL_PAD_UART5_TX_DATA__I2C2_SCL	0x4001b8b0
> +		>;
> +	};
> +
> +	pinctrl_lcdif: lcdifgrp {
> +		fsl,pins =3D <
> +			MX6UL_PAD_LCD_CLK__LCDIF_CLK	    0x100b1
> +			MX6UL_PAD_LCD_ENABLE__LCDIF_ENABLE  0x100b1
> +			MX6UL_PAD_LCD_HSYNC__LCDIF_HSYNC    0x100b1
> +			MX6UL_PAD_LCD_VSYNC__LCDIF_VSYNC    0x100b1
> +			MX6UL_PAD_LCD_DATA00__LCDIF_DATA00  0x100b1
> +			MX6UL_PAD_LCD_DATA01__LCDIF_DATA01  0x100b1
> +			MX6UL_PAD_LCD_DATA02__LCDIF_DATA02  0x100b1
> +			MX6UL_PAD_LCD_DATA03__LCDIF_DATA03  0x100b1
> +			MX6UL_PAD_LCD_DATA04__LCDIF_DATA04  0x100b1
> +			MX6UL_PAD_LCD_DATA05__LCDIF_DATA05  0x100b1
> +			MX6UL_PAD_LCD_DATA06__LCDIF_DATA06  0x100b1
> +			MX6UL_PAD_LCD_DATA07__LCDIF_DATA07  0x100b1
> +			MX6UL_PAD_LCD_DATA08__LCDIF_DATA08  0x100b1
> +			MX6UL_PAD_LCD_DATA09__LCDIF_DATA09  0x100b1
> +			MX6UL_PAD_LCD_DATA10__LCDIF_DATA10  0x100b1
> +			MX6UL_PAD_LCD_DATA11__LCDIF_DATA11  0x100b1
> +			MX6UL_PAD_LCD_DATA12__LCDIF_DATA12  0x100b1
> +			MX6UL_PAD_LCD_DATA13__LCDIF_DATA13  0x100b1
> +			MX6UL_PAD_LCD_DATA14__LCDIF_DATA14  0x100b1
> +			MX6UL_PAD_LCD_DATA15__LCDIF_DATA15  0x100b1
> +			MX6UL_PAD_LCD_DATA16__LCDIF_DATA16  0x100b1
> +			MX6UL_PAD_LCD_DATA17__LCDIF_DATA17  0x100b1
> +		>;
> +	};
> +
> +	pinctrl_led: ledgrp {
> +		fsl,pins =3D <
> +			MX6UL_PAD_LCD_RESET__GPIO3_IO04		0x0b0b0
> +		>;
> +	};
> +
> +	pinctrl_pwm3: pwm3grp {
> +		fsl,pins =3D <
> +			MX6UL_PAD_NAND_ALE__PWM3_OUT		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_tsc: tscgrp {
> +		fsl,pins =3D <
> +			MX6UL_PAD_GPIO1_IO01__GPIO1_IO01       0xb0
> +			MX6UL_PAD_GPIO1_IO02__GPIO1_IO02       0xb0
> +			MX6UL_PAD_GPIO1_IO03__GPIO1_IO03       0xb0
> +			MX6UL_PAD_GPIO1_IO04__GPIO1_IO04       0xb0
> +		>;
> +	};
> +
> +	pinctrl_uart1: uart1grp {
> +		fsl,pins =3D <
> +			MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX	0x1b0b1
> +			MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_uart2: uart2grp {
> +		fsl,pins =3D <
> +			MX6UL_PAD_UART2_TX_DATA__UART2_DCE_TX	0x1b0b1
> +			MX6UL_PAD_UART2_RX_DATA__UART2_DCE_RX	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_usbotg1_id: usbotg1idgrp {
> +		fsl,pins =3D <
> +			MX6UL_PAD_GPIO1_IO00__ANATOP_OTG1_ID	0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_usbotg1_vbus: usbotg1vbusgrp {
> +		fsl,pins =3D <
> +			MX6UL_PAD_GPIO1_IO05__GPIO1_IO05	0x1b0b0
> +		>;
> +	};
> +};
> diff --git a/arch/arm/boot/dts/imx6ul-opos6ul.dtsi b/arch/arm/boot/dts/im=
x6ul-opos6ul.dtsi
> index cf7faf4b9c47..ee11c3474aef 100644
> --- a/arch/arm/boot/dts/imx6ul-opos6ul.dtsi
> +++ b/arch/arm/boot/dts/imx6ul-opos6ul.dtsi
> @@ -1,193 +1,6 @@
> -/*
> - * Copyright 2017 Armadeus Systems <support@armadeus.com>
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License as
> - *     published by the Free Software Foundation; either version 2 of
> - *     the License, or (at your option) any later version.
> - *
> - *     This file is distributed in the hope that it will be useful,
> - *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> - *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - *     GNU General Public License for more details.
> - *
> - *     You should have received a copy of the GNU General Public
> - *     License along with this file; if not, write to the Free
> - *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
> - *     MA 02110-1301 USA
> - *
> - * Or, alternatively,
> - *
> - *  b) Permission is hereby granted, free of charge, to any person
> - *     obtaining a copy of this software and associated documentation
> - *     files (the "Software"), to deal in the Software without
> - *     restriction, including without limitation the rights to use,
> - *     copy, modify, merge, publish, distribute, sublicense, and/or
> - *     sell copies of the Software, and to permit persons to whom the
> - *     Software is furnished to do so, subject to the following
> - *     conditions:
> - *
> - *     The above copyright notice and this permission notice shall be
> - *     included in all copies or substantial portions of the Software.
> - *
> - *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> - *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> - *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> - *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> - *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> - *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> - *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> - *     OTHER DEALINGS IN THE SOFTWARE.
> - */
> +// SPDX-License-Identifier: GPL-2.0 OR X11
> +//
> +// Copyright 2017 Armadeus Systems <support@armadeus.com>
>  =

>  #include "imx6ul.dtsi"
> -
> -/ {
> -	memory@80000000 {
> -		device_type =3D "memory";
> -		reg =3D <0x80000000 0>; /* will be filled by U-Boot */
> -	};
> -
> -	reg_3v3: regulator-3v3 {
> -		compatible =3D "regulator-fixed";
> -		regulator-name =3D "3V3";
> -		regulator-min-microvolt =3D <3300000>;
> -		regulator-max-microvolt =3D <3300000>;
> -	};
> -
> -	usdhc3_pwrseq: usdhc3-pwrseq {
> -		compatible =3D "mmc-pwrseq-simple";
> -		reset-gpios =3D <&gpio2 9 GPIO_ACTIVE_LOW>;
> -	};
> -};
> -
> -&fec1 {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_enet1>;
> -	phy-mode =3D "rmii";
> -	phy-reset-duration =3D <1>;
> -	phy-reset-gpios =3D <&gpio4 2 GPIO_ACTIVE_LOW>;
> -	phy-handle =3D <&ethphy1>;
> -	phy-supply =3D <&reg_3v3>;
> -	status =3D "okay";
> -
> -	mdio: mdio {
> -		#address-cells =3D <1>;
> -		#size-cells =3D <0>;
> -
> -		ethphy1: ethernet-phy@1 {
> -			compatible =3D "ethernet-phy-ieee802.3-c22";
> -			reg =3D <1>;
> -			interrupt-parent =3D <&gpio4>;
> -			interrupts =3D <16 IRQ_TYPE_LEVEL_LOW>;
> -			status =3D "okay";
> -		};
> -	};
> -};
> -
> -/* Bluetooth */
> -&uart8 {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_uart8>;
> -	uart-has-rtscts;
> -	status =3D "okay";
> -};
> -
> -/* eMMC */
> -&usdhc1 {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_usdhc1>;
> -	bus-width =3D <8>;
> -	no-1-8-v;
> -	non-removable;
> -	status =3D "okay";
> -};
> -
> -/* WiFi */
> -&usdhc2 {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_usdhc2>;
> -	bus-width =3D <4>;
> -	no-1-8-v;
> -	non-removable;
> -	mmc-pwrseq =3D <&usdhc3_pwrseq>;
> -	status =3D "okay";
> -
> -	#address-cells =3D <1>;
> -	#size-cells =3D <0>;
> -
> -	brcmf: wifi@1 {
> -		compatible =3D "brcm,bcm4329-fmac";
> -		reg =3D <1>;
> -		interrupt-parent =3D <&gpio2>;
> -		interrupts =3D <8 IRQ_TYPE_LEVEL_LOW>;
> -		interrupt-names =3D "host-wake";
> -	};
> -};
> -
> -&iomuxc {
> -	pinctrl_enet1: enet1grp {
> -		fsl,pins =3D <
> -			MX6UL_PAD_GPIO1_IO06__ENET1_MDIO	0x1b0b0
> -			MX6UL_PAD_GPIO1_IO07__ENET1_MDC		0x1b0b0
> -			MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER	0x130b0
> -			MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN	0x130b0
> -			MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01	0x130b0
> -			MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00	0x130b0
> -			MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00	0x1b0b0
> -			MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01	0x1b0b0
> -			MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b0b0
> -			/* INT# */
> -			MX6UL_PAD_NAND_DQS__GPIO4_IO16		0x1b0b0
> -			/* RST# */
> -			MX6UL_PAD_NAND_DATA00__GPIO4_IO02	0x130b0
> -			MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b031
> -		>;
> -	};
> -
> -	pinctrl_uart8: uart8grp {
> -		fsl,pins =3D <
> -			MX6UL_PAD_ENET2_TX_EN__UART8_DCE_RX	0x1b0b0
> -			MX6UL_PAD_ENET2_TX_DATA1__UART8_DCE_TX	0x1b0b0
> -			MX6UL_PAD_ENET2_RX_ER__UART8_DCE_RTS	0x1b0b0
> -			MX6UL_PAD_ENET2_TX_CLK__UART8_DCE_CTS	0x1b0b0
> -			/* BT_REG_ON */
> -			MX6UL_PAD_ENET2_RX_EN__GPIO2_IO10	0x130b0
> -		>;
> -	};
> -
> -	pinctrl_usdhc1: usdhc1grp {
> -		fsl,pins =3D <
> -			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x17059
> -			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x10059
> -			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x17059
> -			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x17059
> -			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x17059
> -			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x17059
> -			MX6UL_PAD_NAND_READY_B__USDHC1_DATA4	0x17059
> -			MX6UL_PAD_NAND_CE0_B__USDHC1_DATA5	0x17059
> -			MX6UL_PAD_NAND_CE1_B__USDHC1_DATA6	0x17059
> -			MX6UL_PAD_NAND_CLE__USDHC1_DATA7	0x17059
> -		>;
> -	};
> -
> -	pinctrl_usdhc2: usdhc2grp {
> -		fsl,pins =3D <
> -			MX6UL_PAD_LCD_DATA18__USDHC2_CMD	0x1b0b0
> -			MX6UL_PAD_LCD_DATA19__USDHC2_CLK	0x100b0
> -			MX6UL_PAD_LCD_DATA20__USDHC2_DATA0	0x1b0b0
> -			MX6UL_PAD_LCD_DATA21__USDHC2_DATA1	0x1b0b0
> -			MX6UL_PAD_LCD_DATA22__USDHC2_DATA2	0x1b0b0
> -			MX6UL_PAD_LCD_DATA23__USDHC2_DATA3	0x1b0b0
> -			/* WL_REG_ON */
> -			MX6UL_PAD_ENET2_RX_DATA1__GPIO2_IO09	0x130b0
> -			/* WL_IRQ */
> -			MX6UL_PAD_ENET2_RX_DATA0__GPIO2_IO08	0x1b0b0
> -		>;
> -	};
> -};
> +#include "imx6ul-imx6ull-opos6ul.dtsi"
> diff --git a/arch/arm/boot/dts/imx6ul-opos6uldev.dts b/arch/arm/boot/dts/=
imx6ul-opos6uldev.dts
> index 8ecdb9ad2b2e..44a5f0bce9a7 100644
> --- a/arch/arm/boot/dts/imx6ul-opos6uldev.dts
> +++ b/arch/arm/boot/dts/imx6ul-opos6uldev.dts
> @@ -1,293 +1,21 @@
> -/*
> - * Copyright 2017 Armadeus Systems <support@armadeus.com>
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License as
> - *     published by the Free Software Foundation; either version 2 of
> - *     the License, or (at your option) any later version.
> - *
> - *     This file is distributed in the hope that it will be useful,
> - *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> - *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - *     GNU General Public License for more details.
> - *
> - *     You should have received a copy of the GNU General Public
> - *     License along with this file; if not, write to the Free
> - *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
> - *     MA 02110-1301 USA
> - *
> - * Or, alternatively,
> - *
> - *  b) Permission is hereby granted, free of charge, to any person
> - *     obtaining a copy of this software and associated documentation
> - *     files (the "Software"), to deal in the Software without
> - *     restriction, including without limitation the rights to use,
> - *     copy, modify, merge, publish, distribute, sublicense, and/or
> - *     sell copies of the Software, and to permit persons to whom the
> - *     Software is furnished to do so, subject to the following
> - *     conditions:
> - *
> - *     The above copyright notice and this permission notice shall be
> - *     included in all copies or substantial portions of the Software.
> - *
> - *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> - *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> - *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> - *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> - *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> - *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> - *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> - *     OTHER DEALINGS IN THE SOFTWARE.
> - */
> +// SPDX-License-Identifier: GPL-2.0 OR X11
> +//
> +// Copyright 2017 Armadeus Systems <support@armadeus.com>
>  =

>  /dts-v1/;
>  #include "imx6ul-opos6ul.dtsi"
> +#include "imx6ul-imx6ull-opos6uldev.dtsi"
>  =

>  / {
> -	model =3D "Armadeus Systems OPOS6UL SoM on OPOS6ULDev board";
> +	model =3D "Armadeus Systems OPOS6UL SoM (i.MX6UL) on OPOS6ULDev board";
>  	compatible =3D "armadeus,opos6uldev", "armadeus,opos6ul", "fsl,imx6ul";
> -
> -	chosen {
> -		stdout-path =3D &uart1;
> -	};
> -
> -	backlight: backlight {
> -		compatible =3D "pwm-backlight";
> -		pwms =3D <&pwm3 0 191000>;
> -		brightness-levels =3D <0 4 8 16 32 64 128 255>;
> -		default-brightness-level =3D <7>;
> -		power-supply =3D <&reg_5v>;
> -		status =3D "okay";
> -	};
> -
> -	gpio-keys {
> -		compatible =3D "gpio-keys";
> -		pinctrl-names =3D "default";
> -		pinctrl-0 =3D <&pinctrl_gpio_keys>;
> -
> -		user-button {
> -			label =3D "User button";
> -			gpios =3D <&gpio2 11 GPIO_ACTIVE_LOW>;
> -			linux,code =3D <BTN_MISC>;
> -			wakeup-source;
> -		};
> -	};
> -
> -	leds {
> -		compatible =3D "gpio-leds";
> -
> -		user-led {
> -			label =3D "User";
> -			pinctrl-names =3D "default";
> -			pinctrl-0 =3D <&pinctrl_led>;
> -			gpios =3D <&gpio3 4 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger =3D "heartbeat";
> -		};
> -	};
> -
> -	onewire {
> -		compatible =3D "w1-gpio";
> -		pinctrl-names =3D "default";
> -		pinctrl-0 =3D <&pinctrl_w1>;
> -		gpios =3D <&gpio5 1 GPIO_ACTIVE_HIGH>;
> -	};
> -
> -	panel: panel {
> -		compatible =3D "armadeus,st0700-adapt";
> -		power-supply =3D <&reg_3v3>;
> -		backlight =3D <&backlight>;
> -
> -		port {
> -			panel_in: endpoint {
> -				remote-endpoint =3D <&lcdif_out>;
> -			};
> -		};
> -	};
> -
> -	reg_5v: regulator-5v {
> -		compatible =3D "regulator-fixed";
> -		regulator-name =3D "5V";
> -		regulator-min-microvolt =3D <5000000>;
> -		regulator-max-microvolt =3D <5000000>;
> -	};
> -
> -	reg_usbotg1_vbus: regulator-usbotg1vbus {
> -		compatible =3D "regulator-fixed";
> -		regulator-name =3D "usbotg1vbus";
> -		regulator-min-microvolt =3D <5000000>;
> -		regulator-max-microvolt =3D <5000000>;
> -		pinctrl-names =3D "default";
> -		pinctrl-0 =3D <&pinctrl_usbotg1_vbus>;
> -		gpio =3D <&gpio1 5 GPIO_ACTIVE_HIGH>;
> -		enable-active-high;
> -	};
> -
> -	reg_usbotg2_vbus: regulator-usbotg2vbus {
> -		compatible =3D "regulator-fixed";
> -		regulator-name =3D "usbotg2vbus";
> -		regulator-min-microvolt =3D <5000000>;
> -		regulator-max-microvolt =3D <5000000>;
> -		pinctrl-names =3D "default";
> -		pinctrl-0 =3D <&pinctrl_usbotg2_vbus>;
> -		gpio =3D <&gpio5 9 GPIO_ACTIVE_HIGH>;
> -		enable-active-high;
> -	};
> -};
> -
> -&adc1 {
> -	vref-supply =3D <&reg_3v3>;
> -	status =3D "okay";
> -};
> -
> -&can1 {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_flexcan1>;
> -	xceiver-supply =3D <&reg_5v>;
> -	status =3D "okay";
> -};
> -
> -&can2 {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_flexcan2>;
> -	xceiver-supply =3D <&reg_5v>;
> -	status =3D "okay";
> -};
> -
> -&ecspi4 {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_ecspi4>;
> -	cs-gpios =3D <&gpio4 9 GPIO_ACTIVE_LOW>, <&gpio4 3 GPIO_ACTIVE_LOW>;
> -	status =3D "okay";
> -
> -	spidev0: spi@0 {
> -		compatible =3D "spidev";
> -		reg =3D <0>;
> -		spi-max-frequency =3D <5000000>;
> -	};
> -
> -	spidev1: spi@1 {
> -		compatible =3D "spidev";
> -		reg =3D <1>;
> -		spi-max-frequency =3D <5000000>;
> -	};
> -};
> -
> -&i2c1 {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_i2c1>;
> -	clock_frequency =3D <400000>;
> -	status =3D "okay";
> -};
> -
> -&i2c2 {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_i2c2>;
> -	clock_frequency =3D <400000>;
> -	status =3D "okay";
> -};
> -
> -&lcdif {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_lcdif>;
> -	status =3D "okay";
> -
> -	port {
> -		lcdif_out: endpoint {
> -			remote-endpoint =3D <&panel_in>;
> -		};
> -	};
> -};
> -
> -&pwm3 {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_pwm3>;
> -	status =3D "okay";
> -};
> -
> -&snvs_pwrkey {
> -	status =3D "disabled";
> -};
> -
> -&tsc {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_tsc>;
> -	xnur-gpio =3D <&gpio1 3 GPIO_ACTIVE_LOW>;
> -	measure-delay-time =3D <0xffff>;
> -	pre-charge-time =3D <0xffff>;
> -	status =3D "okay";
> -};
> -
> -&uart1 {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_uart1>;
> -	status =3D "okay";
> -};
> -
> -&uart2 {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_uart2>;
> -	status =3D "okay";
> -};
> -
> -&usbotg1 {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_usbotg1_id>;
> -	vbus-supply =3D <&reg_usbotg1_vbus>;
> -	dr_mode =3D "otg";
> -	disable-over-current;
> -	status =3D "okay";
> -};
> -
> -&usbotg2 {
> -	vbus-supply =3D <&reg_usbotg2_vbus>;
> -	dr_mode =3D "host";
> -	disable-over-current;
> -	status =3D "okay";
>  };
>  =

>  &iomuxc {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_gpios>;
> +	pinctrl-0 =3D <&pinctrl_gpios>, <&pinctrl_tamper_gpios>;
>  =

> -	pinctrl_ecspi4: ecspi4grp {
> +	pinctrl_tamper_gpios: tampergpiosgrp {
>  		fsl,pins =3D <
> -			MX6UL_PAD_NAND_DATA04__ECSPI4_SCLK	0x1b0b0
> -			MX6UL_PAD_NAND_DATA05__ECSPI4_MOSI	0x1b0b0
> -			MX6UL_PAD_NAND_DATA06__ECSPI4_MISO	0x1b0b0
> -			MX6UL_PAD_NAND_DATA01__GPIO4_IO03	0x1b0b0
> -			MX6UL_PAD_NAND_DATA07__GPIO4_IO09	0x1b0b0
> -		>;
> -	};
> -
> -	pinctrl_flexcan1: flexcan1grp {
> -		fsl,pins =3D <
> -			MX6UL_PAD_UART3_CTS_B__FLEXCAN1_TX	0x0b0b0
> -			MX6UL_PAD_UART3_RTS_B__FLEXCAN1_RX	0x0b0b0
> -		>;
> -	};
> -
> -	pinctrl_flexcan2: flexcan2grp {
> -		fsl,pins =3D <
> -			MX6UL_PAD_UART2_CTS_B__FLEXCAN2_TX	0x0b0b0
> -			MX6UL_PAD_UART2_RTS_B__FLEXCAN2_RX	0x0b0b0
> -		>;
> -	};
> -
> -	pinctrl_gpios: gpiosgrp {
> -		fsl,pins =3D <
> -			MX6UL_PAD_GPIO1_IO09__GPIO1_IO09	0x0b0b0
> -			MX6UL_PAD_UART3_RX_DATA__GPIO1_IO25	0x0b0b0
> -			MX6UL_PAD_UART3_TX_DATA__GPIO1_IO24	0x0b0b0
> -			MX6UL_PAD_NAND_RE_B__GPIO4_IO00		0x0b0b0
> -			MX6UL_PAD_GPIO1_IO08__GPIO1_IO08	0x0b0b0
> -			MX6UL_PAD_UART1_CTS_B__GPIO1_IO18	0x0b0b0
> -			MX6UL_PAD_UART1_RTS_B__GPIO1_IO19	0x0b0b0
> -			MX6UL_PAD_NAND_WE_B__GPIO4_IO01		0x0b0b0
>  			MX6UL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x0b0b0
>  			MX6UL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x0b0b0
>  			MX6UL_PAD_SNVS_TAMPER3__GPIO5_IO03	0x0b0b0
> @@ -299,100 +27,6 @@
>  		>;
>  	};
>  =

> -	pinctrl_gpio_keys: gpiokeysgrp {
> -		fsl,pins =3D <
> -			MX6UL_PAD_ENET2_TX_DATA0__GPIO2_IO11	0x0b0b0
> -		>;
> -	};
> -
> -	pinctrl_i2c1: i2c1grp {
> -		fsl,pins =3D <
> -			MX6UL_PAD_UART4_RX_DATA__I2C1_SDA	0x4001b8b0
> -			MX6UL_PAD_UART4_TX_DATA__I2C1_SCL	0x4001b8b0
> -		>;
> -	};
> -
> -	pinctrl_i2c2: i2c2grp {
> -		fsl,pins =3D <
> -			MX6UL_PAD_UART5_RX_DATA__I2C2_SDA	0x4001b8b0
> -			MX6UL_PAD_UART5_TX_DATA__I2C2_SCL	0x4001b8b0
> -		>;
> -	};
> -
> -	pinctrl_lcdif: lcdifgrp {
> -		fsl,pins =3D <
> -			MX6UL_PAD_LCD_CLK__LCDIF_CLK	    0x100b1
> -			MX6UL_PAD_LCD_ENABLE__LCDIF_ENABLE  0x100b1
> -			MX6UL_PAD_LCD_HSYNC__LCDIF_HSYNC    0x100b1
> -			MX6UL_PAD_LCD_VSYNC__LCDIF_VSYNC    0x100b1
> -			MX6UL_PAD_LCD_DATA00__LCDIF_DATA00  0x100b1
> -			MX6UL_PAD_LCD_DATA01__LCDIF_DATA01  0x100b1
> -			MX6UL_PAD_LCD_DATA02__LCDIF_DATA02  0x100b1
> -			MX6UL_PAD_LCD_DATA03__LCDIF_DATA03  0x100b1
> -			MX6UL_PAD_LCD_DATA04__LCDIF_DATA04  0x100b1
> -			MX6UL_PAD_LCD_DATA05__LCDIF_DATA05  0x100b1
> -			MX6UL_PAD_LCD_DATA06__LCDIF_DATA06  0x100b1
> -			MX6UL_PAD_LCD_DATA07__LCDIF_DATA07  0x100b1
> -			MX6UL_PAD_LCD_DATA08__LCDIF_DATA08  0x100b1
> -			MX6UL_PAD_LCD_DATA09__LCDIF_DATA09  0x100b1
> -			MX6UL_PAD_LCD_DATA10__LCDIF_DATA10  0x100b1
> -			MX6UL_PAD_LCD_DATA11__LCDIF_DATA11  0x100b1
> -			MX6UL_PAD_LCD_DATA12__LCDIF_DATA12  0x100b1
> -			MX6UL_PAD_LCD_DATA13__LCDIF_DATA13  0x100b1
> -			MX6UL_PAD_LCD_DATA14__LCDIF_DATA14  0x100b1
> -			MX6UL_PAD_LCD_DATA15__LCDIF_DATA15  0x100b1
> -			MX6UL_PAD_LCD_DATA16__LCDIF_DATA16  0x100b1
> -			MX6UL_PAD_LCD_DATA17__LCDIF_DATA17  0x100b1
> -		>;
> -	};
> -
> -	pinctrl_led: ledgrp {
> -		fsl,pins =3D <
> -			MX6UL_PAD_LCD_RESET__GPIO3_IO04		0x0b0b0
> -		>;
> -	};
> -
> -	pinctrl_pwm3: pwm3grp {
> -		fsl,pins =3D <
> -			MX6UL_PAD_NAND_ALE__PWM3_OUT		0x1b0b0
> -		>;
> -	};
> -
> -	pinctrl_tsc: tscgrp {
> -		fsl,pins =3D <
> -			MX6UL_PAD_GPIO1_IO01__GPIO1_IO01       0xb0
> -			MX6UL_PAD_GPIO1_IO02__GPIO1_IO02       0xb0
> -			MX6UL_PAD_GPIO1_IO03__GPIO1_IO03       0xb0
> -			MX6UL_PAD_GPIO1_IO04__GPIO1_IO04       0xb0
> -		>;
> -	};
> -
> -	pinctrl_uart1: uart1grp {
> -		fsl,pins =3D <
> -			MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX	0x1b0b1
> -			MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX	0x1b0b1
> -		>;
> -	};
> -
> -	pinctrl_uart2: uart2grp {
> -		fsl,pins =3D <
> -			MX6UL_PAD_UART2_TX_DATA__UART2_DCE_TX	0x1b0b1
> -			MX6UL_PAD_UART2_RX_DATA__UART2_DCE_RX	0x1b0b1
> -		>;
> -	};
> -
> -	pinctrl_usbotg1_id: usbotg1idgrp {
> -		fsl,pins =3D <
> -			MX6UL_PAD_GPIO1_IO00__ANATOP_OTG1_ID	0x1b0b0
> -		>;
> -	};
> -
> -	pinctrl_usbotg1_vbus: usbotg1vbusgrp {
> -		fsl,pins =3D <
> -			MX6UL_PAD_GPIO1_IO05__GPIO1_IO05	0x1b0b0
> -		>;
> -	};
> -
>  	pinctrl_usbotg2_vbus: usbotg2vbusgrp {
>  		fsl,pins =3D <
>  			MX6UL_PAD_SNVS_TAMPER9__GPIO5_IO09	0x1b0b0
> diff --git a/arch/arm/boot/dts/imx6ull-opos6ul.dtsi b/arch/arm/boot/dts/i=
mx6ull-opos6ul.dtsi
> new file mode 100644
> index 000000000000..3bf1c69cc8a4
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ull-opos6ul.dtsi
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0 OR X11
> +//
> +// Copyright 2019 Armadeus Systems <support@armadeus.com>
> +
> +#include "imx6ull.dtsi"
> +#include "imx6ul-imx6ull-opos6ul.dtsi"
> diff --git a/arch/arm/boot/dts/imx6ull-opos6uldev.dts b/arch/arm/boot/dts=
/imx6ull-opos6uldev.dts
> new file mode 100644
> index 000000000000..20642bcadf97
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ull-opos6uldev.dts
> @@ -0,0 +1,42 @@
> +// SPDX-License-Identifier: GPL-2.0 OR X11
> +//
> +// Copyright 2019 Armadeus Systems <support@armadeus.com>
> +
> +/dts-v1/;
> +#include "imx6ull-opos6ul.dtsi"
> +#include "imx6ul-imx6ull-opos6uldev.dtsi"
> +
> +/ {
> +	model =3D "Armadeus Systems OPOS6UL SoM (i.MX6ULL) on OPOS6ULDev board";
> +	compatible =3D "armadeus,opos6uldev", "armadeus,opos6ul", "fsl,imx6ull";

It seems these board compatibles are not documented, though this is not
the first time they are introduced.

Shawn

> +};
> +
> +&iomuxc_snvs {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_tamper_gpios>;
> +
> +	pinctrl_tamper_gpios: tampergpiosgrp {
> +		fsl,pins =3D <
> +			MX6ULL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x0b0b0
> +			MX6ULL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x0b0b0
> +			MX6ULL_PAD_SNVS_TAMPER3__GPIO5_IO03	0x0b0b0
> +			MX6ULL_PAD_SNVS_TAMPER4__GPIO5_IO04	0x0b0b0
> +			MX6ULL_PAD_SNVS_TAMPER5__GPIO5_IO05	0x0b0b0
> +			MX6ULL_PAD_SNVS_TAMPER6__GPIO5_IO06	0x0b0b0
> +			MX6ULL_PAD_SNVS_TAMPER7__GPIO5_IO07	0x0b0b0
> +			MX6ULL_PAD_SNVS_TAMPER8__GPIO5_IO08	0x0b0b0
> +		>;
> +	};
> +
> +	pinctrl_usbotg2_vbus: usbotg2vbusgrp {
> +		fsl,pins =3D <
> +			MX6ULL_PAD_SNVS_TAMPER9__GPIO5_IO09	0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_w1: w1grp {
> +		fsl,pins =3D <
> +			MX6ULL_PAD_SNVS_TAMPER1__GPIO5_IO01	0x0b0b0
> +		>;
> +	};
> +};
> -- =

> 2.21.0
> =

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
