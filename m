Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9190A18B12A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 11:21:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qf2FCYJ/ufLzj2bHP4YkgEUuzhQmNGuwEtwfRl9dKRQ=; b=lUUvTLiNH7Xq5O
	GrcPdpbE281sWYFDBnpl26lNxN8x66Vd1+qX1sy2MJB5HyUaZ5A8sLD2fzyid2BehsYpSpV9b205O
	p6Jt1LMX2Q+PDn7SaMM9/c7yOMZ2wICPbnx4TZSo/rjJ1X27C5bQ0fw5DKa0Ng8w8bkXyvl6M9V6J
	go/oI/hy11i7o2BL6V6frGRJIoRfzBBe5GuKsFMErtEEtx/AaizhhmewDuRU2MyjABokZBm//N77b
	DO/q7+qpoQvO/9ejvRb6krRuE2z0p0Tcdq95sQYd8opebJAlwTx5TNgYJ5zrTrfHKjir4bXMGuGpq
	yLtsJPqU8Ls6V/8IDKng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEsIs-0004PS-MJ; Thu, 19 Mar 2020 10:21:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEsIi-0004OS-2F
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 10:21:22 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jEsIX-0003Pq-VH; Thu, 19 Mar 2020 11:21:09 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jEsIX-0008B1-65; Thu, 19 Mar 2020 11:21:09 +0100
Date: Thu, 19 Mar 2020 11:21:09 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v2 2/5] ARM: dts: add Protonic PRTI6Q board
Message-ID: <20200319102109.GB2071@pengutronix.de>
References: <20200319055636.7573-1-o.rempel@pengutronix.de>
 <20200319055636.7573-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319055636.7573-3-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:30:08 up 26 days, 20:47, 35 users,  load average: 1.56, 1.26, 1.55
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_032120_425032_BEE10A8C 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Jander <david@protonic.nl>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Oleksij,

thanks for your patche. In general you should use generic node names,
sort the properties, nodes, phandles correctly except the iomux node.
Finally, pls don't mix dts and dtsi files. If the dts needs the iomux
than pls mux it within the dts file :) Pls see my comments below.

> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/*
> + * Copyright (c) 2014 Protonic Holland
> + */
> +
> +/dts-v1/;
> +#include "imx6q.dtsi"
> +#include "imx6qdl-prti6q.dtsi"
> +
> +/ {
> +	model = "Protonic PRTI6Q board";
> +	compatible = "prt,prti6q", "fsl,imx6q";
> +
> +	memory@10000000 {
> +		device_type = "memory";
> +		reg = <0x10000000 0xf0000000>;
> +	};
> +
> +	sound-spdif {
> +		compatible = "fsl,imx-audio-spdif";
> +		model = "imx-spdif";
> +		spdif-controller = <&spdif>;
> +		spdif-in;
> +		spdif-out;
> +	};
> +
> +	clocks {

Is this container necessary?

> +		spi3_crystal: spi3clk {

Should we name the clock extcanclk?

> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-frequency = <25000000>;
> +		};
> +	};
> +
> +	panel {
> +		compatible = "kyo,tcg121xglp";
> +		backlight = <&backlight_lcd>;
> +
> +		port {
> +			panel_in: endpoint {
> +				remote-endpoint = <&lvds0_out>;
> +			};
> +		};
> +	};
> +
> +	reg_wl12xx: regulator-wl12xx {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_wl1271_npd>;

Does npd mean no-power-down?

> +		compatible = "regulator-fixed";

The "compatible" property should be the 1st property.

> +		regulator-name = "regulator-WL12xx";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		gpio = <&gpio1 26 0>;
> +		startup-delay-us = <70000>;
> +		enable-active-high;
> +	};

Please sort all nodes and phandles alphabetical, this applies to all
your .dts(i) files except the iomux node. I saw some dt files moving
that node to the end. @Shawn is this a unwritten rule?

> +};
> +
> +&ecspi2 {
> +	cs-gpios = <&gpio2 26 GPIO_ACTIVE_HIGH>, <&gpio4 25 GPIO_ACTIVE_HIGH>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi2>;
> +	status = "okay";
> +
> +	can3: mcp2515@0 {

Where is this phandle used? Please name the node more generic e.g. like
the phandle and drop the phandle if not used.

> +		compatible = "microchip,mcp2515";
> +		spi-max-frequency = <5000000>;
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <20 IRQ_TYPE_LEVEL_LOW>;
> +		reg = <0>;

The "reg" property should be listed after the "compatible" property.

> +		clocks = <&spi3_crystal>;
> +	};
> +
> +	adc128: adc128@1 {
> +		compatible = "ti,adc128s052";
> +		reg = <1>;
> +		vref-supply = <&reg_3v3>;
> +		spi-max-frequency = <2000000>;
> +	};
> +};
> +
> +&iomuxc {
> +	prti6q {

Is this container necessary?

> +		pinctrl_nand: nandgrp {

Where is this node used?

> +			fsl,pins = <
> +				MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
> +				MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
> +				MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
> +				MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
> +				MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
> +				MX6QDL_PAD_NANDF_CS1__NAND_CE1_B	0xb0b1
> +				MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
> +				MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
> +				MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
> +				MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
> +				MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
> +				MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
> +				MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
> +				MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
> +				MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
> +				MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
> +			>;
> +		};
> +
> +		pinctrl_usbotg: usbotggrp {

Here we are mixing dtsi and dts files and the dtsi is not self-contained
anymore. This isn't a good idea.

> +			fsl,pins = <
> +				MX6QDL_PAD_ENET_RX_ER__USB_OTG_ID	0x1f058
> +				MX6QDL_PAD_EIM_D21__USB_OTG_OC		0x1b0b0
> +				/* power enable, high active */
> +				MX6QDL_PAD_EIM_D22__GPIO3_IO22		0x000b0
> +			>;
> +		};
> +
> +		pinctrl_hdmi: hdmigrp {
> +			fsl,pins = <
> +				/* NOTE: DDC is done via I2C2, so DON'T
> +				 * configure DDC pins for HDMI!
> +				 */
> +				MX6QDL_PAD_EIM_A25__HDMI_TX_CEC_LINE	0x1f8b0
> +			>;
> +		};
> +
> +		pinctrl_spdif: spdifgrp {
> +			fsl,pins = <
> +				MX6QDL_PAD_GPIO_16__SPDIF_IN		0x1b0b0
> +				MX6QDL_PAD_GPIO_19__SPDIF_OUT		0x1b0b0
> +			>;
> +		};
> +
> +		pinctrl_leds: ledsgrp {

Here we are mixing it too.

> +			fsl,pins = <
> +				MX6QDL_PAD_DI0_DISP_CLK__GPIO4_IO16	0x1b0b0
> +				MX6QDL_PAD_DI0_PIN15__GPIO4_IO17	0x1b0b0
> +			>;
> +		};
> +
> +		/* DDC */
> +		pinctrl_i2c2: i2c2grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_KEY_COL3__I2C2_SCL	0x4001b8b1
> +				MX6QDL_PAD_KEY_ROW3__I2C2_SDA	0x4001b8b1
> +			>;
> +		};
> +
> +		pinctrl_ecspi2: ecspi2grp {

Most of the node is already defined in your dtsi file and again
mixing dtsi and dts file. Pls check that for all your files. I
would mux the common things like miso,mosi,clk within the dtsi and the
cs signals here. Also we can use the phandle to extend the node.

> +			fsl,pins = <
> +				MX6QDL_PAD_EIM_OE__ECSPI2_MISO		0x100b1
> +				MX6QDL_PAD_EIM_CS0__ECSPI2_SCLK		0x100b1
> +				MX6QDL_PAD_EIM_CS1__ECSPI2_MOSI		0x100b1
> +				/* CAN3 CS */
> +				MX6QDL_PAD_EIM_RW__GPIO2_IO26		0x000b1
> +				/* ADC128S022 CS */
> +				MX6QDL_PAD_DISP0_DAT4__GPIO4_IO25	0x1b0b1
> +				/* CAN3_nINT */
> +				MX6QDL_PAD_EIM_D20__GPIO3_IO20		0x1b0b1
> +			>;
> +		};
> +
> +		pinctrl_enet: enetgrp {
> +			fsl,pins = <
> +				MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b030
> +				MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b030
> +				MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b030
> +				MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b030
> +				MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b030
> +				MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b030
> +				MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x10030
> +				MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x10030
> +				MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x10030
> +				MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x10030
> +				MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x10030
> +				MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x10030
> +				MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x10030
> +				MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x10030
> +				MX6QDL_PAD_ENET_MDC__ENET_MDC		0x10030
> +
> +				/* Phy reset */
> +				MX6QDL_PAD_ENET_CRS_DV__GPIO1_IO25	0x1b0b0
> +				MX6QDL_PAD_ENET_TX_EN__GPIO1_IO28	0x1b0b1
> +			>;
> +		};
> +
> +		pinctrl_usdhc2: usdhc2grp {

Why is this node needed? We only add the IRQ line. You only need to use
the phandle to extend the node or add a new wl1271grp. I would prefer
the 2nd.

> +			fsl,pins = <
> +				MX6QDL_PAD_SD2_CMD__SD2_CMD		0x170b9
> +				MX6QDL_PAD_SD2_CLK__SD2_CLK		0x100b9
> +				MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x170b9
> +				MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x170b9
> +				MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x170b9
> +				MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x170b9
> +				/* WL12xx IRQ */
> +				MX6QDL_PAD_ENET_TXD0__GPIO1_IO30	0x10880
> +			>;
> +		};
> +
> +		pinctrl_wl1271_npd: wl1271_npd {

Pls don't use '_' within node names.

> +			fsl,pins = <
> +				MX6QDL_PAD_ENET_RXD1__GPIO1_IO26	0x1b8b0
> +			>;
> +		};
> +	};
> +};
> +
> +&hdmi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hdmi>;
> +	ddc-i2c-bus = <&i2c2>;
> +	status = "okay";
> +};
> +
> +&spdif {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_spdif>;
> +	status = "okay";
> +};
> +
> +/* DDC */
> +&i2c2 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	status = "okay";
> +};
> +
> +&sata {
> +	status = "okay";
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet>;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&rgmii_phy>;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		/* Microchip KSZ9031RNX PHY */
> +		rgmii_phy: ethernet-phy@0 {
> +			reg = <0>;
> +			interrupts-extended = <&gpio1 28 IRQ_TYPE_LEVEL_LOW>;
> +			reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
> +			reset-assert-us = <10000>;
> +			reset-deassert-us = <300>;
> +		};
> +	};
> +};
> +
> +&ldb {
> +	status = "okay";
> +
> +	lvds-channel@0 {
> +		status = "okay";
> +
> +		port@4 {
> +			reg = <4>;
> +
> +			lvds0_out: endpoint {
> +				remote-endpoint = <&panel_in>;
> +			};
> +		};
> +	};
> +};
> +
> +&usdhc2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc2>;
> +	vmmc-supply = <&reg_wl12xx>;
> +	non-removable;
> +	cap-power-off-card;
> +	keep-power-in-suspend;
> +	status = "okay";
> +
> +	wl1271 {
> +		compatible = "ti,wl1271";
> +		irq-gpio = <&gpio1 30 GPIO_ACTIVE_HIGH>;
> +		ref-clock-frequency = "38400000";
> +		tcxo-clock-frequency = "19200000";
> +	};
> +};
> +
> +&snvs_poweroff {
> +	status = "okay";
> +};
> diff --git a/arch/arm/boot/dts/imx6qdl-prti6q.dtsi b/arch/arm/boot/dts/imx6qdl-prti6q.dtsi
> new file mode 100644
> index 000000000000..6515b96fa0a5
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6qdl-prti6q.dtsi

