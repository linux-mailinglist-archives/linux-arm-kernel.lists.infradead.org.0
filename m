Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0F610B58A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 19:22:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ha6MUKMvOjZ/+NuBS5Y6a8LTTWpueNhCODCTswLUgTE=; b=YmmuYQ6+bqHtVZ
	MrEY48C7elhQK9QL4b6j4/eRsiHSpNrmX7U2OM/r3nUawL8RKeJTmGSHmnZ8tm4fuVfe8fZoM8Na3
	A5gOuw3b2KfZdxFK1bnMuxMbgxnRgNBMQa19KNYtsAewMgJsyQoJbtRZPJy6AX26cl5YH3hJXO1FK
	YSEx80QDclEH/BagQyxkfZxMbHz7XBReAo/UbbQ4QMiLAShrjG1hw532CIC5bnlVH6MlJkvTpKKOz
	D/Vccou0QruWcejOuYJ4pBzwU0A8ScP/2XaLTg0roCNgsWlJQgWbNhKwl45k9fuJ+3q7N4sKOXpk0
	1DGFPFWXm63bqHkZOa7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia1wy-00019j-Kd; Wed, 27 Nov 2019 18:22:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia1wS-0000uY-Fl
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 18:21:34 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1ia1wP-0001vy-Av; Wed, 27 Nov 2019 19:21:29 +0100
From: Lucas Stach <l.stach@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 2/2] arm64: dts: zii-ultra: add sound support
Date: Wed, 27 Nov 2019 19:21:27 +0100
Message-Id: <20191127182127.1204-2-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191127182127.1204-1-l.stach@pengutronix.de>
References: <20191127182127.1204-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_102132_680123_8A3E16BC 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, patchwork-lst@pengutronix.de,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds all the necessary device nodes to get audio support on both the
RMB3 and Zest boards.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../dts/freescale/imx8mq-zii-ultra-rmb3.dts   | 87 ++++++++++++++++
 .../dts/freescale/imx8mq-zii-ultra-zest.dts   | 30 ++++++
 .../boot/dts/freescale/imx8mq-zii-ultra.dtsi  | 98 +++++++++++++++++++
 3 files changed, 215 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dts b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dts
index 6b3581366d67..d5e06885c683 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dts
@@ -10,6 +10,56 @@
 / {
 	model = "ZII Ultra RMB3 Board";
 	compatible = "zii,imx8mq-ultra-rmb3", "zii,imx8mq-ultra", "fsl,imx8mq";
+
+	sound1 {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "RMB3 audio front";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,bitclock-master = <&sound1_codec>;
+		simple-audio-card,frame-master = <&sound1_codec>;
+		simple-audio-card,widgets =
+			"Headphone", "Headphone Jack Front";
+		simple-audio-card,routing =
+			"Headphone Jack Front", "HPA1 HPLEFT",
+			"Headphone Jack Front", "HPA1 HPRIGHT",
+			"HPA1 LEFTIN", "HPL",
+			"HPA1 RIGHTIN", "HPR";
+		simple-audio-card,aux-devs = <&hpa1>;
+
+		sound1_cpu: simple-audio-card,cpu {
+			sound-dai = <&sai2>;
+		};
+
+		sound1_codec: simple-audio-card,codec {
+			sound-dai = <&codec1>;
+			clocks = <&cs2000>;
+		};
+	};
+
+	sound2 {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "RMB3 audio back";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,bitclock-master = <&sound2_codec>;
+		simple-audio-card,frame-master = <&sound2_codec>;
+		simple-audio-card,widgets =
+			"Headphone", "Headphone Jack Back";
+		simple-audio-card,routing =
+			"Headphone Jack Back", "HPA2 HPLEFT",
+			"Headphone Jack Back", "HPA2 HPRIGHT",
+			"HPA2 LEFTIN", "HPL",
+			"HPA2 RIGHTIN", "HPR";
+		simple-audio-card,aux-devs = <&hpa2>;
+
+		sound2_cpu: simple-audio-card,cpu {
+			sound-dai = <&sai3>;
+		};
+
+		sound2_codec: simple-audio-card,codec {
+			sound-dai = <&codec2>;
+			clocks = <&cs2000>;
+		};
+	};
 };
 
 &ecspi1 {
@@ -27,6 +77,23 @@
 	};
 };
 
