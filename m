Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 780F011D779
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 20:52:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cctIV36XHLuHJDDrdRLrwblP9nXDxSoVVVTMY0D23Rc=; b=j95hX40Ma+Goj66pzCKjeZtomr
	ncf0jkIViIsoMzH6d9YEvDuApLCrFgL2RPeGlZFkkfnW7nCzQHhHe2MHAv1+XRNCV0x/S/CECaKe/
	NLcZP9Ci5ljxumck6hYChuoeAzvUKSsKOqeeTD6T90HJGv23Cti0iiSo29I2s+C4mIkFzWOGETYYD
	XOhZMF7W+ZTIOnk2TvaeT0ATp22K589AMGmRxuIuXlYJp8hOFbTyHXLP1V0OcAAnXnZbvSGIi6kd0
	u4Y+ql7wwD/GE01Cr9P7z0ifoSPK61CAiiBPVJkTBUXawSGohNJXLvvJH7mbCCaQbBu76EFg76Qp2
	vtCpKmrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifUVr-0002H3-Ph; Thu, 12 Dec 2019 19:52:39 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifUVd-0002Gd-W2
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 19:52:27 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=rjones.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <rjones@gateworks.com>)
 id 1ifUkF-0003ji-Op; Thu, 12 Dec 2019 20:07:31 +0000
From: Robert Jones <rjones@gateworks.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2] ARM: dts: imx: Add GW5907 board support
Date: Thu, 12 Dec 2019 11:52:12 -0800
Message-Id: <20191212195212.30433-1-rjones@gateworks.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20191205220825.22915-1-rjones@gateworks.com>
References: <20191205220825.22915-1-rjones@gateworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_115226_071590_ECCC2510 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Robert Jones <rjones@gateworks.com>,
 Tim Harvey <tharvey@gateworks.com>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Gateworks GW5907 is an IMX6 SoC based single board computer with:
 - IMX6Q or IMX6DL
 - 32bit DDR3 DRAM
 - FEC GbE Phy
 - bi-color front-panel LED
 - 256MB NAND boot device
 - Gateworks System Controller (hwmon, pushbutton controller, EEPROM)
 - Digital IO expander (pca9555)
 - Joystick 12bit adc (ads1015)

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
Signed-off-by: Robert Jones <rjones@gateworks.com>
---

Changes in v2:
 - Generalized node names
 - Removed unnecessary labels
 - Expanded patch subject
 - Removed undocumented compatible string in dts**

** I realize that the "gw,ventana" still exists here, but that cant be removed
without breaking a conditional check in arch/arm/mach-imx/mach-imx6q.cq

 arch/arm/boot/dts/Makefile            |   2 +
 arch/arm/boot/dts/imx6dl-gw5907.dts   |  14 ++
 arch/arm/boot/dts/imx6q-gw5907.dts    |  14 ++
 arch/arm/boot/dts/imx6qdl-gw5907.dtsi | 399 ++++++++++++++++++++++++++++++++++
 4 files changed, 429 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6dl-gw5907.dts
 create mode 100644 arch/arm/boot/dts/imx6q-gw5907.dts
 create mode 100644 arch/arm/boot/dts/imx6qdl-gw5907.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 8784115..1c58d11 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -418,6 +418,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
 	imx6dl-gw560x.dtb \
 	imx6dl-gw5903.dtb \
 	imx6dl-gw5904.dtb \
+	imx6dl-gw5907.dtb \
 	imx6dl-gw5910.dtb \
 	imx6dl-gw5912.dtb \
 	imx6dl-gw5913.dtb \
@@ -492,6 +493,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
 	imx6q-gw560x.dtb \
 	imx6q-gw5903.dtb \
 	imx6q-gw5904.dtb \
+	imx6q-gw5907.dtb \
 	imx6q-gw5910.dtb \
 	imx6q-gw5912.dtb \
 	imx6q-gw5913.dtb \
