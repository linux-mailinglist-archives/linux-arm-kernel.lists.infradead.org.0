Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BE8653EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 11:37:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XwMPkxYFS4jXMWvxVUwWvQ/j0D9AlactCPMFdDXaPUc=; b=I1ABjR34RMhvQ8
	DlJ6R2e0y8hsWSZK3Q8QY45phVcLAX6Fbpo8Jih0RssumRGlwmrCSrSJACN/UeaPRPEbvYcNy9TWm
	2yH4dnnpVPvMsfRGjTVI0ohPz3pe77Ylxj/5EC/p2aZI0z50ZaTE3NHm+Lb4rqd+RsXmSKMm062M8
	anC6y5HD+ykBfrrHk5fbY3LWfEdI3kchBwLULSinLyDiOXK5KtUACnKWzz7oxK7yXyM0Vq62XY8Dh
	cGJTp2CDyx7h66LJrd6kjOpglnR/MpdUG++sbrXTKbElQogbytkcuceDyxJBAbR5sr0iVLmVcCWVI
	fm+6Tt6h+lvKfUCU+pdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlVWS-00017l-SO; Thu, 11 Jul 2019 09:37:53 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlVWG-000174-Ao
 for linux-arm-kernel@bombadil.infradead.org; Thu, 11 Jul 2019 09:37:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lKcumOs4WCDbOn+xjR/22MRRRkcHVDLbcFzYkArLOcY=; b=qHD4m64Ga1ZXkqr6lie5dLKrYX
 yOTm8F2TLwsIy32bJPDJZFNXDiwYrynYXhfDkh9gQhJlwYbQZelSg+y44qv/JgWjB1sLAKlpT/ACE
 iZ/wxSimLYySrWE574XOE5W5oad66X8QLDr7xBr3rAR5HsQakKAm7zA/ag+jJn6kQVUtyXJkC15Fv
 vRYbGdDGVdZ5IwS3NJcJS9YWqf4F1XUkaPWC9RWYDw7+HpCM8gMSsCYtsBB8MlUK+HBoqzAHFAvRF
 tKc1tlpznbY8bBPJCk5SW5lK82UhUJWTctWjp9CNdhow1fkHm5ju5ulvN5PKzVJUO+KAYBVPx+Un1
 0lfwARvQ==;
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlVWJ-0006rh-91
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 09:37:45 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 39EE760009;
 Thu, 11 Jul 2019 09:34:29 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 3/3] dt-bindings: dma: Convert Allwinner A31 and A64 DMA to a
 schema
Date: Thu, 11 Jul 2019 11:21:58 +0200
Message-Id: <20190711092158.14678-3-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711092158.14678-1-maxime.ripard@bootlin.com>
References: <20190711092158.14678-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_103743_391645_78E15155 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The newer Allwinner SoCs have a DMA controller supported in Linux, with a
matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

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
