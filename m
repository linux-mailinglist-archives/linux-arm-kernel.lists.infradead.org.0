Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17723169583
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 04:17:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gkUPeIG7Uwsd9TdEgVsYtKuLklYUIzZr5/ZJPL9m360=; b=tr6SSLz3C+KLL1
	LXhFZfW2XWuUXUDBXlN1KQTgoR/KeMWe6yXVxMgiTmXtvXgQG5dA5Lq+YEjB87uJpl+h7V8lp16Lg
	FJ0lhDwQHPtT2cnBVGpIralUFBjJi9w+Ay5joeKIhGFwM6/LD1J7CQeWsD8CemuRHVpSXXYBtlem8
	KtXHsFp3kio1hfWPtc+8gxUK/3iPtDIQ839OGFyDZI+4iIcHSuXz43IqCVcHSdS6jZ0FRdKwYrqmb
	u1YsTk/nULsUaIoD9TEm3LaDZK6R4HgVgHdcAHK53MUrxueuHNSt5CounnKBks91xA9Aege3g9qsl
	deXq4pC20eD3pJj/+G1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5hle-0007wn-JH; Sun, 23 Feb 2020 03:17:18 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5hkh-0007GI-3P
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 03:16:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582427777; bh=6j0DxbJ/V8IgRplqMfc5J/OcLS7lseeEJ0/xhXqA518=;
 h=From:To:Cc:Subject:Date:References:From;
 b=ij3YSJNVl2Kwdb4KXuHt4M1Mo1dqGLuitZ/A6Xgr/T+IeMBFT6Vcacv9PBjodzmIY
 VDHLk2JDXf8c1GhPWGWUchZFVkXS9dCkJgB1CYpwWbe7CrKXvOVkEY6aQtLwGR7Kc3
 5i4DpQIwVIPFK6CgQdzxUs44t5Y0ZTqxu2hRhqf0=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 3/3] ARM: dts: sun5i: Add PocketBook Touch Lux 3 support
Date: Sun, 23 Feb 2020 04:16:14 +0100
Message-Id: <20200223031614.515563-4-megous@megous.com>
In-Reply-To: <20200223031614.515563-1-megous@megous.com>
References: <20200223031614.515563-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_191619_485175_00AC6950 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 Stephan Gerhold <stephan@gerhold.net>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Corentin Labbe <clabbe@baylibre.com>, Sunil Mohan Adapa <sunil@medhas.org>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

What works:

- Serial console
- mmc0, mmc2 (both microSD card slots on the board)
- All buttons (gpio and lradc based)
- Power LED
- PMIC
- RTC
- USB OTG/gadgets mode
- Realtek USB WiFi
- Display backlight
- eInk display SPI NOR flash memory

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 arch/arm/boot/dts/Makefile                    |   1 +
 .../dts/sun5i-a13-pocketbook-touch-lux-3.dts  | 257 ++++++++++++++++++
 2 files changed, 258 insertions(+)
 create mode 100644 arch/arm/boot/dts/sun5i-a13-pocketbook-touch-lux-3.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index d6546d2676b9d..ef732a31e4352 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1056,6 +1056,7 @@ dtb-$(CONFIG_MACH_SUN5I) += \
 	sun5i-a13-licheepi-one.dtb \
 	sun5i-a13-olinuxino.dtb \
 	sun5i-a13-olinuxino-micro.dtb \
+	sun5i-a13-pocketbook-touch-lux-3.dtb \
 	sun5i-a13-q8-tablet.dtb \
 	sun5i-a13-utoo-p66.dtb \
 	sun5i-gr8-chip-pro.dtb \
