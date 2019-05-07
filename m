Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCC5164F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 15:49:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OXakLYzBRijOsfCI2Djd0BBYOCOiTNiGdGV86ddJyDs=; b=MVW//iUSYgMaXf
	3iqqjqmXdMGN9kACu+72cAeWFBgBgklWbqat3jRK9qONtDJPgk7X6njxruvPHVYBNcqXsstjAe/o6
	LLeRcPTp68xu5QxZ624odhdioGQCqY82/2ks+wJpx/4GuyhuOdniftdloHi8kHeme9vGmEvxF6xxa
	FUV8Z3s0iitNXvP0zuRqTItGmlp8YLZC+ZUpHaGQ/E2UndwJKXibGaqaqlYaE6MLjNqxOHOReu6O9
	kYk5iqwBlMUy9V7+91VkxHzz7y3wpsEYU9of6tBXy1NvMXWpvGxzcEmvkvk8AKrlwmUDv96a5b8Sh
	FAac2854yOG8vFYJtOFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0Ss-0008CF-60; Tue, 07 May 2019 13:49:02 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0SQ-0007nJ-Qx
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 13:48:38 +0000
X-Originating-IP: 90.88.28.253
Received: from localhost (aaubervilliers-681-1-86-253.w90-88.abo.wanadoo.fr
 [90.88.28.253]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id AACCE24000F;
 Tue,  7 May 2019 13:48:21 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Mark Brown <broonie@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH 3/4] dt-bindings: spi: sun6i: Add YAML schemas
Date: Tue,  7 May 2019 15:48:15 +0200
Message-Id: <e39713deed69735e5c02c4273bf84572aa589736.1557236840.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <b7a6095a5c900fa23cc54d1ccd8e8ef0ccf6e788.1557236840.git-series.maxime.ripard@bootlin.com>
References: <b7a6095a5c900fa23cc54d1ccd8e8ef0ccf6e788.1557236840.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_064835_193735_D4138156 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch the DT binding to a YAML schema to enable the DT validation.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml | 106 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 Documentation/devicetree/bindings/spi/spi-sun6i.txt                |  44 +------------------------------
 2 files changed, 106 insertions(+), 44 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-sun6i.txt

diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
new file mode 100644
index 000000000000..0cd7244653a8
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
@@ -0,0 +1,106 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/allwinner,sun6i-a31-spi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A31 SPI Controller Device Tree Bindings
+
+allOf:
+  - $ref: "spi-controller.yaml"
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  "#address-cells": true
+  "#size-cells": true
+
+  compatible:
+    enum:
+      - allwinner,sun6i-a31-spi
+      - allwinner,sun8i-h3-spi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Bus Clock
+      - description: Module Clock
+
+  clock-names:
+    items:
+      - const: ahb
+      - const: mod
+
+  resets:
+    maxItems: 1
+
+  dmas:
+    items:
+      - description: RX DMA Channel
+      - description: TX DMA Channel
+
+  dma-names:
+    items:
+      - const: rx
+      - const: tx
+
+  num-cs: true
+
+patternProperties:
+  "^[a-z]+@[0-9]+$":
+    properties:
+      reg:
+        items:
+          minimum: 0
+          maximum: 4
+
+      spi-rx-bus-width:
+        const: 1
+
+      spi-tx-bus-width:
+        const: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    spi1: spi@1c69000 {
+        compatible = "allwinner,sun6i-a31-spi";
+        reg = <0x01c69000 0x1000>;
+        interrupts = <0 66 4>;
+        clocks = <&ahb1_gates 21>, <&spi1_clk>;
+        clock-names = "ahb", "mod";
+        resets = <&ahb1_rst 21>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+    };
+
+  - |
+    spi0: spi@1c68000 {
+        compatible = "allwinner,sun8i-h3-spi";
+        reg = <0x01c68000 0x1000>;
+        interrupts = <0 65 4>;
+        clocks = <&ccu 30>, <&ccu 82>;
+        clock-names = "ahb", "mod";
+        dmas = <&dma 23>, <&dma 23>;
+        dma-names = "rx", "tx";
+        resets = <&ccu 15>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/spi/spi-sun6i.txt b/Documentation/devicetree/bindings/spi/spi-sun6i.txt
deleted file mode 100644
index 435a8e0731ac..000000000000
--- a/Documentation/devicetree/bindings/spi/spi-sun6i.txt
+++ /dev/null
@@ -1,44 +0,0 @@
-Allwinner A31/H3 SPI controller
-
-Required properties:
-- compatible: Should be "allwinner,sun6i-a31-spi" or "allwinner,sun8i-h3-spi".
-- reg: Should contain register location and length.
-- interrupts: Should contain interrupt.
-- clocks: phandle to the clocks feeding the SPI controller. Two are
-          needed:
-  - "ahb": the gated AHB parent clock
-  - "mod": the parent module clock
-- clock-names: Must contain the clock names described just above
-- resets: phandle to the reset controller asserting this device in
-          reset
-
-Optional properties:
-- dmas: DMA specifiers for rx and tx dma. See the DMA client binding,
-	Documentation/devicetree/bindings/dma/dma.txt
-- dma-names: DMA request names should include "rx" and "tx" if present.
-
-Example:
-
-spi1: spi@1c69000 {
-	compatible = "allwinner,sun6i-a31-spi";
-	reg = <0x01c69000 0x1000>;
-	interrupts = <0 66 4>;
-	clocks = <&ahb1_gates 21>, <&spi1_clk>;
-	clock-names = "ahb", "mod";
-	resets = <&ahb1_rst 21>;
-};
-
-spi0: spi@1c68000 {
-	compatible = "allwinner,sun8i-h3-spi";
-	reg = <0x01c68000 0x1000>;
-	interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>;
-	clocks = <&ccu CLK_BUS_SPI0>, <&ccu CLK_SPI0>;
-	clock-names = "ahb", "mod";
-	dmas = <&dma 23>, <&dma 23>;
-	dma-names = "rx", "tx";
-	pinctrl-names = "default";
-	pinctrl-0 = <&spi0_pins>;
-	resets = <&ccu RST_BUS_SPI0>;
-	#address-cells = <1>;
-	#size-cells = <0>;
-};
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
