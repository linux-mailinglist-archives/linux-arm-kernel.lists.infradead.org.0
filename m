Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EFF436A3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Q794GPWqXH57O+6EY9uZ/NVJ4PlBuXgS1TQNM2YTK5s=; b=HGwXZGgK0Ufc4dkh4HXRLiXvRX
	J0EfaljNTUMe8i5kTu/695diQ6cuLpIFD6YzHjjjxK5L8rdvwrxsteH2TQRt+ZnZO38PJm5CqkdG7
	s4AqoTh8mFv6ny4KzSn1yqqco2wcWQgWIW/+Uu7lCrYLTJfXvlybOUiTsUdCgNO7yE3vC9uwRsOCW
	JTrdMfeLcfDAMntk0I4VOlZnPYelxZ6+mTnnk/j2jJp5Es9ZXmqO1ruGt6W98sfcFjPVonPPDJjIm
	IeT/WtLgHkq7mCnPpHdhQdrHNDUFgUFEE+F8yFdFJA0uaDblGDTjnZjhFwwJLYKtQvi9SSAvir9vR
	F2CR1rMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPpe-0001gD-DJ; Thu, 13 Jun 2019 13:31:58 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPlL-0004ZD-GG
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:27:33 +0000
Received: by mail-pg1-x544.google.com with SMTP id d30so10969351pgm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 06:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=js/4eazfIYpJrV/5wc7UaVyO/kIsBa0/57npHqqta1M=;
 b=wHxPbfRTbezUNfVppSjET+00CSBLmtrsWx70BNrf/xfZAr0LQSfbo/taPNEOPVSepN
 wyHLx8mLBbw4suYMCg7QcfpetvA71M/vt+ZFRxhIA3B4/7qlDKvg1lPlBpRmxDcLNDpy
 wFblel1ZNO2qeX2/5+QonSP8IENIs9VCgRglxRyv8XI4AIOS4Bxzi4ghhDpU1qW01tu1
 RDqm59QTkXde/ivG0HxM7cncblIuGvgRWn6W8b5SbFf4pYY7T+amF/0pi9+WJ8sDHJxh
 bajrN2TGtCzq621VNdWA/1dbpgKVSj0KI3hPW6ntO233qp87WRuyy7Lmn1Xqf8+qhoKc
 nVAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=js/4eazfIYpJrV/5wc7UaVyO/kIsBa0/57npHqqta1M=;
 b=g44+ajQXjlxA2fbYCWonj9IuPgWU/vQeeCRY87THAmOdugJhvVYI/6u9tOyrqcgY17
 rOScZT4FU3NoYDQhov1YNdjrnYaPdrl+4TqOFn9ET0Mpg5s8Gs342Zit5WoyknYfJ5+l
 X4JFoy8Xch/DEQ92zmq0n5YWEuSRubxmDg5rKMAyYkOwdlb9yJdZf3xFj36Eb5RM+Kot
 4yfgQTE6XZGCPiMa9RfV4ViYeliGH8BvNMPaR0qItb6EeYWXXo/w3TI3wVrx/1jg1NQb
 B5u8jicF7OxXfAN4h3Q/6OPtqzQNMcQ6pa5q+0jy4OCAy4es31Z9MmqwzkwvoO1hTosp
 26ZQ==
X-Gm-Message-State: APjAAAW4V9HvzFZsF1V7GBNTaLOACOnM4mi8NWgNvTRca3/n3ks2azrD
 XnfntrGVYar6YHQ7LBVjYsDc
X-Google-Smtp-Source: APXvYqxufTo3l0bEaOGCnzpTlirzpWl5cdSVc8fL+8e7jWRhFcZ3/ZFKYLkEx3yPuTBi/+sjNLAk0w==
X-Received: by 2002:aa7:919a:: with SMTP id x26mr79362623pfa.134.1560432450722; 
 Thu, 13 Jun 2019 06:27:30 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7141:4858:bdd9:1134:3bdd:7ab4])
 by smtp.gmail.com with ESMTPSA id y14sm1837pjr.13.2019.06.13.06.27.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 06:27:30 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 festevam@gmail.com
