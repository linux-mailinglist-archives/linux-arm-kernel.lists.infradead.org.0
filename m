Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDA9CBD44
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0JyUmm5Ud0JfodTJEaBcG4owiR/LfO50QRwe6sOh01Q=; b=LL7KeQBCP1K20f
	OSEtxvxrxNFyKEKBH17xHMnYJD/LG79IES/7UvCFBe4mwFZ44NuM0y7/LYwHPq13vkmqC6ajYw8Le
	su3+/yt7zbwYx2pHYYVaK+fzy7GEsgR3crUjlcTnQAL1xvOJV4ExjyiGxkOmqd6pwB6RdiCwf+58j
	caJny4Dp6yiXcalytfnLsqalAD/EFCbNcx7eyx+HDsh5Iedbw1kPyk2s5hWDLu6qlUlpBkSltLp7J
	jnDQ+LSqemJegg6U92IgSfThqyvUTEPP8W6UvgLjTyNaYiE5p0lx5ltoG1KJwRiB6hJHm+i66kIXS
	YujImQ/TstRkglW1y+/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOct-0001qF-Pb; Fri, 04 Oct 2019 14:32:11 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOYp-0004xq-Nk
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:28:07 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id ECE49C000F;
 Fri,  4 Oct 2019 14:27:56 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 12/21] arm64: dts: marvell: Prepare the introduction of
 CP115
Date: Fri,  4 Oct 2019 16:27:29 +0200
Message-Id: <20191004142738.7370-13-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004142738.7370-1-miquel.raynal@bootlin.com>
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_072800_088685_0CC6E714 
X-CRM114-Status: GOOD (  13.81  )
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

CP110 and CP115 are almost the same in terms of features and have a
very limited set of differences. Let's create an armada-cp11x.dtsi
file which will be used to instantiate both CP110 and CP115
nodes.

The only changes between the two armada-cp11{0,x}.dtsi files are the
following naming in macros: s/CP110/CP11X/.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/armada-70x0.dtsi  |  28 +-
 arch/arm64/boot/dts/marvell/armada-80x0.dtsi  |  56 +-
 .../arm64/boot/dts/marvell/armada-common.dtsi |   4 +-
 arch/arm64/boot/dts/marvell/armada-cp110.dtsi | 575 +----------------
 arch/arm64/boot/dts/marvell/armada-cp11x.dtsi | 579 ++++++++++++++++++
 5 files changed, 627 insertions(+), 615 deletions(-)
 create mode 100644 arch/arm64/boot/dts/marvell/armada-cp11x.dtsi

diff --git a/arch/arm64/boot/dts/marvell/armada-70x0.dtsi b/arch/arm64/boot/dts/marvell/armada-70x0.dtsi
index e5c6d7c25819..4e78ccd207b7 100644
--- a/arch/arm64/boot/dts/marvell/armada-70x0.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-70x0.dtsi
@@ -17,23 +17,23 @@
 /*
  * Instantiate the CP110
  */
-#define CP110_NAME		cp0
-#define CP110_BASE		f2000000
-#define CP110_PCIE_IO_BASE	0xf9000000
-#define CP110_PCIE_MEM_BASE	0xf6000000
-#define CP110_PCIE0_BASE	f2600000
-#define CP110_PCIE1_BASE	f2620000
-#define CP110_PCIE2_BASE	f2640000
+#define CP11X_NAME		cp0
+#define CP11X_BASE		f2000000
+#define CP11X_PCIE_IO_BASE	0xf9000000
+#define CP11X_PCIE_MEM_BASE	0xf6000000
+#define CP11X_PCIE0_BASE	f2600000
+#define CP11X_PCIE1_BASE	f2620000
+#define CP11X_PCIE2_BASE	f2640000
 
 #include "armada-cp110.dtsi"
 
