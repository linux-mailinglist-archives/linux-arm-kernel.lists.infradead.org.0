Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E719D5860E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:38:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4W/yQokjkAxQlWS6pqY5k36UpwfiBDzi6rzpPi6QWnk=; b=oKx2KsSXpxLxa7
	2Bj6PiVjphdEEosNaRe2jf6mGnM5F9xsUn34Juc4N93hmSnh/9jygRkbObIS9GH7gIeVwVGKBoG+O
	iOobsjp51gFjYid5FBmcICEhQN8BFIQVaUELxcAka7heKYCZUiuybepw5jUgkst4Uv/6t24UIPe/9
	koVc72zAKtuOL3llZEVRhGIHv9qddoF4PU3JOQv1B8c7IMc3JWmgRGy3IxZesQAdUO11YrMi0QNhE
	+NH/utZMLfwFnp++9pTJrjfi4OYHXqwOz0FC59ft3t+M9+Oz3ASgVw+MGba3Oyhqn3A4uq2WPuETk
	jghxAuLp2Oy4ORBJeQlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWU8-0002t6-Lw; Thu, 27 Jun 2019 15:38:52 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWNz-0006Rl-UF
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:32:34 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 32716240007;
 Thu, 27 Jun 2019 15:32:29 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH v4 09/13] dt-bindings: net: sun7i-gmac: Convert the binding to
 a schemas
Date: Thu, 27 Jun 2019 17:31:51 +0200
Message-Id: <e4c15d60dc5388a767f73fc794a42efd7242a941.1561649505.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.e80da8845680a45c2e07d5f17280fdba84555b8a.1561649505.git-series.maxime.ripard@bootlin.com>
References: <cover.e80da8845680a45c2e07d5f17280fdba84555b8a.1561649505.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_083232_387854_3BA41403 
X-CRM114-Status: GOOD (  14.26  )
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

Switch our Allwinner A20 GMAC controller binding to a YAML schema to enable
the DT validation. Since that controller is based on a Synopsys IP, let's
add the validation to that schemas with a bunch of conditionals.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.txt  | 27 ---------------------------
 Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml | 66 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 Documentation/devicetree/bindings/net/snps,dwmac.yaml               |  3 +++
 3 files changed, 69 insertions(+), 27 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.txt
 create mode 100644 Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml

diff --git a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.txt b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.txt
deleted file mode 100644
index 8b3f953656e3..000000000000
--- a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-* Allwinner GMAC ethernet controller
-
-This device is a platform glue layer for stmmac.
-Please see stmmac.txt for the other unchanged properties.
-
-Required properties:
- - compatible:  Should be "allwinner,sun7i-a20-gmac"
- - clocks: Should contain the GMAC main clock, and tx clock
-   The tx clock type should be "allwinner,sun7i-a20-gmac-clk"
- - clock-names: Should contain the clock names "stmmaceth",
-   and "allwinner_gmac_tx"
-
-Optional properties:
-- phy-supply: phandle to a regulator if the PHY needs one
-
-Examples:
-
-	gmac: ethernet@1c50000 {
-		compatible = "allwinner,sun7i-a20-gmac";
-		reg = <0x01c50000 0x10000>,
-		      <0x01c20164 0x4>;
-		interrupts = <0 85 1>;
-		interrupt-names = "macirq";
-		clocks = <&ahb_gates 49>, <&gmac_tx>;
-		clock-names = "stmmaceth", "allwinner_gmac_tx";
-		phy-mode = "mii";
-	};
diff --git a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
new file mode 100644
index 000000000000..38f6a2a73f46
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/allwinner,sun7i-a20-gmac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A20 GMAC Device Tree Bindings
+
+allOf:
+  - $ref: "snps,dwmac.yaml#"
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  compatible:
+    const: allwinner,sun7i-a20-gmac
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-names:
+    const: macirq
+
+  clocks:
+    items:
+      - description: GMAC main clock
+      - description: TX clock
+
+  clock-names:
+    items:
+      - const: stmmaceth
+      - const: allwinner_gmac_tx
+
+  phy-supply:
+    description:
+      PHY regulator
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - clocks
+  - clock-names
+  - phy-connection-type
+
+examples:
+  - |
+    gmac: ethernet@1c50000 {
+        compatible = "allwinner,sun7i-a20-gmac";
+        reg = <0x01c50000 0x10000>,
+              <0x01c20164 0x4>;
+        interrupts = <0 85 1>;
+        interrupt-names = "macirq";
+        clocks = <&ahb_gates 49>, <&gmac_tx>;
+        clock-names = "stmmaceth", "allwinner_gmac_tx";
+        phy-connection-type = "mii";
+    };
+
+# FIXME: We should set it, but it would report all the generic
+# properties as additional properties.
+# additionalProperties: false
+
+...
diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 30e2ff7a2dcb..fed623a81dcd 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -44,6 +44,7 @@ properties:
   compatible:
     contains:
       enum:
+        - allwinner,sun7i-a20-gmac
         - snps,dwmac
         - snps,dwmac-3.50a
         - snps,dwmac-3.610
@@ -265,6 +266,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - allwinner,sun7i-a20-gmac
               - snps,dwxgmac
               - snps,dwxgmac-2.10
               - st,spear600-gmac
@@ -305,6 +307,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - allwinner,sun7i-a20-gmac
               - snps,dwmac-4.00
               - snps,dwmac-4.10a
               - snps,dwxgmac
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
