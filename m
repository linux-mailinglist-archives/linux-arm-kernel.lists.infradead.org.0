Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 586C92B476
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Svbx75emu0klrxRP0mVtj7O9B80EwBJfMTvtBjraPpk=; b=VTnxSAuq4tr7LX
	C1GwKYZ4IhCvg6jEDsZ7TW++usH7vtWpjm+XdeyRZw1Z+PIhRqTz8RaD1CmAq0gBKA6J84ti6buh6
	eRatb3XgpAd+O0DgUHTcoTQOVIPiF6QFB4PNbW1MKRDm+7CYctOhK602N1VTz/DHVRAcOvTYCvJ/N
	ZvKQJ8nOjh5qXRnFXAUkrE93lNI3cnVMBfnR9CczLYJGLAvmdi3Hy3wzWUNg9ecl+qnj2uDcjfPgd
	ZDEkHtjZbEoFGcbS7+6MLKMjtRhlfWGI8YRAntQS6bUS0X38DDEtNVIxD/hARJv8IzOBe25qNSoy0
	WnkzK52JS5/fI20b9Bkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVERQ-0000Iy-8w; Mon, 27 May 2019 12:09:24 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVERH-0000IZ-QK
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:09:18 +0000
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 27EA2240015;
 Mon, 27 May 2019 12:09:11 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH] dt-bindings: display: Convert Allwinner DSI to a schema
Date: Mon, 27 May 2019 14:09:10 +0200
Message-Id: <20190527120910.18964-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_050916_154868_F7BA6541 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner SoCs have a MIPI-DSI and MIPI-D-PHY controllers supported in
Linux, with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../display/allwinner,sun6i-a31-mipi-dsi.yaml | 100 ++++++++++++++++++
 .../bindings/display/sunxi/sun6i-dsi.txt      |  93 ----------------
 .../phy/allwinner,sun6i-a31-mipi-dphy.yaml    |  57 ++++++++++
 3 files changed, 157 insertions(+), 93 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
 delete mode 100644 Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
