Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A494065019
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 04:14:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gw/Ljta0ed39IEnxepn11Y8hxOWFLlJRNIXmeCLS90M=; b=Y0caZyvaUqlA9Y
	Hi1f/nv6aIQZhlcFYJY7x1V/nPx3sTTkxhacwSJKg6nvanBSgAGIfUrusddXeVXhSdZb7xMY2e8hj
	C/UZPzlIXenI9bGKoI6Q4JzL4IswG+skG61s9gdsxVRnogkRRIB6Y9Wz7YY/XWBeK6xv83oqjcWE4
	3u9ziWfF0gVqh01ySQpeWhd1fMRDa1Iui7SHg2USYmp62NnQDV2E68EKv+BiRkRAaT91Kvq+l3ywE
	Kk5JBrDT4ol1ZGncZ4f5VomwXU5Wps18xkFIjoBJqo98lPeIEWF7jISVDTYnWoF6cuEqSIu/SqgmM
	9s172rt7LkI3BmsE1+3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlObg-0007Je-TI; Thu, 11 Jul 2019 02:14:49 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlObR-0007JG-3t; Thu, 11 Jul 2019 02:14:35 +0000
X-UUID: 8ae6597e67e74ae193af8f9b19c59aba-20190710
X-UUID: 8ae6597e67e74ae193af8f9b19c59aba-20190710
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@kernel.org>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 158826919; Wed, 10 Jul 2019 18:14:28 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 10 Jul 2019 19:14:26 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 11 Jul 2019 10:14:24 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 11 Jul 2019 10:14:24 +0800
From: <ryder.lee@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2] arm: dts: mediatek: add basic support for MT7629 SoC
Date: Thu, 11 Jul 2019 10:14:23 +0800
Message-ID: <ca3f4c3c25c3856e75dfb06f6a3b0e764cdc073d.1562750668.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_191433_170375_8C152944 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: devicetree@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Weijie Gao <weijie.gao@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Mark-MC Lee <Mark-MC.Lee@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ryder Lee <ryder.lee@mediatek.com>

This adds basic support for MT7629 reference board.

Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
Changes since v2:
- fix 'no newline at end of file'.
- fix addresses/sizes cells.
- update u3phy0 node.
- add eth/pcie related nodes.
- add the 'fixed-partitions' nodes in flash node.
- remove arm,cpu-registers-not-fw-configured.

Changes since v1:
-Fix unit-address warnings.
-Put all the mmio peripherals under a simple-bus node.
-Drop all the 'partitions' nodes in flash node.
---
 arch/arm/boot/dts/Makefile                |   1 +
 arch/arm/boot/dts/mt7629-rfb.dts          | 263 ++++++++++++
 arch/arm/boot/dts/mt7629.dtsi             | 481 ++++++++++++++++++++++
 include/dt-bindings/reset/mt7629-resets.h |  71 ++++
 4 files changed, 816 insertions(+)
 create mode 100644 arch/arm/boot/dts/mt7629-rfb.dts
 create mode 100644 arch/arm/boot/dts/mt7629.dtsi
 create mode 100644 include/dt-bindings/reset/mt7629-resets.h

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index dab2914fa293..080784da8ae1 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1258,6 +1258,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += \
 	mt7623a-rfb-nand.dtb \
 	mt7623n-rfb-emmc.dtb \
 	mt7623n-bananapi-bpi-r2.dtb \
+	mt7629-rfb.dtb \
 	mt8127-moose.dtb \
 	mt8135-evbp1.dtb
 dtb-$(CONFIG_ARCH_MILBEAUT) += milbeaut-m10v-evb.dtb
