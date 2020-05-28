Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F9E1E5BEF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 11:32:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hMHpQ0o+CtufV04OFqfg2pEuKFkuwL9uk3kVUvTWwwU=; b=s9/JTzUorAXpX2
	3hGTpxjIald3MAMMSdOG0Vvefptg5umDtkdbL+Tmhur5x3LSx/Qn2KjoqwH1YoycgSIjjFcOXVQzX
	yiiIhIiInNZU5/7C4s/BLAa7v/qx7/CcmLjN2u/PvU3WhALPoX+H00IE/AqytW0UP2detttNAJJNi
	xHrZQehRki7D2L5EfEC2Gp/c6DNKii0EWx3wTK+UvdZb943PmG/mdtsMUD03a10GpiTK9Z54kLsBc
	Ngi4z4eUGpuDqdTK6er1q99hOXIVrbpSoAYfHeli3iSBrqKlO+3U2RdCA6/ZkBE1/8m0XHZj1evcA
	0rq7sHmUfMb6HJ8y0UDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeEtg-00013P-Ac; Thu, 28 May 2020 09:32:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeEsr-0000Zf-36
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 09:31:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1jeEsl-0004mq-30; Thu, 28 May 2020 11:31:23 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1jeEsk-0007wY-B3; Thu, 28 May 2020 11:31:22 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 3/3] ARM: imx7: add support for iotmaxx GW4100
Date: Thu, 28 May 2020 11:31:15 +0200
Message-Id: <20200528093115.28268-3-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200528093115.28268-1-s.trumtrar@pengutronix.de>
References: <20200528093115.28268-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: str@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_023129_445801_A054F8BB 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GW4100 will be an i.MX7D based board from IoTMaxx.
The support is almost complete apart from the pmic setup which currently
can not be used because of a hardware bug. This can and will be changed
once it is fixed in hardware.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boot/dts/Makefile                 |   1 +
 arch/arm/boot/dts/imx7d-iotmaxx-gw4100.dts | 574 +++++++++++++++++++++
 2 files changed, 575 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx7d-iotmaxx-gw4100.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e8dd99201397..f596492a115c 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -623,6 +623,7 @@ dtb-$(CONFIG_SOC_IMX7D) += \
 	imx7d-colibri-emmc-aster.dtb \
 	imx7d-colibri-emmc-eval-v3.dtb \
 	imx7d-colibri-eval-v3.dtb \
+	imx7d-iotmaxx-gw4100.dtb \
 	imx7d-mba7.dtb \
 	imx7d-meerkat96.dtb \
 	imx7d-nitrogen7.dtb \