Subject: [PATCH v2 2/2] ARM: dts: Add support for 96Boards Meerkat96 board
Date: Thu, 13 Jun 2019 18:57:05 +0530
Message-Id: <20190613132705.5150-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190613132705.5150-1-manivannan.sadhasivam@linaro.org>
References: <20190613132705.5150-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_062731_604797_8A428181 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, yossi@novtech.com,
 pbrobinson@gmail.com, kernel@pengutronix.de,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree support for 96Boards Meerkat96 board from Novtech. This
board is one of the Consumer Edition boards of the 96Boards family based
on i.MX7D SoC. Following are the currently supported features of the
board:

* uSD
* WiFi/BT
* USB

More information about this board can be found in 96Boards product page:
https://www.96boards.org/product/imx7-96/

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/Makefile            |   1 +
 arch/arm/boot/dts/imx7d-meerkat96.dts | 389 ++++++++++++++++++++++++++
 2 files changed, 390 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx7d-meerkat96.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index f4f5aeaf3298..3018a763dbd1 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -579,6 +579,7 @@ dtb-$(CONFIG_SOC_IMX7D) += \
 	imx7d-cl-som-imx7.dtb \
 	imx7d-colibri-emmc-eval-v3.dtb \
 	imx7d-colibri-eval-v3.dtb \
+	imx7d-meerkat96.dtb \
 	imx7d-nitrogen7.dtb \
 	imx7d-pico-hobbit.dtb \
 	imx7d-pico-pi.dtb \
