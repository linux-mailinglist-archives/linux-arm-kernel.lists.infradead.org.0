Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C4135CDB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:30:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rFJIBmbgERaxmTaNf/V5iZjgAxb2AEgHZZC2oLC5UJA=; b=X6ioSNNuYb2UDQ
	xhmEzpy+K87ZlecPXXVzblgPza3MSzVuJhlDXvy+K9NLQEgwBbHs+FxlSNGk3KZXiFa67LmoO3W1q
	ZJQhcbPMJOxYAUs87jqOwQSSjRgVaxQFwAuiv165mG/1rBfVEDacOcLrbtCcaaajIKpgse3758EBi
	z3LlEbwEG3SCNODgusqauGd4NPUJ9HyTsoFU4pdms14n4P8eqc1E86gjfc9a83CsUVA/uNTwts699
	eAb0mPR3PnV04eZblXSbQ5C/er3tmGX9vkupiTxsSi4Crq/fMM+MVJr3dlr6pFITnVAArlzg6YlOa
	FJmJGsJwtfjL1SM9qV8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYV3H-000768-Gt; Wed, 05 Jun 2019 12:29:59 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYV38-00075l-VG
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 12:29:53 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 802BEE0006;
 Wed,  5 Jun 2019 12:29:39 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Wolfram Sang <wsa@the-dreams.de>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Gregory Clement <gregory.clement@bootlin.com>
Subject: [PATCH v2 1/2] dt-bindings: i2c: sun6i-p2wi: Add YAML schemas
Date: Wed,  5 Jun 2019 14:29:35 +0200
Message-Id: <20190605122936.11972-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_052951_322024_58E11BA8 
X-CRM114-Status: GOOD (  14.46  )
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
 .../i2c/allwinner,sun6i-a31-p2wi.yaml         | 71 +++++++++++++++++++
 .../bindings/i2c/i2c-sun6i-p2wi.txt           | 41 -----------
 2 files changed, 71 insertions(+), 41 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-sun6i-p2wi.txt

diff --git a/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml b/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml
new file mode 100644
index 000000000000..780a33080140
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml
@@ -0,0 +1,71 @@
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
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
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
+    p2wi@1f03400 {
+      compatible = "allwinner,sun6i-a31-p2wi";
+      reg = <0x01f03400 0x400>;
+      interrupts = <0 39 4>;
+      clocks = <&apb0_gates 3>;
+      clock-frequency = <6000000>;
+      resets = <&apb0_rst 3>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      axp221: pmic@68 {
+        compatible = "x-powers,axp221";
+        reg = <0x68>;
+      };
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
