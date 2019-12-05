Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4AA11490A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 23:09:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=w9+3hsHQpSO3HCF/adWLqKcrIBd8nJ3ofhmxTdNQYTs=; b=P2d
	DRxVcOxSa3puhpvOfHe40FzJ49T3YYOEea/CsbakJ8+YaiOGe6eTrh/wHWtjyuLG8EKWq7d4Ieegv
	IzudhUdBTW+Ker32Gh4HnwXB6AJA4et86/IwRxN7p7NS69o7WUVS61IVuz8Zyq43d83qxQpjzepAy
	LCRSSocGdcHQvduYwncryjIp9/sxdY97EHwH3x0zhFT3ERpiIClIvucaYYXAYfDZzkCkNybWhfBoK
	IdDetMZsRRyAdPkh0baBjuA4Zidb22JNYfVWIx8m3VICKeyEtq/5MB5/x0sIL8d39x8+/Z4OXIENR
	blM/wj5jFVd5SpA0cBbeeHMaN9hCVUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iczJC-0006PC-GA; Thu, 05 Dec 2019 22:09:14 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iczJ3-0006OD-9Y
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 22:09:07 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=rjones.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <rjones@gateworks.com>)
 id 1iczXW-00089k-4g; Thu, 05 Dec 2019 22:24:02 +0000
From: Robert Jones <rjones@gateworks.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH] ARM: dts: imx: Add GW5910
Date: Thu,  5 Dec 2019 14:08:53 -0800
Message-Id: <20191205220853.22984-1-rjones@gateworks.com>
X-Mailer: git-send-email 2.9.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_140905_413114_CE2DD13C 
X-CRM114-Status: GOOD (  12.93  )
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

From: Tim Harvey <tharvey@gateworks.com>

