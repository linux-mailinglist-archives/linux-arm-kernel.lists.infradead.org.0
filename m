Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 286D11D9231
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 10:37:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RNmHb7YhK4D32Tol7PbJafnRs/faJv9Iue+YQG7x68Y=; b=Fe3MRButJWZeFa
	OvHDGo7jfg9/gUcvv4MJkiaVTY9m4jnYABkR+QI7xdwl+yZXeFlh4dbAoOhYMeOoR7T7mfHqAHKn4
	zn+ffQSOQt4/mQRSMYGAmt6u6hWHiHAqx9JGIvUomjM9NU8goyBELJUcJxeP9THJIBVxC9T3Ug/er
	kYlxBfTSjXi1Z/AMh8I8QVEWeZD+0FghlENULEdIuVIjYzaYnn2RUjxdN4O8p469ZrxqirTMgjpng
	zWH7wI0DEKyT0Pb0caQWhMaAbGtzyuc883F7NaQg+WsDQDuFOkUu/kpUUJnR8yh0K8r+JVSgmgFZj
	7UJjlDi9Daw3oe9XI1UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaxkp-0008ET-7X; Tue, 19 May 2020 08:37:39 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaxke-0008DO-7v
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 08:37:30 +0000
X-Originating-IP: 78.193.40.249
Received: from localhost (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 79D79240011;
 Tue, 19 May 2020 08:37:24 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 2/5] dt-bindings: atmel-tcb: convert bindings to json-schema
Date: Tue, 19 May 2020 10:37:13 +0200
Message-Id: <20200519083716.938384-3-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200519083716.938384-1-kamel.bouhara@bootlin.com>
References: <20200519083716.938384-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_013728_558175_494EB938 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

Convert Atmel Timer Counter Blocks bindings to DT schema format using
json-schema.

Also move it out of mfd as it is not and has never been related to mfd.

Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 .../devicetree/bindings/mfd/atmel-tcb.txt     |  56 --------
 .../soc/microchip/atmel,at91rm9200-tcb.yaml   | 126 ++++++++++++++++++
 2 files changed, 126 insertions(+), 56 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/atmel-tcb.txt
 create mode 100644 Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml

diff --git a/Documentation/devicetree/bindings/mfd/atmel-tcb.txt b/Documentation/devicetree/bindings/mfd/atmel-tcb.txt
deleted file mode 100644
index c4a83e364cb6..000000000000
--- a/Documentation/devicetree/bindings/mfd/atmel-tcb.txt
+++ /dev/null
@@ -1,56 +0,0 @@
-* Device tree bindings for Atmel Timer Counter Blocks
-- compatible: Should be "atmel,<chip>-tcb", "simple-mfd", "syscon".
-  <chip> can be "at91rm9200" or "at91sam9x5"
-- reg: Should contain registers location and length
-- #address-cells: has to be 1
-- #size-cells: has to be 0
-- interrupts: Should contain all interrupts for the TC block
-  Note that you can specify several interrupt cells if the TC
-  block has one interrupt per channel.
-- clock-names: tuple listing input clock names.
-	Required elements: "t0_clk", "slow_clk"
-	Optional elements: "t1_clk", "t2_clk"
-- clocks: phandles to input clocks.
-
-The TCB can expose multiple subdevices:
- * a timer
-   - compatible: Should be "atmel,tcb-timer"
-   - reg: Should contain the TCB channels to be used. If the
-     counter width is 16 bits (at91rm9200-tcb), two consecutive
-     channels are needed. Else, only one channel will be used.
-
-Examples:
-
-One interrupt per TC block:
-	tcb0: timer@fff7c000 {
-		compatible = "atmel,at91rm9200-tcb", "simple-mfd", "syscon";
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0xfff7c000 0x100>;
-		interrupts = <18 4>;
-		clocks = <&tcb0_clk>, <&clk32k>;
-		clock-names = "t0_clk", "slow_clk";
-
-		timer@0 {
-			compatible = "atmel,tcb-timer";
-			reg = <0>, <1>;
-		};
-
-		timer@2 {
-			compatible = "atmel,tcb-timer";
-			reg = <2>;
-		};
-	};
-
-One interrupt per TC channel in a TC block:
-	tcb1: timer@fffdc000 {
-		compatible = "atmel,at91rm9200-tcb", "simple-mfd", "syscon";
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0xfffdc000 0x100>;
-		interrupts = <26 4>, <27 4>, <28 4>;
-		clocks = <&tcb1_clk>, <&clk32k>;
-		clock-names = "t0_clk", "slow_clk";
-	};
-
-
diff --git a/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml b/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml
new file mode 100644
index 000000000000..4b683151265e
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml
@@ -0,0 +1,126 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/soc/microchip/atmel,at91rm9200-tcb.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Atmel Timer Counter Block
+
+maintainers:
+  - Alexandre Belloni <alexandre.belloni@bootlin.com>
+
+description: |
+  The Atmel (now Microchip) SoCs have timers named Timer Counter Block. Each
+  timer has three channels with two counters each.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - atmel,at91rm9200-tcb
+          - atmel,at91sam9x5-tcb
+      - const: simple-mfd
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    description:
+      List of interrupts. One interrupt per TCB channel if available or one
+      interrupt for the TC block
+    minItems: 1
+    maxItems: 3
+
+  clock-names:
+    description:
+      List of clock names. Always includes t0_clk and slow clk. Also includes
+      t1_clk and t2_clk if a clock per channel is available.
+    minItems: 2
+    maxItems: 4
+    items:
+      enum:
+        - t0_clk
+        - t1_clk
+        - t2_clk
+        - slow_clk
+
+  clocks:
+    minItems: 2
+    maxItems: 4
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+patternProperties:
+  "^timer@[0-2]$":
+    description: The timer block channels that are used as timers.
+    type: object
+    properties:
+      compatible:
+        const: atmel,tcb-timer
+      reg:
+        description:
+          List of channels to use for this particular timer.
+        minItems: 1
+        maxItems: 3
+
+    required:
+      - compatible
+      - reg
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - '#address-cells'
+  - '#size-cells'
+
+examples:
+  - |
+    /* One interrupt per TC block: */
+        tcb0: timer@fff7c000 {
+                compatible = "atmel,at91rm9200-tcb", "simple-mfd", "syscon";
+                #address-cells = <1>;
+                #size-cells = <0>;
+                reg = <0xfff7c000 0x100>;
+                interrupts = <18 4>;
+                clocks = <&tcb0_clk>, <&clk32k>;
+                clock-names = "t0_clk", "slow_clk";
+
+                timer@0 {
+                        compatible = "atmel,tcb-timer";
+                        reg = <0>, <1>;
+                };
+
+                timer@2 {
+                        compatible = "atmel,tcb-timer";
+                        reg = <2>;
+                };
+        };
+
+    /* One interrupt per TC channel in a TC block: */
+        tcb1: timer@fffdc000 {
+                compatible = "atmel,at91rm9200-tcb", "simple-mfd", "syscon";
+                #address-cells = <1>;
+                #size-cells = <0>;
+                reg = <0xfffdc000 0x100>;
+                interrupts = <26 4>, <27 4>, <28 4>;
+                clocks = <&tcb1_clk>, <&clk32k>;
+                clock-names = "t0_clk", "slow_clk";
+
+                timer@0 {
+                        compatible = "atmel,tcb-timer";
+                        reg = <0>;
+                };
+
+                timer@1 {
+                        compatible = "atmel,tcb-timer";
+                        reg = <1>;
+                };
+        };
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