new file mode 100644
index 000000000000..47950fced28d
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
@@ -0,0 +1,100 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/allwinner,sun6i-a31-mipi-dsi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A31 MIPI-DSI Controller Device Tree Bindings
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
+    const: allwinner,sun6i-a31-mipi-dsi
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
+      - const: bus
+      - const: mod
+
+  resets:
+    maxItems: 1
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    const: dphy
+
+  port:
+    type: object
+    description:
+      A port node with endpoint definitions as defined in
+      Documentation/devicetree/bindings/media/video-interfaces.txt. That
+      port should be the input endpoint, usually coming from the
+      associated TCON.
+
+patternProperties:
+  "^panel@[0-9]+$": true
+
+required:
+  - "#address-cells"
+  - "#size-cells"
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - phys
+  - phy-names
+  - resets
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    dsi0: dsi@1ca0000 {
+        compatible = "allwinner,sun6i-a31-mipi-dsi";
+        reg = <0x01ca0000 0x1000>;
+        interrupts = <0 89 4>;
+        clocks = <&ccu 23>, <&ccu 96>;
+        clock-names = "bus", "mod";
+        resets = <&ccu 4>;
+        phys = <&dphy0>;
+        phy-names = "dphy";
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+                compatible = "bananapi,lhr050h41", "ilitek,ili9881c";
+                reg = <0>;
+                power-gpios = <&pio 1 7 0>; /* PB07 */
+                reset-gpios = <&r_pio 0 5 1>; /* PL05 */
+                backlight = <&pwm_bl>;
+        };
+
+        port {
+            dsi0_in_tcon0: endpoint {
+                remote-endpoint = <&tcon0_out_dsi0>;
+            };
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
deleted file mode 100644
index 6a6cf5de08b0..000000000000
--- a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
+++ /dev/null
@@ -1,93 +0,0 @@
-Allwinner A31 DSI Encoder
-=========================
-
-The DSI pipeline consists of two separate blocks: the DSI controller
-itself, and its associated D-PHY.
-
-DSI Encoder
------------
-
-The DSI Encoder generates the DSI signal from the TCON's.
-
-Required properties:
-  - compatible: value must be one of:
-    * allwinner,sun6i-a31-mipi-dsi
-  - reg: base address and size of memory-mapped region
-  - interrupts: interrupt associated to this IP
-  - clocks: phandles to the clocks feeding the DSI encoder
-    * bus: the DSI interface clock
-    * mod: the DSI module clock
-  - clock-names: the clock names mentioned above
-  - phys: phandle to the D-PHY
-  - phy-names: must be "dphy"
-  - resets: phandle to the reset controller driving the encoder
-
-  - ports: A ports node with endpoint definitions as defined in
-    Documentation/devicetree/bindings/media/video-interfaces.txt. The
-    first port should be the input endpoint, usually coming from the
-    associated TCON.
-
-Any MIPI-DSI device attached to this should be described according to
-the bindings defined in ../mipi-dsi-bus.txt
-
-D-PHY
------
-
-Required properties:
-  - compatible: value must be one of:
-    * allwinner,sun6i-a31-mipi-dphy
-  - reg: base address and size of memory-mapped region
-  - clocks: phandles to the clocks feeding the DSI encoder
-    * bus: the DSI interface clock
-    * mod: the DSI module clock
-  - clock-names: the clock names mentioned above
-  - resets: phandle to the reset controller driving the encoder
-
-Example:
-
-dsi0: dsi@1ca0000 {
-	compatible = "allwinner,sun6i-a31-mipi-dsi";
-	reg = <0x01ca0000 0x1000>;
-	interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
-	clocks = <&ccu CLK_BUS_MIPI_DSI>,
-		 <&ccu CLK_DSI_SCLK>;
-	clock-names = "bus", "mod";
-	resets = <&ccu RST_BUS_MIPI_DSI>;
-	phys = <&dphy0>;
-	phy-names = "dphy";
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	panel@0 {
-		compatible = "bananapi,lhr050h41", "ilitek,ili9881c";
-		reg = <0>;
-		power-gpios = <&pio 1 7 GPIO_ACTIVE_HIGH>; /* PB07 */
-		reset-gpios = <&r_pio 0 5 GPIO_ACTIVE_LOW>; /* PL05 */
-		backlight = <&pwm_bl>;
-	};
-
-	ports {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		port@0 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			reg = <0>;
-
-			dsi0_in_tcon0: endpoint {
-				remote-endpoint = <&tcon0_out_dsi0>;
-			};
-		};
-	};
-};
-
-dphy0: d-phy@1ca1000 {
-	compatible = "allwinner,sun6i-a31-mipi-dphy";
-	reg = <0x01ca1000 0x1000>;
-	clocks = <&ccu CLK_BUS_MIPI_DSI>,
-		 <&ccu CLK_DSI_DPHY>;
-	clock-names = "bus", "mod";
-	resets = <&ccu RST_BUS_MIPI_DSI>;
-	#phy-cells = <0>;
-};
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
new file mode 100644
index 000000000000..250f9d5aabdf
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/allwinner,sun6i-a31-mipi-dphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A31 MIPI D-PHY Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  "#phy-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun6i-a31-mipi-dphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Bus Clock
+      - description: Module Clock
+
+  clock-names:
+    items:
+      - const: bus
+      - const: mod
+
+  resets:
+    maxItems: 1
+
+required:
+  - "#phy-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    dphy0: d-phy@1ca1000 {
+        compatible = "allwinner,sun6i-a31-mipi-dphy";
+        reg = <0x01ca1000 0x1000>;
+        clocks = <&ccu 23>, <&ccu 97>;
+        clock-names = "bus", "mod";
+        resets = <&ccu 4>;
+        #phy-cells = <0>;
+    };
+
+...
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
