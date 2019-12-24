Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6DF5129E06
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 07:16:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oyQdJNeRZNzoxOCj3UP9PmdykQgUe0VgUhVr/dSlUno=; b=htWfmyaA3QwAV8
	tUastgf2fcmjXUktXjiKgzxl++Di3ytBlxVlCtx0hn6ROb1LwFBYGZK/zICTpCWxgdm9U0doIXVRJ
	8udGUJjt/iLfYwrKK5Wy/+e+w7cfSaHB20kCfYH5yQQFucOmDJDEu2u7kVbuKi666ZojOF2KOl0hy
	x/E7GeTIDreJTf9WRgAH2otYe3dOfQXmo/oDfnk/5ELeyJtVo21l8xFbUBCe9f56qMVZKm2fIcdtB
	vLj6D4iwOFmBKodYqNHk/M4kQ7s2jglgJHBi8WEqd15buExOk7/7gz/b2hYBwPfWEDvsyYmd+MyY5
	8sdVHjkuaBXGrX5C04og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijdUL-0006rX-IN; Tue, 24 Dec 2019 06:16:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijdUA-0006r4-5Z
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 06:16:04 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 12ADC20706;
 Tue, 24 Dec 2019 06:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577168161;
 bh=O1kE1O7tx6Vg2jKrvnexKlRn09y/8BHt60xzz6XB4jE=;
 h=From:To:Cc:Subject:Date:From;
 b=xaPxqQR1C+B/90gMrEV7ZctkvUFpJARBplAwR9DinHyEdxs4vy+ndoBLOsssMjlvL
 W3QRYij7bQfPDEWbV51MLZCQW0IshjgwPfU+bWVRR334vZq0R7OocGBmc+1BhSu/KK
 jbkBGPY+PPQnajZHprdY4e5OX20dXgucpfbQWyBg=
Received: by wens.tw (Postfix, from userid 1000)
 id 2F8B55FC87; Tue, 24 Dec 2019 14:15:58 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] ARM: dts: sunxi: Add Libre Computer ALL-H3-IT H5 board
