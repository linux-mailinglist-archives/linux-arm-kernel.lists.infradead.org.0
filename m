Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57AC866A71
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 11:49:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t/9b8qk1sVl9Nx2L1k9JDPq6Wlf/gLY9OJSPgZQAX3k=; b=aT7hyzPoj30dkq
	hbxPhJ1/BvmlhtYWN92XOtqyS1iDvFdWpgCUz7Mf+W8a4FGyqzlgoCcKCJuHtNzZQKlMfod2flvVi
	Ad/ru3V2zfJk7O2OKEZV+Kry0PPnUySExG4Uc7BygUQjcQpEEFlE/Nrxgc5d3xXmz52AGGL3D/YTg
	u6fZupmSay7OhE3fgfyAS41tYEpHRAiyDpydc2GNc2iqkH7ZK3EPiGDcrzdLgY2MTFBmqVWI7ZkGq
	porZI3rWznxzoeNbz8rlCqW6P+8+jjXf8+88tAcOK6Pb03dT64PDKKTMifSbODERqaKbrpqrNGb1K
	MH5ZyM63kn+JGYbAla2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlsAk-0001VB-Sv; Fri, 12 Jul 2019 09:48:59 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlsA9-0001F9-DZ; Fri, 12 Jul 2019 09:48:24 +0000
X-UUID: e87221d33d184c51a5f0d5b9b59a0b72-20190712
X-UUID: e87221d33d184c51a5f0d5b9b59a0b72-20190712
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1384741119; Fri, 12 Jul 2019 01:47:56 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 12 Jul 2019 02:47:55 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 12 Jul 2019 17:47:52 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 12 Jul 2019 17:47:53 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Stephen Boyd <sboyd@kernel.org>, "Sean
 Wang" <sean.wang@mediatek.com>, Mars Cheng <mars.cheng@mediatek.com>, "Owen
 Chen" <owen.chen@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v6 7/8] arm64: dts: mediatek: add mt6765 support
Date: Fri, 12 Jul 2019 17:43:43 +0800
Message-ID: <1562924653-10056-8-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1562924653-10056-1-git-send-email-macpaul.lin@mediatek.com>
References: <1562924653-10056-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_024822_459823_06C0BBFB 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Loda Chou <loda.chou@mediatek.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>, linux-serial@vger.kernel.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mars Cheng <mars.cheng@mediatek.com>

Add basic chip support for Mediatek 6765, include
uart node with correct uart clocks, pwrap device

