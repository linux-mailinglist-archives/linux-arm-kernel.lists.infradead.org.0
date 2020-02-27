Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F154E170DDA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 02:28:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cfkc0nu99RyfYA7oReUFB17WbLS0YITpSQ9T1U9hNPg=; b=A4mOe7CZDDxLZ1
	q6lohsgk8tMGd2OE1vBs7PZPoCHxDQ+eMNw5K7ifS3R8FlSJxjCkG4/oMnSR6cw2BvATA/1/77EiM
	7tD6Sz0woz2wJNsdNXt/NgJhiiwqckGZ3iRMfSafBOk+h32gR7tUKKywa5SUmhGrbbbdjUry8n+ab
	zj49ie+BFmtCVODFrnxi9LuSIU6OXwf7z8kSZZZkPUlALkM+M2TyoAOc7kI7fcL15pQST1b8+tkDa
	84cFlBCw1q7QV6U0C5Dqff5EZVds+QZcgvfhXY5/Unhm9DoqDPCxmIhYE/jXGOiBIMkWryhmoG6OJ
	IgN9Pzn2B6z0Bu0ycA/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j77yT-0007vn-Ef; Thu, 27 Feb 2020 01:28:25 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j77xJ-00075f-9p
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 01:27:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582766829; bh=J8bbHHFFiVXk+KIFVHMP6rWhvXgGYVqe5dnI2yTVy0Q=;
 h=From:To:Cc:Subject:Date:References:From;
 b=c/zhcI4Q/hdOGv9GHHR47HZQoInq/X9dC0Cwasi0pcTY0qwTLXZUvRgwBtHz6g77H
 iWSHH/NiE/9GF6avrQFB0rafyU6Ey5OF7QvGRrkJQ1rCY3OI3j4LwwhUb5+zP+JSaQ
 1feHzGoE6btBm+Z2QlFWu+IbuH3X0+AFpAVWwcCc=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 3/3] arm64: dts: allwinner: Add initial support for Pine64
 PinePhone
Date: Thu, 27 Feb 2020 02:26:50 +0100
Message-Id: <20200227012650.1179151-4-megous@megous.com>
In-Reply-To: <20200227012650.1179151-1-megous@megous.com>
References: <20200227012650.1179151-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_172713_512286_B1DC56CD 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Samuel Holland <samuel@sholland.org>, Bhushan Shah <bshah@kde.org>,
 linux-kernel@vger.kernel.org, Luca Weiss <luca@z3ntu.xyz>,
 Martijn Braam <martijn@brixit.nl>,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 devicetree@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

At the moment PinePhone comes in two slightly incompatible variants:

- 1.0: Early Developer Batch
- 1.1: Braveheart Batch

There will be at least one more incompatible variant in the very near
future, so let's start by sharing the dtsi among multiple variants,
right away, even though the HW description doesn't yet include the
different bits.

The differences between 1.0 and 1.1 are: change in pins that control
the flash LED, differences in modem power status signal routing, and
maybe some other subtler things, that have not been determined yet.

This is a basic DT that includes only features that are already
supported by mainline drivers.

Co-developed-by: Samuel Holland <samuel@sholland.org>
Signed-off-by: Samuel Holland <samuel@sholland.org>
Co-developed-by: Martijn Braam <martijn@brixit.nl>
Signed-off-by: Martijn Braam <martijn@brixit.nl>
Co-developed-by: Luca Weiss <luca@z3ntu.xyz>
Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
Signed-off-by: Bhushan Shah <bshah@kde.org>
Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 arch/arm64/boot/dts/allwinner/Makefile        |   2 +
 .../allwinner/sun50i-a64-pinephone-1.0.dts    |  11 +
 .../allwinner/sun50i-a64-pinephone-1.1.dts    |  11 +
 .../dts/allwinner/sun50i-a64-pinephone.dtsi   | 379 ++++++++++++++++++
 4 files changed, 403 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.0.dts
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.1.dts
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi

diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index 6dad63881cd3a..e4d3cd0ac5bb7 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -9,6 +9,8 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-orangepi-win.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pine64-lts.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pine64-plus.dtb sun50i-a64-pine64.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pinebook.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pinephone-1.0.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pinephone-1.1.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pinetab.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-sopine-baseboard.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-teres-i.dtb
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.0.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.0.dts
new file mode 100644
index 0000000000000..0c42272106afa
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.0.dts
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+// Copyright (C) 2020 Ondrej Jirman <megous@megous.com>
+
+/dts-v1/;
+
+#include "sun50i-a64-pinephone.dtsi"
+
+/ {
+	model = "Pine64 PinePhone Developer Batch (1.0)";
+	compatible = "pine64,pinephone-1.0", "allwinner,sun50i-a64";
+};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.1.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.1.dts
new file mode 100644
index 0000000000000..06a775c41664b
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.1.dts
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+// Copyright (C) 2020 Ondrej Jirman <megous@megous.com>
+
+/dts-v1/;
+
+#include "sun50i-a64-pinephone.dtsi"
+
+/ {
+	model = "Pine64 PinePhone Braveheart (1.1)";
+	compatible = "pine64,pinephone-1.1", "allwinner,sun50i-a64";
+};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
new file mode 100644
index 0000000000000..cefda145c3c9d
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
@@ -0,0 +1,379 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+// Copyright (C) 2019 Icenowy Zheng <icenowy@aosc.xyz>
+// Copyright (C) 2020 Martijn Braam <martijn@brixit.nl>
+// Copyright (C) 2020 Ondrej Jirman <megous@megous.com>
+
+#include "sun50i-a64.dtsi"
+#include "sun50i-a64-cpu-opp.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pwm/pwm.h>
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
+	leds {
+		compatible = "gpio-leds";
+
+		blue {
+			function = LED_FUNCTION_INDICATOR;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&pio 3 20 GPIO_ACTIVE_HIGH>; /* PD20 */
+		};
+
+		green {
+			function = LED_FUNCTION_INDICATOR;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&pio 3 18 GPIO_ACTIVE_HIGH>; /* PD18 */
+		};
+
+		red {
+			function = LED_FUNCTION_INDICATOR;
+			color = <LED_COLOR_ID_RED>;
+			gpios = <&pio 3 19 GPIO_ACTIVE_HIGH>; /* PD19 */
+		};
+	};
+
+	speaker_amp: audio-amplifier {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&pio 2 7 GPIO_ACTIVE_HIGH>; /* PC7 */
+		sound-name-prefix = "Speaker Amp";
+	};
+
+	vibrator {
+		compatible = "gpio-vibrator";
+		enable-gpios = <&pio 3 2 GPIO_ACTIVE_HIGH>; /* PD2 */
+		vcc-supply = <&reg_dcdc1>;
+	};
+};
+
+&codec {
+	status = "okay";
+};
+
+&codec_analog {
+	cpvdd-supply = <&reg_eldo1>;
+	status = "okay";
+};
+
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu1 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu2 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu3 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&dai {
+	status = "okay";
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+&ehci1 {
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+
+	/* Magnetometer */
+	lis3mdl@1e {
+		compatible = "st,lis3mdl-magn";
+		reg = <0x1e>;
+		vdd-supply = <&reg_dldo1>;
+		vddio-supply = <&reg_dldo1>;
+	};
+
+	/* Accelerometer/gyroscope */
+	mpu6050@68 {
+		compatible = "invensense,mpu6050";
+		reg = <0x68>;
+		interrupt-parent = <&pio>;
+		interrupts = <7 5 IRQ_TYPE_EDGE_RISING>; /* PH5 */
+		vdd-supply = <&reg_dldo1>;
+		vddio-supply = <&reg_dldo1>;
+	};
+};
+
+/* Connected to pogo pins (external spring based pinheader for user addons) */
+&i2c2 {
+	status = "okay";
+};
+
+&lradc {
+	vref-supply = <&reg_aldo3>;
+	status = "okay";
+
+	button-200 {
+		label = "Volume Up";
+		linux,code = <KEY_VOLUMEUP>;
+		channel = <0>;
+		voltage = <200000>;
+	};
+
+	button-400 {
+		label = "Volume Down";
+		linux,code = <KEY_VOLUMEDOWN>;
+		channel = <0>;
+		voltage = <400000>;
+	};
+};
+
+&mmc0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc0_pins>;
+	vmmc-supply = <&reg_dcdc1>;
+	vqmmc-supply = <&reg_dcdc1>;
+	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 */
+	disable-wp;
+	bus-width = <4>;
+	status = "okay";
+};
+
+&mmc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc2_pins>;
+	vmmc-supply = <&reg_dcdc1>;
+	vqmmc-supply = <&reg_dcdc1>;
+	bus-width = <8>;
+	non-removable;
+	cap-mmc-hw-reset;
+	status = "okay";
+};
+
+&ohci0 {
+	status = "okay";
+};
+
+&ohci1 {
+	status = "okay";
+};
+
+&pio {
+	vcc-pb-supply = <&reg_dcdc1>;
+	vcc-pc-supply = <&reg_dcdc1>;
+	vcc-pd-supply = <&reg_dcdc1>;
+	vcc-pe-supply = <&reg_aldo1>;
+	vcc-pf-supply = <&reg_dcdc1>;
+	vcc-pg-supply = <&reg_dldo4>;
+	vcc-ph-supply = <&reg_dcdc1>;
+};
+
+&r_pio {
+	/*
+	 * FIXME: We can't add that supply for now since it would
+	 * create a circular dependency between pinctrl, the regulator
+	 * and the RSB Bus.
+	 *
+	 * vcc-pl-supply = <&reg_aldo2>;
+	 */
+};
+
+&r_rsb {
+	status = "okay";
+
+	axp803: pmic@3a3 {
+		compatible = "x-powers,axp803";
+		reg = <0x3a3>;
+		interrupt-parent = <&r_intc>;
+		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+	};
+};
+
+#include "axp803.dtsi"
+
+&ac_power_supply {
+	status = "okay";
+};
+
+&battery_power_supply {
+	status = "okay";
+};
+
+&reg_aldo1 {
+	regulator-min-microvolt = <1800000>;
+	regulator-max-microvolt = <1800000>;
+	regulator-name = "dovdd-csi";
+};
+
+&reg_aldo2 {
+	regulator-always-on;
+	regulator-min-microvolt = <1800000>;
+	regulator-max-microvolt = <1800000>;
+	regulator-name = "vcc-pl";
+};
+
+&reg_aldo3 {
+	regulator-always-on;
+	regulator-min-microvolt = <2700000>;
+	regulator-max-microvolt = <3300000>;
+	regulator-name = "vcc-pll-avcc";
+};
+
+&reg_dcdc1 {
+	regulator-always-on;
+	regulator-min-microvolt = <3300000>;
+	regulator-max-microvolt = <3300000>;
+	regulator-name = "vcc-3v3";
+};
+
+&reg_dcdc2 {
+	regulator-always-on;
+	regulator-min-microvolt = <1000000>;
+	regulator-max-microvolt = <1300000>;
+	regulator-name = "vdd-cpux";
+};
+
+/* DCDC3 is polyphased with DCDC2 */
+
+&reg_dcdc5 {
+	regulator-always-on;
+	regulator-min-microvolt = <1200000>;
+	regulator-max-microvolt = <1200000>;
+	regulator-name = "vcc-dram";
+};
+
+&reg_dcdc6 {
+	regulator-always-on;
+	regulator-min-microvolt = <1100000>;
+	regulator-max-microvolt = <1100000>;
+	regulator-name = "vdd-sys";
+};
+
+&reg_dldo1 {
+	regulator-min-microvolt = <3300000>;
+	regulator-max-microvolt = <3300000>;
+	regulator-name = "vcc-dsi-sensor";
+};
+
+&reg_dldo2 {
+	regulator-min-microvolt = <1800000>;
+	regulator-max-microvolt = <1800000>;
+	regulator-name = "vcc-mipi-io";
+};
+
+&reg_dldo3 {
+	regulator-min-microvolt = <2800000>;
+	regulator-max-microvolt = <2800000>;
+	regulator-name = "avdd-csi";
+};
+
+&reg_dldo4 {
+	regulator-min-microvolt = <1800000>;
+	regulator-max-microvolt = <3300000>;
+	regulator-name = "vcc-wifi-io";
+};
+
+&reg_eldo1 {
+	regulator-always-on;
+	regulator-min-microvolt = <1800000>;
+	regulator-max-microvolt = <1800000>;
+	regulator-name = "vcc-lpddr";
+};
+
+&reg_eldo3 {
+	regulator-min-microvolt = <1800000>;
+	regulator-max-microvolt = <1800000>;
+	regulator-name = "dvdd-1v8-csi";
+};
+
+&reg_fldo1 {
+	regulator-min-microvolt = <1200000>;
+	regulator-max-microvolt = <1200000>;
+	regulator-name = "vcc-1v2-hsic";
+};
+
+&reg_fldo2 {
+	regulator-always-on;
+	regulator-min-microvolt = <1100000>;
+	regulator-max-microvolt = <1100000>;
+	regulator-name = "vdd-cpus";
+};
+
+&reg_ldo_io0 {
+	regulator-min-microvolt = <3300000>;
+	regulator-max-microvolt = <3300000>;
+	regulator-name = "vcc-lcd-ctp-stk";
+	status = "okay";
+};
+
+&reg_ldo_io1 {
+	regulator-min-microvolt = <1800000>;
+	regulator-max-microvolt = <1800000>;
+	regulator-name = "vcc-1v8-typec";
+	status = "okay";
+};
+
+&reg_rtc_ldo {
+	regulator-name = "vcc-rtc";
+};
+
+&sound {
+	status = "okay";
+	simple-audio-card,aux-devs = <&codec_analog>, <&speaker_amp>;
+	simple-audio-card,widgets = "Microphone", "Headset Microphone",
+				    "Microphone", "Internal Microphone",
+				    "Headphone", "Headphone Jack",
+				    "Speaker", "Internal Earpiece",
+				    "Speaker", "Internal Speaker";
+	simple-audio-card,routing =
+			"Headphone Jack", "HP",
+			"Internal Earpiece", "EARPIECE",
+			"Internal Speaker", "Speaker Amp OUTL",
+			"Internal Speaker", "Speaker Amp OUTR",
+			"Speaker Amp INL", "LINEOUT",
+			"Speaker Amp INR", "LINEOUT",
+			"Left DAC", "AIF1 Slot 0 Left",
+			"Right DAC", "AIF1 Slot 0 Right",
+			"AIF1 Slot 0 Left ADC", "Left ADC",
+			"AIF1 Slot 0 Right ADC", "Right ADC",
+			"Internal Microphone", "MBIAS",
+			"MIC1", "Internal Microphone",
+			"Headset Microphone", "HBIAS",
+			"MIC2", "Headset Microphone";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pb_pins>;
+	status = "okay";
+};
+
+/* Connected to the modem (hardware flow control can't be used) */
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart3_pins>;
+	status = "okay";
+};
+
+&usb_otg {
+	dr_mode = "peripheral";
+	status = "okay";
+};
+
+&usb_power_supply {
+	status = "okay";
+};
+
+&usbphy {
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
