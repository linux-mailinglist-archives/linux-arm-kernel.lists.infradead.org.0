Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 810B7E1AE9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:40:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Tn2EqevBSWfymr+av+PG4rdWOqXd67OAktvEsqppxzs=; b=bCmfGn/RBMbfjuXQ2T1jizzop5
	TyhsV2OjrUJ/0vPc+H0UwT69NtNVeRVrk+jgrlwgNZpTY8DfkkDnLK8p7sxsox51X7S5hyW7rS9Le
	TJ188Gy3bQNOEVrRzdxN/2qn48GLys9qhekwSpUlfgHe+AB9Bj16g/hroEHZ7gGQSTGIXizvYwCAz
	UI5lpE/+rhdYZhi+Fh3ZfLGqvxrz2dBS0mp0iN/k3qGeYdvhV1JJ1kbuwShvfbAvx2551mtb3e5qv
	WJpoX7zrmgrmOBPK8GRpiiUwIIVBORnod55KGjektDF+PbTXMXv7hOwX014vhiZTIG0M80tig5UdB
	jtG1CEZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFwJ-0005kA-Of; Wed, 23 Oct 2019 12:40:35 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFpi-0006mc-8g
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:33:57 +0000
Received: from ramsan ([84.194.98.4]) by baptiste.telenet-ops.be with bizsmtp
 id H0Zk2100U05gfCL010ZkgL; Wed, 23 Oct 2019 14:33:44 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFpg-0003u4-43; Wed, 23 Oct 2019 14:33:44 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFpg-0003QZ-2m; Wed, 23 Oct 2019 14:33:44 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH v2 08/11] arm64: dts: renesas: Add Renesas R8A77961 SoC support
Date: Wed, 23 Oct 2019 14:33:39 +0200
Message-Id: <20191023123342.13100-9-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023123342.13100-1-geert+renesas@glider.be>
References: <20191023123342.13100-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_053346_715158_43664E16 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 Eugeniu Rosca <erosca@de.adit-jv.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add initial support for the Renesas R-Car M3-W+ (R8A77961) SoC.

This includes:
  - Cortex-A57 and Cortex-A53 CPU cores
    (incl. L2 caches and power state definitions),
  - Power Management Unit,
  - PSCI firmware,
  - Pin Function Controller,
  - Clock, Reset, System, and Interrupt Controllers,
  - SCIF2 serial console,
  - Product Register,
  - ARM Architectured Timer,
and various placeholders to allow to use salvator-xs.dtsi.

Based on r8a7796.dtsi.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Tested-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
v2:
  - Add Reviewed-by, Tested-by.
---
 arch/arm64/boot/dts/renesas/r8a77961.dtsi | 723 ++++++++++++++++++++++
 1 file changed, 723 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r8a77961.dtsi