Add clock controller nodes, include topckgen, infracfg,
apmixedsys and subsystem.

Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
Signed-off-by: Owen Chen <owen.chen@mediatek.com>
Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
Acked-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/boot/dts/mediatek/Makefile       |   1 +
 arch/arm64/boot/dts/mediatek/mt6765-evb.dts |  33 +++
 arch/arm64/boot/dts/mediatek/mt6765.dtsi    | 253 ++++++++++++++++++++
 3 files changed, 287 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6765-evb.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6765.dtsi

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 458bbc422a94..22bdf1a99a62 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt2712-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt6755-evb.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt6765-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt6795-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-x20-dev.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt6765-evb.dts b/arch/arm64/boot/dts/mediatek/mt6765-evb.dts
new file mode 100644
index 000000000000..36dddff2b7f8
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt6765-evb.dts
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * dts file for Mediatek MT6765
+ *
+ * (C) Copyright 2018. Mediatek, Inc.
+ *
+ * Mars Cheng <mars.cheng@mediatek.com>
+ */
+
+/dts-v1/;
+#include "mt6765.dtsi"
+
+/ {
+	model = "MediaTek MT6765 EVB";
+	compatible = "mediatek,mt6765-evb", "mediatek,mt6765";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0 0x40000000 0 0x1e800000>;
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
diff --git a/arch/arm64/boot/dts/mediatek/mt6765.dtsi b/arch/arm64/boot/dts/mediatek/mt6765.dtsi
new file mode 100644
index 000000000000..2662470fe607
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt6765.dtsi
@@ -0,0 +1,253 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * dts file for Mediatek MT6765
+ *
+ * (C) Copyright 2018. Mediatek, Inc.
+ *
+ * Mars Cheng <mars.cheng@mediatek.com>
+ */
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/clock/mt6765-clk.h>
+
+/ {
+	compatible = "mediatek,mt6765";
+	interrupt-parent = <&sysirq>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	psci {
+		compatible = "arm,psci-0.2";
+		method = "smc";
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			enable-method = "psci";
+			reg = <0x000>;
+		};
+
+		cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			enable-method = "psci";
+			reg = <0x001>;
+		};
+
+		cpu@2 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			enable-method = "psci";
+			reg = <0x002>;
+		};
+
+		cpu@3 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			enable-method = "psci";
+			reg = <0x003>;
+		};
+
+		cpu@100 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			enable-method = "psci";
+			reg = <0x100>;
+		};
+
+		cpu@101 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			enable-method = "psci";
+			reg = <0x101>;
+		};
+
+		cpu@102 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			enable-method = "psci";
+			reg = <0x102>;
+		};
+
+		cpu@103 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			enable-method = "psci";
+			reg = <0x103>;
+		};
+	};
+
+	clocks {
+		clk26m: clk26m {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <26000000>;
+		};
+
+		clk32k: clk32k {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <32000>;
+		};
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
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
+			#interrupt-cells = <3>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			interrupt-parent = <&gic>;
+			interrupt-controller;
+			reg = <0 0x0c000000 0 0x40000>,  /* GICD */
+			      <0 0x0c100000 0 0x200000>, /* GICR */
+			      <0 0x0c400000 0 0x2000>,   /* GICC */
+			      <0 0x0c410000 0 0x2000>,   /* GICH */
+			      <0 0x0c420000 0 0x20000>;  /* GICV */
+			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		topckgen: syscon@10000000 {
+			compatible = "mediatek,mt6765-topckgen", "syscon";
+			reg = <0 0x10000000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		infracfg: syscon@10001000 {
+			compatible = "mediatek,mt6765-infracfg", "syscon";
+			reg = <0 0x10001000 0 0x1000>;
+			interrupts = <GIC_SPI 147 IRQ_TYPE_EDGE_RISING>;
+			#clock-cells = <1>;
+		};
+
+		pericfg: pericfg@10003000 {
+			compatible = "mediatek,mt6765-pericfg", "syscon";
+			reg = <0 0x10003000 0 0x1000>;
+		};
+
+		scpsys: scpsys@10006000 {
+			compatible = "mediatek,mt6765-scpsys";
+			reg =	<0 0x10006000 0 0x1000>; /* spm */
+			#power-domain-cells = <1>;
+			clocks = <&topckgen CLK_TOP_MFG_SEL>,
+				 <&topckgen CLK_TOP_MM_SEL>,
+				 <&mmsys_config CLK_MM_SMI_COMMON>,
+				 <&mmsys_config CLK_MM_SMI_COMM0>,
+				 <&mmsys_config CLK_MM_SMI_COMM1>,
+				 <&mmsys_config CLK_MM_SMI_LARB0>,
+				 <&imgsys CLK_IMG_LARB2>,
+				 <&mmsys_config CLK_MM_SMI_IMG>,
+				 <&camsys CLK_CAM_LARB3>,
+				 <&camsys CLK_CAM_DFP_VAD>,
+				 <&camsys CLK_CAM>,
+				 <&camsys CLK_CAM_CCU>,
+				 <&mmsys_config CLK_MM_SMI_CAM>;
+			clock-names = "mfg", "mm",
+				      "mm-0", "mm-1", "mm-2", "mm-3",
+				      "isp-0", "isp-1", "cam-0", "cam-1",
+				      "cam-2", "cam-3", "cam-4";
+			infracfg = <&infracfg>;
+			smi_comm = <&smi_common>;
+		};
+
+		apmixed: syscon@1000c000 {
+			compatible = "mediatek,mt6765-apmixedsys", "syscon";
+			reg = <0 0x1000c000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		sysirq: interrupt-controller@10200a80 {
+			compatible = "mediatek,mt6765-sysirq",
+				     "mediatek,mt6577-sysirq";
+			interrupt-controller;
+			#interrupt-cells = <3>;
+			interrupt-parent = <&gic>;
+			reg = <0 0x10200a80 0 0x50>;
+		};
+
+		uart0: serial@11002000 {
+			compatible = "mediatek,mt6765-uart",
+				     "mediatek,mt6577-uart";
+			reg = <0 0x11002000 0 0x400>;
+			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_IFR_UART0>,
+				 <&infracfg CLK_IFR_AP_DMA>;
+			clock-names = "baud", "bus";
+			status = "disabled";
+		};
+
+		uart1: serial@11003000 {
+			compatible = "mediatek,mt6765-uart",
+				     "mediatek,mt6577-uart";
+			reg = <0 0x11003000 0 0x400>;
+			interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_IFR_UART1>,
+				 <&infracfg CLK_IFR_AP_DMA>;
+			clock-names = "baud", "bus";
+			status = "disabled";
+		};
+
+		audio: syscon@11220000 {
+			compatible = "mediatek,mt6765-audsys", "syscon";
+			reg = <0 0x11220000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		mipi_rx_ana_csi0a: syscon@11c10000 {
+			compatible = "mediatek,mt6765-mipi0a",
+				     "syscon";
+			reg = <0 0x11c10000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		mmsys_config: syscon@14000000 {
+			compatible = "mediatek,mt6765-mmsys", "syscon";
+			reg = <0 0x14000000 0 0x1000>;
+			interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_LOW>;
+			#clock-cells = <1>;
+		};
+
+		smi_common: smi_common@14002000 {
+			compatible = "mediatek,mt6765-smi-common", "syscon";
+			reg = <0 0x14002000 0 0x1000>;
+		};
+
+		imgsys: syscon@15020000 {
+			compatible = "mediatek,mt6765-imgsys", "syscon";
+			reg = <0 0x15020000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		venc_gcon: syscon@17000000 {
+			compatible = "mediatek,mt6765-vcodecsys", "syscon";
+			reg = <0 0x17000000 0 0x10000>;
+			#clock-cells = <1>;
+		};
+
+		camsys: syscon@1a000000  {
+			compatible = "mediatek,mt6765-camsys", "syscon";
+			reg = <0 0x1a000000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+	}; /* end of soc */
+};
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