diff --git a/arch/arm/boot/dts/mt7629-rfb.dts b/arch/arm/boot/dts/mt7629-rfb.dts
new file mode 100644
index 000000000000..3621b7d2b22a
--- /dev/null
+++ b/arch/arm/boot/dts/mt7629-rfb.dts
@@ -0,0 +1,263 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ * Author: Ryder Lee <ryder.lee@mediatek.com>
+ */
+
+/dts-v1/;
+#include <dt-bindings/input/input.h>
+#include "mt7629.dtsi"
+
+/ {
+	model = "MediaTek MT7629 reference board";
+	compatible = "mediatek,mt7629-rfb", "mediatek,mt7629";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "factory";
+			linux,code = <KEY_RESTART>;
+			gpios = <&pio 60 GPIO_ACTIVE_LOW>;
+		};
+
+		wps {
+			label = "wps";
+			linux,code = <KEY_WPS_BUTTON>;
+			gpios = <&pio 58 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0x40000000 0x10000000>;
+	};
+
+	reg_3p3v: regulator-3p3v {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-3.3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	reg_5v: regulator-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-5V";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+};
+
+&eth {
+	pinctrl-names = "default";
+	pinctrl-0 = <&eth_pins>;
+	pinctrl-1 = <&ephy_leds_pins>;
+	status = "okay";
+
+	gmac1: mac@1 {
+		compatible = "mediatek,eth-mac";
+		reg = <1>;
+		phy-handle = <&phy0>;
+	};
+
+	mdio: mdio-bus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		phy0: ethernet-phy@0 {
+			reg = <0>;
+			phy-mode = "gmii";
+		};
+	};
+};
+
+&i2c {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c_pins>;
+	status = "okay";
+};
+
+&qspi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&qspi_pins>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0x00000 0x60000>;
+				read-only;
+			};
+
+			partition@60000 {
+				label = "u-boot-env";
+				reg = <0x60000 0x10000>;
+				read-only;
+			};
+
+			factory: partition@70000 {
+				label = "factory";
+				reg = <0x70000 0x40000>;
+				read-only;
+			};
+
+			partition@b0000 {
+				label = "kernel";
+				reg = <0xb0000 0xb50000>;
+			};
+		};
+	};
+};
+
+&pcie {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_pins>;
+};
+
+&pciephy1 {
+	status = "okay";
+};
+
+&pio {
+	eth_pins: eth-pins {
+		mux {
+			function = "eth";
+			groups = "mdc_mdio";
+		};
+	};
+
+	ephy_leds_pins: ephy-leds-pins {
+		mux {
+			function = "led";
+			groups = "gphy_leds_0", "ephy_leds";
+		};
+	};
+
+	i2c_pins: i2c-pins {
+		mux {
+			function = "i2c";
+			groups =  "i2c_0";
+		};
+
+		conf {
+			pins = "I2C_SDA", "I2C_SCL";
+			drive-strength = <4>;
+			bias-disable;
+		};
+	};
+
+	pcie_pins: pcie-pins {
+		mux {
+			function = "pcie";
+			groups = "pcie_clkreq",
+				 "pcie_pereset",
+				 "pcie_wake";
+		};
+	};
+
+	pwm_pins: pwm-pins {
+		mux {
+			function = "pwm";
+			groups = "pwm_0";
+		};
+	};
+
+	/* SPI-NOR is shared pin with serial NAND */
+	qspi_pins: qspi-pins {
+		mux {
+			function = "flash";
+			groups = "spi_nor";
+		};
+	};
+
+	/* Serial NAND is shared pin with SPI-NOR */
+	serial_nand_pins: serial-nand-pins {
+		mux {
+			function = "flash";
+			groups = "snfi";
+		};
+	};
+
+	spi_pins: spi-pins {
+		mux {
+			function = "spi";
+			groups = "spi_0";
+		};
+	};
+
+	uart0_pins: uart0-pins {
+		mux {
+			function = "uart";
+			groups = "uart0_txd_rxd" ;
+		};
+	};
+
+	uart1_pins: uart1-pins {
+		mux {
+			function = "uart";
+			groups = "uart1_0_tx_rx" ;
+		};
+	};
+
+	uart2_pins: uart2-pins {
+		mux {
+			function = "uart";
+			groups = "uart2_0_txd_rxd" ;
+		};
+	};
+
+	watchdog_pins: watchdog-pins {
+		mux {
+			function = "watchdog";
+			groups = "watchdog";
+		};
+	};
+};
+
+&spi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi_pins>;
+	status = "okay";
+};
+
+&ssusb {
+	vusb33-supply = <&reg_3p3v>;
+	vbus-supply = <&reg_5v>;
+	status = "okay";
+};
+
+&u3phy0 {
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pins>;
+	status = "okay";
+};
+
+&watchdog {
+	pinctrl-names = "default";
+	pinctrl-0 = <&watchdog_pins>;
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/mt7629.dtsi b/arch/arm/boot/dts/mt7629.dtsi
new file mode 100644
index 000000000000..9608bc2ccb3f
--- /dev/null
+++ b/arch/arm/boot/dts/mt7629.dtsi
@@ -0,0 +1,481 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ *
+ * Author: Ryder Lee <ryder.lee@mediatek.com>
+ */
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/clock/mt7629-clk.h>
+#include <dt-bindings/power/mt7622-power.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/phy/phy.h>
+#include <dt-bindings/reset/mt7629-resets.h>
+
+/ {
+	compatible = "mediatek,mt7629";
+	interrupt-parent = <&sysirq>;
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		enable-method = "mediatek,mt6589-smp";
+
+		cpu0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a7";
+			reg = <0x0>;
+			clock-frequency = <1250000000>;
+			cci-control-port = <&cci_control2>;
+		};
+
+		cpu1: cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a7";
+			reg = <0x1>;
+			clock-frequency = <1250000000>;
+			cci-control-port = <&cci_control2>;
+		};
+	};
+
+	pmu {
+		compatible = "arm,cortex-a7-pmu";
+		interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_SPI 9 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-affinity = <&cpu0>, <&cpu1>;
+	};
+
+	clk20m: oscillator-0 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <20000000>;
+		clock-output-names = "clk20m";
+	};
+
+	clk40m: oscillator-1 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <40000000>;
+		clock-output-names = "clkxtal";
+	};
+
+	timer {
+		compatible = "arm,armv7-timer";
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
+		clock-frequency = <20000000>;
+	};
+
+	soc {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		infracfg: syscon@10000000 {
+			compatible = "mediatek,mt7629-infracfg", "syscon";
+			reg = <0x10000000 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		pericfg: syscon@10002000 {
+			compatible = "mediatek,mt7629-pericfg", "syscon";
+			reg = <0x10002000 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		scpsys: scpsys@10006000 {
+			compatible = "mediatek,mt7629-scpsys",
+				     "mediatek,mt7622-scpsys";
+			#power-domain-cells = <1>;
+			reg = <0x10006000 0x1000>;
+			clocks = <&topckgen CLK_TOP_HIF_SEL>;
+			clock-names = "hif_sel";
+			assigned-clocks = <&topckgen CLK_TOP_HIF_SEL>;
+			assigned-clock-parents = <&topckgen CLK_TOP_UNIVPLL1_D2>;
+			infracfg = <&infracfg>;
+		};
+
+		timer: timer@10009000 {
+			compatible = "mediatek,mt7629-timer",
+				     "mediatek,mt6765-timer";
+			reg = <0x10009000 0x60>;
+			interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk20m>;
+			clock-names = "clk20m";
+		};
+
+		sysirq: interrupt-controller@10200a80 {
+			compatible = "mediatek,mt7629-sysirq",
+				     "mediatek,mt6577-sysirq";
+			reg = <0x10200a80 0x20>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+			interrupt-parent = <&gic>;
+		};
+
+		apmixedsys: syscon@10209000 {
+			compatible = "mediatek,mt7629-apmixedsys", "syscon";
+			reg = <0x10209000 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		rng: rng@1020f000 {
+			compatible = "mediatek,mt7629-rng",
+				     "mediatek,mt7623-rng";
+			reg = <0x1020f000 0x100>;
+			clocks = <&infracfg CLK_INFRA_TRNG_PD>;
+			clock-names = "rng";
+		};
+
+		topckgen: syscon@10210000 {
+			compatible = "mediatek,mt7629-topckgen", "syscon";
+			reg = <0x10210000 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		watchdog: watchdog@10212000 {
+			compatible = "mediatek,mt7629-wdt",
+				     "mediatek,mt6589-wdt";
+			reg = <0x10212000 0x100>;
+		};
+
+		pio: pinctrl@10217000 {
+			compatible = "mediatek,mt7629-pinctrl";
+			reg = <0x10217000 0x8000>,
+			      <0x10005000 0x1000>;
+			reg-names = "base", "eint";
+			gpio-controller;
+			gpio-ranges = <&pio 0 0 79>;
+			#gpio-cells = <2>;
+			#interrupt-cells = <2>;
+			interrupt-controller;
+			interrupts = <GIC_SPI 153 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&gic>;
+		};
+
+		gic: interrupt-controller@10300000 {
+			compatible = "arm,gic-400";
+			interrupt-controller;
+			#interrupt-cells = <3>;
+			interrupt-parent = <&gic>;
+			reg = <0x10310000 0x1000>,
+			      <0x10320000 0x1000>,
+			      <0x10340000 0x2000>,
+			      <0x10360000 0x2000>;
+		};
+
+		cci: cci@10390000 {
+			compatible = "arm,cci-400";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			reg = <0x10390000 0x1000>;
+			ranges = <0 0x10390000 0x10000>;
+
+			cci_control0: slave-if@1000 {
+				compatible = "arm,cci-400-ctrl-if";
+				interface-type = "ace-lite";
+				reg = <0x1000 0x1000>;
+			};
+
+			cci_control1: slave-if@4000 {
+				compatible = "arm,cci-400-ctrl-if";
+				interface-type = "ace";
+				reg = <0x4000 0x1000>;
+			};
+
+			cci_control2: slave-if@5000 {
+				compatible = "arm,cci-400-ctrl-if";
+				interface-type = "ace";
+				reg = <0x5000 0x1000>;
+			};
+
+			pmu@9000 {
+				compatible = "arm,cci-400-pmu,r1";
+				reg = <0x9000 0x5000>;
+				interrupts = <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
+			};
+		};
+
+		uart0: serial@11002000 {
+			compatible = "mediatek,mt7629-uart",
+				     "mediatek,mt6577-uart";
+			reg = <0x11002000 0x400>;
+			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&topckgen CLK_TOP_UART_SEL>,
+				 <&pericfg CLK_PERI_UART0_PD>;
+			clock-names = "baud", "bus";
+			status = "disabled";
+		};
+
+		uart1: serial@11003000 {
+			compatible = "mediatek,mt7629-uart",
+				     "mediatek,mt6577-uart";
+			reg = <0x11003000 0x400>;
+			interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&topckgen CLK_TOP_UART_SEL>,
+				 <&pericfg CLK_PERI_UART1_PD>;
+			clock-names = "baud", "bus";
+			status = "disabled";
+		};
+
+		uart2: serial@11004000 {
+			compatible = "mediatek,mt7629-uart",
+				     "mediatek,mt6577-uart";
+			reg = <0x11004000 0x400>;
+			interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&topckgen CLK_TOP_UART_SEL>,
+				 <&pericfg CLK_PERI_UART2_PD>;
+			clock-names = "baud", "bus";
+			status = "disabled";
+		};
+
+		i2c: i2c@11007000 {
+			compatible = "mediatek,mt7629-i2c",
+				     "mediatek,mt2712-i2c";
+			reg = <0x11007000 0x90>,
+			      <0x11000100 0x80>;
+			interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_LOW>;
+			clock-div = <4>;
+			clocks = <&pericfg CLK_PERI_I2C0_PD>,
+				 <&pericfg CLK_PERI_AP_DMA_PD>;
+			clock-names = "main", "dma";
+			assigned-clocks = <&topckgen CLK_TOP_AXI_SEL>;
+			assigned-clock-parents = <&topckgen CLK_TOP_SYSPLL1_D2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		spi: spi@1100a000 {
+			compatible = "mediatek,mt7629-spi",
+				     "mediatek,mt7622-spi";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x1100a000 0x100>;
+			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&topckgen CLK_TOP_SYSPLL3_D2>,
+				 <&topckgen CLK_TOP_SPI0_SEL>,
+				 <&pericfg CLK_PERI_SPI0_PD>;
+			clock-names = "parent-clk", "sel-clk", "spi-clk";
+			status = "disabled";
+		};
+
+		qspi: spi@11014000 {
+			compatible = "mediatek,mt7629-nor",
+				     "mediatek,mt8173-nor";
+			reg = <0x11014000 0xe0>;
+			clocks = <&pericfg CLK_PERI_FLASH_PD>,
+				 <&topckgen CLK_TOP_FLASH_SEL>;
+			clock-names = "spi", "sf";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		ssusbsys: syscon@1a000000 {
+			compatible = "mediatek,mt7629-ssusbsys", "syscon";
+			reg = <0x1a000000 0x1000>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
+
+		ssusb: usb@1a0c0000 {
+			compatible = "mediatek,mt7629-xhci",
+				     "mediatek,mtk-xhci";
+			reg = <0x1a0c0000 0x01000>,
+			      <0x1a0c3e00 0x0100>;
+			reg-names = "mac", "ippc";
+			interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&ssusbsys CLK_SSUSB_SYS_EN>,
+				 <&ssusbsys CLK_SSUSB_REF_EN>,
+				 <&ssusbsys CLK_SSUSB_MCU_EN>,
+				 <&ssusbsys CLK_SSUSB_DMA_EN>;
+			clock-names = "sys_ck", "ref_ck", "mcu_ck", "dma_ck";
+			assigned-clocks = <&topckgen CLK_TOP_AXI_SEL>,
+					  <&topckgen CLK_TOP_SATA_SEL>,
+					  <&topckgen CLK_TOP_HIF_SEL>;
+			assigned-clock-parents = <&topckgen CLK_TOP_SYSPLL1_D2>,
+						 <&topckgen CLK_TOP_UNIVPLL2_D4>,
+						 <&topckgen CLK_TOP_UNIVPLL1_D2>;
+			power-domains = <&scpsys MT7622_POWER_DOMAIN_HIF1>;
+			phys = <&u2port0 PHY_TYPE_USB2>,
+			       <&u3port0 PHY_TYPE_USB3>;
+			status = "disabled";
+		};
+
+		u3phy0: usb-phy@1a0c4000 {
+			compatible = "mediatek,generic-tphy-v2";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0x1a0c4000 0xe00>;
+			status = "disabled";
+
+			u2port0: usb-phy@0 {
+				reg = <0 0x700>;
+				clocks = <&ssusbsys CLK_SSUSB_U2_PHY_EN>;
+				clock-names = "ref";
+				#phy-cells = <1>;
+				status = "okay";
+			};
+
+			u3port0: usb-phy@700 {
+				reg = <0x700 0x700>;
+				clocks = <&clk20m>;
+				clock-names = "ref";
+				#phy-cells = <1>;
+				status = "okay";
+			};
+		};
+
+		pciesys: syscon@1a100800 {
+			compatible = "mediatek,mt7629-pciesys", "syscon";
+			reg = <0x1a100800 0x1000>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
+
+		pcie: pcie@1a140000 {
+			compatible = "mediatek,mt7629-pcie";
+			device_type = "pci";
+			reg = <0x1a140000 0x1000>,
+			      <0x1a145000 0x1000>;
+			reg-names = "subsys","port1";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			interrupts = <GIC_SPI 176 IRQ_TYPE_LEVEL_LOW>,
+				     <GIC_SPI 229 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&pciesys CLK_PCIE_P1_MAC_EN>,
+				 <&pciesys CLK_PCIE_P0_AHB_EN>,
+				 <&pciesys CLK_PCIE_P1_AUX_EN>,
+				 <&pciesys CLK_PCIE_P1_AXI_EN>,
+				 <&pciesys CLK_PCIE_P1_OBFF_EN>,
+				 <&pciesys CLK_PCIE_P1_PIPE_EN>;
+			clock-names = "sys_ck1", "ahb_ck1",
+				      "aux_ck1", "axi_ck1",
+				      "obff_ck1", "pipe_ck1";
+			assigned-clocks = <&topckgen CLK_TOP_SATA_SEL>,
+					  <&topckgen CLK_TOP_AXI_SEL>,
+					  <&topckgen CLK_TOP_HIF_SEL>;
+			assigned-clock-parents = <&topckgen CLK_TOP_UNIVPLL2_D4>,
+						 <&topckgen CLK_TOP_SYSPLL1_D2>,
+						 <&topckgen CLK_TOP_UNIVPLL1_D2>;
+			phys = <&pcieport1 PHY_TYPE_PCIE>;
+			phy-names = "pcie-phy1";
+			power-domains = <&scpsys MT7622_POWER_DOMAIN_HIF0>;
+			bus-range = <0x00 0xff>;
+			ranges = <0x82000000 0 0x20000000 0x20000000 0 0x10000000>;
+
+			pcie1: pcie@1,0 {
+				device_type = "pci";
+				reg = <0x0800 0 0 0 0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				#interrupt-cells = <1>;
+				ranges;
+				num-lanes = <1>;
+				interrupt-map-mask = <0 0 0 7>;
+				interrupt-map = <0 0 0 1 &pcie_intc1 0>,
+						<0 0 0 2 &pcie_intc1 1>,
+						<0 0 0 3 &pcie_intc1 2>,
+						<0 0 0 4 &pcie_intc1 3>;
+
+				pcie_intc1: interrupt-controller {
+					interrupt-controller;
+					#address-cells = <0>;
+					#interrupt-cells = <1>;
+				};
+			};
+		};
+
+		pciephy1: pcie-phy@1a14a000 {
+			compatible = "mediatek,generic-tphy-v2";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0x1a14a000 0x1000>;
+			status = "disabled";
+
+			pcieport1: port1phy@0 {
+				reg = <0 0x1000>;
+				clocks = <&clk20m>;
+				clock-names = "ref";
+				#phy-cells = <1>;
+				status = "okay";
+			};
+		};
+
+		ethsys: syscon@1b000000 {
+			compatible = "mediatek,mt7629-ethsys", "syscon";
+			reg = <0x1b000000 0x1000>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
+
+		eth: ethernet@1b100000 {
+			compatible = "mediatek,mt7629-eth","syscon";
+			reg = <0x1b100000 0x20000>;
+			interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_LOW>,
+				     <GIC_SPI 224 IRQ_TYPE_LEVEL_LOW>,
+				     <GIC_SPI 225 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&topckgen CLK_TOP_ETH_SEL>,
+				 <&topckgen CLK_TOP_F10M_REF_SEL>,
+				 <&ethsys CLK_ETH_ESW_EN>,
+				 <&ethsys CLK_ETH_GP0_EN>,
+				 <&ethsys CLK_ETH_GP1_EN>,
+				 <&ethsys CLK_ETH_GP2_EN>,
+				 <&ethsys CLK_ETH_FE_EN>,
+				 <&sgmiisys0 CLK_SGMII_TX_EN>,
+				 <&sgmiisys0 CLK_SGMII_RX_EN>,
+				 <&sgmiisys0 CLK_SGMII_CDR_REF>,
+				 <&sgmiisys0 CLK_SGMII_CDR_FB>,
+				 <&sgmiisys1 CLK_SGMII_TX_EN>,
+				 <&sgmiisys1 CLK_SGMII_RX_EN>,
+				 <&sgmiisys1 CLK_SGMII_CDR_REF>,
+				 <&sgmiisys1 CLK_SGMII_CDR_FB>,
+				 <&apmixedsys CLK_APMIXED_SGMIPLL>,
+				 <&apmixedsys CLK_APMIXED_ETH2PLL>;
+			clock-names = "ethif", "sgmiitop", "esw", "gp0", "gp1",
+				      "gp2", "fe", "sgmii_tx250m", "sgmii_rx250m",
+				      "sgmii_cdr_ref", "sgmii_cdr_fb",
+				      "sgmii2_tx250m", "sgmii2_rx250m",
+				      "sgmii2_cdr_ref", "sgmii2_cdr_fb",
+				      "sgmii_ck", "eth2pll";
+			assigned-clocks = <&topckgen CLK_TOP_ETH_SEL>,
+					  <&topckgen CLK_TOP_F10M_REF_SEL>;
+			assigned-clock-parents = <&topckgen CLK_TOP_UNIVPLL1_D2>,
+						 <&topckgen CLK_TOP_SGMIIPLL_D2>;
+			power-domains = <&scpsys MT7622_POWER_DOMAIN_ETHSYS>;
+			mediatek,ethsys = <&ethsys>;
+			mediatek,sgmiisys = <&sgmiisys0>, <&sgmiisys1>;
+			mediatek,infracfg = <&infracfg>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		sgmiisys0: syscon@1b128000 {
+			compatible = "mediatek,mt7629-sgmiisys", "syscon";
+			reg = <0x1b128000 0x3000>;
+			#clock-cells = <1>;
+			mediatek,physpeed = "2500";
+		};
+
+		sgmiisys1: syscon@1b130000 {
+			compatible = "mediatek,mt7629-sgmiisys", "syscon";
+			reg = <0x1b130000 0x3000>;
+			#clock-cells = <1>;
+			mediatek,physpeed = "2500";
+		};
+	};
+};
diff --git a/include/dt-bindings/reset/mt7629-resets.h b/include/dt-bindings/reset/mt7629-resets.h
new file mode 100644
index 000000000000..6bb85734f68d
--- /dev/null
+++ b/include/dt-bindings/reset/mt7629-resets.h
@@ -0,0 +1,71 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 MediaTek Inc.
+ */
+
+#ifndef _DT_BINDINGS_RESET_CONTROLLER_MT7629
+#define _DT_BINDINGS_RESET_CONTROLLER_MT7629
+
+/* INFRACFG resets */
+#define MT7629_INFRA_EMI_MPU_RST		0
+#define MT7629_INFRA_UART5_RST			2
+#define MT7629_INFRA_CIRQ_EINT_RST		3
+#define MT7629_INFRA_APXGPT_RST			4
+#define MT7629_INFRA_SCPSYS_RST			5
+#define MT7629_INFRA_KP_RST			6
+#define MT7629_INFRA_SPI1_RST			7
+#define MT7629_INFRA_SPI4_RST			8
+#define MT7629_INFRA_SYSTIMER_RST		9
+#define MT7629_INFRA_IRRX_RST			10
+#define MT7629_INFRA_AO_BUS_RST			16
+#define MT7629_INFRA_EMI_RST			32
+#define MT7629_INFRA_APMIXED_RST		35
+#define MT7629_INFRA_MIPI_RST			36
+#define MT7629_INFRA_TRNG_RST			37
+#define MT7629_INFRA_SYSCIRQ_RST		38
+#define MT7629_INFRA_MIPI_CSI_RST		39
+#define MT7629_INFRA_GCE_FAXI_RST		40
+#define MT7629_INFRA_I2C_SRAM_RST		41
+#define MT7629_INFRA_IOMMU_RST			47
+
+/* PERICFG resets */
+#define MT7629_PERI_UART0_SW_RST		0
+#define MT7629_PERI_UART1_SW_RST		1
+#define MT7629_PERI_UART2_SW_RST		2
+#define MT7629_PERI_BTIF_SW_RST			6
+#define MT7629_PERI_PWN_SW_RST			8
+#define MT7629_PERI_DMA_SW_RST			11
+#define MT7629_PERI_NFI_SW_RST			14
+#define MT7629_PERI_I2C0_SW_RST			22
+#define MT7629_PERI_SPI0_SW_RST			33
+#define MT7629_PERI_SPI1_SW_RST			34
+#define MT7629_PERI_FLASHIF_SW_RST		36
+
+/* PCIe Subsystem resets */
+#define MT7629_PCIE1_CORE_RST			19
+#define MT7629_PCIE1_MMIO_RST			20
+#define MT7629_PCIE1_HRST			21
+#define MT7629_PCIE1_USER_RST			22
+#define MT7629_PCIE1_PIPE_RST			23
+#define MT7629_PCIE0_CORE_RST			27
+#define MT7629_PCIE0_MMIO_RST			28
+#define MT7629_PCIE0_HRST			29
+#define MT7629_PCIE0_USER_RST			30
+#define MT7629_PCIE0_PIPE_RST			31
+
+/* SSUSB Subsystem resets */
+#define MT7629_SSUSB_PHY_PWR_RST		3
+#define MT7629_SSUSB_MAC_PWR_RST		4
+
+/* ETH Subsystem resets */
+#define MT7629_ETHSYS_SYS_RST			0
+#define MT7629_ETHSYS_MCM_RST			2
+#define MT7629_ETHSYS_HSDMA_RST			5
+#define MT7629_ETHSYS_FE_RST			6
+#define MT7629_ETHSYS_ESW_RST			16
+#define MT7629_ETHSYS_GMAC_RST			23
+#define MT7629_ETHSYS_EPHY_RST			24
+#define MT7629_ETHSYS_CRYPTO_RST		29
+#define MT7629_ETHSYS_PPE_RST			31
+
+#endif  /* _DT_BINDINGS_RESET_CONTROLLER_MT7629 */
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
