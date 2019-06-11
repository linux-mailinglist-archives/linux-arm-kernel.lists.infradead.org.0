Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A713C6DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 11:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CIY5nxvbsTKA/+qY+eK75fUkblUh9V8/ffZK7lTHwFg=; b=dighxFS0t96TCK
	cgYwmwLQPCsaEt4Txa0LDT8+7/MvsEHMdA/IF69rQcWhwobNU9fm2svexhB9H9oLkwn+EQtUy6S0f
	3kJJWxAtZ0tjHJWFVu0zo9gbMo1HuzbtqOnxykj8cvdZXc41MxcUCbJjpWanLvP9UK4sApAa3eoyA
	nJ8zAuCziBbiNNtgNKESfIJ0yZiS0cfmpBsQnaJyBqFjPXoXFhwIc5x6VL1QvPgnI5r1ky1Ua0RCI
	07bWK1+r/atK2xQPdxl8HL1Qq+KfaNr2IHXKLBIE9Wb0153Te19rSiayoM8BRL4NsDqdvcQajRaVK
	pb4NE1N1hS2ffY0373eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hacgi-0007GL-Ma; Tue, 11 Jun 2019 09:03:28 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacgV-0007FC-Lo
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 09:03:17 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 5B0CDFF81B;
 Tue, 11 Jun 2019 09:03:11 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Wolfram Sang <wsa@the-dreams.de>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Gregory Clement <gregory.clement@bootlin.com>
Subject: [PATCH v3 1/2] dt-bindings: i2c: sun6i-p2wi: Add YAML schemas
Date: Tue, 11 Jun 2019 11:03:08 +0200
Message-Id: <20190611090309.7930-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_020316_026627_92FF6BAB 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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

Changes from v2
  - Remove redundant constraints on address-cells and size-cells
  - Fix the example
---
 .../i2c/allwinner,sun6i-a31-p2wi.yaml         | 65 +++++++++++++++++++
 .../bindings/i2c/i2c-sun6i-p2wi.txt           | 41 ------------
 2 files changed, 65 insertions(+), 41 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-sun6i-p2wi.txt

diff --git a/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml b/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml
new file mode 100644
index 000000000000..1804abe24f14
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/allwinner,sun6i-a31-p2wi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A31 P2WI (Push/Pull 2 Wires Interface) Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+
+properties:
+  compatible:
+    const: allwinner,sun6i-a31-p2wi
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
+    maximum: 6000000
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - resets
+
+# FIXME: We should set it, but it would report all the generic
+# properties as additional properties.
+# additionalProperties: false
+
+examples:
+  - |
+    i2c@1f03400 {
+        compatible = "allwinner,sun6i-a31-p2wi";
+        reg = <0x01f03400 0x400>;
+        interrupts = <0 39 4>;
+        clocks = <&apb0_gates 3>;
+        clock-frequency = <6000000>;
+        resets = <&apb0_rst 3>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        axp221: pmic@68 {
+            compatible = "x-powers,axp221";
+            reg = <0x68>;
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/i2c/i2c-sun6i-p2wi.txt b/Documentation/devicetree/bindings/i2c/i2c-sun6i-p2wi.txt
deleted file mode 100644
index 49df0053347a..000000000000
--- a/Documentation/devicetree/bindings/i2c/i2c-sun6i-p2wi.txt
+++ /dev/null
@@ -1,41 +0,0 @@
-
-* Allwinner P2WI (Push/Pull 2 Wire Interface) controller
-
-Required properties :
-
- - reg             : Offset and length of the register set for the device.
- - compatible      : Should one of the following:
-                     - "allwinner,sun6i-a31-p2wi"
- - interrupts      : The interrupt line connected to the P2WI peripheral.
- - clocks          : The gate clk connected to the P2WI peripheral.
- - resets          : The reset line connected to the P2WI peripheral.
-
-Optional properties :
-
- - clock-frequency : Desired P2WI bus clock frequency in Hz. If not set the
-default frequency is 100kHz
-
-A P2WI may contain one child node encoding a P2WI slave device.
-
-Slave device properties:
-  Required properties:
-   - reg           : the I2C slave address used during the initialization
-                     process to switch from I2C to P2WI mode
-
-Example:
-
-	p2wi@1f03400 {
-		compatible = "allwinner,sun6i-a31-p2wi";
-		reg = <0x01f03400 0x400>;
-		interrupts = <0 39 4>;
-		clocks = <&apb0_gates 3>;
-		clock-frequency = <6000000>;
-		resets = <&apb0_rst 3>;
-
-		axp221: pmic@68 {
-			compatible = "x-powers,axp221";
-			reg = <0x68>;
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