diff --git a/arch/arm64/boot/dts/renesas/r8a77961.dtsi b/arch/arm64/boot/dts/renesas/r8a77961.dtsi
new file mode 100644
index 0000000000000000..64466c86b698826d
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r8a77961.dtsi
@@ -0,0 +1,723 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree Source for the R-Car M3-W+ (R8A77961) SoC
+ *
+ * Copyright (C) 2016-2017 Renesas Electronics Corp.
+ */
+
+#include <dt-bindings/clock/r8a77961-cpg-mssr.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/power/r8a77961-sysc.h>
+
+#define CPG_AUDIO_CLK_I		R8A77961_CLK_S0D4
+
+/ {
+	compatible = "renesas,r8a77961";
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	/*
+	 * The external audio clocks are configured as 0 Hz fixed frequency
+	 * clocks by default.
+	 * Boards that provide audio clocks should override them.
+	 */
+	audio_clk_a: audio_clk_a {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <0>;
+	};
+
+	audio_clk_b: audio_clk_b {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <0>;
+	};
+
+	audio_clk_c: audio_clk_c {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <0>;
+	};
+
+	/* External CAN clock - to be overridden by boards that provide it */
+	can_clk: can {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <0>;
+	};
+
+	cluster0_opp: opp_table0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <820000>;
+			clock-latency-ns = <300000>;
+		};
+		opp-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = <820000>;
+			clock-latency-ns = <300000>;
+		};
+		opp-1500000000 {
+			opp-hz = /bits/ 64 <1500000000>;
+			opp-microvolt = <820000>;
+			clock-latency-ns = <300000>;
+		};
+		opp-1600000000 {
+			opp-hz = /bits/ 64 <1600000000>;
+			opp-microvolt = <900000>;
+			clock-latency-ns = <300000>;
+			turbo-mode;
+		};
+		opp-1700000000 {
+			opp-hz = /bits/ 64 <1700000000>;
+			opp-microvolt = <900000>;
+			clock-latency-ns = <300000>;
+			turbo-mode;
+		};
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <960000>;
+			clock-latency-ns = <300000>;
+			turbo-mode;
+		};
+	};
+
+	cluster1_opp: opp_table1 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <820000>;
+			clock-latency-ns = <300000>;
+		};
+		opp-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = <820000>;
+			clock-latency-ns = <300000>;
+		};
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <820000>;
+			clock-latency-ns = <300000>;
+		};
+		opp-1300000000 {
+			opp-hz = /bits/ 64 <1300000000>;
+			opp-microvolt = <820000>;
+			clock-latency-ns = <300000>;
+			turbo-mode;
+		};
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu = <&a57_0>;
+				};
+				core1 {
+					cpu = <&a57_1>;
+				};
+			};
+
+			cluster1 {
+				core0 {
+					cpu = <&a53_0>;
+				};
+				core1 {
+					cpu = <&a53_1>;
+				};
+				core2 {
+					cpu = <&a53_2>;
+				};
+				core3 {
+					cpu = <&a53_3>;
+				};
+			};
+		};
+
+		a57_0: cpu@0 {
+			compatible = "arm,cortex-a57";
+			reg = <0x0>;
+			device_type = "cpu";
+			power-domains = <&sysc R8A77961_PD_CA57_CPU0>;
+			next-level-cache = <&L2_CA57>;
+			enable-method = "psci";
+			cpu-idle-states = <&CPU_SLEEP_0>;
+			dynamic-power-coefficient = <854>;
+			clocks = <&cpg CPG_CORE R8A77961_CLK_Z>;
+			operating-points-v2 = <&cluster0_opp>;
+			capacity-dmips-mhz = <1024>;
+			#cooling-cells = <2>;
+		};
+
+		a57_1: cpu@1 {
+			compatible = "arm,cortex-a57";
+			reg = <0x1>;
+			device_type = "cpu";
+			power-domains = <&sysc R8A77961_PD_CA57_CPU1>;
+			next-level-cache = <&L2_CA57>;
+			enable-method = "psci";
+			cpu-idle-states = <&CPU_SLEEP_0>;
+			clocks = <&cpg CPG_CORE R8A77961_CLK_Z>;
+			operating-points-v2 = <&cluster0_opp>;
+			capacity-dmips-mhz = <1024>;
+			#cooling-cells = <2>;
+		};
+
+		a53_0: cpu@100 {
+			compatible = "arm,cortex-a53";
+			reg = <0x100>;
+			device_type = "cpu";
+			power-domains = <&sysc R8A77961_PD_CA53_CPU0>;
+			next-level-cache = <&L2_CA53>;
+			enable-method = "psci";
+			cpu-idle-states = <&CPU_SLEEP_1>;
+			#cooling-cells = <2>;
+			dynamic-power-coefficient = <277>;
+			clocks = <&cpg CPG_CORE R8A77961_CLK_Z2>;
+			operating-points-v2 = <&cluster1_opp>;
+			capacity-dmips-mhz = <535>;
+		};
+
+		a53_1: cpu@101 {
+			compatible = "arm,cortex-a53";
+			reg = <0x101>;
+			device_type = "cpu";
+			power-domains = <&sysc R8A77961_PD_CA53_CPU1>;
+			next-level-cache = <&L2_CA53>;
+			enable-method = "psci";
+			cpu-idle-states = <&CPU_SLEEP_1>;
+			clocks = <&cpg CPG_CORE R8A77961_CLK_Z2>;
+			operating-points-v2 = <&cluster1_opp>;
+			capacity-dmips-mhz = <535>;
+		};
+
+		a53_2: cpu@102 {
+			compatible = "arm,cortex-a53";
+			reg = <0x102>;
+			device_type = "cpu";
+			power-domains = <&sysc R8A77961_PD_CA53_CPU2>;
+			next-level-cache = <&L2_CA53>;
+			enable-method = "psci";
+			cpu-idle-states = <&CPU_SLEEP_1>;
+			clocks = <&cpg CPG_CORE R8A77961_CLK_Z2>;
+			operating-points-v2 = <&cluster1_opp>;
+			capacity-dmips-mhz = <535>;
+		};
+
+		a53_3: cpu@103 {
+			compatible = "arm,cortex-a53";
+			reg = <0x103>;
+			device_type = "cpu";
+			power-domains = <&sysc R8A77961_PD_CA53_CPU3>;
+			next-level-cache = <&L2_CA53>;
+			enable-method = "psci";
+			cpu-idle-states = <&CPU_SLEEP_1>;
+			clocks = <&cpg CPG_CORE R8A77961_CLK_Z2>;
+			operating-points-v2 = <&cluster1_opp>;
+			capacity-dmips-mhz = <535>;
+		};
+
+		L2_CA57: cache-controller-0 {
+			compatible = "cache";
+			power-domains = <&sysc R8A77961_PD_CA57_SCU>;
+			cache-unified;
+			cache-level = <2>;
+		};
+
+		L2_CA53: cache-controller-1 {
+			compatible = "cache";
+			power-domains = <&sysc R8A77961_PD_CA53_SCU>;
+			cache-unified;
+			cache-level = <2>;
+		};
+
+		idle-states {
+			entry-method = "psci";
+
+			CPU_SLEEP_0: cpu-sleep-0 {
+				compatible = "arm,idle-state";
+				arm,psci-suspend-param = <0x0010000>;
+				local-timer-stop;
+				entry-latency-us = <400>;
+				exit-latency-us = <500>;
+				min-residency-us = <4000>;
+			};
+
+			CPU_SLEEP_1: cpu-sleep-1 {
+				compatible = "arm,idle-state";
+				arm,psci-suspend-param = <0x0010000>;
+				local-timer-stop;
+				entry-latency-us = <700>;
+				exit-latency-us = <700>;
+				min-residency-us = <5000>;
+			};
+		};
+	};
+
+	extal_clk: extal {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		/* This value must be overridden by the board */
+		clock-frequency = <0>;
+	};
+
+	extalr_clk: extalr {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		/* This value must be overridden by the board */
+		clock-frequency = <0>;
+	};
+
+	/* External PCIe clock - can be overridden by the board */
+	pcie_bus_clk: pcie_bus {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <0>;
+	};
+
+	pmu_a53 {
+		compatible = "arm,cortex-a53-pmu";
+		interrupts-extended = <&gic GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>,
+				      <&gic GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>,
+				      <&gic GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>,
+				      <&gic GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&a53_0>, <&a53_1>, <&a53_2>, <&a53_3>;
+	};
+
+	pmu_a57 {
+		compatible = "arm,cortex-a57-pmu";
+		interrupts-extended = <&gic GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
+				      <&gic GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&a57_0>, <&a57_1>;
+	};
+
+	psci {
+		compatible = "arm,psci-1.0", "arm,psci-0.2";
+		method = "smc";
+	};
+
+	/* External SCIF clock - to be overridden by boards that provide it */
+	scif_clk: scif {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <0>;
+	};
+
+	soc {
+		compatible = "simple-bus";
+		interrupt-parent = <&gic>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		rwdt: watchdog@e6020000 {
+			reg = <0 0xe6020000 0 0x0c>;
+			/* placeholder */
+		};
+
+		gpio2: gpio@e6052000 {
+			reg = <0 0xe6052000 0 0x50>;
+			#gpio-cells = <2>;
+			gpio-controller;
+			#interrupt-cells = <2>;
+			interrupt-controller;
+			/* placeholder */
+		};
+
+		gpio3: gpio@e6053000 {
+			reg = <0 0xe6053000 0 0x50>;
+			#gpio-cells = <2>;
+			gpio-controller;
+			#interrupt-cells = <2>;
+			interrupt-controller;
+			/* placeholder */
+		};
+
+		gpio4: gpio@e6054000 {
+			reg = <0 0xe6054000 0 0x50>;
+			#gpio-cells = <2>;
+			gpio-controller;
+			#interrupt-cells = <2>;
+			interrupt-controller;
+			/* placeholder */
+		};
+
+		gpio5: gpio@e6055000 {
+			reg = <0 0xe6055000 0 0x50>;
+			#gpio-cells = <2>;
+			gpio-controller;
+			#interrupt-cells = <2>;
+			interrupt-controller;
+			/* placeholder */
+		};
+
+		gpio6: gpio@e6055400 {
+			reg = <0 0xe6055400 0 0x50>;
+			#gpio-cells = <2>;
+			gpio-controller;
+			#interrupt-cells = <2>;
+			interrupt-controller;
+			/* placeholder */
+		};
+
+		pfc: pin-controller@e6060000 {
+			compatible = "renesas,pfc-r8a77961";
+			reg = <0 0xe6060000 0 0x50c>;
+		};
+
+		cpg: clock-controller@e6150000 {
+			compatible = "renesas,r8a77961-cpg-mssr";
+			reg = <0 0xe6150000 0 0x1000>;
+			clocks = <&extal_clk>, <&extalr_clk>;
+			clock-names = "extal", "extalr";
+			#clock-cells = <2>;
+			#power-domain-cells = <0>;
+			#reset-cells = <1>;
+		};
+
+		rst: reset-controller@e6160000 {
+			compatible = "renesas,r8a77961-rst";
+			reg = <0 0xe6160000 0 0x0200>;
+		};
+
+		sysc: system-controller@e6180000 {
+			compatible = "renesas,r8a77961-sysc";
+			reg = <0 0xe6180000 0 0x0400>;
+			#power-domain-cells = <1>;
+		};
+
+		intc_ex: interrupt-controller@e61c0000 {
+			#interrupt-cells = <2>;
+			interrupt-controller;
+			reg = <0 0xe61c0000 0 0x200>;
+			/* placeholder */
+		};
+
+		i2c2: i2c@e6510000 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0 0xe6510000 0 0x40>;
+			/* placeholder */
+		};
+
+		i2c4: i2c@e66d8000 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0 0xe66d8000 0 0x40>;
+			/* placeholder */
+		};
+
+		i2c_dvfs: i2c@e60b0000 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0 0xe60b0000 0 0x425>;
+			/* placeholder */
+		};
+
+		hscif1: serial@e6550000 {
+			reg = <0 0xe6550000 0 0x60>;
+			/* placeholder */
+		};
+
+		hsusb: usb@e6590000 {
+			reg = <0 0xe6590000 0 0x200>;
+			/* placeholder */
+		};
+
+		usb3_phy0: usb-phy@e65ee000 {
+			reg = <0 0xe65ee000 0 0x90>;
+			#phy-cells = <0>;
+			/* placeholder */
+		};
+
+		avb: ethernet@e6800000 {
+			reg = <0 0xe6800000 0 0x800>, <0 0xe6a00000 0 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			/* placeholder */
+		};
+
+		pwm1: pwm@e6e31000 {
+			reg = <0 0xe6e31000 0 8>;
+			#pwm-cells = <2>;
+			/* placeholder */
+		};
+
+		scif1: serial@e6e68000 {
+			reg = <0 0xe6e68000 0 64>;
+			/* placeholder */
+		};
+
+		scif2: serial@e6e88000 {
+			compatible = "renesas,scif-r8a77961",
+				     "renesas,rcar-gen3-scif", "renesas,scif";
+			reg = <0 0xe6e88000 0 64>;
+			interrupts = <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 310>,
+				 <&cpg CPG_CORE R8A77961_CLK_S3D1>,
+				 <&scif_clk>;
+			clock-names = "fck", "brg_int", "scif_clk";
+			power-domains = <&sysc R8A77961_PD_ALWAYS_ON>;
+			resets = <&cpg 310>;
+			status = "disabled";
+		};
+
+		vin0: video@e6ef0000 {
+			reg = <0 0xe6ef0000 0 0x1000>;
+			/* placeholder */
+		};
+
+		vin1: video@e6ef1000 {
+			reg = <0 0xe6ef1000 0 0x1000>;
+			/* placeholder */
+		};
+
+		vin2: video@e6ef2000 {
+			reg = <0 0xe6ef2000 0 0x1000>;
+			/* placeholder */
+		};
+
+		vin3: video@e6ef3000 {
+			reg = <0 0xe6ef3000 0 0x1000>;
+			/* placeholder */
+		};
+
+		vin4: video@e6ef4000 {
+			reg = <0 0xe6ef4000 0 0x1000>;
+			/* placeholder */
+		};
+
+		vin5: video@e6ef5000 {
+			reg = <0 0xe6ef5000 0 0x1000>;
+			/* placeholder */
+		};
+
+		vin6: video@e6ef6000 {
+			reg = <0 0xe6ef6000 0 0x1000>;
+			/* placeholder */
+		};
+
+		vin7: video@e6ef7000 {
+			reg = <0 0xe6ef7000 0 0x1000>;
+			/* placeholder */
+		};
+
+		rcar_sound: sound@ec500000 {
+			reg = <0 0xec500000 0 0x1000>, /* SCU */
+			      <0 0xec5a0000 0 0x100>,  /* ADG */
+			      <0 0xec540000 0 0x1000>, /* SSIU */
+			      <0 0xec541000 0 0x280>,  /* SSI */
+			      <0 0xec760000 0 0x200>;  /* Audio DMAC peri peri*/
+			/* placeholder */
+			rcar_sound,dvc {
+				dvc0: dvc-0 { };
+				dvc1: dvc-1 { };
+			};
+
+			rcar_sound,src {
+				src0: src-0 { };
+				src1: src-1 { };
+			};
+
+			rcar_sound,ssi {
+				ssi0: ssi-0 { };
+				ssi1: ssi-1 { };
+			};
+		};
+
+		xhci0: usb@ee000000 {
+			reg = <0 0xee000000 0 0xc00>;
+			/* placeholder */
+		};
+
+		usb3_peri0: usb@ee020000 {
+			reg = <0 0xee020000 0 0x400>;
+			/* placeholder */
+		};
+
+		ohci0: usb@ee080000 {
+			reg = <0 0xee080000 0 0x100>;
+			/* placeholder */
+		};
+
+		ohci1: usb@ee0a0000 {
+			reg = <0 0xee0a0000 0 0x100>;
+			/* placeholder */
+		};
+
+		ehci0: usb@ee080100 {
+			reg = <0 0xee080100 0 0x100>;
+			/* placeholder */
+		};
+
+		ehci1: usb@ee0a0100 {
+			reg = <0 0xee0a0100 0 0x100>;
+			/* placeholder */
+		};
+
+		usb2_phy0: usb-phy@ee080200 {
+			reg = <0 0xee080200 0 0x700>;
+			/* placeholder */
+		};
+
+		usb2_phy1: usb-phy@ee0a0200 {
+			reg = <0 0xee0a0200 0 0x700>;
+			/* placeholder */
+		};
+
+		sdhi0: sd@ee100000 {
+			reg = <0 0xee100000 0 0x2000>;
+			/* placeholder */
+		};
+
+		sdhi2: sd@ee140000 {
+			reg = <0 0xee140000 0 0x2000>;
+			/* placeholder */
+		};
+
+		sdhi3: sd@ee160000 {
+			reg = <0 0xee160000 0 0x2000>;
+			/* placeholder */
+		};
+
+		gic: interrupt-controller@f1010000 {
+			compatible = "arm,gic-400";
+			#interrupt-cells = <3>;
+			#address-cells = <0>;
+			interrupt-controller;
+			reg = <0x0 0xf1010000 0 0x1000>,
+			      <0x0 0xf1020000 0 0x20000>,
+			      <0x0 0xf1040000 0 0x20000>,
+			      <0x0 0xf1060000 0 0x20000>;
+			interrupts = <GIC_PPI 9
+					(GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_HIGH)>;
+			clocks = <&cpg CPG_MOD 408>;
+			clock-names = "clk";
+			power-domains = <&sysc R8A77961_PD_ALWAYS_ON>;
+			resets = <&cpg 408>;
+		};
+
+		pciec0: pcie@fe000000 {
+			reg = <0 0xfe000000 0 0x80000>;
+			/* placeholder */
+		};
+
+		pciec1: pcie@ee800000 {
+			reg = <0 0xee800000 0 0x80000>;
+			/* placeholder */
+		};
+
+		csi20: csi2@fea80000 {
+			reg = <0 0xfea80000 0 0x10000>;
+			/* placeholder */
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+				};
+			};
+		};
+
+		csi40: csi2@feaa0000 {
+			reg = <0 0xfeaa0000 0 0x10000>;
+			/* placeholder */
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					reg = <1>;
+				};
+			};
+		};
+
+		hdmi0: hdmi@fead0000 {
+			reg = <0 0xfead0000 0 0x10000>;
+			/* placeholder */
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				port@0 {
+					reg = <0>;
+				};
+				port@1 {
+					reg = <1>;
+				};
+				port@2 {
+					/* HDMI sound */
+					reg = <2>;
+				};
+			};
+		};
+
+		du: display@feb00000 {
+			reg = <0 0xfeb00000 0 0x70000>;
+			/* placeholder */
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					du_out_rgb: endpoint {
+					};
+				};
+				port@1 {
+					reg = <1>;
+					du_out_hdmi0: endpoint {
+					};
+				};
+				port@2 {
+					reg = <2>;
+					du_out_lvds0: endpoint {
+					};
+				};
+			};
+		};
+
+		prr: chipid@fff00044 {
+			compatible = "renesas,prr";
+			reg = <0 0xfff00044 0 4>;
+		};
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts-extended = <&gic GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
+				      <&gic GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
+				      <&gic GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
+				      <&gic GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>;
+	};
+
+	/* External USB clocks - can be overridden by the board */
+	usb3s0_clk: usb3s0 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <0>;
+	};
+
+	usb_extal_clk: usb_extal {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <0>;
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
