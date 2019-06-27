Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E05F585FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIAFLJMtF6S6hepYG6lOzUuUuHdk6569IzSajr7npfM=; b=F187q9zLCUaZdN
	VmYQpwRCyFU3d+y2dakHNhEBuMVFy8AG6PgueqqkF7WDFaGvL3LF5ODl/RMxH/lMriVCIJ61A+eIm
	pCHDhtgDjltktmImPWgiCfQedb+XI3QDuh1Uz8/3drP+ndUV7kGVVBEIoSDChXRVX1/G/aafGknou
	rQVw3OymRabGb1AhQE8MV0uGts2IFQKvzGNHmiWYPpzmQ+MyVGDdEIuswA7XMFAmas8At4xhcOfJE
	41znSwtugPTxOz9rj/1a4RDvkAoj3PtQnfJHfLwuQ7SZ+M2LggXQ1S9Qx0GCclh/5/Ti9JVwhmOhJ
	g3Vzen/PPWCWlB+vdZBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWRw-0001Rp-UH; Thu, 27 Jun 2019 15:36:37 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWNq-0006M7-PI
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:32:26 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 3603324000F;
 Thu, 27 Jun 2019 15:32:20 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH v4 07/13] dt-bindings: net: sun4i-mdio: Convert the binding to
 a schemas
Date: Thu, 27 Jun 2019 17:31:49 +0200
Message-Id: <ad9a748f0876a63142803c80287148589ab37677.1561649505.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.e80da8845680a45c2e07d5f17280fdba84555b8a.1561649505.git-series.maxime.ripard@bootlin.com>
References: <cover.e80da8845680a45c2e07d5f17280fdba84555b8a.1561649505.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_083223_188691_1A3DE9E1 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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

Switch our Allwinner A10 MDIO controller binding to a YAML schema to enable
the DT validation.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 Documentation/devicetree/bindings/net/allwinner,sun4i-a10-mdio.yaml | 70 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 Documentation/devicetree/bindings/net/allwinner,sun4i-mdio.txt      | 27 ---------------------------
 2 files changed, 70 insertions(+), 27 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/allwinner,sun4i-a10-mdio.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/allwinner,sun4i-mdio.txt

diff --git a/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-mdio.yaml b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-mdio.yaml
new file mode 100644
index 000000000000..df24d9d969f7
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-mdio.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/allwinner,sun4i-a10-mdio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 MDIO Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+allOf:
+  - $ref: "mdio.yaml#"
+
+# Select every compatible, including the deprecated ones. This way, we
+# will be able to report a warning when we have that compatible, since
+# we will validate the node thanks to the select, but won't report it
+# as a valid value in the compatible property description
+select:
+  properties:
+    compatible:
+      enum:
+        - allwinner,sun4i-a10-mdio
+
+        # Deprecated
+        - allwinner,sun4i-mdio
+
+  required:
+    - compatible
+
+properties:
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun4i-a10-mdio
+
+  reg:
+    maxItems: 1
+
+  phy-supply:
+    description: PHY regulator
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    mdio@1c0b080 {
+        compatible = "allwinner,sun4i-a10-mdio";
+        reg = <0x01c0b080 0x14>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        phy-supply = <&reg_emac_3v3>;
+
+        phy0: ethernet-phy@0 {
+            reg = <0>;
+        };
+    };
+
+# FIXME: We should set it, but it would report all the generic
+# properties as additional properties.
+# additionalProperties: false
+
+...
diff --git a/Documentation/devicetree/bindings/net/allwinner,sun4i-mdio.txt b/Documentation/devicetree/bindings/net/allwinner,sun4i-mdio.txt
deleted file mode 100644
index ab5b8613b0ef..000000000000
--- a/Documentation/devicetree/bindings/net/allwinner,sun4i-mdio.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-* Allwinner A10 MDIO Ethernet Controller interface
-
-Required properties:
-- compatible: should be "allwinner,sun4i-a10-mdio"
-              (Deprecated: "allwinner,sun4i-mdio").
-- reg: address and length of the register set for the device.
-
-Optional properties:
-- phy-supply: phandle to a regulator if the PHY needs one
-
-Example at the SoC level:
-mdio@1c0b080 {
-	compatible = "allwinner,sun4i-a10-mdio";
-	reg = <0x01c0b080 0x14>;
-	#address-cells = <1>;
-	#size-cells = <0>;
-};
-
-And at the board level:
-
-mdio@1c0b080 {
-	phy-supply = <&reg_emac_3v3>;
-
-	phy0: ethernet-phy@0 {
-		reg = <0>;
-	};
-};
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
