Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F84411DECD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 08:44:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=31F0gDg79GRiRuNHOCytkhuf2cRx1NXs4escZP6gjLw=; b=h9IB55k2cY6h/f
	W6E20bEnx0im7CdkyreASzk+KLngLK3ojCgyh8cEkAZIoGtvF8M1P16DqnukG7wHHNPUAxesH+97l
	5e5mVh21KhFz3G2gNF+BQaHT46SOdK6YBGnAxtckuS8HY8NtzUqYe80VrOfDo4JlUFIJWVFlsuP5l
	mYhIzFvud7UrZFILVIyf+VHZpZOHfNFKQ4AbRhY71G6DFtt90p02S+5zACgrDsCXVmi99geISCgA+
	6FHo8WwnmsbLKo7Kcn5gzcGaW/OJEmndfaW87V8rFt4g/mdvtkV5tvngASm29mBIReMIACZQK1q19
	Y8yB2IMcfMmrSg7J1cXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iffcO-0004Kz-EC; Fri, 13 Dec 2019 07:44:08 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iffcF-0004KS-FD
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 07:44:01 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id A86F0226EE;
 Fri, 13 Dec 2019 02:43:58 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Fri, 13 Dec 2019 02:43:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=V/dkQqEhLQZVHxS63i+CEEgpu+
 G4fLu9zf6DuAwnDME=; b=jlzK9T0XIoe/Cg3kmMNln6fyYPgqy1SZU+C/G0qPCI
 QWP8B8ofUx2j4AbUo8LnHnA8WV/LU4kOR/q6NEojD0W1AtlJDcRslR6qCKd+MT2s
 nECl7+V4hppIQeDl5Rsa6S8vAVDwqplSk6TUUFa8XLdzB8qlju6Dsz/1/5OXp/9g
 qM292p0nsxH0o3wxxL1k1Yr6DdjVWT+ZiFAxg0cqJbWTlKw9mXqnFOtshqYAz/IN
 OjrL3o5ZzTkgWPf+BJ4WDq3MO3aXvjzyJa4HgbgSRQAPYI9v89NqaMY94GWorY81
 6Rqxf1ig0JeBi/BFBF7MkpZuY804Dmp294+Xe9+l9H1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=V/dkQqEhLQZVHxS63
 i+CEEgpu+G4fLu9zf6DuAwnDME=; b=bMzqLlFeomEdXco6mDDOKEXiTwSG07iDX
 yqSxgZ9Hrh9odYYu5hvj1+yhn9LDUi/4UxpAfHSHDphUPoRdsOPTe9KPh04drkFO
 eaMMAno4E3WG73E1lUxjWjTD7fMwNNnLkuR1cooqdZg02NbJhlhAFgZNZdCGb+2f
 T7c13a0curZGYJWbOmHI6nIliIDDsxAE0KrOWwr7U8+/C5Z6+2PbU6ONtmLqoAYn
 Acw5FJIbUt/mstQUthLUXIBpBYfnQI7ARoxfGpJUTMKJT99lAGKIyJ0d6tqRwh0k
 G+eBXACnz9TfyRe6HgotzAXNtLM9raXc0Z23lGi9CJL5H0w7pRzIw==
X-ME-Sender: <xms:PUHzXaZiSYiyxdLF2cPV0vMRdRNFu3VCzkRCfib4wwVXTTdYQZUdFQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudelkedgudduudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enogevohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffo
 ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
 himhgvsegtvghrnhhordhtvggthheqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdr
 ohhrghenucfkphepledtrdekledrieekrdejieenucfrrghrrghmpehmrghilhhfrhhomh
 epmhgrgihimhgvsegtvghrnhhordhtvggthhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:PkHzXZH7NHZ_NEmPoMIUGdF6mcGEnBNz-YBn76vFDXIWce3o48mQEA>
 <xmx:PkHzXb1asWJuiPDnn32TS1cOjg6ZId7KLXFFUododURAkW7MwIjKqg>
 <xmx:PkHzXRcxMjf-B6VLMPTDjFqm8QIwRn2iDGXCxZOrunYjlFyFIj0otQ>
 <xmx:PkHzXZEJZsKYh823OunFMjqrES31qFRVO3ZEYfHpgcWehTKO3BpK_Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id AF4B03060193;
 Fri, 13 Dec 2019 02:43:57 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH] dt-bindings: media: Convert Allwinner A31 CSI to a schema
