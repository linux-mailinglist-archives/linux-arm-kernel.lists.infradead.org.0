Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EAD1EBD13
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 15:27:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+RGmbs3jXxf1rhS/m2zJBEev/d4knxe2ohn/VV2Jetg=; b=rky
	POJaNxIz+BvGgLDcvheXMigatlhHvYuRvB/MQnkSdA6hHnm696hpIKXorrouKVTuB152oXp3vkNmq
	GYtxJzldnSL+7JoEgAq2Jzx3tyWOERZZdy9eHQvsHxIJFRSN6c7y7rD2n1b2frd8QYlkOqb/jLo+f
	+CpVQxmVFU372LyU6qbwn5a99BqrDCz1/wbfxBOOCzMhzHGJpof1Frhxh2l20lZnuTsU/fL5C6dBz
	HBhVIQb5ZxWbY8IuaFr+mJVivp5y+J222wTiozEplP3m535isPo1oatRHxLunhYHT9zFpkPqA5Klb
	cuFIxfYkZKlb6wkzgFE5qhYA7qzMeKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg6wz-0001wD-Mb; Tue, 02 Jun 2020 13:27:29 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg6wq-0001vk-JO
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 13:27:23 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 69FF21A0D38;
 Tue,  2 Jun 2020 15:27:17 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DF5A31A0AF2;
 Tue,  2 Jun 2020 15:27:11 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 267C5402B1;
 Tue,  2 Jun 2020 21:27:05 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, aisheng.dong@nxp.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: clock: Convert imx7ulp clock to json-schema
Date: Tue,  2 Jun 2020 21:16:47 +0800
Message-Id: <1591103807-31170-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_062721_060619_B8783665 
X-CRM114-Status: GOOD (  11.23  )
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

Convert the i.MX7ULP clock binding to DT schema format using json-schema,
the original binding doc is actually for two clock modules(SCG and PCC),
so split it to two binding docs, and the MPLL(mipi PLL) is NOT supposed
to be in clock module, so remove it from binding doc as well.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/clock/imx7ulp-clock.txt    | 103 ------------------
 .../bindings/clock/imx7ulp-pcc-clock.yaml          | 119 +++++++++++++++++++++
 .../bindings/clock/imx7ulp-scg-clock.yaml          |  97 +++++++++++++++++
 3 files changed, 216 insertions(+), 103 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx7ulp-pcc-clock.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/imx7ulp-scg-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt b/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