diff --git a/arch/arm/boot/dts/imx7d-meerkat96.dts b/arch/arm/boot/dts/imx7d-meerkat96.dts
new file mode 100644
index 000000000000..a86dc4878e44
--- /dev/null
+++ b/arch/arm/boot/dts/imx7d-meerkat96.dts
@@ -0,0 +1,389 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2019 Linaro Ltd.
+ */
+
+/dts-v1/;
+
+#include "imx7d.dtsi"
+
+/ {
+	model = "96Boards Meerkat96 Board";
+	compatible = "novtech,imx7d-meerkat96", "fsl,imx7d";
+
+	chosen {
+		stdout-path = &uart6;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x20000000>; /* 512MB */
+	};
+
+	reg_wlreg_on: regulator-wlreg-on {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_wlreg_on>;
+		regulator-name = "wlreg_on";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <100>;
+		gpio = <&gpio6 15 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
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
+	reg_usb_otg1_vbus: regulator-usb-otg1-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "usb_otg1_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	reg_usb_otg2_vbus: regulator-usb-otg2-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "usb_otg2_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio1 2 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	sw1a_reg: sw1a {
+		compatible = "regulator-fixed";
+		regulator-name = "sw1a_reg";
+		regulator-min-microvolt = <700000>;
+		regulator-max-microvolt = <1475000>;
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-ramp-delay = <6250>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_leds>;
+
+		led1 {
+			label = "green:user1";
+			gpios = <&gpio1 4 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+			default-state = "off";
+		};
+
+		led2 {
+			label = "green:user2";
+			gpios = <&gpio1 5 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "mmc0";
+			default-state = "off";
+		};
+
+		led3 {
+			label = "green:user3";
+			gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "mmc1";
+			default-state = "off";
+		};
+
+		led4 {
+			label = "green:user4";
+			gpios = <&gpio1 7 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "none";
+			default-state = "off";
+			panic-indicator;
+		};
+
+		led5 {
+			label = "yellow:wlan";
+			gpios = <&gpio1 0 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "phy0tx";
+			default-state = "off";
+		};
+
+		led6 {
+			label = "blue:bt";
+			gpios = <&gpio5 2 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "bluetooth-power";
+			default-state = "off";
+		};
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&sw1a_reg>;
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+};
+
+&i2c4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	status = "okay";
+};
+
+&lcdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lcdif>;
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	assigned-clocks = <&clks IMX7D_UART1_ROOT_SRC>;
+	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	assigned-clocks = <&clks IMX7D_UART3_ROOT_SRC>;
+	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&uart6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart6>;
+	assigned-clocks = <&clks IMX7D_UART6_ROOT_SRC>;
+	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
+	status = "okay";
+};
+
+&uart7 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart7 &pinctrl_bt_gpios>;
+	assigned-clocks = <&clks IMX7D_UART7_ROOT_SRC>;
+	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
+	uart-has-rtscts;
+	fsl,dte-mode;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		device-wakeup-gpios = <&gpio6 13 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio4 17 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&usbotg1 {
+	vbus-supply = <&reg_usb_otg1_vbus>;
+	status = "okay";
+};
+
+&usbotg2 {
+	vbus-supply = <&reg_usb_otg2_vbus>;
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	keep-power-in-suspend;
+	tuning-step = <2>;
+	vmmc-supply = <&reg_3p3v>;
+	no-1-8-v;
+	broken-cd;
+	status = "okay";
+};
+
+&usdhc3 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	bus-width = <4>;
+	no-1-8-v;
+	no-mmc;
+	non-removable;
+	keep-power-in-suspend;
+	wakeup-source;
+	vmmc-supply = <&reg_wlreg_on>;
+	vqmmc-supply =<&reg_3p3v>;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_wlan_irq>;
+		interrupt-parent = <&gpio6>;
+		interrupts = <14 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "host-wake";
+	};
+};
+
+&iomuxc {
+	pinctrl_bt_gpios: btgpiosgrp {
+		fsl,pins = <
+			MX7D_PAD_SAI1_TX_BCLK__GPIO6_IO13	0x59
+			MX7D_PAD_ECSPI1_MOSI__GPIO4_IO17	0x1f
+		>;
+	};
+
+	pinctrl_gpio_leds: gpioledsgrp {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO00__GPIO1_IO0	0x59
+			MX7D_PAD_LPSR_GPIO1_IO04__GPIO1_IO4	0x59
+			MX7D_PAD_LPSR_GPIO1_IO05__GPIO1_IO5	0x59
+			MX7D_PAD_LPSR_GPIO1_IO06__GPIO1_IO6	0x59
+			MX7D_PAD_LPSR_GPIO1_IO07__GPIO1_IO7	0x59
+			MX7D_PAD_SD1_RESET_B__GPIO5_IO2		0x59
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX7D_PAD_I2C1_SDA__I2C1_SDA		0x4000007f
+			MX7D_PAD_I2C1_SCL__I2C1_SCL		0x4000007f
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX7D_PAD_I2C2_SDA__I2C2_SDA		0x4000007f
+			MX7D_PAD_I2C2_SCL__I2C2_SCL		0x4000007f
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX7D_PAD_ENET1_RGMII_RD1__I2C3_SDA	0x4000007f
+			MX7D_PAD_ENET1_RGMII_RD0__I2C3_SCL	0x4000007f
+		>;
+	};
+
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <
+			MX7D_PAD_SAI1_RX_BCLK__I2C4_SDA		0x4000007f
+			MX7D_PAD_SAI1_RX_SYNC__I2C4_SCL		0x4000007f
+		>;
+	};
+
+	pinctrl_lcdif: lcdifgrp {
+		fsl,pins = <
+			MX7D_PAD_LCD_DATA00__LCD_DATA0		0x79
+			MX7D_PAD_LCD_DATA01__LCD_DATA1		0x79
+			MX7D_PAD_LCD_DATA02__LCD_DATA2		0x79
+			MX7D_PAD_LCD_DATA03__LCD_DATA3		0x79
+			MX7D_PAD_LCD_DATA04__LCD_DATA4		0x79
+			MX7D_PAD_LCD_DATA05__LCD_DATA5		0x79
+			MX7D_PAD_LCD_DATA06__LCD_DATA6		0x79
+			MX7D_PAD_LCD_DATA07__LCD_DATA7		0x79
+			MX7D_PAD_LCD_DATA08__LCD_DATA8		0x79
+			MX7D_PAD_LCD_DATA09__LCD_DATA9		0x79
+			MX7D_PAD_LCD_DATA10__LCD_DATA10		0x79
+			MX7D_PAD_LCD_DATA11__LCD_DATA11		0x79
+			MX7D_PAD_LCD_DATA12__LCD_DATA12		0x79
+			MX7D_PAD_LCD_DATA13__LCD_DATA13		0x79
+			MX7D_PAD_LCD_DATA14__LCD_DATA14		0x79
+			MX7D_PAD_LCD_DATA15__LCD_DATA15		0x79
+			MX7D_PAD_LCD_DATA16__LCD_DATA16		0x79
+			MX7D_PAD_LCD_DATA17__LCD_DATA17		0x79
+			MX7D_PAD_LCD_DATA18__LCD_DATA18		0x79
+			MX7D_PAD_LCD_DATA19__LCD_DATA19		0x79
+			MX7D_PAD_LCD_DATA20__LCD_DATA20		0x79
+			MX7D_PAD_LCD_DATA21__LCD_DATA21		0x79
+			MX7D_PAD_LCD_DATA22__LCD_DATA22		0x79
+			MX7D_PAD_LCD_DATA23__LCD_DATA23		0x79
+			MX7D_PAD_LCD_CLK__LCD_CLK		0x79
+			MX7D_PAD_LCD_ENABLE__LCD_ENABLE		0x79
+			MX7D_PAD_LCD_VSYNC__LCD_VSYNC		0x79
+			MX7D_PAD_LCD_HSYNC__LCD_HSYNC		0x79
+			MX7D_PAD_LCD_RESET__LCD_RESET		0x79
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX	0x79
+			MX7D_PAD_UART1_RX_DATA__UART1_DCE_RX	0x79
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX7D_PAD_SD3_DATA4__UART3_DCE_RX	0x79
+			MX7D_PAD_SD3_DATA5__UART3_DCE_TX	0x79
+			MX7D_PAD_SD3_DATA6__UART3_DCE_RTS	0x79
+			MX7D_PAD_SD3_DATA7__UART3_DCE_CTS	0x79
+		>;
+	};
+
+	pinctrl_uart6: uart6grp {
+		fsl,pins = <
+			MX7D_PAD_SD1_CD_B__UART6_DCE_RX		0x79
+			MX7D_PAD_SD1_WP__UART6_DCE_TX		0x79
+		>;
+	};
+
+	pinctrl_uart7: uart7grp {
+		fsl,pins = <
+			MX7D_PAD_ECSPI2_SCLK__UART7_DTE_TX	0x79
+			MX7D_PAD_ECSPI2_MOSI__UART7_DTE_RX	0x79
+			MX7D_PAD_ECSPI2_MISO__UART7_DTE_CTS	0x79
+			MX7D_PAD_ECSPI2_SS0__UART7_DTE_RTS	0x79
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX7D_PAD_SD1_CMD__SD1_CMD		0x59
+			MX7D_PAD_SD1_CLK__SD1_CLK		0x19
+			MX7D_PAD_SD1_DATA0__SD1_DATA0		0x59
+			MX7D_PAD_SD1_DATA1__SD1_DATA1		0x59
+			MX7D_PAD_SD1_DATA2__SD1_DATA2		0x59
+			MX7D_PAD_SD1_DATA3__SD1_DATA3		0x59
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX7D_PAD_SD3_CMD__SD3_CMD		0x59
+			MX7D_PAD_SD3_CLK__SD3_CLK		0x0D
+			MX7D_PAD_SD3_DATA0__SD3_DATA0		0x59
+			MX7D_PAD_SD3_DATA1__SD3_DATA1		0x59
+			MX7D_PAD_SD3_DATA2__SD3_DATA2		0x59
+			MX7D_PAD_SD3_DATA3__SD3_DATA3		0x59
+		>;
+	};
+
+	pinctrl_wlan_irq: wlanirqgrp {
+		fsl,pins = <
+			MX7D_PAD_SAI1_TX_SYNC__GPIO6_IO14	0x19
+		>;
+	};
+
+	pinctrl_wlreg_on: wlregongrp {
+		fsl,pins = <
+			MX7D_PAD_SAI1_TX_DATA__GPIO6_IO15	0x19
+		>;
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
