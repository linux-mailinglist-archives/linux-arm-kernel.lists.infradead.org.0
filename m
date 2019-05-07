Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9657116B86
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 21:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uH98yFsastR/KHgNaPGmShhHZGdvumUq6sYmIPg46xM=; b=tI+1EiGr11fGGo
	d+6cvyk3yPzLE9wpTP1mHXppsqBs6UYa2tfhgTvYAjFksh6SZEog38lNvHKd5DgEnhzNshOTz2DbE
	9VB2FfX4XX1XTZAPact2mjMg0YGXR//wH8XjVfHn7L3ZnyX3e9V+NC+3Y+qbEYvfxwVIoOJeLprLZ
	beNHMR7Oux7JpulWzUNgjpO7QQ7eYaHWr/VpemznYiC5Kkc8fRHNysElANNbs3FQJ+jj394OLd9JW
	o0hgU491o0pDWAnd8Ckg/yODD6MOMB3pK+CrYqF6Hrp7Gaea4q83q38KM2XoWMy61OUNviHpE5A06
	foVBBgPGOFv+RSL1Os2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO5vn-0006Aq-B9; Tue, 07 May 2019 19:39:15 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO5ve-00069h-Md
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 19:39:08 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id AF4A2E0008;
 Tue,  7 May 2019 19:38:53 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH] dt-bindings: bus: Convert Allwinner RSB to a schema
Date: Tue,  7 May 2019 21:38:48 +0200
Message-Id: <20190507193848.22205-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_123907_036685_8708CEEC 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The newer Allwinner SoCs feature a bus designed for the PMIC, similar to
I2C called RSB. Let's convert the device tree bindings for that bus over to
a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../bindings/bus/allwinner,sun8i-a23-rsb.yaml | 79 +++++++++++++++++++
 .../devicetree/bindings/bus/sunxi-rsb.txt     | 47 -----------
 2 files changed, 79 insertions(+), 47 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml
 delete mode 100644 Documentation/devicetree/bindings/bus/sunxi-rsb.txt

diff --git a/Documentation/devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml b/Documentation/devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml
new file mode 100644
index 000000000000..fc2f63860cc8
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/allwinner,sun8i-a23-rsb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A23 RSB Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  compatible:
+    oneOf:
+      - const: allwinner,sun8i-a23-rsb
+      - items:
+        - const: allwinner,sun8i-a83t-rsb
+        - const: allwinner,sun8i-a23-rsb
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
+  clock-frequency:
+    minimum: 1
+    maximum: 20000000
+
+patternProperties:
+  "^.*@[0-9a-fA-F]+$":
+    properties:
+      reg:
+        maxItems: 1
+
+    required:
+      - reg
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - resets
+
+examples:
+  - |
+    rsb@1f03400 {
+        compatible = "allwinner,sun8i-a23-rsb";
+        reg = <0x01f03400 0x400>;
+        interrupts = <0 39 4>;
+        clocks = <&apb0_gates 3>;
+        clock-frequency = <3000000>;
+        resets = <&apb0_rst 3>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pmic@3e3 {
+            compatible = "...";
+            reg = <0x3e3>;
+
+            /* ... */
+        };
+    };
+
+additionalProperties: false
diff --git a/Documentation/devicetree/bindings/bus/sunxi-rsb.txt b/Documentation/devicetree/bindings/bus/sunxi-rsb.txt
deleted file mode 100644
index eb3ed628c6f1..000000000000
--- a/Documentation/devicetree/bindings/bus/sunxi-rsb.txt
+++ /dev/null
@@ -1,47 +0,0 @@
-Allwinner Reduced Serial Bus (RSB) controller
-
-The RSB controller found on later Allwinner SoCs is an SMBus like 2 wire
-serial bus with 1 master and up to 15 slaves. It is represented by a node
-for the controller itself, and child nodes representing the slave devices.
-
-Required properties :
-
- - reg             : Offset and length of the register set for the controller.
- - compatible      : Shall be "allwinner,sun8i-a23-rsb".
- - interrupts      : The interrupt line associated to the RSB controller.
- - clocks          : The gate clk associated to the RSB controller.
- - resets          : The reset line associated to the RSB controller.
- - #address-cells  : shall be 1
- - #size-cells     : shall be 0
-
-Optional properties :
-
- - clock-frequency : Desired RSB bus clock frequency in Hz. Maximum is 20MHz.
-		     If not set this defaults to 3MHz.
-
-Child nodes:
-
-An RSB controller node can contain zero or more child nodes representing
-slave devices on the bus.  Child 'reg' properties should contain the slave
-device's hardware address. The hardware address is hardwired in the device,
-which can normally be found in the datasheet.
-
-Example:
-
-	rsb@1f03400 {
-		compatible = "allwinner,sun8i-a23-rsb";
-		reg = <0x01f03400 0x400>;
-		interrupts = <0 39 4>;
-		clocks = <&apb0_gates 3>;
-		clock-frequency = <3000000>;
-		resets = <&apb0_rst 3>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		pmic@3e3 {
-			compatible = "...";
-			reg = <0x3e3>;
-
-			/* ... */
-		};
-	};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
