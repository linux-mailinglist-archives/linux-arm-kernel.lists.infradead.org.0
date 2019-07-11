Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D6D656C6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 14:23:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=av1IOVd7rogxW9lm0GOgMGDIVaPe29ElG+SAOzhW0N8=; b=OhhV0gYh/Eq3L0
	h8ndJexkmd2Amjgp32gqu5sSD+0HkI3+XBk0jYjGAe82Ds9/cfEw1r6a9XzljSE4kUhuKe5gfSirq
	5qMpfEEg9tc7zx3uzMJkbOrODIf2+74OlHSv3s4IMy3hPK3X14LllwPMimuHYYshOMk0YXS9K9O/V
	lJ2I3ACF557U1WAIfNUBtzJXu4evHu17CWNyixNSEwSMiZmY6tsbxo0EdtQOmgrv/rYqoVpwXV3zQ
	5L8Ozm2HdDQ28VPeCOvf8ojNi/3v355kkU+6Uhy4Qk8cCW9YpD9553e4TABp1c+2MgR5dDen0p2hD
	4O/Z8LS20Sdx40bsIJTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlY6h-0003AP-Es; Thu, 11 Jul 2019 12:23:27 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlY6U-00038Y-Cy
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 12:23:16 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 37298E000C;
 Thu, 11 Jul 2019 12:23:09 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S . Miller" <davem@davemloft.net>
Subject: [PATCH] dt-bindings: crypto: Convert Allwinner A10 Security Engine to
 a schema
Date: Thu, 11 Jul 2019 14:23:01 +0200
Message-Id: <20190711122301.8193-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_052314_751345_F8259648 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The older Allwinner SoCs have a crypto engine that is supported in Linux,
with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../crypto/allwinner,sun4i-a10-crypto.yaml    | 79 +++++++++++++++++++
 .../devicetree/bindings/crypto/sun4i-ss.txt   | 23 ------
 2 files changed, 79 insertions(+), 23 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml
 delete mode 100644 Documentation/devicetree/bindings/crypto/sun4i-ss.txt

diff --git a/Documentation/devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml b/Documentation/devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml
new file mode 100644
index 000000000000..80b3e7350a73
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/allwinner,sun4i-a10-crypto.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Security System Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  compatible:
+    oneOf:
+      - const: allwinner,sun4i-a10-crypto
+      - items:
+        - const: allwinner,sun5i-a13-crypto
+        - const: allwinner,sun4i-a10-crypto
+      - items:
+        - const: allwinner,sun6i-a31-crypto
+        - const: allwinner,sun4i-a10-crypto
+      - items:
+        - const: allwinner,sun7i-a20-crypto
+        - const: allwinner,sun4i-a10-crypto
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
+  reset-names:
+    const: ahb
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: allwinner,sun6i-a31-crypto
+
+then:
+  required:
+    - resets
+    - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    crypto: crypto-engine@1c15000 {
+      compatible = "allwinner,sun4i-a10-crypto";
+      reg = <0x01c15000 0x1000>;
+      interrupts = <86>;
+      clocks = <&ahb_gates 5>, <&ss_clk>;
+      clock-names = "ahb", "mod";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/crypto/sun4i-ss.txt b/Documentation/devicetree/bindings/crypto/sun4i-ss.txt
deleted file mode 100644
index f2dc3d9bca92..000000000000
--- a/Documentation/devicetree/bindings/crypto/sun4i-ss.txt
+++ /dev/null
@@ -1,23 +0,0 @@
-* Allwinner Security System found on A20 SoC
-
-Required properties:
-- compatible : Should be "allwinner,sun4i-a10-crypto".
-- reg: Should contain the Security System register location and length.
-- interrupts: Should contain the IRQ line for the Security System.
-- clocks : List of clock specifiers, corresponding to ahb and ss.
-- clock-names : Name of the functional clock, should be
-	* "ahb" : AHB gating clock
-	* "mod" : SS controller clock
-
-Optional properties:
- - resets : phandle + reset specifier pair
- - reset-names : must contain "ahb"
-
-Example:
-	crypto: crypto-engine@1c15000 {
-		compatible = "allwinner,sun4i-a10-crypto";
-		reg = <0x01c15000 0x1000>;
-		interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&ahb_gates 5>, <&ss_clk>;
-		clock-names = "ahb", "mod";
-	};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
