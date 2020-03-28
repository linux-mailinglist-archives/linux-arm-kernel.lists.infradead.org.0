Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F70F1965AB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 12:22:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IvVueIjxenWhiVcqMP6vNiHwn4Two8gppi7j4vdTWaM=; b=ank
	OBAYNgHLizECCVZfG3iBi1930beBd31qhb8QIhSOJFooETO6EBqgHJ6aGTl8d5EPbChFiwgm2kCNA
	cyMZMJ71Ql7pqWzCDO0Z5KPzZh7T4btQ4k7zlwcZfv0TSfT0hY7PyMA7Uv1mxdiTs53Za8MQsEtNQ
	Bw/IQRRSq7PoUIUvIUQTiVr7wB3eVuNsTBbo30qhZItrQQIf7lGGE/JkYaE4b14e0WtpBMGBPIJ4b
	hS2aoOgRXalCJ0BmCvtVzvx3M0utg2sJSDi2AKmMDCdfpfatVT1cBWRnXupS7ps80OXwjgp8IWowS
	E3IpaZcvWM3o3Az8o1raczepm3yogmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI9XB-0004Kz-Uy; Sat, 28 Mar 2020 11:21:49 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI9WW-0003wa-SD
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 11:21:13 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DE6B61A0F68;
 Sat, 28 Mar 2020 12:21:04 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 815A31A0EF7;
 Sat, 28 Mar 2020 12:20:55 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A769B4028F;
 Sat, 28 Mar 2020 19:20:44 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, andrew.smirnov@gmail.com,
 manivannan.sadhasivam@linaro.org, michael@walle.cc, rjones@gateworks.com,
 marcel.ziswiler@toradex.com, sebastien.szymanski@armadeus.com,
 jon@solid-run.com, cosmin.stoica@nxp.com, l.stach@pengutronix.de,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] arm64: dts: imx: Add imx8dxl support
Date: Sat, 28 Mar 2020 19:13:33 +0800
Message-Id: <1585394015-27825-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_042109_190231_149856E5 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX8DXL is a dual Cortex-A35 proccessor with Cortex-M4 system controller
inside. Add the SoC dtsi file support.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
This patch needs pads-imx8dxl.h which is in below patch series:
	https://patchwork.kernel.org/patch/11462211/
---
 arch/arm64/boot/dts/freescale/imx8dxl.dtsi | 416 +++++++++++++++++++++++++++++
 1 file changed, 416 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8dxl.dtsi b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
