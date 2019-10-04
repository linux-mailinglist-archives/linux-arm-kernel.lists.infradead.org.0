Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77058CBED2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 17:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQSpmUjQZnzWpPi/uhGnjw9HDK60h6x0ku51PC1RmKU=; b=qTpyMnfbzYlboX
	qAkp/l3g49T5i4eQdnUUh9zu5FtTQXeBbDzlXvGZw+gtsr3U6m5fxcht00VjCx+pnXtAxn05hdWxW
	oHLr7XPQbp403JaRBA+kM/CI5a14n0GfgBr8eC2oUpYJypcXf6MfpQum9nJwJnNaf5PeO0ydP3rp3
	wcXszwmPR26wPf1E3UGVrVf5w51kK9lculywa5In3EfpLaqkgBVwnRX+WYNVa4yL3ITglrW+xET9N
	W+oO5R2+g5Z8NLNcqM1h4gDh0ajnnkNtBNLN8SCwTUQkAI4Q2nWki7sFdYvG2Vc1lwoDWH0vSI4fu
	YUDK6q+2WP0TvPwbFyZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGPIL-000798-Fz; Fri, 04 Oct 2019 15:15:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGPHu-0006sQ-RM
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 15:14:36 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A4B08207FF;
 Fri,  4 Oct 2019 15:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570202074;
 bh=jGn2GriHknRcM7VEKcN/Vhe/Y3uO7QORd6PlkeTX3q4=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=biAfqQM7ksmdl6mE9+E6iqLHtsiTP7ck7fq/ivIpyTTedBKFP9Se204xAqgDrwbNI
 jc/1GqGw5vGRFIzak0OnN/rnzhz6AFddTd+72tYCbnN6dVR/AbLTFaWYf8vf09giWG
 l5YRnMkEZuVKfYWfVWLpMBAoiP24ZYbX7xMUR79c=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Maciej Falkowski <m.falkowski@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-serial@vger.kernel.org
Subject: [PATCH 3/3] dt-bindings: serial: Convert Samsung UART bindings to
 json-schema
Date: Fri,  4 Oct 2019 17:14:14 +0200
Message-Id: <20191004151414.8458-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191004151414.8458-1-krzk@kernel.org>
References: <20191004151414.8458-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_081434_966450_CA9E1820 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 .../bindings/mfd/samsung,exynos5433-lpass.txt |   2 +-
 .../bindings/serial/samsung_uart.txt          |  58 -------
 .../bindings/serial/samsung_uart.yaml         | 148 ++++++++++++++++++
 3 files changed, 149 insertions(+), 59 deletions(-)
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
index 000000000000..276bea1c231a
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
@@ -0,0 +1,148 @@
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
+    description: |
+      List of clock names:
+        - "uart" - controller bus clock,
+        - "clk_uart_baudN" - Nth baud base clock input (N = 0, 1, ...).
+      N = 0 is allowed for SoCs without internal baud clock mux.
+    minItems: 2
+    maxItems: 5
+    allOf:
+      - uniqueItems: true
+      - oneOf:
+          - items:
+              - const: uart
+              - pattern: '^clk_uart_baud[0-3]$'
+          - items:
+              - const: uart
+              - pattern: '^clk_uart_baud[0-3]$'
+              - pattern: '^clk_uart_baud[0-3]$'
+          - items:
+              - const: uart
+              - pattern: '^clk_uart_baud[0-3]$'
+              - pattern: '^clk_uart_baud[0-3]$'
+              - pattern: '^clk_uart_baud[0-3]$'
+          - items:
+              - const: uart
+              - pattern: '^clk_uart_baud[0-3]$'
+              - pattern: '^clk_uart_baud[0-3]$'
+              - pattern: '^clk_uart_baud[0-3]$'
+              - pattern: '^clk_uart_baud[0-3]$'
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+
+  samsung,uart-fifosize:
+    description: The fifo size supported by the UART channel
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
+          allOf:
+            - uniqueItems: true
+            - oneOf:
+                - items:
+                    - const: uart
+                    - pattern: '^clk_uart_baud[0-1]$'
+                - items:
+                    - const: uart
+                    - pattern: '^clk_uart_baud[0-1]$'
+                    - pattern: '^clk_uart_baud[0-1]$'
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
+          allOf:
+            - uniqueItems: true
+            - items:
+                - const: uart
+                - const: clk_uart_baud0
+
+examples:
+  - |
+    #include <dt-bindings/clock/samsung,s3c64xx-clock.h>
+
+    aliases {
+        serial0 = &uart0;
+    };
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
