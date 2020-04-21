Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F2B1B2690
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 14:42:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KDa5Hmb4fRDQXovnWyIlZyf6NiIpIRxUp7cJCm+fp70=; b=ZOffaPI46aN339
	ukQlFInYTgbsiM2OvrLbcW5UpxmHEBwTQg1Yl2Vy9Y5F7PvB/Fr9K/4GRC2Z4Pp14OMKkQq/929Fr
	xr3RHi3oViD7DgBU+icbfem4tn3wPMbqc8bwc71cBSPPHTPsxxZFvaR+Wlo8ImoXc7smsYWg7jTYC
	F3nGuzA3VspYM25cAZxRs2ja6rnbz/ftwI9RVETD14EOYyrQPpye0NXwBYLgRPZOh74k4R69j4pp9
	xJ5A6jPPy7nMipf+XLuy0kiTcvfwsEXD2rDwIG3Zl9gpKa8nhVl31WVQZaeEO7C8qN9ikZ690pQc1
	h5L8aEB+EDhO/BOX6gQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQsEj-00017s-OL; Tue, 21 Apr 2020 12:42:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQsDl-0000PY-PU
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 12:41:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jQsCy-0002fk-SX; Tue, 21 Apr 2020 14:41:00 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jQsCx-00055o-3e; Tue, 21 Apr 2020 14:40:59 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v6 3/5] ARM: dts: add Protonic VT7 board
Date: Tue, 21 Apr 2020 14:40:55 +0200
Message-Id: <20200421124057.19238-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200421124057.19238-1-o.rempel@pengutronix.de>
References: <20200421124057.19238-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_054150_165015_0B0659A3 
X-CRM114-Status: GOOD (  15.90  )
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Robin van der Gracht <robin@protonic.nl>, linux-kernel@vger.kernel.org,
 Oleksij Rempel <o.rempel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Jander <david@protonic.nl>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Protonic VT7 is a mid-class ISObus Virtual Terminal with a 7 inch
touchscreen display.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Robin van der Gracht <robin@protonic.nl>
Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boot/dts/Makefile          |   1 +
 arch/arm/boot/dts/imx6dl-prtvt7.dts | 472 ++++++++++++++++++++++++++++
 2 files changed, 473 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6dl-prtvt7.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 8ce744f1cbfc9..66ee89e7929f9 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -450,6 +450,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
 	imx6dl-pico-hobbit.dtb \
 	imx6dl-pico-nymph.dtb \
 	imx6dl-pico-pi.dtb \
+	imx6dl-prtvt7.dtb \
 	imx6dl-rex-basic.dtb \
 	imx6dl-riotboard.dtb \
 	imx6dl-sabreauto.dtb \
