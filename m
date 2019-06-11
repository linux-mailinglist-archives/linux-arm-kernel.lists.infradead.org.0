Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F373C6DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 11:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9GpPIraNSFpGeM4OmT7NtgPase2dfQw/CuX7rPuGb8=; b=cqslsyriyfN5rl
	4LHi63jKtL5QzQ4riEig6ATrsT6+GjBp34K+P/vDSNa5OJj1QrMfFmKJunYcZlUuAAmR/yhnQ6hes
	mMbb+7QV0qV1JmLlRMXc0XgHkOX6sz+6izDkR7nN5Ael/yKNaroPpe8IRdDQZDv4RFLFYllmE0Es6
	+i/O4ZV41dP+dhbl7HPGXOP02yoRp5afjTWNWtYyqjushRCzTb7+7fjp+LcRCV0ef5x+QSSPrW8Qj
	JtirgxINNmjOv6EFDiBAZdGU0uH2NNe1dnpxsDb/oZXt3hQHFNpsrlv93S9lSApwMazEA6OjJoFuN
	HXoyJJVNHSapT/iWxblw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hach4-0007RI-6p; Tue, 11 Jun 2019 09:03:50 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacgZ-0007Fh-BM
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 09:03:22 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id BF83DC000A;
 Tue, 11 Jun 2019 09:03:14 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Wolfram Sang <wsa@the-dreams.de>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Gregory Clement <gregory.clement@bootlin.com>
Subject: [PATCH v3 2/2] dt-bindings: i2c: mv64xxx: Add YAML schemas
Date: Tue, 11 Jun 2019 11:03:09 +0200
Message-Id: <20190611090309.7930-2-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190611090309.7930-1-maxime.ripard@bootlin.com>
References: <20190611090309.7930-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_020319_771768_66BF16AA 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch the DT binding to a YAML schema to enable the DT validation.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v2:
  - Remove the copy/pasted example and use the one we had before

Changes from v1:
  - Fix the maintainers
---
 .../devicetree/bindings/i2c/i2c-mv64xxx.txt   |  64 ---------
 .../bindings/i2c/marvell,mv64xxx-i2c.yaml     | 124 ++++++++++++++++++
 2 files changed, 124 insertions(+), 64 deletions(-)
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
index 000000000000..9a5654ef5670
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
@@ -0,0 +1,124 @@
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
+    i2c@11000 {
+        compatible = "marvell,mv64xxx-i2c";
+        reg = <0x11000 0x20>;
+        interrupts = <29>;
+        clock-frequency = <100000>;
+    };
+
+  - |
+    i2c@11000 {
+        compatible = "marvell,mv78230-i2c", "marvell,mv64xxx-i2c";
+        reg = <0x11000 0x100>;
+        interrupts = <29>;
+        clock-frequency = <100000>;
+    };
+
+  - |
+    i2c@701000 {
+        compatible = "marvell,mv78230-i2c";
+        reg = <0x701000 0x20>;
+        interrupts = <29>;
+        clock-frequency = <100000>;
+        clock-names = "core", "reg";
+        clocks = <&core_clock>, <&reg_clock>;
+    };
+
+...
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