Should we add the .dtsi file seperate?

> @@ -0,0 +1,489 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/*
> + * Copyright (c) 2014 Protonic Holland
> + */
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/sound/fsl-imx-audmux.h>
> +
> +/ {
> +	chosen {
> +		stdout-path = &uart4;
> +	};
> +
> +	reg_3v3: regulator-3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3v3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_1v8: regulator-1v8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "1v8";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_1v2: regulator-1v2 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "1v2";
> +		regulator-min-microvolt = <1200000>;
> +		regulator-max-microvolt = <1200000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_usb_otg_vbus: regulator-otg-vbus {
> +		compatible = "regulator-fixed";
> +		regulator-name = "otg-vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&gpio3 22 0>;
> +		enable-active-high;
> +	};
> +
> +	reg_usb_h1_vbus: regulator-h1-vbus {
> +		compatible = "regulator-fixed";
> +		regulator-name = "h1-vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-always-on;
> +	};
> +
> +	sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "prti6q-sgtl5000";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,widgets =
> +			"Microphone", "Microphone Jack",
> +			"Line", "Line In Jack",
> +			"Headphone", "Headphone Jack",
> +			"Speaker", "External Speaker";
> +		simple-audio-card,routing =
> +			"MIC_IN", "Microphone Jack",
> +			"LINE_IN", "Line In Jack",
> +			"Headphone Jack", "HP_OUT",
> +			"External Speaker", "LINE_OUT";
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&ssi1>;
> +			system-clock-frequency = <0>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&codec>;
> +			bitclock-master;
> +			frame-master;
> +		};
> +	};
> +
> +	backlight_lcd: backlight-lcd {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_backlight>;
> +		compatible = "pwm-backlight";

Should be the first property.

> +		pwms = <&pwm1 0 5000000>;
> +		brightness-levels = <0 1 2 4 6 8 12 16 24 32 48 64 96 128 192
> +                                     255>;
> +		default-brightness-level = <15>;

Can you check the num-interpolated-steps property?

> +		power-supply = <&reg_3v3>;
> +		status = "okay";

Should be the last property.

> +		enable-gpios = <&gpio4 28 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	leds: led-controller {

led-controller?

> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_leds>;
> +
> +		led-hb0 {

Do we need the led- prefix here?

> +			function = LED_FUNCTION_STATUS;
> +			gpios = <&gpio4 16 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +
> +		led-mmc0 {
> +			function = LED_FUNCTION_SD;
> +			gpios = <&gpio4 17 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "disk-activity";
> +		};
> +	};
> +};
> +
> +&audmux {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_audmux>;
> +	status = "okay";
> +
> +	mux_ssi1 {
> +		fsl,audmux-port = <0>;
> +		fsl,port-config = <
> +			IMX_AUDMUX_V2_PTCR_SYN 		0
> +			IMX_AUDMUX_V2_PTCR_TFSEL(2) 	0
> +			IMX_AUDMUX_V2_PTCR_TCSEL(2) 	0
> +			IMX_AUDMUX_V2_PTCR_TFSDIR 	0
> +			IMX_AUDMUX_V2_PTCR_TCLKDIR IMX_AUDMUX_V2_PDCR_RXDSEL(2)
> +		>;
> +	};
> +
> +	mux_pins3 {
> +		fsl,audmux-port = <2>;
> +		fsl,port-config = <
> +			IMX_AUDMUX_V2_PTCR_SYN IMX_AUDMUX_V2_PDCR_RXDSEL(0)
> +			0		       IMX_AUDMUX_V2_PDCR_TXRXEN
> +		>;
> +	};
> +};
> +
> +&ecspi1 {
> +	cs-gpios = <&gpio3 19 GPIO_ACTIVE_HIGH>;

Nitpick, it is uncommon to list cs-gpios first.

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi1>;
> +	status = "okay";
> +
> +	flash: s25sl032p@0 {

Please use a generic name like spi-flash or flash.

> +		compatible = "spansion,m25p80";
> +		spi-max-frequency = <20000000>;
> +		reg = <0>;

After the compatible string.

> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		partition@0 {
> +			label = "boot";
> +			reg = <0x0 0x80000>;
> +		};
> +
> +		partition@80000 {
> +			label = "env";
> +			reg = <0x80000 0x10000>;
> +		};
> +
> +		partition@90000 {
> +			label = "spare";
> +			reg = <0x90000 0x370000>;
> +		};

The partitions should be listed under the partitions node.

> +	};
> +};
> +
> +&i2c1 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	status = "okay";
> +
> +	codec: sgtl5000@a {

Pls use generic names for all nodes, pls check that for all your dts(i)
files.

> +		#sound-dai-cells = <0>;
> +		compatible = "fsl,sgtl5000";
> +		reg = <0xa>;

Compatible and reg should be moved to the begin.

> +		clocks = <&clks 201>;
> +		VDDA-supply = <&reg_3v3>;
> +		VDDIO-supply = <&reg_3v3>;
> +		VDDD-supply = <&reg_1v8>;
> +	};
> +};
> +
> +&i2c3 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c3>;
> +	status = "okay";
> +
> +	can_adc: ads1015@49 {

Do we need the phandle here? Also node name is not generic and the
phandle is a bit odd can_adc listed under an i2c-node?

> +		compatible = "ti,ads1015";
> +		reg = <0x49>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		channel@4 {
> +			reg = <4>;
> +			ti,gain = <3>;
> +			ti,datarate = <3>;
> +		};
> +
> +		channel@5 {
> +			reg = <5>;
> +			ti,gain = <3>;
> +			ti,datarate = <3>;
> +		};
> +
> +		channel@6 {
> +			reg = <6>;
> +			ti,gain = <3>;
> +			ti,datarate = <3>;
> +		};
> +
> +		channel@7 {
> +			reg = <7>;
> +			ti,gain = <3>;
> +			ti,datarate = <3>;
> +		};
> +	};
> +
> +	tmp103: tmp103@70 {
> +		compatible = "ti,tmp103";
> +		reg = <0x70>;
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hog>;
> +
> +	prti6q {

Is this container needed.

> +		pinctrl_hog: hoggrp {

Pls, don't use hoggrps..

> +			fsl,pins = <
> +				/* SGTL5000 sys_mclk */
> +				MX6QDL_PAD_CSI0_MCLK__CCM_CLKO1		0x030b0
> +				MX6QDL_PAD_EIM_A24__GPIO5_IO04		0x100b0
> +				MX6QDL_PAD_EIM_WAIT__GPIO5_IO00		0x100b0
> +				MX6QDL_PAD_EIM_LBA__GPIO2_IO27		0x1b0b0
> +				MX6QDL_PAD_EIM_EB0__GPIO2_IO28		0x1b0b0
> +				MX6QDL_PAD_EIM_EB1__GPIO2_IO29		0x1b0b0
> +			>;
> +		};
> +
> +		pinctrl_audmux: audmuxgrp {
> +			fsl,pins = <
> +				MX6QDL_PAD_CSI0_DAT7__AUD3_RXD		0x130b0
> +				MX6QDL_PAD_CSI0_DAT4__AUD3_TXC		0x130b0
> +				MX6QDL_PAD_CSI0_DAT5__AUD3_TXD		0x110b0
> +				MX6QDL_PAD_CSI0_DAT6__AUD3_TXFS		0x130b0
> +			>;
> +		};
> +
> +		pinctrl_ecspi1: ecspi1grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_EIM_D17__ECSPI1_MISO		0x100b1
> +				MX6QDL_PAD_EIM_D18__ECSPI1_MOSI		0x100b1
> +				MX6QDL_PAD_EIM_D16__ECSPI1_SCLK		0x100b1
> +				/* CS */
> +				MX6QDL_PAD_EIM_D19__GPIO3_IO19		0x000b1
> +			>;
> +		};
> +
> +		pinctrl_ecspi2: ecspi2grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_EIM_OE__ECSPI2_MISO		0x100b1
> +				MX6QDL_PAD_EIM_CS0__ECSPI2_SCLK		0x100b1
> +				MX6QDL_PAD_EIM_CS1__ECSPI2_MOSI		0x100b1
> +				/* CS */
> +				MX6QDL_PAD_EIM_RW__GPIO2_IO26		0x000b1
> +				/* CAN3_nINT */
> +				MX6QDL_PAD_EIM_D20__GPIO3_IO20		0x1b0b1
> +			>;
> +		};
> +
> +		pinctrl_i2c1: i2c1grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_CSI0_DAT8__I2C1_SDA	0x4001f8b1
> +				MX6QDL_PAD_CSI0_DAT9__I2C1_SCL	0x4001f8b1
> +			>;
> +		};
> +
> +		pinctrl_i2c3: i2c3grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_GPIO_5__I2C3_SCL	0x4001b8b1
> +				MX6QDL_PAD_GPIO_6__I2C3_SDA	0x4001b8b1
> +			>;
> +		};
> +
> +		pinctrl_uart2: uart2grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_EIM_D26__UART2_RX_DATA	0x1b0b1
> +				MX6QDL_PAD_EIM_D27__UART2_TX_DATA	0x1b0b1
> +				MX6QDL_PAD_EIM_D28__UART2_DTE_CTS_B	0x1b0b1
> +				MX6QDL_PAD_EIM_D29__UART2_DTE_RTS_B	0x1b0b1
> +			>;
> +		};
> +
> +		pinctrl_uart4: uart4grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_KEY_COL0__UART4_TX_DATA	0x1b0b1
> +				MX6QDL_PAD_KEY_ROW0__UART4_RX_DATA	0x1b0b1
> +			>;
> +		};
> +
> +		pinctrl_uart5: uart5grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_KEY_COL1__UART5_TX_DATA	0x1b0b1
> +				MX6QDL_PAD_KEY_ROW1__UART5_RX_DATA	0x1b0b1
> +			>;
> +		};
> +
> +		pinctrl_usdhc1: usdhc1grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_SD1_CMD__SD1_CMD		0x170f9
> +				MX6QDL_PAD_SD1_CLK__SD1_CLK		0x100f9
> +				MX6QDL_PAD_SD1_DAT0__SD1_DATA0		0x170f9
> +				MX6QDL_PAD_SD1_DAT1__SD1_DATA1		0x170f9
> +				MX6QDL_PAD_SD1_DAT2__SD1_DATA2		0x170f9
> +				MX6QDL_PAD_SD1_DAT3__SD1_DATA3		0x170f9
> +				MX6QDL_PAD_GPIO_1__SD1_CD_B		0x1b0b0
> +			>;
> +		};
> +
> +		pinctrl_usdhc2: usdhc2grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_SD2_CMD__SD2_CMD		0x170b9
> +				MX6QDL_PAD_SD2_CLK__SD2_CLK		0x100b9
> +				MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x170b9
> +				MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x170b9
> +				MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x170b9
> +				MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x170b9
> +			>;
> +		};
> +
> +		pinctrl_usdhc3: usdhc3grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_SD3_CMD__SD3_CMD		0x17099
> +				MX6QDL_PAD_SD3_CLK__SD3_CLK		0x10099
> +				MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x17099
> +				MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17099
> +				MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17099
> +				MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17099
> +				MX6QDL_PAD_SD3_DAT4__SD3_DATA4		0x17099
> +				MX6QDL_PAD_SD3_DAT5__SD3_DATA5		0x17099
> +				MX6QDL_PAD_SD3_DAT6__SD3_DATA6		0x17099
> +				MX6QDL_PAD_SD3_DAT7__SD3_DATA7		0x17099
> +			>;
> +		};
> +
> +		pinctrl_can1: can1grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_KEY_ROW2__FLEXCAN1_RX 0x80000000
> +				MX6QDL_PAD_KEY_COL2__FLEXCAN1_TX 0x80000000
> +			>;
> +		};
> +
> +		pinctrl_can2: can2grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_KEY_COL4__FLEXCAN2_TX 0x80000000
> +				MX6QDL_PAD_KEY_ROW4__FLEXCAN2_RX 0x80000000
> +			>;
> +		};
> +
> +		pinctrl_pwm1: pwm1grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_DISP0_DAT8__PWM1_OUT		0x1b0b0
> +			>;
> +		};
> +
> +		pinctrl_backlight: backlightgrp {
> +			fsl,pins = <
> +				MX6QDL_PAD_DISP0_DAT7__GPIO4_IO28	0x1b0b0
> +			>;
> +		};
> +
> +		pinctrl_ipu1_csi0: ipu1csi0grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_CSI0_DAT12__IPU1_CSI0_DATA12	0x1b0b0
> +				MX6QDL_PAD_CSI0_DAT13__IPU1_CSI0_DATA13	0x1b0b0
> +				MX6QDL_PAD_CSI0_DAT14__IPU1_CSI0_DATA14	0x1b0b0
> +				MX6QDL_PAD_CSI0_DAT15__IPU1_CSI0_DATA15	0x1b0b0
> +				MX6QDL_PAD_CSI0_DAT16__IPU1_CSI0_DATA16	0x1b0b0
> +				MX6QDL_PAD_CSI0_DAT17__IPU1_CSI0_DATA17	0x1b0b0
> +				MX6QDL_PAD_CSI0_DAT18__IPU1_CSI0_DATA18	0x1b0b0
> +				MX6QDL_PAD_CSI0_DAT19__IPU1_CSI0_DATA19	0x1b0b0
> +				MX6QDL_PAD_CSI0_PIXCLK__IPU1_CSI0_PIXCLK 0x1b0b0
> +			>;
> +		};
> +	};
> +};
> +
> +&pcie {
> +	status = "okay";
> +};
> +
> +&pwm1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm1>;
> +	status = "okay";
> +};
> +
> +&ssi1 {
> +	#sound-dai-cells = <0>;
> +	fsl,mode = "i2s-slave";
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2>;
> +	status = "okay";
> +};
> +
> +&uart4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart4>;
> +	status = "okay";
> +};
> +
> +&uart5 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart5>;
> +	status = "okay";
> +};
> +
> +&usbh1 {
> +	vbus-supply = <&reg_usb_h1_vbus>;
> +	phy_type = "utmi";
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +&usbotg {
> +	vbus-supply = <&reg_usb_otg_vbus>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usbotg>;
> +	phy_type = "utmi";
> +	dr_mode = "host";
> +	disable-over-current;
> +	status = "okay";
> +};
> +
> +&usdhc1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	cd-gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc2>;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&usdhc3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc3>;
> +	bus-width = <8>;
> +	non-removable;
> +	status = "okay";
> +
> +	partitions {
> +		compatible = "fixed-partitions";
> +		#size-cells = <1>;
> +		#address-cells = <1>;
> +
> +		bootstate_backend: bootstate_backend@f0000 {
> +			reg = <0xf0000 0x10000>;
> +			label = "bootstate";
> +		};
> +	};
> +};
> +
> +&can1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_can1>;
> +	status = "okay";
> +};
> +
> +&can2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_can2>;
> +	status = "okay";
> +};

Regards,
  Marco

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
