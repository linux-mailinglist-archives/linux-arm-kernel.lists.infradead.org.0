Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC798CBD53
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:33:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNd+ANk9pFLxxJcNebOMWr9dyDc4ec+tsYE/FmhTzKs=; b=d3+oTwPJDHdn7X
	2vMAYhqOJ94XLr2XxpJZVy9GfgJE0WbF62Gl7o7BQ2M9ovPUZkmNPShjBVdV7SzRo0AgSqCxFtohz
	jx/N2H0AZ1B2PGzCmYAEw0cRloWgjPj2sCn7h00266/Sc/fY8P/UuAvXwZjZqyOMhVwC/PEBFXJCk
	XDrs2ysDpoFkAeBe1306wZ/qoc0hmKUptD4S48CPSbjZAYBtOG67GqgMmX736Pwlns5uP1ztiqAh6
	0ETg641BXYVNPM6Tmw+IHzR0Jc8Tb2qsB7Z5Z7RZQBCqQ+IDh4zDFbPT06U0UdYjYDOFSYdQZgw2X
	Gl6eRtlg+jsgNNyQAU6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOeU-0003Ut-55; Fri, 04 Oct 2019 14:33:50 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOZ1-00057n-KC
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:28:14 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 9BEA7C0008;
 Fri,  4 Oct 2019 14:28:08 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 21/21] arm64: dts: marvell: Add support for Marvell
 CN9132-DB
Date: Fri,  4 Oct 2019 16:27:38 +0200
Message-Id: <20191004142738.7370-22-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004142738.7370-1-miquel.raynal@bootlin.com>
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_072811_951366_61C7E624 
X-CRM114-Status: GOOD (  17.01  )
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

Extend the support of the CN9131 with yet another additional CP115.

The last number indicates how many external CP115 are used.

New available interfaces:
* CP2 CRYPTO-0 (disabled)
* CP2 ETH-0 (SFI, problem with the SFP cage, disabled)
* CP2 GPIO-1
* CP2 GPIO-2
* CP2 I2C-0
* CP2 PCIe-0 x2
* CP2 PCIe-2 x1 (disabled)
* CP2 SDHCI-0
* CP2 USB3-1 (High-speed)

Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/Makefile      |   1 +
 arch/arm64/boot/dts/marvell/cn9132-db.dts | 221 ++++++++++++++++++++++
 2 files changed, 222 insertions(+)
 create mode 100644 arch/arm64/boot/dts/marvell/cn9132-db.dts

