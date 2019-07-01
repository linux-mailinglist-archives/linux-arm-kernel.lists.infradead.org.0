Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBF51A06D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 17:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KO9gJLWAhKuFJHXKMPka/qwTjf84wMEfHWH9zJGWn84=; b=sbCysUS5hWOq1H
	nWLnJlnfYbJDO8BEFkHkm3+ucm9qaDDspXKoKNJZhujI86odQQ8ihZ40K/jkkFkc0xx5raEIbNPzm
	HrgiZkHV7raNBehRVhQEM3d5CP9bI3TTmj+JFuo+YXEgQS6kR9kqy5jYBVY8wKwC7R6BHnonhVsIC
	/pwh6ZlFq4xIiGxXnI2wzG5d01Dg0Zm0gS8lIj0+FoQXiAEk2r8xhJjvmC9aA4qYR8e6mLpib1VFi
	6VBicsT3okB+OeuIj2mvL5/othkJdob3caduiceXObglqMM3MZoiqem4tZR6YHM42OgahDIxhUvsk
	gk5ACVFtZgvII+k4xLFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP7iY-000699-SK; Fri, 10 May 2019 15:45:50 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP7iQ-00068I-H2
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 15:45:45 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4AFRMrc029079; Fri, 10 May 2019 17:45:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=EDgWPk87oXg8YzV/4F3uiVhPZFZ4rv/kb1qOckXHwGM=;
 b=Y2K9EEVGq+tebiaiBvUZHMXqFqfWcldSosAX82+yaCvwWCsHSb3rddjodYSlqs8kThiV
 JLzAFZxeXEq+w6PtSPJtJN09CbWTO5SvjPRJ+TDGT/8aeWNPJ+Z5X4eSqCNyyZDT6pQE
 MOinOB281F0tKKISu+zqwellC2OC2zSpjPOrAD24vEC1SL76YLfBF4oWWsENxpdhp1XH
 hx59lupxH8lKbBssRi7ALnPAxsbrFUlzQMKxgWM+ehghSMlIMUaE5b18Cd6IGqxicvhO
 7MzqTmMItuhvpOIDB97anLnB2eA/ry52s+SbdJNAYzlzWNzTVDAQqIMUkKxgTH7ffC3k vA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sc9s4kas1-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 10 May 2019 17:45:28 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3AE4831;
 Fri, 10 May 2019 15:45:28 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D19592945;
 Fri, 10 May 2019 15:45:27 +0000 (GMT)
Received: from localhost (10.75.127.44) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 10 May 2019 17:45:27
 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Linus Walleij
 <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: [PATCH v2] dt-bindings: pinctrl: Convert stm32 pinctrl bindings to
 json-schema
