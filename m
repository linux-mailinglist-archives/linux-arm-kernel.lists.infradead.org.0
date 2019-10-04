Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19994CBD51
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:33:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vnjG0tIFrqU1ptLXB25Ds/19WZ+EDZIjiT+x77OO108=; b=gp1sVz9D42G/wU
	sYINTMnj5MfyliZyTTT0wMR9pXWLmL0D9Nqj8MEFizAmuvaXM5kgvqWccQGChVUQoG3S1Nm7r7acx
	Cd7lunCqQdzCgphhz/pB8TyMzyb0C3M81BP5Y+Tdk9vAWW6YHHNcoL3XavbLgRSEDTAwHaHla4iWa
	b6H0W1h1Edy8rvLdCQ/aVQpHX4x6cDalivHOC30bYpUcRmbQKLBEY0MyYbgcqHPXH4u3urKxsbvWq
	FWFOKiHEUNR6kjstfr0n8yeXPTAXBwtVs+lzHKGQQVIOiQaD8+tVyP0kdIxjvmKT5Kvrhtp1Nqtn+
	dywuthpnrodpnXt28rkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOe0-0002xx-Ev; Fri, 04 Oct 2019 14:33:20 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOYy-00055G-L2
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:28:10 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 0B620C0004;
 Fri,  4 Oct 2019 14:28:05 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 19/21] arm64: dts: marvell: Add support for Marvell
 CN9130-DB
Date: Fri,  4 Oct 2019 16:27:36 +0200
Message-Id: <20191004142738.7370-20-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004142738.7370-1-miquel.raynal@bootlin.com>
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_072808_973502_84317ABD 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Grzegorz Jaszczyk <jaz@semihalf.com>

Add basic support for the Marvell CN9130 modular development board. It
is based on a CN9130 SoC (one AP807 and one internal CP115), extended
via 2xMoCi interface to possibly add up to two more external CP115
(one located on the main board and the other on the board extension).

Available interfaces:
* AP UART
* AP eMMC
* AP SDHCI (disabled)
* CPO GPIO-0
* CPO GPIO-1
* CP0 CRYPTO-0 (disabled)
* CP0 I2C-0
* CP0 I2C-1
* CP0 SDHCI-0
* CP0 NAND-0
* CP0 SPI-1
* CP0 ETH-0 (SFI with SFP cage not working yet, disabled)
* CP0 ETH-1 (RGMII)
* CP0 ETH-2 (RGMII)
* CP0 SATA-0-1
* CP0 USB3-0 (High-speed only)
* CP0 USB3-1 (High-speed only)
* CP0 PCIe-0 x4

Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/Makefile      |   1 +
 arch/arm64/boot/dts/marvell/cn9130-db.dts | 403 ++++++++++++++++++++++
 2 files changed, 404 insertions(+)
 create mode 100644 arch/arm64/boot/dts/marvell/cn9130-db.dts