diff --git a/arch/arm/boot/dts/sun5i-a13-pocketbook-touch-lux-3.dts b/arch/arm/boot/dts/sun5i-a13-pocketbook-touch-lux-3.dts
new file mode 100644
index 0000000000000..e9ef97c9c893b
--- /dev/null
+++ b/arch/arm/boot/dts/sun5i-a13-pocketbook-touch-lux-3.dts
@@ -0,0 +1,257 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/*
+ * Copyright 2019 Ondrej Jirman <megous@megous.com>
+ */
+
+/dts-v1/;
+#include "sun5i-a13.dtsi"
+#include "sunxi-common-regulators.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/pwm/pwm.h>
+
+/ {
+	model = "PocketBook Touch Lux 3";
+	compatible = "pocketbook,touch-lux-3", "allwinner,sun5i-a13";
+
+	aliases {
+		serial0 = &uart1;
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
+		i2c2 = &i2c2;
+	};
+
+	backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm 0 50000 PWM_POLARITY_INVERTED>;
+		enable-gpios = <&pio 1 4 GPIO_ACTIVE_HIGH>; /* PB4 */
+		brightness-levels = <0 10 20 30 40 50 60 70 80 90 100>;
+		default-brightness-level = <8>;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		power {
+			gpios = <&pio 4 8 GPIO_ACTIVE_LOW>; /* PE8 */
+			default-state = "on";
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		autorepeat;
+		label = "GPIO Keys";
+
+		key-right {
+			label = "Right";
+			linux,code = <KEY_RIGHT>;
+			gpios = <&pio 6 9 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>; /* PG9 */
+		};
+
+		key-left {
+			label = "Left";
+			linux,code = <KEY_LEFT>;
+			gpios = <&pio 6 10 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>; /* PG10 */
+		};
+	};
+
+	reg_1v8: regulator-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd-1v8-nor-ctp";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		gpio = <&pio 2 15 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_1v8_nor: regulator-nor {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd-nor";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		gpio = <&pio 2 14 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&reg_1v8>;
+		regulator-always-on;
+	};
+
+	reg_1v8_ctp: regulator-ctp {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd-ctp";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		gpio = <&pio 2 13 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&reg_1v8>;
+	};
+
+	reg_3v3_mmc0: regulator-mmc0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd-mmc0";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&pio 4 4 GPIO_ACTIVE_LOW>; /* PE4 */
+		vin-supply = <&reg_vcc3v3>;
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	axp209: pmic@34 {
+		reg = <0x34>;
+		interrupts = <0>;
+	};
+};
+
+#include "axp209.dtsi"
+
+&i2c1 {
+	status = "okay";
+
+	pcf8563: rtc@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+	};
+};
+
+&i2c2 {
+	status = "okay";
+
+	/* Touchpanel is connected here. */
+};
+
+&lradc {
+	vref-supply = <&reg_ldo2>;
+	status = "okay";
+
+	button-200 {
+		label = "Home";
+		linux,code = <KEY_HOME>;
+		channel = <0>;
+		voltage = <200000>;
+	};
+
+	button-400 {
+		label = "Menu";
+		linux,code = <KEY_MENU>;
+		channel = <0>;
+		voltage = <400000>;
+	};
+};
+
+&mmc0 {
+	vmmc-supply = <&reg_3v3_mmc0>;
+	bus-width = <4>;
+	cd-gpios = <&pio 6 0 GPIO_ACTIVE_LOW>; /* PG0 */
+	status = "okay";
+};
+
+&mmc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc2_4bit_pc_pins>;
+	vmmc-supply = <&reg_vcc3v3>;
+	bus-width = <4>;
+	non-removable;
+	status = "okay";
+};
+
+&ohci0 {
+	status = "okay";
+};
+
+&otg_sram {
+	status = "okay";
+};
+
+&pwm {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm0_pin>;
+	status = "okay";
+};
+
+&reg_dcdc2 {
+	regulator-always-on;
+	regulator-min-microvolt = <1000000>;
+	regulator-max-microvolt = <1400000>;
+	regulator-name = "vdd-cpu";
+};
+
+&reg_dcdc3 {
+	regulator-always-on;
+	regulator-min-microvolt = <1200000>;
+	regulator-max-microvolt = <1200000>;
+	regulator-name = "vdd-int-pll";
+};
+
+&reg_ldo1 {
+	regulator-name = "vdd-rtc";
+};
+
+&reg_ldo2 {
+	regulator-always-on;
+	regulator-min-microvolt = <3000000>;
+	regulator-max-microvolt = <3000000>;
+	regulator-name = "avcc";
+};
+
+&reg_ldo3 {
+	regulator-min-microvolt = <3300000>;
+	regulator-max-microvolt = <3300000>;
+	regulator-name = "vcc-wifi";
+	/* We need this otherwise the LDO3 would overload */
+	regulator-soft-start;
+	regulator-ramp-delay = <1600>;
+};
+
+&spi2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi2_pe_pins>, <&spi2_cs0_pe_pin>;
+	status = "okay";
+
+	epd_flash: flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "macronix,mx25u4033", "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <4000000>;
+	};
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_pg_pins>;
+	status = "okay";
+};
+
+&usb_otg {
+	dr_mode = "peripheral";
+	status = "okay";
+};
+
+&battery_power_supply {
+	status = "okay";
+};
+
+&usb_power_supply {
+	status = "okay";
+};
+
+&usbphy {
+	usb1_vbus-supply = <&reg_ldo3>;
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
