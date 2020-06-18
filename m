Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 462F91FF915
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 18:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LKHRK2jew7eFmakvlK+tpDscn1HuGj5FLeMwVmVUHQc=; b=GtCX7GD9iFeGQacDHl91RobTek
	rjq0aoJhRErW4I3k3bM+y70MNWdvL6eIYYNGJxMnDpih5MCXmaFk4JfOy9PmMI/RCAth03dCjZDuD
	PFlIk6UppI4DE5/fpSfr5/adiU/YcpI8+tofBoO2PIilr17ouw5epQs8EFqm2imyOsHOWzWAx+ev+
	TXAJ0XviSNsj4JmS6qmMPrPQrn9aQuuZuoQR+j/P1Wqsd5Y0CRfPNT4uKbX+Nj0OEssdxwxvCsGil
	K1ZmjI4jPxeaSbNABtO+iL+d90tfMo+wmI+Yypnq79on8ze23pMEfNDQNkbhURmM6SHqgoXECcARS
	MaB0Ujdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlxGL-0007sW-Ru; Thu, 18 Jun 2020 16:19:38 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlxG7-0007rG-S6
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 16:19:28 +0000
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jlxJC-00089Y-V9; Thu, 18 Jun 2020 16:22:35 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2] ARM: dts: imx6qdl-gw: add Gateworks System Controller
 support
Date: Thu, 18 Jun 2020 09:19:09 -0700
Message-Id: <1592497149-22526-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589985459-4874-1-git-send-email-tharvey@gateworks.com>
References: <1589985459-4874-1-git-send-email-tharvey@gateworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_091924_080925_F137BBBF 
X-CRM114-Status: GOOD (  10.96  )
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
Cc: Tim Harvey <tharvey@gateworks.com>, rjones@gateworks.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add Gateworks System Controller support to Gateworks Ventana boards:
- add dt bindings for GSC mfd driver and hwmon driver for ADC's and
  fan controllers.
- add dt bindings for gpio-keys driver for push-button and interrupt events

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
v2:
 - use keycode bindings from linux-event-codes.h
 - fix gw5910/gw5913 vdd_bat ADC mode (these boards use 16bit pre-scaled ADC)

---
 arch/arm/boot/dts/imx6qdl-gw51xx.dtsi | 153 +++++++++++++++++++++++++++++--
 arch/arm/boot/dts/imx6qdl-gw52xx.dtsi | 159 ++++++++++++++++++++++++++++++--
 arch/arm/boot/dts/imx6qdl-gw53xx.dtsi | 165 +++++++++++++++++++++++++++++++--
 arch/arm/boot/dts/imx6qdl-gw54xx.dtsi | 167 ++++++++++++++++++++++++++++++++--
 arch/arm/boot/dts/imx6qdl-gw551x.dtsi | 147 ++++++++++++++++++++++++++++--
 arch/arm/boot/dts/imx6qdl-gw552x.dtsi | 153 +++++++++++++++++++++++++++++--
 arch/arm/boot/dts/imx6qdl-gw553x.dtsi | 141 +++++++++++++++++++++++++++-
 arch/arm/boot/dts/imx6qdl-gw560x.dtsi | 164 +++++++++++++++++++++++++++++++--
 arch/arm/boot/dts/imx6qdl-gw5903.dtsi | 140 +++++++++++++++++++++++++++-
 arch/arm/boot/dts/imx6qdl-gw5904.dtsi | 141 +++++++++++++++++++++++++++-
 arch/arm/boot/dts/imx6qdl-gw5907.dtsi | 142 ++++++++++++++++++++++++++++-
 arch/arm/boot/dts/imx6qdl-gw5910.dtsi | 160 +++++++++++++++++++++++++++++++-
 arch/arm/boot/dts/imx6qdl-gw5912.dtsi | 147 +++++++++++++++++++++++++++++-
 arch/arm/boot/dts/imx6qdl-gw5913.dtsi | 153 ++++++++++++++++++++++++++++++-
 14 files changed, 2075 insertions(+), 57 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-gw51xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw51xx.dtsi
index 419a7cd..712458d 100644
--- a/arch/arm/boot/dts/imx6qdl-gw51xx.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw51xx.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
 
 / {
 	/* these are used by bootloader for disabling nodes */
@@ -19,6 +20,53 @@
 		bootargs = "console=ttymxc1,115200";
 	};
 