diff --git a/arch/arm/boot/dts/imx7d-iotmaxx-gw4100.dts b/arch/arm/boot/dts/imx7d-iotmaxx-gw4100.dts
new file mode 100644
index 000000000000..cc78dac80da2
--- /dev/null
+++ b/arch/arm/boot/dts/imx7d-iotmaxx-gw4100.dts
@@ -0,0 +1,574 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+* Copyright (C) 2020 Steffen Trumtrar <s.trumtrar@pengutronix.de>
+*/
+
+/dts-v1/;
+#include "imx7d.dtsi"
+
+/ {
+	model = "IoTMAXX i.MX7D GW4100 Gateway";
+	compatible = "iotmaxx,imx7d-gw4100", "fsl,imx7d";
+
+	chosen {
+		stdout-path = &uart3;
+	};
+
+	memory {
+		device_type = "memory";
+		reg = <0x80000000 0x40000000>;
+	};
+
+	iio-hwmon {
+		compatible = "iio-hwmon";
+		io-channels = <&adc1 0>, <&adc1 1>, <&adc1 2>, <&adc1 3>,
+			      <&adc2 0>, <&adc2 1>, <&adc2 2>;
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = <&pinctrl_leds_usr>;
+		pinctrl-names = "default";
+
+		usr1 {
+			label = "iotmaxx:green:usr1";
+			gpios = <&gpio4 15 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+
+		usr2 {
+			label = "iotmaxx:green:usr2";
+			gpios = <&gpio4 14 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	reg_ldo_emmc_3v3: ldo_emmc_3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "ldo_emmc_v3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	reg_ldo_misc_3v3: ldo_misc_3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "ldo_misc_v3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	reg_dcdc_1v8: ldo_dcdc_1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "ldo_dcdc_1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+	};
+
+	reg_vadc_1v8: regulator-vadc-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vadc_1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+	};
+
+	reg_5v_periph: regulator-5v-periph {
+		compatible = "regulator-fixed";
+		regulator-name = "5v_periph";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio2 2 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	reg_usb_gsm_vbus: regulator-usb-gsm-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "usb_gsm_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio3 4 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	reg_gsm_pwr_en_3v3: regulator-gsm-pwr-en-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "gsm_pwr_en_3v3";
+		pinctrl-names = "default";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio2 15 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	reg_usb_otg1_vbus: regulator-usb-otg1-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "usb_otg1_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
+	reg_usb_otg2_vbus: regulator-usb-otg2-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "usb_otg2_vbus";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usb_otg2_vbus_reg>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio1 7 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+};
+
+&adc1 {
+	vref-supply = <&reg_vadc_1v8>;
+	status = "okay";
+};
+
+&adc2 {
+	vref-supply = <&reg_vadc_1v8>;
+	status = "okay";
+};
+
+&fec2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet2>,
+		    <&pinctrl_mdio>,
+		    <&pinctrl_rmii_phy>;
+	/* set the enet_ref_clk and enet_out with a 50MHz clock */
+	assigned-clocks = <&clks IMX7D_ENET_PHY_REF_ROOT_DIV>;
+	assigned-clock-parents = <&clks IMX7D_PLL_ENET_MAIN_100M_CLK>;
+	assigned-clock-rates = <50000000>;
+	clocks = <&clks IMX7D_ENET2_IPG_ROOT_CLK>,
+		 <&clks IMX7D_ENET_AXI_ROOT_CLK>,
+		 <&clks IMX7D_ENET2_TIME_ROOT_CLK>,
+		 <&clks IMX7D_PLL_ENET_MAIN_50M_CLK>,
+		 <&clks IMX7D_ENET2_REF_ROOT_DIV>;
+	clock-names = "ipg", "ahb", "ptp",
+		      "enet_clk_ref", "enet_out";
+	phy-handle = <&ethphy1>;
+	phy-mode = "rmii";
+	phy-reset-gpios = <&gpio2 27 GPIO_ACTIVE_LOW>;
+	fsl,magic-packet;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy1: ethernet-phy@1 {
+			interrupt-parent = <&gpio2>;
+			interrupts = <25 IRQ_TYPE_LEVEL_LOW>;
+
+			clocks = <&clks IMX7D_ENET2_REF_ROOT_DIV>;
+			clock-names = "rmii-ref";
+			reg = <1>;
+		};
+	};
+};
+
+&flexcan1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+	xceiver-supply = <&reg_5v_periph>;
+	status = "okay";
+};
+
+&gpio1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio1>;
+
+	gpio-line-names = "gpio1_highside",
+	"gpio1_lowside", "gpio1_pullup", "n_gpio1_in", "gpio2_highside", "gpio2_lowside",
+	"n_usb_ext_oc",	"usb_ext_pwr", "", "", "",
+	"", "", "", "", "",
+	"", "", "", "", "",
+	"", "", "", "", "",
+	"", "", "", "", "",
+	"";
+};
+
+&gpio2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio2>;
+	status = "okay";
+
+	gpio-line-names = "",
+	"", "5v_periph_en", "", "sim_cd1", "sim_cd2",
+	"", "", "", "", "",
+	"", "", "", "", "gsm_pwr_en_3v3",
+	"", "", "n_usbhub_int", "usbhub_connect", "",
+	"", "", "", "", "",
+	"", "", "", "", "n_usbhub_rst",
+	"";
+};
+
+&gpio3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio3>;
+	status = "okay";
+
+	gpio-line-names = "",
+	"", "", "", "vusb_gsm_en", "",
+	"", "", "", "", "",
+	"", "", "", "", "",
+	"", "", "", "", "",
+	"", "", "", "", "sim_enable",
+	"", "", "", "", "",
+	"";
+};
+
+&gpio4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio4>,
+	            <&pinctrl_gpio4_hog>;
+	status = "okay";
+
+	gpio-line-names = "",
+	"", "", "", "",	"",
+	"", "", "", "", "",
+	"", "n_can_term_en", "", "led_usr2", "led_usr1",
+	"sim_sel", "gsm_reset", "", "n_gsm_pwr_ind", "",
+	"", "", "", "", "",
+	"", "", "", "", "",
+	"";
+
+	gsm-pwr-on-off {
+		gpio-hog;
+		gpios = <18 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "gsm_power_on_off";
+	};
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	1wiremaster@18 {
+		compatible = "ds2482";
+		reg = <0x18>;
+	};
+};
+
+/* CTRL_I2C */
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+
+	usb_hub: usb-hub@8 {
+		compatible = "smsc,usb3503";
+		reg = <0x8>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usbhub>;
+		initial-mode = <1>;	/* HUB mode */
+		reset-gpios = <&gpio2 30 GPIO_ACTIVE_LOW>;
+		intn-gpios = <&gpio2 18 GPIO_ACTIVE_LOW>;
+		connect-gpios = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+		clocks = <&clks IMX7D_OSC_24M_CLK>;
+		clock-names = "refclk";
+	};
+
+	tpm: tpm@20 {
+		compatible = "infineon,slb9645tt";
+		reg = <0x20>;
+	};
+
+	eeprom: eeprom@50 {
+		compatible = "atmel,24c01";
+		vcc-supply = <&reg_ldo_misc_3v3>;
+		pagesize = <8>;
+		reg = <0x50>;
+	};
+
+	pcf85363: pcf85363@51 {
+		compatible = "nxp,pcf85363";
+		reg = <0x51>;
+	};
+};
+
+/* EXP_I2C */
+&i2c4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_mdio: mdiogrp {
+		fsl,pins = <
+		MX7D_PAD_UART2_RX_DATA__ENET2_MDIO		0x3	/* ENET_MDIO */
+		MX7D_PAD_UART2_TX_DATA__ENET2_MDC		0x3  	/* ENET_MDC */
+		>;
+	};
+	pinctrl_enet2: enet2grp {
+		fsl,pins = <
+		MX7D_PAD_EPDC_SDCE0__ENET2_RGMII_RX_CTL		0x5	/* ENET2_CRS_DV */
+		MX7D_PAD_EPDC_SDCE1__ENET2_RX_ER		0x5	/* ENET2_RXER */
+		MX7D_PAD_EPDC_SDCE2__ENET2_RGMII_TD0		0x5	/* ENET2_TXD0 */
+		MX7D_PAD_EPDC_SDCE3__ENET2_RGMII_TD1		0x5	/* ENET2_TXD1 */
+		MX7D_PAD_EPDC_SDCLK__ENET2_RGMII_RD0		0x5	/* ENET2_RXD0 */
+		MX7D_PAD_EPDC_SDLE__ENET2_RGMII_RD1		0x5	/* ENET2_RXD1 */
+		MX7D_PAD_EPDC_GDCLK__GPIO2_IO24			0x5	/* ENET2_B-CAST_OFF */
+		MX7D_PAD_EPDC_GDRL__ENET2_RGMII_TX_CTL		0x5	/* ENET2_TXEN */
+		MX7D_PAD_EPDC_BDR0__CCM_ENET_REF_CLK2		0x40000001	/* ENET2_TX_CLK */
+		>;
+	};
+	pinctrl_rmii_phy: phygrp {
+		fsl,pins = <
+		MX7D_PAD_EPDC_GDSP__GPIO2_IO27			0x59	/* !ENET2_RST */
+		MX7D_PAD_EPDC_GDOE__GPIO2_IO25			0x59	/* !ENET2_INT */
+		>;
+	};
+
+	pinctrl_flexcan1: flexcan1grp {
+		fsl,pins = <
+		MX7D_PAD_GPIO1_IO12__FLEXCAN1_RX		0x5a
+		MX7D_PAD_GPIO1_IO13__FLEXCAN1_TX		0x52
+		>;
+	};
+
+	pinctrl_gpio2: gpio2grp {
+		fsl,pins = <
+		MX7D_PAD_EPDC_DATA02__GPIO2_IO2			0x14	/* 5V_PERIPH_EN */
+		MX7D_PAD_EPDC_DATA15__GPIO2_IO15		0x14	/* GSM_PWR_EN_3V3 */
+		MX7D_PAD_EPDC_DATA04__GPIO2_IO4			0x14	/* SIM_CD1 */
+		MX7D_PAD_EPDC_DATA05__GPIO2_IO5			0x14	/* SIM_CD2 */
+		>;
+	};
+
+	pinctrl_gpio3: gpio3grp {
+		fsl,pins = <
+		MX7D_PAD_LCD_RESET__GPIO3_IO4			0x79	/* VUSB_GSM_EN */
+		MX7D_PAD_LCD_DATA20__GPIO3_IO25			0x14	/* SIM_ENABLE */
+		>;
+	};
+
+	pinctrl_gpio4: gpio4grp {
+		fsl,pins = <
+		MX7D_PAD_ECSPI1_SS0__GPIO4_IO19			0x59	/* !GSM_PWR_IND */
+		MX7D_PAD_ECSPI1_SCLK__GPIO4_IO16		0x59	/* SIM_SEL */
+		MX7D_PAD_I2C3_SCL__GPIO4_IO12			0x59	/* !CAN_TERM_EN */
+		MX7D_PAD_ECSPI1_MOSI__GPIO4_IO17		0x03	/* GSM_RST */
+		>;
+	};
+
+	pinctrl_gpio4_hog: gpio4hoggrp {
+		fsl,pins = <
+		MX7D_PAD_ECSPI1_MISO__GPIO4_IO18		0x73	/* GSM_POWER_ON_OFF */
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+		MX7D_PAD_UART1_RX_DATA__I2C1_SCL		0x40000078
+		MX7D_PAD_UART1_TX_DATA__I2C1_SDA		0x40000078
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+		MX7D_PAD_ENET1_RGMII_RD1__I2C3_SDA		0x40000078
+		MX7D_PAD_ENET1_RGMII_RD0__I2C3_SCL		0x40000078
+		>;
+	};
+
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <
+		MX7D_PAD_ENET1_RGMII_TD3__I2C4_SDA		0x40000078
+		MX7D_PAD_ENET1_RGMII_TD2__I2C4_SCL		0x40000078
+		>;
+	};
+
+	pinctrl_leds_usr: ledsusrgrp {
+		fsl,pins = <
+		MX7D_PAD_I2C4_SDA__GPIO4_IO15			0x51	/* LED USR1 */
+		MX7D_PAD_I2C4_SCL__GPIO4_IO14			0x51	/* LED USR2 */
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+		MX7D_PAD_UART3_RX_DATA__UART3_DCE_RX		0x79
+		MX7D_PAD_UART3_TX_DATA__UART3_DCE_TX		0x79
+		MX7D_PAD_UART3_RTS_B__UART3_DCE_RTS		0x79
+		MX7D_PAD_UART3_CTS_B__UART3_DCE_CTS		0x79
+		>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+		MX7D_PAD_I2C1_SCL__GPIO4_IO8			0x79	/* RS485_DE */
+		MX7D_PAD_I2C2_SCL__UART4_DCE_RX			0x79	/* RS485_R */
+		MX7D_PAD_I2C2_SDA__UART4_DCE_TX			0x79	/* RS458_D */
+		>;
+	};
+
+	pinctrl_usbhub: usbhubgrp {
+		fsl,pins = <
+		MX7D_PAD_EPDC_PWR_COM__GPIO2_IO30		0x59	/* !USBHUB_RST */
+		MX7D_PAD_EPDC_SDOE__GPIO2_IO18			0x59	/* !USBHUB_INT */
+		MX7D_PAD_EPDC_SDSHR__GPIO2_IO19			0x59	/* USBHUB_CONNECT */
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+		MX7D_PAD_SD2_CMD__SD2_CMD			0x59
+		MX7D_PAD_SD2_CLK__SD2_CLK			0x19
+		MX7D_PAD_SD2_DATA0__SD2_DATA0			0x59
+		MX7D_PAD_SD2_DATA1__SD2_DATA1			0x59
+		MX7D_PAD_SD2_DATA2__SD2_DATA2			0x59
+		MX7D_PAD_SD2_DATA3__SD2_DATA3			0x59
+		MX7D_PAD_SD2_CD_B__SD2_CD_B			0x59
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+		MX7D_PAD_SD3_CMD__SD3_CMD			0x59
+		MX7D_PAD_SD3_CLK__SD3_CLK			0x19
+		MX7D_PAD_SD3_DATA0__SD3_DATA0			0x59
+		MX7D_PAD_SD3_DATA1__SD3_DATA1			0x59
+		MX7D_PAD_SD3_DATA2__SD3_DATA2			0x59
+		MX7D_PAD_SD3_DATA3__SD3_DATA3			0x59
+		MX7D_PAD_SD3_DATA4__SD3_DATA4			0x59
+		MX7D_PAD_SD3_DATA5__SD3_DATA5			0x59
+		MX7D_PAD_SD3_DATA6__SD3_DATA6			0x59
+		MX7D_PAD_SD3_DATA7__SD3_DATA7			0x59
+		MX7D_PAD_SD3_STROBE__SD3_STROBE			0x19
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3grp_100mhz {
+		fsl,pins = <
+		MX7D_PAD_SD3_CMD__SD3_CMD			0x5a
+		MX7D_PAD_SD3_CLK__SD3_CLK			0x1a
+		MX7D_PAD_SD3_DATA0__SD3_DATA0			0x5a
+		MX7D_PAD_SD3_DATA1__SD3_DATA1			0x5a
+		MX7D_PAD_SD3_DATA2__SD3_DATA2			0x5a
+		MX7D_PAD_SD3_DATA3__SD3_DATA3			0x5a
+		MX7D_PAD_SD3_DATA4__SD3_DATA4			0x5a
+		MX7D_PAD_SD3_DATA5__SD3_DATA5			0x5a
+		MX7D_PAD_SD3_DATA6__SD3_DATA6			0x5a
+		MX7D_PAD_SD3_DATA7__SD3_DATA7			0x5a
+		MX7D_PAD_SD3_STROBE__SD3_STROBE			0x1a
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3grp_200mhz {
+		fsl,pins = <
+		MX7D_PAD_SD3_CMD__SD3_CMD			0x5b
+		MX7D_PAD_SD3_CLK__SD3_CLK			0x1b
+		MX7D_PAD_SD3_DATA0__SD3_DATA0			0x5b
+		MX7D_PAD_SD3_DATA1__SD3_DATA1			0x5b
+		MX7D_PAD_SD3_DATA2__SD3_DATA2			0x5b
+		MX7D_PAD_SD3_DATA3__SD3_DATA3			0x5b
+		MX7D_PAD_SD3_DATA4__SD3_DATA4			0x5b
+		MX7D_PAD_SD3_DATA5__SD3_DATA5			0x5b
+		MX7D_PAD_SD3_DATA6__SD3_DATA6			0x5b
+		MX7D_PAD_SD3_DATA7__SD3_DATA7			0x5b
+		MX7D_PAD_SD3_STROBE__SD3_STROBE			0x1b
+		>;
+	};
+};
+
+&iomuxc_lpsr {
+	pinctrl_gpio1: gpio1grp {
+		fsl,pins = <
+		MX7D_PAD_LPSR_GPIO1_IO00__GPIO1_IO0		0x00	/* GPIO1_HIGHSIDE */
+		MX7D_PAD_LPSR_GPIO1_IO01__GPIO1_IO1		0x00	/* GPIO1_LOWSIDE */
+		MX7D_PAD_LPSR_GPIO1_IO02__GPIO1_IO2		0x00	/* GPIO1_PULLUP */
+		MX7D_PAD_LPSR_GPIO1_IO03__GPIO1_IO3		0x00	/* GPIO1_IN */
+		MX7D_PAD_LPSR_GPIO1_IO04__GPIO1_IO4		0x00	/* GPIO2_HIGHSIDE */
+		MX7D_PAD_LPSR_GPIO1_IO05__GPIO1_IO5		0x00	/* GPIO2_LOWSIDE */
+		MX7D_PAD_LPSR_GPIO1_IO06__GPIO1_IO6		0x00	/* !USB_EXT_OC */
+		>;
+	};
+
+	pinctrl_usb_otg2_vbus_reg: usbotg2vbusreggrp {
+		fsl,pins = <
+		MX7D_PAD_LPSR_GPIO1_IO07__GPIO1_IO7		0x14	/* USB_EXT_PWR */
+		>;
+	};
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	assigned-clocks = <&clks IMX7D_UART3_ROOT_SRC>;
+	assigned-clock-parents = <&clks IMX7D_OSC_24M_CLK>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+/* Maxlinear SP483 RS-485 transceiver */
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	rts-gpios = <&gpio4 8 GPIO_ACTIVE_HIGH>;
+	linux,rs485-enabled-at-boot-time;
+	status = "okay";
+};
+
+&usbphynop3 {
+	vcc-supply = <&reg_ldo_misc_3v3>;
+};
+
+&usbh {
+	disable-over-current;
+	status = "okay";
+};
+
+&usbphynop1 {
+	vcc-supply = <&reg_usb_otg1_vbus>;
+};
+
+&usbotg1 {
+	vbus-supply = <&reg_ldo_misc_3v3>;
+	dr_mode = "otg";
+	disable-over-current;
+	status = "okay";
+};
+
+&usbphynop2 {
+	vcc-supply = <&reg_usb_otg2_vbus>;
+};
+
+&usbotg2 {
+	vbus-supply = <&reg_usb_otg2_vbus>;
+	dr_mode = "host";
+	disable-over-current;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	status = "okay";
+};
+
+&usdhc3 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	assigned-clocks = <&clks IMX7D_USDHC3_ROOT_CLK>;
+	assigned-clock-rates = <400000000>;
+	bus-width = <8>;
+	no-sd;
+	no-sdio;
+	disable-wp;
+	fsl,tuning-step = <2>;
+	non-removable;
+	vmmc-supply = <&reg_ldo_emmc_3v3>;
+	vqmmc-supply = <&reg_dcdc_1v8>;
+	status = "okay";
+};
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