diff --git a/arch/arm64/boot/dts/marvell/Makefile b/arch/arm64/boot/dts/marvell/Makefile
index 9fbf8f460153..f1b5127f0b89 100644
--- a/arch/arm64/boot/dts/marvell/Makefile
+++ b/arch/arm64/boot/dts/marvell/Makefile
@@ -12,3 +12,4 @@ dtb-$(CONFIG_ARCH_MVEBU) += armada-8040-mcbin-singleshot.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-8080-db.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += cn9130-db.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += cn9131-db.dtb
+dtb-$(CONFIG_ARCH_MVEBU) += cn9132-db.dtb
diff --git a/arch/arm64/boot/dts/marvell/cn9132-db.dts b/arch/arm64/boot/dts/marvell/cn9132-db.dts
new file mode 100644
index 000000000000..4ef0df3097ca
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/cn9132-db.dts
@@ -0,0 +1,221 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 Marvell International Ltd.
+ *
+ * Device tree for the CN9132-DB board.
+ */
+
+#include "cn9131-db.dts"
+
+/ {
+	model = "Marvell Armada CN9132-DB";
+	compatible = "marvell,cn9132", "marvell,cn9131", "marvell,cn9130",
+		     "marvell,armada-ap807-quad", "marvell,armada-ap807";
+
+	aliases {
+		gpio5 = &cp2_gpio1;
+		gpio6 = &cp2_gpio2;
+		ethernet5 = &cp2_eth0;
+	};
+
+	cp2_reg_usb3_vbus0: cp2_usb3_vbus@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "cp2-xhci0-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&cp2_gpio1 2 GPIO_ACTIVE_HIGH>;
+	};
+
+	cp2_usb3_0_phy0: cp2_usb3_phy0 {
+		compatible = "usb-nop-xceiv";
+		vcc-supply = <&cp2_reg_usb3_vbus0>;
+	};
+
+	cp2_reg_usb3_vbus1: cp2_usb3_vbus@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "cp2-xhci1-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&cp2_gpio1 3 GPIO_ACTIVE_HIGH>;
+	};
+
+	cp2_usb3_0_phy1: cp2_usb3_phy1 {
+		compatible = "usb-nop-xceiv";
+		vcc-supply = <&cp2_reg_usb3_vbus1>;
+	};
+
+	cp2_reg_sd_vccq: cp2_sd_vccq@0 {
+		compatible = "regulator-gpio";
+		regulator-name = "cp2_sd_vcc";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		gpios = <&cp2_gpio2 17 GPIO_ACTIVE_HIGH>;
+		states = <1800000 0x1 3300000 0x0>;
+	};
+
+	cp2_sfp_eth0: sfp-eth0 {
+		compatible = "sff,sfp";
+		i2c-bus = <&cp2_sfpp0_i2c>;
+		los-gpio = <&cp2_module_expander1 11 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpio = <&cp2_module_expander1 10 GPIO_ACTIVE_LOW>;
+		tx-disable-gpio = <&cp2_module_expander1 9 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpio = <&cp2_module_expander1 8 GPIO_ACTIVE_HIGH>;
+		/*
+		 * SFP cages are unconnected on early PCBs because of an the I2C
+		 * lanes not being connected. Prevent the port for being
+		 * unusable by disabling the SFP node.
+		 */
+		status = "disabled";
+	};
+};
+
+/*
+ * Instantiate the second slave CP115
+ */
+
+#define CP11X_NAME		cp2
+#define CP11X_BASE		f6000000
+#define CP11X_PCIEx_MEM_BASE(iface) (0xe5000000 + (iface * 0x1000000))
+#define CP11X_PCIEx_MEM_SIZE(iface) 0xf00000
+#define CP11X_PCIE0_BASE	f6600000
+#define CP11X_PCIE1_BASE	f6620000
+#define CP11X_PCIE2_BASE	f6640000
+
+#include "armada-cp115.dtsi"
+
+#undef CP11X_NAME
+#undef CP11X_BASE
+#undef CP11X_PCIEx_MEM_BASE
+#undef CP11X_PCIEx_MEM_SIZE
+#undef CP11X_PCIE0_BASE
+#undef CP11X_PCIE1_BASE
+#undef CP11X_PCIE2_BASE
+
+&cp2_crypto {
+	status = "disabled";
+};
+
+&cp2_ethernet {
+	status = "okay";
+};
+
+/* SLM-1521-V2, CON9 */
+&cp2_eth0 {
+	status = "disabled";
+	phy-mode = "10gbase-kr";
+	/* Generic PHY, providing serdes lanes */
+	phys = <&cp2_comphy4 0>;
+	managed = "in-band-status";
+	sfp = <&cp2_sfp_eth0>;
+};
+
+&cp2_gpio1 {
+	status = "okay";
+};
+
+&cp2_gpio2 {
+	status = "okay";
+};
+
+&cp2_i2c0 {
+	clock-frequency = <100000>;
+
+	/* SLM-1521-V2 - U3 */
+	i2c-mux@72 {
+		compatible = "nxp,pca9544";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x72>;
+		cp2_sfpp0_i2c: i2c@0 {
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
+			cp2_module_expander1: pca9555@21 {
+				compatible = "nxp,pca9555";
+				pinctrl-names = "default";
+				gpio-controller;
+				#gpio-cells = <2>;
+				reg = <0x21>;
+			};
+		};
+	};
+};
+
+/* SLM-1521-V2, CON6 */
+&cp2_pcie0 {
+	status = "okay";
+	num-lanes = <2>;
+	num-viewport = <8>;
+	/* Generic PHY, providing serdes lanes */
+	phys = <&cp2_comphy0 0
+		&cp2_comphy1 0>;
+};
+
+/* SLM-1521-V2, CON8 */
+&cp2_pcie2 {
+	status = "okay";
+	num-lanes = <1>;
+	num-viewport = <8>;
+	/* Generic PHY, providing serdes lanes */
+	phys = <&cp2_comphy5 2>;
+};
+
+&cp2_sata0 {
+	status = "okay";
+
+	/* SLM-1521-V2, CON4 */
+	sata-port@0 {
+		/* Generic PHY, providing serdes lanes */
+		phys = <&cp2_comphy2 0>;
+	};
+};
+
+/* CON 2 on SLM-1683 - microSD */
+&cp2_sdhci0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&cp2_sdhci_pins>;
+	bus-width = <4>;
+	cd-gpios = <&cp2_gpio2 23 GPIO_ACTIVE_LOW>;
+	vqmmc-supply = <&cp2_reg_sd_vccq>;
+};
+
+&cp2_syscon0 {
+	cp2_pinctrl: pinctrl {
+		compatible = "marvell,cp115-standalone-pinctrl";
+
+		cp2_i2c0_pins: cp2-i2c-pins-0 {
+			marvell,pins = "mpp37", "mpp38";
+			marvell,function = "i2c0";
+		};
+		cp2_sdhci_pins: cp2-sdhi-pins-0 {
+			marvell,pins = "mpp56", "mpp57", "mpp58",
+				       "mpp59", "mpp60", "mpp61";
+			marvell,function = "sdio";
+		};
+	};
+};
+
+&cp2_usb3_0 {
+	status = "okay";
+	usb-phy = <&cp2_usb3_0_phy0>;
+	phy-names = "usb";
+};
+
+/* SLM-1521-V2, CON11 */
+&cp2_usb3_1 {
+	status = "okay";
+	usb-phy = <&cp2_usb3_0_phy1>;
+	phy-names = "usb";
+	/* Generic PHY, providing serdes lanes */
+	phys = <&cp2_comphy3 1>;
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