-#undef CP110_NAME
-#undef CP110_BASE
-#undef CP110_PCIE_IO_BASE
-#undef CP110_PCIE_MEM_BASE
-#undef CP110_PCIE0_BASE
-#undef CP110_PCIE1_BASE
-#undef CP110_PCIE2_BASE
+#undef CP11X_NAME
+#undef CP11X_BASE
+#undef CP11X_PCIE_IO_BASE
+#undef CP11X_PCIE_MEM_BASE
+#undef CP11X_PCIE0_BASE
+#undef CP11X_PCIE1_BASE
+#undef CP11X_PCIE2_BASE
 
 &cp0_gpio1 {
 	status = "okay";
diff --git a/arch/arm64/boot/dts/marvell/armada-80x0.dtsi b/arch/arm64/boot/dts/marvell/armada-80x0.dtsi
index 8129b40f12a4..ebb98836ec9c 100644
--- a/arch/arm64/boot/dts/marvell/armada-80x0.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-80x0.dtsi
@@ -19,44 +19,44 @@
 /*
  * Instantiate the master CP110
  */
-#define CP110_NAME		cp0
-#define CP110_BASE		f2000000
-#define CP110_PCIE_IO_BASE	0xf9000000
-#define CP110_PCIE_MEM_BASE	0xf6000000
-#define CP110_PCIE0_BASE	f2600000
-#define CP110_PCIE1_BASE	f2620000
-#define CP110_PCIE2_BASE	f2640000
+#define CP11X_NAME		cp0
+#define CP11X_BASE		f2000000
+#define CP11X_PCIE_IO_BASE	0xf9000000
+#define CP11X_PCIE_MEM_BASE	0xf6000000
+#define CP11X_PCIE0_BASE	f2600000
+#define CP11X_PCIE1_BASE	f2620000
+#define CP11X_PCIE2_BASE	f2640000
 
 #include "armada-cp110.dtsi"
 
-#undef CP110_NAME
-#undef CP110_BASE
-#undef CP110_PCIE_IO_BASE
-#undef CP110_PCIE_MEM_BASE
-#undef CP110_PCIE0_BASE
-#undef CP110_PCIE1_BASE
-#undef CP110_PCIE2_BASE
+#undef CP11X_NAME
+#undef CP11X_BASE
+#undef CP11X_PCIE_IO_BASE
+#undef CP11X_PCIE_MEM_BASE
+#undef CP11X_PCIE0_BASE
+#undef CP11X_PCIE1_BASE
+#undef CP11X_PCIE2_BASE
 
 /*
  * Instantiate the slave CP110
  */
-#define CP110_NAME		cp1
-#define CP110_BASE		f4000000
-#define CP110_PCIE_IO_BASE	0xfd000000
-#define CP110_PCIE_MEM_BASE	0xfa000000
-#define CP110_PCIE0_BASE	f4600000
-#define CP110_PCIE1_BASE	f4620000
-#define CP110_PCIE2_BASE	f4640000
+#define CP11X_NAME		cp1
+#define CP11X_BASE		f4000000
+#define CP11X_PCIE_IO_BASE	0xfd000000
+#define CP11X_PCIE_MEM_BASE	0xfa000000
+#define CP11X_PCIE0_BASE	f4600000
+#define CP11X_PCIE1_BASE	f4620000
+#define CP11X_PCIE2_BASE	f4640000
 
 #include "armada-cp110.dtsi"
 
-#undef CP110_NAME
-#undef CP110_BASE
-#undef CP110_PCIE_IO_BASE
-#undef CP110_PCIE_MEM_BASE
-#undef CP110_PCIE0_BASE
-#undef CP110_PCIE1_BASE
-#undef CP110_PCIE2_BASE
+#undef CP11X_NAME
+#undef CP11X_BASE
+#undef CP11X_PCIE_IO_BASE
+#undef CP11X_PCIE_MEM_BASE
+#undef CP11X_PCIE0_BASE
+#undef CP11X_PCIE1_BASE
+#undef CP11X_PCIE2_BASE
 
 /* The 80x0 has two CP blocks, but uses only one block from each. */
 &cp1_gpio1 {
diff --git a/arch/arm64/boot/dts/marvell/armada-common.dtsi b/arch/arm64/boot/dts/marvell/armada-common.dtsi
index b29c6405d214..c04c6c475022 100644
--- a/arch/arm64/boot/dts/marvell/armada-common.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-common.dtsi
@@ -6,6 +6,6 @@
 /* Common definitions used by Armada 7K/8K DTs */
 #define PASTER(x, y) x ## y
 #define EVALUATOR(x, y) PASTER(x, y)
-#define CP110_LABEL(name) EVALUATOR(CP110_NAME, EVALUATOR(_, name))
-#define CP110_NODE_NAME(name) EVALUATOR(CP110_NAME, EVALUATOR(-, name))
+#define CP11X_LABEL(name) EVALUATOR(CP11X_NAME, EVALUATOR(_, name))
+#define CP11X_NODE_NAME(name) EVALUATOR(CP11X_NAME, EVALUATOR(-, name))
 #define ADDRESSIFY(addr) EVALUATOR(0x, addr)
diff --git a/arch/arm64/boot/dts/marvell/armada-cp110.dtsi b/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
index 8259fc8f86f2..4fd33b0fa56e 100644
--- a/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
@@ -1,579 +1,12 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
- * Copyright (C) 2016 Marvell Technology Group Ltd.
+ * Copyright (C) 2019 Marvell Technology Group Ltd.
  *
  * Device Tree file for Marvell Armada CP110.
  */
 
-#include <dt-bindings/interrupt-controller/mvebu-icu.h>
-#include <dt-bindings/thermal/thermal.h>
+#define CP11X_TYPE cp110
 
-#include "armada-common.dtsi"
+#include "armada-cp11x.dtsi"
 
-#define CP110_PCIEx_IO_BASE(iface)	(CP110_PCIE_IO_BASE + (iface *  0x10000))
-#define CP110_PCIEx_MEM_BASE(iface)	(CP110_PCIE_MEM_BASE + (iface *  0x1000000))
-#define CP110_PCIEx_CONF_BASE(iface)	(CP110_PCIEx_MEM_BASE(iface) + 0xf00000)
-
-/ {
-	/*
-	 * The contents of the node are defined below, in order to
-	 * save one indentation level
-	 */
-	CP110_NAME: CP110_NAME { };
-
-	/*
-	 * CPs only have one sensor in the thermal IC.
-	 *
-	 * The cooling maps are empty as there are no cooling devices.
-	 */
-	thermal-zones {
-		CP110_LABEL(thermal_ic): CP110_NODE_NAME(thermal-ic) {
-			polling-delay-passive = <0>; /* Interrupt driven */
-			polling-delay = <0>; /* Interrupt driven */
-
-			thermal-sensors = <&CP110_LABEL(thermal) 0>;
-
-			trips {
-				CP110_LABEL(crit): crit {
-					temperature = <100000>; /* mC degrees */
-					hysteresis = <2000>; /* mC degrees */
-					type = "critical";
-				};
-			};
-
-			cooling-maps { };
-		};
-	};
-};
-
-&CP110_NAME {
-	#address-cells = <2>;
-	#size-cells = <2>;
-	compatible = "simple-bus";
-	interrupt-parent = <&CP110_LABEL(icu_nsr)>;
-	ranges;
-
-	config-space@CP110_BASE {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "simple-bus";
-		ranges = <0x0 0x0 ADDRESSIFY(CP110_BASE) 0x2000000>;
-
-		CP110_LABEL(ethernet): ethernet@0 {
-			compatible = "marvell,armada-7k-pp22";
-			reg = <0x0 0x100000>, <0x129000 0xb000>;
-			clocks = <&CP110_LABEL(clk) 1 3>, <&CP110_LABEL(clk) 1 9>,
-				 <&CP110_LABEL(clk) 1 5>, <&CP110_LABEL(clk) 1 6>,
-				 <&CP110_LABEL(clk) 1 18>;
-			clock-names = "pp_clk", "gop_clk",
-				      "mg_clk", "mg_core_clk", "axi_clk";
-			marvell,system-controller = <&CP110_LABEL(syscon0)>;
-			status = "disabled";
-			dma-coherent;
-
-			CP110_LABEL(eth0): eth0 {
-				interrupts = <39 IRQ_TYPE_LEVEL_HIGH>,
-					<43 IRQ_TYPE_LEVEL_HIGH>,
-					<47 IRQ_TYPE_LEVEL_HIGH>,
-					<51 IRQ_TYPE_LEVEL_HIGH>,
-					<55 IRQ_TYPE_LEVEL_HIGH>,
-					<59 IRQ_TYPE_LEVEL_HIGH>,
-					<63 IRQ_TYPE_LEVEL_HIGH>,
-					<67 IRQ_TYPE_LEVEL_HIGH>,
-					<71 IRQ_TYPE_LEVEL_HIGH>,
-					<129 IRQ_TYPE_LEVEL_HIGH>;
-				interrupt-names = "hif0", "hif1", "hif2",
-					"hif3", "hif4", "hif5", "hif6", "hif7",
-					"hif8", "link";
-				port-id = <0>;
-				gop-port-id = <0>;
-				status = "disabled";
-			};
-
-			CP110_LABEL(eth1): eth1 {
-				interrupts = <40 IRQ_TYPE_LEVEL_HIGH>,
-					<44 IRQ_TYPE_LEVEL_HIGH>,
-					<48 IRQ_TYPE_LEVEL_HIGH>,
-					<52 IRQ_TYPE_LEVEL_HIGH>,
-					<56 IRQ_TYPE_LEVEL_HIGH>,
-					<60 IRQ_TYPE_LEVEL_HIGH>,
-					<64 IRQ_TYPE_LEVEL_HIGH>,
-					<68 IRQ_TYPE_LEVEL_HIGH>,
-					<72 IRQ_TYPE_LEVEL_HIGH>,
-					<128 IRQ_TYPE_LEVEL_HIGH>;
-				interrupt-names = "hif0", "hif1", "hif2",
-					"hif3", "hif4", "hif5", "hif6", "hif7",
-					"hif8", "link";
-				port-id = <1>;
-				gop-port-id = <2>;
-				status = "disabled";
-			};
-
-			CP110_LABEL(eth2): eth2 {
-				interrupts = <41 IRQ_TYPE_LEVEL_HIGH>,
-					<45 IRQ_TYPE_LEVEL_HIGH>,
-					<49 IRQ_TYPE_LEVEL_HIGH>,
-					<53 IRQ_TYPE_LEVEL_HIGH>,
-					<57 IRQ_TYPE_LEVEL_HIGH>,
-					<61 IRQ_TYPE_LEVEL_HIGH>,
-					<65 IRQ_TYPE_LEVEL_HIGH>,
-					<69 IRQ_TYPE_LEVEL_HIGH>,
-					<73 IRQ_TYPE_LEVEL_HIGH>,
-					<127 IRQ_TYPE_LEVEL_HIGH>;
-				interrupt-names = "hif0", "hif1", "hif2",
-					"hif3", "hif4", "hif5", "hif6", "hif7",
-					"hif8", "link";
-				port-id = <2>;
-				gop-port-id = <3>;
-				status = "disabled";
-			};
-		};
-
-		CP110_LABEL(comphy): phy@120000 {
-			compatible = "marvell,comphy-cp110";
-			reg = <0x120000 0x6000>;
-			marvell,system-controller = <&CP110_LABEL(syscon0)>;
-			clocks = <&CP110_LABEL(clk) 1 5>, <&CP110_LABEL(clk) 1 6>,
-				 <&CP110_LABEL(clk) 1 18>;
-			clock-names = "mg_clk", "mg_core_clk", "axi_clk";
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			CP110_LABEL(comphy0): phy@0 {
-				reg = <0>;
-				#phy-cells = <1>;
-			};
-
-			CP110_LABEL(comphy1): phy@1 {
-				reg = <1>;
-				#phy-cells = <1>;
-			};
-
-			CP110_LABEL(comphy2): phy@2 {
-				reg = <2>;
-				#phy-cells = <1>;
-			};
-
-			CP110_LABEL(comphy3): phy@3 {
-				reg = <3>;
-				#phy-cells = <1>;
-			};
-
-			CP110_LABEL(comphy4): phy@4 {
-				reg = <4>;
-				#phy-cells = <1>;
-			};
-
-			CP110_LABEL(comphy5): phy@5 {
-				reg = <5>;
-				#phy-cells = <1>;
-			};
-		};
-
-		CP110_LABEL(mdio): mdio@12a200 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			compatible = "marvell,orion-mdio";
-			reg = <0x12a200 0x10>;
-			clocks = <&CP110_LABEL(clk) 1 9>, <&CP110_LABEL(clk) 1 5>,
-				 <&CP110_LABEL(clk) 1 6>, <&CP110_LABEL(clk) 1 18>;
-			status = "disabled";
-		};
-
-		CP110_LABEL(xmdio): mdio@12a600 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			compatible = "marvell,xmdio";
-			reg = <0x12a600 0x10>;
-			clocks = <&CP110_LABEL(clk) 1 5>,
-				 <&CP110_LABEL(clk) 1 6>, <&CP110_LABEL(clk) 1 18>;
-			status = "disabled";
-		};
-
-		CP110_LABEL(icu): interrupt-controller@1e0000 {
-			compatible = "marvell,cp110-icu";
-			reg = <0x1e0000 0x440>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			CP110_LABEL(icu_nsr): interrupt-controller@10 {
-				compatible = "marvell,cp110-icu-nsr";
-				reg = <0x10 0x20>;
-				#interrupt-cells = <2>;
-				interrupt-controller;
-				msi-parent = <&gicp>;
-			};
-
-			CP110_LABEL(icu_sei): interrupt-controller@50 {
-				compatible = "marvell,cp110-icu-sei";
-				reg = <0x50 0x10>;
-				#interrupt-cells = <2>;
-				interrupt-controller;
-				msi-parent = <&sei>;
-			};
-		};
-
-		CP110_LABEL(rtc): rtc@284000 {
-			compatible = "marvell,armada-8k-rtc";
-			reg = <0x284000 0x20>, <0x284080 0x24>;
-			reg-names = "rtc", "rtc-soc";
-			interrupts = <77 IRQ_TYPE_LEVEL_HIGH>;
-		};
-
-		CP110_LABEL(syscon0): system-controller@440000 {
-			compatible = "syscon", "simple-mfd";
-			reg = <0x440000 0x2000>;
-
-			CP110_LABEL(clk): clock {
-				compatible = "marvell,cp110-clock";
-				#clock-cells = <2>;
-			};
-
-			CP110_LABEL(gpio1): gpio@100 {
-				compatible = "marvell,armada-8k-gpio";
-				offset = <0x100>;
-				ngpios = <32>;
-				gpio-controller;
-				#gpio-cells = <2>;
-				gpio-ranges = <&CP110_LABEL(pinctrl) 0 0 32>;
-				interrupt-controller;
-				interrupts = <86 IRQ_TYPE_LEVEL_HIGH>,
-					<85 IRQ_TYPE_LEVEL_HIGH>,
-					<84 IRQ_TYPE_LEVEL_HIGH>,
-					<83 IRQ_TYPE_LEVEL_HIGH>;
-				#interrupt-cells = <2>;
-				status = "disabled";
-			};
-
-			CP110_LABEL(gpio2): gpio@140 {
-				compatible = "marvell,armada-8k-gpio";
-				offset = <0x140>;
-				ngpios = <31>;
-				gpio-controller;
-				#gpio-cells = <2>;
-				gpio-ranges = <&CP110_LABEL(pinctrl) 0 32 31>;
-				interrupt-controller;
-				interrupts = <82 IRQ_TYPE_LEVEL_HIGH>,
-					<81 IRQ_TYPE_LEVEL_HIGH>,
-					<80 IRQ_TYPE_LEVEL_HIGH>,
-					<79 IRQ_TYPE_LEVEL_HIGH>;
-				#interrupt-cells = <2>;
-				status = "disabled";
-			};
-		};
-
-		CP110_LABEL(syscon1): system-controller@400000 {
-			compatible = "syscon", "simple-mfd";
-			reg = <0x400000 0x1000>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			CP110_LABEL(thermal): thermal-sensor@70 {
-				compatible = "marvell,armada-cp110-thermal";
-				reg = <0x70 0x10>;
-				interrupts-extended =
-					<&CP110_LABEL(icu_sei) 116 IRQ_TYPE_LEVEL_HIGH>;
-				#thermal-sensor-cells = <1>;
-			};
-		};
-
-		CP110_LABEL(usb3_0): usb3@500000 {
-			compatible = "marvell,armada-8k-xhci",
-			"generic-xhci";
-			reg = <0x500000 0x4000>;
-			dma-coherent;
-			interrupts = <106 IRQ_TYPE_LEVEL_HIGH>;
-			clock-names = "core", "reg";
-			clocks = <&CP110_LABEL(clk) 1 22>,
-				 <&CP110_LABEL(clk) 1 16>;
-			status = "disabled";
-		};
-
-		CP110_LABEL(usb3_1): usb3@510000 {
-			compatible = "marvell,armada-8k-xhci",
-			"generic-xhci";
-			reg = <0x510000 0x4000>;
-			dma-coherent;
-			interrupts = <105 IRQ_TYPE_LEVEL_HIGH>;
-			clock-names = "core", "reg";
-			clocks = <&CP110_LABEL(clk) 1 23>,
-				 <&CP110_LABEL(clk) 1 16>;
-			status = "disabled";
-		};
-
-		CP110_LABEL(sata0): sata@540000 {
-			compatible = "marvell,armada-8k-ahci",
-			"generic-ahci";
-			reg = <0x540000 0x30000>;
-			dma-coherent;
-			interrupts = <107 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&CP110_LABEL(clk) 1 15>,
-				 <&CP110_LABEL(clk) 1 16>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			status = "disabled";
-
-			sata-port@0 {
-				reg = <0>;
-			};
-
-			sata-port@1 {
-				reg = <1>;
-			};
-		};
-
-		CP110_LABEL(xor0): xor@6a0000 {
-			compatible = "marvell,armada-7k-xor", "marvell,xor-v2";
-			reg = <0x6a0000 0x1000>, <0x6b0000 0x1000>;
-			dma-coherent;
-			msi-parent = <&gic_v2m0>;
-			clock-names = "core", "reg";
-			clocks = <&CP110_LABEL(clk) 1 8>,
-				 <&CP110_LABEL(clk) 1 14>;
-		};
-
-		CP110_LABEL(xor1): xor@6c0000 {
-			compatible = "marvell,armada-7k-xor", "marvell,xor-v2";
-			reg = <0x6c0000 0x1000>, <0x6d0000 0x1000>;
-			dma-coherent;
-			msi-parent = <&gic_v2m0>;
-			clock-names = "core", "reg";
-			clocks = <&CP110_LABEL(clk) 1 7>,
-				 <&CP110_LABEL(clk) 1 14>;
-		};
-
-		CP110_LABEL(spi0): spi@700600 {
-			compatible = "marvell,armada-380-spi";
-			reg = <0x700600 0x50>;
-			#address-cells = <0x1>;
-			#size-cells = <0x0>;
-			clock-names = "core", "axi";
-			clocks = <&CP110_LABEL(clk) 1 21>,
-				 <&CP110_LABEL(clk) 1 17>;
-			status = "disabled";
-		};
-
-		CP110_LABEL(spi1): spi@700680 {
-			compatible = "marvell,armada-380-spi";
-			reg = <0x700680 0x50>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			clock-names = "core", "axi";
-			clocks = <&CP110_LABEL(clk) 1 21>,
-				 <&CP110_LABEL(clk) 1 17>;
-			status = "disabled";
-		};
-
-		CP110_LABEL(i2c0): i2c@701000 {
-			compatible = "marvell,mv78230-i2c";
-			reg = <0x701000 0x20>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			interrupts = <120 IRQ_TYPE_LEVEL_HIGH>;
-			clock-names = "core", "reg";
-			clocks = <&CP110_LABEL(clk) 1 21>,
-				 <&CP110_LABEL(clk) 1 17>;
-			status = "disabled";
-		};
-
-		CP110_LABEL(i2c1): i2c@701100 {
-			compatible = "marvell,mv78230-i2c";
-			reg = <0x701100 0x20>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			interrupts = <121 IRQ_TYPE_LEVEL_HIGH>;
-			clock-names = "core", "reg";
-			clocks = <&CP110_LABEL(clk) 1 21>,
-				 <&CP110_LABEL(clk) 1 17>;
-			status = "disabled";
-		};
-
-		CP110_LABEL(uart0): serial@702000 {
-			compatible = "snps,dw-apb-uart";
-			reg = <0x702000 0x100>;
-			reg-shift = <2>;
-			interrupts = <122 IRQ_TYPE_LEVEL_HIGH>;
-			reg-io-width = <1>;
-			clock-names = "baudclk", "apb_pclk";
-			clocks = <&CP110_LABEL(clk) 1 21>,
-				 <&CP110_LABEL(clk) 1 17>;
-			status = "disabled";
-		};
-
-		CP110_LABEL(uart1): serial@702100 {
-			compatible = "snps,dw-apb-uart";
-			reg = <0x702100 0x100>;
-			reg-shift = <2>;
-			interrupts = <123 IRQ_TYPE_LEVEL_HIGH>;
-			reg-io-width = <1>;
-			clock-names = "baudclk", "apb_pclk";
-			clocks = <&CP110_LABEL(clk) 1 21>,
-				 <&CP110_LABEL(clk) 1 17>;
-			status = "disabled";
-		};
-
-		CP110_LABEL(uart2): serial@702200 {
-			compatible = "snps,dw-apb-uart";
-			reg = <0x702200 0x100>;
-			reg-shift = <2>;
-			interrupts = <124 IRQ_TYPE_LEVEL_HIGH>;
-			reg-io-width = <1>;
-			clock-names = "baudclk", "apb_pclk";
-			clocks = <&CP110_LABEL(clk) 1 21>,
-				 <&CP110_LABEL(clk) 1 17>;
-			status = "disabled";
-		};
-
-		CP110_LABEL(uart3): serial@702300 {
-			compatible = "snps,dw-apb-uart";
-			reg = <0x702300 0x100>;
-			reg-shift = <2>;
-			interrupts = <125 IRQ_TYPE_LEVEL_HIGH>;
-			reg-io-width = <1>;
-			clock-names = "baudclk", "apb_pclk";
-			clocks = <&CP110_LABEL(clk) 1 21>,
-				 <&CP110_LABEL(clk) 1 17>;
-			status = "disabled";
-		};
-
-		CP110_LABEL(nand_controller): nand@720000 {
-			/*
-			 * Due to the limitation of the pins available
-			 * this controller is only usable on the CPM
-			 * for A7K and on the CPS for A8K.
-			 */
-			compatible = "marvell,armada-8k-nand-controller",
-				"marvell,armada370-nand-controller";
-			reg = <0x720000 0x54>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			interrupts = <115 IRQ_TYPE_LEVEL_HIGH>;
-			clock-names = "core", "reg";
-			clocks = <&CP110_LABEL(clk) 1 2>,
-				 <&CP110_LABEL(clk) 1 17>;
-			marvell,system-controller = <&CP110_LABEL(syscon0)>;
-			status = "disabled";
-		};
-
-		CP110_LABEL(trng): trng@760000 {
-			compatible = "marvell,armada-8k-rng",
-			"inside-secure,safexcel-eip76";
-			reg = <0x760000 0x7d>;
-			interrupts = <95 IRQ_TYPE_LEVEL_HIGH>;
-			clock-names = "core", "reg";
-			clocks = <&CP110_LABEL(clk) 1 25>,
-				 <&CP110_LABEL(clk) 1 17>;
-			status = "okay";
-		};
-
-		CP110_LABEL(sdhci0): sdhci@780000 {
-			compatible = "marvell,armada-cp110-sdhci";
-			reg = <0x780000 0x300>;
-			interrupts = <27 IRQ_TYPE_LEVEL_HIGH>;
-			clock-names = "core", "axi";
-			clocks = <&CP110_LABEL(clk) 1 4>, <&CP110_LABEL(clk) 1 18>;
-			dma-coherent;
-			status = "disabled";
-		};
-
-		CP110_LABEL(crypto): crypto@800000 {
-			compatible = "inside-secure,safexcel-eip197b";
-			reg = <0x800000 0x200000>;
-			interrupts = <87 IRQ_TYPE_LEVEL_HIGH>,
-				<88 IRQ_TYPE_LEVEL_HIGH>,
-				<89 IRQ_TYPE_LEVEL_HIGH>,
-				<90 IRQ_TYPE_LEVEL_HIGH>,
-				<91 IRQ_TYPE_LEVEL_HIGH>,
-				<92 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "mem", "ring0", "ring1",
-				"ring2", "ring3", "eip";
-			clock-names = "core", "reg";
-			clocks = <&CP110_LABEL(clk) 1 26>,
-				 <&CP110_LABEL(clk) 1 17>;
-			dma-coherent;
-		};
-	};
-
-	CP110_LABEL(pcie0): pcie@CP110_PCIE0_BASE {
-		compatible = "marvell,armada8k-pcie", "snps,dw-pcie";
-		reg = <0 ADDRESSIFY(CP110_PCIE0_BASE) 0 0x10000>,
-		      <0 CP110_PCIEx_CONF_BASE(0) 0 0x80000>;
-		reg-names = "ctrl", "config";
-		#address-cells = <3>;
-		#size-cells = <2>;
-		#interrupt-cells = <1>;
-		device_type = "pci";
-		dma-coherent;
-		msi-parent = <&gic_v2m0>;
-
-		bus-range = <0 0xff>;
-		ranges =
-		/* downstream I/O */
-		<0x81000000 0 CP110_PCIEx_IO_BASE(0) 0  CP110_PCIEx_IO_BASE(0) 0 0x10000
-		/* non-prefetchable memory */
-		0x82000000 0 CP110_PCIEx_MEM_BASE(0) 0  CP110_PCIEx_MEM_BASE(0) 0 0xf00000>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &CP110_LABEL(icu_nsr) 22 IRQ_TYPE_LEVEL_HIGH>;
-		interrupts = <22 IRQ_TYPE_LEVEL_HIGH>;
-		num-lanes = <1>;
-		clock-names = "core", "reg";
-		clocks = <&CP110_LABEL(clk) 1 13>, <&CP110_LABEL(clk) 1 14>;
-		status = "disabled";
-	};
-
-	CP110_LABEL(pcie1): pcie@CP110_PCIE1_BASE {
-		compatible = "marvell,armada8k-pcie", "snps,dw-pcie";
-		reg = <0 ADDRESSIFY(CP110_PCIE1_BASE) 0 0x10000>,
-		      <0 CP110_PCIEx_CONF_BASE(1) 0 0x80000>;
-		reg-names = "ctrl", "config";
-		#address-cells = <3>;
-		#size-cells = <2>;
-		#interrupt-cells = <1>;
-		device_type = "pci";
-		dma-coherent;
-		msi-parent = <&gic_v2m0>;
-
-		bus-range = <0 0xff>;
-		ranges =
-		/* downstream I/O */
-		<0x81000000 0 CP110_PCIEx_IO_BASE(1) 0  CP110_PCIEx_IO_BASE(1) 0 0x10000
-		/* non-prefetchable memory */
-		0x82000000 0 CP110_PCIEx_MEM_BASE(1) 0  CP110_PCIEx_MEM_BASE(1) 0 0xf00000>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &CP110_LABEL(icu_nsr) 24 IRQ_TYPE_LEVEL_HIGH>;
-		interrupts = <24 IRQ_TYPE_LEVEL_HIGH>;
-
-		num-lanes = <1>;
-		clock-names = "core", "reg";
-		clocks = <&CP110_LABEL(clk) 1 11>, <&CP110_LABEL(clk) 1 14>;
-		status = "disabled";
-	};
-
-	CP110_LABEL(pcie2): pcie@CP110_PCIE2_BASE {
-		compatible = "marvell,armada8k-pcie", "snps,dw-pcie";
-		reg = <0 ADDRESSIFY(CP110_PCIE2_BASE) 0 0x10000>,
-		      <0 CP110_PCIEx_CONF_BASE(2) 0 0x80000>;
-		reg-names = "ctrl", "config";
-		#address-cells = <3>;
-		#size-cells = <2>;
-		#interrupt-cells = <1>;
-		device_type = "pci";
-		dma-coherent;
-		msi-parent = <&gic_v2m0>;
-
-		bus-range = <0 0xff>;
-		ranges =
-		/* downstream I/O */
-		<0x81000000 0 CP110_PCIEx_IO_BASE(2) 0  CP110_PCIEx_IO_BASE(2) 0 0x10000
-		/* non-prefetchable memory */
-		0x82000000 0 CP110_PCIEx_MEM_BASE(2) 0  CP110_PCIEx_MEM_BASE(2) 0 0xf00000>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &CP110_LABEL(icu_nsr) 23 IRQ_TYPE_LEVEL_HIGH>;
-		interrupts = <23 IRQ_TYPE_LEVEL_HIGH>;
-
-		num-lanes = <1>;
-		clock-names = "core", "reg";
-		clocks = <&CP110_LABEL(clk) 1 12>, <&CP110_LABEL(clk) 1 14>;
-		status = "disabled";
-	};
-};
+#undef CP11X_TYPE
diff --git a/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi b/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
new file mode 100644
index 000000000000..3e77cf34604c
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
@@ -0,0 +1,579 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2016 Marvell Technology Group Ltd.
+ *
+ * Device Tree file for Marvell Armada CP11x.
+ */
+
+#include <dt-bindings/interrupt-controller/mvebu-icu.h>
+#include <dt-bindings/thermal/thermal.h>
+
+#include "armada-common.dtsi"
+
+#define CP11X_PCIEx_IO_BASE(iface)	(CP11X_PCIE_IO_BASE + (iface *  0x10000))
+#define CP11X_PCIEx_MEM_BASE(iface)	(CP11X_PCIE_MEM_BASE + (iface *  0x1000000))
+#define CP11X_PCIEx_CONF_BASE(iface)	(CP11X_PCIEx_MEM_BASE(iface) + 0xf00000)
+
+/ {
+	/*
+	 * The contents of the node are defined below, in order to
+	 * save one indentation level
+	 */
+	CP11X_NAME: CP11X_NAME { };
+
+	/*
+	 * CPs only have one sensor in the thermal IC.
+	 *
+	 * The cooling maps are empty as there are no cooling devices.
+	 */
+	thermal-zones {
+		CP11X_LABEL(thermal_ic): CP11X_NODE_NAME(thermal-ic) {
+			polling-delay-passive = <0>; /* Interrupt driven */
+			polling-delay = <0>; /* Interrupt driven */
+
+			thermal-sensors = <&CP11X_LABEL(thermal) 0>;
+
+			trips {
+				CP11X_LABEL(crit): crit {
+					temperature = <100000>; /* mC degrees */
+					hysteresis = <2000>; /* mC degrees */
+					type = "critical";
+				};
+			};
+
+			cooling-maps { };
+		};
+	};
+};
+
+&CP11X_NAME {
+	#address-cells = <2>;
+	#size-cells = <2>;
+	compatible = "simple-bus";
+	interrupt-parent = <&CP11X_LABEL(icu_nsr)>;
+	ranges;
+
+	config-space@CP11X_BASE {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "simple-bus";
+		ranges = <0x0 0x0 ADDRESSIFY(CP11X_BASE) 0x2000000>;
+
+		CP11X_LABEL(ethernet): ethernet@0 {
+			compatible = "marvell,armada-7k-pp22";
+			reg = <0x0 0x100000>, <0x129000 0xb000>;
+			clocks = <&CP11X_LABEL(clk) 1 3>, <&CP11X_LABEL(clk) 1 9>,
+				 <&CP11X_LABEL(clk) 1 5>, <&CP11X_LABEL(clk) 1 6>,
+				 <&CP11X_LABEL(clk) 1 18>;
+			clock-names = "pp_clk", "gop_clk",
+				      "mg_clk", "mg_core_clk", "axi_clk";
+			marvell,system-controller = <&CP11X_LABEL(syscon0)>;
+			status = "disabled";
+			dma-coherent;
+
+			CP11X_LABEL(eth0): eth0 {
+				interrupts = <39 IRQ_TYPE_LEVEL_HIGH>,
+					<43 IRQ_TYPE_LEVEL_HIGH>,
+					<47 IRQ_TYPE_LEVEL_HIGH>,
+					<51 IRQ_TYPE_LEVEL_HIGH>,
+					<55 IRQ_TYPE_LEVEL_HIGH>,
+					<59 IRQ_TYPE_LEVEL_HIGH>,
+					<63 IRQ_TYPE_LEVEL_HIGH>,
+					<67 IRQ_TYPE_LEVEL_HIGH>,
+					<71 IRQ_TYPE_LEVEL_HIGH>,
+					<129 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "hif0", "hif1", "hif2",
+					"hif3", "hif4", "hif5", "hif6", "hif7",
+					"hif8", "link";
+				port-id = <0>;
+				gop-port-id = <0>;
+				status = "disabled";
+			};
+
+			CP11X_LABEL(eth1): eth1 {
+				interrupts = <40 IRQ_TYPE_LEVEL_HIGH>,
+					<44 IRQ_TYPE_LEVEL_HIGH>,
+					<48 IRQ_TYPE_LEVEL_HIGH>,
+					<52 IRQ_TYPE_LEVEL_HIGH>,
+					<56 IRQ_TYPE_LEVEL_HIGH>,
+					<60 IRQ_TYPE_LEVEL_HIGH>,
+					<64 IRQ_TYPE_LEVEL_HIGH>,
+					<68 IRQ_TYPE_LEVEL_HIGH>,
+					<72 IRQ_TYPE_LEVEL_HIGH>,
+					<128 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "hif0", "hif1", "hif2",
+					"hif3", "hif4", "hif5", "hif6", "hif7",
+					"hif8", "link";
+				port-id = <1>;
+				gop-port-id = <2>;
+				status = "disabled";
+			};
+
+			CP11X_LABEL(eth2): eth2 {
+				interrupts = <41 IRQ_TYPE_LEVEL_HIGH>,
+					<45 IRQ_TYPE_LEVEL_HIGH>,
+					<49 IRQ_TYPE_LEVEL_HIGH>,
+					<53 IRQ_TYPE_LEVEL_HIGH>,
+					<57 IRQ_TYPE_LEVEL_HIGH>,
+					<61 IRQ_TYPE_LEVEL_HIGH>,
+					<65 IRQ_TYPE_LEVEL_HIGH>,
+					<69 IRQ_TYPE_LEVEL_HIGH>,
+					<73 IRQ_TYPE_LEVEL_HIGH>,
+					<127 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "hif0", "hif1", "hif2",
+					"hif3", "hif4", "hif5", "hif6", "hif7",
+					"hif8", "link";
+				port-id = <2>;
+				gop-port-id = <3>;
+				status = "disabled";
+			};
+		};
+
+		CP11X_LABEL(comphy): phy@120000 {
+			compatible = "marvell,comphy-cp110";
+			reg = <0x120000 0x6000>;
+			marvell,system-controller = <&CP11X_LABEL(syscon0)>;
+			clocks = <&CP11X_LABEL(clk) 1 5>, <&CP11X_LABEL(clk) 1 6>,
+				 <&CP11X_LABEL(clk) 1 18>;
+			clock-names = "mg_clk", "mg_core_clk", "axi_clk";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			CP11X_LABEL(comphy0): phy@0 {
+				reg = <0>;
+				#phy-cells = <1>;
+			};
+
+			CP11X_LABEL(comphy1): phy@1 {
+				reg = <1>;
+				#phy-cells = <1>;
+			};
+
+			CP11X_LABEL(comphy2): phy@2 {
+				reg = <2>;
+				#phy-cells = <1>;
+			};
+
+			CP11X_LABEL(comphy3): phy@3 {
+				reg = <3>;
+				#phy-cells = <1>;
+			};
+
+			CP11X_LABEL(comphy4): phy@4 {
+				reg = <4>;
+				#phy-cells = <1>;
+			};
+
+			CP11X_LABEL(comphy5): phy@5 {
+				reg = <5>;
+				#phy-cells = <1>;
+			};
+		};
+
+		CP11X_LABEL(mdio): mdio@12a200 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "marvell,orion-mdio";
+			reg = <0x12a200 0x10>;
+			clocks = <&CP11X_LABEL(clk) 1 9>, <&CP11X_LABEL(clk) 1 5>,
+				 <&CP11X_LABEL(clk) 1 6>, <&CP11X_LABEL(clk) 1 18>;
+			status = "disabled";
+		};
+
+		CP11X_LABEL(xmdio): mdio@12a600 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "marvell,xmdio";
+			reg = <0x12a600 0x10>;
+			clocks = <&CP11X_LABEL(clk) 1 5>,
+				 <&CP11X_LABEL(clk) 1 6>, <&CP11X_LABEL(clk) 1 18>;
+			status = "disabled";
+		};
+
+		CP11X_LABEL(icu): interrupt-controller@1e0000 {
+			compatible = "marvell,cp110-icu";
+			reg = <0x1e0000 0x440>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			CP11X_LABEL(icu_nsr): interrupt-controller@10 {
+				compatible = "marvell,cp110-icu-nsr";
+				reg = <0x10 0x20>;
+				#interrupt-cells = <2>;
+				interrupt-controller;
+				msi-parent = <&gicp>;
+			};
+
+			CP11X_LABEL(icu_sei): interrupt-controller@50 {
+				compatible = "marvell,cp110-icu-sei";
+				reg = <0x50 0x10>;
+				#interrupt-cells = <2>;
+				interrupt-controller;
+				msi-parent = <&sei>;
+			};
+		};
+
+		CP11X_LABEL(rtc): rtc@284000 {
+			compatible = "marvell,armada-8k-rtc";
+			reg = <0x284000 0x20>, <0x284080 0x24>;
+			reg-names = "rtc", "rtc-soc";
+			interrupts = <77 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		CP11X_LABEL(syscon0): system-controller@440000 {
+			compatible = "syscon", "simple-mfd";
+			reg = <0x440000 0x2000>;
+
+			CP11X_LABEL(clk): clock {
+				compatible = "marvell,cp110-clock";
+				#clock-cells = <2>;
+			};
+
+			CP11X_LABEL(gpio1): gpio@100 {
+				compatible = "marvell,armada-8k-gpio";
+				offset = <0x100>;
+				ngpios = <32>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				gpio-ranges = <&CP11X_LABEL(pinctrl) 0 0 32>;
+				interrupt-controller;
+				interrupts = <86 IRQ_TYPE_LEVEL_HIGH>,
+					<85 IRQ_TYPE_LEVEL_HIGH>,
+					<84 IRQ_TYPE_LEVEL_HIGH>,
+					<83 IRQ_TYPE_LEVEL_HIGH>;
+				#interrupt-cells = <2>;
+				status = "disabled";
+			};
+
+			CP11X_LABEL(gpio2): gpio@140 {
+				compatible = "marvell,armada-8k-gpio";
+				offset = <0x140>;
+				ngpios = <31>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				gpio-ranges = <&CP11X_LABEL(pinctrl) 0 32 31>;
+				interrupt-controller;
+				interrupts = <82 IRQ_TYPE_LEVEL_HIGH>,
+					<81 IRQ_TYPE_LEVEL_HIGH>,
+					<80 IRQ_TYPE_LEVEL_HIGH>,
+					<79 IRQ_TYPE_LEVEL_HIGH>;
+				#interrupt-cells = <2>;
+				status = "disabled";
+			};
+		};
+
+		CP11X_LABEL(syscon1): system-controller@400000 {
+			compatible = "syscon", "simple-mfd";
+			reg = <0x400000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			CP11X_LABEL(thermal): thermal-sensor@70 {
+				compatible = "marvell,armada-cp110-thermal";
+				reg = <0x70 0x10>;
+				interrupts-extended =
+					<&CP11X_LABEL(icu_sei) 116 IRQ_TYPE_LEVEL_HIGH>;
+				#thermal-sensor-cells = <1>;
+			};
+		};
+
+		CP11X_LABEL(usb3_0): usb3@500000 {
+			compatible = "marvell,armada-8k-xhci",
+			"generic-xhci";
+			reg = <0x500000 0x4000>;
+			dma-coherent;
+			interrupts = <106 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "core", "reg";
+			clocks = <&CP11X_LABEL(clk) 1 22>,
+				 <&CP11X_LABEL(clk) 1 16>;
+			status = "disabled";
+		};
+
+		CP11X_LABEL(usb3_1): usb3@510000 {
+			compatible = "marvell,armada-8k-xhci",
+			"generic-xhci";
+			reg = <0x510000 0x4000>;
+			dma-coherent;
+			interrupts = <105 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "core", "reg";
+			clocks = <&CP11X_LABEL(clk) 1 23>,
+				 <&CP11X_LABEL(clk) 1 16>;
+			status = "disabled";
+		};
+
+		CP11X_LABEL(sata0): sata@540000 {
+			compatible = "marvell,armada-8k-ahci",
+			"generic-ahci";
+			reg = <0x540000 0x30000>;
+			dma-coherent;
+			interrupts = <107 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&CP11X_LABEL(clk) 1 15>,
+				 <&CP11X_LABEL(clk) 1 16>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+
+			sata-port@0 {
+				reg = <0>;
+			};
+
+			sata-port@1 {
+				reg = <1>;
+			};
+		};
+
+		CP11X_LABEL(xor0): xor@6a0000 {
+			compatible = "marvell,armada-7k-xor", "marvell,xor-v2";
+			reg = <0x6a0000 0x1000>, <0x6b0000 0x1000>;
+			dma-coherent;
+			msi-parent = <&gic_v2m0>;
+			clock-names = "core", "reg";
+			clocks = <&CP11X_LABEL(clk) 1 8>,
+				 <&CP11X_LABEL(clk) 1 14>;
+		};
+
+		CP11X_LABEL(xor1): xor@6c0000 {
+			compatible = "marvell,armada-7k-xor", "marvell,xor-v2";
+			reg = <0x6c0000 0x1000>, <0x6d0000 0x1000>;
+			dma-coherent;
+			msi-parent = <&gic_v2m0>;
+			clock-names = "core", "reg";
+			clocks = <&CP11X_LABEL(clk) 1 7>,
+				 <&CP11X_LABEL(clk) 1 14>;
+		};
+
+		CP11X_LABEL(spi0): spi@700600 {
+			compatible = "marvell,armada-380-spi";
+			reg = <0x700600 0x50>;
+			#address-cells = <0x1>;
+			#size-cells = <0x0>;
+			clock-names = "core", "axi";
+			clocks = <&CP11X_LABEL(clk) 1 21>,
+				 <&CP11X_LABEL(clk) 1 17>;
+			status = "disabled";
+		};
+
+		CP11X_LABEL(spi1): spi@700680 {
+			compatible = "marvell,armada-380-spi";
+			reg = <0x700680 0x50>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clock-names = "core", "axi";
+			clocks = <&CP11X_LABEL(clk) 1 21>,
+				 <&CP11X_LABEL(clk) 1 17>;
+			status = "disabled";
+		};
+
+		CP11X_LABEL(i2c0): i2c@701000 {
+			compatible = "marvell,mv78230-i2c";
+			reg = <0x701000 0x20>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			interrupts = <120 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "core", "reg";
+			clocks = <&CP11X_LABEL(clk) 1 21>,
+				 <&CP11X_LABEL(clk) 1 17>;
+			status = "disabled";
+		};
+
+		CP11X_LABEL(i2c1): i2c@701100 {
+			compatible = "marvell,mv78230-i2c";
+			reg = <0x701100 0x20>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			interrupts = <121 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "core", "reg";
+			clocks = <&CP11X_LABEL(clk) 1 21>,
+				 <&CP11X_LABEL(clk) 1 17>;
+			status = "disabled";
+		};
+
+		CP11X_LABEL(uart0): serial@702000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x702000 0x100>;
+			reg-shift = <2>;
+			interrupts = <122 IRQ_TYPE_LEVEL_HIGH>;
+			reg-io-width = <1>;
+			clock-names = "baudclk", "apb_pclk";
+			clocks = <&CP11X_LABEL(clk) 1 21>,
+				 <&CP11X_LABEL(clk) 1 17>;
+			status = "disabled";
+		};
+
+		CP11X_LABEL(uart1): serial@702100 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x702100 0x100>;
+			reg-shift = <2>;
+			interrupts = <123 IRQ_TYPE_LEVEL_HIGH>;
+			reg-io-width = <1>;
+			clock-names = "baudclk", "apb_pclk";
+			clocks = <&CP11X_LABEL(clk) 1 21>,
+				 <&CP11X_LABEL(clk) 1 17>;
+			status = "disabled";
+		};
+
+		CP11X_LABEL(uart2): serial@702200 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x702200 0x100>;
+			reg-shift = <2>;
+			interrupts = <124 IRQ_TYPE_LEVEL_HIGH>;
+			reg-io-width = <1>;
+			clock-names = "baudclk", "apb_pclk";
+			clocks = <&CP11X_LABEL(clk) 1 21>,
+				 <&CP11X_LABEL(clk) 1 17>;
+			status = "disabled";
+		};
+
+		CP11X_LABEL(uart3): serial@702300 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x702300 0x100>;
+			reg-shift = <2>;
+			interrupts = <125 IRQ_TYPE_LEVEL_HIGH>;
+			reg-io-width = <1>;
+			clock-names = "baudclk", "apb_pclk";
+			clocks = <&CP11X_LABEL(clk) 1 21>,
+				 <&CP11X_LABEL(clk) 1 17>;
+			status = "disabled";
+		};
+
+		CP11X_LABEL(nand_controller): nand@720000 {
+			/*
+			 * Due to the limitation of the pins available
+			 * this controller is only usable on the CPM
+			 * for A7K and on the CPS for A8K.
+			 */
+			compatible = "marvell,armada-8k-nand-controller",
+				"marvell,armada370-nand-controller";
+			reg = <0x720000 0x54>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			interrupts = <115 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "core", "reg";
+			clocks = <&CP11X_LABEL(clk) 1 2>,
+				 <&CP11X_LABEL(clk) 1 17>;
+			marvell,system-controller = <&CP11X_LABEL(syscon0)>;
+			status = "disabled";
+		};
+
+		CP11X_LABEL(trng): trng@760000 {
+			compatible = "marvell,armada-8k-rng",
+			"inside-secure,safexcel-eip76";
+			reg = <0x760000 0x7d>;
+			interrupts = <95 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "core", "reg";
+			clocks = <&CP11X_LABEL(clk) 1 25>,
+				 <&CP11X_LABEL(clk) 1 17>;
+			status = "okay";
+		};
+
+		CP11X_LABEL(sdhci0): sdhci@780000 {
+			compatible = "marvell,armada-cp110-sdhci";
+			reg = <0x780000 0x300>;
+			interrupts = <27 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "core", "axi";
+			clocks = <&CP11X_LABEL(clk) 1 4>, <&CP11X_LABEL(clk) 1 18>;
+			dma-coherent;
+			status = "disabled";
+		};
+
+		CP11X_LABEL(crypto): crypto@800000 {
+			compatible = "inside-secure,safexcel-eip197b";
+			reg = <0x800000 0x200000>;
+			interrupts = <87 IRQ_TYPE_LEVEL_HIGH>,
+				<88 IRQ_TYPE_LEVEL_HIGH>,
+				<89 IRQ_TYPE_LEVEL_HIGH>,
+				<90 IRQ_TYPE_LEVEL_HIGH>,
+				<91 IRQ_TYPE_LEVEL_HIGH>,
+				<92 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "mem", "ring0", "ring1",
+				"ring2", "ring3", "eip";
+			clock-names = "core", "reg";
+			clocks = <&CP11X_LABEL(clk) 1 26>,
+				 <&CP11X_LABEL(clk) 1 17>;
+			dma-coherent;
+		};
+	};
+
+	CP11X_LABEL(pcie0): pcie@CP11X_PCIE0_BASE {
+		compatible = "marvell,armada8k-pcie", "snps,dw-pcie";
+		reg = <0 ADDRESSIFY(CP11X_PCIE0_BASE) 0 0x10000>,
+		      <0 CP11X_PCIEx_CONF_BASE(0) 0 0x80000>;
+		reg-names = "ctrl", "config";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		#interrupt-cells = <1>;
+		device_type = "pci";
+		dma-coherent;
+		msi-parent = <&gic_v2m0>;
+
+		bus-range = <0 0xff>;
+		ranges =
+		/* downstream I/O */
+		<0x81000000 0 CP11X_PCIEx_IO_BASE(0) 0  CP11X_PCIEx_IO_BASE(0) 0 0x10000
+		/* non-prefetchable memory */
+		0x82000000 0 CP11X_PCIEx_MEM_BASE(0) 0  CP11X_PCIEx_MEM_BASE(0) 0 0xf00000>;
+		interrupt-map-mask = <0 0 0 0>;
+		interrupt-map = <0 0 0 0 &CP11X_LABEL(icu_nsr) 22 IRQ_TYPE_LEVEL_HIGH>;
+		interrupts = <22 IRQ_TYPE_LEVEL_HIGH>;
+		num-lanes = <1>;
+		clock-names = "core", "reg";
+		clocks = <&CP11X_LABEL(clk) 1 13>, <&CP11X_LABEL(clk) 1 14>;
+		status = "disabled";
+	};
+
+	CP11X_LABEL(pcie1): pcie@CP11X_PCIE1_BASE {
+		compatible = "marvell,armada8k-pcie", "snps,dw-pcie";
+		reg = <0 ADDRESSIFY(CP11X_PCIE1_BASE) 0 0x10000>,
+		      <0 CP11X_PCIEx_CONF_BASE(1) 0 0x80000>;
+		reg-names = "ctrl", "config";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		#interrupt-cells = <1>;
+		device_type = "pci";
+		dma-coherent;
+		msi-parent = <&gic_v2m0>;
+
+		bus-range = <0 0xff>;
+		ranges =
+		/* downstream I/O */
+		<0x81000000 0 CP11X_PCIEx_IO_BASE(1) 0  CP11X_PCIEx_IO_BASE(1) 0 0x10000
+		/* non-prefetchable memory */
+		0x82000000 0 CP11X_PCIEx_MEM_BASE(1) 0  CP11X_PCIEx_MEM_BASE(1) 0 0xf00000>;
+		interrupt-map-mask = <0 0 0 0>;
+		interrupt-map = <0 0 0 0 &CP11X_LABEL(icu_nsr) 24 IRQ_TYPE_LEVEL_HIGH>;
+		interrupts = <24 IRQ_TYPE_LEVEL_HIGH>;
+
+		num-lanes = <1>;
+		clock-names = "core", "reg";
+		clocks = <&CP11X_LABEL(clk) 1 11>, <&CP11X_LABEL(clk) 1 14>;
+		status = "disabled";
+	};
+
+	CP11X_LABEL(pcie2): pcie@CP11X_PCIE2_BASE {
+		compatible = "marvell,armada8k-pcie", "snps,dw-pcie";
+		reg = <0 ADDRESSIFY(CP11X_PCIE2_BASE) 0 0x10000>,
+		      <0 CP11X_PCIEx_CONF_BASE(2) 0 0x80000>;
+		reg-names = "ctrl", "config";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		#interrupt-cells = <1>;
+		device_type = "pci";
+		dma-coherent;
+		msi-parent = <&gic_v2m0>;
+
+		bus-range = <0 0xff>;
+		ranges =
+		/* downstream I/O */
+		<0x81000000 0 CP11X_PCIEx_IO_BASE(2) 0  CP11X_PCIEx_IO_BASE(2) 0 0x10000
+		/* non-prefetchable memory */
+		0x82000000 0 CP11X_PCIEx_MEM_BASE(2) 0  CP11X_PCIEx_MEM_BASE(2) 0 0xf00000>;
+		interrupt-map-mask = <0 0 0 0>;
+		interrupt-map = <0 0 0 0 &CP11X_LABEL(icu_nsr) 23 IRQ_TYPE_LEVEL_HIGH>;
+		interrupts = <23 IRQ_TYPE_LEVEL_HIGH>;
+
+		num-lanes = <1>;
+		clock-names = "core", "reg";
+		clocks = <&CP11X_LABEL(clk) 1 12>, <&CP11X_LABEL(clk) 1 14>;
+		status = "disabled";
+	};
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
