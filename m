Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF92C5860B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:38:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kuNbgn+1SeXj+5kxXOMe8Ch+sqB+OtX+bskmEeJIbzk=; b=qn4vqUhLEBSOoP
	0L4Z15o3op4UIe+Mrgoz9qVu9fOf3uQFL3ozbksJDnLN6vjlHRlDsj59BssD2ivWN6tVH7XQUEsD0
	Fy9aq/TdYeG/slu/e6ZwK/+dDUK/2OB5p7Y5aLE+5uhsfsGtFPp5i/rAJhjTgmjKTZvxaCM2VTq1V
	nKalXkZM2VPCbRkL17OudcwfBMVxcf7BKX+a7SEfFI/7hvQvpF6Dut6ieAtnbQzy5ACGdTdp8Zs1c
	MpXuh2gCm0OkObU5/23DDhWTDIvOIG8wdhwXEOFagjEhDp/aWlnJOJkisuoA+V8+ZGqLCZPCLhDjq
	b8S6fcG74qECNvHjUaqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWTh-0002dS-Pq; Thu, 27 Jun 2019 15:38:25 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWOC-0006bY-7O
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 15:32:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XpOlNdhpm4nHpdqDuPL76+djxQgEmK5H9lCE19ljx3U=; b=OKj3tUtfY81Hog/NzhGpdDKee3
 RQJ2IZQgy/mmoEL23nReXm8KMxspsnXevvW1m+KTm3tIVNqEBlZQB+UdXI9Y82freqA86fT19gjlQ
 cSWA76z8/k+yisk8GMYcc65MGXDy5793/kMr5vYTKyCktQhKmOV/m6O2bzMw5VJhCysR12kGXQbGk
 HxebV276lw7sZh3hzomjMpRiNrzTdTirw/xZekOJD0xGz81ez/Lo/fb5o5gMQtg0MHxbnd67A9wqe
 HfR66bn6iGqVqsTluIFFcccEI/Zm7Ynz8X4T2FaWoroZfcxa283f1mAy9Pyqa0v5uYn9zyV1Iw5P2
 /6oJ8c3Q==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWO8-0001CJ-Kw
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:32:42 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id EF92AE0016;
 Thu, 27 Jun 2019 15:32:00 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH v4 10/13] dt-bindings: net: sun8i-emac: Convert the binding to
 a schemas
Date: Thu, 27 Jun 2019 17:31:52 +0200
Message-Id: <1e5c736ab18df2fedd7351d602da26fc99f63e7d.1561649505.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.e80da8845680a45c2e07d5f17280fdba84555b8a.1561649505.git-series.maxime.ripard@bootlin.com>
References: <cover.e80da8845680a45c2e07d5f17280fdba84555b8a.1561649505.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?q?Antoine=20T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev@vger.kernel.org, Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch our Allwinner H3 EMAC controller binding to a YAML schema to enable
the DT validation. Since that controller is based on a Synopsys IP, let's
add the validation to that schemas with a bunch of conditionals.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml | 321 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 Documentation/devicetree/bindings/net/dwmac-sun8i.txt                | 201 +---------------------------------------------
 Documentation/devicetree/bindings/net/snps,dwmac.yaml                |  15 +++-
 3 files changed, 336 insertions(+), 201 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/dwmac-sun8i.txt

