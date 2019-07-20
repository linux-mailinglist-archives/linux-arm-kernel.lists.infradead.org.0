Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F836EEA2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 11:26:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9+48u8gSFPAeWhShRx00vpTR6YFa87i1Z0DOVbtYrsY=; b=aQWvqZuvvog1yH
	HAEWLga/bgu8lNNYylABTBdXzYQgcvs4EE8FnOBbquzJhBofYzwDRctgHTtxwmlx9aa0K+rqeDXYk
	0qdsduR9IUm0Wlcx4wy5C9Pwv76d0XpugGEgcc2dqZfhrP3shnu0+TEdsmDlNIvKTogkEvESSkWrH
	O6Y/VSLOFbTdnCd4RF20A+OYCYLzWlEYho/XkAZIalrCEQX0yM5kZ99Ys0BCxZdUJuFpELeZyH+ky
	gw5ARB/X9lQHe6+2lWzMm+hxeI0J9OLprl0aD49svgp3ho7XLfT527ADYW8rN3Ig3+5sywJy13cU2
	rJ9l0/AnDSmfNt/Bs+Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1holdh-0004lI-FS; Sat, 20 Jul 2019 09:26:49 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hold8-0004Y1-KV
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 09:26:16 +0000
X-Originating-IP: 91.163.65.175
Received: from localhost (91-163-65-175.subs.proxad.net [91.163.65.175])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 5BE86C0008;
 Sat, 20 Jul 2019 09:26:12 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v3 3/3] dt-bindings: dma: Convert Allwinner A31 and A64 DMA to
 a schema
Date: Sat, 20 Jul 2019 11:26:07 +0200
Message-Id: <20190720092607.31095-3-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190720092607.31095-1-maxime.ripard@bootlin.com>
References: <20190720092607.31095-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_022614_985623_30DD6E53 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Chen-Yu Tsai <wens@csie.org>,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The newer Allwinner SoCs have a DMA controller supported in Linux, with a
matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../dma/allwinner,sun50i-a64-dma.yaml         | 88 +++++++++++++++++++
 .../bindings/dma/allwinner,sun6i-a31-dma.yaml | 62 +++++++++++++
 .../devicetree/bindings/dma/sun6i-dma.txt     | 81 -----------------
 3 files changed, 150 insertions(+), 81 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml
 create mode 100644 Documentation/devicetree/bindings/dma/allwinner,sun6i-a31-dma.yaml
 delete mode 100644 Documentation/devicetree/bindings/dma/sun6i-dma.txt