diff --git a/arch/arm64/boot/dts/marvell/Makefile b/arch/arm64/boot/dts/marvell/Makefile
index 243338c914a4..70cac6127148 100644
--- a/arch/arm64/boot/dts/marvell/Makefile
+++ b/arch/arm64/boot/dts/marvell/Makefile
@@ -10,3 +10,4 @@ dtb-$(CONFIG_ARCH_MVEBU) += armada-8040-db.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-8040-mcbin.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-8040-mcbin-singleshot.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-8080-db.dtb
+dtb-$(CONFIG_ARCH_MVEBU) += cn9130-db.dtb
diff --git a/arch/arm64/boot/dts/marvell/cn9130-db.dts b/arch/arm64/boot/dts/marvell/cn9130-db.dts
new file mode 100644
index 000000000000..ce49a70d88a0
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/cn9130-db.dts
@@ -0,0 +1,403 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 Marvell International Ltd.
+ *
+ * Device tree for the CN9130-DB board.
+ */
+
+#include "cn9130.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "Marvell Armada CN9130-DB";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	aliases {
+		gpio1 = &cp0_gpio1;
+		gpio2 = &cp0_gpio2;
+		i2c0 = &cp0_i2c0;
+		ethernet0 = &cp0_eth0;
+		ethernet1 = &cp0_eth1;
+		ethernet2 = &cp0_eth2;
+		spi1 = &cp0_spi0;
+		spi2 = &cp0_spi1;
+	};
+
+	memory@00000000 {
+		device_type = "memory";
+		reg = <0x0 0x0 0x0 0x80000000>;
+	};
+
+	ap0_reg_sd_vccq: ap0_sd_vccq@0 {
+		compatible = "regulator-gpio";
+		regulator-name = "ap0_sd_vccq";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		gpios = <&expander0 8 GPIO_ACTIVE_HIGH>;
+		states = <1800000 0x1 3300000 0x0>;
+	};
+
+	cp0_reg_usb3_vbus0: cp0_usb3_vbus@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "cp0-xhci0-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&expander0 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	cp0_usb3_0_phy0: cp0_usb3_phy@0 {
+		compatible = "usb-nop-xceiv";
+		vcc-supply = <&cp0_reg_usb3_vbus0>;
+	};
+
+	cp0_reg_usb3_vbus1: cp0_usb3_vbus@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "cp0-xhci1-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&expander0 1 GPIO_ACTIVE_HIGH>;
+	};
+
+	cp0_usb3_0_phy1: cp0_usb3_phy@1 {
+		compatible = "usb-nop-xceiv";
+		vcc-supply = <&cp0_reg_usb3_vbus1>;
+	};
+
+	cp0_reg_sd_vccq: cp0_sd_vccq@0 {
+		compatible = "regulator-gpio";
+		regulator-name = "cp0_sd_vccq";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		gpios = <&expander0 15 GPIO_ACTIVE_HIGH>;
+		states = <1800000 0x1
+			  3300000 0x0>;
+	};
+
+	cp0_reg_sd_vcc: cp0_sd_vcc@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "cp0_sd_vcc";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&expander0 14 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	cp0_sfp_eth0: sfp-eth@0 {
+		compatible = "sff,sfp";
+		i2c-bus = <&cp0_sfpp0_i2c>;
+		los-gpio = <&cp0_module_expander1 11 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpio = <&cp0_module_expander1 10 GPIO_ACTIVE_LOW>;
+		tx-disable-gpio = <&cp0_module_expander1 9 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpio = <&cp0_module_expander1 8 GPIO_ACTIVE_HIGH>;
+		/*
+		 * SFP cages are unconnected on early PCBs because of an the I2C
+		 * lanes not being connected. Prevent the port for being
+		 * unusable by disabling the SFP node.
+		 */
+		status = "disabled";
+	};
+};
+
+&uart0 {
+	status = "okay";
+};
+
+/* on-board eMMC - U9 */
+&ap_sdhci0 {
+	pinctrl-names = "default";
+	bus-width = <8>;
+	vqmmc-supply = <&ap0_reg_sd_vccq>;
+	status = "okay";
+};
+
+&cp0_crypto {
+	status = "disabled";
+};
+
+&cp0_ethernet {
+	status = "okay";
+};
+
+/* SLM-1521-V2, CON9 */
+&cp0_eth0 {
+	status = "disabled";
+	phy-mode = "10gbase-kr";
+	/* Generic PHY, providing serdes lanes */
+	phys = <&cp0_comphy4 0>;
+	managed = "in-band-status";
+	sfp = <&cp0_sfp_eth0>;
+};
+
+/* CON56 */
+&cp0_eth1 {
+	status = "okay";
+	phy = <&phy0>;
+	phy-mode = "rgmii-id";
+};
+
+/* CON57 */
+&cp0_eth2 {
+	status = "okay";
+	phy = <&phy1>;
+	phy-mode = "rgmii-id";
+};
+
+&cp0_gpio1 {
+	status = "okay";
+};
+
+&cp0_gpio2 {
+	status = "okay";
+};
+
+&cp0_i2c0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&cp0_i2c0_pins>;
+	clock-frequency = <100000>;
+
+	/* U36 */
+	expander0: pca953x@21 {
+		compatible = "nxp,pca9555";
+		pinctrl-names = "default";
+		gpio-controller;
+		#gpio-cells = <2>;
+		reg = <0x21>;
+		status = "okay";
+	};
+
+	/* U42 */
+	eeprom0: eeprom@50 {
+		compatible = "atmel,24c64";
+		reg = <0x50>;
+		pagesize = <0x20>;
+	};
+
+	/* U38 */
+	eeprom1: eeprom@57 {
+		compatible = "atmel,24c64";
+		reg = <0x57>;
+		pagesize = <0x20>;
+	};
+};
+
+&cp0_i2c1 {
+	status = "okay";
+	clock-frequency = <100000>;
+
+	/* SLM-1521-V2 - U3 */
+	i2c-mux@72 { /* verify address - depends on dpr */
+		compatible = "nxp,pca9544";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x72>;
+		cp0_sfpp0_i2c: i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+		};
+
+		i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+			/* U12 */
+			cp0_module_expander1: pca9555@21 {
+				compatible = "nxp,pca9555";
+				pinctrl-names = "default";
+				gpio-controller;
+				#gpio-cells = <2>;
+				reg = <0x21>;
+			};
+
+		};
+	};
+};
+
+&cp0_mdio {
+	status = "okay";
+
+	phy0: ethernet-phy@0 {
+		reg = <0>;
+	};
+
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
+/* U54 */
+&cp0_nand_controller {
+	pinctrl-names = "default";
+	pinctrl-0 = <&nand_pins &nand_rb>;
+
+	nand@0 {
+		reg = <0>;
+		label = "main-storage";
+		nand-rb = <0>;
+		nand-ecc-mode = "hw";
+		nand-on-flash-bbt;
+		nand-ecc-strength = <8>;
+		nand-ecc-step-size = <512>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "U-Boot";
+				reg = <0 0x200000>;
+			};
+			partition@200000 {
+				label = "Linux";
+				reg = <0x200000 0xd00000>;
+			};
+			partition@1000000 {
+				label = "Filesystem";
+				reg = <0x1000000 0x3f000000>;
+			};
+		};
+	};
+};
+
+/* SLM-1521-V2, CON6 */
+&cp0_pcie0 {
+	status = "okay";
+	num-lanes = <4>;
+	num-viewport = <8>;
+	/* Generic PHY, providing serdes lanes */
+	phys = <&cp0_comphy0 0
+		&cp0_comphy1 0
+		&cp0_comphy2 0
+		&cp0_comphy3 0>;
+};
+
+&cp0_sata0 {
+	status = "okay";
+
+	/* SLM-1521-V2, CON2 */
+	sata-port@1 {
+		status = "okay";
+		/* Generic PHY, providing serdes lanes */
+		phys = <&cp0_comphy5 1>;
+	};
+};
+
+/* CON 28 */
+&cp0_sdhci0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&cp0_sdhci_pins
+		     &cp0_sdhci_cd_pins>;
+	bus-width = <4>;
+	cd-gpios = <&cp0_gpio2 11 GPIO_ACTIVE_LOW>;
+	no-1-8-v;
+	vqmmc-supply = <&cp0_reg_sd_vccq>;
+	vmmc-supply = <&cp0_reg_sd_vcc>;
+};
+
+/* U55 */
+&cp0_spi1 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&cp0_spi0_pins>;
+	reg = <0x700680 0x50>;
+
+	spi-flash@0 {
+		#address-cells = <0x1>;
+		#size-cells = <0x1>;
+		compatible = "jedec,spi-nor";
+		reg = <0x0>;
+		/* On-board MUX does not allow higher frequencies */
+		spi-max-frequency = <40000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "U-Boot-0";
+				reg = <0x0 0x200000>;
+			};
+
+			partition@400000 {
+				label = "Filesystem-0";
+				reg = <0x200000 0xe00000>;
+			};
+		};
+	};
+};
+
+&cp0_syscon0 {
+	cp0_pinctrl: pinctrl {
+		compatible = "marvell,cp115-standalone-pinctrl";
+
+		cp0_i2c0_pins: cp0-i2c-pins-0 {
+			marvell,pins = "mpp37", "mpp38";
+			marvell,function = "i2c0";
+		};
+		cp0_i2c1_pins: cp0-i2c-pins-1 {
+			marvell,pins = "mpp35", "mpp36";
+			marvell,function = "i2c1";
+		};
+		cp0_ge1_rgmii_pins: cp0-ge-rgmii-pins-0 {
+			marvell,pins = "mpp0", "mpp1", "mpp2",
+				       "mpp3", "mpp4", "mpp5",
+				       "mpp6", "mpp7", "mpp8",
+				       "mpp9", "mpp10", "mpp11";
+			marvell,function = "ge0";
+		};
+		cp0_ge2_rgmii_pins: cp0-ge-rgmii-pins-1 {
+			marvell,pins = "mpp44", "mpp45", "mpp46",
+				       "mpp47", "mpp48", "mpp49",
+				       "mpp50", "mpp51", "mpp52",
+				       "mpp53", "mpp54", "mpp55";
+			marvell,function = "ge1";
+		};
+		cp0_sdhci_cd_pins: cp0-sdhci-cd-pins-0 {
+			marvell,pins = "mpp43";
+			marvell,function = "gpio";
+		};
+		cp0_sdhci_pins: cp0-sdhi-pins-0 {
+			marvell,pins = "mpp56", "mpp57", "mpp58",
+				       "mpp59", "mpp60", "mpp61";
+			marvell,function = "sdio";
+		};
+		cp0_spi0_pins: cp0-spi-pins-0 {
+			marvell,pins = "mpp13", "mpp14", "mpp15", "mpp16";
+			marvell,function = "spi1";
+		};
+		nand_pins: nand-pins {
+			marvell,pins = "mpp15", "mpp16", "mpp17", "mpp18",
+				       "mpp19", "mpp20", "mpp21", "mpp22",
+				       "mpp23", "mpp24", "mpp25", "mpp26",
+				       "mpp27";
+			marvell,function = "dev";
+		};
+		nand_rb: nand-rb {
+			marvell,pins = "mpp13";
+			marvell,function = "nf";
+		};
+	};
+};
+
+&cp0_usb3_0 {
+	status = "okay";
+	usb-phy = <&cp0_usb3_0_phy0>;
+	phy-names = "usb";
+};
+
+&cp0_usb3_1 {
+	status = "okay";
+	usb-phy = <&cp0_usb3_0_phy1>;
+	phy-names = "usb";
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
