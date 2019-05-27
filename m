Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8662B0DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 11:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fB6Gf1HxBk2BuMTEF4peO568fyt9pK+Du84DHIRTn1Y=; b=i/fW2WYG/eGglm
	xsEk7SFvEgcVE6f22pn048j1nI5gg4nMCz/zGzxOzkb5dEwkbsJo+/K5kTyJT8/TjJfKyfpatWeXd
	HCam7pCW6P5VKkKVFWSa9Wapvjue0o8KHwNNc3dZ2MZfdqVmpasOLoZ6mvLazXAjr4+3P3Lmlxd2g
	Wko3+jhpV8odDANtUTYHzBTMBawuiGd3NtWPbSoGPhTYCDE8R0Rm7P5rOaiR5GbT7L3OZS4omO+rW
	d/3rAj+op+VwDRm0/zw6kohRDisjPVBST/FnAGabIehsJeQSRvmj9pNVef21v3HGtTVzVCnZikbHA
	QpcGOpLa5YpOichskj/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVBZJ-0006cl-Eu; Mon, 27 May 2019 09:05:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVBZB-0006cH-Ja; Mon, 27 May 2019 09:05:15 +0000
X-UUID: 99dd66ed196341d48216caa3a842485c-20190527
X-UUID: 99dd66ed196341d48216caa3a842485c-20190527
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <erin.lo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 668716115; Mon, 27 May 2019 01:05:08 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 27 May 2019 02:05:06 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 27 May 2019 17:05:05 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 27 May 2019 17:05:05 +0800
From: Erin Lo <erin.lo@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v11 1/6] arm64: dts: Add Mediatek SoC MT8183 and evaluation
 board dts and Makefile
Date: Mon, 27 May 2019 17:04:42 +0800
Message-ID: <1558947887-31084-2-git-send-email-erin.lo@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1558947887-31084-1-git-send-email-erin.lo@mediatek.com>
References: <1558947887-31084-1-git-send-email-erin.lo@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_020513_654860_D347BD29 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Seiya Wang <seiya.wang@mediatek.com>, erin.lo@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-serial@vger.kernel.org,
 mars.cheng@mediatek.com, eddie.huang@mediatek.com,
 Ben Ho <Ben.Ho@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ben Ho <Ben.Ho@mediatek.com>

Add basic chip support for Mediatek 8183, include
uart node with correct uart clocks, pwrap device

Add clock controller nodes, include topckgen, infracfg,
apmixedsys and subsystem.