diff --git a/arch/arm/boot/dts/imx6dl-prtvt7.dts b/arch/arm/boot/dts/imx6dl-prtvt7.dts
new file mode 100644
index 0000000000000..a948c7c6eb3ce
--- /dev/null
+++ b/arch/arm/boot/dts/imx6dl-prtvt7.dts
@@ -0,0 +1,472 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) 2016 Protonic Holland
+ */
+
+/dts-v1/;
+#include "imx6dl.dtsi"
+#include "imx6qdl-prti6q.dtsi"
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/sound/fsl-imx-audmux.h>
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
+	backlight_lcd: backlight-lcd {
+		compatible = "pwm-backlight";
+		pwms = <&pwm1 0 500000>;
+		brightness-levels = <0 20 81 248 1000>;
+		default-brightness-level = <20>;
+		num-interpolated-steps = <21>;
+		power-supply = <&reg_12v_bl>;
+		enable-gpios = <&gpio4 28 GPIO_ACTIVE_HIGH>;
+	};
+
+	display {
+		compatible = "fsl,imx-parallel-display";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ipu1_disp>;
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
+	keys {
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
+	reg_12v_bl: regulator-bl-12v {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_12v_bl>;
+		regulator-name = "12v-bl";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		gpio = <&gpio1 7 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
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
+};
+
+&clks {
+	assigned-clocks = <&clks IMX6QDL_CLK_LDB_DI0_SEL>;
+	assigned-clock-parents = <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>;
+};
+
+&ecspi2 {
+	cs-gpios = <&gpio2 26 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi2>;
+	status = "okay";
+
+	tsc@0 {
+		compatible = "ti,tsc2046";
+		reg = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_tsc>;
+		spi-max-frequency = <100000>;
+		interrupts-extended = <&gpio3 20 IRQ_TYPE_EDGE_FALLING>;
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
+&can1 {
+	pinctrl-0 = <&pinctrl_can1 &pinctrl_can1phy>;
+};
+
+&i2c1 {
+	sgtl5000: codec@a {
+		compatible = "fsl,sgtl5000";
+		reg = <0xa>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_codec>;
+		#sound-dai-cells = <0>;
+		clocks = <&clks 201>;
+		VDDA-supply = <&reg_3v3>;
+		VDDIO-supply = <&reg_3v3>;
+		VDDD-supply = <&reg_1v8>;
+	};
+};
+
+&i2c3 {
+	rtc@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+	};
+
+	gpio_pca: gpio@74 {
+		compatible = "nxp,pca9539";
+		reg = <0x74>;
+		interrupts-extended = <&gpio4 5 IRQ_TYPE_LEVEL_LOW>;
+		#gpio-cells = <2>;
+		gpio-controller;
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
+&pwm1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm1>;
+	status = "okay";
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
+&ssi1 {
+	#sound-dai-cells = <0>;
+	fsl,mode = "i2s-slave";
+	status = "okay";
+};
+
+&usbh1 {
+	status = "disabled";
+};
+
+&vpu {
+	status = "disabled";
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
+	pinctrl_can1phy: can1phy {
+		fsl,pins = <
+			/* CAN1_SR */
+			MX6QDL_PAD_KEY_COL3__GPIO4_IO12		0x13070
+			/* CAN1_TERM */
+			MX6QDL_PAD_GPIO_0__GPIO1_IO00		0x1b0b0
+		>;
+	};
+
+	pinctrl_codec: codecgrp {
+		fsl,pins = <
+			/* AUDIO_nRESET */
+			MX6QDL_PAD_CSI0_VSYNC__GPIO5_IO21	0x1f0b0
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
+	pinctrl_ipu1_csi0: ipu1csi0grp {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_DAT12__IPU1_CSI0_DATA12	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT13__IPU1_CSI0_DATA13	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT14__IPU1_CSI0_DATA14	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT15__IPU1_CSI0_DATA15	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT16__IPU1_CSI0_DATA16	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT17__IPU1_CSI0_DATA17	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT18__IPU1_CSI0_DATA18	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT19__IPU1_CSI0_DATA19	0x1b0b0
+			MX6QDL_PAD_CSI0_PIXCLK__IPU1_CSI0_PIXCLK 0x1b0b0
+			/* ITU656_nRESET */
+			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b0
+			/* ITU656_nPDN */
+			MX6QDL_PAD_CSI0_DATA_EN__GPIO5_IO20	0x1b0b0
+		>;
+	};
+
+	pinctrl_ipu1_disp: ipudisp1grp {
+		fsl,pins = <
+			MX6QDL_PAD_DI0_DISP_CLK__IPU1_DI0_DISP_CLK 0xb0
+			MX6QDL_PAD_DI0_PIN15__IPU1_DI0_PIN15	   0xb0
+
+			MX6QDL_PAD_DISP0_DAT0__IPU1_DISP0_DATA00 0xb0
+			MX6QDL_PAD_DISP0_DAT1__IPU1_DISP0_DATA01 0xb0
+			MX6QDL_PAD_DISP0_DAT2__IPU1_DISP0_DATA02 0xb0
+			MX6QDL_PAD_DISP0_DAT3__IPU1_DISP0_DATA03 0xb0
+			MX6QDL_PAD_DISP0_DAT4__IPU1_DISP0_DATA04 0xb0
+			MX6QDL_PAD_DISP0_DAT5__IPU1_DISP0_DATA05 0xb0
+			MX6QDL_PAD_DISP0_DAT6__IPU1_DISP0_DATA06 0xb0
+			MX6QDL_PAD_DISP0_DAT7__IPU1_DISP0_DATA07 0xb0
+
+			MX6QDL_PAD_DISP0_DAT8__IPU1_DISP0_DATA08 0xb0
+			MX6QDL_PAD_DISP0_DAT9__IPU1_DISP0_DATA09 0xb0
+			MX6QDL_PAD_DISP0_DAT10__IPU1_DISP0_DATA10 0xb0
+			MX6QDL_PAD_DISP0_DAT11__IPU1_DISP0_DATA11 0xb0
+			MX6QDL_PAD_DISP0_DAT12__IPU1_DISP0_DATA12 0xb0
+			MX6QDL_PAD_DISP0_DAT13__IPU1_DISP0_DATA13 0xb0
+			MX6QDL_PAD_DISP0_DAT14__IPU1_DISP0_DATA14 0xb0
+			MX6QDL_PAD_DISP0_DAT15__IPU1_DISP0_DATA15 0xb0
+
+			MX6QDL_PAD_DISP0_DAT16__IPU1_DISP0_DATA16 0xb0
+			MX6QDL_PAD_DISP0_DAT17__IPU1_DISP0_DATA17 0xb0
+			MX6QDL_PAD_DISP0_DAT18__IPU1_DISP0_DATA18 0xb0
+			MX6QDL_PAD_DISP0_DAT19__IPU1_DISP0_DATA19 0xb0
+			MX6QDL_PAD_DISP0_DAT20__IPU1_DISP0_DATA20 0xb0
+			MX6QDL_PAD_DISP0_DAT21__IPU1_DISP0_DATA21 0xb0
+			MX6QDL_PAD_DISP0_DAT22__IPU1_DISP0_DATA22 0xb0
+			MX6QDL_PAD_DISP0_DAT23__IPU1_DISP0_DATA23 0xb0
+		>;
+	};
+
+	pinctrl_leds: ledsgrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_8__GPIO1_IO08		0x1b0b0
+		>;
+	};
+
+	pinctrl_pwm1: pwm1grp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_9__PWM1_OUT		0x1b0b0
+		>;
+	};
+
+	pinctrl_reg_12v_bl: 12blgrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_7__GPIO1_IO07		0x1b0b0
+		>;
+	};
+
+	pinctrl_tsc: tscgrp {
+
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D20__GPIO3_IO20		0x1b0b0
+			MX6QDL_PAD_EIM_EB2__GPIO2_IO30		0x1b0b0
+		>;
+	};
+};
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