The Gateworks GW5910 is an IMX6 SoC based single board computer with:
 - IMX6Q or IMX6DL
 - 32bit DDR3 DRAM
 - FEC GbE RJ45 front-panel
 - 1x miniPCIe socket with PCI Gen2, USB2
 - 1x miniPCIe socket with PCI Gen2, USB2, nanoSIM
 - 5V to 60V DC input barrel jack
 - 3axis accelerometer (lis2de12)
 - GPS (ublox ZOE-M8Q)
 - bi-color front-panel LED
 - 256MB NAND boot device
 - microSD socket (with UHS-I support)
 - user pushbutton
 - Gateworks System Controller (hwmon, pushbutton controller, EEPROM)
 - Dual-Band Wireless MCU (CC1352, UART/I2S interrconnect to IMX6)
 - WiFi/Bluetooth/BLE module (Sterling-LSW, SDIO/UART interconnect to IMX6)
 - RS232 transceiver (1x UART with flow-control or 2x UART (build option)
 - off-board SPI connector (1x chip-select)

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
Signed-off-by: Robert Jones <rjones@gateworks.com>

---
 arch/arm/boot/dts/Makefile            |   2 +
 arch/arm/boot/dts/imx6dl-gw5910.dts   |  14 +
 arch/arm/boot/dts/imx6q-gw5910.dts    |  14 +
 arch/arm/boot/dts/imx6qdl-gw5910.dtsi | 491 ++++++++++++++++++++++++++++++++++
 4 files changed, 521 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6dl-gw5910.dts
 create mode 100644 arch/arm/boot/dts/imx6q-gw5910.dts
 create mode 100644 arch/arm/boot/dts/imx6qdl-gw5910.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index dbc27c9..d7736f5 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -417,6 +417,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
 	imx6dl-gw560x.dtb \
 	imx6dl-gw5903.dtb \
 	imx6dl-gw5904.dtb \
+	imx6dl-gw5910.dtb \
 	imx6dl-hummingboard.dtb \
 	imx6dl-hummingboard-emmc-som-v15.dtb \
 	imx6dl-hummingboard-som-v15.dtb \
@@ -488,6 +489,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
 	imx6q-gw560x.dtb \
 	imx6q-gw5903.dtb \
 	imx6q-gw5904.dtb \
+	imx6q-gw5910.dtb \
 	imx6q-h100.dtb \
 	imx6q-hummingboard.dtb \
 	imx6q-hummingboard-emmc-som-v15.dtb \
diff --git a/arch/arm/boot/dts/imx6dl-gw5910.dts b/arch/arm/boot/dts/imx6dl-gw5910.dts
new file mode 100644
index 0000000..0d5e7e5
--- /dev/null
+++ b/arch/arm/boot/dts/imx6dl-gw5910.dts
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 Gateworks Corporation
+ */
+
+/dts-v1/;
+
+#include "imx6dl.dtsi"
+#include "imx6qdl-gw5910.dtsi"
+
+/ {
+	model = "Gateworks Ventana i.MX6 DualLite/Solo GW5910";
+	compatible = "gw,imx6dl-gw5910", "gw,ventana", "fsl,imx6dl";
+};
diff --git a/arch/arm/boot/dts/imx6q-gw5910.dts b/arch/arm/boot/dts/imx6q-gw5910.dts
new file mode 100644
index 0000000..6aafa2f
--- /dev/null
+++ b/arch/arm/boot/dts/imx6q-gw5910.dts
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 Gateworks Corporation
+ */
+
+/dts-v1/;
+
+#include "imx6q.dtsi"
+#include "imx6qdl-gw5910.dtsi"
+
+/ {
+	model = "Gateworks Ventana i.MX6 Dual/Quad GW5910";
+	compatible = "gw,imx6q-gw5910", "gw,ventana", "fsl,imx6q";
+};
diff --git a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
new file mode 100644
index 0000000..0a5c3b7
--- /dev/null
+++ b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
@@ -0,0 +1,491 @@
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
+		led2 = &led2;
+	};
+
+	chosen {
+		stdout-path = &uart2;
+	};
+
+	memory@10000000 {
+		device_type = "memory";
+		reg = <0x10000000 0x20000000>;
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
+
+		led2: user3 {
+			label = "user3";
+			gpios = <&gpio4 15 GPIO_ACTIVE_LOW>; /* MX6_LOCLED# */
+			default-state = "off";
+		};
+	};
+
+	pps {
+		compatible = "pps-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pps>;
+		gpios = <&gpio4 16 GPIO_ACTIVE_HIGH>;
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
+	reg_wl: regulator-wl {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_wl>;
+		compatible = "regulator-fixed";
+		regulator-name = "wl";
+		gpio = <&gpio1 5 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <100>;
+		enable-active-high;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	reg_bt: regulator-bt {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_bt>;
+		compatible = "regulator-fixed";
+		regulator-name = "bt";
+		gpio = <&gpio1 2 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <100>;
+		enable-active-high;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+};
+
+
+&ecspi3 {
+	cs-gpios = <&gpio4 24 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi3>;
+	status = "okay";
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet>;
+	phy-mode = "rgmii-id";
+	status = "okay";
+};
+
+&gpmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	status = "okay";
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	pca9555: gpio@23 {
+		compatible = "nxp,pca9555";
+		reg = <0x23>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	eeprom1: eeprom@50 {
+		compatible = "atmel,24c02";
+		reg = <0x50>;
+		pagesize = <16>;
+	};
+
+	eeprom2: eeprom@51 {
+		compatible = "atmel,24c02";
+		reg = <0x51>;
+		pagesize = <16>;
+	};
+
+	eeprom3: eeprom@52 {
+		compatible = "atmel,24c02";
+		reg = <0x52>;
+		pagesize = <16>;
+	};
+
+	eeprom4: eeprom@53 {
+		compatible = "atmel,24c02";
+		reg = <0x53>;
+		pagesize = <16>;
+	};
+
+	dts1672: rtc@68 {
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
+	lis2de12@19 {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_accel>;
+		compatible = "st,lis2de12";
+		reg = <0x19>;
+		st,drdy-int-pin = <1>;
+		interrupt-parent = <&gpio7>;
+		interrupts = <13 0>;
+		interrupt-names = "INT1";
+	};
+};
+
+&pcie {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pcie>;
+	reset-gpio = <&gpio3 20 GPIO_ACTIVE_LOW>;
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
+/* off-board RS232 */
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+/* serial console */
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+/* Sterling-LWB Bluetooth */
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+/* GPS */
+&uart5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart5>;
+	status = "okay";
+};
+
+&usbotg {
+	vbus-supply = <&reg_5p0v>;
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
+/* Sterling-LWB SDIO WiFi */
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	vmmc-supply = <&reg_3p3v>;
+	non-removable;
+	bus-width = <4>;
+	status = "okay";
+};
+
+&usdhc3 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	cd-gpios = <&gpio7 0 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&reg_3p3v>;
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
+	pinctrl_accel: accelmuxgrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_18__GPIO7_IO13		0x1b0b1
+		>;
+	};
+
+	pinctrl_ecspi3: escpi3grp {
+		fsl,pins = <
+			MX6QDL_PAD_DISP0_DAT0__ECSPI3_SCLK	0x100b1
+			MX6QDL_PAD_DISP0_DAT1__ECSPI3_MOSI	0x100b1
+			MX6QDL_PAD_DISP0_DAT2__ECSPI3_MISO	0x100b1
+			MX6QDL_PAD_DISP0_DAT3__GPIO4_IO24	0x100b1
+		>;
+	};
+
+	pinctrl_enet: enetgrp {
+		fsl,pins = <
+			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b030
+			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b030
+			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b030
+			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b030
+			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b030
+			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b030
+			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b030
+			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b030
+			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b030
+			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b030
+			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b030
+			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b030
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
+			MX6QDL_PAD_KEY_COL0__GPIO4_IO06  0x1b0b0
+			MX6QDL_PAD_KEY_ROW0__GPIO4_IO07  0x1b0b0
+			MX6QDL_PAD_KEY_ROW4__GPIO4_IO15  0x1b0b0
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
+		>;
+	};
+
+	pinctrl_pcie: pciegrp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D20__GPIO3_IO20		0x1b0b0
+		>;
+	};
+
+	pinctrl_pps: ppsgrp {
+		fsl,pins = <
+			MX6QDL_PAD_DI0_DISP_CLK__GPIO4_IO16	0x1b0b1
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
+	pinctrl_reg_bt: regbtgrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b1
+		>;
+	};
+
+	pinctrl_reg_wl: regwlgrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_5__GPIO1_IO05		0x1b0b1
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_DAT10__UART1_TX_DATA	0x1b0b1
+			MX6QDL_PAD_CSI0_DAT11__UART1_RX_DATA	0x1b0b1
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
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_DAT12__UART4_TX_DATA	0x1b0b1
+			MX6QDL_PAD_CSI0_DAT13__UART4_RX_DATA	0x1b0b1
+			MX6QDL_PAD_CSI0_DAT16__UART4_RTS_B	0x1b0b1
+			MX6QDL_PAD_CSI0_DAT17__UART4_CTS_B	0x1b0b1
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
+			MX6QDL_PAD_GPIO_1__USB_OTG_ID		0x13059
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD2_CMD__SD2_CMD		0x17059
+			MX6QDL_PAD_SD2_CLK__SD2_CLK		0x10059
+			MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x17059
+			MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x17059
+			MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x17059
+			MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x17059
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x17059
+			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x10059
+			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x17059
+			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17059
+			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17059
+			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17059
+			MX6QDL_PAD_SD3_DAT5__GPIO7_IO00		0x17059 /* CD */
+			MX6QDL_PAD_NANDF_CS1__SD3_VSELECT	0x17059
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3grp100mhz {
+		fsl,pins = <
+			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x170b9
+			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x170b9
+			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x170b9
+			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x170b9
+			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x170b9
+			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x170b9
+			MX6QDL_PAD_SD3_DAT5__GPIO7_IO00		0x170b9 /* CD */
+			MX6QDL_PAD_NANDF_CS1__SD3_VSELECT	0x170b9
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3grp200mhz {
+		fsl,pins = <
+			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x170f9
+			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x100f9
+			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x170f9
+			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x170f9
+			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x170f9
+			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x170f9
+			MX6QDL_PAD_SD3_DAT5__GPIO7_IO00		0x170f9 /* CD */
+			MX6QDL_PAD_NANDF_CS1__SD3_VSELECT	0x170f9
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