Date: Fri, 10 May 2019 17:45:26 +0200
Message-ID: <1557503126-3025-1-git-send-email-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG3NODE3.st.com (10.75.127.9) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_084542_892197_68424112 
X-CRM114-Status: GOOD (  22.38  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 pinctrl binding to DT schema format using json-schema.

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
---

Hi,

First pacth to convert DT bindings file (here pinctrl STM32) to json-schema
in order to take advantage of devicetree validation tool for STM32.

Changes since v1:
 - Fix errors reported by Rob.


regards
Alex

diff --git a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.txt
deleted file mode 100644
index 0016925..0000000
--- a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.txt
+++ /dev/null
@@ -1,208 +0,0 @@
-* STM32 GPIO and Pin Mux/Config controller
-
-STMicroelectronics's STM32 MCUs intregrate a GPIO and Pin mux/config hardware
-controller. It controls the input/output settings on the available pins and
-also provides ability to multiplex and configure the output of various on-chip
-controllers onto these pads.
-
-Pin controller node:
-Required properies:
- - compatible: value should be one of the following:
-   "st,stm32f429-pinctrl"
-   "st,stm32f469-pinctrl"
-   "st,stm32f746-pinctrl"
-   "st,stm32f769-pinctrl"
-   "st,stm32h743-pinctrl"
-   "st,stm32mp157-pinctrl"
-   "st,stm32mp157-z-pinctrl"
- - #address-cells: The value of this property must be 1
- - #size-cells	: The value of this property must be 1
- - ranges	: defines mapping between pin controller node (parent) to
-   gpio-bank node (children).
- - pins-are-numbered: Specify the subnodes are using numbered pinmux to
-   specify pins.
-
-GPIO controller/bank node:
-Required properties:
- - gpio-controller : Indicates this device is a GPIO controller
- - #gpio-cells	  : Should be two.
-			The first cell is the pin number
-			The second one is the polarity:
-				- 0 for active high
-				- 1 for active low
- - reg		  : The gpio address range, relative to the pinctrl range
- - clocks	  : clock that drives this bank
- - st,bank-name	  : Should be a name string for this bank as specified in
-   the datasheet
-
-Optional properties:
- - reset:	  : Reference to the reset controller
- - st,syscfg: Should be phandle/offset/mask.
-	-The phandle to the syscon node which includes IRQ mux selection register.
-	-The offset of the IRQ mux selection register
-	-The field mask of IRQ mux, needed if different of 0xf.
- - gpio-ranges: Define a dedicated mapping between a pin-controller and
-   a gpio controller. Format is <&phandle a b c> with:
-	-(phandle): phandle of pin-controller.
-	-(a): gpio base offset in range.
-	-(b): pin base offset in range.
-	-(c): gpio count in range
-   This entry has to be used either if there are holes inside a bank:
-	GPIOB0/B1/B2/B14/B15 (see example 2)
-   or if banks are not contiguous:
-	GPIOA/B/C/E...
-   NOTE: If "gpio-ranges" is used for a gpio controller, all gpio-controller
-   have to use a "gpio-ranges" entry.
-   More details in Documentation/devicetree/bindings/gpio/gpio.txt.
- - st,bank-ioport: should correspond to the EXTI IOport selection (EXTI line
-   used to select GPIOs as interrupts).
- - hwlocks: reference to a phandle of a hardware spinlock provider node.
- - st,package: Indicates the SOC package used.
-   More details in include/dt-bindings/pinctrl/stm32-pinfunc.h
-
-Example 1:
-#include <dt-bindings/pinctrl/stm32f429-pinfunc.h>
-...
-
-	pin-controller {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "st,stm32f429-pinctrl";
-		ranges = <0 0x40020000 0x3000>;
-		pins-are-numbered;
-
-		gpioa: gpio@40020000 {
-			gpio-controller;
-			#gpio-cells = <2>;
-			reg = <0x0 0x400>;
-			resets = <&reset_ahb1 0>;
-			st,bank-name = "GPIOA";
-		};
-		...
-		pin-functions nodes follow...
-	};
-
-Example 2:
-#include <dt-bindings/pinctrl/stm32f429-pinfunc.h>
-...
-
-	pinctrl: pin-controller {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "st,stm32f429-pinctrl";
-		ranges = <0 0x40020000 0x3000>;
-		pins-are-numbered;
-
-		gpioa: gpio@40020000 {
-			gpio-controller;
-			#gpio-cells = <2>;
-			reg = <0x0 0x400>;
-			resets = <&reset_ahb1 0>;
-			st,bank-name = "GPIOA";
-			gpio-ranges = <&pinctrl 0 0 16>;
-		};
-
-		gpiob: gpio@40020400 {
-			gpio-controller;
-			#gpio-cells = <2>;
-			reg = <0x0 0x400>;
-			resets = <&reset_ahb1 0>;
-			st,bank-name = "GPIOB";
-			ngpios = 4;
-			gpio-ranges = <&pinctrl 0 16 3>,
-				      <&pinctrl 14 30 2>;
-		};
-
-
-		...
-		pin-functions nodes follow...
-	};
-
-
-Contents of function subnode node:
-----------------------------------
-Subnode format
-A pinctrl node should contain at least one subnode representing the
-pinctrl group available on the machine. Each subnode will list the
-pins it needs, and how they should be configured, with regard to muxer
-configuration, pullups, drive, output high/low and output speed.
-
-    node {
-	pinmux = <PIN_NUMBER_PINMUX>;
-	GENERIC_PINCONFIG;
-    };
-
-Required properties:
-- pinmux: integer array, represents gpio pin number and mux setting.
-  Supported pin number and mux varies for different SoCs, and are defined in
-  dt-bindings/pinctrl/<soc>-pinfunc.h directly.
-  These defines are calculated as:
-    ((port * 16 + line) << 8) | function
-  With:
-    - port: The gpio port index (PA = 0, PB = 1, ..., PK = 11)
-    - line: The line offset within the port (PA0 = 0, PA1 = 1, ..., PA15 = 15)
-    - function: The function number, can be:
-      * 0 : GPIO
-      * 1 : Alternate Function 0
-      * 2 : Alternate Function 1
-      * 3 : Alternate Function 2
-      * ...
-      * 16 : Alternate Function 15
-      * 17 : Analog
-
-  To simplify the usage, macro is available to generate "pinmux" field.
-  This macro is available here:
-    - include/dt-bindings/pinctrl/stm32-pinfunc.h
-
-  Some examples of using macro:
-    /* GPIO A9 set as alernate function 2 */
-    ... {
-		pinmux = <STM32_PINMUX('A', 9, AF2)>;
-    };
-    /* GPIO A9 set as GPIO  */
-    ... {
-		pinmux = <STM32_PINMUX('A', 9, GPIO)>;
-    };
-    /* GPIO A9 set as analog */
-    ... {
-		pinmux = <STM32_PINMUX('A', 9, ANALOG)>;
-    };
-
-Optional properties:
-- GENERIC_PINCONFIG: is the generic pinconfig options to use.
-  Available options are:
-   - bias-disable,
-   - bias-pull-down,
-   - bias-pull-up,
-   - drive-push-pull,
-   - drive-open-drain,
-   - output-low
-   - output-high
-   - slew-rate = <x>, with x being:
-       < 0 > : Low speed
-       < 1 > : Medium speed
-       < 2 > : Fast speed
-       < 3 > : High speed
-
-Example:
-
-pin-controller {
-...
-	usart1_pins_a: usart1@0 {
-		pins1 {
-			pinmux = <STM32_PINMUX('A', 9, AF7)>;
-			bias-disable;
-			drive-push-pull;
-			slew-rate = <0>;
-		};
-		pins2 {
-			pinmux = <STM32_PINMUX('A', 10, AF7)>;
-			bias-disable;
-		};
-	};
-};
-
-&usart1 {
-	pinctrl-0 = <&usart1_pins_a>;
-	pinctrl-names = "default";
-};
diff --git a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
new file mode 100644
index 0000000..06c4b66
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
@@ -0,0 +1,264 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (C) STMicroelectronics 2019.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/st,stm32-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STM32 GPIO and Pin Mux/Config controller
+
+maintainers:
+  - Alexandre TORGUE <alexandre.torgue@st.com>
+
+description: |
+  STMicroelectronics's STM32 MCUs intregrate a GPIO and Pin mux/config hardware
+  controller. It controls the input/output settings on the available pins and
+  also provides ability to multiplex and configure the output of various
+  on-chip controllers onto these pads.
+
+properties:
+  compatible:
+    enum:
+      - st,stm32f429-pinctrl
+      - st,stm32f469-pinctrl
+      - st,stm32f746-pinctrl
+      - st,stm32f769-pinctrl
+      - st,stm32h743-pinctrl
+      - st,stm32mp157-pinctrl
+      - st,stm32mp157-z-pinctrl
+
+  '#address-cells':
+    const: 1
+  '#size-cells':
+    const: 1
+
+  ranges: true
+  pins-are-numbered: true
+  hwlocks: true
+
+  st,syscfg:
+    $ref: "/schemas/types.yaml#/definitions/phandle-array"
+    description: Should be phandle/offset/mask
+    items:
+      - description: Phandle to the syscon node which includes IRQ mux selection.
+      - description: The offset of the IRQ mux selection register.
+      - description: The field mask of IRQ mux, needed if different of 0xf.
+
+  st,package:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - enum: [1, 2, 4, 8]
+    description:
+     Indicates the SOC package used.
+     More details in include/dt-bindings/pinctrl/stm32-pinfunc.h
+
+
+patternProperties:
+  '^gpio@[0-9a-f]*$':
+    properties:
+      gpio-controller: true
+      '#gpio-cells':
+        const: 2
+
+      reg:
+        maxItems: 1
+      clocks:
+        maxItems: 1
+      reset:
+        minItems: 1
+        maxItems: 1
+      gpio-ranges:
+        minItems: 1
+        maxItems: 16
+      ngpios:
+        description:
+          Number of available gpios in a bank.
+        minimum: 1
+        maximum: 16
+
+      st,bank-name:
+        allOf:
+          - $ref: "/schemas/types.yaml#/definitions/string"
+          - enum:
+            - GPIOA
+            - GPIOB
+            - GPIOC
+            - GPIOD
+            - GPIOE
+            - GPIOF
+            - GPIOG
+            - GPIOH
+            - GPIOI
+            - GPIOJ
+            - GPIOK
+            - GPIOZ
+        description:
+          Should be a name string for this bank as specified in the datasheet.
+
+      st,bank-ioport:
+        allOf:
+          - $ref: "/schemas/types.yaml#/definitions/uint32"
+          - minimum: 0
+          - maximum: 11
+
+        description:
+          Should correspond to the EXTI IOport selection (EXTI line used
+          to select GPIOs as interrupts).
+
+    required:
+      - gpio-controller
+      - '#gpio-cells'
+      - reg
+      - clocks
+      - st,bank-name
+
+  '-[0-9]*$':
+    patternProperties:
+      '^pins':
+        description: |
+          A pinctrl node should contain at least one subnode representing the
+          pinctrl group available on the machine. Each subnode will list the
+          pins it needs, and how they should be configured, with regard to muxer
+          configuration, pullups, drive, output high/low and output speed.
+        properties:
+          pinmux:
+            allOf:
+              - $ref: "/schemas/types.yaml#/definitions/uint32-array"
+            description: |
+              Integer array, represents gpio pin number and mux setting.
+              Supported pin number and mux varies for different SoCs, and are
+              defined in dt-bindings/pinctrl/<soc>-pinfunc.h directly.
+              These defines are calculated as: ((port * 16 + line) << 8) | function
+              With:
+              - port: The gpio port index (PA = 0, PB = 1, ..., PK = 11)
+              - line: The line offset within the port (PA0 = 0, PA1 = 1, ..., PA15 = 15)
+              - function: The function number, can be:
+              * 0 : GPIO
+              * 1 : Alternate Function 0
+              * 2 : Alternate Function 1
+              * 3 : Alternate Function 2
+              * ...
+              * 16 : Alternate Function 15
+              * 17 : Analog
+              To simplify the usage, macro is available to generate "pinmux" field.
+              This macro is available here:
+                - include/dt-bindings/pinctrl/stm32-pinfunc.h
+              Some examples of using macro:
+               /* GPIO A9 set as alernate function 2 */
+               ... {
+                          pinmux = <STM32_PINMUX('A', 9, AF2)>;
+               };
+               /* GPIO A9 set as GPIO  */
+               ... {
+                          pinmux = <STM32_PINMUX('A', 9, GPIO)>;
+               };
+               /* GPIO A9 set as analog */
+               ... {
+                          pinmux = <STM32_PINMUX('A', 9, ANALOG)>;
+               };
+
+          bias-disable:
+            type: boolean
+          bias-pull-down:
+            type: boolean
+          bias-pull-up:
+            type: boolean
+          drive-push-pull:
+            type: boolean
+          drive-open-drain:
+            type: boolean
+          output-low:
+            type: boolean
+          output-high:
+            type: boolean
+          slew-rate:
+            description: |
+              0: Low speed
+              1: Medium speed
+              2: Fast speed
+              3: High speed
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+              - enum: [0, 1, 2, 3]
+
+        required:
+          - pinmux
+
+required:
+  - compatible
+  - '#address-cells'
+  - '#size-cells'
+  - ranges
+  - pins-are-numbered
+
+examples:
+  - |
+    #include <dt-bindings/pinctrl/stm32-pinfunc.h>
+    //Example 1
+      pinctrl@40020000 {
+              #address-cells = <1>;
+              #size-cells = <1>;
+              compatible = "st,stm32f429-pinctrl";
+              ranges = <0 0x40020000 0x3000>;
+              pins-are-numbered;
+
+              gpioa: gpio@0 {
+                      gpio-controller;
+                      #gpio-cells = <2>;
+                      reg = <0x0 0x400>;
+                      resets = <&reset_ahb1 0>;
+                      st,bank-name = "GPIOA";
+              };
+       };
+
+    //Example 2 (using gpio-ranges)
+      pinctrl@50020000 {
+              #address-cells = <1>;
+              #size-cells = <1>;
+              compatible = "st,stm32f429-pinctrl";
+              ranges = <0 0x50020000 0x3000>;
+              pins-are-numbered;
+
+              gpiob: gpio@1000 {
+                      gpio-controller;
+                      #gpio-cells = <2>;
+                      reg = <0x1000 0x400>;
+                      resets = <&reset_ahb1 0>;
+                      st,bank-name = "GPIOB";
+                      gpio-ranges = <&pinctrl 0 0 16>;
+              };
+
+              gpioc: gpio@2000 {
+                      gpio-controller;
+                      #gpio-cells = <2>;
+                      reg = <0x2000 0x400>;
+                      resets = <&reset_ahb1 0>;
+                      st,bank-name = "GPIOC";
+                      ngpios = <5>;
+                      gpio-ranges = <&pinctrl 0 16 3>,
+                                    <&pinctrl 14 30 2>;
+              };
+      };
+
+    //Example 3 pin groups
+      pinctrl@60020000 {
+        usart1_pins_a: usart1-0 {
+                pins1 {
+                        pinmux = <STM32_PINMUX('A', 9, AF7)>;
+                        bias-disable;
+                        drive-push-pull;
+                        slew-rate = <0>;
+                };
+                pins2 {
+                        pinmux = <STM32_PINMUX('A', 10, AF7)>;
+                        bias-disable;
+                };
+        };
+    };
+
+    usart1 {
+                pinctrl-0 = <&usart1_pins_a>;
+                pinctrl-names = "default";
+    };
+
+...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
