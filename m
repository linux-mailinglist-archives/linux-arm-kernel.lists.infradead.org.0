Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E30653E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 11:35:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5i4okTygU3MNjnm8PBZCgllu2Yfy0ev4b9i2w/uNZYw=; b=sJ++uYlIS86/jA
	YwB9JwhiozwuQodLBS5zGcd3Au8fgIlwy2Fee+Oa3GjlnQjMN6CVAocyYXcEe5HPXmZ2eZ/rvIJdN
	71YAXz7+gxqunqwyoxkVvMwqIq9Y3t8HPPWCxGvh27TYznunWhUtWbIu+nq16BJyXa3AycEsx+zK6
	LayR/DRmmkqYmM6GD9iu4pGM4onbjPhQ883Bn7YovcPho9CMUqYgQ2RdBjYPRudasCZPf9x/8zFmz
	fAn+qsBxnZdmBO7EIrZPvm/K4xo96FDWhStwi+6SoNFzRHEM1TyB/cNr4I4ZVgbqOJVJ5leE+O6m0
	hm3WdaVbcH/aMu50kARg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlVTW-0007Tu-15; Thu, 11 Jul 2019 09:34:50 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlVTJ-0007T8-Pc
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 09:34:40 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 4BE8E1C002D;
 Thu, 11 Jul 2019 09:34:21 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 1/3] dt-bindings: dma: Add YAML schemas for the generic DMA
 bindings
