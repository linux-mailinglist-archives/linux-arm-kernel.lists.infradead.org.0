Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD62E5F61
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 21:58:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ul0xfiBY4K0PejCpWCn6N6FZB+CCVucU5yc//CmXIyk=; b=CWUKHZUs7W+bIe
	rFFv7ItSxH9B3v3a0/i0BCyiS0wAxXYtmYsDI6AX77Cm7skpITGxwHRNMAp3r8IWXsZ2r0IleedyT
	30VKyvDMj4xGt2+ici3pqItrtu51GVaPhORq5t+FC2HrWdROPps47GUjKSz8CJWgWsrwv29ZKn263
	siOqblwSzSP/H72p4QwFBeF6ztXObWrtZodr3crfsePm+LATuwJJNYFbzP7oXZrF1OwvnLCuu0V3g
	eE5MKFYnZamrY1ZOSbOlBq6m95crCOAD70zzvX7s5MzCEbZxpxaKo1tKYT9b2xBrejjMYvDuKEfwz
	TX2M2ZNDPIzHpRKHfQ3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOSCo-0001HU-C4; Sat, 26 Oct 2019 19:58:34 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOSCS-0001FF-Hr
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 19:58:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rKL8JhLT8eWvEjGtjzygiNDahRVhixFttzlTops5r7E=; b=ZzLvaals3m4NANM1qYaT2tXxWK
 WVROQX3m+MOSPXnqZMBJRhpU1ZHytAQ7IXvDpiL+YjsBo+PkV6BOgGDgA5o2GAAZlT24DvE+M45nh
 /ix4co84FJaJimpBgQn08GBYplaEYlgS33F67Q2cU31rbVZSNRW1M57lqhNG+xgQHGWs=;
Received: from p5dc580b6.dip0.t-ipconnect.de ([93.197.128.182] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iOSCA-0006sO-Be; Sat, 26 Oct 2019 21:57:54 +0200
Received: from andi by aktux with local (Exim 4.92)
 (envelope-from <andreas@kemnade.info>)
 id 1iOSC9-0003pK-SZ; Sat, 26 Oct 2019 21:57:53 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, manivannan.sadhasivam@linaro.org,
 andrew.smirnov@gmail.com, marex@denx.de, angus@akkea.ca,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, j.neuschaefer@gmx.net,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH v4 3/3] ARM: dts: imx: add devicetree for Kobo Clara HD
Date: Sat, 26 Oct 2019 21:57:48 +0200
Message-Id: <20191026195748.14562-4-andreas@kemnade.info>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191026195748.14562-1-andreas@kemnade.info>
References: <20191026195748.14562-1-andreas@kemnade.info>
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_125812_746363_FCA4C2DE 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andreas Kemnade <andreas@kemnade.info>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a devicetree for the Kobo Clara HD Ebook reader. It
is on based on boards called "e60k02". It is equipped with an
imx6sll SoC.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
- remove mux container
- underscore -> hyphen in node names
- reorder nodes
- adding pinmux-* properties which are removed from the dtsi

 arch/arm/boot/dts/Makefile                 |   3 +-
 arch/arm/boot/dts/imx6sll-kobo-clarahd.dts | 324 +++++++++++++++++++++
 2 files changed, 326 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/imx6sll-kobo-clarahd.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 9159fa2cea90..a8a235c74c37 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -551,7 +551,8 @@ dtb-$(CONFIG_SOC_IMX6SL) += \
 	imx6sl-evk.dtb \
 	imx6sl-warp.dtb
 dtb-$(CONFIG_SOC_IMX6SLL) += \
-	imx6sll-evk.dtb
+	imx6sll-evk.dtb \
+	imx6sll-kobo-clarahd.dtb
 dtb-$(CONFIG_SOC_IMX6SX) += \
 	imx6sx-nitrogen6sx.dtb \
 	imx6sx-sabreauto.dtb \
