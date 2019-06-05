Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E4335CDE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:30:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGgidZ7XJqsk1Jf2LmihAl3zIMj+Pm0yAuqzOxgObhI=; b=ZJ7X8T14oJmAJx
	SO3u9/W2L1JIojfUj6Ye8dC7O+N42WMgput1Ect7FLY1J8qKdEovxnCTqIPYKJxFN4lhOGBZU6GYW
	TE1bTHxzFoZq/76CvX58MF9YEyoxhbeDnSgr5PHs0aba9hHuLTZRUDD+d3M47Tc0ragkBbvbtXbSl
	l8OqonVxyPWDa6csGSoLcubHf9Tj6yOs7DCcGLsiG7M+SIJGhtHa/8JIIrSTFV5g0wQ8X4q70s3LE
	dGhxvUT4mttsRxX08IuZSpAn3oibplkMWxciSAX8T8V1zrQ9JOOUMtdcDFXBcMaBFEHRGws68vqBb
	Th/zfD+baha84bsLfIew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYV3Y-0007Uh-64; Wed, 05 Jun 2019 12:30:16 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYV3H-00076M-Ln
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 12:30:02 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id CE6B360019;
 Wed,  5 Jun 2019 12:29:45 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Wolfram Sang <wsa@the-dreams.de>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Gregory Clement <gregory.clement@bootlin.com>
Subject: [PATCH v2 2/2] dt-bindings: i2c: mv64xxx: Add YAML schemas
Date: Wed,  5 Jun 2019 14:29:36 +0200
Message-Id: <20190605122936.11972-2-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190605122936.11972-1-maxime.ripard@bootlin.com>
References: <20190605122936.11972-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_053000_175029_329E9A0D 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch the DT binding to a YAML schema to enable the DT validation.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v1:
  - Fix the maintainers
---
 .../devicetree/bindings/i2c/i2c-mv64xxx.txt   |  64 -----------
 .../bindings/i2c/marvell,mv64xxx-i2c.yaml     | 105 ++++++++++++++++++
 2 files changed, 105 insertions(+), 64 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-mv64xxx.txt
 create mode 100644 Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml

diff --git a/Documentation/devicetree/bindings/i2c/i2c-mv64xxx.txt b/Documentation/devicetree/bindings/i2c/i2c-mv64xxx.txt
deleted file mode 100644
index 0ffe65a316ae..000000000000
--- a/Documentation/devicetree/bindings/i2c/i2c-mv64xxx.txt
+++ /dev/null
@@ -1,64 +0,0 @@
-
-* Marvell MV64XXX I2C controller
-
-Required properties :
-
- - reg             : Offset and length of the register set for the device
- - compatible      : Should be either:
-                     - "allwinner,sun4i-a10-i2c"
-                     - "allwinner,sun6i-a31-i2c"
-                     - "marvell,mv64xxx-i2c"
-                     - "marvell,mv78230-i2c"
-                     - "marvell,mv78230-a0-i2c"
-                       * Note: Only use "marvell,mv78230-a0-i2c" for a
-                         very rare, initial version of the SoC which
-                         had broken offload support.  Linux
-                         auto-detects this and sets it appropriately.
- - interrupts      : The interrupt number
-
-Optional properties :
-
- - clock-frequency : Desired I2C bus clock frequency in Hz. If not set the
-default frequency is 100kHz
-
- - resets          : phandle to the parent reset controller. Mandatory
-                     whenever you're using the "allwinner,sun6i-a31-i2c"
-                     compatible.
-
- - clocks:	   : pointers to the reference clocks for this device, the
-		     first one is the one used for the clock on the i2c bus,
-		     the second one is the clock used to acces the registers
-		     of the controller
-
- - clock-names	   : names of used clocks, mandatory if the second clock is
-		     used, the name must be "core", and "reg" (the latter is
-		     only for Armada 7K/8K).
-
-Examples:
-
-	i2c@11000 {
-		compatible = "marvell,mv64xxx-i2c";
-		reg = <0x11000 0x20>;
-		interrupts = <29>;
-		clock-frequency = <100000>;
-	};
-
-For the Armada XP:
-
-	i2c@11000 {
-		compatible = "marvell,mv78230-i2c", "marvell,mv64xxx-i2c";
-		reg = <0x11000 0x100>;
-		interrupts = <29>;
-		clock-frequency = <100000>;
-	};
-
-For the Armada 7040:
-
-	i2c@701000 {
-		compatible = "marvell,mv78230-i2c";
-		reg = <0x701000 0x20>;
-		interrupts = <29>;
-		clock-frequency = <100000>;
-		clock-names = "core", "reg";
-		clocks = <&core_clock>, <&reg_clock>;
-	};
diff --git a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
new file mode 100644
index 000000000000..a1c631eaeafd
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
@@ -0,0 +1,105 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/marvell,mv64xxx-i2c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell MV64XXX I2C Controller Device Tree Bindings
+
+maintainers:
+  - Gregory CLEMENT <gregory.clement@bootlin.com>
+
+properties:
+  compatible:
+    oneOf:
+      - const: allwinner,sun4i-a10-i2c
+      - items:
+          - const: allwinner,sun7i-a20-i2c
+          - const: allwinner,sun4i-a10-i2c
+      - const: allwinner,sun6i-a31-i2c
+      - items:
+          - const: allwinner,sun8i-a23-i2c
+          - const: allwinner,sun6i-a31-i2c
+      - items:
+          - const: allwinner,sun8i-a83t-i2c
+          - const: allwinner,sun6i-a31-i2c
+      - items:
+          - const: allwinner,sun50i-a64-i2c
+          - const: allwinner,sun6i-a31-i2c
+
+      - const: marvell,mv64xxx-i2c
+      - const: marvell,mv78230-i2c
+      - const: marvell,mv78230-a0-i2c
+
+    description:
+      Only use "marvell,mv78230-a0-i2c" for a very rare, initial
+      version of the SoC which had broken offload support. Linux
+      auto-detects this and sets it appropriately.
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 2
+    items:
+      - description: Reference clock for the I2C bus
+      - description: Bus clock (Only for Armada 7K/8K)
+
+  clock-names:
+    minItems: 1
+    maxItems: 2
+    items:
+      - const: core
+      - const: reg
+    description:
+      Mandatory if two clocks are used (only for Armada 7k and 8k).
+
+  resets:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - allwinner,sun4i-a10-i2c
+              - allwinner,sun6i-a31-i2c
+
+    then:
+      required:
+        - clocks
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun6i-a31-i2c
+
+    then:
+      required:
+        - resets
+
+# FIXME: We should set it, but it would report all the generic
+# properties as additional properties.
+# additionalProperties: false
+
+examples:
+  - |
+    timer {
+      compatible = "allwinner,sun4i-a10-timer";
+      reg = <0x01c20c00 0x400>;
+      interrupts = <22>;
+      clocks = <&osc>;
+    };
+...
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
