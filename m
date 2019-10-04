Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E41CBD3F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:31:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4uakxXVe/SwoQzvUbxlnsoUc/23J9qwFgCl20nH5c20=; b=cfLslADbYoCQfv
	WHdMXF+oj6ODRSc6day40EZLeRI2BnGe42zHLjbhWK6szrI1rC9lfjEiHr0MhMwoIjQBpD/ksfCVf
	nYuC3+sou+kaPeHc90Dmfu5mn97mI4IMRcPMMbTJUQyKjeGybAZE5AoILWQ5lZ/nGM0U47EUD8Hyb
	1MaTlrJVLb1IqEd9rr67tzUxj3CMS3uqoLQ2o+zKCemFgQdWg1Udg0A/RFoMJ97QHXTkKLjRz0kLx
	lCSVMuH1RirHrfxPWo/st/PLM2K6M9z1K0VEFodnSVO8sw5YTLTm82EEO2LMUASAoHha7sa07Pk8U
	YCMkE7cXryzhpJX5ZhEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOcC-000164-RA; Fri, 04 Oct 2019 14:31:28 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOYk-0004td-6v
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:28:03 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 60291C0020;
 Fri,  4 Oct 2019 14:27:47 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 05/21] arm64: dts: marvell: Prepare the introduction of
 AP807 based SoCs
Date: Fri,  4 Oct 2019 16:27:22 +0200
Message-Id: <20191004142738.7370-6-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004142738.7370-1-miquel.raynal@bootlin.com>
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_072754_591497_CA852E74 
X-CRM114-Status: GOOD (  15.08  )
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
 Konstantin Porotchkin <kostap@marvell.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Konstantin Porotchkin <kostap@marvell.com>

Prepare the support for Marvell AP807 die. This die is very similar to
AP806 but uses different DDR PHY. AP807 is a major component of CN9130
SoC series.

Signed-off-by: Konstantin Porotchkin <kostap@marvell.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/armada-ap806.dtsi | 448 +----------------
 arch/arm64/boot/dts/marvell/armada-ap80x.dtsi | 456 ++++++++++++++++++
 2 files changed, 458 insertions(+), 446 deletions(-)
 create mode 100644 arch/arm64/boot/dts/marvell/armada-ap80x.dtsi

diff --git a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
index a23ddd46efc5..cdadb28f287e 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
@@ -5,454 +5,10 @@
  * Device Tree file for Marvell Armada AP806.
  */
 