+	gpio_keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		user_pb {
+			label = "user_pb";
+			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_0>;
+		};
+
+		user_pb1x {
+			label = "user_pb1x";
+			linux,code = <BTN_1>;
+			interrupt-parent = <&gsc>;
+			interrupts = <0>;
+		};
+
+		key_erased {
+			label = "key-erased";
+			linux,code = <BTN_2>;
+			interrupt-parent = <&gsc>;
+			interrupts = <1>;
+		};
+
+		eeprom_wp {
+			label = "eeprom_wp";
+			linux,code = <BTN_3>;
+			interrupt-parent = <&gsc>;
+			interrupts = <2>;
+		};
+
+		tamper {
+			label = "tamper";
+			linux,code = <BTN_4>;
+			interrupt-parent = <&gsc>;
+			interrupts = <5>;
+		};
+
+		switch_hold {
+			label = "switch_hold";
+			linux,code = <BTN_5>;
+			interrupt-parent = <&gsc>;
+			interrupts = <7>;
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -102,6 +150,103 @@
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
+	gsc: gsc@20 {
+		compatible = "gw,gsc";
+		reg = <0x20>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <4 GPIO_ACTIVE_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		#size-cells = <0>;
+
+		adc {
+			compatible = "gw,gsc-adc";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			channel@0 {
+				gw,mode = <0>;
+				reg = <0x00>;
+				label = "temp";
+			};
+
+			channel@2 {
+				gw,mode = <1>;
+				reg = <0x02>;
+				label = "vdd_vin";
+			};
+
+			channel@5 {
+				gw,mode = <1>;
+				reg = <0x05>;
+				label = "vdd_3p3";
+			};
+
+			channel@8 {
+				gw,mode = <1>;
+				reg = <0x08>;
+				label = "vdd_bat";
+			};
+
+			channel@b {
+				gw,mode = <1>;
+				reg = <0x0b>;
+				label = "vdd_5p0";
+			};
+
+			channel@e {
+				gw,mode = <1>;
+				reg = <0xe>;
+				label = "vdd_arm";
+			};
+
+			channel@11 {
+				gw,mode = <1>;
+				reg = <0x11>;
+				label = "vdd_soc";
+			};
+
+			channel@14 {
+				gw,mode = <1>;
+				reg = <0x14>;
+				label = "vdd_3p0";
+			};
+
+			channel@17 {
+				gw,mode = <1>;
+				reg = <0x17>;
+				label = "vdd_1p5";
+			};
+
+			channel@1d {
+				gw,mode = <1>;
+				reg = <0x1d>;
+				label = "vdd_1p8";
+			};
+
+			channel@20 {
+				gw,mode = <1>;
+				reg = <0x20>;
+				label = "vdd_an1";
+			};
+
+			channel@23 {
+				gw,mode = <1>;
+				reg = <0x23>;
+				label = "vdd_2p5";
+			};
+		};
+	};
+
+	gsc_gpio: pca9555@23 {
+		compatible = "nxp,pca9555";
+		reg = <0x23>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&gsc>;
+		interrupts = <4>;
+	};
+
 	eeprom1: eeprom@50 {
 		compatible = "atmel,24c02";
 		reg = <0x50>;
@@ -126,13 +271,6 @@
 		pagesize = <16>;
 	};
 
-	gpio: pca9555@23 {
-		compatible = "nxp,pca9555";
-		reg = <0x23>;
-		gpio-controller;
-		#gpio-cells = <2>;
-	};
-
 	rtc: ds1672@68 {
 		compatible = "dallas,ds1672";
 		reg = <0x68>;
@@ -387,6 +525,7 @@
 		fsl,pins = <
 			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
 			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
+			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x0001b0b0 /* GSC_IRQ# */
 		>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
index 60563ff..68dd8ef31 100644
--- a/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
 
 / {
 	/* these are used by bootloader for disabling nodes */
@@ -28,6 +29,53 @@
 		default-brightness-level = <7>;
 	};
 
+	gpio_keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		user_pb {
+			label = "user_pb";
+			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_0>;
+		};
+
+		user_pb1x {
+			label = "user_pb1x";
+			linux,code = <BTN_1>;
+			interrupt-parent = <&gsc>;
+			interrupts = <0>;
+		};
+
+		key_erased {
+			label = "key-erased";
+			linux,code = <BTN_2>;
+			interrupt-parent = <&gsc>;
+			interrupts = <1>;
+		};
+
+		eeprom_wp {
+			label = "eeprom_wp";
+			linux,code = <BTN_3>;
+			interrupt-parent = <&gsc>;
+			interrupts = <2>;
+		};
+
+		tamper {
+			label = "tamper";
+			linux,code = <BTN_4>;
+			interrupt-parent = <&gsc>;
+			interrupts = <5>;
+		};
+
+		switch_hold {
+			label = "switch_hold";
+			linux,code = <BTN_5>;
+			interrupt-parent = <&gsc>;
+			interrupts = <7>;
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -165,6 +213,109 @@
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
+	gsc: gsc@20 {
+		compatible = "gw,gsc";
+		reg = <0x20>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <4 GPIO_ACTIVE_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		#size-cells = <0>;
+
+		adc {
+			compatible = "gw,gsc-adc";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			channel@0 {
+				gw,mode = <0>;
+				reg = <0x00>;
+				label = "temp";
+			};
+
+			channel@2 {
+				gw,mode = <1>;
+				reg = <0x02>;
+				label = "vdd_vin";
+			};
+
+			channel@5 {
+				gw,mode = <1>;
+				reg = <0x05>;
+				label = "vdd_3p3";
+			};
+
+			channel@8 {
+				gw,mode = <1>;
+				reg = <0x08>;
+				label = "vdd_bat";
+			};
+
+			channel@b {
+				gw,mode = <1>;
+				reg = <0x0b>;
+				label = "vdd_5p0";
+			};
+
+			channel@e {
+				gw,mode = <1>;
+				reg = <0xe>;
+				label = "vdd_arm";
+			};
+
+			channel@11 {
+				gw,mode = <1>;
+				reg = <0x11>;
+				label = "vdd_soc";
+			};
+
+			channel@14 {
+				gw,mode = <1>;
+				reg = <0x14>;
+				label = "vdd_3p0";
+			};
+
+			channel@17 {
+				gw,mode = <1>;
+				reg = <0x17>;
+				label = "vdd_1p5";
+			};
+
+			channel@1d {
+				gw,mode = <1>;
+				reg = <0x1d>;
+				label = "vdd_1p8";
+			};
+
+			channel@20 {
+				gw,mode = <1>;
+				reg = <0x20>;
+				label = "vdd_1p0";
+			};
+
+			channel@23 {
+				gw,mode = <1>;
+				reg = <0x23>;
+				label = "vdd_2p5";
+			};
+
+			channel@29 {
+				gw,mode = <1>;
+				reg = <0x29>;
+				label = "vdd_an1";
+			};
+		};
+	};
+
+	gsc_gpio: pca9555@23 {
+		compatible = "nxp,pca9555";
+		reg = <0x23>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&gsc>;
+		interrupts = <4>;
+	};
+
 	eeprom1: eeprom@50 {
 		compatible = "atmel,24c02";
 		reg = <0x50>;
@@ -189,13 +340,6 @@
 		pagesize = <16>;
 	};
 
-	gpio: pca9555@23 {
-		compatible = "nxp,pca9555";
-		reg = <0x23>;
-		gpio-controller;
-		#gpio-cells = <2>;
-	};
-
 	rtc: ds1672@68 {
 		compatible = "dallas,ds1672";
 		reg = <0x68>;
@@ -504,6 +648,7 @@
 		fsl,pins = <
 			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
 			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
+			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0xb0b1
 		>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
index 8942bec..b583226 100644
--- a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
 
 / {
 	/* these are used by bootloader for disabling nodes */
@@ -28,6 +29,53 @@
 		default-brightness-level = <7>;
 	};
 
+	gpio_keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		user_pb {
+			label = "user_pb";
+			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_0>;
+		};
+
+		user_pb1x {
+			label = "user_pb1x";
+			linux,code = <BTN_1>;
+			interrupt-parent = <&gsc>;
+			interrupts = <0>;
+		};
+
+		key_erased {
+			label = "key-erased";
+			linux,code = <BTN_2>;
+			interrupt-parent = <&gsc>;
+			interrupts = <1>;
+		};
+
+		eeprom_wp {
+			label = "eeprom_wp";
+			linux,code = <BTN_3>;
+			interrupt-parent = <&gsc>;
+			interrupts = <2>;
+		};
+
+		tamper {
+			label = "tamper";
+			linux,code = <BTN_4>;
+			interrupt-parent = <&gsc>;
+			interrupts = <5>;
+		};
+
+		switch_hold {
+			label = "switch_hold";
+			linux,code = <BTN_5>;
+			interrupt-parent = <&gsc>;
+			interrupts = <7>;
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -158,6 +206,115 @@
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
+	gsc: gsc@20 {
+		compatible = "gw,gsc";
+		reg = <0x20>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <4 GPIO_ACTIVE_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		#size-cells = <0>;
+
+		adc {
+			compatible = "gw,gsc-adc";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			channel@0 {
+				gw,mode = <0>;
+				reg = <0x00>;
+				label = "temp";
+			};
+
+			channel@2 {
+				gw,mode = <1>;
+				reg = <0x02>;
+				label = "vdd_vin";
+			};
+
+			channel@5 {
+				gw,mode = <1>;
+				reg = <0x05>;
+				label = "vdd_3p3";
+			};
+
+			channel@8 {
+				gw,mode = <1>;
+				reg = <0x08>;
+				label = "vdd_bat";
+			};
+
+			channel@b {
+				gw,mode = <1>;
+				reg = <0x0b>;
+				label = "vdd_5p0";
+			};
+
+			channel@e {
+				gw,mode = <1>;
+				reg = <0xe>;
+				label = "vdd_arm";
+			};
+
+			channel@11 {
+				gw,mode = <1>;
+				reg = <0x11>;
+				label = "vdd_soc";
+			};
+
+			channel@14 {
+				gw,mode = <1>;
+				reg = <0x14>;
+				label = "vdd_3p0";
+			};
+
+			channel@17 {
+				gw,mode = <1>;
+				reg = <0x17>;
+				label = "vdd_1p5";
+			};
+
+			channel@1d {
+				gw,mode = <1>;
+				reg = <0x1d>;
+				label = "vdd_1p8";
+			};
+
+			channel@20 {
+				gw,mode = <1>;
+				reg = <0x20>;
+				label = "vdd_1p0";
+			};
+
+			channel@23 {
+				gw,mode = <1>;
+				reg = <0x23>;
+				label = "vdd_2p5";
+			};
+
+			channel@26 {
+				gw,mode = <1>;
+				reg = <0x26>;
+				label = "vdd_gps";
+			};
+
+			channel@29 {
+				gw,mode = <1>;
+				reg = <0x29>;
+				label = "vdd_an1";
+			};
+		};
+	};
+
+	gsc_gpio: pca9555@23 {
+		compatible = "nxp,pca9555";
+		reg = <0x23>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&gsc>;
+		interrupts = <4>;
+	};
+
 	eeprom1: eeprom@50 {
 		compatible = "atmel,24c02";
 		reg = <0x50>;
@@ -182,13 +339,6 @@
 		pagesize = <16>;
 	};
 
-	gpio: pca9555@23 {
-		compatible = "nxp,pca9555";
-		reg = <0x23>;
-		gpio-controller;
-		#gpio-cells = <2>;
-	};
-
 	rtc: ds1672@68 {
 		compatible = "dallas,ds1672";
 		reg = <0x68>;
@@ -486,6 +636,7 @@
 		fsl,pins = <
 			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
 			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
+			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0xb0b1
 		>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
index c40583d..3c00423 100644
--- a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/sound/fsl-imx-audmux.h>
 
 / {
@@ -29,6 +30,53 @@
 		default-brightness-level = <7>;
 	};
 
+	gpio_keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		user_pb {
+			label = "user_pb";
+			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_0>;
+		};
+
+		user_pb1x {
+			label = "user_pb1x";
+			linux,code = <BTN_1>;
+			interrupt-parent = <&gsc>;
+			interrupts = <0>;
+		};
+
+		key_erased {
+			label = "key-erased";
+			linux,code = <BTN_2>;
+			interrupt-parent = <&gsc>;
+			interrupts = <1>;
+		};
+
+		eeprom_wp {
+			label = "eeprom_wp";
+			linux,code = <BTN_3>;
+			interrupt-parent = <&gsc>;
+			interrupts = <2>;
+		};
+
+		tamper {
+			label = "tamper";
+			linux,code = <BTN_4>;
+			interrupt-parent = <&gsc>;
+			interrupts = <5>;
+		};
+
+		switch_hold {
+			label = "switch_hold";
+			linux,code = <BTN_5>;
+			interrupt-parent = <&gsc>;
+			interrupts = <7>;
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -195,6 +243,117 @@
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
+	gsc: gsc@20 {
+		compatible = "gw,gsc";
+		reg = <0x20>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <4 GPIO_ACTIVE_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		adc {
+			compatible = "gw,gsc-adc";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			channel@0 {
+				gw,mode = <0>;
+				reg = <0x00>;
+				label = "temp";
+			};
+
+			channel@2 {
+				gw,mode = <1>;
+				reg = <0x02>;
+				label = "vdd_vin";
+			};
+
+			channel@5 {
+				gw,mode = <1>;
+				reg = <0x05>;
+				label = "vdd_3p3";
+			};
+
+			channel@8 {
+				gw,mode = <1>;
+				reg = <0x08>;
+				label = "vdd_bat";
+			};
+
+			channel@b {
+				gw,mode = <1>;
+				reg = <0x0b>;
+				label = "vdd_5p0";
+			};
+
+			channel@e {
+				gw,mode = <1>;
+				reg = <0xe>;
+				label = "vdd_arm";
+			};
+
+			channel@11 {
+				gw,mode = <1>;
+				reg = <0x11>;
+				label = "vdd_soc";
+			};
+
+			channel@14 {
+				gw,mode = <1>;
+				reg = <0x14>;
+				label = "vdd_3p0";
+			};
+
+			channel@17 {
+				gw,mode = <1>;
+				reg = <0x17>;
+				label = "vdd_1p5";
+			};
+
+			channel@1d {
+				gw,mode = <1>;
+				reg = <0x1d>;
+				label = "vdd_1p8";
+			};
+
+			channel@20 {
+				gw,mode = <1>;
+				reg = <0x20>;
+				label = "vdd_1p0";
+			};
+
+			channel@23 {
+				gw,mode = <1>;
+				reg = <0x23>;
+				label = "vdd_2p5";
+			};
+
+			channel@26 {
+				gw,mode = <1>;
+				reg = <0x26>;
+				label = "vdd_gps";
+			};
+		};
+
+		fan-controller@2c {
+			compatible = "gw,gsc-fan";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x2c>;
+		};
+	};
+
+	gsc_gpio: pca9555@23 {
+		compatible = "nxp,pca9555";
+		reg = <0x23>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&gsc>;
+		interrupts = <4>;
+	};
+
 	eeprom1: eeprom@50 {
 		compatible = "atmel,24c02";
 		reg = <0x50>;
@@ -219,13 +378,6 @@
 		pagesize = <16>;
 	};
 
-	gpio: pca9555@23 {
-		compatible = "nxp,pca9555";
-		reg = <0x23>;
-		gpio-controller;
-		#gpio-cells = <2>;
-	};
-
 	rtc: ds1672@68 {
 		compatible = "dallas,ds1672";
 		reg = <0x68>;
@@ -571,6 +723,7 @@
 		fsl,pins = <
 			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
 			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
+			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0xb0b1
 		>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6qdl-gw551x.dtsi b/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
index c38e86e..1e2c7a7 100644
--- a/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
@@ -47,6 +47,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/media/tda1997x.h>
+#include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/sound/fsl-imx-audmux.h>
 
 / {
@@ -63,6 +64,53 @@
 		bootargs = "console=ttymxc1,115200";
 	};
 
+	gpio_keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		user_pb {
+			label = "user_pb";
+			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_0>;
+		};
+
+		user_pb1x {
+			label = "user_pb1x";
+			linux,code = <BTN_1>;
+			interrupt-parent = <&gsc>;
+			interrupts = <0>;
+		};
+
+		key_erased {
+			label = "key-erased";
+			linux,code = <BTN_2>;
+			interrupt-parent = <&gsc>;
+			interrupts = <1>;
+		};
+
+		eeprom_wp {
+			label = "eeprom_wp";
+			linux,code = <BTN_3>;
+			interrupt-parent = <&gsc>;
+			interrupts = <2>;
+		};
+
+		tamper {
+			label = "tamper";
+			linux,code = <BTN_4>;
+			interrupt-parent = <&gsc>;
+			interrupts = <5>;
+		};
+
+		switch_hold {
+			label = "switch_hold";
+			linux,code = <BTN_5>;
+			interrupt-parent = <&gsc>;
+			interrupts = <7>;
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -167,6 +215,97 @@
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
+	gsc: gsc@20 {
+		compatible = "gw,gsc";
+		reg = <0x20>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <4 GPIO_ACTIVE_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		#size-cells = <0>;
+
+		adc {
+			compatible = "gw,gsc-adc";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			channel@0 {
+				gw,mode = <0>;
+				reg = <0x00>;
+				label = "temp";
+			};
+
+			channel@2 {
+				gw,mode = <1>;
+				reg = <0x02>;
+				label = "vdd_vin";
+			};
+
+			channel@5 {
+				gw,mode = <1>;
+				reg = <0x05>;
+				label = "vdd_3p3";
+			};
+
+			channel@8 {
+				gw,mode = <1>;
+				reg = <0x08>;
+				label = "vdd_bat";
+			};
+
+			channel@b {
+				gw,mode = <1>;
+				reg = <0x0b>;
+				label = "vdd_5p0";
+			};
+
+			channel@e {
+				gw,mode = <1>;
+				reg = <0xe>;
+				label = "vdd_arm";
+			};
+
+			channel@11 {
+				gw,mode = <1>;
+				reg = <0x11>;
+				label = "vdd_soc";
+			};
+
+			channel@14 {
+				gw,mode = <1>;
+				reg = <0x14>;
+				label = "vdd_3p0";
+			};
+
+			channel@17 {
+				gw,mode = <1>;
+				reg = <0x17>;
+				label = "vdd_1p5";
+			};
+
+			channel@1d {
+				gw,mode = <1>;
+				reg = <0x1d>;
+				label = "vdd_1p8a";
+			};
+
+			channel@20 {
+				gw,mode = <1>;
+				reg = <0x20>;
+				label = "vdd_1p0b";
+			};
+		};
+	};
+
+	gsc_gpio: pca9555@23 {
+		compatible = "nxp,pca9555";
+		reg = <0x23>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&gsc>;
+		interrupts = <4>;
+	};
+
 	eeprom1: eeprom@50 {
 		compatible = "atmel,24c02";
 		reg = <0x50>;
@@ -191,13 +330,6 @@
 		pagesize = <16>;
 	};
 
-	gpio: pca9555@23 {
-		compatible = "nxp,pca9555";
-		reg = <0x23>;
-		gpio-controller;
-		#gpio-cells = <2>;
-	};
-
 	rtc: ds1672@68 {
 		compatible = "dallas,ds1672";
 		reg = <0x68>;
@@ -464,6 +596,7 @@
 		fsl,pins = <
 			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
 			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
+			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0xb0b1
 		>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6qdl-gw552x.dtsi b/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
index bb35971..46f21a3 100644
--- a/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
 
 / {
 	/* these are used by bootloader for disabling nodes */
@@ -20,6 +21,53 @@
 		bootargs = "console=ttymxc1,115200";
 	};
 
+	gpio_keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		user_pb {
+			label = "user_pb";
+			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_0>;
+		};
+
+		user_pb1x {
+			label = "user_pb1x";
+			linux,code = <BTN_1>;
+			interrupt-parent = <&gsc>;
+			interrupts = <0>;
+		};
+
+		key_erased {
+			label = "key-erased";
+			linux,code = <BTN_2>;
+			interrupt-parent = <&gsc>;
+			interrupts = <1>;
+		};
+
+		eeprom_wp {
+			label = "eeprom_wp";
+			linux,code = <BTN_3>;
+			interrupt-parent = <&gsc>;
+			interrupts = <2>;
+		};
+
+		tamper {
+			label = "tamper";
+			linux,code = <BTN_4>;
+			interrupt-parent = <&gsc>;
+			interrupts = <5>;
+		};
+
+		switch_hold {
+			label = "switch_hold";
+			linux,code = <BTN_5>;
+			interrupt-parent = <&gsc>;
+			interrupts = <7>;
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -92,6 +140,103 @@
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
+	gsc: gsc@20 {
+		compatible = "gw,gsc";
+		reg = <0x20>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <4 GPIO_ACTIVE_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		#size-cells = <0>;
+
+		adc {
+			compatible = "gw,gsc-adc";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			channel@0 {
+				gw,mode = <0>;
+				reg = <0x00>;
+				label = "temp";
+			};
+
+			channel@2 {
+				gw,mode = <1>;
+				reg = <0x02>;
+				label = "vdd_vin";
+			};
+
+			channel@5 {
+				gw,mode = <1>;
+				reg = <0x05>;
+				label = "vdd_3p3";
+			};
+
+			channel@8 {
+				gw,mode = <1>;
+				reg = <0x08>;
+				label = "vdd_bat";
+			};
+
+			channel@b {
+				gw,mode = <1>;
+				reg = <0x0b>;
+				label = "vdd_5p0";
+			};
+
+			channel@e {
+				gw,mode = <1>;
+				reg = <0xe>;
+				label = "vdd_arm";
+			};
+
+			channel@11 {
+				gw,mode = <1>;
+				reg = <0x11>;
+				label = "vdd_soc";
+			};
+
+			channel@14 {
+				gw,mode = <1>;
+				reg = <0x14>;
+				label = "vdd_3p0";
+			};
+
+			channel@17 {
+				gw,mode = <1>;
+				reg = <0x17>;
+				label = "vdd_1p5";
+			};
+
+			channel@1d {
+				gw,mode = <1>;
+				reg = <0x1d>;
+				label = "vdd_1p8";
+			};
+
+			channel@20 {
+				gw,mode = <1>;
+				reg = <0x20>;
+				label = "vdd_1p0";
+			};
+
+			channel@23 {
+				gw,mode = <1>;
+				reg = <0x23>;
+				label = "vdd_2p5";
+			};
+		};
+	};
+
+	gsc_gpio: pca9555@23 {
+		compatible = "nxp,pca9555";
+		reg = <0x23>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&gsc>;
+		interrupts = <4>;
+	};
+
 	eeprom1: eeprom@50 {
 		compatible = "atmel,24c02";
 		reg = <0x50>;
@@ -116,13 +261,6 @@
 		pagesize = <16>;
 	};
 
-	gpio: pca9555@23 {
-		compatible = "nxp,pca9555";
-		reg = <0x23>;
-		gpio-controller;
-		#gpio-cells = <2>;
-	};
-
 	rtc: ds1672@68 {
 		compatible = "dallas,ds1672";
 		reg = <0x68>;
@@ -305,6 +443,7 @@
 		fsl,pins = <
 			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
 			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
+			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0xb0b1
 		>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
index ee85031..036ead6 100644
--- a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
@@ -46,6 +46,7 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
 
 / {
 	/* these are used by bootloader for disabling nodes */
@@ -61,6 +62,53 @@
 		stdout-path = &uart2;
 	};
 
+	gpio_keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		user_pb {
+			label = "user_pb";
+			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_0>;
+		};
+
+		user_pb1x {
+			label = "user_pb1x";
+			linux,code = <BTN_1>;
+			interrupt-parent = <&gsc>;
+			interrupts = <0>;
+		};
+
+		key_erased {
+			label = "key-erased";
+			linux,code = <BTN_2>;
+			interrupt-parent = <&gsc>;
+			interrupts = <1>;
+		};
+
+		eeprom_wp {
+			label = "eeprom_wp";
+			linux,code = <BTN_3>;
+			interrupt-parent = <&gsc>;
+			interrupts = <2>;
+		};
+
+		tamper {
+			label = "tamper";
+			linux,code = <BTN_4>;
+			interrupt-parent = <&gsc>;
+			interrupts = <5>;
+		};
+
+		switch_hold {
+			label = "switch_hold";
+			linux,code = <BTN_5>;
+			interrupt-parent = <&gsc>;
+			interrupts = <7>;
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -130,11 +178,101 @@
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
-	gpio: pca9555@23 {
+	gsc: gsc@20 {
+		compatible = "gw,gsc";
+		reg = <0x20>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <4 GPIO_ACTIVE_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		#size-cells = <0>;
+
+		adc {
+			compatible = "gw,gsc-adc";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			channel@0 {
+				gw,mode = <0>;
+				reg = <0x00>;
+				label = "temp";
+			};
+
+			channel@2 {
+				gw,mode = <1>;
+				reg = <0x02>;
+				label = "vdd_vin";
+			};
+
+			channel@5 {
+				gw,mode = <1>;
+				reg = <0x05>;
+				label = "vdd_3p3";
+			};
+
+			channel@8 {
+				gw,mode = <1>;
+				reg = <0x08>;
+				label = "vdd_bat";
+			};
+
+			channel@b {
+				gw,mode = <1>;
+				reg = <0x0b>;
+				label = "vdd_5p0";
+			};
+
+			channel@e {
+				gw,mode = <1>;
+				reg = <0xe>;
+				label = "vdd_arm";
+			};
+
+			channel@11 {
+				gw,mode = <1>;
+				reg = <0x11>;
+				label = "vdd_soc";
+			};
+
+			channel@14 {
+				gw,mode = <1>;
+				reg = <0x14>;
+				label = "vdd_3p0";
+			};
+
+			channel@17 {
+				gw,mode = <1>;
+				reg = <0x17>;
+				label = "vdd_1p5";
+			};
+
+			channel@1d {
+				gw,mode = <1>;
+				reg = <0x1d>;
+				label = "vdd_1p8a";
+			};
+
+			channel@20 {
+				gw,mode = <1>;
+				reg = <0x20>;
+				label = "vdd_1p0b";
+			};
+
+			channel@26 {
+				gw,mode = <1>;
+				reg = <0x26>;
+				label = "vdd_an1";
+			};
+		};
+	};
+
+	gsc_gpio: pca9555@23 {
 		compatible = "nxp,pca9555";
 		reg = <0x23>;
 		gpio-controller;
 		#gpio-cells = <2>;
+		interrupt-parent = <&gsc>;
+		interrupts = <4>;
 	};
 
 	eeprom1: eeprom@50 {
@@ -428,6 +566,7 @@
 		fsl,pins = <
 			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
 			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
+			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0xb0b1
 		>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6qdl-gw560x.dtsi b/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
index 69ca70d..e497b13 100644
--- a/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
@@ -88,6 +88,53 @@
 		default-on;
 	};
 
+	gpio_keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		user_pb {
+			label = "user_pb";
+			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_0>;
+		};
+
+		user_pb1x {
+			label = "user_pb1x";
+			linux,code = <BTN_1>;
+			interrupt-parent = <&gsc>;
+			interrupts = <0>;
+		};
+
+		key_erased {
+			label = "key-erased";
+			linux,code = <BTN_2>;
+			interrupt-parent = <&gsc>;
+			interrupts = <1>;
+		};
+
+		eeprom_wp {
+			label = "eeprom_wp";
+			linux,code = <BTN_3>;
+			interrupt-parent = <&gsc>;
+			interrupts = <2>;
+		};
+
+		tamper {
+			label = "tamper";
+			linux,code = <BTN_4>;
+			interrupt-parent = <&gsc>;
+			interrupts = <5>;
+		};
+
+		switch_hold {
+			label = "switch_hold";
+			linux,code = <BTN_5>;
+			interrupt-parent = <&gsc>;
+			interrupts = <7>;
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -243,6 +290,115 @@
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
+	gsc: gsc@20 {
+		compatible = "gw,gsc";
+		reg = <0x20>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <4 GPIO_ACTIVE_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		#size-cells = <0>;
+
+		adc {
+			compatible = "gw,gsc-adc";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			channel@0 {
+				gw,mode = <0>;
+				reg = <0x00>;
+				label = "temp";
+			};
+
+			channel@2 {
+				gw,mode = <1>;
+				reg = <0x02>;
+				label = "vdd_vin";
+			};
+
+			channel@5 {
+				gw,mode = <1>;
+				reg = <0x05>;
+				label = "vdd_3p3";
+			};
+
+			channel@8 {
+				gw,mode = <1>;
+				reg = <0x08>;
+				label = "vdd_bat";
+			};
+
+			channel@b {
+				gw,mode = <1>;
+				reg = <0x0b>;
+				label = "vdd_5p0";
+			};
+
+			channel@e {
+				gw,mode = <1>;
+				reg = <0xe>;
+				label = "vdd_arm";
+			};
+
+			channel@11 {
+				gw,mode = <1>;
+				reg = <0x11>;
+				label = "vdd_soc";
+			};
+
+			channel@14 {
+				gw,mode = <1>;
+				reg = <0x14>;
+				label = "vdd_3p0";
+			};
+
+			channel@17 {
+				gw,mode = <1>;
+				reg = <0x17>;
+				label = "vdd_1p5";
+			};
+
+			channel@1d {
+				gw,mode = <1>;
+				reg = <0x1d>;
+				label = "vdd_1p8";
+			};
+
+			channel@20 {
+				gw,mode = <1>;
+				reg = <0x20>;
+				label = "vdd_an1";
+			};
+
+			channel@23 {
+				gw,mode = <1>;
+				reg = <0x23>;
+				label = "vdd_2p5";
+			};
+
+			channel@26 {
+				gw,mode = <1>;
+				reg = <0x26>;
+				label = "vdd_gps";
+			};
+
+			channel@29 {
+				gw,mode = <1>;
+				reg = <0x29>;
+				label = "vdd_an2";
+			};
+		};
+	};
+
+	gsc_gpio: pca9555@23 {
+		compatible = "nxp,pca9555";
+		reg = <0x23>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&gsc>;
+		interrupts = <4>;
+	};
+
 	eeprom1: eeprom@50 {
 		compatible = "atmel,24c02";
 		reg = <0x50>;
@@ -267,13 +423,6 @@
 		pagesize = <16>;
 	};
 
-	pca9555: gpio@23 {
-		compatible = "nxp,pca9555";
-		reg = <0x23>;
-		gpio-controller;
-		#gpio-cells = <2>;
-	};
-
 	ds1672: rtc@68 {
 		compatible = "dallas,ds1672";
 		reg = <0x68>;
@@ -608,6 +757,7 @@
 		fsl,pins = <
 			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
 			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
+			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0xb0b1
 		>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6qdl-gw5903.dtsi b/arch/arm/boot/dts/imx6qdl-gw5903.dtsi
index aee9221..768ae46 100644
--- a/arch/arm/boot/dts/imx6qdl-gw5903.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw5903.dtsi
@@ -46,6 +46,7 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
 
 / {
 	chosen {
@@ -71,6 +72,53 @@
 		default-brightness-level = <100>;
 	};
 
+	gpio_keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		user_pb {
+			label = "user_pb";
+			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_0>;
+		};
+
+		user_pb1x {
+			label = "user_pb1x";
+			linux,code = <BTN_1>;
+			interrupt-parent = <&gsc>;
+			interrupts = <0>;
+		};
+
+		key_erased {
+			label = "key-erased";
+			linux,code = <BTN_2>;
+			interrupt-parent = <&gsc>;
+			interrupts = <1>;
+		};
+
+		eeprom_wp {
+			label = "eeprom_wp";
+			linux,code = <BTN_3>;
+			interrupt-parent = <&gsc>;
+			interrupts = <2>;
+		};
+
+		tamper {
+			label = "tamper";
+			linux,code = <BTN_4>;
+			interrupt-parent = <&gsc>;
+			interrupts = <5>;
+		};
+
+		switch_hold {
+			label = "switch_hold";
+			linux,code = <BTN_5>;
+			interrupt-parent = <&gsc>;
+			interrupts = <7>;
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -183,11 +231,101 @@
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
-	pca9555: gpio@23 {
+	gsc: gsc@20 {
+		compatible = "gw,gsc";
+		reg = <0x20>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <4 GPIO_ACTIVE_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		#size-cells = <0>;
+
+		adc {
+			compatible = "gw,gsc-adc";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			channel@0 {
+				gw,mode = <0>;
+				reg = <0x00>;
+				label = "temp";
+			};
+
+			channel@2 {
+				gw,mode = <1>;
+				reg = <0x02>;
+				label = "vdd_vin";
+			};
+
+			channel@5 {
+				gw,mode = <1>;
+				reg = <0x05>;
+				label = "vdd_3p3";
+			};
+
+			channel@8 {
+				gw,mode = <1>;
+				reg = <0x08>;
+				label = "vdd_bat";
+			};
+
+			channel@b {
+				gw,mode = <1>;
+				reg = <0x0b>;
+				label = "vdd_5p0";
+			};
+
+			channel@e {
+				gw,mode = <1>;
+				reg = <0xe>;
+				label = "vdd_arm";
+			};
+
+			channel@11 {
+				gw,mode = <1>;
+				reg = <0x11>;
+				label = "vdd_soc";
+			};
+
+			channel@14 {
+				gw,mode = <1>;
+				reg = <0x14>;
+				label = "vdd_3p0";
+			};
+
+			channel@17 {
+				gw,mode = <1>;
+				reg = <0x17>;
+				label = "vdd_1p5";
+			};
+
+			channel@1d {
+				gw,mode = <1>;
+				reg = <0x1d>;
+				label = "vdd_1p8";
+			};
+
+			channel@20 {
+				gw,mode = <1>;
+				reg = <0x20>;
+				label = "vdd_an1";
+			};
+
+			channel@23 {
+				gw,mode = <1>;
+				reg = <0x23>;
+				label = "vdd_2p5";
+			};
+		};
+	};
+
+	gsc_gpio: pca9555@23 {
 		compatible = "nxp,pca9555";
 		reg = <0x23>;
 		gpio-controller;
 		#gpio-cells = <2>;
+		interrupt-parent = <&gsc>;
+		interrupts = <4>;
 	};
 
 	eeprom1: eeprom@50 {
diff --git a/arch/arm/boot/dts/imx6qdl-gw5904.dtsi b/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
index 76d6cf5..7eba6ed 100644
--- a/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
@@ -46,6 +46,7 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
 
 / {
 	/* these are used by bootloader for disabling nodes */
@@ -68,6 +69,53 @@
 		default-brightness-level = <7>;
 	};
 
+	gpio_keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		user_pb {
+			label = "user_pb";
+			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_0>;
+		};
+
+		user_pb1x {
+			label = "user_pb1x";
+			linux,code = <BTN_1>;
+			interrupt-parent = <&gsc>;
+			interrupts = <0>;
+		};
+
+		key_erased {
+			label = "key-erased";
+			linux,code = <BTN_2>;
+			interrupt-parent = <&gsc>;
+			interrupts = <1>;
+		};
+
+		eeprom_wp {
+			label = "eeprom_wp";
+			linux,code = <BTN_3>;
+			interrupt-parent = <&gsc>;
+			interrupts = <2>;
+		};
+
+		tamper {
+			label = "tamper";
+			linux,code = <BTN_4>;
+			interrupt-parent = <&gsc>;
+			interrupts = <5>;
+		};
+
+		switch_hold {
+			label = "switch_hold";
+			linux,code = <BTN_5>;
+			interrupt-parent = <&gsc>;
+			interrupts = <7>;
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -205,11 +253,101 @@
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
-	pca9555: gpio@23 {
+	gsc: gsc@20 {
+		compatible = "gw,gsc";
+		reg = <0x20>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <4 GPIO_ACTIVE_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		#size-cells = <0>;
+
+		adc {
+			compatible = "gw,gsc-adc";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			channel@0 {
+				gw,mode = <0>;
+				reg = <0x00>;
+				label = "temp";
+			};
+
+			channel@2 {
+				gw,mode = <1>;
+				reg = <0x02>;
+				label = "vdd_vin";
+			};
+
+			channel@5 {
+				gw,mode = <1>;
+				reg = <0x05>;
+				label = "vdd_3p3";
+			};
+
+			channel@8 {
+				gw,mode = <1>;
+				reg = <0x08>;
+				label = "vdd_bat";
+			};
+
+			channel@b {
+				gw,mode = <1>;
+				reg = <0x0b>;
+				label = "vdd_5p0";
+			};
+
+			channel@e {
+				gw,mode = <1>;
+				reg = <0xe>;
+				label = "vdd_arm";
+			};
+
+			channel@11 {
+				gw,mode = <1>;
+				reg = <0x11>;
+				label = "vdd_soc";
+			};
+
+			channel@14 {
+				gw,mode = <1>;
+				reg = <0x14>;
+				label = "vdd_3p0";
+			};
+
+			channel@17 {
+				gw,mode = <1>;
+				reg = <0x17>;
+				label = "vdd_1p5";
+			};
+
+			channel@1d {
+				gw,mode = <1>;
+				reg = <0x1d>;
+				label = "vdd_1p8";
+			};
+
+			channel@20 {
+				gw,mode = <1>;
+				reg = <0x20>;
+				label = "vdd_an1";
+			};
+
+			channel@23 {
+				gw,mode = <1>;
+				reg = <0x23>;
+				label = "vdd_2p5";
+			};
+		};
+	};
+
+	gsc_gpio: pca9555@23 {
 		compatible = "nxp,pca9555";
 		reg = <0x23>;
 		gpio-controller;
 		#gpio-cells = <2>;
+		interrupt-parent = <&gsc>;
+		interrupts = <4>;
 	};
 
 	eeprom1: eeprom@50 {
@@ -503,6 +641,7 @@
 		fsl,pins = <
 			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
 			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
+			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x0001b0b0 /* GSC_IRQ# */
 		>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6qdl-gw5907.dtsi b/arch/arm/boot/dts/imx6qdl-gw5907.dtsi
index 0bdebdd..0e155fb 100644
--- a/arch/arm/boot/dts/imx6qdl-gw5907.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw5907.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
 
 / {
 	/* these are used by bootloader for disabling nodes */
@@ -19,6 +20,53 @@
 		stdout-path = &uart2;
 	};
 
+	gpio_keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		user_pb {
+			label = "user_pb";
+			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_0>;
+		};
+
+		user_pb1x {
+			label = "user_pb1x";
+			linux,code = <BTN_1>;
+			interrupt-parent = <&gsc>;
+			interrupts = <0>;
+		};
+
+		key_erased {
+			label = "key-erased";
+			linux,code = <BTN_2>;
+			interrupt-parent = <&gsc>;
+			interrupts = <1>;
+		};
+
+		eeprom_wp {
+			label = "eeprom_wp";
+			linux,code = <BTN_3>;
+			interrupt-parent = <&gsc>;
+			interrupts = <2>;
+		};
+
+		tamper {
+			label = "tamper";
+			linux,code = <BTN_4>;
+			interrupt-parent = <&gsc>;
+			interrupts = <5>;
+		};
+
+		switch_hold {
+			label = "switch_hold";
+			linux,code = <BTN_5>;
+			interrupt-parent = <&gsc>;
+			interrupts = <7>;
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -102,11 +150,101 @@
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
-	gpio@23 {
+	gsc: gsc@20 {
+		compatible = "gw,gsc";
+		reg = <0x20>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <4 GPIO_ACTIVE_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		#size-cells = <0>;
+
+		adc {
+			compatible = "gw,gsc-adc";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			channel@0 {
+				gw,mode = <0>;
+				reg = <0x00>;
+				label = "temp";
+			};
+
+			channel@2 {
+				gw,mode = <1>;
+				reg = <0x02>;
+				label = "vdd_vin";
+			};
+
+			channel@5 {
+				gw,mode = <1>;
+				reg = <0x05>;
+				label = "vdd_3p3";
+			};
+
+			channel@8 {
+				gw,mode = <1>;
+				reg = <0x08>;
+				label = "vdd_bat";
+			};
+
+			channel@b {
+				gw,mode = <1>;
+				reg = <0x0b>;
+				label = "vdd_5p0";
+			};
+
+			channel@e {
+				gw,mode = <1>;
+				reg = <0xe>;
+				label = "vdd_arm";
+			};
+
+			channel@11 {
+				gw,mode = <1>;
+				reg = <0x11>;
+				label = "vdd_soc";
+			};
+
+			channel@14 {
+				gw,mode = <1>;
+				reg = <0x14>;
+				label = "vdd_3p0";
+			};
+
+			channel@17 {
+				gw,mode = <1>;
+				reg = <0x17>;
+				label = "vdd_1p5";
+			};
+
+			channel@1d {
+				gw,mode = <1>;
+				reg = <0x1d>;
+				label = "vdd_1p8";
+			};
+
+			channel@20 {
+				gw,mode = <1>;
+				reg = <0x20>;
+				label = "vdd_an1";
+			};
+
+			channel@23 {
+				gw,mode = <1>;
+				reg = <0x23>;
+				label = "vdd_2p5";
+			};
+		};
+	};
+
+	gsc_gpio: pca9555@23 {
 		compatible = "nxp,pca9555";
 		reg = <0x23>;
 		gpio-controller;
 		#gpio-cells = <2>;
+		interrupt-parent = <&gsc>;
+		interrupts = <4>;
 	};
 
 	eeprom@50 {
@@ -133,7 +271,7 @@
 		pagesize = <16>;
 	};
 
-	rtc@68 {
+	ds1672@68 {
 		compatible = "dallas,ds1672";
 		reg = <0x68>;
 	};
diff --git a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
index 0857de5..7571eb1 100644
--- a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
 
 / {
 	/* these are used by bootloader for disabling nodes */
@@ -22,6 +23,53 @@
 		reg = <0x10000000 0x20000000>;
 	};
 
+	gpio_keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		user_pb {
+			label = "user_pb";
+			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_0>;
+		};
+
+		user_pb1x {
+			label = "user_pb1x";
+			linux,code = <BTN_1>;
+			interrupt-parent = <&gsc>;
+			interrupts = <0>;
+		};
+
+		key_erased {
+			label = "key-erased";
+			linux,code = <BTN_2>;
+			interrupt-parent = <&gsc>;
+			interrupts = <1>;
+		};
+
+		eeprom_wp {
+			label = "eeprom_wp";
+			linux,code = <BTN_3>;
+			interrupt-parent = <&gsc>;
+			interrupts = <2>;
+		};
+
+		tamper {
+			label = "tamper";
+			linux,code = <BTN_4>;
+			interrupt-parent = <&gsc>;
+			interrupts = <5>;
+		};
+
+		switch_hold {
+			label = "switch_hold";
+			linux,code = <BTN_5>;
+			interrupt-parent = <&gsc>;
+			interrupts = <7>;
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -111,11 +159,121 @@
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
-	gpio@23 {
+	gsc: gsc@20 {
+		compatible = "gw,gsc";
+		reg = <0x20>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <4 GPIO_ACTIVE_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		#size-cells = <0>;
+
+		adc {
+			compatible = "gw,gsc-adc";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			channel@6 {
+				gw,mode = <0>;
+				reg = <0x06>;
+				label = "temp";
+			};
+
+			channel@8 {
+				gw,mode = <3>;
+				reg = <0x08>;
+				label = "vdd_bat";
+			};
+
+			channel@82 {
+				gw,mode = <2>;
+				reg = <0x82>;
+				label = "vdd_vin";
+				gw,voltage-divider-ohms = <22100 1000>;
+				gw,voltage-offset-microvolt = <800000>;
+			};
+
+			channel@84 {
+				gw,mode = <2>;
+				reg = <0x84>;
+				label = "vdd_5p0";
+				gw,voltage-divider-ohms = <22100 10000>;
+			};
+
+			channel@86 {
+				gw,mode = <2>;
+				reg = <0x86>;
+				label = "vdd_3p3";
+				gw,voltage-divider-ohms = <10000 10000>;
+			};
+
+			channel@88 {
+				gw,mode = <2>;
+				reg = <0x88>;
+				label = "vdd_2p5";
+				gw,voltage-divider-ohms = <10000 10000>;
+			};
+
+			channel@8c {
+				gw,mode = <2>;
+				reg = <0x8c>;
+				label = "vdd_3p0";
+			};
+
+			channel@8e {
+				gw,mode = <2>;
+				reg = <0x8e>;
+				label = "vdd_arm";
+			};
+
+			channel@90 {
+				gw,mode = <2>;
+				reg = <0x90>;
+				label = "vdd_soc";
+			};
+
+			channel@92 {
+				gw,mode = <2>;
+				reg = <0x92>;
+				label = "vdd_1p5";
+			};
+
+			channel@98 {
+				gw,mode = <2>;
+				reg = <0x98>;
+				label = "vdd_1p8";
+			};
+
+			channel@9a {
+				gw,mode = <2>;
+				reg = <0x9a>;
+				label = "vdd_1p0";
+				gw,voltage-divider-ohms = <10000 10000>;
+			};
+
+			channel@9c {
+				gw,mode = <2>;
+				reg = <0x9c>;
+				label = "vdd_an1";
+				gw,voltage-divider-ohms = <10000 10000>;
+			};
+
+			channel@a2 {
+				gw,mode = <2>;
+				reg = <0xa2>;
+				label = "vdd_gsc";
+				gw,voltage-divider-ohms = <10000 10000>;
+			};
+		};
+	};
+
+	gsc_gpio: pca9555@23 {
 		compatible = "nxp,pca9555";
 		reg = <0x23>;
 		gpio-controller;
 		#gpio-cells = <2>;
+		interrupt-parent = <&gsc>;
+		interrupts = <4>;
 	};
 
 	eeprom@50 {
diff --git a/arch/arm/boot/dts/imx6qdl-gw5912.dtsi b/arch/arm/boot/dts/imx6qdl-gw5912.dtsi
index 8c57fd2..e87870f 100644
--- a/arch/arm/boot/dts/imx6qdl-gw5912.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw5912.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
 
 / {
 	/* these are used by bootloader for disabling nodes */
@@ -20,6 +21,53 @@
 		stdout-path = &uart2;
 	};
 
+	gpio_keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		user_pb {
+			label = "user_pb";
+			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_0>;
+		};
+
+		user_pb1x {
+			label = "user_pb1x";
+			linux,code = <BTN_1>;
+			interrupt-parent = <&gsc>;
+			interrupts = <0>;
+		};
+
+		key_erased {
+			label = "key-erased";
+			linux,code = <BTN_2>;
+			interrupt-parent = <&gsc>;
+			interrupts = <1>;
+		};
+
+		eeprom_wp {
+			label = "eeprom_wp";
+			linux,code = <BTN_3>;
+			interrupt-parent = <&gsc>;
+			interrupts = <2>;
+		};
+
+		tamper {
+			label = "tamper";
+			linux,code = <BTN_4>;
+			interrupt-parent = <&gsc>;
+			interrupts = <5>;
+		};
+
+		switch_hold {
+			label = "switch_hold";
+			linux,code = <BTN_5>;
+			interrupt-parent = <&gsc>;
+			interrupts = <7>;
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -106,11 +154,108 @@
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
-	gpio@23 {
+	gsc: gsc@20 {
+		compatible = "gw,gsc";
+		reg = <0x20>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <4 GPIO_ACTIVE_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		#size-cells = <0>;
+
+		adc {
+			compatible = "gw,gsc-adc";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			channel@0 {
+				gw,mode = <0>;
+				reg = <0x00>;
+				label = "temp";
+			};
+
+			channel@2 {
+				gw,mode = <1>;
+				reg = <0x02>;
+				label = "vdd_vin";
+			};
+
+			channel@5 {
+				gw,mode = <1>;
+				reg = <0x05>;
+				label = "vdd_3p3";
+			};
+
+			channel@8 {
+				gw,mode = <1>;
+				reg = <0x08>;
+				label = "vdd_bat";
+			};
+
+			channel@b {
+				gw,mode = <1>;
+				reg = <0x0b>;
+				label = "vdd_5p0";
+			};
+
+			channel@e {
+				gw,mode = <1>;
+				reg = <0xe>;
+				label = "vdd_arm";
+			};
+
+			channel@11 {
+				gw,mode = <1>;
+				reg = <0x11>;
+				label = "vdd_soc";
+			};
+
+			channel@14 {
+				gw,mode = <1>;
+				reg = <0x14>;
+				label = "vdd_3p0";
+			};
+
+			channel@17 {
+				gw,mode = <1>;
+				reg = <0x17>;
+				label = "vdd_1p5";
+			};
+
+			channel@1d {
+				gw,mode = <1>;
+				reg = <0x1d>;
+				label = "vdd_1p8";
+			};
+
+			channel@20 {
+				gw,mode = <1>;
+				reg = <0x20>;
+				label = "vdd_1p0";
+			};
+
+			channel@23 {
+				gw,mode = <1>;
+				reg = <0x23>;
+				label = "vdd_2p5";
+			};
+		};
+
+		fan-controller@a {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "gw,gsc-fan";
+			reg = <0x0a>;
+		};
+	};
+
+	gsc_gpio: pca9555@23 {
 		compatible = "nxp,pca9555";
 		reg = <0x23>;
 		gpio-controller;
 		#gpio-cells = <2>;
+		interrupt-parent = <&gsc>;
+		interrupts = <4>;
 	};
 
 	eeprom@50 {
diff --git a/arch/arm/boot/dts/imx6qdl-gw5913.dtsi b/arch/arm/boot/dts/imx6qdl-gw5913.dtsi
index 635c203..8ad2d77 100644
--- a/arch/arm/boot/dts/imx6qdl-gw5913.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw5913.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
 
 / {
 	/* these are used by bootloader for disabling nodes */
@@ -19,6 +20,53 @@
 		stdout-path = &uart2;
 	};
 
+	gpio_keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		user_pb {
+			label = "user_pb";
+			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_0>;
+		};
+
+		user_pb1x {
+			label = "user_pb1x";
+			linux,code = <BTN_1>;
+			interrupt-parent = <&gsc>;
+			interrupts = <0>;
+		};
+
+		key_erased {
+			label = "key-erased";
+			linux,code = <BTN_2>;
+			interrupt-parent = <&gsc>;
+			interrupts = <1>;
+		};
+
+		eeprom_wp {
+			label = "eeprom_wp";
+			linux,code = <BTN_3>;
+			interrupt-parent = <&gsc>;
+			interrupts = <2>;
+		};
+
+		tamper {
+			label = "tamper";
+			linux,code = <BTN_4>;
+			interrupt-parent = <&gsc>;
+			interrupts = <5>;
+		};
+
+		switch_hold {
+			label = "switch_hold";
+			linux,code = <BTN_5>;
+			interrupt-parent = <&gsc>;
+			interrupts = <7>;
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -87,11 +135,114 @@
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
-	gpio@23 {
+	gsc: gsc@20 {
+		compatible = "gw,gsc";
+		reg = <0x20>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <4 GPIO_ACTIVE_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		#size-cells = <0>;
+
+		adc {
+			compatible = "gw,gsc-adc";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			channel@6 {
+				gw,mode = <0>;
+				reg = <0x06>;
+				label = "temp";
+			};
+
+			channel@8 {
+				gw,mode = <3>;
+				reg = <0x08>;
+				label = "vdd_bat";
+			};
+
+			channel@82 {
+				gw,mode = <2>;
+				reg = <0x82>;
+				label = "vdd_vin";
+				gw,voltage-divider-ohms = <22100 1000>;
+				gw,voltage-offset-microvolt = <800000>;
+			};
+
+			channel@84 {
+				gw,mode = <2>;
+				reg = <0x84>;
+				label = "vdd_5p0";
+				gw,voltage-divider-ohms = <22100 10000>;
+			};
+
+			channel@86 {
+				gw,mode = <2>;
+				reg = <0x86>;
+				label = "vdd_3p3";
+				gw,voltage-divider-ohms = <10000 10000>;
+			};
+
+			channel@88 {
+				gw,mode = <2>;
+				reg = <0x88>;
+				label = "vdd_2p5";
+				gw,voltage-divider-ohms = <10000 10000>;
+			};
+
+			channel@8c {
+				gw,mode = <2>;
+				reg = <0x8c>;
+				label = "vdd_arm";
+			};
+
+			channel@8e {
+				gw,mode = <2>;
+				reg = <0x8e>;
+				label = "vdd_soc";
+			};
+
+			channel@90 {
+				gw,mode = <2>;
+				reg = <0x90>;
+				label = "vdd_1p5";
+			};
+
+			channel@92 {
+				gw,mode = <2>;
+				reg = <0x92>;
+				label = "vdd_1p0";
+			};
+
+			channel@98 {
+				gw,mode = <2>;
+				reg = <0x98>;
+				label = "vdd_3p0";
+			};
+
+			channel@9a {
+				gw,mode = <2>;
+				reg = <0x9a>;
+				label = "vdd_an1";
+				gw,voltage-divider-ohms = <10000 10000>;
+			};
+
+			channel@a2 {
+				gw,mode = <2>;
+				reg = <0xa2>;
+				label = "vdd_gsc";
+				gw,voltage-divider-ohms = <10000 10000>;
+			};
+		};
+	};
+
+	gsc_gpio: pca9555@23 {
 		compatible = "nxp,pca9555";
 		reg = <0x23>;
 		gpio-controller;
 		#gpio-cells = <2>;
+		interrupt-parent = <&gsc>;
+		interrupts = <4>;
 	};
 
 	eeprom@50 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
