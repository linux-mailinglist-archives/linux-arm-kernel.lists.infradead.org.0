Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 246011181A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 09:02:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vF4QoMacHGT3hQDMOoN4M3LCgkLKXNLfsFOEugvowWw=; b=MdD08827AKc3Th
	ULLwMZZeJMPUewk9C+6EyPsZX+oyUmS73E/A1pF4iPF1OJKhxj4RLxNCiv1ZT7srFIDE0nzMzI3ai
	w8tp6BG1RQNAlA8hKejVAVE6RcFZRYTTU6dUS2i0Td5s+/dVLR3UENmw778XaMv4D3We9vrUVSKkV
	5UPafV/A6rHFUkzWcf8pSVS/PPiFMmdGlMlAtJi2caVTWQUUPk4tgSB2U+xVvn18XIkJ56w2PtxfI
	BaVjQWwCrRLUrsqo7Wa7XFtOTUfjh1oggUmKr3cl+PHkGHhu1oo0DExD7LGrwpcSLfEmG5jKq3N3V
	2i+MH4FwbjJtjERoCusA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieaTN-0003m8-Na; Tue, 10 Dec 2019 08:02:21 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieaTE-0003l7-6b
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 08:02:15 +0000
Received: from sapphire.lan (unknown [192.168.100.188])
 by mx.tkos.co.il (Postfix) with ESMTP id 1F2794408B0;
 Tue, 10 Dec 2019 10:02:06 +0200 (IST)
From: Baruch Siach <baruch@tkos.co.il>
To: Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: [PATCH v2] ARM: dts: mvebu: add support for SolidRun Clearfog GTR
Date: Tue, 10 Dec 2019 10:01:47 +0200
Message-Id: <6b2fb10939be4d3920840fb568ba146b9c25428a.1575964907.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_000212_731358_F1373D43 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Baruch Siach <baruch@tkos.co.il>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SolidRun Clearfog GTR L8 and S4 SBCs are based on Armada 385. They
features 8 (L8) or 4 (S4) switched Ethernet ports, 1 1Gb Ethernet port,
1 directly connected SFP port, 1 SFP port behind the switch (not
currently described in DT), 3 mini-PCIe slots, eMMC, SPI flash, USB3
port.

  https://developer.solid-run.com/products/clearfog-gtr-a385/

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
v2:
  * Add 'regulator-always-on' to USB regulator

  Address Andrew Lunn's comments:
  * Extend the comment on I2C bus SFP target
  * Rename SFP node label to 'sfp0'
  * Use common leds function binding
  * Add a comment on the sample at reset isolator
---
 arch/arm/boot/dts/Makefile                    |   2 +
 .../boot/dts/armada-385-clearfog-gtr-l8.dts   | 111 +++++
 .../boot/dts/armada-385-clearfog-gtr-s4.dts   |  75 +++
 .../arm/boot/dts/armada-385-clearfog-gtr.dtsi | 451 ++++++++++++++++++
 4 files changed, 639 insertions(+)
 create mode 100644 arch/arm/boot/dts/armada-385-clearfog-gtr-l8.dts
 create mode 100644 arch/arm/boot/dts/armada-385-clearfog-gtr-s4.dts
 create mode 100644 arch/arm/boot/dts/armada-385-clearfog-gtr.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 08011dc8c7a6..eb5add0f0f05 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1238,6 +1238,8 @@ dtb-$(CONFIG_MACH_ARMADA_370) += \
 dtb-$(CONFIG_MACH_ARMADA_375) += \
 	armada-375-db.dtb
 dtb-$(CONFIG_MACH_ARMADA_38X) += \
+	armada-385-clearfog-gtr-s4.dtb \
+	armada-385-clearfog-gtr-l8.dtb \
 	armada-385-db-88f6820-amc.dtb \
 	armada-385-db-ap.dtb \
 	armada-385-linksys-caiman.dtb \
