Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBF12B1C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 12:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PD612xi0uAzvqmJW+zZh0ePlj0Q3XkgpuroxMoo1o/I=; b=RFkWvh6cpzPLnw
	4+0Ka8x9u8nkYYurN9ho2xuhYUnU7w9eiW2kaaiBqvC5JaaaBOUB4UggHsz4eZ/6buH40z5ICClUP
	8Xa92YsnVG800263aIpVTNq/voocyOq1neeox2QkxfQ9B9O9NUFtWhXZeyV8YP6ZPV/Q+PxKcLmrU
	gxDItW8nY75HrgMvegb0/kYen/xMkxqxl2yZlCDa0eW9m7wWBqbLTqiOlcuFQz9qemXkacxv2xSJ7
	rDD0r7Topw2roPkO+RyylbidvQd2uBCTbMX3lYgM0zmrjlblPmXLyQLn9f4OsZ7XOH3xQc9qqsydk
	VO2yt5whA63wgn2HYVaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVCTV-0006t5-CD; Mon, 27 May 2019 10:03:25 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCSh-0005w6-Eu
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 10:03:11 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 3D5B24000C;
 Mon, 27 May 2019 10:02:22 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mike Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@codeaurora.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH] dt-bindings: clk: Convert Allwinner CCU to a schema
Date: Mon, 27 May 2019 12:02:19 +0200
Message-Id: <20190527100219.11264-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_030236_316653_5F12DF41 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner SoCs have a clocks controller supported in Linux, with a
matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../clock/allwinner,sun4i-a10-ccu.yaml        | 141 ++++++++++++++++++
 .../devicetree/bindings/clock/sunxi-ccu.txt   |  62 --------
 2 files changed, 141 insertions(+), 62 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/sunxi-ccu.txt

diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml
new file mode 100644
index 000000000000..c935405458fe
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml
@@ -0,0 +1,141 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/allwinner,sun4i-a10-ccu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner Clock Control Unit Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-ccu
+      - allwinner,sun5i-a10s-ccu
+      - allwinner,sun5i-a13-ccu
+      - allwinner,sun6i-a31-ccu
+      - allwinner,sun7i-a20-ccu
+      - allwinner,sun8i-a23-ccu
+      - allwinner,sun8i-a33-ccu
+      - allwinner,sun8i-a83t-ccu
+      - allwinner,sun8i-a83t-r-ccu
+      - allwinner,sun8i-h3-ccu
+      - allwinner,sun8i-h3-r-ccu
+      - allwinner,sun8i-r40-ccu
+      - allwinner,sun8i-v3s-ccu
+      - allwinner,sun9i-a80-ccu
+      - allwinner,sun50i-a64-ccu
+      - allwinner,sun50i-a64-r-ccu
+      - allwinner,sun50i-h5-ccu
+      - allwinner,sun50i-h6-ccu
+      - allwinner,sun50i-h6-r-ccu
+      - allwinner,suniv-f1c100s-ccu
+      - nextthing,gr8-ccu
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 4
+    items:
+      - description: High Frequency Oscillator (usually at 24MHz)
+      - description: Low Frequency Oscillator (usually at 32kHz)
+      - description: Internal Oscillator
+      - description: Peripherals PLL
+
+  clock-names:
+    minItems: 2
+    maxItems: 4
+    items:
+      - const: hosc
+      - const: losc
+      - const: iosc
+      - const: pll-periph
+
+required:
+  - "#clock-cells"
+  - "#reset-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+if:
+  properties:
+    compatible:
+      enum:
+        - allwinner,sun8i-a83t-r-ccu
+        - allwinner,sun8i-h3-r-ccu
+        - allwinner,sun50i-a64-r-ccu
+        - allwinner,sun50i-h6-r-ccu
+
+then:
+  properties:
+    clocks:
+      minItems: 4
+      maxItems: 4
+
+    clock-names:
+      minItems: 4
+      maxItems: 4
+
+else:
+  if:
+    properties:
+      compatible:
+        const: allwinner,sun50i-h6-ccu
+
+  then:
+    properties:
+      clocks:
+        minItems: 3
+        maxItems: 3
+
+      clock-names:
+        minItems: 3
+        maxItems: 3
+
+  else:
+    properties:
+      clocks:
+        minItems: 2
+        maxItems: 2
+
+      clock-names:
+        minItems: 2
+        maxItems: 2
+
+additionalProperties: false
+
+examples:
+  - |
+    ccu: clock@1c20000 {
+        compatible = "allwinner,sun8i-h3-ccu";
+        reg = <0x01c20000 0x400>;
+        clocks = <&osc24M>, <&osc32k>;
+        clock-names = "hosc", "losc";
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+    };
+
+  - |
+    r_ccu: clock@1f01400 {
+        compatible = "allwinner,sun50i-a64-r-ccu";
+        reg = <0x01f01400 0x100>;
+        clocks = <&osc24M>, <&osc32k>, <&iosc>, <&ccu 11>;
+        clock-names = "hosc", "losc", "iosc", "pll-periph";
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/sunxi-ccu.txt b/Documentation/devicetree/bindings/clock/sunxi-ccu.txt
deleted file mode 100644
index e3bd88ae456b..000000000000
--- a/Documentation/devicetree/bindings/clock/sunxi-ccu.txt
+++ /dev/null
@@ -1,62 +0,0 @@
-Allwinner Clock Control Unit Binding
-------------------------------------
-
-Required properties :
-- compatible: must contain one of the following compatibles:
-		- "allwinner,sun4i-a10-ccu"
-		- "allwinner,sun5i-a10s-ccu"
-		- "allwinner,sun5i-a13-ccu"
-		- "allwinner,sun6i-a31-ccu"
-		- "allwinner,sun7i-a20-ccu"
-		- "allwinner,sun8i-a23-ccu"
-		- "allwinner,sun8i-a33-ccu"
-		- "allwinner,sun8i-a83t-ccu"
-		- "allwinner,sun8i-a83t-r-ccu"
-		- "allwinner,sun8i-h3-ccu"
-		- "allwinner,sun8i-h3-r-ccu"
-+		- "allwinner,sun8i-r40-ccu"
-		- "allwinner,sun8i-v3s-ccu"
-		- "allwinner,sun9i-a80-ccu"
-		- "allwinner,sun50i-a64-ccu"
-		- "allwinner,sun50i-a64-r-ccu"
-		- "allwinner,sun50i-h5-ccu"
-		- "allwinner,sun50i-h6-ccu"
-		- "allwinner,sun50i-h6-r-ccu"
-		- "allwinner,suniv-f1c100s-ccu"
-		- "nextthing,gr8-ccu"
-
-- reg: Must contain the registers base address and length
-- clocks: phandle to the oscillators feeding the CCU. Two are needed:
-  - "hosc": the high frequency oscillator (usually at 24MHz)
-  - "losc": the low frequency oscillator (usually at 32kHz)
-	    On the A83T, this is the internal 16MHz oscillator divided by 512
-- clock-names: Must contain the clock names described just above
-- #clock-cells : must contain 1
-- #reset-cells : must contain 1
-
-For the main CCU on H6, one more clock is needed:
-- "iosc": the SoC's internal frequency oscillator
-
-For the PRCM CCUs on A83T/H3/A64/H6, two more clocks are needed:
-- "pll-periph": the SoC's peripheral PLL from the main CCU
-- "iosc": the SoC's internal frequency oscillator
-
-Example for generic CCU:
-ccu: clock@1c20000 {
-	compatible = "allwinner,sun8i-h3-ccu";
-	reg = <0x01c20000 0x400>;
-	clocks = <&osc24M>, <&osc32k>;
-	clock-names = "hosc", "losc";
-	#clock-cells = <1>;
-	#reset-cells = <1>;
-};
-
-Example for PRCM CCU:
-r_ccu: clock@1f01400 {
-	compatible = "allwinner,sun50i-a64-r-ccu";
-	reg = <0x01f01400 0x100>;
-	clocks = <&osc24M>, <&osc32k>, <&iosc>, <&ccu CLK_PLL_PERIPH0>;
-	clock-names = "hosc", "losc", "iosc", "pll-periph";
-	#clock-cells = <1>;
-	#reset-cells = <1>;
-};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