Signed-off-by: Ben Ho <Ben.Ho@mediatek.com>
Signed-off-by: Erin Lo <erin.lo@mediatek.com>
Signed-off-by: Seiya Wang <seiya.wang@mediatek.com>
Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Signed-off-by: Eddie Huang <eddie.huang@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/Makefile       |   1 +
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts |  31 +++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 311 ++++++++++++++++++++++++++++
 3 files changed, 343 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-evb.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183.dtsi

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index e8f952f..458bbc4 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -7,3 +7,4 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-x20-dev.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-rfb1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-bananapi-bpi-r64.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-evb.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-evb.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
new file mode 100644
index 0000000..9b52559
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (c) 2018 MediaTek Inc.
+ * Author: Ben Ho <ben.ho@mediatek.com>
+ *	   Erin Lo <erin.lo@mediatek.com>
+ */
+
+/dts-v1/;
+#include "mt8183.dtsi"
+
+/ {
+	model = "MediaTek MT8183 evaluation board";
+	compatible = "mediatek,mt8183-evb", "mediatek,mt8183";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0 0x40000000 0 0x80000000>;
+	};
+
+	chosen {
+		stdout-path = "serial0:921600n8";
+	};
+};
+
+&uart0 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
new file mode 100644
index 0000000..08274bf
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -0,0 +1,311 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (c) 2018 MediaTek Inc.
+ * Author: Ben Ho <ben.ho@mediatek.com>
+ *	   Erin Lo <erin.lo@mediatek.com>
+ */
+
+#include <dt-bindings/clock/mt8183-clk.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+
+/ {
+	compatible = "mediatek,mt8183";
+	interrupt-parent = <&sysirq>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu = <&cpu0>;
+				};
+				core1 {
+					cpu = <&cpu1>;
+				};
+				core2 {
+					cpu = <&cpu2>;
+				};
+				core3 {
+					cpu = <&cpu3>;
+				};
+			};
+
+			cluster1 {
+				core0 {
+					cpu = <&cpu4>;
+				};
+				core1 {
+					cpu = <&cpu5>;
+				};
+				core2 {
+					cpu = <&cpu6>;
+				};
+				core3 {
+					cpu = <&cpu7>;
+				};
+			};
+		};
+
+		cpu0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x000>;
+			enable-method = "psci";
+		};
+
+		cpu1: cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x001>;
+			enable-method = "psci";
+		};
+
+		cpu2: cpu@2 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x002>;
+			enable-method = "psci";
+		};
+
+		cpu3: cpu@3 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x003>;
+			enable-method = "psci";
+		};
+
+		cpu4: cpu@100 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a73";
+			reg = <0x100>;
+			enable-method = "psci";
+		};
+
+		cpu5: cpu@101 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a73";
+			reg = <0x101>;
+			enable-method = "psci";
+		};
+
+		cpu6: cpu@102 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a73";
+			reg = <0x102>;
+			enable-method = "psci";
+		};
+
+		cpu7: cpu@103 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a73";
+			reg = <0x103>;
+			enable-method = "psci";
+		};
+	};
+
+	pmu-a53 {
+		compatible = "arm,cortex-a53-pmu";
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW &ppi_cluster0>;
+	};
+
+	pmu-a73 {
+		compatible = "arm,cortex-a73-pmu";
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW &ppi_cluster1>;
+	};
+
+	psci {
+		compatible      = "arm,psci-1.0";
+		method          = "smc";
+	};
+
+	clk26m: oscillator {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <26000000>;
+		clock-output-names = "clk26m";
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW 0>,
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW 0>,
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW 0>,
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW 0>;
+	};
+
+	soc {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		compatible = "simple-bus";
+		ranges;
+
+		gic: interrupt-controller@c000000 {
+			compatible = "arm,gic-v3";
+			#interrupt-cells = <4>;
+			interrupt-parent = <&gic>;
+			interrupt-controller;
+			reg = <0 0x0c000000 0 0x40000>,  /* GICD */
+			      <0 0x0c100000 0 0x200000>, /* GICR */
+			      <0 0x0c400000 0 0x2000>,   /* GICC */
+			      <0 0x0c410000 0 0x1000>,   /* GICH */
+			      <0 0x0c420000 0 0x2000>;   /* GICV */
+
+			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH 0>;
+			ppi-partitions {
+				ppi_cluster0: interrupt-partition-0 {
+					affinity = <&cpu0 &cpu1 &cpu2 &cpu3>;
+				};
+				ppi_cluster1: interrupt-partition-1 {
+					affinity = <&cpu4 &cpu5 &cpu6 &cpu7>;
+				};
+			};
+		};
+
+		mcucfg: syscon@c530000 {
+			compatible = "mediatek,mt8183-mcucfg", "syscon";
+			reg = <0 0x0c530000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		sysirq: interrupt-controller@c530a80 {
+			compatible = "mediatek,mt8183-sysirq",
+				     "mediatek,mt6577-sysirq";
+			interrupt-controller;
+			#interrupt-cells = <3>;
+			interrupt-parent = <&gic>;
+			reg = <0 0x0c530a80 0 0x50>;
+		};
+
+		topckgen: syscon@10000000 {
+			compatible = "mediatek,mt8183-topckgen", "syscon";
+			reg = <0 0x10000000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		infracfg: syscon@10001000 {
+			compatible = "mediatek,mt8183-infracfg", "syscon";
+			reg = <0 0x10001000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		apmixedsys: syscon@1000c000 {
+			compatible = "mediatek,mt8183-apmixedsys", "syscon";
+			reg = <0 0x1000c000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		pwrap: pwrap@1000d000 {
+			compatible = "mediatek,mt8183-pwrap";
+			reg = <0 0x1000d000 0 0x1000>;
+			reg-names = "pwrap";
+			interrupts = <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&topckgen CLK_TOP_MUX_PMICSPI>,
+				 <&infracfg CLK_INFRA_PMIC_AP>;
+			clock-names = "spi", "wrap";
+		};
+
+		uart0: serial@11002000 {
+			compatible = "mediatek,mt8183-uart",
+				     "mediatek,mt6577-uart";
+			reg = <0 0x11002000 0 0x1000>;
+			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&clk26m>, <&infracfg CLK_INFRA_UART0>;
+			clock-names = "baud", "bus";
+			status = "disabled";
+		};
+
+		uart1: serial@11003000 {
+			compatible = "mediatek,mt8183-uart",
+				     "mediatek,mt6577-uart";
+			reg = <0 0x11003000 0 0x1000>;
+			interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&clk26m>, <&infracfg CLK_INFRA_UART1>;
+			clock-names = "baud", "bus";
+			status = "disabled";
+		};
+
+		uart2: serial@11004000 {
+			compatible = "mediatek,mt8183-uart",
+				     "mediatek,mt6577-uart";
+			reg = <0 0x11004000 0 0x1000>;
+			interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&clk26m>, <&infracfg CLK_INFRA_UART2>;
+			clock-names = "baud", "bus";
+			status = "disabled";
+		};
+
+		audiosys: syscon@11220000 {
+			compatible = "mediatek,mt8183-audiosys", "syscon";
+			reg = <0 0x11220000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		mfgcfg: syscon@13000000 {
+			compatible = "mediatek,mt8183-mfgcfg", "syscon";
+			reg = <0 0x13000000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		mmsys: syscon@14000000 {
+			compatible = "mediatek,mt8183-mmsys", "syscon";
+			reg = <0 0x14000000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		imgsys: syscon@15020000 {
+			compatible = "mediatek,mt8183-imgsys", "syscon";
+			reg = <0 0x15020000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		vdecsys: syscon@16000000 {
+			compatible = "mediatek,mt8183-vdecsys", "syscon";
+			reg = <0 0x16000000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		vencsys: syscon@17000000 {
+			compatible = "mediatek,mt8183-vencsys", "syscon";
+			reg = <0 0x17000000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		ipu_conn: syscon@19000000 {
+			compatible = "mediatek,mt8183-ipu_conn", "syscon";
+			reg = <0 0x19000000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		ipu_adl: syscon@19010000 {
+			compatible = "mediatek,mt8183-ipu_adl", "syscon";
+			reg = <0 0x19010000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		ipu_core0: syscon@19180000 {
+			compatible = "mediatek,mt8183-ipu_core0", "syscon";
+			reg = <0 0x19180000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		ipu_core1: syscon@19280000 {
+			compatible = "mediatek,mt8183-ipu_core1", "syscon";
+			reg = <0 0x19280000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		camsys: syscon@1a000000 {
+			compatible = "mediatek,mt8183-camsys", "syscon";
+			reg = <0 0x1a000000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+	};
+};
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
