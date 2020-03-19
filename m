Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7B918AC83
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 06:57:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQZ3ljemeI6vQb21CXIjpZ3Asrn9HjyPTudukVh5/sw=; b=rDx3EYxuKA+NBx
	+ln0MW3A4RAKceNK5FVXYWaGZR1VGqmQ/33JFQGxsfv/ADXHcwg0UNWhI9Fyf7tBYBGvjyr7LLSzP
	7qzuUorH9cYE5e+2NhF822rACRatISmpkKf5Z0Ui5c0wij1rL2ONha8d0wCCQjR6SF5QYiOO7WkmS
	fq30WEo6xDy67QTB3kWr3erzqu9JEAd9jSXc3UIaBRzg654bu2YFPVTjXpVLFBbJniL8iZBnrqoNY
	s8IaFBWVJ7/Y15jACv3ZVaXHey39SAmLQ5HocXwFGnXVOQmT6qSzvfGWlSUfYW5y/m/z/Mun8EgQ7
	Vz2bJ+tMkQXZVszkfkYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEoBW-0008L9-Bt; Thu, 19 Mar 2020 05:57:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEoAu-0007yr-5v
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 05:57:02 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jEoAh-0000dy-ED; Thu, 19 Mar 2020 06:56:47 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jEoAZ-0001zU-RZ; Thu, 19 Mar 2020 06:56:39 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 2/5] ARM: dts: add Protonic PRTI6Q board
Date: Thu, 19 Mar 2020 06:56:33 +0100
Message-Id: <20200319055636.7573-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200319055636.7573-1-o.rempel@pengutronix.de>
References: <20200319055636.7573-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_225700_554069_BFCB5050 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Oleksij Rempel <o.rempel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Jander <david@protonic.nl>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Protonic PRTI6Q is a development board and a base class for different
specific customer application boards based on the i.MX6 family of SoCs,
developed by Protonic Holland.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/imx6q-prti6q.dts            | 286 ++++++++++
 arch/arm/boot/dts/imx6qdl-prti6q.dtsi         | 489 ++++++++++++++++++
 4 files changed, 777 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6q-prti6q.dts
 create mode 100644 arch/arm/boot/dts/imx6qdl-prti6q.dtsi

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index a8e0b4a813ed..3b52b582efdf 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -119,6 +119,7 @@ properties:
               - fsl,imx6q-sabreauto
               - fsl,imx6q-sabrelite
               - fsl,imx6q-sabresd
+              - prt,prti6q                      # Protonic PRTI6Q board
               - technologic,imx6q-ts4900
               - technologic,imx6q-ts7970
               - toradex,apalis_imx6q            # Apalis iMX6 Module
diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index d6546d2676b9..3f500a9e88a9 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -530,6 +530,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
 	imx6q-phytec-mira-rdk-nand.dtb \
 	imx6q-phytec-pbab01.dtb \
 	imx6q-pistachio.dtb \
+	imx6q-prti6q.dtb \
 	imx6q-rex-pro.dtb \
 	imx6q-sabreauto.dtb \
 	imx6q-sabrelite.dtb \