deleted file mode 100644
index 93d89ad..0000000
--- a/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
+++ /dev/null
@@ -1,103 +0,0 @@
-* Clock bindings for Freescale i.MX7ULP
-
-i.MX7ULP Clock functions are under joint control of the System
-Clock Generation (SCG) modules, Peripheral Clock Control (PCC)
-modules, and Core Mode Controller (CMC)1 blocks
-
-The clocking scheme provides clear separation between M4 domain
-and A7 domain. Except for a few clock sources shared between two
-domains, such as the System Oscillator clock, the Slow IRC (SIRC),
-and and the Fast IRC clock (FIRCLK), clock sources and clock
-management are separated and contained within each domain.
-
-M4 clock management consists of SCG0, PCC0, PCC1, and CMC0 modules.
-A7 clock management consists of SCG1, PCC2, PCC3, and CMC1 modules.
-
-Note: this binding doc is only for A7 clock domain.
-
-System Clock Generation (SCG) modules:
----------------------------------------------------------------------
-The System Clock Generation (SCG) is responsible for clock generation
-and distribution across this device. Functions performed by the SCG
-include: clock reference selection, generation of clock used to derive
-processor, system, peripheral bus and external memory interface clocks,
-source selection for peripheral clocks and control of power saving
-clock gating mode.
-
-Required properties:
-
-- compatible:	Should be "fsl,imx7ulp-scg1".
-- reg : 	Should contain registers location and length.
-- #clock-cells:	Should be <1>.
-- clocks:	Should contain the fixed input clocks.
-- clock-names:  Should contain the following clock names:
-		"rosc", "sosc", "sirc", "firc", "upll", "mpll".
-
-Peripheral Clock Control (PCC) modules:
----------------------------------------------------------------------
-The Peripheral Clock Control (PCC) is responsible for clock selection,
-optional division and clock gating mode for peripherals in their
-respected power domain
-
-Required properties:
-- compatible:	Should be one of:
-		  "fsl,imx7ulp-pcc2",
-		  "fsl,imx7ulp-pcc3".
-- reg : 	Should contain registers location and length.
-- #clock-cells:	Should be <1>.
-- clocks:	Should contain the fixed input clocks.
-- clock-names:  Should contain the following clock names:
-		"nic1_bus_clk", "nic1_clk", "ddr_clk", "apll_pfd2",
-		"apll_pfd1", "apll_pfd0", "upll", "sosc_bus_clk",
-		"mpll", "firc_bus_clk", "rosc", "spll_bus_clk";
-
-The clock consumer should specify the desired clock by having the clock
-ID in its "clocks" phandle cell.
-See include/dt-bindings/clock/imx7ulp-clock.h
-for the full list of i.MX7ULP clock IDs of each module.
-
-Examples:
-
-#include <dt-bindings/clock/imx7ulp-clock.h>
-
-scg1: scg1@403e0000 {
-	compatible = "fsl,imx7ulp-scg1;
-	reg = <0x403e0000 0x10000>;
-	clocks = <&rosc>, <&sosc>, <&sirc>,
-		 <&firc>, <&upll>, <&mpll>;
-	clock-names = "rosc", "sosc", "sirc",
-		      "firc", "upll", "mpll";
-	#clock-cells = <1>;
-};
-
-pcc2: pcc2@403f0000 {
-	compatible = "fsl,imx7ulp-pcc2";
-	reg = <0x403f0000 0x10000>;
-	#clock-cells = <1>;
-	clocks = <&scg1 IMX7ULP_CLK_NIC1_BUS_DIV>,
-		 <&scg1 IMX7ULP_CLK_NIC1_DIV>,
-		 <&scg1 IMX7ULP_CLK_DDR_DIV>,
-		 <&scg1 IMX7ULP_CLK_APLL_PFD2>,
-		 <&scg1 IMX7ULP_CLK_APLL_PFD1>,
-		 <&scg1 IMX7ULP_CLK_APLL_PFD0>,
-		 <&scg1 IMX7ULP_CLK_UPLL>,
-		 <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>,
-		 <&scg1 IMX7ULP_CLK_FIRC_BUS_CLK>,
-		 <&scg1 IMX7ULP_CLK_ROSC>,
-		 <&scg1 IMX7ULP_CLK_SPLL_BUS_CLK>;
-	clock-names = "nic1_bus_clk", "nic1_clk", "ddr_clk",
-		      "apll_pfd2", "apll_pfd1", "apll_pfd0",
-		      "upll", "sosc_bus_clk", "mpll",
-		      "firc_bus_clk", "rosc", "spll_bus_clk";
-};
-
-usdhc1: usdhc@40380000 {
-	compatible = "fsl,imx7ulp-usdhc";
-	reg = <0x40380000 0x10000>;
-	interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
-	clocks = <&scg1 IMX7ULP_CLK_NIC1_BUS_DIV>,
-		 <&scg1 IMX7ULP_CLK_NIC1_DIV>,
-		 <&pcc2 IMX7ULP_CLK_USDHC1>;
-	clock-names ="ipg", "ahb", "per";
-	bus-width = <4>;
-};
diff --git a/Documentation/devicetree/bindings/clock/imx7ulp-pcc-clock.yaml b/Documentation/devicetree/bindings/clock/imx7ulp-pcc-clock.yaml
new file mode 100644
index 0000000..d5fd286
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx7ulp-pcc-clock.yaml
@@ -0,0 +1,119 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/imx7ulp-pcc-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Clock bindings for Freescale i.MX7ULP Peripheral Clock Control (PCC) modules
+
+maintainers:
+  - A.s. Dong <aisheng.dong@nxp.com>
+
+description: |
+  i.MX7ULP Clock functions are under joint control of the System
+  Clock Generation (SCG) modules, Peripheral Clock Control (PCC)
+  modules, and Core Mode Controller (CMC)1 blocks
+
+  The clocking scheme provides clear separation between M4 domain
+  and A7 domain. Except for a few clock sources shared between two
+  domains, such as the System Oscillator clock, the Slow IRC (SIRC),
+  and and the Fast IRC clock (FIRCLK), clock sources and clock
+  management are separated and contained within each domain.
+
+  M4 clock management consists of SCG0, PCC0, PCC1, and CMC0 modules.
+  A7 clock management consists of SCG1, PCC2, PCC3, and CMC1 modules.
+
+  Note: this binding doc is only for A7 clock domain.
+
+  The Peripheral Clock Control (PCC) is responsible for clock selection,
+  optional division and clock gating mode for peripherals in their
+  respected power domain.
+
+  The clock consumer should specify the desired clock by having the clock
+  ID in its "clocks" phandle cell.
+  See include/dt-bindings/clock/imx7ulp-clock.h for the full list of
+  i.MX7ULP clock IDs of each module.
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx7ulp-pcc2
+      - fsl,imx7ulp-pcc3
+
+  reg:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 1
+
+  clocks:
+    items:
+      - description: nic1 bus clock
+      - description: nic1 clock
+      - description: ddr clock
+      - description: apll pfd2
+      - description: apll pfd1
+      - description: apll pfd0
+      - description: usb pll
+      - description: system osc bus clock
+      - description: fast internal reference clock bus
+      - description: rtc osc
+      - description: system pll bus clock
+
+  clock-names:
+    items:
+      - const: nic1_bus_clk
+      - const: nic1_clk
+      - const: ddr_clk
+      - const: apll_pfd2
+      - const: apll_pfd1
+      - const: apll_pfd0
+      - const: upll
+      - const: sosc_bus_clk
+      - const: firc_bus_clk
+      - const: rosc
+      - const: spll_bus_clk
+
+required:
+  - compatible
+  - reg
+  - '#clock-cells'
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx7ulp-clock.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    clock-controller@403f0000 {
+        compatible = "fsl,imx7ulp-pcc2";
+        reg = <0x403f0000 0x10000>;
+        #clock-cells = <1>;
+        clocks = <&scg1 IMX7ULP_CLK_NIC1_BUS_DIV>,
+                 <&scg1 IMX7ULP_CLK_NIC1_DIV>,
+                 <&scg1 IMX7ULP_CLK_DDR_DIV>,
+                 <&scg1 IMX7ULP_CLK_APLL_PFD2>,
+                 <&scg1 IMX7ULP_CLK_APLL_PFD1>,
+                 <&scg1 IMX7ULP_CLK_APLL_PFD0>,
+                 <&scg1 IMX7ULP_CLK_UPLL>,
+                 <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>,
+                 <&scg1 IMX7ULP_CLK_FIRC_BUS_CLK>,
+                 <&scg1 IMX7ULP_CLK_ROSC>,
+                 <&scg1 IMX7ULP_CLK_SPLL_BUS_CLK>;
+         clock-names = "nic1_bus_clk", "nic1_clk", "ddr_clk",
+                       "apll_pfd2", "apll_pfd1", "apll_pfd0",
+                       "upll", "sosc_bus_clk", "firc_bus_clk",
+                       "rosc", "spll_bus_clk";
+    };
+
+    mmc@40380000 {
+        compatible = "fsl,imx7ulp-usdhc";
+        reg = <0x40380000 0x10000>;
+        interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&scg1 IMX7ULP_CLK_NIC1_BUS_DIV>,
+                 <&scg1 IMX7ULP_CLK_NIC1_DIV>,
+                 <&pcc2 IMX7ULP_CLK_USDHC1>;
+        clock-names ="ipg", "ahb", "per";
+        bus-width = <4>;
+    };
diff --git a/Documentation/devicetree/bindings/clock/imx7ulp-scg-clock.yaml b/Documentation/devicetree/bindings/clock/imx7ulp-scg-clock.yaml
new file mode 100644
index 0000000..ae2a648
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx7ulp-scg-clock.yaml
@@ -0,0 +1,97 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/imx7ulp-scg-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Clock bindings for Freescale i.MX7ULP System Clock Generation (SCG) modules
+
+maintainers:
+  - A.s. Dong <aisheng.dong@nxp.com>
+
+description: |
+  i.MX7ULP Clock functions are under joint control of the System
+  Clock Generation (SCG) modules, Peripheral Clock Control (PCC)
+  modules, and Core Mode Controller (CMC)1 blocks
+
+  The clocking scheme provides clear separation between M4 domain
+  and A7 domain. Except for a few clock sources shared between two
+  domains, such as the System Oscillator clock, the Slow IRC (SIRC),
+  and and the Fast IRC clock (FIRCLK), clock sources and clock
+  management are separated and contained within each domain.
+
+  M4 clock management consists of SCG0, PCC0, PCC1, and CMC0 modules.
+  A7 clock management consists of SCG1, PCC2, PCC3, and CMC1 modules.
+
+  Note: this binding doc is only for A7 clock domain.
+
+  The System Clock Generation (SCG) is responsible for clock generation
+  and distribution across this device. Functions performed by the SCG
+  include: clock reference selection, generation of clock used to derive
+  processor, system, peripheral bus and external memory interface clocks,
+  source selection for peripheral clocks and control of power saving
+  clock gating mode.
+
+  The clock consumer should specify the desired clock by having the clock
+  ID in its "clocks" phandle cell.
+  See include/dt-bindings/clock/imx7ulp-clock.h for the full list of
+  i.MX7ULP clock IDs of each module.
+
+properties:
+  compatible:
+    const: fsl,imx7ulp-scg1
+
+  reg:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 1
+
+  clocks:
+    items:
+      - description: rtc osc
+      - description: system osc
+      - description: slow internal reference clock
+      - description: fast internal reference clock
+      - description: usb PLL
+
+  clock-names:
+    items:
+      - const: rosc
+      - const: sosc
+      - const: sirc
+      - const: firc
+      - const: upll
+
+required:
+  - compatible
+  - reg
+  - '#clock-cells'
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx7ulp-clock.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    clock-controller@403e0000 {
+        compatible = "fsl,imx7ulp-scg1";
+        reg = <0x403e0000 0x10000>;
+        clocks = <&rosc>, <&sosc>, <&sirc>,
+                 <&firc>, <&upll>;
+        clock-names = "rosc", "sosc", "sirc",
+                      "firc", "upll";
+        #clock-cells = <1>;
+    };
+
+    mmc@40380000 {
+        compatible = "fsl,imx7ulp-usdhc";
+        reg = <0x40380000 0x10000>;
+        interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&scg1 IMX7ULP_CLK_NIC1_BUS_DIV>,
+                 <&scg1 IMX7ULP_CLK_NIC1_DIV>,
+                 <&pcc2 IMX7ULP_CLK_USDHC1>;
+        clock-names ="ipg", "ahb", "per";
+        bus-width = <4>;
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