+&i2c1 {
+	codec2: codec@18 {
+		compatible = "ti,tlv320dac3100";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_codec2>;
+		reg = <0x18>;
+		#sound-dai-cells = <0>;
+		HPVDD-supply = <&reg_3p3v>;
+		SPRVDD-supply = <&reg_3p3v>;
+		SPLVDD-supply = <&reg_3p3v>;
+		AVDD-supply = <&reg_3p3v>;
+		IOVDD-supply = <&reg_3p3v>;
+		DVDD-supply = <&vgen4_reg>;
+		gpio-reset = <&gpio3 4 GPIO_ACTIVE_HIGH>;
+	};
+};
+
 &i2c2 {
 	temp-sense@48 {
 		compatible = "national,lm75";
@@ -79,11 +146,23 @@
 	};
 };
 
+&sai3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai3>;
+	status = "okay";
+};
+
 &usbhub {
 	swap-dx-lanes = <0>;
 };
 
 &iomuxc {
+	pinctrl_codec2: dac2grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_NAND_CE3_B_GPIO3_IO4		0x41
+		>;
+	};
+
 	pinctrl_ecspi1: ecspi1grp {
 		fsl,pins = <
 			MX8MQ_IOMUXC_ECSPI1_SS0_GPIO5_IO9	0x19
@@ -92,4 +171,12 @@
 			MX8MQ_IOMUXC_ECSPI1_MOSI_ECSPI1_MOSI	0x82
 		>;
 	};
+
+	pinctrl_sai3: sai3grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SAI3_TXFS_SAI3_TX_SYNC		0xd6
+			MX8MQ_IOMUXC_SAI3_TXC_SAI3_TX_BCLK		0xd6
+			MX8MQ_IOMUXC_SAI3_TXD_SAI3_TX_DATA0		0xd6
+		>;
+	};
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dts b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dts
index 173b9e9b2bbd..cf8cdc5935c6 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dts
@@ -10,6 +10,36 @@
 / {
 	model = "ZII Ultra Zest Board";
 	compatible = "zii,imx8mq-ultra-zest", "zii,imx8mq-ultra", "fsl,imx8mq";
+
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "Zest audio";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,bitclock-master = <&sound_codec>;
+		simple-audio-card,frame-master = <&sound_codec>;
+		simple-audio-card,widgets =
+			"Headphone", "Headphone Jack Front",
+			"Headphone", "Headphone Jack Back";
+		simple-audio-card,routing =
+			"Headphone Jack Front", "HPA1 HPLEFT",
+			"Headphone Jack Front", "HPA1 HPRIGHT",
+			"Headphone Jack Back", "HPA2 HPLEFT",
+			"Headphone Jack Back", "HPA2 HPRIGHT",
+			"HPA1 LEFTIN", "HPL",
+			"HPA1 RIGHTIN", "HPR",
+			"HPA2 LEFTIN", "HPL",
+			"HPA2 RIGHTIN", "HPR";
+		simple-audio-card,aux-devs = <&hpa1>, <&hpa2>;
+
+		sound_cpu: simple-audio-card,cpu {
+			sound-dai = <&sai2>;
+		};
+
+		sound_codec: simple-audio-card,codec {
+			sound-dai = <&codec1>;
+			clocks = <&cs2000>;
+		};
+	};
 };
 
 &i2c4 {
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
index 32ce14936b01..c6a57dfe3ea9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
@@ -68,6 +68,15 @@
 		regulator-always-on;
 	};
 
+	reg_3p3v: regulator-3p3v {
+		compatible = "regulator-fixed";
+		vin-supply = <&reg_3p3_main>;
+		regulator-name = "GEN_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
 	reg_usdhc2_vmmc: regulator-vsd-3v3 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_reg_usdhc2>;
@@ -93,6 +102,18 @@
 		           900000 0x0>;
 		regulator-always-on;
 	};
