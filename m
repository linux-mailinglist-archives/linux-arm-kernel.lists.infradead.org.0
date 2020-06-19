Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7574C200656
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:30:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2nNf4Qfo6OO4rHnpEYyKkGJ1KBAQwOa7CkVoEfK4GI4=; b=cyyOeu6QUs7EhQ
	Dyi5/FmuEbuhBvm0LdQvpa2s4CjAU2Kh4UQToCwWOL/cjxas4oH4TwtmYUK/NRpIVnQw3+jey32u2
	CPCwrU3psVmXFbXnQvC6GNqwR/5eEKgNxdWARcLjEoQTZaaShkm/qpIEZAniVZm58h4vWWmhWMRju
	ZJur5xuq1L/ieWNSzsIIz5HtWd6d+0eccpAJQYijDvZ7m8mujrotRqOMIUgd3QFU7nTxTV8D5lzad
	joW0gWF4RUxovtV3n/Yr7+zI5m023v8BjvoaiV+MmVaCW1pDLCsgSN2khAwJSZsoZujHZIBZRYlrI
	i1WPaIiV2z946HvZqLDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEI7-0001Dg-Js; Fri, 19 Jun 2020 10:30:36 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEFo-0005AX-Fk; Fri, 19 Jun 2020 10:28:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 546B22A5280
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 7/7] arm64: dts: mt8183: Add krane-sku176 board
Date: Fri, 19 Jun 2020 12:27:57 +0200
Message-Id: <20200619102757.1358675-8-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200619102757.1358675-1-enric.balletbo@collabora.com>
References: <20200619102757.1358675-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_032812_925958_C3F9B7DA 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: erwanaliasr1@gmail.com, drinkcat@chromium.org, devicetree@vger.kernel.org,
 Ben Ho <Ben.Ho@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 matthias.bgg@gmail.com, Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Also known as the Lenovo IdeaPad Duet Chromebook.

There are different krane boards with shared resources, hence a
mt8183-kukui-krane.dtsi was created for easily introduce future new
boards. The same happens with the baseboard codenamed kukui where
different variants, apart from kukui variant can take advantage of the
shared resources.