-#include <dt-bindings/interrupt-controller/arm-gic.h>
-#include <dt-bindings/thermal/thermal.h>
-
-/dts-v1/;
+#define AP_NAME		ap806
+#include "armada-ap80x.dtsi"
 
 / {
 	model = "Marvell Armada AP806";
 	compatible = "marvell,armada-ap806";
-	#address-cells = <2>;
-	#size-cells = <2>;
-
-	aliases {
-		serial0 = &uart0;
-		serial1 = &uart1;
-		gpio0 = &ap_gpio;
-		spi0 = &spi0;
-	};
-
-	psci {
-		compatible = "arm,psci-0.2";
-		method = "smc";
-	};
-
-	reserved-memory {
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
-
-		/*
-		 * This area matches the mapping done with a
-		 * mainline U-Boot, and should be updated by the
-		 * bootloader.
-		 */
-
-		psci-area@4000000 {
-			reg = <0x0 0x4000000 0x0 0x200000>;
-			no-map;
-		};
-	};
-
-	ap806 {
-		#address-cells = <2>;
-		#size-cells = <2>;
-		compatible = "simple-bus";
-		interrupt-parent = <&gic>;
-		ranges;
-
-		config-space@f0000000 {
-			#address-cells = <1>;
-			#size-cells = <1>;
-			compatible = "simple-bus";
-			ranges = <0x0 0x0 0xf0000000 0x1000000>;
-
-			gic: interrupt-controller@210000 {
-				compatible = "arm,gic-400";
-				#interrupt-cells = <3>;
-				#address-cells = <1>;
-				#size-cells = <1>;
-				ranges;
-				interrupt-controller;
-				interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
-				reg = <0x210000 0x10000>,
-				      <0x220000 0x20000>,
-				      <0x240000 0x20000>,
-				      <0x260000 0x20000>;
-
-				gic_v2m0: v2m@280000 {
-					compatible = "arm,gic-v2m-frame";
-					msi-controller;
-					reg = <0x280000 0x1000>;
-					arm,msi-base-spi = <160>;
-					arm,msi-num-spis = <32>;
-				};
-				gic_v2m1: v2m@290000 {
-					compatible = "arm,gic-v2m-frame";
-					msi-controller;
-					reg = <0x290000 0x1000>;
-					arm,msi-base-spi = <192>;
-					arm,msi-num-spis = <32>;
-				};
-				gic_v2m2: v2m@2a0000 {
-					compatible = "arm,gic-v2m-frame";
-					msi-controller;
-					reg = <0x2a0000 0x1000>;
-					arm,msi-base-spi = <224>;
-					arm,msi-num-spis = <32>;
-				};
-				gic_v2m3: v2m@2b0000 {
-					compatible = "arm,gic-v2m-frame";
-					msi-controller;
-					reg = <0x2b0000 0x1000>;
-					arm,msi-base-spi = <256>;
-					arm,msi-num-spis = <32>;
-				};
-			};
-
-			timer {
-				compatible = "arm,armv8-timer";
-				interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
-					     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
-					     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
-					     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
-			};
-
-			pmu {
-				compatible = "arm,cortex-a72-pmu";
-				interrupt-parent = <&pic>;
-				interrupts = <17>;
-			};
-
-			odmi: odmi@300000 {
-				compatible = "marvell,odmi-controller";
-				interrupt-controller;
-				msi-controller;
-				marvell,odmi-frames = <4>;
-				reg = <0x300000 0x4000>,
-				      <0x304000 0x4000>,
-				      <0x308000 0x4000>,
-				      <0x30C000 0x4000>;
-				marvell,spi-base = <128>, <136>, <144>, <152>;
-			};
-
-			gicp: gicp@3f0040 {
-				compatible = "marvell,ap806-gicp";
-				reg = <0x3f0040 0x10>;
-				marvell,spi-ranges = <64 64>, <288 64>;
-				msi-controller;
-			};
-
-			pic: interrupt-controller@3f0100 {
-				compatible = "marvell,armada-8k-pic";
-				reg = <0x3f0100 0x10>;
-				#interrupt-cells = <1>;
-				interrupt-controller;
-				interrupts = <GIC_PPI 15 IRQ_TYPE_LEVEL_HIGH>;
-			};
-
-			sei: interrupt-controller@3f0200 {
-				compatible = "marvell,ap806-sei";
-				reg = <0x3f0200 0x40>;
-				interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
-				#interrupt-cells = <1>;
-				interrupt-controller;
-				msi-controller;
-			};
-
-			xor@400000 {
-				compatible = "marvell,armada-7k-xor", "marvell,xor-v2";
-				reg = <0x400000 0x1000>,
-				      <0x410000 0x1000>;
-				msi-parent = <&gic_v2m0>;
-				clocks = <&ap_clk 3>;
-				dma-coherent;
-			};
-
-			xor@420000 {
-				compatible = "marvell,armada-7k-xor", "marvell,xor-v2";
-				reg = <0x420000 0x1000>,
-				      <0x430000 0x1000>;
-				msi-parent = <&gic_v2m0>;
-				clocks = <&ap_clk 3>;
-				dma-coherent;
-			};
-
-			xor@440000 {
-				compatible = "marvell,armada-7k-xor", "marvell,xor-v2";
-				reg = <0x440000 0x1000>,
-				      <0x450000 0x1000>;
-				msi-parent = <&gic_v2m0>;
-				clocks = <&ap_clk 3>;
-				dma-coherent;
-			};
-
-			xor@460000 {
-				compatible = "marvell,armada-7k-xor", "marvell,xor-v2";
-				reg = <0x460000 0x1000>,
-				      <0x470000 0x1000>;
-				msi-parent = <&gic_v2m0>;
-				clocks = <&ap_clk 3>;
-				dma-coherent;
-			};
-
-			spi0: spi@510600 {
-				compatible = "marvell,armada-380-spi";
-				reg = <0x510600 0x50>;
-				#address-cells = <1>;
-				#size-cells = <0>;
-				interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&ap_clk 3>;
-				status = "disabled";
-			};
-
-			i2c0: i2c@511000 {
-				compatible = "marvell,mv78230-i2c";
-				reg = <0x511000 0x20>;
-				#address-cells = <1>;
-				#size-cells = <0>;
-				interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
-				timeout-ms = <1000>;
-				clocks = <&ap_clk 3>;
-				status = "disabled";
-			};
-
-			uart0: serial@512000 {
-				compatible = "snps,dw-apb-uart";
-				reg = <0x512000 0x100>;
-				reg-shift = <2>;
-				interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
-				reg-io-width = <1>;
-				clocks = <&ap_clk 3>;
-				status = "disabled";
-			};
-
-			uart1: serial@512100 {
-				compatible = "snps,dw-apb-uart";
-				reg = <0x512100 0x100>;
-				reg-shift = <2>;
-				interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
-				reg-io-width = <1>;
-				clocks = <&ap_clk 3>;
-				status = "disabled";
-
-			};
-
-			watchdog: watchdog@610000 {
-				compatible = "arm,sbsa-gwdt";
-				reg = <0x610000 0x1000>, <0x600000 0x1000>;
-				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
-			};
-
-			ap_sdhci0: sdhci@6e0000 {
-				compatible = "marvell,armada-ap806-sdhci";
-				reg = <0x6e0000 0x300>;
-				interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
-				clock-names = "core";
-				clocks = <&ap_clk 4>;
-				dma-coherent;
-				marvell,xenon-phy-slow-mode;
-				status = "disabled";
-			};
-
-			ap_syscon0: system-controller@6f4000 {
-				compatible = "syscon", "simple-mfd";
-				reg = <0x6f4000 0x2000>;
-
-				ap_clk: clock {
-					compatible = "marvell,ap806-clock";
-					#clock-cells = <1>;
-				};
-
-				ap_pinctrl: pinctrl {
-					compatible = "marvell,ap806-pinctrl";
-
-					uart0_pins: uart0-pins {
-						marvell,pins = "mpp11", "mpp19";
-						marvell,function = "uart0";
-					};
-				};
-
-				ap_gpio: gpio@1040 {
-					compatible = "marvell,armada-8k-gpio";
-					offset = <0x1040>;
-					ngpios = <20>;
-					gpio-controller;
-					#gpio-cells = <2>;
-					gpio-ranges = <&ap_pinctrl 0 0 20>;
-				};
-			};
-
-			ap_syscon1: system-controller@6f8000 {
-				compatible = "syscon", "simple-mfd";
-				reg = <0x6f8000 0x1000>;
-				#address-cells = <1>;
-				#size-cells = <1>;
-
-				cpu_clk: clock-cpu@278 {
-					compatible = "marvell,ap806-cpu-clock";
-					clocks = <&ap_clk 0>, <&ap_clk 1>;
-					#clock-cells = <1>;
-					reg = <0x278 0xa30>;
-				};
-
-				ap_thermal: thermal-sensor@80 {
-					compatible = "marvell,armada-ap806-thermal";
-					reg = <0x80 0x10>;
-					interrupt-parent = <&sei>;
-					interrupts = <18>;
-					#thermal-sensor-cells = <1>;
-				};
-			};
-		};
-	};
-
-	/*
-	 * The thermal IP features one internal sensor plus, if applicable, one
-	 * remote channel wired to one sensor per CPU.
-	 *
-	 * Only one thermal zone per AP/CP may trigger interrupts at a time, the
-	 * first one that will have a critical trip point will be chosen.
-	 */
-	thermal-zones {
-		ap_thermal_ic: ap-thermal-ic {
-			polling-delay-passive = <0>; /* Interrupt driven */
-			polling-delay = <0>; /* Interrupt driven */
-
-			thermal-sensors = <&ap_thermal 0>;
-
-			trips {
-				ap_crit: ap-crit {
-					temperature = <100000>; /* mC degrees */
-					hysteresis = <2000>; /* mC degrees */
-					type = "critical";
-				};
-			};
-
-			cooling-maps { };
-		};
-
-		ap_thermal_cpu0: ap-thermal-cpu0 {
-			polling-delay-passive = <1000>;
-			polling-delay = <1000>;
-
-			thermal-sensors = <&ap_thermal 1>;
-
-			trips {
-				cpu0_hot: cpu0-hot {
-					temperature = <85000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-				cpu0_emerg: cpu0-emerg {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-			};
-
-			cooling-maps {
-				map0_hot: map0-hot {
-					trip = <&cpu0_hot>;
-					cooling-device = <&cpu0 1 2>,
-						<&cpu1 1 2>;
-				};
-				map0_emerg: map0-ermerg {
-					trip = <&cpu0_emerg>;
-					cooling-device = <&cpu0 3 3>,
-						<&cpu1 3 3>;
-				};
-			};
-		};
-
-		ap_thermal_cpu1: ap-thermal-cpu1 {
-			polling-delay-passive = <1000>;
-			polling-delay = <1000>;
-
-			thermal-sensors = <&ap_thermal 2>;
-
-			trips {
-				cpu1_hot: cpu1-hot {
-					temperature = <85000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-				cpu1_emerg: cpu1-emerg {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-			};
-
-			cooling-maps {
-				map1_hot: map1-hot {
-					trip = <&cpu1_hot>;
-					cooling-device = <&cpu0 1 2>,
-						<&cpu1 1 2>;
-				};
-				map1_emerg: map1-emerg {
-					trip = <&cpu1_emerg>;
-					cooling-device = <&cpu0 3 3>,
-						<&cpu1 3 3>;
-				};
-			};
-		};
-
-		ap_thermal_cpu2: ap-thermal-cpu2 {
-			polling-delay-passive = <1000>;
-			polling-delay = <1000>;
-
-			thermal-sensors = <&ap_thermal 3>;
-
-			trips {
-				cpu2_hot: cpu2-hot {
-					temperature = <85000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-				cpu2_emerg: cpu2-emerg {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-			};
-
-			cooling-maps {
-				map2_hot: map2-hot {
-					trip = <&cpu2_hot>;
-					cooling-device = <&cpu2 1 2>,
-						<&cpu3 1 2>;
-				};
-				map2_emerg: map2-emerg {
-					trip = <&cpu2_emerg>;
-					cooling-device = <&cpu2 3 3>,
-						<&cpu3 3 3>;
-				};
-			};
-		};
-
-		ap_thermal_cpu3: ap-thermal-cpu3 {
-			polling-delay-passive = <1000>;
-			polling-delay = <1000>;
-
-			thermal-sensors = <&ap_thermal 4>;
-
-			trips {
-				cpu3_hot: cpu3-hot {
-					temperature = <85000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-				cpu3_emerg: cpu3-emerg {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-			};
-
-			cooling-maps {
-				map3_hot: map3-bhot {
-					trip = <&cpu3_hot>;
-					cooling-device = <&cpu2 1 2>,
-						<&cpu3 1 2>;
-				};
-				map3_emerg: map3-emerg {
-					trip = <&cpu3_emerg>;
-					cooling-device = <&cpu2 3 3>,
-						<&cpu3 3 3>;
-				};
-			};
-		};
-	};
 };
diff --git a/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi b/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi
new file mode 100644
index 000000000000..0dc1365e5758
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi
@@ -0,0 +1,456 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 Marvell Technology Group Ltd.
+ *
+ * Device Tree file for Marvell Armada AP80x.
+ */
+
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/thermal/thermal.h>
+
+/dts-v1/;
+
+/ {
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	aliases {
+		serial0 = &uart0;
+		serial1 = &uart1;
+		gpio0 = &ap_gpio;
+		spi0 = &spi0;
+	};
+
+	psci {
+		compatible = "arm,psci-0.2";
+		method = "smc";
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		/*
+		 * This area matches the mapping done with a
+		 * mainline U-Boot, and should be updated by the
+		 * bootloader.
+		 */
+
+		psci-area@4000000 {
+			reg = <0x0 0x4000000 0x0 0x200000>;
+			no-map;
+		};
+	};
+
+	AP_NAME {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		compatible = "simple-bus";
+		interrupt-parent = <&gic>;
+		ranges;
+
+		config-space@f0000000 {
+			#address-cells = <1>;
+			#size-cells = <1>;
+			compatible = "simple-bus";
+			ranges = <0x0 0x0 0xf0000000 0x1000000>;
+
+			gic: interrupt-controller@210000 {
+				compatible = "arm,gic-400";
+				#interrupt-cells = <3>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges;
+				interrupt-controller;
+				interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
+				reg = <0x210000 0x10000>,
+				      <0x220000 0x20000>,
+				      <0x240000 0x20000>,
+				      <0x260000 0x20000>;
+
+				gic_v2m0: v2m@280000 {
+					compatible = "arm,gic-v2m-frame";
+					msi-controller;
+					reg = <0x280000 0x1000>;
+					arm,msi-base-spi = <160>;
+					arm,msi-num-spis = <32>;
+				};
+				gic_v2m1: v2m@290000 {
+					compatible = "arm,gic-v2m-frame";
+					msi-controller;
+					reg = <0x290000 0x1000>;
+					arm,msi-base-spi = <192>;
+					arm,msi-num-spis = <32>;
+				};
+				gic_v2m2: v2m@2a0000 {
+					compatible = "arm,gic-v2m-frame";
+					msi-controller;
+					reg = <0x2a0000 0x1000>;
+					arm,msi-base-spi = <224>;
+					arm,msi-num-spis = <32>;
+				};
+				gic_v2m3: v2m@2b0000 {
+					compatible = "arm,gic-v2m-frame";
+					msi-controller;
+					reg = <0x2b0000 0x1000>;
+					arm,msi-base-spi = <256>;
+					arm,msi-num-spis = <32>;
+				};
+			};
+
+			timer {
+				compatible = "arm,armv8-timer";
+				interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
+					     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
+					     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
+					     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
+			};
+
+			pmu {
+				compatible = "arm,cortex-a72-pmu";
+				interrupt-parent = <&pic>;
+				interrupts = <17>;
+			};
+
+			odmi: odmi@300000 {
+				compatible = "marvell,odmi-controller";
+				interrupt-controller;
+				msi-controller;
+				marvell,odmi-frames = <4>;
+				reg = <0x300000 0x4000>,
+				      <0x304000 0x4000>,
+				      <0x308000 0x4000>,
+				      <0x30C000 0x4000>;
+				marvell,spi-base = <128>, <136>, <144>, <152>;
+			};
+
+			gicp: gicp@3f0040 {
+				compatible = "marvell,ap806-gicp";
+				reg = <0x3f0040 0x10>;
+				marvell,spi-ranges = <64 64>, <288 64>;
+				msi-controller;
+			};
+
+			pic: interrupt-controller@3f0100 {
+				compatible = "marvell,armada-8k-pic";
+				reg = <0x3f0100 0x10>;
+				#interrupt-cells = <1>;
+				interrupt-controller;
+				interrupts = <GIC_PPI 15 IRQ_TYPE_LEVEL_HIGH>;
+			};
+
+			sei: interrupt-controller@3f0200 {
+				compatible = "marvell,ap806-sei";
+				reg = <0x3f0200 0x40>;
+				interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
+				#interrupt-cells = <1>;
+				interrupt-controller;
+				msi-controller;
+			};
+
+			xor@400000 {
+				compatible = "marvell,armada-7k-xor", "marvell,xor-v2";
+				reg = <0x400000 0x1000>,
+				      <0x410000 0x1000>;
+				msi-parent = <&gic_v2m0>;
+				clocks = <&ap_clk 3>;
+				dma-coherent;
+			};
+
+			xor@420000 {
+				compatible = "marvell,armada-7k-xor", "marvell,xor-v2";
+				reg = <0x420000 0x1000>,
+				      <0x430000 0x1000>;
+				msi-parent = <&gic_v2m0>;
+				clocks = <&ap_clk 3>;
+				dma-coherent;
+			};
+
+			xor@440000 {
+				compatible = "marvell,armada-7k-xor", "marvell,xor-v2";
+				reg = <0x440000 0x1000>,
+				      <0x450000 0x1000>;
+				msi-parent = <&gic_v2m0>;
+				clocks = <&ap_clk 3>;
+				dma-coherent;
+			};
+
+			xor@460000 {
+				compatible = "marvell,armada-7k-xor", "marvell,xor-v2";
+				reg = <0x460000 0x1000>,
+				      <0x470000 0x1000>;
+				msi-parent = <&gic_v2m0>;
+				clocks = <&ap_clk 3>;
+				dma-coherent;
+			};
+
+			spi0: spi@510600 {
+				compatible = "marvell,armada-380-spi";
+				reg = <0x510600 0x50>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&ap_clk 3>;
+				status = "disabled";
+			};
+
+			i2c0: i2c@511000 {
+				compatible = "marvell,mv78230-i2c";
+				reg = <0x511000 0x20>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
+				timeout-ms = <1000>;
+				clocks = <&ap_clk 3>;
+				status = "disabled";
+			};
+
+			uart0: serial@512000 {
+				compatible = "snps,dw-apb-uart";
+				reg = <0x512000 0x100>;
+				reg-shift = <2>;
+				interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
+				reg-io-width = <1>;
+				clocks = <&ap_clk 3>;
+				status = "disabled";
+			};
+
+			uart1: serial@512100 {
+				compatible = "snps,dw-apb-uart";
+				reg = <0x512100 0x100>;
+				reg-shift = <2>;
+				interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
+				reg-io-width = <1>;
+				clocks = <&ap_clk 3>;
+				status = "disabled";
+
+			};
+
+			watchdog: watchdog@610000 {
+				compatible = "arm,sbsa-gwdt";
+				reg = <0x610000 0x1000>, <0x600000 0x1000>;
+				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
+			};
+
+			ap_sdhci0: sdhci@6e0000 {
+				compatible = "marvell,armada-ap806-sdhci";
+				reg = <0x6e0000 0x300>;
+				interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
+				clock-names = "core";
+				clocks = <&ap_clk 4>;
+				dma-coherent;
+				marvell,xenon-phy-slow-mode;
+				status = "disabled";
+			};
+
+			ap_syscon0: system-controller@6f4000 {
+				compatible = "syscon", "simple-mfd";
+				reg = <0x6f4000 0x2000>;
+
+				ap_clk: clock {
+					compatible = "marvell,ap806-clock";
+					#clock-cells = <1>;
+				};
+
+				ap_pinctrl: pinctrl {
+					compatible = "marvell,ap806-pinctrl";
+
+					uart0_pins: uart0-pins {
+						marvell,pins = "mpp11", "mpp19";
+						marvell,function = "uart0";
+					};
+				};
+
+				ap_gpio: gpio@1040 {
+					compatible = "marvell,armada-8k-gpio";
+					offset = <0x1040>;
+					ngpios = <20>;
+					gpio-controller;
+					#gpio-cells = <2>;
+					gpio-ranges = <&ap_pinctrl 0 0 20>;
+				};
+			};
+
+			ap_syscon1: system-controller@6f8000 {
+				compatible = "syscon", "simple-mfd";
+				reg = <0x6f8000 0x1000>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				cpu_clk: clock-cpu@278 {
+					compatible = "marvell,ap806-cpu-clock";
+					clocks = <&ap_clk 0>, <&ap_clk 1>;
+					#clock-cells = <1>;
+					reg = <0x278 0xa30>;
+				};
+
+				ap_thermal: thermal-sensor@80 {
+					compatible = "marvell,armada-ap806-thermal";
+					reg = <0x80 0x10>;
+					interrupt-parent = <&sei>;
+					interrupts = <18>;
+					#thermal-sensor-cells = <1>;
+				};
+			};
+		};
+	};
+
+	/*
+	 * The thermal IP features one internal sensor plus, if applicable, one
+	 * remote channel wired to one sensor per CPU.
+	 *
+	 * Only one thermal zone per AP/CP may trigger interrupts at a time, the
+	 * first one that will have a critical trip point will be chosen.
+	 */
+	thermal-zones {
+		ap_thermal_ic: ap-thermal-ic {
+			polling-delay-passive = <0>; /* Interrupt driven */
+			polling-delay = <0>; /* Interrupt driven */
+
+			thermal-sensors = <&ap_thermal 0>;
+
+			trips {
+				ap_crit: ap-crit {
+					temperature = <100000>; /* mC degrees */
+					hysteresis = <2000>; /* mC degrees */
+					type = "critical";
+				};
+			};
+
+			cooling-maps { };
+		};
+
+		ap_thermal_cpu0: ap-thermal-cpu0 {
+			polling-delay-passive = <1000>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&ap_thermal 1>;
+
+			trips {
+				cpu0_hot: cpu0-hot {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				cpu0_emerg: cpu0-emerg {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+			};
+
+			cooling-maps {
+				map0_hot: map0-hot {
+					trip = <&cpu0_hot>;
+					cooling-device = <&cpu0 1 2>,
+						<&cpu1 1 2>;
+				};
+				map0_emerg: map0-ermerg {
+					trip = <&cpu0_emerg>;
+					cooling-device = <&cpu0 3 3>,
+						<&cpu1 3 3>;
+				};
+			};
+		};
+
+		ap_thermal_cpu1: ap-thermal-cpu1 {
+			polling-delay-passive = <1000>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&ap_thermal 2>;
+
+			trips {
+				cpu1_hot: cpu1-hot {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				cpu1_emerg: cpu1-emerg {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+			};
+
+			cooling-maps {
+				map1_hot: map1-hot {
+					trip = <&cpu1_hot>;
+					cooling-device = <&cpu0 1 2>,
+						<&cpu1 1 2>;
+				};
+				map1_emerg: map1-emerg {
+					trip = <&cpu1_emerg>;
+					cooling-device = <&cpu0 3 3>,
+						<&cpu1 3 3>;
+				};
+			};
+		};
+
+		ap_thermal_cpu2: ap-thermal-cpu2 {
+			polling-delay-passive = <1000>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&ap_thermal 3>;
+
+			trips {
+				cpu2_hot: cpu2-hot {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				cpu2_emerg: cpu2-emerg {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+			};
+
+			cooling-maps {
+				map2_hot: map2-hot {
+					trip = <&cpu2_hot>;
+					cooling-device = <&cpu2 1 2>,
+						<&cpu3 1 2>;
+				};
+				map2_emerg: map2-emerg {
+					trip = <&cpu2_emerg>;
+					cooling-device = <&cpu2 3 3>,
+						<&cpu3 3 3>;
+				};
+			};
+		};
+
+		ap_thermal_cpu3: ap-thermal-cpu3 {
+			polling-delay-passive = <1000>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&ap_thermal 4>;
+
+			trips {
+				cpu3_hot: cpu3-hot {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				cpu3_emerg: cpu3-emerg {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+			};
+
+			cooling-maps {
+				map3_hot: map3-bhot {
+					trip = <&cpu3_hot>;
+					cooling-device = <&cpu2 1 2>,
+						<&cpu3 1 2>;
+				};
+				map3_emerg: map3-emerg {
+					trip = <&cpu3_emerg>;
+					cooling-device = <&cpu2 3 3>,
+						<&cpu3 3 3>;
+				};
+			};
+		};
+	};
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