diff --git a/arch/arm/boot/dts/armada-385-clearfog-gtr-l8.dts b/arch/arm/boot/dts/armada-385-clearfog-gtr-l8.dts
new file mode 100644
index 000000000000..0cf958696453
--- /dev/null
+++ b/arch/arm/boot/dts/armada-385-clearfog-gtr-l8.dts
@@ -0,0 +1,111 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+#include "armada-385-clearfog-gtr.dtsi"
+
+&mdio {
+	switch0: switch0@4 {
+		compatible = "marvell,mv88e6190";
+		reg = <4>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cf_gtr_switch_reset_pins>;
+		reset-gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@1 {
+				reg = <1>;
+				label = "lan8";
+				phy-handle = <&switch0phy0>;
+			};
+
+			port@2 {
+				reg = <2>;
+				label = "lan7";
+				phy-handle = <&switch0phy1>;
+			};
+
+			port@3 {
+				reg = <3>;
+				label = "lan6";
+				phy-handle = <&switch0phy2>;
+			};
+
+			port@4 {
+				reg = <4>;
+				label = "lan5";
+				phy-handle = <&switch0phy3>;
+			};
+
+			port@5 {
+				reg = <5>;
+				label = "lan4";
+				phy-handle = <&switch0phy4>;
+			};
+
+			port@6 {
+				reg = <6>;
+				label = "lan3";
+				phy-handle = <&switch0phy5>;
+			};
+
+			port@7 {
+				reg = <7>;
+				label = "lan2";
+				phy-handle = <&switch0phy6>;
+			};
+
+			port@8 {
+				reg = <8>;
+				label = "lan1";
+				phy-handle = <&switch0phy7>;
+			};
+
+			port@10 {
+				reg = <10>;
+				label = "cpu";
+				ethernet = <&eth1>;
+			};
+
+		};
+
+		mdio {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			switch0phy0: switch0phy0@1 {
+				reg = <0x1>;
+			};
+
+			switch0phy1: switch0phy1@2 {
+				reg = <0x2>;
+			};
+
+			switch0phy2: switch0phy2@3 {
+				reg = <0x3>;
+			};
+
+			switch0phy3: switch0phy3@4 {
+				reg = <0x4>;
+			};
+
+			switch0phy4: switch0phy4@5 {
+				reg = <0x5>;
+			};
+
+			switch0phy5: switch0phy5@6 {
+				reg = <0x6>;
+			};
+
+			switch0phy6: switch0phy6@7 {
+				reg = <0x7>;
+			};
+
+			switch0phy7: switch0phy7@8 {
+				reg = <0x8>;
+			};
+		};
+
+	};
+};
diff --git a/arch/arm/boot/dts/armada-385-clearfog-gtr-s4.dts b/arch/arm/boot/dts/armada-385-clearfog-gtr-s4.dts
new file mode 100644
index 000000000000..9a462d912f4b
--- /dev/null
+++ b/arch/arm/boot/dts/armada-385-clearfog-gtr-s4.dts
@@ -0,0 +1,75 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+#include "armada-385-clearfog-gtr.dtsi"
+
+&sfp0 {
+	tx-fault-gpio = <&gpio0 24 GPIO_ACTIVE_HIGH>;
+};
+
+&mdio {
+	switch0: switch0@4 {
+		compatible = "marvell,mv88e6085";
+		reg = <4>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cf_gtr_switch_reset_pins>;
+		reset-gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@1 {
+				reg = <1>;
+				label = "lan2";
+				phy-handle = <&switch0phy0>;
+			};
+
+			port@2 {
+				reg = <2>;
+				label = "lan1";
+				phy-handle = <&switch0phy1>;
+			};
+
+			port@3 {
+				reg = <3>;
+				label = "lan4";
+				phy-handle = <&switch0phy2>;
+			};
+
+			port@4 {
+				reg = <4>;
+				label = "lan3";
+				phy-handle = <&switch0phy3>;
+			};
+
+			port@5 {
+				reg = <5>;
+				label = "cpu";
+				ethernet = <&eth1>;
+			};
+
+		};
+
+		mdio {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			switch0phy0: switch0phy0@11 {
+				reg = <0x11>;
+			};
+
+			switch0phy1: switch0phy1@12 {
+				reg = <0x12>;
+			};
+
+			switch0phy2: switch0phy2@13 {
+				reg = <0x13>;
+			};
+
+			switch0phy3: switch0phy3@14 {
+				reg = <0x14>;
+			};
+		};
+
+	};
+};
diff --git a/arch/arm/boot/dts/armada-385-clearfog-gtr.dtsi b/arch/arm/boot/dts/armada-385-clearfog-gtr.dtsi
new file mode 100644
index 000000000000..54a76d59c713
--- /dev/null
+++ b/arch/arm/boot/dts/armada-385-clearfog-gtr.dtsi
@@ -0,0 +1,451 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Device Tree file for Clearfog GTR machines rev 1.0 (88F6825)
+ *
+ *  Rabeeh Khoury <rabeeh@solid-run.com>, based on Russell King clearfog work
+ */
+
+/*
+	SERDES mapping -
+	0. SATA1 on CON18, or optionally mini PCIe CON3 - PCIe0
+	1. 6141 switch (2.5Gbps capable)
+	2. SATA0 on CON17, or optionally mini PCIe CON4 - PCIe1
+	3. USB 3.0 Host
+	4. mini PCIe CON2 - PCIe2
+	5. SFP connector, or optionally SGMII Ethernet 1512 PHY
+
+	USB 2.0 mapping -
+	0. USB 2.0 - 0 USB pins header CON12
+	1. USB 2.0 - 1 mini PCIe CON2
+	2. USB 2.0 - 2 to USB 3.0 connector (used with SERDES #3)
+
+	Pin mapping -
+	0,1 - console UART
+	2,3 - I2C0 - connected to I2C EEPROM, two temperature sensors,
+	      front panel and PSE controller
+	4,5 - MDC/MDIO
+	6..17 - RGMII
+	18 - Topaz switch reset (active low)
+	19 - 1512 phy reset
+	20 - 1512 phy reset (eth2, optional)
+	21,28,37,38,39,40 - SD0
+	22 - USB 3.0 current limiter enable (active high)
+	24 - SFP TX fault (input active high)
+	25 - SFP present (input active low)
+	26,27 - I2C1 - connected to SFP
+	29 - Fan PWM
+	30 - CON4 mini PCIe wifi disable
+	31 - CON3 mini PCIe wifi disable
+	32 - Fuse programming power toggle (1.8v)
+	33 - CON4 mini PCIe reset
+	34 - CON2 mini PCIe wifi disable
+	35 - CON3 mini PCIe reset
+	36 - Rear button (GPIO active low)
+	41 - CON1 front panel connector
+	42 - Front LED1, or front panel CON1
+	43 - Micron L-PBGA 24 ball SPI (1Gb) CS, or TPM SPI CS
+	44 - CON2 mini PCIe reset
+	45 - TPM PIRQ signal, or front panel CON1
+	46 - SFP TX disable
+	47 - Control isolation of boot sensitive SAR signals
+	48 - PSE reset
+	49 - PSE OSS signal
+	50 - PSE interrupt
+	52 - Front LED2, or front panel
+	53 - Front button
+	54 - SFP LOS (input active high)
+	55 - Fan sense
+	56(mosi),57(clk),58(miso) - SPI interface - 32Mb SPI, 1Gb SPI and TPM
+	59 - SPI 32Mb W25Q32BVZPIG CS0 chip select (bootable)
+*/
+
+/dts-v1/;
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include "armada-385.dtsi"
+
+/ {
+	model = "Clearfog GTR";
+	compatible = "marvell,armada385", "marvell,armada380";
+
+	aliases {
+		/* So that mvebu u-boot can update the MAC addresses */
+		ethernet1 = &eth0;
+		ethernet2 = &eth1;
+		ethernet3 = &eth2;
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory {
+		device_type = "memory";
+		reg = <0x00000000 0x10000000>; /* 256 MB */
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
+	reg_5p0v: regulator-5p0v {
+		compatible = "regulator-fixed";
+		regulator-name = "5P0V";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
+	v_usb3_con: regulator-v-usb3-con {
+		compatible = "regulator-fixed";
+		gpio = <&gpio0 22 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cf_gtr_usb3_con_vbus>;
+		regulator-max-microvolt = <5000000>;
+		regulator-min-microvolt = <5000000>;
+		regulator-name = "v_usb3_con";
+		vin-supply = <&reg_5p0v>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	soc {
+		ranges = <MBUS_ID(0xf0, 0x01) 0 0xf1000000 0x100000
+			  MBUS_ID(0x01, 0x1d) 0 0xfff00000 0x100000
+			  MBUS_ID(0x09, 0x19) 0 0xf1100000 0x10000
+			  MBUS_ID(0x09, 0x15) 0 0xf1110000 0x10000
+			  MBUS_ID(0x0c, 0x04) 0 0xf1200000 0x100000>;
+
+		internal-regs {
+
+			rtc@a3800 {
+				status = "okay";
+			};
+
+			i2c@11000 { /* ROM, temp sensor and front panel */
+				pinctrl-0 = <&i2c0_pins>;
+				pinctrl-names = "default";
+				status = "okay";
+			};
+
+			i2c@11100 { /* SFP (CON5/CON6) */
+				pinctrl-0 = <&cf_gtr_i2c1_pins>;
+				pinctrl-names = "default";
+				status = "okay";
+			};
+
+			pinctrl@18000 {
+				cf_gtr_switch_reset_pins: cf-gtr-switch-reset-pins {
+					marvell,pins = "mpp18";
+					marvell,function = "gpio";
+				};
+
+				cf_gtr_usb3_con_vbus: cf-gtr-usb3-con-vbus {
+					marvell,pins = "mpp22";
+					marvell,function = "gpio";
+				};
+
+				cf_gtr_fan_pwm: cf-gtr-fan-pwm {
+					marvell,pins = "mpp23";
+					marvell,function = "gpio";
+				};
+
+				cf_gtr_i2c1_pins: i2c1-pins {
+					/* SFP */
+					marvell,pins = "mpp26", "mpp27";
+					marvell,function = "i2c1";
+				};
+
+				cf_gtr_sdhci_pins: cf-gtr-sdhci-pins {
+					marvell,pins = "mpp21", "mpp28",
+						       "mpp37", "mpp38",
+						       "mpp39", "mpp40";
+					marvell,function = "sd0";
+				};
+
+				cf_gtr_isolation_pins: cf-gtr-isolation-pins {
+					marvell,pins = "mpp47";
+					marvell,function = "gpio";
+				};
+
+				cf_gtr_poe_reset_pins: cf-gtr-poe-reset-pins {
+					marvell,pins = "mpp48";
+					marvell,function = "gpio";
+				};
+
+				cf_gtr_spi1_cs_pins: spi1-cs-pins {
+					marvell,pins = "mpp59";
+					marvell,function = "spi1";
+				};
+
+				cf_gtr_front_button_pins: cf-gtr-front-button-pins {
+					marvell,pins = "mpp53";
+					marvell,function = "gpio";
+				};
+
+				cf_gtr_rear_button_pins: cf-gtr-rear-button-pins {
+					marvell,pins = "mpp36";
+					marvell,function = "gpio";
+				};
+			};
+
+			sdhci@d8000 {
+				bus-width = <4>;
+				no-1-8-v;
+				non-removable;
+				pinctrl-0 = <&cf_gtr_sdhci_pins>;
+				pinctrl-names = "default";
+				status = "okay";
+				vmmc = <&reg_3p3v>;
+				wp-inverted;
+			};
+
+			usb@58000 {
+				status = "okay";
+			};
+
+			usb3@f0000 {
+				status = "okay";
+			};
+
+			usb3@f8000 {
+				vbus-supply = <&v_usb3_con>;
+				status = "okay";
+			};
+		};
+
+		pcie {
+			status = "okay";
+			/*
+			 * The PCIe units are accessible through
+			 * the mini-PCIe connectors on the board.
+			 */
+			pcie@1,0 {
+				reset-gpios = <&gpio1 3 GPIO_ACTIVE_LOW>;
+				status = "okay";
+			};
+
+			pcie@2,0 {
+				reset-gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
+				status = "okay";
+			};
+
+			pcie@3,0 {
+				reset-gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
+				status = "okay";
+			};
+		};
+	};
+
+	sfp0: sfp {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c1>;
+		los-gpio = <&gpio1 22 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpio = <&gpio0 25 GPIO_ACTIVE_LOW>;
+		tx-disable-gpio = <&gpio1 14 GPIO_ACTIVE_HIGH>;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-0 = <&cf_gtr_rear_button_pins &cf_gtr_front_button_pins>;
+		pinctrl-names = "default";
+
+		button_0 {
+			label = "Rear Button";
+			gpios = <&gpio1 4 GPIO_ACTIVE_LOW>;
+			linux,can-disable;
+			linux,code = <BTN_0>;
+		};
+
+		button_1 {
+			label = "Front Button";
+			gpios = <&gpio1 21 GPIO_ACTIVE_LOW>;
+			linux,can-disable;
+			linux,code = <BTN_1>;
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		led1 {
+			function = LED_FUNCTION_CPU;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
+		};
+
+		led2 {
+			function = LED_FUNCTION_HEARTBEAT;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&gpio1 20 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+&bm {
+	status = "okay";
+};
+
+&bm_bppi {
+	status = "okay";
+};
+
+&eth0 {
+	/* ethernet@70000 */
+	pinctrl-0 = <&ge0_rgmii_pins>;
+	pinctrl-names = "default";
+	phy = <&phy_dedicated>;
+	phy-mode = "rgmii-id";
+	buffer-manager = <&bm>;
+	bm,pool-long = <0>;
+	bm,pool-short = <1>;
+	status = "okay";
+};
+
+&eth1 {
+	/* ethernet@30000 */
+	bm,pool-long = <2>;
+	bm,pool-short = <1>;
+	buffer-manager = <&bm>;
+	phys = <&comphy1 1>;
+	phy-mode = "2500base-x";
+	status = "okay";
+
+	fixed-link {
+		speed = <2500>;
+		full-duplex;
+	};
+};
+
+&eth2 {
+	/* ethernet@34000 */
+	bm,pool-long = <3>;
+	bm,pool-short = <1>;
+	buffer-manager = <&bm>;
+	managed = "in-band-status";
+	phys = <&comphy5 1>;
+	phy-mode = "sgmii";
+	sfp = <&sfp0>;
+	status = "okay";
+};
+
+&mdio {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mdio_pins>;
+	status = "okay";
+
+	phy_dedicated: ethernet-phy@0 {
+		/*
+		 * Annoyingly, the marvell phy driver configures the LED
+		 * register, rather than preserving reset-loaded setting.
+		 * We undo that rubbish here.
+		 */
+		marvell,reg-init = <3 16 0 0x1017>;
+		reg = <0>;
+	};
+};
+
+&uart0 {
+	pinctrl-0 = <&uart0_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&spi1 {
+	/*
+	 * CS0: W25Q32 flash
+	 */
+	pinctrl-0 = <&spi1_pins &cf_gtr_spi1_cs_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	spi-flash@0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "w25q32", "jedec,spi-nor";
+		reg = <0>; /* Chip select 0 */
+		spi-max-frequency = <3000000>;
+		status = "okay";
+	};
+};
+
+&i2c0 {
+	pinctrl-0 = <&i2c0_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	/* U26 temperature sensor placed near SoC */
+	temp1: nct75@4c {
+		compatible = "lm75";
+		reg = <0x4c>;
+	};
+
+	/* U27 temperature sensor placed near RTC battery */
+	temp2: nct75@4d {
+		compatible = "lm75";
+		reg = <0x4d>;
+	};
+
+	/* 2Kb eeprom */
+	eeprom@53 {
+		compatible = "atmel,24c02";
+		reg = <0x53>;
+	};
+};
+
+&ahci0 {
+	status = "okay";
+};
+
+&ahci1 {
+	status = "okay";
+};
+
+&gpio0 {
+	pinctrl-0 = <&cf_gtr_fan_pwm>;
+	pinctrl-names = "default";
+
+	wifi-disable {
+		gpio-hog;
+		gpios = <30 GPIO_ACTIVE_LOW>, <31 GPIO_ACTIVE_LOW>;
+		output-low;
+		line-name = "wifi-disable";
+	};
+};
+
+&gpio1 {
+	pinctrl-0 = <&cf_gtr_isolation_pins &cf_gtr_poe_reset_pins>;
+	pinctrl-names = "default";
+
+	lte-disable {
+		gpio-hog;
+		gpios = <2 GPIO_ACTIVE_LOW>;
+		output-low;
+		line-name = "lte-disable";
+	};
+
+	/*
+	 * This signal, when asserted, isolates Armada 38x sample at reset pins
+	 * from control of external devices. Should be de-asserted after reset.
+	 */
+	sar-isolation {
+		gpio-hog;
+		gpios = <15 GPIO_ACTIVE_LOW>;
+		output-low;
+		line-name = "sar-isolation";
+	};
+
+	poe-reset {
+		gpio-hog;
+		gpios = <16 GPIO_ACTIVE_LOW>;
+		output-low;
+		line-name = "poe-reset";
+	};
+};
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