+
+	cs2000_ref: cs2000-ref {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24576000>;
+	};
+
+	cs2000_in_dummy: cs2000-in-dummy {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <0>;
+	};
 };
 
 &A53_0 {
@@ -263,6 +284,16 @@
 		             <18 IRQ_TYPE_EDGE_BOTH>;
 		interrupt-names = "a_det", "alert";
 	};
+
+	hpa2: amp@60 {
+		compatible = "ti,tpa6130a2";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_tpa2>;
+		reg = <0x60>;
+		power-gpio = <&gpio1 8 GPIO_ACTIVE_HIGH>;
+		Vdd-supply = <&reg_5p0_main>;
+		sound-name-prefix = "HPA2";
+	};
 };
 
 &i2c2 {
@@ -355,11 +386,36 @@
 		};
 	};
 
+	codec1: codec@18 {
+		compatible = "ti,tlv320dac3100";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_codec1>;
+		reg = <0x18>;
+		#sound-dai-cells = <0>;
+		HPVDD-supply = <&reg_3p3v>;
+		SPRVDD-supply = <&reg_3p3v>;
+		SPLVDD-supply = <&reg_3p3v>;
+		AVDD-supply = <&reg_3p3v>;
+		IOVDD-supply = <&reg_3p3v>;
+		DVDD-supply = <&vgen4_reg>;
+		reset-gpios = <&gpio3 3 GPIO_ACTIVE_LOW>;
+	};
+
 	eeprom@54 {
 		compatible = "atmel,24c128";
 		reg = <0x54>;
 	};
 
+	hpa1: amp@60 {
+		compatible = "ti,tpa6130a2";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_tpa1>;
+		reg = <0x60>;
+		power-gpio = <&gpio4 10 GPIO_ACTIVE_HIGH>;
+		Vdd-supply = <&reg_5p0_main>;
+		sound-name-prefix = "HPA1";
+	};
+
 	ds1341: rtc@68 {
 		compatible = "dallas,ds1341";
 		reg = <0x68>;
@@ -379,6 +435,16 @@
 		reg = <0x2c>;
 		reset-gpios = <&gpio3 25 GPIO_ACTIVE_LOW>;
 	};
+
+	cs2000: clkgen@4e {
+		compatible = "cirrus,cs2000-cp";
+		reg = <0x4e>;
+		#clock-cells = <0>;
+		clock-names = "clk_in", "ref_clk";
+		clocks = <&cs2000_in_dummy>, <&cs2000_ref>;
+		assigned-clocks = <&cs2000>;
+		assigned-clock-rates = <24000000>;
+	};
 };
 
 &i2c4 {
@@ -388,6 +454,12 @@
 	status = "okay";
 };
 
+&sai2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai2>;
+	status = "okay";
+};
+
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart1>;
@@ -513,6 +585,12 @@
 };
 
 &iomuxc {
+	pinctrl_codec1: dac1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_NAND_CE2_B_GPIO3_IO3		0x41
+		>;
+	};
+
 	pinctrl_fec1: fec1grp {
 		fsl,pins = <
 			MX8MQ_IOMUXC_ENET_MDC_ENET1_MDC			0x3
@@ -604,12 +682,32 @@
 		>;
 	};
 
+	pinctrl_sai2: sai2grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SAI2_TXFS_SAI2_TX_SYNC		0xd6
+			MX8MQ_IOMUXC_SAI2_TXC_SAI2_TX_BCLK		0xd6
+			MX8MQ_IOMUXC_SAI2_TXD0_SAI2_TX_DATA0		0xd6
+		>;
+	};
+
 	pinctrl_switch_irq: switchgrp {
 		fsl,pins = <
 			MX8MQ_IOMUXC_GPIO1_IO15_GPIO1_IO15		0x41
 		>;
 	};
 
+	pinctrl_tpa1: tpa6130-1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SAI1_TXFS_GPIO4_IO10		0x41
+		>;
+	};
+
+	pinctrl_tpa2: tpa6130-2grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_GPIO1_IO08_GPIO1_IO8		0x41
+		>;
+	};
+
 	pinctrl_ts: tsgrp {
 		fsl,pins = <
 			MX8MQ_IOMUXC_GPIO1_IO11_GPIO1_IO11		0x96
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
