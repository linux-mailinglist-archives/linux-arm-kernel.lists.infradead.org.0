Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A99518AC85
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 06:58:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irUrSCnv7HAP7dA6h40RNrcXaslqXg/ovrQ6NDzLHuY=; b=Lr48bKjozLgDUu
	TD+dHvAHBhqYCZ9oH9Z8mORCoPz88ZV+3QEW5W+Q2abK836LMcM7bi3jS/RfTrYvlGmQ0eghP2JXC
	iMMFqu2RtRB8+AgpmcNqsuXJuatjOs2oU4lRHNAzm25DHyAvfEqa4eLYNjL4PBj+IMD6D7K12Mh0b
	fR595klAoW3DgbO+M91WO/Gmy1/O4eCu4hE3oLCA5HR9bAoBdI8VqXlplc/s28EqGvsLrkIJD5rI+
	+ZnZ8yXdIN1aRx2vuap60VdrhSl258+GpboO7sEr40hd+bpmiYh0/mpuU+YhTY5HbZfHnq4/K8QhV
	5jWnMzEsLsz39iBAYfJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEoC9-0000O1-Vg; Thu, 19 Mar 2020 05:58:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEoBC-0008Fh-Bt
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 05:57:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jEoAh-0000e0-EC; Thu, 19 Mar 2020 06:56:47 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jEoAZ-0001zn-To; Thu, 19 Mar 2020 06:56:39 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 4/5] ARM: dts: add Protonic VT7 board
Date: Thu, 19 Mar 2020 06:56:35 +0100
Message-Id: <20200319055636.7573-5-o.rempel@pengutronix.de>
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
X-CRM114-CacheID: sfid-20200318_225718_680569_65458C07 
X-CRM114-Status: GOOD (  16.39  )
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
Cc: devicetree@vger.kernel.org, Robin van der Gracht <robin@protonic.nl>,
 linux-kernel@vger.kernel.org, Oleksij Rempel <o.rempel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Jander <david@protonic.nl>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Protonic VT7 is a mid-class ISObus Virtual Terminal with a 7 inch
touchscreen display.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/imx6dl-prtvt7.dts           | 390 ++++++++++++++++++
 3 files changed, 392 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6dl-prtvt7.dts

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 5bdf8d38b2f0..424be1edf005 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -168,6 +168,7 @@ properties:
               - emtrion,emcon-mx6-avari   # emCON-MX6S or emCON-MX6DL SoM on Avari Base
               - fsl,imx6dl-sabreauto      # i.MX6 DualLite/Solo SABRE Automotive Board
               - fsl,imx6dl-sabresd        # i.MX6 DualLite SABRE Smart Device Board
+              - prt,prtvt7                # Protonic VT7 board
               - technologic,imx6dl-ts4900
               - technologic,imx6dl-ts7970
               - toradex,colibri_imx6dl          # Colibri iMX6 Module
diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index b6fc2b375a61..e53abe1de259 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -446,6 +446,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
 	imx6dl-nitrogen6x.dtb \
 	imx6dl-phytec-mira-rdk-nand.dtb \
 	imx6dl-phytec-pbab01.dtb \
+	imx6dl-prtvt7.dtb \
 	imx6dl-rex-basic.dtb \
 	imx6dl-riotboard.dtb \
 	imx6dl-sabreauto.dtb \
