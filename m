Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2104F1AB93D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 09:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wMXObYGCVzJaxpW6n9iVfHD5OjJnNj3g5quDKY9eYp0=; b=EAjxiJDRZRpopm
	nOmM9P/C9K8taundIb8ohm+rtBnodCAyzcN+BNCZ2oyuQbjvKyTYssu79hJJNORYoP9p3WJi1SSBe
	8nYCFtcV4sdR2W+cU8Sbf+KPxNgQbUxLGcA4oqRhCdqqUp3rMaLw5DB06bT7rEBnJUGpfazNSrekf
	03SSKq4w3Ta7QY4Q/fCOmtwhYNVKYINBVvcaCoHzI33uPEZrolHCGX3z9U/5rMljpZydMmNNmsgk7
	2zbPPwjaiasX7ajMy6vUukZg5PtsFy3w2/mHuKKKdxAkJHhNzxsE0wGecyHpfpBZYBy9Lv97VI2cq
	22XwhYcLUcTP7WWK6rag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOyYg-0007qT-At; Thu, 16 Apr 2020 07:03:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOyXg-00073l-EJ
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 07:02:36 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jOyXY-0005qU-Tr; Thu, 16 Apr 2020 09:02:24 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jOyXX-0003Ok-VY; Thu, 16 Apr 2020 09:02:23 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v5 1/4] ARM: dts: add Protonic PRTI6Q board
Date: Thu, 16 Apr 2020 09:02:19 +0200
Message-Id: <20200416070222.12181-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200416070222.12181-1-o.rempel@pengutronix.de>
References: <20200416070222.12181-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_000232_792703_09678A0F 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, Oleksij Rempel <o.rempel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
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

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/imx6q-prti6q.dts            | 550 ++++++++++++++++++
 arch/arm/boot/dts/imx6qdl-prti6q.dtsi         | 185 ++++++
 4 files changed, 737 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6q-prti6q.dts
 create mode 100644 arch/arm/boot/dts/imx6qdl-prti6q.dtsi

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index a8e0b4a813edc..3b52b582efdf0 100644
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
index d6546d2676b9d..3f500a9e88a91 100644
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
index 0000000000000..6244b603b4a38
--- /dev/null
+++ b/arch/arm/boot/dts/imx6q-prti6q.dts
@@ -0,0 +1,550 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) 2014 Protonic Holland
+ */
+
+/dts-v1/;
+#include "imx6q.dtsi"
+#include "imx6qdl-prti6q.dtsi"
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/sound/fsl-imx-audmux.h>
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
+	backlight_lcd: backlight-lcd {
+		compatible = "pwm-backlight";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_backlight>;
+		pwms = <&pwm1 0 5000000>;
+		brightness-levels = <0 16 64 255>;
+		num-interpolated-steps = <16>;
+		default-brightness-level = <16>;
+		power-supply = <&reg_3v3>;
+		enable-gpios = <&gpio4 28 GPIO_ACTIVE_HIGH>;
+	};
+
+	can3_25m_osc: can3-25m-osc {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <25000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_leds>;
+
+		led-debug0 {
+			function = LED_FUNCTION_STATUS;
+			gpios = <&gpio1 8 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+
+		led-debug1 {
+			function = LED_FUNCTION_SD;
+			gpios = <&gpio1 9 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "disk-activity";
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
+	reg_wifi: regulator-wifi {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_wifi_npd>;
+		enable-active-high;
+		gpio = <&gpio1 26 GPIO_ACTIVE_HIGH>;
+		regulator-max-microvolt = <1800000>;
+		regulator-min-microvolt = <1800000>;
+		regulator-name = "regulator-WL12xx";
+		startup-delay-us = <70000>;
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
+			sound-dai = <&sgtl5000>;
+			bitclock-master;
+			frame-master;
+		};
+	};
+
+	sound-spdif {
+		compatible = "fsl,imx-audio-spdif";
+		model = "imx-spdif";
+		spdif-controller = <&spdif>;
+		spdif-in;
+		spdif-out;
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
+&can2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_can2>;
+	status = "okay";
+};
+
+&ecspi1 {
+	cs-gpios = <&gpio3 19 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "winbond,w25q64", "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <20000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "boot";
+				reg = <0x0 0x80000>;
+			};
+
+			partition@80000 {
+				label = "env";
+				reg = <0x80000 0x10000>;
+			};
+
+			partition@90000 {
+				label = "spare";
+				reg = <0x90000 0x370000>;
+			};
+		};
+	};
+};
+
+&ecspi2 {
+	cs-gpios = <&gpio2 26 GPIO_ACTIVE_HIGH>, <&gpio4 25 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi2 &pinctrl_ecspi2_cs>;
+	status = "okay";
+
+	can3@0 {
+		compatible = "microchip,mcp2515";
+		reg = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_can3>;
+		clocks = <&can3_25m_osc>;
+		interrupts-extended = <&gpio3 20 IRQ_TYPE_LEVEL_LOW>;
+		spi-max-frequency = <5000000>;
+	};
+
+	adc@1 {
+		compatible = "ti,adc128s052";
+		reg = <1>;
+		spi-max-frequency = <2000000>;
+		vref-supply = <&reg_3v3>;
+	};
+};
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
+&hdmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hdmi>;
+	ddc-i2c-bus = <&i2c2>;
+	status = "okay";
+};
+
+&i2c1 {
+	sgtl5000: codec@a {
+		compatible = "fsl,sgtl5000";
+		reg = <0xa>;
+		#sound-dai-cells = <0>;
+		clocks = <&clks 201>;
+		VDDA-supply = <&reg_3v3>;
+		VDDIO-supply = <&reg_3v3>;
+		VDDD-supply = <&reg_1v8>;
+	};
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
+&i2c3 {
+	adc@49 {
+		compatible = "ti,ads1015";
+		reg = <0x49>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		/* can2_l */
+		channel@4 {
+			reg = <4>;
+			ti,gain = <3>;
+			ti,datarate = <3>;
+		};
+
+		/* can2_h */
+		channel@5 {
+			reg = <5>;
+			ti,gain = <3>;
+			ti,datarate = <3>;
+		};
+
+		/* can1_l */
+		channel@6 {
+			reg = <6>;
+			ti,gain = <3>;
+			ti,datarate = <3>;
+		};
+
+		/* can1_h */
+		channel@7 {
+			reg = <7>;
+			ti,gain = <3>;
+			ti,datarate = <3>;
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
+&sata {
+	status = "okay";
+};
+
+&snvs_poweroff {
+	status = "okay";
+};
+
+&spdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_spdif>;
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
+&uart5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart5>;
+	status = "okay";
+};
+
+&usbotg {
+	pinctrl-0 = <&pinctrl_usbotg &pinctrl_usbotg_id>;
+};
+
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	non-removable;
+	vmmc-supply = <&reg_wifi>;
+	cap-power-off-card;
+	keep-power-in-suspend;
+	status = "okay";
+
+	wifi {
+		compatible = "ti,wl1271";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_wifi>;
+		irq-gpio = <&gpio1 30 GPIO_ACTIVE_HIGH>;
+		ref-clock-frequency = "38400000";
+		tcxo-clock-frequency = "19200000";
+	};
+};
+
+&iomuxc {
+	pinctrl_audmux: audmuxgrp {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_MCLK__CCM_CLKO1		0x030b0
+			MX6QDL_PAD_CSI0_DAT7__AUD3_RXD		0x130b0
+			MX6QDL_PAD_CSI0_DAT4__AUD3_TXC		0x130b0
+			MX6QDL_PAD_CSI0_DAT5__AUD3_TXD		0x110b0
+			MX6QDL_PAD_CSI0_DAT6__AUD3_TXFS		0x130b0
+		>;
+	};
+
+	pinctrl_backlight: backlightgrp {
+		fsl,pins = <
+			MX6QDL_PAD_DISP0_DAT7__GPIO4_IO28	0x1b0b0
+		>;
+	};
+
+	pinctrl_can2: can2grp {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_COL4__FLEXCAN2_TX 0x80000000
+			MX6QDL_PAD_KEY_ROW4__FLEXCAN2_RX 0x80000000
+		>;
+	};
+
+	pinctrl_can3: can3grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D20__GPIO3_IO20		0x1b0b1
+		>;
+	};
+
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D17__ECSPI1_MISO		0x100b1
+			MX6QDL_PAD_EIM_D18__ECSPI1_MOSI		0x100b1
+			MX6QDL_PAD_EIM_D16__ECSPI1_SCLK		0x100b1
+			/* CS */
+			MX6QDL_PAD_EIM_D19__GPIO3_IO19		0x000b1
+		>;
+	};
+
+	pinctrl_ecspi2: ecspi2grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_OE__ECSPI2_MISO		0x100b1
+			MX6QDL_PAD_EIM_CS0__ECSPI2_SCLK		0x100b1
+			MX6QDL_PAD_EIM_CS1__ECSPI2_MOSI		0x100b1
+			MX6QDL_PAD_EIM_RW__GPIO2_IO26		0x000b1
+		>;
+	};
+
+	pinctrl_ecspi2_cs: ecspi2csgrp {
+		fsl,pins = <
+			/* ADC128S022 CS */
+			MX6QDL_PAD_DISP0_DAT4__GPIO4_IO25	0x1b0b1
+		>;
+	};
+
+	pinctrl_ecspi3: ecspi3grp {
+		fsl,pins = <
+			MX6QDL_PAD_DISP0_DAT0__ECSPI3_SCLK	0x100b1
+			MX6QDL_PAD_DISP0_DAT1__ECSPI3_MOSI	0x100b1
+			MX6QDL_PAD_DISP0_DAT2__ECSPI3_MISO	0x100b1
+			MX6QDL_PAD_DISP0_DAT3__GPIO4_IO24	0x000b1
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
+			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x10030
+			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x10030
+			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x10030
+			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x10030
+			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x10030
+			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x10030
+			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x10030
+			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x10030
+			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x10030
+
+			/* Phy reset */
+			MX6QDL_PAD_ENET_CRS_DV__GPIO1_IO25	0x1b0b0
+			MX6QDL_PAD_ENET_TX_EN__GPIO1_IO28	0x1b0b1
+		>;
+	};
+
+	pinctrl_hdmi: hdmigrp {
+		fsl,pins = <
+			/* NOTE: DDC is done via I2C2, so DON'T
+			 * configure DDC pins for HDMI!
+			 */
+			MX6QDL_PAD_EIM_A25__HDMI_TX_CEC_LINE	0x1f8b0
+		>;
+	};
+
+	/* DDC */
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_COL3__I2C2_SCL	0x4001b8b1
+			MX6QDL_PAD_KEY_ROW3__I2C2_SDA	0x4001b8b1
+		>;
+	};
+
+	pinctrl_leds: ledsgrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_8__GPIO1_IO08		0x1b0b0
+			MX6QDL_PAD_GPIO_9__GPIO1_IO09		0x1b0b0
+		>;
+	};
+
+	pinctrl_pwm1: pwm1grp {
+		fsl,pins = <
+			MX6QDL_PAD_DISP0_DAT8__PWM1_OUT		0x1b0b0
+		>;
+	};
+
+	pinctrl_spdif: spdifgrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_16__SPDIF_IN		0x1b0b0
+			MX6QDL_PAD_GPIO_19__SPDIF_OUT		0x1b0b0
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D26__UART2_RX_DATA	0x1b0b1
+			MX6QDL_PAD_EIM_D27__UART2_TX_DATA	0x1b0b1
+			MX6QDL_PAD_EIM_D28__UART2_DTE_CTS_B	0x1b0b1
+			MX6QDL_PAD_EIM_D29__UART2_DTE_RTS_B	0x1b0b1
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
+	pinctrl_usbotg_id: usbotgidgrp {
+		fsl,pins = <
+			MX6QDL_PAD_ENET_RX_ER__USB_OTG_ID	0x1f058
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD2_CMD__SD2_CMD		0x170b9
+			MX6QDL_PAD_SD2_CLK__SD2_CLK		0x100b9
+			MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x170b9
+			MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x170b9
+			MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x170b9
+			MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x170b9
+		>;
+	};
+
+	pinctrl_wifi: wifigrp {
+		fsl,pins = <
+			/* WL12xx IRQ */
+			MX6QDL_PAD_ENET_TXD0__GPIO1_IO30	0x10880
+		>;
+	};
+
+	pinctrl_wifi_npd: wifinpd {
+		fsl,pins = <
+			MX6QDL_PAD_ENET_RXD1__GPIO1_IO26	0x1b8b0
+		>;
+	};
+};
diff --git a/arch/arm/boot/dts/imx6qdl-prti6q.dtsi b/arch/arm/boot/dts/imx6qdl-prti6q.dtsi
new file mode 100644
index 0000000000000..f32ed2040b6ac
--- /dev/null
+++ b/arch/arm/boot/dts/imx6qdl-prti6q.dtsi
@@ -0,0 +1,185 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) 2014 Protonic Holland
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	chosen {
+		stdout-path = &uart4;
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
+	reg_3v3: regulator-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
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
+	reg_usb_otg_vbus: regulator-otg-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "otg-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio3 22 0>;
+		enable-active-high;
+	};
+};
+
+&can1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_can1>;
+	status = "okay";
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+};
+
+&i2c3 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+
+	temperature-sensor@70 {
+		compatible = "ti,tmp103";
+		reg = <0x70>;
+	};
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
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
+&iomuxc {
+	pinctrl_can1: can1grp {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_ROW2__FLEXCAN1_RX	0x80000000
+			MX6QDL_PAD_KEY_COL2__FLEXCAN1_TX	0x80000000
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_DAT8__I2C1_SDA		0x4001f8b1
+			MX6QDL_PAD_CSI0_DAT9__I2C1_SCL		0x4001f8b1
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_5__I2C3_SCL	      0x4001b8b1
+			MX6QDL_PAD_GPIO_6__I2C3_SDA	      0x4001b8b1
+		>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_COL0__UART4_TX_DATA	0x1b0b1
+			MX6QDL_PAD_KEY_ROW0__UART4_RX_DATA	0x1b0b1
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD1_CMD__SD1_CMD		0x170f9
+			MX6QDL_PAD_SD1_CLK__SD1_CLK		0x100f9
+			MX6QDL_PAD_SD1_DAT0__SD1_DATA0		0x170f9
+			MX6QDL_PAD_SD1_DAT1__SD1_DATA1		0x170f9
+			MX6QDL_PAD_SD1_DAT2__SD1_DATA2		0x170f9
+			MX6QDL_PAD_SD1_DAT3__SD1_DATA3		0x170f9
+			MX6QDL_PAD_GPIO_1__GPIO1_IO01		0x1b0b0
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x17099
+			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x10099
+			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x17099
+			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17099
+			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17099
+			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17099
+			MX6QDL_PAD_SD3_DAT4__SD3_DATA4		0x17099
+			MX6QDL_PAD_SD3_DAT5__SD3_DATA5		0x17099
+			MX6QDL_PAD_SD3_DAT6__SD3_DATA6		0x17099
+			MX6QDL_PAD_SD3_DAT7__SD3_DATA7		0x17099
+			MX6QDL_PAD_SD3_RST__SD3_RESET           0x1b0b1
+		>;
+	};
+
+	pinctrl_usbotg: usbotggrp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D21__USB_OTG_OC	0x1b0b0
+			MX6QDL_PAD_EIM_D22__GPIO3_IO22	0x1b0b0
+		>;
+	};
+};
-- 
2.26.0.rc2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