Date: Tue, 24 Dec 2019 14:15:55 +0800
Message-Id: <20191224061555.18358-1-wens@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_221602_250005_A1299EB5 
X-CRM114-Status: GOOD (  20.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The Libre Computer ALL-H3-IT board is a small single board computer that
is roughly the same size as the Raspberry Pi Zero, or around 20% smaller
than a credit card.

The board features:

  - H2, H3, or H5 SoC from Allwinner
  - 2 DDR3 DRAM chips
  - Realtek RTL8821CU based WiFi module
  - 128 Mbit SPI-NOR flash
  - micro-SD card slot
  - micro HDMI video output
  - FPC connector for camera sensor module
  - generic Raspberri-Pi style 40 pin GPIO header
  - additional pin headers for extra USB host ports, ananlog audio and
    IR receiver

Only H5 variant test samples were made available, but the vendor does
have plans to include at least an H3 variant. Thus the device tree is
split much like the ALL-H3-CC, with a common dtsi file for the board
design, and separate dts files including the common board file and the
SoC dtsi file. The other variants will be added as they are made
available.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---

The boards I have are test samples. For some reason the CPU supply
regulator is set at 1.3V, not 1.1V, however the production version will
have it set to 1.1V. The activity LED doesn't work either, but that
seems to be an issue with the LED itself, since the GPIO does toggle
the voltage level measured at the LED.

---
 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 .../boot/dts/sunxi-libretech-all-h3-it.dtsi   | 180 ++++++++++++++++++
 arch/arm64/boot/dts/allwinner/Makefile        |   1 +
 .../sun50i-h5-libretech-all-h3-it.dts         |  11 ++
 4 files changed, 197 insertions(+)
 create mode 100644 arch/arm/boot/dts/sunxi-libretech-all-h3-it.dtsi
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h5-libretech-all-h3-it.dts

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index eaa042fc090f..a2edf5299e48 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -342,6 +342,11 @@ properties:
           - const: libretech,all-h3-cc-h5
           - const: allwinner,sun50i-h5
 
+      - description: Libre Computer Board ALL-H3-IT H5
+        items:
+          - const: libretech,all-h3-it-h5
+          - const: allwinner,sun50i-h5
+
       - description: Lichee Pi One
         items:
           - const: licheepi,licheepi-one
diff --git a/arch/arm/boot/dts/sunxi-libretech-all-h3-it.dtsi b/arch/arm/boot/dts/sunxi-libretech-all-h3-it.dtsi
new file mode 100644
index 000000000000..204fba3614f9
--- /dev/null
+++ b/arch/arm/boot/dts/sunxi-libretech-all-h3-it.dtsi
@@ -0,0 +1,180 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+// Copyright (C) 2019 Chen-Yu Tsai <wens@csie.org>
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	aliases {
+		serial0 = &uart0;
+		spi0 = &spi0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	connector {
+		compatible = "hdmi-connector";
+		type = "d";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		status_led {
+			label = "librecomputer:blue:status";
+			gpios = <&pio 0 7 GPIO_ACTIVE_HIGH>; /* PA7 */
+		};
+	};
+
+	reg_vcc3v3: vcc3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&reg_vcc5v0>;
+	};
+
+	/* This represents the board's 5V input */
+	reg_vcc5v0: vcc5v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	reg_vcc_dram: vcc-dram {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc-dram";
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&reg_vcc5v0>;
+		gpio = <&r_pio 0 9 GPIO_ACTIVE_HIGH>; /* PL9 */
+		enable-active-high;
+	};
+
+	reg_vcc_io: vcc-io {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc-io";
+		/* This is simply a MOSFET switch */
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&reg_vcc3v3>;
+		gpio = <&r_pio 0 5 GPIO_ACTIVE_LOW>; /* PL5 */
+	};
+
+	reg_vcc_usbwifi: vcc-usbwifi {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc-usbwifi";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&reg_vcc5v0>;
+		gpio = <&pio 6 4 GPIO_ACTIVE_HIGH>; /* PG4 */
+		enable-active-high;
+	};
+
+	reg_vdd_cpux: vdd-cpux {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd-cpux";
+		regulator-min-microvolt = <1100000>;
+		regulator-max-microvolt = <1100000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&reg_vcc5v0>;
+		gpio = <&r_pio 0 8 GPIO_ACTIVE_HIGH>; /* PL8 */
+		enable-active-high;
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&reg_vdd_cpux>;
+};
+
+&cpu1 {
+	cpu-supply = <&reg_vdd_cpux>;
+};
+
+&cpu2 {
+	cpu-supply = <&reg_vdd_cpux>;
+};
+
+&cpu3 {
+	cpu-supply = <&reg_vdd_cpux>;
+};
+
+&de {
+	status = "okay";
+};
+
+&ehci1 {
+	status = "okay";
+};
+
+&hdmi {
+	status = "okay";
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
+&mmc0 {
+	vmmc-supply = <&reg_vcc_io>;
+	bus-width = <4>;
+	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 */
+	status = "okay";
+};
+
+&pio {
+	vcc-pa-supply = <&reg_vcc_io>;
+	vcc-pc-supply = <&reg_vcc_io>;
+	vcc-pd-supply = <&reg_vcc_io>;
+	vcc-pe-supply = <&reg_vcc_io>;
+	vcc-pf-supply = <&reg_vcc_io>;
+	vcc-pg-supply = <&reg_vcc_io>;
+};
+
+&r_pio {
+	vcc-pl-supply = <&reg_vcc3v3>;
+};
+
+&spi0 {
+	status = "okay";
+
+	spiflash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+	};
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pa_pins>;
+	status = "okay";
+};
+
+&usb_otg {
+	dr_mode = "peripheral";
+	status = "okay";
+};
+
+&usbphy {
+	usb1_vbus-supply = <&reg_vcc_usbwifi>;
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index 62bc43f187bf..a7fdf04ffca2 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -15,6 +15,7 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-bananapi-m2-plus.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-bananapi-m2-plus-v1.2.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-emlid-neutis-n5-devboard.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-libretech-all-h3-cc.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-libretech-all-h3-it.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-nanopi-neo2.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-nanopi-neo-plus2.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-orangepi-pc2.dtb
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-libretech-all-h3-it.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-libretech-all-h3-it.dts
new file mode 100644
index 000000000000..e59d68b525fc
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-libretech-all-h3-it.dts
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+// Copyright (C) 2019 Chen-Yu Tsai <wens@csie.org>
+
+/dts-v1/;
+#include "sun50i-h5.dtsi"
+#include <arm/sunxi-libretech-all-h3-it.dtsi>
+
+/ {
+	model = "Libre Computer Board ALL-H3-IT H5";
+	compatible = "libretech,all-h3-it-h5", "allwinner,sun50i-h5";
+};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