diff --git a/arch/arm/boot/dts/imx6dl-prtvt7.dts b/arch/arm/boot/dts/imx6dl-prtvt7.dts
new file mode 100644
index 000000000000..704410a84b0c
--- /dev/null
+++ b/arch/arm/boot/dts/imx6dl-prtvt7.dts
@@ -0,0 +1,390 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) 2016 Protonic Holland
+ */
+
+/dts-v1/;
+#include "imx6dl.dtsi"
+#include "imx6qdl-prti6q.dtsi"
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "Protonic VT7";
+	compatible = "prt,prtvt7", "fsl,imx6dl";
+
+	memory@10000000 {
+		device_type = "memory";
+		reg = <0x10000000 0x20000000>;
+	};
+
+	reg_12v_bl: regulator-bl-12v {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_12v_bl>;
+		compatible = "regulator-fixed";
+		regulator-name = "12v-bl";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		gpio = <&gpio1 7 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	display: display {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ipu1_disp>;
+		compatible = "fsl,imx-parallel-display";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interface-pix-fmt = "rgb24";
+		status = "okay";
+
+		port@0 {
+			reg = <0>;
+
+			display_in: endpoint {
+				remote-endpoint = <&ipu1_di0_disp0>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+
+			display_out: endpoint {
+				remote-endpoint = <&panel_in>;
+			};
+		};
+	};
+
+	panel {
+		compatible = "innolux,g070y2t0ec";
+		backlight = <&backlight_lcd>;
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&display_out>;
+			};
+		};
+	};
+
+	hard_keys {
+		compatible = "gpio-keys";
+		autorepeat;
+
+		esc {
+			label = "GPIO Key ESC";
+			linux,code = <KEY_ESC>;
+			gpios = <&gpio_pca 0 GPIO_ACTIVE_LOW>;
+		};
+
+		up {
+			label = "GPIO Key UP";
+			linux,code = <KEY_UP>;
+			gpios = <&gpio_pca 1 GPIO_ACTIVE_LOW>;
+		};
+
+		down {
+			label = "GPIO Key DOWN";
+			linux,code = <KEY_DOWN>;
+			gpios = <&gpio_pca 4 GPIO_ACTIVE_LOW>;
+		};
+
+		enter {
+			label = "GPIO Key Enter";
+			linux,code = <KEY_ENTER>;
+			gpios = <&gpio_pca 3 GPIO_ACTIVE_LOW>;
+		};
+
+		cycle {
+			label = "GPIO Key CYCLE";
+			linux,code = <KEY_CYCLEWINDOWS>;
+			gpios = <&gpio_pca 2 GPIO_ACTIVE_LOW>;
+		};
+
+		f1 {
+			label = "GPIO Key F1";
+			linux,code = <KEY_F1>;
+			gpios = <&gpio_pca 14 GPIO_ACTIVE_LOW>;
+		};
+
+		f2 {
+			label = "GPIO Key F2";
+			linux,code = <KEY_F2>;
+			gpios = <&gpio_pca 13 GPIO_ACTIVE_LOW>;
+		};
+
+		f3 {
+			label = "GPIO Key F3";
+			linux,code = <KEY_F3>;
+			gpios = <&gpio_pca 12 GPIO_ACTIVE_LOW>;
+		};
+
+		f4 {
+			label = "GPIO Key F4";
+			linux,code = <KEY_F4>;
+			gpios = <&gpio_pca 11 GPIO_ACTIVE_LOW>;
+		};
+
+		f5 {
+			label = "GPIO Key F5";
+			linux,code = <KEY_F5>;
+			gpios = <&gpio_pca 10 GPIO_ACTIVE_LOW>;
+		};
+
+		f6 {
+			label = "GPIO Key F6";
+			linux,code = <KEY_F6>;
+			gpios = <&gpio_pca 5 GPIO_ACTIVE_LOW>;
+		};
+
+		f7 {
+			label = "GPIO Key F7";
+			linux,code = <KEY_F7>;
+			gpios = <&gpio_pca 6 GPIO_ACTIVE_LOW>;
+		};
+
+		f8 {
+			label = "GPIO Key F8";
+			linux,code = <KEY_F8>;
+			gpios = <&gpio_pca 7 GPIO_ACTIVE_LOW>;
+		};
+
+		f9 {
+			label = "GPIO Key F9";
+			linux,code = <KEY_F9>;
+			gpios = <&gpio_pca 8 GPIO_ACTIVE_LOW>;
+		};
+
+		f10 {
+			label = "GPIO Key F10";
+			linux,code = <KEY_F10>;
+			gpios = <&gpio_pca 9 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+};
+
+&clks {
+	assigned-clocks = <&clks IMX6QDL_CLK_LDB_DI0_SEL>;
+	assigned-clock-parents = <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>;
+};
+
+&iomuxc {
+	prti6q {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				/* SGTL5000 sys_mclk */
+				MX6QDL_PAD_CSI0_MCLK__CCM_CLKO1		0x030b0
+				/* CAN1_SR output */
+				MX6QDL_PAD_KEY_COL3__GPIO4_IO12		0x13070
+				/* ITU656_nRESET */
+				MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b0
+				/* ITU656_nPDN */
+				MX6QDL_PAD_CSI0_DATA_EN__GPIO5_IO20	0x1b0b0
+				/* AUDIO_nRESET */
+				MX6QDL_PAD_CSI0_VSYNC__GPIO5_IO21	0x1f0b0
+
+				/* HW revision detect */
+				/* REV_ID0 */
+				MX6QDL_PAD_SD4_DAT0__GPIO2_IO08 	0x1b0b0
+				/* REV_ID1 = PWM output LED_PWM (SION) */
+				/* defined in &pinctrl_pwm3 */
+				/* REV_ID2 */
+				MX6QDL_PAD_SD4_DAT2__GPIO2_IO10		0x1b0b0
+				/* REV_ID3 */
+				MX6QDL_PAD_SD4_DAT3__GPIO2_IO11		0x1b0b0
+				/* REV_ID4 */
+				MX6QDL_PAD_SD4_DAT4__GPIO2_IO12		0x1b0b0
+			>;
+		};
+
+		pinctrl_leds: ledsgrp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_8__GPIO1_IO08	0x1b0b0
+			>;
+		};
+
+		pinctrl_pwm1: pwm1grp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_9__PWM1_OUT	0x1b0b0
+			>;
+		};
+
+		pinctrl_tsc2046e: tsc2046egrp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_D20__GPIO3_IO20	0x1b0b0
+				MX6QDL_PAD_EIM_EB2__GPIO2_IO30	0x1b0b0
+			>;
+		};
+
+		pinctrl_usbotg: usbotggrp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_D21__USB_OTG_OC	0x1b0b0
+				MX6QDL_PAD_EIM_D22__GPIO3_IO22	0x1b0b0
+			>;
+		};
+
+		pinctrl_reg_12v_bl: 12blgrp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_7__GPIO1_IO07	0x1b0b0
+			>;
+		};
+
+		pinctrl_ecspi2: ecspi2grp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_OE__ECSPI2_MISO		0x100b1
+				MX6QDL_PAD_EIM_CS0__ECSPI2_SCLK		0x100b1
+				MX6QDL_PAD_EIM_CS1__ECSPI2_MOSI		0x100b1
+				MX6QDL_PAD_EIM_RW__GPIO2_IO26		0x000b1
+			>;
+		};
+
+		pinctrl_ipu1_disp: ipudisp1grp {
+			fsl,pins = <
+				/* DSE 0xb0 => 26 Ohm,
+				 * 0xa0 => 37 Ohm,
+				 * 0x90 => 78 Ohm
+				 */
+				MX6QDL_PAD_DI0_DISP_CLK__IPU1_DI0_DISP_CLK 0xb0
+				MX6QDL_PAD_DI0_PIN15__IPU1_DI0_PIN15	   0xb0
+
+				MX6QDL_PAD_DISP0_DAT0__IPU1_DISP0_DATA00 0xb0
+				MX6QDL_PAD_DISP0_DAT1__IPU1_DISP0_DATA01 0xb0
+				MX6QDL_PAD_DISP0_DAT2__IPU1_DISP0_DATA02 0xb0
+				MX6QDL_PAD_DISP0_DAT3__IPU1_DISP0_DATA03 0xb0
+				MX6QDL_PAD_DISP0_DAT4__IPU1_DISP0_DATA04 0xb0
+				MX6QDL_PAD_DISP0_DAT5__IPU1_DISP0_DATA05 0xb0
+				MX6QDL_PAD_DISP0_DAT6__IPU1_DISP0_DATA06 0xb0
+				MX6QDL_PAD_DISP0_DAT7__IPU1_DISP0_DATA07 0xb0
+
+				MX6QDL_PAD_DISP0_DAT8__IPU1_DISP0_DATA08 0xb0
+				MX6QDL_PAD_DISP0_DAT9__IPU1_DISP0_DATA09 0xb0
+				MX6QDL_PAD_DISP0_DAT10__IPU1_DISP0_DATA10 0xb0
+				MX6QDL_PAD_DISP0_DAT11__IPU1_DISP0_DATA11 0xb0
+				MX6QDL_PAD_DISP0_DAT12__IPU1_DISP0_DATA12 0xb0
+				MX6QDL_PAD_DISP0_DAT13__IPU1_DISP0_DATA13 0xb0
+				MX6QDL_PAD_DISP0_DAT14__IPU1_DISP0_DATA14 0xb0
+				MX6QDL_PAD_DISP0_DAT15__IPU1_DISP0_DATA15 0xb0
+
+				MX6QDL_PAD_DISP0_DAT16__IPU1_DISP0_DATA16 0xb0
+				MX6QDL_PAD_DISP0_DAT17__IPU1_DISP0_DATA17 0xb0
+				MX6QDL_PAD_DISP0_DAT18__IPU1_DISP0_DATA18 0xb0
+				MX6QDL_PAD_DISP0_DAT19__IPU1_DISP0_DATA19 0xb0
+				MX6QDL_PAD_DISP0_DAT20__IPU1_DISP0_DATA20 0xb0
+				MX6QDL_PAD_DISP0_DAT21__IPU1_DISP0_DATA21 0xb0
+				MX6QDL_PAD_DISP0_DAT22__IPU1_DISP0_DATA22 0xb0
+				MX6QDL_PAD_DISP0_DAT23__IPU1_DISP0_DATA23 0xb0
+			>;
+		};
+	};
+};
+
+&pcie {
+	status = "disabled";
+};
+
+&uart2 {
+	status = "disabled";
+};
+
+&uart5 {
+	status = "disabled";
+};
+
+&usbh1 {
+	status = "disabled";
+};
+
+&can2 {
+	status = "disabled";
+};
+
+&vpu {
+	status = "disabled";
+};
+
+&backlight_lcd {
+	pinctrl-names = "default";
+	pinctrl-0 = <>;
+	compatible = "pwm-backlight";
+	pwms = <&pwm1 0 500000>;
+	brightness-levels = <0 5 7 9 12 15 20 27 35 47 62 81 107 142 188 248
+			     328 433 573 757 1000>;
+	default-brightness-level = <20>;
+	power-supply = <&reg_12v_bl>;
+	status = "okay";
+};
+
+&ecspi2 {
+	cs-gpios = <&gpio2 26 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi2>;
+	status = "okay";
+
+	tsc: tsc2046e@0 {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_tsc2046e>;
+		compatible = "ti,tsc2046";
+		spi-max-frequency = <100000>;
+		reg = <0>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <20 IRQ_TYPE_EDGE_FALLING>;
+		pendown-gpio = <&gpio3 20 GPIO_ACTIVE_HIGH>;
+		vcc-supply = <&reg_3v3>;
+
+		ti,vref-delay-usecs = /bits/ 16 <100>;
+
+		ti,x-min = /bits/ 16 <0>;
+		ti,x-max = /bits/ 16 <8000>;
+		ti,y-min = /bits/ 16 <0>;
+		ti,y-max = /bits/ 16 <4800>;
+		ti,x-plate-ohms = /bits/ 16 <800>;
+		ti,y-plate-ohms = /bits/ 16 <300>;
+		ti,pressure-max = /bits/ 16 <4095>;
+
+		ti,skip-samples = <2>;
+		ti,sample-period-msecs = <10>;
+		ti,report-period-msecs = <30>;
+
+		ti,filter-tolerance = <80>;
+		ti,touch-resistance-threshold = <3500>;
+	};
+};
+
+&ipu1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ipu1_csi0>;
+	status = "okay";
+};
+
+&ipu1_di0_disp0 {
+	remote-endpoint = <&display_in>;
+};
+
+&snvs_poweroff {
+	status = "okay";
+};
+
+&snvs_pwrkey {
+	status = "okay";
+};
+
+&leds {
+	led-hb0 {
+		gpios = <&gpio1 8 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&i2c3 {
+	rtc: pcf8563@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+	};
+
+	gpio_pca: gpio@74 {
+		compatible = "nxp,pca9539";
+		reg = <0x74>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <5 IRQ_TYPE_LEVEL_LOW>;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+};
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