diff --git a/arch/arm/boot/dts/imx6q-prti6q.dts b/arch/arm/boot/dts/imx6q-prti6q.dts
new file mode 100644
index 000000000000..8880d56c59ac
--- /dev/null
+++ b/arch/arm/boot/dts/imx6q-prti6q.dts
@@ -0,0 +1,286 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) 2014 Protonic Holland
+ */
+
+/dts-v1/;
+#include "imx6q.dtsi"
+#include "imx6qdl-prti6q.dtsi"
+
+/ {
+	model = "Protonic PRTI6Q board";
+	compatible = "prt,prti6q", "fsl,imx6q";
+
+	memory@10000000 {
+		device_type = "memory";
+		reg = <0x10000000 0xf0000000>;
+	};
+
+	sound-spdif {
+		compatible = "fsl,imx-audio-spdif";
+		model = "imx-spdif";
+		spdif-controller = <&spdif>;
+		spdif-in;
+		spdif-out;
+	};
+
+	clocks {
+		spi3_crystal: spi3clk {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <25000000>;
+		};
+	};
+
+	panel {
+		compatible = "kyo,tcg121xglp";
+		backlight = <&backlight_lcd>;
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&lvds0_out>;
+			};
+		};
+	};
+
+	reg_wl12xx: regulator-wl12xx {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_wl1271_npd>;
+		compatible = "regulator-fixed";
+		regulator-name = "regulator-WL12xx";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		gpio = <&gpio1 26 0>;
+		startup-delay-us = <70000>;
+		enable-active-high;
+	};
+};
+
+&ecspi2 {
+	cs-gpios = <&gpio2 26 GPIO_ACTIVE_HIGH>, <&gpio4 25 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi2>;
+	status = "okay";
+
+	can3: mcp2515@0 {
+		compatible = "microchip,mcp2515";
+		spi-max-frequency = <5000000>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <20 IRQ_TYPE_LEVEL_LOW>;
+		reg = <0>;
+		clocks = <&spi3_crystal>;
+	};
+
+	adc128: adc128@1 {
+		compatible = "ti,adc128s052";
+		reg = <1>;
+		vref-supply = <&reg_3v3>;
+		spi-max-frequency = <2000000>;
+	};
+};
+
+&iomuxc {
+	prti6q {
+		pinctrl_nand: nandgrp {
+			fsl,pins = <
+				MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
+				MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
+				MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
+				MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
+				MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
+				MX6QDL_PAD_NANDF_CS1__NAND_CE1_B	0xb0b1
+				MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
+				MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
+				MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
+				MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
+				MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
+				MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
+				MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
+				MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
+				MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
+				MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
+			>;
+		};
+
+		pinctrl_usbotg: usbotggrp {
+			fsl,pins = <
+				MX6QDL_PAD_ENET_RX_ER__USB_OTG_ID	0x1f058
+				MX6QDL_PAD_EIM_D21__USB_OTG_OC		0x1b0b0
+				/* power enable, high active */
+				MX6QDL_PAD_EIM_D22__GPIO3_IO22		0x000b0
+			>;
+		};
+
+		pinctrl_hdmi: hdmigrp {
+			fsl,pins = <
+				/* NOTE: DDC is done via I2C2, so DON'T
+				 * configure DDC pins for HDMI!
+				 */
+				MX6QDL_PAD_EIM_A25__HDMI_TX_CEC_LINE	0x1f8b0
+			>;
+		};
+
+		pinctrl_spdif: spdifgrp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_16__SPDIF_IN		0x1b0b0
+				MX6QDL_PAD_GPIO_19__SPDIF_OUT		0x1b0b0
+			>;
+		};
+
+		pinctrl_leds: ledsgrp {
+			fsl,pins = <
+				MX6QDL_PAD_DI0_DISP_CLK__GPIO4_IO16	0x1b0b0
+				MX6QDL_PAD_DI0_PIN15__GPIO4_IO17	0x1b0b0
+			>;
+		};
+
+		/* DDC */
+		pinctrl_i2c2: i2c2grp {
+			fsl,pins = <
+				MX6QDL_PAD_KEY_COL3__I2C2_SCL	0x4001b8b1
+				MX6QDL_PAD_KEY_ROW3__I2C2_SDA	0x4001b8b1
+			>;
+		};
+
+		pinctrl_ecspi2: ecspi2grp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_OE__ECSPI2_MISO		0x100b1
+				MX6QDL_PAD_EIM_CS0__ECSPI2_SCLK		0x100b1
+				MX6QDL_PAD_EIM_CS1__ECSPI2_MOSI		0x100b1
+				/* CAN3 CS */
+				MX6QDL_PAD_EIM_RW__GPIO2_IO26		0x000b1
+				/* ADC128S022 CS */
+				MX6QDL_PAD_DISP0_DAT4__GPIO4_IO25	0x1b0b1
+				/* CAN3_nINT */
+				MX6QDL_PAD_EIM_D20__GPIO3_IO20		0x1b0b1
+			>;
+		};
+
+		pinctrl_enet: enetgrp {
+			fsl,pins = <
+				MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b030
+				MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b030
+				MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b030
+				MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b030
+				MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b030
+				MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b030
+				MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x10030
+				MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x10030
+				MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x10030
+				MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x10030
+				MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x10030
+				MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x10030
+				MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x10030
+				MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x10030
+				MX6QDL_PAD_ENET_MDC__ENET_MDC		0x10030
+
+				/* Phy reset */
+				MX6QDL_PAD_ENET_CRS_DV__GPIO1_IO25	0x1b0b0
+				MX6QDL_PAD_ENET_TX_EN__GPIO1_IO28	0x1b0b1
+			>;
+		};
+
+		pinctrl_usdhc2: usdhc2grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD2_CMD__SD2_CMD		0x170b9
+				MX6QDL_PAD_SD2_CLK__SD2_CLK		0x100b9
+				MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x170b9
+				MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x170b9
+				MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x170b9
+				MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x170b9
+				/* WL12xx IRQ */
+				MX6QDL_PAD_ENET_TXD0__GPIO1_IO30	0x10880
+			>;
+		};
+
+		pinctrl_wl1271_npd: wl1271_npd {
+			fsl,pins = <
+				MX6QDL_PAD_ENET_RXD1__GPIO1_IO26	0x1b8b0
+			>;
+		};
+	};
+};
+
+&hdmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hdmi>;
+	ddc-i2c-bus = <&i2c2>;
+	status = "okay";
+};
+
+&spdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_spdif>;
+	status = "okay";
+};
+
+/* DDC */
+&i2c2 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+};
+
+&sata {
+	status = "okay";
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&rgmii_phy>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		/* Microchip KSZ9031RNX PHY */
+		rgmii_phy: ethernet-phy@0 {
+			reg = <0>;
+			interrupts-extended = <&gpio1 28 IRQ_TYPE_LEVEL_LOW>;
+			reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <300>;
+		};
+	};
+};
+
+&ldb {
+	status = "okay";
+
+	lvds-channel@0 {
+		status = "okay";
+
+		port@4 {
+			reg = <4>;
+
+			lvds0_out: endpoint {
+				remote-endpoint = <&panel_in>;
+			};
+		};
+	};
+};
+
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	vmmc-supply = <&reg_wl12xx>;
+	non-removable;
+	cap-power-off-card;
+	keep-power-in-suspend;
+	status = "okay";
+
+	wl1271 {
+		compatible = "ti,wl1271";
+		irq-gpio = <&gpio1 30 GPIO_ACTIVE_HIGH>;
+		ref-clock-frequency = "38400000";
+		tcxo-clock-frequency = "19200000";
+	};
+};
+
+&snvs_poweroff {
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/imx6qdl-prti6q.dtsi b/arch/arm/boot/dts/imx6qdl-prti6q.dtsi
new file mode 100644
index 000000000000..6515b96fa0a5
--- /dev/null
+++ b/arch/arm/boot/dts/imx6qdl-prti6q.dtsi
@@ -0,0 +1,489 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) 2014 Protonic Holland
+ */
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/sound/fsl-imx-audmux.h>
+
+/ {
+	chosen {
+		stdout-path = &uart4;
+	};
+
+	reg_3v3: regulator-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	reg_1v8: regulator-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+	};
+
+	reg_1v2: regulator-1v2 {
+		compatible = "regulator-fixed";
+		regulator-name = "1v2";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		regulator-always-on;
+	};
+
+	reg_usb_otg_vbus: regulator-otg-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "otg-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio3 22 0>;
+		enable-active-high;
+	};
+
+	reg_usb_h1_vbus: regulator-h1-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "h1-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "prti6q-sgtl5000";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,widgets =
+			"Microphone", "Microphone Jack",
+			"Line", "Line In Jack",
+			"Headphone", "Headphone Jack",
+			"Speaker", "External Speaker";
+		simple-audio-card,routing =
+			"MIC_IN", "Microphone Jack",
+			"LINE_IN", "Line In Jack",
+			"Headphone Jack", "HP_OUT",
+			"External Speaker", "LINE_OUT";
+
+		simple-audio-card,cpu {
+			sound-dai = <&ssi1>;
+			system-clock-frequency = <0>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&codec>;
+			bitclock-master;
+			frame-master;
+		};
+	};
+
+	backlight_lcd: backlight-lcd {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_backlight>;
+		compatible = "pwm-backlight";
+		pwms = <&pwm1 0 5000000>;
+		brightness-levels = <0 1 2 4 6 8 12 16 24 32 48 64 96 128 192
+                                     255>;
+		default-brightness-level = <15>;
+		power-supply = <&reg_3v3>;
+		status = "okay";
+		enable-gpios = <&gpio4 28 GPIO_ACTIVE_HIGH>;
+	};
+
+	leds: led-controller {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_leds>;
+
+		led-hb0 {
+			function = LED_FUNCTION_STATUS;
+			gpios = <&gpio4 16 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+
+		led-mmc0 {
+			function = LED_FUNCTION_SD;
+			gpios = <&gpio4 17 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "disk-activity";
+		};
+	};
+};
+
+&audmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux>;
+	status = "okay";
+
+	mux_ssi1 {
+		fsl,audmux-port = <0>;
+		fsl,port-config = <
+			IMX_AUDMUX_V2_PTCR_SYN 		0
+			IMX_AUDMUX_V2_PTCR_TFSEL(2) 	0
+			IMX_AUDMUX_V2_PTCR_TCSEL(2) 	0
+			IMX_AUDMUX_V2_PTCR_TFSDIR 	0
+			IMX_AUDMUX_V2_PTCR_TCLKDIR IMX_AUDMUX_V2_PDCR_RXDSEL(2)
+		>;
+	};
+
+	mux_pins3 {
+		fsl,audmux-port = <2>;
+		fsl,port-config = <
+			IMX_AUDMUX_V2_PTCR_SYN IMX_AUDMUX_V2_PDCR_RXDSEL(0)
+			0		       IMX_AUDMUX_V2_PDCR_TXRXEN
+		>;
+	};
+};
+
+&ecspi1 {
+	cs-gpios = <&gpio3 19 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	status = "okay";
+
+	flash: s25sl032p@0 {
+		compatible = "spansion,m25p80";
+		spi-max-frequency = <20000000>;
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "boot";
+			reg = <0x0 0x80000>;
+		};
+
+		partition@80000 {
+			label = "env";
+			reg = <0x80000 0x10000>;
+		};
+
+		partition@90000 {
+			label = "spare";
+			reg = <0x90000 0x370000>;
+		};
+	};
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	codec: sgtl5000@a {
+		#sound-dai-cells = <0>;
+		compatible = "fsl,sgtl5000";
+		reg = <0xa>;
+		clocks = <&clks 201>;
+		VDDA-supply = <&reg_3v3>;
+		VDDIO-supply = <&reg_3v3>;
+		VDDD-supply = <&reg_1v8>;
+	};
+};
+
+&i2c3 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+
+	can_adc: ads1015@49 {
+		compatible = "ti,ads1015";
+		reg = <0x49>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		channel@4 {
+			reg = <4>;
+			ti,gain = <3>;
+			ti,datarate = <3>;
+		};
+
+		channel@5 {
+			reg = <5>;
+			ti,gain = <3>;
+			ti,datarate = <3>;
+		};
+
+		channel@6 {
+			reg = <6>;
+			ti,gain = <3>;
+			ti,datarate = <3>;
+		};
+
+		channel@7 {
+			reg = <7>;
+			ti,gain = <3>;
+			ti,datarate = <3>;
+		};
+	};
+
+	tmp103: tmp103@70 {
+		compatible = "ti,tmp103";
+		reg = <0x70>;
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	prti6q {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				/* SGTL5000 sys_mclk */
+				MX6QDL_PAD_CSI0_MCLK__CCM_CLKO1		0x030b0
+				MX6QDL_PAD_EIM_A24__GPIO5_IO04		0x100b0
+				MX6QDL_PAD_EIM_WAIT__GPIO5_IO00		0x100b0
+				MX6QDL_PAD_EIM_LBA__GPIO2_IO27		0x1b0b0
+				MX6QDL_PAD_EIM_EB0__GPIO2_IO28		0x1b0b0
+				MX6QDL_PAD_EIM_EB1__GPIO2_IO29		0x1b0b0
+			>;
+		};
+
+		pinctrl_audmux: audmuxgrp {
+			fsl,pins = <
+				MX6QDL_PAD_CSI0_DAT7__AUD3_RXD		0x130b0
+				MX6QDL_PAD_CSI0_DAT4__AUD3_TXC		0x130b0
+				MX6QDL_PAD_CSI0_DAT5__AUD3_TXD		0x110b0
+				MX6QDL_PAD_CSI0_DAT6__AUD3_TXFS		0x130b0
+			>;
+		};
+
+		pinctrl_ecspi1: ecspi1grp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_D17__ECSPI1_MISO		0x100b1
+				MX6QDL_PAD_EIM_D18__ECSPI1_MOSI		0x100b1
+				MX6QDL_PAD_EIM_D16__ECSPI1_SCLK		0x100b1
+				/* CS */
+				MX6QDL_PAD_EIM_D19__GPIO3_IO19		0x000b1
+			>;
+		};
+
+		pinctrl_ecspi2: ecspi2grp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_OE__ECSPI2_MISO		0x100b1
+				MX6QDL_PAD_EIM_CS0__ECSPI2_SCLK		0x100b1
+				MX6QDL_PAD_EIM_CS1__ECSPI2_MOSI		0x100b1
+				/* CS */
+				MX6QDL_PAD_EIM_RW__GPIO2_IO26		0x000b1
+				/* CAN3_nINT */
+				MX6QDL_PAD_EIM_D20__GPIO3_IO20		0x1b0b1
+			>;
+		};
+
+		pinctrl_i2c1: i2c1grp {
+			fsl,pins = <
+				MX6QDL_PAD_CSI0_DAT8__I2C1_SDA	0x4001f8b1
+				MX6QDL_PAD_CSI0_DAT9__I2C1_SCL	0x4001f8b1
+			>;
+		};
+
+		pinctrl_i2c3: i2c3grp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_5__I2C3_SCL	0x4001b8b1
+				MX6QDL_PAD_GPIO_6__I2C3_SDA	0x4001b8b1
+			>;
+		};
+
+		pinctrl_uart2: uart2grp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_D26__UART2_RX_DATA	0x1b0b1
+				MX6QDL_PAD_EIM_D27__UART2_TX_DATA	0x1b0b1
+				MX6QDL_PAD_EIM_D28__UART2_DTE_CTS_B	0x1b0b1
+				MX6QDL_PAD_EIM_D29__UART2_DTE_RTS_B	0x1b0b1
+			>;
+		};
+
+		pinctrl_uart4: uart4grp {
+			fsl,pins = <
+				MX6QDL_PAD_KEY_COL0__UART4_TX_DATA	0x1b0b1
+				MX6QDL_PAD_KEY_ROW0__UART4_RX_DATA	0x1b0b1
+			>;
+		};
+
+		pinctrl_uart5: uart5grp {
+			fsl,pins = <
+				MX6QDL_PAD_KEY_COL1__UART5_TX_DATA	0x1b0b1
+				MX6QDL_PAD_KEY_ROW1__UART5_RX_DATA	0x1b0b1
+			>;
+		};
+
+		pinctrl_usdhc1: usdhc1grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD1_CMD__SD1_CMD		0x170f9
+				MX6QDL_PAD_SD1_CLK__SD1_CLK		0x100f9
+				MX6QDL_PAD_SD1_DAT0__SD1_DATA0		0x170f9
+				MX6QDL_PAD_SD1_DAT1__SD1_DATA1		0x170f9
+				MX6QDL_PAD_SD1_DAT2__SD1_DATA2		0x170f9
+				MX6QDL_PAD_SD1_DAT3__SD1_DATA3		0x170f9
+				MX6QDL_PAD_GPIO_1__SD1_CD_B		0x1b0b0
+			>;
+		};
+
+		pinctrl_usdhc2: usdhc2grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD2_CMD__SD2_CMD		0x170b9
+				MX6QDL_PAD_SD2_CLK__SD2_CLK		0x100b9
+				MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x170b9
+				MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x170b9
+				MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x170b9
+				MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x170b9
+			>;
+		};
+
+		pinctrl_usdhc3: usdhc3grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD3_CMD__SD3_CMD		0x17099
+				MX6QDL_PAD_SD3_CLK__SD3_CLK		0x10099
+				MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x17099
+				MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17099
+				MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17099
+				MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17099
+				MX6QDL_PAD_SD3_DAT4__SD3_DATA4		0x17099
+				MX6QDL_PAD_SD3_DAT5__SD3_DATA5		0x17099
+				MX6QDL_PAD_SD3_DAT6__SD3_DATA6		0x17099
+				MX6QDL_PAD_SD3_DAT7__SD3_DATA7		0x17099
+			>;
+		};
+
+		pinctrl_can1: can1grp {
+			fsl,pins = <
+				MX6QDL_PAD_KEY_ROW2__FLEXCAN1_RX 0x80000000
+				MX6QDL_PAD_KEY_COL2__FLEXCAN1_TX 0x80000000
+			>;
+		};
+
+		pinctrl_can2: can2grp {
+			fsl,pins = <
+				MX6QDL_PAD_KEY_COL4__FLEXCAN2_TX 0x80000000
+				MX6QDL_PAD_KEY_ROW4__FLEXCAN2_RX 0x80000000
+			>;
+		};
+
+		pinctrl_pwm1: pwm1grp {
+			fsl,pins = <
+				MX6QDL_PAD_DISP0_DAT8__PWM1_OUT		0x1b0b0
+			>;
+		};
+
+		pinctrl_backlight: backlightgrp {
+			fsl,pins = <
+				MX6QDL_PAD_DISP0_DAT7__GPIO4_IO28	0x1b0b0
+			>;
+		};
+
+		pinctrl_ipu1_csi0: ipu1csi0grp {
+			fsl,pins = <
+				MX6QDL_PAD_CSI0_DAT12__IPU1_CSI0_DATA12	0x1b0b0
+				MX6QDL_PAD_CSI0_DAT13__IPU1_CSI0_DATA13	0x1b0b0
+				MX6QDL_PAD_CSI0_DAT14__IPU1_CSI0_DATA14	0x1b0b0
+				MX6QDL_PAD_CSI0_DAT15__IPU1_CSI0_DATA15	0x1b0b0
+				MX6QDL_PAD_CSI0_DAT16__IPU1_CSI0_DATA16	0x1b0b0
+				MX6QDL_PAD_CSI0_DAT17__IPU1_CSI0_DATA17	0x1b0b0
+				MX6QDL_PAD_CSI0_DAT18__IPU1_CSI0_DATA18	0x1b0b0
+				MX6QDL_PAD_CSI0_DAT19__IPU1_CSI0_DATA19	0x1b0b0
+				MX6QDL_PAD_CSI0_PIXCLK__IPU1_CSI0_PIXCLK 0x1b0b0
+			>;
+		};
+	};
+};
+
+&pcie {
+	status = "okay";
+};
+
+&pwm1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm1>;
+	status = "okay";
+};
+
+&ssi1 {
+	#sound-dai-cells = <0>;
+	fsl,mode = "i2s-slave";
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	status = "okay";
+};
+
+&uart5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart5>;
+	status = "okay";
+};
+
+&usbh1 {
+	vbus-supply = <&reg_usb_h1_vbus>;
+	phy_type = "utmi";
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usbotg {
+	vbus-supply = <&reg_usb_otg_vbus>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg>;
+	phy_type = "utmi";
+	dr_mode = "host";
+	disable-over-current;
+	status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	cd-gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	non-removable;
+	status = "okay";
+};
+
+&usdhc3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	bus-width = <8>;
+	non-removable;
+	status = "okay";
+
+	partitions {
+		compatible = "fixed-partitions";
+		#size-cells = <1>;
+		#address-cells = <1>;
+
+		bootstate_backend: bootstate_backend@f0000 {
+			reg = <0xf0000 0x10000>;
+			label = "bootstate";
+		};
+	};
+};
+
+&can1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_can1>;
+	status = "okay";
+};
+
+&can2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_can2>;
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