new file mode 100644
index 0000000..4d4b287
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
@@ -0,0 +1,416 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2019~2020 NXP
+ */
+
+#include <dt-bindings/clock/imx8-clock.h>
+#include <dt-bindings/firmware/imx/rsrc.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/pinctrl/pads-imx8dxl.h>
+#include <dt-bindings/thermal/thermal.h>
+
+/ {
+	interrupt-parent = <&gic>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	aliases {
+		gpio0 = &lsio_gpio0;
+		gpio1 = &lsio_gpio1;
+		gpio2 = &lsio_gpio2;
+		gpio3 = &lsio_gpio3;
+		gpio4 = &lsio_gpio4;
+		gpio5 = &lsio_gpio5;
+		gpio6 = &lsio_gpio6;
+		gpio7 = &lsio_gpio7;
+		mmc0 = &usdhc1;
+		mmc1 = &usdhc2;
+		mu1 = &lsio_mu1;
+		serial0 = &adma_lpuart0;
+	};
+
+	cpus {
+		#address-cells = <2>;
+		#size-cells = <0>;
+
+		/* We have 1 clusters with 2 Cortex-A35 cores */
+		A35_0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a35";
+			reg = <0x0 0x0>;
+			enable-method = "psci";
+			next-level-cache = <&A35_L2>;
+			clocks = <&clk IMX_A35_CLK>;
+			operating-points-v2 = <&a35_opp_table>;
+			#cooling-cells = <2>;
+		};
+
+		A35_1: cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a35";
+			reg = <0x0 0x1>;
+			enable-method = "psci";
+			next-level-cache = <&A35_L2>;
+			clocks = <&clk IMX_A35_CLK>;
+			operating-points-v2 = <&a35_opp_table>;
+			#cooling-cells = <2>;
+		};
+
+		A35_L2: l2-cache0 {
+			compatible = "cache";
+		};
+	};
+
+	a35_opp_table: opp-table {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-900000000 {
+			opp-hz = /bits/ 64 <900000000>;
+			opp-microvolt = <1000000>;
+			clock-latency-ns = <150000>;
+		};
+
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <1100000>;
+			clock-latency-ns = <150000>;
+			opp-suspend;
+		};
+	};
+
+	gic: interrupt-controller@51a00000 {
+		compatible = "arm,gic-v3";
+		reg = <0x0 0x51a00000 0 0x10000>, /* GIC Dist */
+		      <0x0 0x51b00000 0 0xc0000>; /* GICR (RD_base + SGI_base) */
+		#interrupt-cells = <3>;
+		interrupt-controller;
+		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	pmu {
+		compatible = "arm,armv8-pmuv3";
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	psci {
+		compatible = "arm,psci-1.0";
+		method = "smc";
+	};
+
+	scu {
+		compatible = "fsl,imx-scu";
+		mbox-names = "tx0", "tx1", "tx2", "tx3",
+			     "rx0", "rx1", "rx2", "rx3",
+			     "gip3";
+		mboxes = <&lsio_mu1 0 0
+			  &lsio_mu1 0 1
+			  &lsio_mu1 0 2
+			  &lsio_mu1 0 3
+			  &lsio_mu1 1 0
+			  &lsio_mu1 1 1
+			  &lsio_mu1 1 2
+			  &lsio_mu1 1 3
+			  &lsio_mu1 3 3>;
+
+		clk: clock-controller {
+			compatible = "fsl,imx8dxl-clk", "fsl,imx8qxp-clk";
+			#clock-cells = <1>;
+			clocks = <&xtal32k &xtal24m>;
+			clock-names = "xtal_32KHz", "xtal_24Mhz";
+		};
+
+		iomuxc: pinctrl {
+			compatible = "fsl,imx8dxl-iomuxc";
+		};
+
+		ocotp: imx8qx-ocotp {
+			compatible = "fsl,imx8dxl-scu-ocotp", "fsl,imx8qxp-scu-ocotp";
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
+		pd: imx8qx-pd {
+			compatible = "fsl,imx8dxl-scu-pd", "fsl,imx8qxp-scu-pd";
+			#power-domain-cells = <1>;
+		};
+
+		scu_key: scu-key {
+			compatible = "fsl,imx8dxl-sc-key", "fsl,imx-sc-key";
+			linux,keycodes = <KEY_POWER>;
+			status = "disabled";
+		};
+
+		rtc: rtc {
+			compatible = "fsl,imx8dxl-sc-wdt", "fsl,imx8qxp-sc-rtc";
+		};
+
+		tsens: thermal-sensor {
+			compatible = "fsl,imx8dxl-sc-thermal", "fsl,imx-sc-thermal";
+			#thermal-sensor-cells = <1>;
+		};
+
+		watchdog {
+			compatible = "fsl,imx8dxl-sc-wdt", "fsl,imx-sc-wdt";
+			timeout-sec = <60>;
+		};
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>, /* Physical Secure */
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>, /* Physical Non-Secure */
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>, /* Virtual */
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>; /* Hypervisor */
+	};
+
+	xtal32k: clock-xtal32k {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "xtal_32KHz";
+	};
+
+	xtal24m: clock-xtal24m {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24000000>;
+		clock-output-names = "xtal_24MHz";
+	};
+
+	adma_subsys: bus@59000000 {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x59000000 0x0 0x59000000 0x2000000>;
+
+		adma_lpcg: clock-controller@59000000 {
+			compatible = "fsl,imx8dxl-lpcg-adma", "fsl,imx8qxp-lpcg-adma";
+			reg = <0x59000000 0x2000000>;
+			#clock-cells = <1>;
+		};
+
+		adma_lpuart0: serial@5a060000 {
+			compatible = "fsl,imx8dxl-lpuart", "fsl,imx8qxp-lpuart";
+			reg = <0x5a060000 0x1000>;
+			interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART0_IPG_CLK>,
+				 <&adma_lpcg IMX_ADMA_LPCG_UART0_BAUD_CLK>;
+			clock-names = "ipg", "baud";
+			power-domains = <&pd IMX_SC_R_UART_0>;
+			status = "disabled";
+		};
+	};
+
+	conn_subsys: bus@5b000000 {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x5b000000 0x0 0x5b000000 0x1000000>;
+
+		conn_lpcg: clock-controller@5b200000 {
+			compatible = "fsl,imx8dxl-lpcg-conn", "fsl,imx8qxp-lpcg-conn";
+			reg = <0x5b200000 0xb0000>;
+			#clock-cells = <1>;
+		};
+
+		usdhc1: mmc@5b010000 {
+			compatible = "fsl,imx8dxl-usdhc", "fsl,imx7d-usdhc";
+			interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
+			reg = <0x5b010000 0x10000>;
+			clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC0_IPG_CLK>,
+				 <&conn_lpcg IMX_CONN_LPCG_SDHC0_PER_CLK>,
+				 <&conn_lpcg IMX_CONN_LPCG_SDHC0_HCLK>;
+			clock-names = "ipg", "per", "ahb";
+			power-domains = <&pd IMX_SC_R_SDHC_0>;
+			status = "disabled";
+		};
+
+		usdhc2: mmc@5b020000 {
+			compatible = "fsl,imx8dxl-usdhc", "fsl,imx7d-usdhc";
+			interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
+			reg = <0x5b020000 0x10000>;
+			clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC1_IPG_CLK>,
+				 <&conn_lpcg IMX_CONN_LPCG_SDHC1_PER_CLK>,
+				 <&conn_lpcg IMX_CONN_LPCG_SDHC1_HCLK>;
+			clock-names = "ipg", "per", "ahb";
+			power-domains = <&pd IMX_SC_R_SDHC_1>;
+			fsl,tuning-start-tap = <20>;
+			fsl,tuning-step= <2>;
+			status = "disabled";
+		};
+	};
+
+	lsio_subsys: bus@5d000000 {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x5d000000 0x0 0x5d000000 0x1000000>;
+
+		lsio_gpio0: gpio@5d080000 {
+			compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
+			reg = <0x5d080000 0x10000>;
+			interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			power-domains = <&pd IMX_SC_R_GPIO_0>;
+		};
+
+		lsio_gpio1: gpio@5d090000 {
+			compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
+			reg = <0x5d090000 0x10000>;
+			interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			power-domains = <&pd IMX_SC_R_GPIO_1>;
+		};
+
+		lsio_gpio2: gpio@5d0a0000 {
+			compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
+			reg = <0x5d0a0000 0x10000>;
+			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			power-domains = <&pd IMX_SC_R_GPIO_2>;
+		};
+
+		lsio_gpio3: gpio@5d0b0000 {
+			compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
+			reg = <0x5d0b0000 0x10000>;
+			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			power-domains = <&pd IMX_SC_R_GPIO_3>;
+		};
+
+		lsio_gpio4: gpio@5d0c0000 {
+			compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
+			reg = <0x5d0c0000 0x10000>;
+			interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			power-domains = <&pd IMX_SC_R_GPIO_4>;
+		};
+
+		lsio_gpio5: gpio@5d0d0000 {
+			compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
+			reg = <0x5d0d0000 0x10000>;
+			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			power-domains = <&pd IMX_SC_R_GPIO_5>;
+		};
+
+		lsio_gpio6: gpio@5d0e0000 {
+			compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
+			reg = <0x5d0e0000 0x10000>;
+			interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			power-domains = <&pd IMX_SC_R_GPIO_6>;
+		};
+
+		lsio_gpio7: gpio@5d0f0000 {
+			compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
+			reg = <0x5d0f0000 0x10000>;
+			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			power-domains = <&pd IMX_SC_R_GPIO_7>;
+		};
+
+		lsio_mu0: mailbox@5d1b0000 {
+			compatible = "fsl,imx8dxl-mu", "fsl,imx6sx-mu";
+			reg = <0x5d1b0000 0x10000>;
+			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+			status = "disabled";
+		};
+
+		lsio_mu1: mailbox@5d1c0000 {
+			compatible = "fsl,imx8dxl-mu", "fsl,imx6sx-mu";
+			reg = <0x5d1c0000 0x10000>;
+			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+		};
+
+		lsio_mu2: mailbox@5d1d0000 {
+			compatible = "fsl,imx8dxl-mu", "fsl,imx6sx-mu";
+			reg = <0x5d1d0000 0x10000>;
+			interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+			status = "disabled";
+		};
+
+		lsio_mu3: mailbox@5d1e0000 {
+			compatible = "fsl,imx8dxl-mu", "fsl,imx6sx-mu";
+			reg = <0x5d1e0000 0x10000>;
+			interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+			status = "disabled";
+		};
+
+		lsio_mu4: mailbox@5d1f0000 {
+			compatible = "fsl,imx8dxl-mu", "fsl,imx6sx-mu";
+			reg = <0x5d1f0000 0x10000>;
+			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+			status = "disabled";
+		};
+
+		lsio_lpcg: clock-controller@5d400000 {
+			compatible = "fsl,imx8dxl-lpcg-lsio", "fsl,imx8qxp-lpcg-lsio";
+			reg = <0x5d400000 0x400000>;
+			#clock-cells = <1>;
+		};
+	};
+
+	thermal_zones: thermal-zones {
+		cpu-thermal0 {
+			polling-delay-passive = <250>;
+			polling-delay = <2000>;
+			thermal-sensors = <&tsens IMX_SC_R_SYSTEM>;
+
+			trips {
+				cpu_alert0: trip0 {
+					temperature = <107000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu_crit0: trip1 {
+					temperature = <127000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu_alert0>;
+					cooling-device =
+						<&A35_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&A35_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+	};
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