diff --git a/Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml b/Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml
new file mode 100644
index 000000000000..4cb9d6b93138
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml
@@ -0,0 +1,88 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dma/allwinner,sun50i-a64-dma.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A64 DMA Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+allOf:
+  - $ref: "dma-controller.yaml#"
+
+properties:
+  "#dma-cells":
+    const: 1
+    description: The cell is the request line number.
+
+  compatible:
+    enum:
+      - allwinner,sun50i-a64-dma
+      - allwinner,sun50i-h6-dma
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: bus
+      - const: mbus
+
+  resets:
+    maxItems: 1
+
+required:
+  - "#dma-cells"
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - resets
+  - dma-channels
+
+if:
+  properties:
+    compatible:
+      const: allwinner,sun50i-h6-dma
+
+then:
+  properties:
+    clocks:
+      maxItems: 2
+
+  required:
+    - clock-names
+
+else:
+  properties:
+    clocks:
+      maxItems: 1
+
+# FIXME: We should set it, but it would report all the generic
+# properties as additional properties.
+# additionalProperties: false
+
+examples:
+  - |
+    dma: dma-controller@1c02000 {
+        compatible = "allwinner,sun50i-a64-dma";
+        reg = <0x01c02000 0x1000>;
+        interrupts = <0 50 4>;
+        clocks = <&ccu 30>;
+        dma-channels = <8>;
+        dma-requests = <27>;
+        resets = <&ccu 7>;
+        #dma-cells = <1>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/dma/allwinner,sun6i-a31-dma.yaml b/Documentation/devicetree/bindings/dma/allwinner,sun6i-a31-dma.yaml
new file mode 100644
index 000000000000..740b7f9b535b
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/allwinner,sun6i-a31-dma.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dma/allwinner,sun6i-a31-dma.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A31 DMA Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+allOf:
+  - $ref: "dma-controller.yaml#"
+
+properties:
+  "#dma-cells":
+    const: 1
+    description: The cell is the request line number.
+
+  compatible:
+    oneOf:
+      - const: allwinner,sun6i-a31-dma
+      - const: allwinner,sun8i-a23-dma
+      - const: allwinner,sun8i-a83t-dma
+      - const: allwinner,sun8i-h3-dma
+      - const: allwinner,sun8i-v3s-dma
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+required:
+  - "#dma-cells"
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    dma: dma-controller@1c02000 {
+        compatible = "allwinner,sun6i-a31-dma";
+        reg = <0x01c02000 0x1000>;
+        interrupts = <0 50 4>;
+        clocks = <&ahb1_gates 6>;
+        resets = <&ahb1_rst 6>;
+        #dma-cells = <1>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/dma/sun6i-dma.txt b/Documentation/devicetree/bindings/dma/sun6i-dma.txt
deleted file mode 100644
index cae31f4e77ba..000000000000
--- a/Documentation/devicetree/bindings/dma/sun6i-dma.txt
+++ /dev/null
@@ -1,81 +0,0 @@
-Allwinner A31 DMA Controller
-
-This driver follows the generic DMA bindings defined in dma.txt.
-
-Required properties:
-
-- compatible:	Must be one of
-		  "allwinner,sun6i-a31-dma"
-		  "allwinner,sun8i-a23-dma"
-		  "allwinner,sun8i-a83t-dma"
-		  "allwinner,sun8i-h3-dma"
-		  "allwinner,sun8i-v3s-dma"
-- reg:		Should contain the registers base address and length
-- interrupts:	Should contain a reference to the interrupt used by this device
-- clocks:	Should contain a reference to the parent AHB clock
-- resets:	Should contain a reference to the reset controller asserting
-		this device in reset
-- #dma-cells :	Should be 1, a single cell holding a line request number
-
-Example:
-	dma: dma-controller@1c02000 {
-		compatible = "allwinner,sun6i-a31-dma";
-		reg = <0x01c02000 0x1000>;
-		interrupts = <0 50 4>;
-		clocks = <&ahb1_gates 6>;
-		resets = <&ahb1_rst 6>;
-		#dma-cells = <1>;
-	};
-
-------------------------------------------------------------------------------
-For A64 and H6 DMA controller:
-
-Required properties:
-- compatible:	Must be one of
-		  "allwinner,sun50i-a64-dma"
-		  "allwinner,sun50i-h6-dma"
-- dma-channels: Number of DMA channels supported by the controller.
-		Refer to Documentation/devicetree/bindings/dma/dma.txt
-- clocks:	In addition to parent AHB clock, it should also contain mbus
-		clock (H6 only)
-- clock-names:	Should contain "bus" and "mbus" (H6 only)
-- all properties above, i.e. reg, interrupts, clocks, resets and #dma-cells
-
-Optional properties:
-- dma-requests: Number of DMA request signals supported by the controller.
-		Refer to Documentation/devicetree/bindings/dma/dma.txt
-
-Example:
-	dma: dma-controller@1c02000 {
-		compatible = "allwinner,sun50i-a64-dma";
-		reg = <0x01c02000 0x1000>;
-		interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&ccu CLK_BUS_DMA>;
-		dma-channels = <8>;
-		dma-requests = <27>;
-		resets = <&ccu RST_BUS_DMA>;
-		#dma-cells = <1>;
-	};
-------------------------------------------------------------------------------
-
-Clients:
-
-DMA clients connected to the A31 DMA controller must use the format
-described in the dma.txt file, using a two-cell specifier for each
-channel: a phandle plus one integer cells.
-The two cells in order are:
-
-1. A phandle pointing to the DMA controller.
-2. The port ID as specified in the datasheet
-
-Example:
-spi2: spi@1c6a000 {
-	compatible = "allwinner,sun6i-a31-spi";
-	reg = <0x01c6a000 0x1000>;
-	interrupts = <0 67 4>;
-	clocks = <&ahb1_gates 22>, <&spi2_clk>;
-	clock-names = "ahb", "mod";
-	dmas = <&dma 25>, <&dma 25>;
-	dma-names = "rx", "tx";
-	resets = <&ahb1_rst 22>;
-};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