diff --git a/arch/arm/boot/dts/imx6dl-gw5907.dts b/arch/arm/boot/dts/imx6dl-gw5907.dts
new file mode 100644
index 0000000..7d9fe47
--- /dev/null
+++ b/arch/arm/boot/dts/imx6dl-gw5907.dts
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 Gateworks Corporation
+ */
+
+/dts-v1/;
+
+#include "imx6dl.dtsi"
+#include "imx6qdl-gw5907.dtsi"
+
+/ {
+	model = "Gateworks Ventana i.MX6 DualLite/Solo GW5907";
+	compatible = "gw,ventana", "fsl,imx6dl";
+};
diff --git a/arch/arm/boot/dts/imx6q-gw5907.dts b/arch/arm/boot/dts/imx6q-gw5907.dts
new file mode 100644
index 0000000..63e0bef
--- /dev/null
+++ b/arch/arm/boot/dts/imx6q-gw5907.dts
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 Gateworks Corporation
+ */
+
+/dts-v1/;
+
+#include "imx6q.dtsi"
+#include "imx6qdl-gw5907.dtsi"
+
+/ {
+	model = "Gateworks Ventana i.MX6 Dual/Quad GW5907";
+	compatible = "gw,ventana", "fsl,imx6q";
+};
diff --git a/arch/arm/boot/dts/imx6qdl-gw5907.dtsi b/arch/arm/boot/dts/imx6qdl-gw5907.dtsi
new file mode 100644
index 0000000..0bdebdd
--- /dev/null
+++ b/arch/arm/boot/dts/imx6qdl-gw5907.dtsi
@@ -0,0 +1,399 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 Gateworks Corporation
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	/* these are used by bootloader for disabling nodes */
+	aliases {
+		led0 = &led0;
+		led1 = &led1;
+		nand = &gpmi;
+		usb0 = &usbh1;
+		usb1 = &usbotg;
+	};
+
+	chosen {
+		stdout-path = &uart2;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_leds>;
+
+		led0: user1 {
+			label = "user1";
+			gpios = <&gpio4 6 GPIO_ACTIVE_HIGH>; /* MX6_PANLEDG */
+			default-state = "on";
+			linux,default-trigger = "heartbeat";
+		};
+
+		led1: user2 {
+			label = "user2";
+			gpios = <&gpio4 7 GPIO_ACTIVE_HIGH>; /* MX6_PANLEDR */
+			default-state = "off";
+		};
+	};
+
+	memory@10000000 {
+		device_type = "memory";
+		reg = <0x10000000 0x20000000>;
+	};
+
+	pps {
+		compatible = "pps-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pps>;
+		gpios = <&gpio1 26 GPIO_ACTIVE_HIGH>;
+		status = "okay";
+	};
+
+	reg_3p3v: regulator-3p3v {
+		compatible = "regulator-fixed";
+		regulator-name = "3P3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	reg_5p0v: regulator-5p0v {
+		compatible = "regulator-fixed";
+		regulator-name = "5P0V";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
+	reg_usb_otg_vbus: regulator-usb-otg-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "usb_otg_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio3 22 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet>;
+	phy-mode = "rgmii-id";
+	phy-reset-gpios = <&gpio1 30 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&gpmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	status = "okay";
+};
+
+&hdmi {
+	ddc-i2c-bus = <&i2c3>;
+	status = "okay";
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	gpio@23 {
+		compatible = "nxp,pca9555";
+		reg = <0x23>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	eeprom@50 {
+		compatible = "atmel,24c02";
+		reg = <0x50>;
+		pagesize = <16>;
+	};
+
+	eeprom@51 {
+		compatible = "atmel,24c02";
+		reg = <0x51>;
+		pagesize = <16>;
+	};
+
+	eeprom@52 {
+		compatible = "atmel,24c02";
+		reg = <0x52>;
+		pagesize = <16>;
+	};
+
+	eeprom@53 {
+		compatible = "atmel,24c02";
+		reg = <0x53>;
+		pagesize = <16>;
+	};
+
+	rtc@68 {
+		compatible = "dallas,ds1672";
+		reg = <0x68>;
+	};
+};
+
+&i2c2 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+};
+
+&i2c3 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+
+	gpio@20 {
+		compatible = "nxp,pca9555";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	adc@48 {
+		compatible = "ti,ads1015";
+		reg = <0x48>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		channel@4 {
+			reg = <4>;
+			ti,gain = <0>;
+			ti,datarate = <5>;
+		};
+
+		channel@5 {
+			reg = <5>;
+			ti,gain = <0>;
+			ti,datarate = <5>;
+		};
+
+		channel@6 {
+			reg = <6>;
+			ti,gain = <0>;
+			ti,datarate = <5>;
+		};
+	};
+};
+
+&pcie {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pcie>;
+	reset-gpio = <&gpio1 0 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&pwm2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm2>; /* MX6_DIO1 */
+	status = "disabled";
+};
+
+&pwm3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm3>; /* MX6_DIO2 */
+	status = "disabled";
+};
+
+&pwm4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm4>; /* MX6_DIO3 */
+	status = "disabled";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	status = "okay";
+};
+
+&uart5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart5>;
+	status = "okay";
+};
+
+&usbotg {
+	vbus-supply = <&reg_usb_otg_vbus>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg>;
+	disable-over-current;
+	status = "okay";
+};
+
+&usbh1 {
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+};
+
+&iomuxc {
+	pinctrl_enet: enetgrp {
+		fsl,pins = <
+			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b0b0
+			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b0b0
+			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b0b0
+			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b0b0
+			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b0b0
+			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b0b0
+			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b0b0
+			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b0b0
+			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b0b0
+			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b0b0
+			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b0b0
+			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b0b0
+			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
+			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
+			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
+			MX6QDL_PAD_GPIO_16__ENET_REF_CLK	0x4001b0a8
+			MX6QDL_PAD_ENET_TXD0__GPIO1_IO30	0x1b0b0
+		>;
+	};
+
+	pinctrl_gpio_leds: gpioledsgrp {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_COL0__GPIO4_IO06		0x1b0b0
+			MX6QDL_PAD_KEY_ROW0__GPIO4_IO07		0x1b0b0
+		>;
+	};
+
+	pinctrl_gpmi_nand: gpminandgrp {
+		fsl,pins = <
+			MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
+			MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
+			MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
+			MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
+			MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
+			MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
+			MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
+			MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
+			MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
+			MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
+			MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
+			MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
+			MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
+			MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
+			MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
+			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
+			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x0001b0b0
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b8b1
+			MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b8b1
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_3__I2C3_SCL		0x4001b8b1
+			MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b8b1
+			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b0
+			MX6QDL_PAD_GPIO_19__GPIO4_IO05		0x1b0b0
+		>;
+	};
+
+	pinctrl_pcie: pciegrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_0__GPIO1_IO00		0x1b0b0
+		>;
+	};
+
+	pinctrl_pps: ppsgrp {
+		fsl,pins = <
+			MX6QDL_PAD_ENET_RXD1__GPIO1_IO26	0x1b0b1
+		>;
+	};
+
+	pinctrl_pwm2: pwm2grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD1_DAT2__PWM2_OUT		0x1b0b1
+		>;
+	};
+
+	pinctrl_pwm3: pwm3grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD1_DAT1__PWM3_OUT		0x1b0b1
+		>;
+	};
+
+	pinctrl_pwm4: pwm4grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD1_CMD__PWM4_OUT		0x1b0b1
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD3_DAT7__UART1_TX_DATA	0x1b0b1
+			MX6QDL_PAD_SD3_DAT6__UART1_RX_DATA	0x1b0b1
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD4_DAT7__UART2_TX_DATA	0x1b0b1
+			MX6QDL_PAD_SD4_DAT4__UART2_RX_DATA	0x1b0b1
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D24__UART3_TX_DATA	0x1b0b1
+			MX6QDL_PAD_EIM_D25__UART3_RX_DATA	0x1b0b1
+		>;
+	};
+
+	pinctrl_uart5: uart5grp {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_COL1__UART5_TX_DATA	0x1b0b1
+			MX6QDL_PAD_KEY_ROW1__UART5_RX_DATA	0x1b0b1
+		>;
+	};
+
+	pinctrl_usbotg: usbotggrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_1__USB_OTG_ID		0x17059
+			MX6QDL_PAD_EIM_D22__GPIO3_IO22		0x1b0b0
+		>;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX6QDL_PAD_DISP0_DAT8__WDOG1_B		0x1b0b0
+		>;
+	};
+};
-- 
2.9.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