Date: Fri, 13 Dec 2019 08:43:55 +0100
Message-Id: <20191213074355.26840-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_234359_647618_46A0BB8B 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The newer Allwinner SoCs have a camera controller that is supported in
Linux, with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../media/allwinner,sun6i-a31-csi.yaml        | 115 ++++++++++++++++++
 .../devicetree/bindings/media/sun6i-csi.txt   |  61 ----------
 2 files changed, 115 insertions(+), 61 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
 delete mode 100644 Documentation/devicetree/bindings/media/sun6i-csi.txt

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
new file mode 100644
index 000000000000..1fd9b5532a21
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
@@ -0,0 +1,115 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-csi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A31 CMOS Sensor Interface (CSI) Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  compatible:
+    enum:
+      - allwinner,sun6i-a31-csi
+      - allwinner,sun8i-a83t-csi
+      - allwinner,sun8i-h3-csi
+      - allwinner,sun8i-v3s-csi
+      - allwinner,sun50i-a64-csi
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
+      - description: DRAM Clock
+
+  clock-names:
+    items:
+      - const: bus
+      - const: mod
+      - const: ram
+
+  resets:
+    maxItems: 1
+
+  # See ./video-interfaces.txt for details
+  port:
+    type: object
+
+    properties:
+      endpoint:
+        type: object
+
+        properties:
+          remote-endpoint: true
+
+          bus-width:
+            enum: [ 8, 10, 12, 16 ]
+
+          pclk-sample: true
+          hsync-active: true
+          vsync-active: true
+
+        required:
+          - bus-width
+          - remote-endpoint
+
+    required:
+      - endpoint
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/sun8i-v3s-ccu.h>
+    #include <dt-bindings/reset/sun8i-v3s-ccu.h>
+
+    csi1: csi@1cb4000 {
+        compatible = "allwinner,sun8i-v3s-csi";
+        reg = <0x01cb4000 0x1000>;
+        interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&ccu CLK_BUS_CSI>,
+                 <&ccu CLK_CSI1_SCLK>,
+                 <&ccu CLK_DRAM_CSI>;
+        clock-names = "bus",
+                      "mod",
+                      "ram";
+        resets = <&ccu RST_BUS_CSI>;
+
+        port {
+            /* Parallel bus endpoint */
+            csi1_ep: endpoint {
+                remote-endpoint = <&adv7611_ep>;
+                bus-width = <16>;
+
+                /*
+                 * If hsync-active/vsync-active are missing,
+                 * embedded BT.656 sync is used.
+                 */
+                 hsync-active = <0>; /* Active low */
+                 vsync-active = <0>; /* Active low */
+                 pclk-sample = <1>;  /* Rising */
+            };
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/media/sun6i-csi.txt b/Documentation/devicetree/bindings/media/sun6i-csi.txt
deleted file mode 100644
index a2e3e56f0257..000000000000
--- a/Documentation/devicetree/bindings/media/sun6i-csi.txt
+++ /dev/null
@@ -1,61 +0,0 @@
-Allwinner V3s Camera Sensor Interface
--------------------------------------
-
-Allwinner V3s SoC features a CSI module(CSI1) with parallel interface.
-
-Required properties:
-  - compatible: value must be one of:
-    * "allwinner,sun6i-a31-csi"
-    * "allwinner,sun8i-a83t-csi"
-    * "allwinner,sun8i-h3-csi"
-    * "allwinner,sun8i-v3s-csi"
-    * "allwinner,sun50i-a64-csi"
-  - reg: base address and size of the memory-mapped region.
-  - interrupts: interrupt associated to this IP
-  - clocks: phandles to the clocks feeding the CSI
-    * bus: the CSI interface clock
-    * mod: the CSI module clock
-    * ram: the CSI DRAM clock
-  - clock-names: the clock names mentioned above
-  - resets: phandles to the reset line driving the CSI
-
-The CSI node should contain one 'port' child node with one child 'endpoint'
-node, according to the bindings defined in
-Documentation/devicetree/bindings/media/video-interfaces.txt.
-
-Endpoint node properties for CSI
----------------------------------
-See the video-interfaces.txt for a detailed description of these properties.
-- remote-endpoint	: (required) a phandle to the bus receiver's endpoint
-			   node
-- bus-width:		: (required) must be 8, 10, 12 or 16
-- pclk-sample		: (optional) (default: sample on falling edge)
-- hsync-active		: (required; parallel-only)
-- vsync-active		: (required; parallel-only)
-
-Example:
-
-csi1: csi@1cb4000 {
-	compatible = "allwinner,sun8i-v3s-csi";
-	reg = <0x01cb4000 0x1000>;
-	interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
-	clocks = <&ccu CLK_BUS_CSI>,
-		 <&ccu CLK_CSI1_SCLK>,
-		 <&ccu CLK_DRAM_CSI>;
-	clock-names = "bus", "mod", "ram";
-	resets = <&ccu RST_BUS_CSI>;
-
-	port {
-		/* Parallel bus endpoint */
-		csi1_ep: endpoint {
-			remote-endpoint = <&adv7611_ep>;
-			bus-width = <16>;
-
-			/* If hsync-active/vsync-active are missing,
-			   embedded BT.656 sync is used */
-			hsync-active = <0>; /* Active low */
-			vsync-active = <0>; /* Active low */
-			pclk-sample = <1>;  /* Rising */
-		};
-	};
-};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
