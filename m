Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A451A9950
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 11:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ymw79pxymTnKpC+xai9wM2+4DBeMNIidsMJ3lQ/XGeQ=; b=SjNnlPUknDlNGV
	xMLeqMeqQnxPgL5KBUSvWlxO6bYGVuD2WSmCfOl7NipjS5iIoDwNN01p53DP43SiJpdusNZpq70Wd
	mcpKAMK6qjlPETuqSowXZWaHuglA+7XgA6dMJQE2gMVj0gbbd4ikdRxV6P+OBdM02tP5yBBncIIE+
	ROfkunEjq2HjUOjyWnZIaOdaDhpKgrpQnpHpt5REXQM5Pl1Bw/C7XJrHy0+WFtyNDTXIk3R6egAcv
	Ccyi0jOETv72dKBMTOYr4kmRPPkp+jmuk7X0JuJfbyWVMHhXTsxSQPDrVzvUZujfS4EWaFZnjkIjX
	YIg8wFq1CyZ+iPnxUvuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOefg-0006jO-Qi; Wed, 15 Apr 2020 09:49:28 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOef4-0006L1-7R
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 09:48:54 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 5675CFF809;
 Wed, 15 Apr 2020 09:48:46 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v2 1/9] dt-bindings: atmel-tcb: convert bindings to json-schema
Date: Wed, 15 Apr 2020 11:48:18 +0200
Message-Id: <20200415094826.132562-2-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200415094826.132562-1-alexandre.belloni@bootlin.com>
References: <20200415094826.132562-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_024850_541116_5FCB321E 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: kamel.bouhara@bootlin.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert Atmel Timer Counter Blocks bindings to DT schema format using
json-schema.

Also move it out of mfd as it is not and has never been related to mfd.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
Cc: Rob Herring <robh+dt@kernel.org>

Changes in v2:
 - Rebased on v5.7-rc1
 - Moved the binding documentation to its proper place
 - Added back the atmel,tcb-timer child node documentation

 .../devicetree/bindings/mfd/atmel-tcb.txt     | 56 ------------
 .../soc/microchip/atmel,at91rm9200-tcb.yaml   | 89 +++++++++++++++++++
 .../bindings/timer/atmel,tcb-timer.yaml       | 51 +++++++++++
 3 files changed, 140 insertions(+), 56 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/atmel-tcb.txt
 create mode 100644 Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml
 create mode 100644 Documentation/devicetree/bindings/timer/atmel,tcb-timer.yaml

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
index 000000000000..2522fb1f4ce4
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml
@@ -0,0 +1,89 @@
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
+        };
diff --git a/Documentation/devicetree/bindings/timer/atmel,tcb-timer.yaml b/Documentation/devicetree/bindings/timer/atmel,tcb-timer.yaml
new file mode 100644
index 000000000000..a6173ceab6be
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/atmel,tcb-timer.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/timer/atmel,tcb-timer.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Atmel Timer Counter Block timer channel
+
+maintainers:
+  - Alexandre Belloni <alexandre.belloni@bootlin.com>
+
+description: |
+  The Atmel (now Microchip) Timer Counter Block have multiple channels that can
+  be used as timers.
+
+properties:
+  compatible:
+    const: atmel,tcb-timer
+  reg:
+    description:
+      List of channels to use for this particular timer.
+    minItems: 1
+    maxItems: 3
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+        timer@fff7c000 {
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
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