Signed-off-by: Ben Ho <Ben.Ho@mediatek.com>
[originally created by Ben Ho but adapted and ported to mainline]
Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 arch/arm64/boot/dts/mediatek/Makefile         |   1 +
 .../mediatek/mt8183-kukui-krane-sku176.dts    |  18 +
 .../boot/dts/mediatek/mt8183-kukui-krane.dtsi | 343 ++++++++
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 788 ++++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      |   1 +
 5 files changed, 1151 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku176.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dtsi
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 848218f55bc1d..708fc60fa589a 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -12,4 +12,5 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana-rev7.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-evb.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-krane-sku176.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8516-pumpkin.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku176.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku176.dts
new file mode 100644
index 0000000000000..47113e275cb52
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku176.dts
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2019 Google LLC
+ *
+ * Device-tree for Krane sku176.
+ *
+ * SKU is a 8-bit value (0xb0 == 176):
+ *  - Bits 7..4: Panel ID: 0xb (BOE)
+ *  - Bits 3..0: SKU ID:   0x0 (default)
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-krane.dtsi"
+
+/ {
+	model = "MediaTek krane sku176 board";
+	compatible = "google,krane-sku176", "google,krane", "mediatek,mt8183";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dtsi
new file mode 100644
index 0000000000000..fbc471ccf805f
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dtsi
@@ -0,0 +1,343 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2019 Google LLC
+ */
+
+#include "mt8183-kukui.dtsi"
+
+/ {
+	ppvarn_lcd: ppvarn-lcd {
+		compatible = "regulator-fixed";
+		regulator-name = "ppvarn_lcd";
+		pinctrl-names = "default";
+		pinctrl-0 = <&ppvarn_lcd_en>;
+
+		enable-active-high;
+
+		gpio = <&pio 66 GPIO_ACTIVE_HIGH>;
+	};
+
+	ppvarp_lcd: ppvarp-lcd {
+		compatible = "regulator-fixed";
+		regulator-name = "ppvarp_lcd";
+		pinctrl-names = "default";
+		pinctrl-0 = <&ppvarp_lcd_en>;
+
+		enable-active-high;
+
+		gpio = <&pio 166 GPIO_ACTIVE_HIGH>;
+	};
+
+	pp1800_lcd: pp1800-lcd {
+		compatible = "regulator-fixed";
+		regulator-name = "pp1800_lcd";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pp1800_lcd_en>;
+
+		enable-active-high;
+
+		gpio = <&pio 36 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&bluetooth {
+	firmware-name = "nvm_00440302_i2s_eu.bin";
+};
+
+&i2c0 {
+	status = "okay";
+
+	touchscreen4: touchscreen@5d {
+		compatible = "hid-over-i2c";
+		reg = <0x5d>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&open_touch>;
+
+		interrupt-parent = <&pio>;
+		interrupts = <155 IRQ_TYPE_EDGE_FALLING>;
+
+		post-power-on-delay-ms = <10>;
+		hid-descr-addr = <0x0001>;
+	};
+};
+
+&mt6358_vcama2_reg {
+	regulator-min-microvolt = <2800000>;
+	regulator-max-microvolt = <2800000>;
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c2_pins>;
+	status = "okay";
+	clock-frequency = <400000>;
+
+	eeprom@58 {
+		compatible = "atmel,24c32";
+		reg = <0x58>;
+		pagesize = <32>;
+	};
+};
+
+&i2c4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c4_pins>;
+	status = "okay";
+	clock-frequency = <400000>;
+
+	eeprom@54 {
+		compatible = "atmel,24c32";
+		reg = <0x54>;
+		pagesize = <32>;
+	};
+};
+
+&pio {
+	/* 192 lines */
+	gpio-line-names =
+		"SPI_AP_EC_CS_L",
+		"SPI_AP_EC_MOSI",
+		"SPI_AP_EC_CLK",
+		"I2S3_DO",
+		"USB_PD_INT_ODL",
+		"",
+		"",
+		"",
+		"",
+		"IT6505_HPD_L",
+		"I2S3_TDM_D3",
+		"SOC_I2C6_1V8_SCL",
+		"SOC_I2C6_1V8_SDA",
+		"DPI_D0",
+		"DPI_D1",
+		"DPI_D2",
+		"DPI_D3",
+		"DPI_D4",
+		"DPI_D5",
+		"DPI_D6",
+		"DPI_D7",
+		"DPI_D8",
+		"DPI_D9",
+		"DPI_D10",
+		"DPI_D11",
+		"DPI_HSYNC",
+		"DPI_VSYNC",
+		"DPI_DE",
+		"DPI_CK",
+		"AP_MSDC1_CLK",
+		"AP_MSDC1_DAT3",
+		"AP_MSDC1_CMD",
+		"AP_MSDC1_DAT0",
+		"AP_MSDC1_DAT2",
+		"AP_MSDC1_DAT1",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"OTG_EN",
+		"DRVBUS",
+		"DISP_PWM",
+		"DSI_TE",
+		"LCM_RST_1V8",
+		"AP_CTS_WIFI_RTS",
+		"AP_RTS_WIFI_CTS",
+		"SOC_I2C5_1V8_SCL",
+		"SOC_I2C5_1V8_SDA",
+		"SOC_I2C3_1V8_SCL",
+		"SOC_I2C3_1V8_SDA",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"SOC_I2C1_1V8_SDA",
+		"SOC_I2C0_1V8_SDA",
+		"SOC_I2C0_1V8_SCL",
+		"SOC_I2C1_1V8_SCL",
+		"AP_SPI_H1_MISO",
+		"AP_SPI_H1_CS_L",
+		"AP_SPI_H1_MOSI",
+		"AP_SPI_H1_CLK",
+		"I2S5_BCK",
+		"I2S5_LRCK",
+		"I2S5_DO",
+		"BOOTBLOCK_EN_L",
+		"MT8183_KPCOL0",
+		"SPI_AP_EC_MISO",
+		"UART_DBG_TX_AP_RX",
+		"UART_AP_TX_DBG_RX",
+		"I2S2_MCK",
+		"I2S2_BCK",
+		"CLK_5M_WCAM",
+		"CLK_2M_UCAM",
+		"I2S2_LRCK",
+		"I2S2_DI",
+		"SOC_I2C2_1V8_SCL",
+		"SOC_I2C2_1V8_SDA",
+		"SOC_I2C4_1V8_SCL",
+		"SOC_I2C4_1V8_SDA",
+		"",
+		"SCL8",
+		"SDA8",
+		"FCAM_PWDN_L",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"I2S_PMIC",
+		"I2S_PMIC",
+		"I2S_PMIC",
+		"I2S_PMIC",
+		"I2S_PMIC",
+		"I2S_PMIC",
+		"I2S_PMIC",
+		"I2S_PMIC",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		/*
+		 * AP_FLASH_WP_L is crossystem ABI. Rev1 schematics
+		 * call it BIOS_FLASH_WP_R_L.
+		 */
+		"AP_FLASH_WP_L",
+		"EC_AP_INT_ODL",
+		"IT6505_INT_ODL",
+		"H1_INT_OD_L",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"AP_SPI_FLASH_MISO",
+		"AP_SPI_FLASH_CS_L",
+		"AP_SPI_FLASH_MOSI",
+		"AP_SPI_FLASH_CLK",
+		"DA7219_IRQ",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"";
+
+	ppvarp_lcd_en: ppvarp-lcd-en {
+		pins1 {
+			pinmux = <PINMUX_GPIO66__FUNC_GPIO66>;
+			output-low;
+		};
+	};
+
+	ppvarn_lcd_en: ppvarn-lcd-en {
+		pins1 {
+			pinmux = <PINMUX_GPIO166__FUNC_GPIO166>;
+			output-low;
+		};
+	};
+
+	pp1800_lcd_en: pp1800-lcd-en {
+		pins1 {
+			pinmux = <PINMUX_GPIO36__FUNC_GPIO36>;
+			output-low;
+		};
+	};
+
+	open_touch: open_touch {
+		irq_pin {
+			pinmux = <PINMUX_GPIO155__FUNC_GPIO155>;
+			input-enable;
+			bias-pull-up;
+		};
+
+		rst_pin {
+			pinmux = <PINMUX_GPIO156__FUNC_GPIO156>;
+
+			/*
+			 * The pen driver doesn't currently support  driving
+			 * this reset line.  By specifying output-high here
+			 * we're relying on the fact that this pin has a default
+			 * pulldown at boot (which makes sure the pen was in
+			 * reset if it was powered) and then we set it high here
+			 * to take it out of reset.  Better would be if the pen
+			 * driver could control this and we could remove
+			 * "output-high" here.
+			 */
+			output-high;
+		};
+	};
+};
+
+&qca_wifi {
+	qcom,ath10k-calibration-variant = "LE_Krane";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
new file mode 100644
index 0000000000000..f0a070535b340
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -0,0 +1,788 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (c) 2018 MediaTek Inc.
+ * Author: Ben Ho <ben.ho@mediatek.com>
+ *	   Erin Lo <erin.lo@mediatek.com>
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include "mt8183.dtsi"
+#include "mt6358.dtsi"
+
+/ {
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0 0x40000000 0 0x80000000>;
+	};
+
+	clk32k: oscillator1 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "clk32k";
+	};
+
+	it6505_pp18_reg: regulator0 {
+		compatible = "regulator-fixed";
+		regulator-name = "it6505_pp18";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		gpio = <&pio 178 0>;
+		enable-active-high;
+	};
+
+	lcd_pp3300: regulator1 {
+		compatible = "regulator-fixed";
+		regulator-name = "lcd_pp3300";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	bl_pp5000: regulator2 {
+		compatible = "regulator-fixed";
+		regulator-name = "bl_pp5000";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	mmc1_fixed_power: regulator3 {
+		compatible = "regulator-fixed";
+		regulator-name = "mmc1_power";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	mmc1_fixed_io: regulator4 {
+		compatible = "regulator-fixed";
+		regulator-name = "mmc1_io";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
+
+	pp1800_alw: regulator5 {
+		compatible = "regulator-fixed";
+		regulator-name = "pp1800_alw";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
+
+	pp3300_alw: regulator6 {
+		compatible = "regulator-fixed";
+		regulator-name = "pp3300_alw";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	max98357a: codec0 {
+		compatible = "maxim,max98357a";
+		sdmode-gpios = <&pio 175 0>;
+	};
+
+	btsco: codec1 {
+		compatible = "linux,bt-sco";
+	};
+
+	wifi_pwrseq: wifi-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_pins_pwrseq>;
+
+		/* Toggle WIFI_ENABLE to reset the chip. */
+		reset-gpios = <&pio 119 1>;
+	};
+
+	wifi_wakeup: wifi-wakeup {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_pins_wakeup>;
+
+		wowlan {
+			label = "Wake on WiFi";
+			gpios = <&pio 113 GPIO_ACTIVE_HIGH>;
+			linux,code = <KEY_WAKEUP>;
+			wakeup-source;
+		};
+	};
+
+	tboard_thermistor1: thermal-sensor1 {
+		compatible = "generic-adc-thermal";
+		#thermal-sensor-cells = <0>;
+		io-channels = <&auxadc 0>;
+		io-channel-names = "sensor-channel";
+		temperature-lookup-table = <    (-5000) 4241
+						0 4063
+						5000 3856
+						10000 3621
+						15000 3364
+						20000 3091
+						25000 2810
+						30000 2526
+						35000 2247
+						40000 1982
+						45000 1734
+						50000 1507
+						55000 1305
+						60000 1122
+						65000 964
+						70000 827
+						75000 710
+						80000 606
+						85000 519
+						90000 445
+						95000 382
+						100000 330
+						105000 284
+						110000 245
+						115000 213
+						120000 183
+						125000 161>;
+	};
+
+	tboard_thermistor2: thermal-sensor2 {
+		compatible = "generic-adc-thermal";
+		#thermal-sensor-cells = <0>;
+		io-channels = <&auxadc 1>;
+		io-channel-names = "sensor-channel";
+		temperature-lookup-table = <    (-5000) 4241
+						0 4063
+						5000 3856
+						10000 3621
+						15000 3364
+						20000 3091
+						25000 2810
+						30000 2526
+						35000 2247
+						40000 1982
+						45000 1734
+						50000 1507
+						55000 1305
+						60000 1122
+						65000 964
+						70000 827
+						75000 710
+						80000 606
+						85000 519
+						90000 445
+						95000 382
+						100000 330
+						105000 284
+						110000 245
+						115000 213
+						120000 183
+						125000 161>;
+	};
+};
+
+&auxadc {
+	status = "okay";
+};
+
+&cpu0 {
+	proc-supply = <&mt6358_vproc12_reg>;
+};
+
+&cpu1 {
+	proc-supply = <&mt6358_vproc12_reg>;
+};
+
+&cpu2 {
+	proc-supply = <&mt6358_vproc12_reg>;
+};
+
+&cpu3 {
+	proc-supply = <&mt6358_vproc12_reg>;
+};
+
+&cpu4 {
+	proc-supply = <&mt6358_vproc11_reg>;
+};
+
+&cpu5 {
+	proc-supply = <&mt6358_vproc11_reg>;
+};
+
+&cpu6 {
+	proc-supply = <&mt6358_vproc11_reg>;
+};
+
+&cpu7 {
+	proc-supply = <&mt6358_vproc11_reg>;
+};
+
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0_pins>;
+	status = "okay";
+	clock-frequency = <400000>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c1_pins>;
+	status = "okay";
+	clock-frequency = <100000>;
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c3_pins>;
+	status = "okay";
+	clock-frequency = <100000>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+};
+
+&i2c5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c5_pins>;
+	status = "okay";
+	clock-frequency = <100000>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+};
+
+&i2c6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c6_pins>;
+	status = "okay";
+	clock-frequency = <100000>;
+};
+
+&mmc0 {
+	status = "okay";
+	pinctrl-names = "default", "state_uhs";
+	pinctrl-0 = <&mmc0_pins_default>;
+	pinctrl-1 = <&mmc0_pins_uhs>;
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	cap-mmc-highspeed;
+	mmc-hs200-1_8v;
+	mmc-hs400-1_8v;
+	cap-mmc-hw-reset;
+	no-sdio;
+	no-sd;
+	hs400-ds-delay = <0x12814>;
+	vmmc-supply = <&mt6358_vemc_reg>;
+	vqmmc-supply = <&mt6358_vio18_reg>;
+	assigned-clocks = <&topckgen CLK_TOP_MUX_MSDC50_0>;
+	assigned-clock-parents = <&topckgen CLK_TOP_MSDCPLL_CK>;
+	non-removable;
+};
+
+&mmc1 {
+	status = "okay";
+	pinctrl-names = "default", "state_uhs";
+	pinctrl-0 = <&mmc1_pins_default>;
+	pinctrl-1 = <&mmc1_pins_uhs>;
+	vmmc-supply = <&mmc1_fixed_power>;
+	vqmmc-supply = <&mmc1_fixed_io>;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	bus-width = <4>;
+	max-frequency = <200000000>;
+	drv-type = <2>;
+	cap-sd-highspeed;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	keep-power-in-suspend;
+	enable-sdio-wakeup;
+	cap-sdio-irq;
+	non-removable;
+	no-mmc;
+	no-sd;
+	assigned-clocks = <&topckgen CLK_TOP_MUX_MSDC30_1>;
+	assigned-clock-parents = <&topckgen CLK_TOP_MSDCPLL_D2>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	qca_wifi: qca-wifi@1 {
+		compatible = "qcom,ath10k";
+		reg = <1>;
+	};
+};
+
+&mt6358_vdram2_reg {
+	regulator-always-on;
+};
+
+&mt6358codec {
+	Avdd-supply = <&mt6358_vaud28_reg>;
+};
+
+&mt6358_vsim1_reg {
+	regulator-min-microvolt = <2700000>;
+	regulator-max-microvolt = <2700000>;
+};
+
+&mt6358_vsim2_reg {
+	regulator-min-microvolt = <2700000>;
+	regulator-max-microvolt = <2700000>;
+};
+
+&pio {
+	bt_pins: bt-pins {
+		pins_bt_en {
+			pinmux = <PINMUX_GPIO120__FUNC_GPIO120>;
+			output-low;
+		};
+	};
+
+	ec_ap_int_odl: ec_ap_int_odl {
+		pins1 {
+			pinmux = <PINMUX_GPIO151__FUNC_GPIO151>;
+			input-enable;
+			bias-pull-up;
+		};
+	};
+
+	h1_int_od_l: h1_int_od_l {
+		pins1 {
+			pinmux = <PINMUX_GPIO153__FUNC_GPIO153>;
+			input-enable;
+		};
+	};
+
+	i2c0_pins: i2c0 {
+		pins_bus {
+			pinmux = <PINMUX_GPIO82__FUNC_SDA0>,
+				 <PINMUX_GPIO83__FUNC_SCL0>;
+			mediatek,pull-up-adv = <3>;
+			mediatek,drive-strength-adv = <00>;
+		};
+	};
+
+	i2c1_pins: i2c1 {
+		pins_bus {
+			pinmux = <PINMUX_GPIO81__FUNC_SDA1>,
+				 <PINMUX_GPIO84__FUNC_SCL1>;
+			mediatek,pull-up-adv = <3>;
+			mediatek,drive-strength-adv = <00>;
+		};
+	};
+
+	i2c2_pins: i2c2 {
+		pins_bus {
+			pinmux = <PINMUX_GPIO103__FUNC_SCL2>,
+				 <PINMUX_GPIO104__FUNC_SDA2>;
+			bias-disable;
+			mediatek,drive-strength-adv = <00>;
+		};
+	};
+
+	i2c3_pins: i2c3 {
+		pins_bus {
+			pinmux = <PINMUX_GPIO50__FUNC_SCL3>,
+				 <PINMUX_GPIO51__FUNC_SDA3>;
+			mediatek,pull-up-adv = <3>;
+			mediatek,drive-strength-adv = <00>;
+		};
+	};
+
+	i2c4_pins: i2c4 {
+		pins_bus {
+			pinmux = <PINMUX_GPIO105__FUNC_SCL4>,
+				 <PINMUX_GPIO106__FUNC_SDA4>;
+			bias-disable;
+			mediatek,drive-strength-adv = <00>;
+		};
+	};
+
+	i2c5_pins: i2c5 {
+		pins_bus {
+			pinmux = <PINMUX_GPIO48__FUNC_SCL5>,
+				 <PINMUX_GPIO49__FUNC_SDA5>;
+			mediatek,pull-up-adv = <3>;
+			mediatek,drive-strength-adv = <00>;
+		};
+	};
+
+	i2c6_pins: i2c6 {
+		pins_bus {
+			pinmux = <PINMUX_GPIO11__FUNC_SCL6>,
+				 <PINMUX_GPIO12__FUNC_SDA6>;
+			bias-disable;
+		};
+	};
+
+	mmc0_pins_default: mmc0-pins-default {
+		pins_cmd_dat {
+			pinmux = <PINMUX_GPIO123__FUNC_MSDC0_DAT0>,
+				 <PINMUX_GPIO128__FUNC_MSDC0_DAT1>,
+				 <PINMUX_GPIO125__FUNC_MSDC0_DAT2>,
+				 <PINMUX_GPIO132__FUNC_MSDC0_DAT3>,
+				 <PINMUX_GPIO126__FUNC_MSDC0_DAT4>,
+				 <PINMUX_GPIO129__FUNC_MSDC0_DAT5>,
+				 <PINMUX_GPIO127__FUNC_MSDC0_DAT6>,
+				 <PINMUX_GPIO130__FUNC_MSDC0_DAT7>,
+				 <PINMUX_GPIO122__FUNC_MSDC0_CMD>;
+			input-enable;
+			drive-strength = <MTK_DRIVE_14mA>;
+			mediatek,pull-up-adv = <01>;
+		};
+
+		pins_clk {
+			pinmux = <PINMUX_GPIO124__FUNC_MSDC0_CLK>;
+			drive-strength = <MTK_DRIVE_14mA>;
+			mediatek,pull-down-adv = <10>;
+		};
+
+		pins_rst {
+			pinmux = <PINMUX_GPIO133__FUNC_MSDC0_RSTB>;
+			drive-strength = <MTK_DRIVE_14mA>;
+			mediatek,pull-down-adv = <01>;
+		};
+	};
+
+	mmc0_pins_uhs: mmc0-pins-uhs {
+		pins_cmd_dat {
+			pinmux = <PINMUX_GPIO123__FUNC_MSDC0_DAT0>,
+				 <PINMUX_GPIO128__FUNC_MSDC0_DAT1>,
+				 <PINMUX_GPIO125__FUNC_MSDC0_DAT2>,
+				 <PINMUX_GPIO132__FUNC_MSDC0_DAT3>,
+				 <PINMUX_GPIO126__FUNC_MSDC0_DAT4>,
+				 <PINMUX_GPIO129__FUNC_MSDC0_DAT5>,
+				 <PINMUX_GPIO127__FUNC_MSDC0_DAT6>,
+				 <PINMUX_GPIO130__FUNC_MSDC0_DAT7>,
+				 <PINMUX_GPIO122__FUNC_MSDC0_CMD>;
+			input-enable;
+			drive-strength = <MTK_DRIVE_14mA>;
+			mediatek,pull-up-adv = <01>;
+		};
+
+		pins_clk {
+			pinmux = <PINMUX_GPIO124__FUNC_MSDC0_CLK>;
+			drive-strength = <MTK_DRIVE_14mA>;
+			mediatek,pull-down-adv = <10>;
+		};
+
+		pins_ds {
+			pinmux = <PINMUX_GPIO131__FUNC_MSDC0_DSL>;
+			drive-strength = <MTK_DRIVE_14mA>;
+			mediatek,pull-down-adv = <10>;
+		};
+
+		pins_rst {
+			pinmux = <PINMUX_GPIO133__FUNC_MSDC0_RSTB>;
+			drive-strength = <MTK_DRIVE_14mA>;
+			mediatek,pull-up-adv = <01>;
+		};
+	};
+
+	mmc1_pins_default: mmc1-pins-default {
+		pins_cmd_dat {
+			pinmux = <PINMUX_GPIO31__FUNC_MSDC1_CMD>,
+				 <PINMUX_GPIO32__FUNC_MSDC1_DAT0>,
+				 <PINMUX_GPIO34__FUNC_MSDC1_DAT1>,
+				 <PINMUX_GPIO33__FUNC_MSDC1_DAT2>,
+				 <PINMUX_GPIO30__FUNC_MSDC1_DAT3>;
+			input-enable;
+			mediatek,pull-up-adv = <10>;
+		};
+
+		pins_clk {
+			pinmux = <PINMUX_GPIO29__FUNC_MSDC1_CLK>;
+			input-enable;
+			mediatek,pull-down-adv = <10>;
+		};
+	};
+
+	mmc1_pins_uhs: mmc1-pins-uhs {
+		pins_cmd_dat {
+			pinmux = <PINMUX_GPIO31__FUNC_MSDC1_CMD>,
+				 <PINMUX_GPIO32__FUNC_MSDC1_DAT0>,
+				 <PINMUX_GPIO34__FUNC_MSDC1_DAT1>,
+				 <PINMUX_GPIO33__FUNC_MSDC1_DAT2>,
+				 <PINMUX_GPIO30__FUNC_MSDC1_DAT3>;
+			drive-strength = <MTK_DRIVE_6mA>;
+			input-enable;
+			mediatek,pull-up-adv = <10>;
+		};
+
+		pins_clk {
+			pinmux = <PINMUX_GPIO29__FUNC_MSDC1_CLK>;
+			drive-strength = <MTK_DRIVE_8mA>;
+			mediatek,pull-down-adv = <10>;
+			input-enable;
+		};
+	};
+
+	spi0_pins: spi0 {
+		pins_spi{
+			pinmux = <PINMUX_GPIO85__FUNC_SPI0_MI>,
+				 <PINMUX_GPIO86__FUNC_GPIO86>,
+				 <PINMUX_GPIO87__FUNC_SPI0_MO>,
+				 <PINMUX_GPIO88__FUNC_SPI0_CLK>;
+			bias-disable;
+		};
+	};
+
+	spi1_pins: spi1 {
+		pins_spi{
+			pinmux = <PINMUX_GPIO161__FUNC_SPI1_A_MI>,
+				 <PINMUX_GPIO162__FUNC_SPI1_A_CSB>,
+				 <PINMUX_GPIO163__FUNC_SPI1_A_MO>,
+				 <PINMUX_GPIO164__FUNC_SPI1_A_CLK>;
+			bias-disable;
+		};
+	};
+
+	spi2_pins: spi2 {
+		pins_spi{
+			pinmux = <PINMUX_GPIO0__FUNC_SPI2_CSB>,
+				 <PINMUX_GPIO1__FUNC_SPI2_MO>,
+				 <PINMUX_GPIO2__FUNC_SPI2_CLK>;
+			bias-disable;
+		};
+		pins_spi_mi {
+			pinmux = <PINMUX_GPIO94__FUNC_SPI2_MI>;
+			mediatek,pull-down-adv = <00>;
+		};
+	};
+
+	spi3_pins: spi3 {
+		pins_spi{
+			pinmux = <PINMUX_GPIO21__FUNC_SPI3_MI>,
+				 <PINMUX_GPIO22__FUNC_SPI3_CSB>,
+				 <PINMUX_GPIO23__FUNC_SPI3_MO>,
+				 <PINMUX_GPIO24__FUNC_SPI3_CLK>;
+			bias-disable;
+		};
+	};
+
+	spi4_pins: spi4 {
+		pins_spi{
+			pinmux = <PINMUX_GPIO17__FUNC_SPI4_MI>,
+				 <PINMUX_GPIO18__FUNC_SPI4_CSB>,
+				 <PINMUX_GPIO19__FUNC_SPI4_MO>,
+				 <PINMUX_GPIO20__FUNC_SPI4_CLK>;
+			bias-disable;
+		};
+	};
+
+	spi5_pins: spi5 {
+		pins_spi{
+			pinmux = <PINMUX_GPIO13__FUNC_SPI5_MI>,
+				 <PINMUX_GPIO14__FUNC_SPI5_CSB>,
+				 <PINMUX_GPIO15__FUNC_SPI5_MO>,
+				 <PINMUX_GPIO16__FUNC_SPI5_CLK>;
+			bias-disable;
+		};
+	};
+
+	uart0_pins_default: uart0-pins-default {
+		pins_rx {
+			pinmux = <PINMUX_GPIO95__FUNC_URXD0>;
+			input-enable;
+			bias-pull-up;
+		};
+		pins_tx {
+			pinmux = <PINMUX_GPIO96__FUNC_UTXD0>;
+		};
+	};
+
+	uart1_pins_default: uart1-pins-default {
+		pins_rx {
+			pinmux = <PINMUX_GPIO121__FUNC_URXD1>;
+			input-enable;
+			bias-pull-up;
+		};
+		pins_tx {
+			pinmux = <PINMUX_GPIO115__FUNC_UTXD1>;
+		};
+		pins_rts {
+			pinmux = <PINMUX_GPIO47__FUNC_URTS1>;
+			output-enable;
+		};
+		pins_cts {
+			pinmux = <PINMUX_GPIO46__FUNC_UCTS1>;
+			input-enable;
+		};
+	};
+
+	uart1_pins_sleep: uart1-pins-sleep {
+		pins_rx {
+			pinmux = <PINMUX_GPIO121__FUNC_GPIO121>;
+			input-enable;
+			bias-pull-up;
+		};
+		pins_tx {
+			pinmux = <PINMUX_GPIO115__FUNC_UTXD1>;
+		};
+		pins_rts {
+			pinmux = <PINMUX_GPIO47__FUNC_URTS1>;
+			output-enable;
+		};
+		pins_cts {
+			pinmux = <PINMUX_GPIO46__FUNC_UCTS1>;
+			input-enable;
+		};
+	};
+
+	wifi_pins_pwrseq: wifi-pins-pwrseq {
+		pins_wifi_enable {
+			pinmux = <PINMUX_GPIO119__FUNC_GPIO119>;
+			output-low;
+		};
+	};
+
+	wifi_pins_wakeup: wifi-pins-wakeup {
+		pins_wifi_wakeup {
+			pinmux = <PINMUX_GPIO113__FUNC_GPIO113>;
+			input-enable;
+		};
+	};
+};
+
+&soc_data {
+	status = "okay";
+};
+
+&spi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi0_pins>;
+	mediatek,pad-select = <0>;
+	status = "okay";
+	cs-gpios = <&pio 86 GPIO_ACTIVE_LOW>;
+
+	cr50@0 {
+		compatible = "google,cr50";
+		reg = <0>;
+		spi-max-frequency = <1000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&h1_int_od_l>;
+		interrupt-parent = <&pio>;
+		interrupts = <153 IRQ_TYPE_EDGE_RISING>;
+	};
+};
+
+&spi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi1_pins>;
+	mediatek,pad-select = <0>;
+	status = "okay";
+
+	w25q64dw: spi-flash@0 {
+		compatible = "winbond,w25q64dw", "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <25000000>;
+	};
+};
+
+&spi2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi2_pins>;
+	mediatek,pad-select = <0>;
+	status = "okay";
+
+	cros_ec: cros-ec@0 {
+		compatible = "google,cros-ec-spi";
+		reg = <0>;
+		spi-max-frequency = <3000000>;
+		interrupt-parent = <&pio>;
+		interrupts = <151 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ec_ap_int_odl>;
+
+		i2c_tunnel: i2c-tunnel {
+			compatible = "google,cros-ec-i2c-tunnel";
+			google,remote-bus = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		usbc_extcon: extcon0 {
+			compatible = "google,extcon-usbc-cros-ec";
+			google,usb-port-id = <0>;
+		};
+	};
+};
+
+&spi3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi3_pins>;
+	mediatek,pad-select = <0>;
+	status = "disabled";
+};
+
+&spi4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi4_pins>;
+	mediatek,pad-select = <0>;
+	status = "disabled";
+};
+
+&spi5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi5_pins>;
+	mediatek,pad-select = <0>;
+	status = "disabled";
+};
+
+&ssusb {
+	dr_mode = "host";
+	wakeup-source;
+	vusb33-supply = <&mt6358_vusb_reg>;
+	status = "okay";
+};
+
+&u3phy {
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pins_default>;
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&uart1_pins_default>;
+	pinctrl-1 = <&uart1_pins_sleep>;
+	status = "okay";
+	interrupts-extended = <&sysirq GIC_SPI 92 IRQ_TYPE_LEVEL_LOW>,
+			      <&pio 121 IRQ_TYPE_EDGE_FALLING>;
+
+	bluetooth: bluetooth {
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_pins>;
+		status = "okay";
+		compatible = "qcom,qca6174-bt";
+		enable-gpios = <&pio 120 0>;
+		clocks = <&clk32k>;
+		firmware-name = "nvm_00440302_i2s.bin";
+	};
+};
+
+&usb_host {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	vusb33-supply = <&mt6358_vusb_reg>;
+	status = "okay";
+
+	hub@1 {
+		compatible = "usb5e3,610";
+		reg = <1>;
+	};
+};
+
+#include <arm/cros-ec-keyboard.dtsi>
+#include <arm/cros-ec-sbs.dtsi>
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index a1576f1b5a447..689bce13e0165 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -719,6 +719,7 @@ u3phy: usb-phy@11f40000 {
 			compatible = "mediatek,mt8183-tphy",
 				     "mediatek,generic-tphy-v2";
 			#address-cells = <1>;
+			#phy-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0 0 0x11f40000 0x1000>;
 			status = "okay";
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
