Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C53EED3CF
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 17:01:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QM4puEmvTxom94bmWP56VTqYUhv5j9Z9IKJMoy6RMzw=; b=m5jvclLBcQLUSl
	CCQV1l+uLeLZwEQf4NNW2AAVIbOi1imLflyk9nvqpBhHBeBHtefnJusPhb/E2mNGEcys8fk0k3iTO
	Zkt1NP/PKwtnrI8z9NNWDdlNGgT8lYy9yaCQMDH6XuqaU+OdVvA+BHXAJIZa1l7m11A1yxhAsD0Go
	k94RIRGVxd+UI+9vfGcs4a52GK2C3u5nFQSpE0sl/VKUguRaMZ+mEEPEWYhdQnGZbprhCPHfYenLU
	ntqMWBx8YBkgEkARhnvWf+CdoxW1QB5EokTzr5M7P6z/F+vBCYJy14SD0dzWThdgsEbjN/lkUh6sh
	42OzHOrIYWZVezuJEO9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRIK0-0005N6-Hr; Sun, 03 Nov 2019 16:01:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRIJd-0005A9-3L
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 16:01:22 +0000
Received: from localhost.localdomain (unknown [194.230.155.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7EFF2080F;
 Sun,  3 Nov 2019 16:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572796880;
 bh=ltTqN0B/R+pEdxmuWRoWrrtTRWlzTt6eMa88sa/Ypxg=;
 h=From:To:Subject:Date:From;
 b=tcbzxuzQGDpk0C/tC0ODHIP4kdGJKYY6eQibJ8pKdl5w9T0UnJxtbMQlY/qUFTDXA
 hN2U3poojPG6MWlyaLnI41p/x2hfibLXKer+RYk//46HaYgf7R63Ez2g2HuXI9lQWo
 U/iiHBmQeh9dOfq08FeJe4OPpwJowfHh/nsq3UGE=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org
Subject: [PATCH v2] dt-bindings: serial: Convert Samsung UART bindings to
 json-schema
Date: Sun,  3 Nov 2019 17:01:12 +0100
Message-Id: <20191103160112.10764-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_080121_182255_67646ABC 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.180 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert Samsung S3C/S5P/Exynos Serial/UART bindings to DT schema format
using json-schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. Simplify 'clock-names' patters after Rob's suggestions,
2. Add description to 'interrupts',
3. Remove 'uniqueItems' where not needed,
4. Remove aliases from example.
---
 .../bindings/mfd/samsung,exynos5433-lpass.txt |   2 +-
 .../bindings/serial/samsung_uart.txt          |  58 ---------
 .../bindings/serial/samsung_uart.yaml         | 118 ++++++++++++++++++
 3 files changed, 119 insertions(+), 59 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/serial/samsung_uart.txt
 create mode 100644 Documentation/devicetree/bindings/serial/samsung_uart.yaml

diff --git a/Documentation/devicetree/bindings/mfd/samsung,exynos5433-lpass.txt b/Documentation/devicetree/bindings/mfd/samsung,exynos5433-lpass.txt
index d759da606f75..30ea27c3936d 100644
--- a/Documentation/devicetree/bindings/mfd/samsung,exynos5433-lpass.txt
+++ b/Documentation/devicetree/bindings/mfd/samsung,exynos5433-lpass.txt
@@ -18,7 +18,7 @@ an optional sub-node. For "samsung,exynos5433-lpass" compatible this includes:
 UART, SLIMBUS, PCM, I2S, DMAC, Timers 0...4, VIC, WDT 0...1 devices.
 
 Bindings of the sub-nodes are described in:
-  ../serial/samsung_uart.txt
+  ../serial/samsung_uart.yaml
   ../sound/samsung-i2s.txt
   ../dma/arm-pl330.txt
 
diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.txt b/Documentation/devicetree/bindings/serial/samsung_uart.txt
deleted file mode 100644
index e85f37ec33f0..000000000000
--- a/Documentation/devicetree/bindings/serial/samsung_uart.txt
+++ /dev/null
@@ -1,58 +0,0 @@
-* Samsung's UART Controller
-
-The Samsung's UART controller is used for interfacing SoC with serial
-communicaion devices.
-
-Required properties:
-- compatible: should be one of following:
-  - "samsung,exynos4210-uart" -  Exynos4210 SoC,
-  - "samsung,s3c2410-uart" - compatible with ports present on S3C2410 SoC,
-  - "samsung,s3c2412-uart" - compatible with ports present on S3C2412 SoC,
-  - "samsung,s3c2440-uart" - compatible with ports present on S3C2440 SoC,
-  - "samsung,s3c6400-uart" - compatible with ports present on S3C6400 SoC,
-  - "samsung,s5pv210-uart" - compatible with ports present on S5PV210 SoC.
-
-- reg: base physical address of the controller and length of memory mapped
-  region.
-
-- interrupts: a single interrupt signal to SoC interrupt controller,
-  according to interrupt bindings documentation [1].
-
-- clock-names: input names of clocks used by the controller:
-  - "uart" - controller bus clock,
-  - "clk_uart_baudN" - Nth baud base clock input (N = 0, 1, ...),
-    according to SoC User's Manual (only N = 0 is allowedfor SoCs without
-    internal baud clock mux).
-- clocks: phandles and specifiers for all clocks specified in "clock-names"
-  property, in the same order, according to clock bindings documentation [2].
-
-[1] Documentation/devicetree/bindings/interrupt-controller/interrupts.txt
-[2] Documentation/devicetree/bindings/clock/clock-bindings.txt
-
-Optional properties:
-- samsung,uart-fifosize: The fifo size supported by the UART channel
-
-Note: Each Samsung UART should have an alias correctly numbered in the
-"aliases" node, according to serialN format, where N is the port number
-(non-negative decimal integer) as specified by User's Manual of respective
-SoC.
-
-Example:
-	aliases {
-		serial0 = &uart0;
-		serial1 = &uart1;
-		serial2 = &uart2;
-	};
-
-Example:
-	uart1: serial@7f005400 {
-		compatible = "samsung,s3c6400-uart";
-		reg = <0x7f005400 0x100>;
-		interrupt-parent = <&vic1>;
-		interrupts = <6>;
-		clock-names = "uart", "clk_uart_baud2",
-				"clk_uart_baud3";
-		clocks = <&clocks PCLK_UART1>, <&clocks PCLK_UART1>,
-				<&clocks SCLK_UART>;
-		samsung,uart-fifosize = <16>;
-	};
diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.yaml b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
new file mode 100644
index 000000000000..9d2ce347875b
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
@@ -0,0 +1,118 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/serial/samsung_uart.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung S3C, S5P and Exynos SoC UART Controller
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+  - Greg Kroah-Hartman <gregkh@linuxfoundation.org>
+
+description: |+
+  Each Samsung UART should have an alias correctly numbered in the "aliases"
+  node, according to serialN format, where N is the port number (non-negative
+  decimal integer) as specified by User's Manual of respective SoC.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - samsung,s3c2410-uart
+          - samsung,s3c2412-uart
+          - samsung,s3c2440-uart
+          - samsung,s3c6400-uart
+          - samsung,s5pv210-uart
+          - samsung,exynos4210-uart
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 5
+
+  clock-names:
+    description: N = 0 is allowed for SoCs without internal baud clock mux.
+    minItems: 2
+    maxItems: 5
+    items:
+      - const: uart
+      - pattern: '^clk_uart_baud[0-3]$'
+      - pattern: '^clk_uart_baud[0-3]$'
+      - pattern: '^clk_uart_baud[0-3]$'
+      - pattern: '^clk_uart_baud[0-3]$'
+
+  interrupts:
+    description: RX interrupt and optionally TX interrupt.
+    minItems: 1
+    maxItems: 2
+
+  samsung,uart-fifosize:
+    description: The fifo size supported by the UART channel.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - enum: [16, 64, 256]
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - interrupts
+  - reg
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,s3c2410-uart
+              - samsung,s5pv210-uart
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 3
+        clock-names:
+          minItems: 2
+          maxItems: 3
+          items:
+            - const: uart
+            - pattern: '^clk_uart_baud[0-1]$'
+            - pattern: '^clk_uart_baud[0-1]$'
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynos4210-uart
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          minItems: 2
+          maxItems: 2
+          items:
+            - const: uart
+            - const: clk_uart_baud0
+
+examples:
+  - |
+    #include <dt-bindings/clock/samsung,s3c64xx-clock.h>
+
+    uart0: serial@7f005000 {
+        compatible = "samsung,s3c6400-uart";
+        reg = <0x7f005000 0x100>;
+        interrupt-parent = <&vic1>;
+        interrupts = <5>;
+        clock-names = "uart", "clk_uart_baud2",
+                      "clk_uart_baud3";
+        clocks = <&clocks PCLK_UART0>, <&clocks PCLK_UART0>,
+                 <&clocks SCLK_UART>;
+        samsung,uart-fifosize = <16>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