diff --git a/arch/arm/boot/dts/imx6sll-kobo-clarahd.dts b/arch/arm/boot/dts/imx6sll-kobo-clarahd.dts
new file mode 100644
index 000000000000..7214d1c98249
--- /dev/null
+++ b/arch/arm/boot/dts/imx6sll-kobo-clarahd.dts
@@ -0,0 +1,324 @@
+// SPDX-License-Identifier: (GPL-2.0)
+/*
+ * Device tree for the Kobo Clara HD ebook reader
+ *
+ * Name on mainboard is: 37NB-E60K00+4A4
+ * Serials start with: E60K02 (a number also seen in
+ * vendor kernel sources)
+ *
+ * This mainboard seems to be equipped with different SoCs.
+ * In the Kobo Clara HD ebook reader it is an i.MX6SLL
+ *
+ * Copyright 2019 Andreas Kemnade
+ * based on works
+ * Copyright 2016 Freescale Semiconductor, Inc.
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/gpio/gpio.h>
+#include "imx6sll.dtsi"
+#include "e60k02.dtsi"
+
+/ {
+	model = "Kobo Clara HD";
+	compatible = "kobo,clarahd", "fsl,imx6sll";
+};
+
+&clks {
+	assigned-clocks = <&clks IMX6SLL_CLK_PLL4_AUDIO_DIV>;
+	assigned-clock-rates = <393216000>;
+};
+
+&cpu0 {
+	arm-supply = <&dcdc3_reg>;
+	soc-supply = <&dcdc1_reg>;
+};
+
+&gpio_keys {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio_keys>;
+};
+
+&i2c1 {
+	pinctrl-names = "default","sleep";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	pinctrl-1 = <&pinctrl_i2c1_sleep>;
+};
+
+&i2c2 {
+	pinctrl-names = "default","sleep";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	pinctrl-1 = <&pinctrl_i2c2_sleep>;
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	pinctrl_gpio_keys: gpio-keysgrp {
+		fsl,pins = <
+			MX6SLL_PAD_SD1_DATA1__GPIO5_IO08	0x17059	/* PWR_SW */
+			MX6SLL_PAD_SD1_DATA4__GPIO5_IO12	0x17059	/* HALL_EN */
+		>;
+	};
+
+	pinctrl_hog: hoggrp {
+		fsl,pins = <
+			MX6SLL_PAD_LCD_DATA00__GPIO2_IO20	0x79
+			MX6SLL_PAD_LCD_DATA01__GPIO2_IO21	0x79
+			MX6SLL_PAD_LCD_DATA02__GPIO2_IO22	0x79
+			MX6SLL_PAD_LCD_DATA03__GPIO2_IO23	0x79
+			MX6SLL_PAD_LCD_DATA04__GPIO2_IO24	0x79
+			MX6SLL_PAD_LCD_DATA05__GPIO2_IO25	0x79
+			MX6SLL_PAD_LCD_DATA06__GPIO2_IO26	0x79
+			MX6SLL_PAD_LCD_DATA07__GPIO2_IO27	0x79
+			MX6SLL_PAD_LCD_DATA08__GPIO2_IO28	0x79
+			MX6SLL_PAD_LCD_DATA09__GPIO2_IO29	0x79
+			MX6SLL_PAD_LCD_DATA10__GPIO2_IO30	0x79
+			MX6SLL_PAD_LCD_DATA11__GPIO2_IO31	0x79
+			MX6SLL_PAD_LCD_DATA12__GPIO3_IO00	0x79
+			MX6SLL_PAD_LCD_DATA13__GPIO3_IO01	0x79
+			MX6SLL_PAD_LCD_DATA14__GPIO3_IO02	0x79
+			MX6SLL_PAD_LCD_DATA15__GPIO3_IO03	0x79
+			MX6SLL_PAD_LCD_DATA16__GPIO3_IO04	0x79
+			MX6SLL_PAD_LCD_DATA17__GPIO3_IO05	0x79
+			MX6SLL_PAD_LCD_DATA18__GPIO3_IO06	0x79
+			MX6SLL_PAD_LCD_DATA19__GPIO3_IO07	0x79
+			MX6SLL_PAD_LCD_DATA20__GPIO3_IO08	0x79
+			MX6SLL_PAD_LCD_DATA21__GPIO3_IO09	0x79
+			MX6SLL_PAD_LCD_DATA22__GPIO3_IO10	0x79
+			MX6SLL_PAD_LCD_DATA23__GPIO3_IO11	0x79
+			MX6SLL_PAD_LCD_CLK__GPIO2_IO15		0x79
+			MX6SLL_PAD_LCD_ENABLE__GPIO2_IO16	0x79
+			MX6SLL_PAD_LCD_HSYNC__GPIO2_IO17	0x79
+			MX6SLL_PAD_LCD_VSYNC__GPIO2_IO18	0x79
+			MX6SLL_PAD_LCD_RESET__GPIO2_IO19	0x79
+			MX6SLL_PAD_KEY_COL3__GPIO3_IO30		0x79
+			MX6SLL_PAD_KEY_ROW7__GPIO4_IO07		0x79
+			MX6SLL_PAD_ECSPI2_MOSI__GPIO4_IO13	0x79
+			MX6SLL_PAD_KEY_COL5__GPIO4_IO02		0x79
+			MX6SLL_PAD_KEY_ROW6__GPIO4_IO05		0x79
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX6SLL_PAD_I2C1_SCL__I2C1_SCL	0x4001f8b1
+			MX6SLL_PAD_I2C1_SDA__I2C1_SDA	0x4001f8b1
+		>;
+	};
+
+	pinctrl_i2c1_sleep: i2c1grp-sleep {
+		fsl,pins = <
+			MX6SLL_PAD_I2C1_SCL__I2C1_SCL	0x400108b1
+			MX6SLL_PAD_I2C1_SDA__I2C1_SDA	0x400108b1
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX6SLL_PAD_I2C2_SCL__I2C2_SCL	0x4001f8b1
+			MX6SLL_PAD_I2C2_SDA__I2C2_SDA	0x4001f8b1
+		>;
+	};
+
+	pinctrl_i2c2_sleep: i2c2grp-sleep {
+		fsl,pins = <
+			MX6SLL_PAD_I2C2_SCL__I2C2_SCL	0x400108b1
+			MX6SLL_PAD_I2C2_SDA__I2C2_SDA	0x400108b1
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX6SLL_PAD_REF_CLK_24M__I2C3_SCL 0x4001f8b1
+			MX6SLL_PAD_REF_CLK_32K__I2C3_SDA 0x4001f8b1
+		>;
+	};
+
+	pinctrl_led: ledgrp {
+		fsl,pins = <
+			MX6SLL_PAD_SD1_DATA6__GPIO5_IO07 0x17059
+		>;
+	};
+
+	pinctrl_lm3630a_bl_gpio: lm3630a-bl-gpiogrp {
+		fsl,pins = <
+			MX6SLL_PAD_EPDC_PWR_CTRL3__GPIO2_IO10	0x10059 /* HWEN */
+		>;
+	};
+
+	pinctrl_ricoh_gpio: ricoh-gpiogrp {
+		fsl,pins = <
+			MX6SLL_PAD_SD1_CLK__GPIO5_IO15	0x1b8b1 /* ricoh619 chg */
+			MX6SLL_PAD_SD1_DATA0__GPIO5_IO11 0x1b8b1 /* ricoh619 irq */
+			MX6SLL_PAD_KEY_COL2__GPIO3_IO28	0x1b8b1 /* ricoh619 bat_low_int */
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX6SLL_PAD_UART1_TXD__UART1_DCE_TX 0x1b0b1
+			MX6SLL_PAD_UART1_RXD__UART1_DCE_RX 0x1b0b1
+		>;
+	};
+
+	pinctrl_usbotg1: usbotg1grp {
+		fsl,pins = <
+			MX6SLL_PAD_EPDC_PWR_COM__USB_OTG1_ID 0x17059
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX6SLL_PAD_SD2_CMD__SD2_CMD		0x17059
+			MX6SLL_PAD_SD2_CLK__SD2_CLK		0x13059
+			MX6SLL_PAD_SD2_DATA0__SD2_DATA0		0x17059
+			MX6SLL_PAD_SD2_DATA1__SD2_DATA1		0x17059
+			MX6SLL_PAD_SD2_DATA2__SD2_DATA2		0x17059
+			MX6SLL_PAD_SD2_DATA3__SD2_DATA3		0x17059
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2grp-100mhz {
+		fsl,pins = <
+			MX6SLL_PAD_SD2_CMD__SD2_CMD		0x170b9
+			MX6SLL_PAD_SD2_CLK__SD2_CLK		0x130b9
+			MX6SLL_PAD_SD2_DATA0__SD2_DATA0		0x170b9
+			MX6SLL_PAD_SD2_DATA1__SD2_DATA1		0x170b9
+			MX6SLL_PAD_SD2_DATA2__SD2_DATA2		0x170b9
+			MX6SLL_PAD_SD2_DATA3__SD2_DATA3		0x170b9
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2grp-200mhz {
+		fsl,pins = <
+			MX6SLL_PAD_SD2_CMD__SD2_CMD		0x170f9
+			MX6SLL_PAD_SD2_CLK__SD2_CLK		0x130f9
+			MX6SLL_PAD_SD2_DATA0__SD2_DATA0		0x170f9
+			MX6SLL_PAD_SD2_DATA1__SD2_DATA1		0x170f9
+			MX6SLL_PAD_SD2_DATA2__SD2_DATA2		0x170f9
+			MX6SLL_PAD_SD2_DATA3__SD2_DATA3		0x170f9
+		>;
+	};
+
+	pinctrl_usdhc2_sleep: usdhc2grp-sleep {
+		fsl,pins = <
+			MX6SLL_PAD_SD2_CMD__GPIO5_IO04		0x100f9
+			MX6SLL_PAD_SD2_CLK__GPIO5_IO05		0x100f9
+			MX6SLL_PAD_SD2_DATA0__GPIO5_IO01	0x100f9
+			MX6SLL_PAD_SD2_DATA1__GPIO4_IO30	0x100f9
+			MX6SLL_PAD_SD2_DATA2__GPIO5_IO03	0x100f9
+			MX6SLL_PAD_SD2_DATA3__GPIO4_IO28	0x100f9
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX6SLL_PAD_SD3_CMD__SD3_CMD	0x11059
+			MX6SLL_PAD_SD3_CLK__SD3_CLK	0x11059
+			MX6SLL_PAD_SD3_DATA0__SD3_DATA0	0x11059
+			MX6SLL_PAD_SD3_DATA1__SD3_DATA1	0x11059
+			MX6SLL_PAD_SD3_DATA2__SD3_DATA2	0x11059
+			MX6SLL_PAD_SD3_DATA3__SD3_DATA3	0x11059
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3grp-100mhz {
+		fsl,pins = <
+			MX6SLL_PAD_SD3_CMD__SD3_CMD	0x170b9
+			MX6SLL_PAD_SD3_CLK__SD3_CLK	0x170b9
+			MX6SLL_PAD_SD3_DATA0__SD3_DATA0	0x170b9
+			MX6SLL_PAD_SD3_DATA1__SD3_DATA1	0x170b9
+			MX6SLL_PAD_SD3_DATA2__SD3_DATA2	0x170b9
+			MX6SLL_PAD_SD3_DATA3__SD3_DATA3	0x170b9
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3grp-200mhz {
+		fsl,pins = <
+			MX6SLL_PAD_SD3_CMD__SD3_CMD	0x170f9
+			MX6SLL_PAD_SD3_CLK__SD3_CLK	0x170f9
+			MX6SLL_PAD_SD3_DATA0__SD3_DATA0	0x170f9
+			MX6SLL_PAD_SD3_DATA1__SD3_DATA1	0x170f9
+			MX6SLL_PAD_SD3_DATA2__SD3_DATA2	0x170f9
+			MX6SLL_PAD_SD3_DATA3__SD3_DATA3	0x170f9
+		>;
+	};
+
+	pinctrl_usdhc3_sleep: usdhc3grp-sleep {
+		fsl,pins = <
+			MX6SLL_PAD_SD3_CMD__GPIO5_IO21	0x100c1
+			MX6SLL_PAD_SD3_CLK__GPIO5_IO18	0x100c1
+			MX6SLL_PAD_SD3_DATA0__GPIO5_IO19	0x100c1
+			MX6SLL_PAD_SD3_DATA1__GPIO5_IO20	0x100c1
+			MX6SLL_PAD_SD3_DATA2__GPIO5_IO16	0x100c1
+			MX6SLL_PAD_SD3_DATA3__GPIO5_IO17	0x100c1
+		>;
+	};
+
+	pinctrl_wifi_power: wifi-powergrp {
+		fsl,pins = <
+			MX6SLL_PAD_SD2_DATA6__GPIO4_IO29	0x10059		/* WIFI_3V3_ON */
+		>;
+	};
+
+	pinctrl_wifi_reset: wifi-resetgrp {
+		fsl,pins = <
+			MX6SLL_PAD_SD2_DATA7__GPIO5_IO00	0x10059		/* WIFI_RST */
+		>;
+	};
+};
+
+&leds {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_led>;
+};
+
+&lm3630a {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lm3630a_bl_gpio>;
+};
+
+&reg_wifi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wifi_power>;
+};
+
+&ricoh619 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ricoh_gpio>;
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+};
+
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz","sleep";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
+	pinctrl-3 = <&pinctrl_usdhc2_sleep>;
+};
+
+&usdhc3 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz","sleep";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	pinctrl-3 = <&pinctrl_usdhc3_sleep>;
+};
+
+&wifi_pwrseq {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wifi_reset>;
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