Date: Thu, 11 Jul 2019 11:21:56 +0200
Message-Id: <20190711092158.14678-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_023438_152665_E6A8FA3D 
X-CRM114-Status: GOOD (  22.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DMA controllers and consumers have a bunch of generic properties that
are needed in a device tree. Add a YAML schemas for those.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../devicetree/bindings/dma/dma-consumer.yaml |  60 +++++++++
 .../bindings/dma/dma-controller.yaml          |  79 ++++++++++++
 Documentation/devicetree/bindings/dma/dma.txt | 114 +-----------------
 3 files changed, 140 insertions(+), 113 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/dma/dma-consumer.yaml
 create mode 100644 Documentation/devicetree/bindings/dma/dma-controller.yaml

diff --git a/Documentation/devicetree/bindings/dma/dma-consumer.yaml b/Documentation/devicetree/bindings/dma/dma-consumer.yaml
new file mode 100644
index 000000000000..2f6315863ad1
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/dma-consumer.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dma/dma-consumer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: DMA Consumer Generic Binding
+
+maintainers:
+  - Vinod Koul <vkoul@kernel.org>
+
+select: true
+
+properties:
+  dmas:
+    description:
+      List of one or more DMA specifiers, each consisting of
+          - A phandle pointing to DMA controller node
+          - A number of integer cells, as determined by the
+            \#dma-cells property in the node referenced by phandle
+            containing DMA controller specific information. This
+            typically contains a DMA request line number or a
+            channel number, but can contain any data that is
+            required for configuring a channel.
+
+  dma-names:
+    description:
+      Contains one identifier string for each DMA specifier in the
+      dmas property. The specific strings that can be used are defined
+      in the binding of the DMA client device.  Multiple DMA
+      specifiers can be used to represent alternatives and in this
+      case the dma-names for those DMA specifiers must be identical
+      (see examples).
+
+dependencies:
+  dma-names: [ dmas ]
+
+examples:
+  - |
+    /* A device with one DMA read channel, one DMA write channel */
+    i2c1: i2c@1 {
+         /* ... */
+         dmas = <&dma 2>, 	/* read channel */
+                <&dma 3>;	/* write channel */
+        dma-names = "rx", "tx";
+        /* ... */
+    };
+
+  - |
+    /* A single read-write channel with three alternative DMA controllers */
+    dmas = <&dma1 5>, <&dma2 7>, <&dma3 2>;
+    dma-names = "rx-tx", "rx-tx", "rx-tx";
+
+  - |
+    /* A device with three channels, one of which has two alternatives */
+    dmas = <&dma1 2>,		/* read channel */
+           <&dma1 3>,		/* write channel */
+           <&dma2 0>,		/* error read */
+           <&dma3 0>;		/* alternative error read */
+    dma-names = "rx", "tx", "error", "error";
diff --git a/Documentation/devicetree/bindings/dma/dma-controller.yaml b/Documentation/devicetree/bindings/dma/dma-controller.yaml
new file mode 100644
index 000000000000..17c650131b78
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/dma-controller.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dma/dma-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: DMA Controller Generic Binding
+
+maintainers:
+  - Vinod Koul <vkoul@kernel.org>
+
+description:
+  Generic binding to provide a way for a driver using DMA Engine to
+  retrieve the DMA request or channel information that goes from a
+  hardware device to a DMA controller.
+
+properties:
+  $nodename:
+    pattern: "^dma-controller(@.*)?$"
+
+  "#dma-cells":
+    # minimum: 1
+    description:
+      Used to provide DMA controller specific information.
+
+  dma-channel-masks:
+    $ref: /schemas/types.yaml#definitions/uint32
+    description:
+      Bitmask of available DMA channels in ascending order that are
+      not reserved by firmware and are available to the
+      kernel. i.e. first channel corresponds to LSB.
+
+  dma-channels:
+    $ref: /schemas/types.yaml#definitions/uint32
+    description:
+      Number of DMA channels supported by the controller.
+
+  dma-masters:
+    $ref: /schemas/types.yaml#definitions/phandle-array
+    description:
+      DMA routers are transparent IP blocks used to route DMA request
+      lines from devices to the DMA controller. Some SoCs (like TI
+      DRA7x) have more peripherals integrated with DMA requests than
+      what the DMA controller can handle directly.
+
+      In such a case, dma-masters is an array of phandle to the DMA
+      controllers the router can direct the signal to.
+
+  dma-requests:
+    $ref: /schemas/types.yaml#definitions/uint32
+    description:
+      Number of DMA request signals supported by the controller.
+
+examples:
+  - |
+    dma: dma@48000000 {
+        compatible = "ti,omap-sdma";
+        reg = <0x48000000 0x1000>;
+        interrupts = <0 12 0x4
+                      0 13 0x4
+                      0 14 0x4
+                      0 15 0x4>;
+        #dma-cells = <1>;
+        dma-channels = <32>;
+        dma-requests = <127>;
+        dma-channel-mask = <0xfffe>;
+    };
+
+  - |
+    sdma_xbar: dma-router@4a002b78 {
+        compatible = "ti,dra7-dma-crossbar";
+        reg = <0x4a002b78 0xfc>;
+        #dma-cells = <1>;
+        dma-requests = <205>;
+        ti,dma-safe-map = <0>;
+        dma-masters = <&sdma>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/dma/dma.txt b/Documentation/devicetree/bindings/dma/dma.txt
index eeb4e4d1771e..90a67a016a48 100644
--- a/Documentation/devicetree/bindings/dma/dma.txt
+++ b/Documentation/devicetree/bindings/dma/dma.txt
@@ -1,113 +1 @@
-* Generic DMA Controller and DMA request bindings
-
-Generic binding to provide a way for a driver using DMA Engine to retrieve the
-DMA request or channel information that goes from a hardware device to a DMA
-controller.
-
-
-* DMA controller
-
-Required property:
-- #dma-cells: 		Must be at least 1. Used to provide DMA controller
-			specific information. See DMA client binding below for
-			more details.
-
-Optional properties:
-- dma-channels: 	Number of DMA channels supported by the controller.
-- dma-requests: 	Number of DMA request signals supported by the
-			controller.
-- dma-channel-mask:	Bitmask of available DMA channels in ascending order
-			that are not reserved by firmware and are available to
-			the kernel. i.e. first channel corresponds to LSB.
-
-Example:
-
-	dma: dma@48000000 {
-		compatible = "ti,omap-sdma";
-		reg = <0x48000000 0x1000>;
-		interrupts = <0 12 0x4
-			      0 13 0x4
-			      0 14 0x4
-			      0 15 0x4>;
-		#dma-cells = <1>;
-		dma-channels = <32>;
-		dma-requests = <127>;
-		dma-channel-mask = <0xfffe>
-	};
-
-* DMA router
-
-DMA routers are transparent IP blocks used to route DMA request lines from
-devices to the DMA controller. Some SoCs (like TI DRA7x) have more peripherals
-integrated with DMA requests than what the DMA controller can handle directly.
-
-Required property:
-- dma-masters:		phandle of the DMA controller or list of phandles for
-			the DMA controllers the router can direct the signal to.
-- #dma-cells: 		Must be at least 1. Used to provide DMA router specific
-			information. See DMA client binding below for more
-			details.
-
-Optional properties:
-- dma-requests: 	Number of incoming request lines the router can handle.
-- In the node pointed by the dma-masters:
-	- dma-requests:	The router driver might need to look for this in order
-			to configure the routing.
-
-Example:
-	sdma_xbar: dma-router@4a002b78 {
-		compatible = "ti,dra7-dma-crossbar";
-		reg = <0x4a002b78 0xfc>;
-		#dma-cells = <1>;
-		dma-requests = <205>;
-		ti,dma-safe-map = <0>;
-		dma-masters = <&sdma>;
-	};
-
-* DMA client
-
-Client drivers should specify the DMA property using a phandle to the controller
-followed by DMA controller specific data.
-
-Required property:
-- dmas:			List of one or more DMA specifiers, each consisting of
-			- A phandle pointing to DMA controller node
-			- A number of integer cells, as determined by the
-			  #dma-cells property in the node referenced by phandle
-			  containing DMA controller specific information. This
-			  typically contains a DMA request line number or a
-			  channel number, but can contain any data that is
-			  required for configuring a channel.
-- dma-names: 		Contains one identifier string for each DMA specifier in
-			the dmas property. The specific strings that can be used
-			are defined in the binding of the DMA client device.
-			Multiple DMA specifiers can be used to represent
-			alternatives and in this case the dma-names for those
-			DMA specifiers must be identical (see examples).
-
-Examples:
-
-1. A device with one DMA read channel, one DMA write channel:
-
-	i2c1: i2c@1 {
-		...
-		dmas = <&dma 2		/* read channel */
-			&dma 3>;	/* write channel */
-		dma-names = "rx", "tx";
-		...
-	};
-
-2. A single read-write channel with three alternative DMA controllers:
-
-	dmas = <&dma1 5
-		&dma2 7
-		&dma3 2>;
-	dma-names = "rx-tx", "rx-tx", "rx-tx";
-
-3. A device with three channels, one of which has two alternatives:
-
-	dmas = <&dma1 2			/* read channel */
-		&dma1 3			/* write channel */
-		&dma2 0			/* error read */
-		&dma3 0>;		/* alternative error read */
-	dma-names = "rx", "tx", "error", "error";
+This file has been moved to dma-controller.yaml.
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