diff --git a/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml
new file mode 100644
index 000000000000..6f68c7f5fc34
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml
@@ -0,0 +1,321 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/allwinner,sun8i-a83t-gmac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A83t EMAC Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  compatible:
+    oneOf:
+      - const: allwinner,sun8i-a83t-emac
+      - const: allwinner,sun8i-h3-emac
+      - const: allwinner,sun8i-r40-emac
+      - const: allwinner,sun8i-v3s-emac
+      - const: allwinner,sun50i-a64-emac
+      - items:
+        - const: allwinner,sun50i-h6-emac
+        - const: allwinner,sun50i-a64-emac
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-names:
+    const: macirq
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: stmmaceth
+
+  syscon:
+    $ref: /schemas/types.yaml#definitions/phandle
+    description:
+      Phandle to the device containing the EMAC or GMAC clock
+      register
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - phy-connection-type
+  - phy-handle
+  - syscon
+
+allOf:
+  - $ref: "snps,dwmac.yaml#"
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - allwinner,sun8i-a83t-emac
+              - allwinner,sun8i-h3-emac
+              - allwinner,sun8i-v3s-emac
+              - allwinner,sun50i-a64-emac
+
+    then:
+      properties:
+        allwinner,tx-delay-ps:
+          default: 0
+          minimum: 0
+          maximum: 700
+          multipleOf: 100
+          description:
+            External RGMII PHY TX clock delay chain value in ps.
+
+        allwinner,rx-delay-ps:
+          default: 0
+          minimum: 0
+          maximum: 3100
+          multipleOf: 100
+          description:
+            External RGMII PHY TX clock delay chain value in ps.
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - allwinner,sun8i-r40-emac
+
+    then:
+      properties:
+        allwinner,rx-delay-ps:
+          default: 0
+          minimum: 0
+          maximum: 700
+          multipleOf: 100
+          description:
+            External RGMII PHY TX clock delay chain value in ps.
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - allwinner,sun8i-h3-emac
+              - allwinner,sun8i-v3s-emac
+
+    then:
+      properties:
+        allwinner,leds-active-low:
+          $ref: /schemas/types.yaml#definitions/flag
+          description:
+            EPHY LEDs are active low.
+
+        mdio-mux:
+          type: object
+
+          properties:
+            compatible:
+              const: allwinner,sun8i-h3-mdio-mux
+
+            mdio-parent-bus:
+              $ref: /schemas/types.yaml#definitions/phandle
+              description:
+                Phandle to EMAC MDIO.
+
+            mdio@1:
+              type: object
+              description: Internal MDIO Bus
+
+              properties:
+                "#address-cells":
+                  const: 1
+
+                "#size-cells":
+                  const: 0
+
+                compatible:
+                  const: allwinner,sun8i-h3-mdio-internal
+
+                reg:
+                  const: 1
+
+              patternProperties:
+                "^ethernet-phy@[0-9a-f]$":
+                  type: object
+                  description:
+                    Integrated PHY node
+
+                  properties:
+                    clocks:
+                      maxItems: 1
+
+                    resets:
+                      maxItems: 1
+
+                  required:
+                    - clocks
+                    - resets
+
+
+            mdio@2:
+              type: object
+              description: External MDIO Bus (H3 only)
+
+              properties:
+                "#address-cells":
+                  const: 1
+
+                "#size-cells":
+                  const: 0
+
+                reg:
+                  const: 2
+
+          required:
+            - compatible
+            - mdio-parent-bus
+            - mdio@1
+
+examples:
+  - |
+    ethernet@1c0b000 {
+        compatible = "allwinner,sun8i-h3-emac";
+        syscon = <&syscon>;
+        reg = <0x01c0b000 0x104>;
+        interrupts = <0 82 1>;
+        interrupt-names = "macirq";
+        resets = <&ccu 12>;
+        reset-names = "stmmaceth";
+        clocks = <&ccu 27>;
+        clock-names = "stmmaceth";
+
+        phy-handle = <&int_mii_phy>;
+        phy-connection-type = "mii";
+        allwinner,leds-active-low;
+
+        mdio1: mdio {
+            #address-cells = <1>;
+            #size-cells = <0>;
+            compatible = "snps,dwmac-mdio";
+        };
+
+        mdio-mux {
+            compatible = "allwinner,sun8i-h3-mdio-mux";
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            mdio-parent-bus = <&mdio1>;
+
+            int_mii_phy: mdio@1 {
+                compatible = "allwinner,sun8i-h3-mdio-internal";
+                reg = <1>;
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                ethernet-phy@1 {
+                    reg = <1>;
+                    clocks = <&ccu 67>;
+                    resets = <&ccu 39>;
+                    phy-is-integrated;
+                };
+            };
+
+            mdio@2 {
+                reg = <2>;
+                #address-cells = <1>;
+                #size-cells = <0>;
+            };
+        };
+    };
+
+  - |
+    ethernet@1c0b000 {
+        compatible = "allwinner,sun8i-h3-emac";
+        syscon = <&syscon>;
+        reg = <0x01c0b000 0x104>;
+        interrupts = <0 82 1>;
+        interrupt-names = "macirq";
+        resets = <&ccu 12>;
+        reset-names = "stmmaceth";
+        clocks = <&ccu 27>;
+        clock-names = "stmmaceth";
+
+        phy-handle = <&ext_rgmii_phy>;
+        phy-connection-type = "rgmii";
+        allwinner,leds-active-low;
+
+        mdio2: mdio {
+            #address-cells = <1>;
+            #size-cells = <0>;
+            compatible = "snps,dwmac-mdio";
+        };
+
+        mdio-mux {
+            compatible = "allwinner,sun8i-h3-mdio-mux";
+            #address-cells = <1>;
+            #size-cells = <0>;
+            mdio-parent-bus = <&mdio2>;
+
+            mdio@1 {
+                compatible = "allwinner,sun8i-h3-mdio-internal";
+                reg = <1>;
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                ethernet-phy@1 {
+                    reg = <1>;
+                    clocks = <&ccu 67>;
+                    resets = <&ccu 39>;
+                };
+            };
+
+            mdio@2 {
+                reg = <2>;
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                ext_rgmii_phy: ethernet-phy@1 {
+                    reg = <1>;
+                };
+            };
+        };
+    };
+
+  - |
+    ethernet@1c0b000 {
+        compatible = "allwinner,sun8i-a83t-emac";
+        syscon = <&syscon>;
+        reg = <0x01c0b000 0x104>;
+        interrupts = <0 82 1>;
+        interrupt-names = "macirq";
+        resets = <&ccu 13>;
+        reset-names = "stmmaceth";
+        clocks = <&ccu 27>;
+        clock-names = "stmmaceth";
+        phy-handle = <&ext_rgmii_phy1>;
+        phy-connection-type = "rgmii";
+
+        mdio {
+            compatible = "snps,dwmac-mdio";
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            ext_rgmii_phy1: ethernet-phy@1 {
+                reg = <1>;
+            };
+        };
+    };
+
+# FIXME: We should set it, but it would report all the generic
+# properties as additional properties.
+# additionalProperties: false
+
+...
diff --git a/Documentation/devicetree/bindings/net/dwmac-sun8i.txt b/Documentation/devicetree/bindings/net/dwmac-sun8i.txt
deleted file mode 100644
index 54c66d0611cb..000000000000
--- a/Documentation/devicetree/bindings/net/dwmac-sun8i.txt
+++ /dev/null
@@ -1,201 +0,0 @@
-* Allwinner sun8i GMAC ethernet controller
-
-This device is a platform glue layer for stmmac.
-Please see stmmac.txt for the other unchanged properties.
-
-Required properties:
-- compatible: must be one of the following string:
-		"allwinner,sun8i-a83t-emac"
-		"allwinner,sun8i-h3-emac"
-		"allwinner,sun8i-r40-gmac"
-		"allwinner,sun8i-v3s-emac"
-		"allwinner,sun50i-a64-emac"
-		"allwinner,sun50i-h6-emac", "allwinner-sun50i-a64-emac"
-- reg: address and length of the register for the device.
-- interrupts: interrupt for the device
-- interrupt-names: must be "macirq"
-- clocks: A phandle to the reference clock for this device
-- clock-names: must be "stmmaceth"
-- resets: A phandle to the reset control for this device
-- reset-names: must be "stmmaceth"
-- phy-mode: See ethernet.txt
-- phy-handle: See ethernet.txt
-- syscon: A phandle to the device containing the EMAC or GMAC clock register
-
-Optional properties:
-- allwinner,tx-delay-ps: TX clock delay chain value in ps.
-			 Range is 0-700. Default is 0.
-			 Unavailable for allwinner,sun8i-r40-gmac
-- allwinner,rx-delay-ps: RX clock delay chain value in ps.
-			 Range is 0-3100. Default is 0.
-			 Range is 0-700 for allwinner,sun8i-r40-gmac
-Both delay properties need to be a multiple of 100. They control the
-clock delay for external RGMII PHY. They do not apply to the internal
-PHY or external non-RGMII PHYs.
-
-Optional properties for the following compatibles:
-  - "allwinner,sun8i-h3-emac",
-  - "allwinner,sun8i-v3s-emac":
-- allwinner,leds-active-low: EPHY LEDs are active low
-
-Required child node of emac:
-- mdio bus node: should be named mdio with compatible "snps,dwmac-mdio"
-
-Required properties of the mdio node:
-- #address-cells: shall be 1
-- #size-cells: shall be 0
-
-The device node referenced by "phy" or "phy-handle" must be a child node
-of the mdio node. See phy.txt for the generic PHY bindings.
-
-The following compatibles require that the emac node have a mdio-mux child
-node called "mdio-mux":
-  - "allwinner,sun8i-h3-emac"
-  - "allwinner,sun8i-v3s-emac":
-Required properties for the mdio-mux node:
-  - compatible = "allwinner,sun8i-h3-mdio-mux"
-  - mdio-parent-bus: a phandle to EMAC mdio
-  - one child mdio for the integrated mdio with the compatible
-    "allwinner,sun8i-h3-mdio-internal"
-  - one child mdio for the external mdio if present (V3s have none)
-Required properties for the mdio-mux children node:
-  - reg: 1 for internal MDIO bus, 2 for external MDIO bus
-
-The following compatibles require a PHY node representing the integrated
-PHY, under the integrated MDIO bus node if an mdio-mux node is used:
-  - "allwinner,sun8i-h3-emac",
-  - "allwinner,sun8i-v3s-emac":
-
-Additional information regarding generic multiplexer properties can be found
-at Documentation/devicetree/bindings/net/mdio-mux.txt
-
-Required properties of the integrated phy node:
-- clocks: a phandle to the reference clock for the EPHY
-- resets: a phandle to the reset control for the EPHY
-- Must be a child of the integrated mdio
-
-Example with integrated PHY:
-emac: ethernet@1c0b000 {
-	compatible = "allwinner,sun8i-h3-emac";
-	syscon = <&syscon>;
-	reg = <0x01c0b000 0x104>;
-	interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
-	interrupt-names = "macirq";
-	resets = <&ccu RST_BUS_EMAC>;
-	reset-names = "stmmaceth";
-	clocks = <&ccu CLK_BUS_EMAC>;
-	clock-names = "stmmaceth";
-
-	phy-handle = <&int_mii_phy>;
-	phy-mode = "mii";
-	allwinner,leds-active-low;
-
-	mdio: mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		compatible = "snps,dwmac-mdio";
-	};
-
-	mdio-mux {
-		compatible = "mdio-mux", "allwinner,sun8i-h3-mdio-mux";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		mdio-parent-bus = <&mdio>;
-
-		int_mdio: mdio@1 {
-			compatible = "allwinner,sun8i-h3-mdio-internal";
-			reg = <1>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			int_mii_phy: ethernet-phy@1 {
-				reg = <1>;
-				clocks = <&ccu CLK_BUS_EPHY>;
-				resets = <&ccu RST_BUS_EPHY>;
-				phy-is-integrated;
-			};
-		};
-		ext_mdio: mdio@2 {
-			reg = <2>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-		};
-	};
-};
-
-Example with external PHY:
-emac: ethernet@1c0b000 {
-	compatible = "allwinner,sun8i-h3-emac";
-	syscon = <&syscon>;
-	reg = <0x01c0b000 0x104>;
-	interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
-	interrupt-names = "macirq";
-	resets = <&ccu RST_BUS_EMAC>;
-	reset-names = "stmmaceth";
-	clocks = <&ccu CLK_BUS_EMAC>;
-	clock-names = "stmmaceth";
-
-	phy-handle = <&ext_rgmii_phy>;
-	phy-mode = "rgmii";
-	allwinner,leds-active-low;
-
-	mdio: mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		compatible = "snps,dwmac-mdio";
-	};
-
-	mdio-mux {
-		compatible = "allwinner,sun8i-h3-mdio-mux";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		mdio-parent-bus = <&mdio>;
-
-		int_mdio: mdio@1 {
-			compatible = "allwinner,sun8i-h3-mdio-internal";
-			reg = <1>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			int_mii_phy: ethernet-phy@1 {
-				reg = <1>;
-				clocks = <&ccu CLK_BUS_EPHY>;
-				resets = <&ccu RST_BUS_EPHY>;
-			};
-		};
-		ext_mdio: mdio@2 {
-			reg = <2>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			ext_rgmii_phy: ethernet-phy@1 {
-				reg = <1>;
-			};
-		}:
-	};
-};
-
-Example with SoC without integrated PHY
-
-emac: ethernet@1c0b000 {
-	compatible = "allwinner,sun8i-a83t-emac";
-	syscon = <&syscon>;
-	reg = <0x01c0b000 0x104>;
-	interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
-	interrupt-names = "macirq";
-	resets = <&ccu RST_BUS_EMAC>;
-	reset-names = "stmmaceth";
-	clocks = <&ccu CLK_BUS_EMAC>;
-	clock-names = "stmmaceth";
-
-	phy-handle = <&ext_rgmii_phy>;
-	phy-mode = "rgmii";
-
-	mdio: mdio {
-		compatible = "snps,dwmac-mdio";
-		#address-cells = <1>;
-		#size-cells = <0>;
-		ext_rgmii_phy: ethernet-phy@1 {
-			reg = <1>;
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index fed623a81dcd..956308806c33 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -45,6 +45,11 @@ properties:
     contains:
       enum:
         - allwinner,sun7i-a20-gmac
+        - allwinner,sun8i-a83t-emac
+        - allwinner,sun8i-h3-emac
+        - allwinner,sun8i-r40-emac
+        - allwinner,sun8i-v3s-emac
+        - allwinner,sun50i-a64-emac
         - snps,dwmac
         - snps,dwmac-3.50a
         - snps,dwmac-3.610
@@ -267,6 +272,11 @@ allOf:
           contains:
             enum:
               - allwinner,sun7i-a20-gmac
+              - allwinner,sun8i-a83t-emac
+              - allwinner,sun8i-h3-emac
+              - allwinner,sun8i-r40-emac
+              - allwinner,sun8i-v3s-emac
+              - allwinner,sun50i-a64-emac
               - snps,dwxgmac
               - snps,dwxgmac-2.10
               - st,spear600-gmac
@@ -308,6 +318,11 @@ allOf:
           contains:
             enum:
               - allwinner,sun7i-a20-gmac
+              - allwinner,sun8i-a83t-emac
+              - allwinner,sun8i-h3-emac
+              - allwinner,sun8i-r40-emac
+              - allwinner,sun8i-v3s-emac
+              - allwinner,sun50i-a64-emac
               - snps,dwmac-4.00
               - snps,dwmac-4.10a
               - snps,dwxgmac
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
