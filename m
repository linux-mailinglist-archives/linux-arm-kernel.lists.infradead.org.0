Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A975518632
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 09:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UTq4dkdAwvOIISKQPGS+wINkaU2mo42ZrnTnFyvMMYk=; b=rI8M9rHA4hR1TG
	Yd8EXGmDkBd4DjUXNgV6Fqr/wNSDIG5Rb0pM0HJeFlSSaOn+k6D3/z4VVx22fN35Zia0uG7pG1EX0
	jrVZNq5udxm31hzBsCyBFdZGJt0c8DAkiABaMz/tjmbPCalRilz6U0HoHNQsowWFV17lcj3SEpcvm
	ux4XIENNcAMBa58Dw6103xO/orQIBfrI1HgqAdVJ0vbz0RXg9Fad5yTwd2/LuUYUKz81kVto/lj8n
	PIgdcxkV8PQ5lsSzqwcTaxQliHAdh6WJGNRklbsc0y41OaW+o+uRhR0OCiml4Gg6IXvKSYhq92ZUB
	PjDu315AyrDBdzHC0G0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOdSh-0000G9-Lm; Thu, 09 May 2019 07:27:28 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOdRn-000810-A5
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 07:26:35 +0000
X-Originating-IP: 90.88.28.253
Received: from localhost (aaubervilliers-681-1-86-253.w90-88.abo.wanadoo.fr
 [90.88.28.253]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id CBA7E6000D;
 Thu,  9 May 2019 07:26:13 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Mark Brown <broonie@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH v2 2/4] dt-bindings: spi: sun4i: Add YAML schemas
Date: Thu,  9 May 2019 09:26:06 +0200
Message-Id: <e15f4cef7bd4c0db99fdbf3bcfea0d28e5c3f12a.1557386749.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <1acc9ff7f59064b74cc319b7812479bcd842a897.1557386749.git-series.maxime.ripard@bootlin.com>
References: <1acc9ff7f59064b74cc319b7812479bcd842a897.1557386749.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_002631_722504_5D75518D 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
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

Changes from v1:
  - Fix the slave device regex
---
 Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml | 86 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 Documentation/devicetree/bindings/spi/spi-sun4i.txt                | 23 +-------------------
 2 files changed, 86 insertions(+), 23 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-sun4i.txt

diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
new file mode 100644
index 000000000000..c374fd4923a6
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/allwinner,sun4i-a10-spi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 SPI Controller Device Tree Bindings
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
+    const: allwinner,sun4i-a10-spi
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
+  "^.*@[0-9a-f]+":
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
+    spi1: spi@1c06000 {
+        compatible = "allwinner,sun4i-a10-spi";
+        reg = <0x01c06000 0x1000>;
+        interrupts = <11>;
+        clocks = <&ahb_gates 21>, <&spi1_clk>;
+        clock-names = "ahb", "mod";
+        #address-cells = <1>;
+        #size-cells = <0>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/spi/spi-sun4i.txt b/Documentation/devicetree/bindings/spi/spi-sun4i.txt
deleted file mode 100644
index c75d604a8290..000000000000
--- a/Documentation/devicetree/bindings/spi/spi-sun4i.txt
+++ /dev/null
@@ -1,23 +0,0 @@
-Allwinner A10 SPI controller
-
-Required properties:
-- compatible: Should be "allwinner,sun4-a10-spi".
-- reg: Should contain register location and length.
-- interrupts: Should contain interrupt.
-- clocks: phandle to the clocks feeding the SPI controller. Two are
-          needed:
-  - "ahb": the gated AHB parent clock
-  - "mod": the parent module clock
-- clock-names: Must contain the clock names described just above
-
-Example:
-
-spi1: spi@1c06000 {
-	compatible = "allwinner,sun4i-a10-spi";
-	reg = <0x01c06000 0x1000>;
-	interrupts = <11>;
-	clocks = <&ahb_gates 21>, <&spi1_clk>;
-	clock-names = "ahb", "mod";
-	#address-cells = <1>;
-	#size-cells = <0>;
-};
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
