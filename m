Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8352B1DA693
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 02:30:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xjJ36e/pDYRmYJEuS8VAmbhc9Tbfjl1gLfK0U2e5gq0=; b=Ym2
	hUTXAWLxdCExRXeOxMpS+toETKgpnYkC/Ws8fAyJxpcUy8HMn41MYm0/evARYU8ld8BHpO5SrVOYw
	cgw+SX0//a+8sULivKYmgT7XZ7bc0SJWvK4YqQD8CsveAJSoR1+3pFMe+0A1IpdCtHDo+iNiILLPf
	WVoHXJm291Fex37foLaLyHPF9st14Eem+yhYhPpV7ywVmASONXb2RLjwPt3Iuj+bJ1jUeYMapCn5m
	BcJmDqReXxakYj5y6Zbn6R64SpFjYeJxIesA0lud4ukMzLqTmvD6/Ee6L7PslzPZgs7IjrdSWELVI
	siKeVrLOfaUxsKceoVdobWbi7dj2JLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbCd2-0002HR-FE; Wed, 20 May 2020 00:30:36 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbCct-0002GA-8b
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 00:30:29 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 948661A0210;
 Wed, 20 May 2020 02:30:23 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7BF0F1A0237;
 Wed, 20 May 2020 02:30:18 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 2401F402BB;
 Wed, 20 May 2020 08:30:12 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: gpio: Convert mxs to json-schema
Date: Wed, 20 May 2020 08:20:35 +0800
Message-Id: <1589934035-5309-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_173027_582262_844B7E17 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the MXS GPIO binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/gpio/gpio-mxs.txt          |  88 -------------
 .../devicetree/bindings/gpio/gpio-mxs.yaml         | 136 +++++++++++++++++++++
 2 files changed, 136 insertions(+), 88 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/gpio/gpio-mxs.txt
 create mode 100644 Documentation/devicetree/bindings/gpio/gpio-mxs.yaml

diff --git a/Documentation/devicetree/bindings/gpio/gpio-mxs.txt b/Documentation/devicetree/bindings/gpio/gpio-mxs.txt
deleted file mode 100644
index 1e677a4..0000000
--- a/Documentation/devicetree/bindings/gpio/gpio-mxs.txt
+++ /dev/null
@@ -1,88 +0,0 @@
-* Freescale MXS GPIO controller
-
-The Freescale MXS GPIO controller is part of MXS PIN controller.  The
-GPIOs are organized in port/bank.  Each port consists of 32 GPIOs.
-
-As the GPIO controller is embedded in the PIN controller and all the
-GPIO ports share the same IO space with PIN controller, the GPIO node
-will be represented as sub-nodes of MXS pinctrl node.
-
-Required properties for GPIO node:
-- compatible : Should be "fsl,<soc>-gpio".  The supported SoCs include
-  imx23 and imx28.
-- interrupts : Should be the port interrupt shared by all 32 pins.
-- gpio-controller : Marks the device node as a gpio controller.
-- #gpio-cells : Should be two.  The first cell is the pin number and
-  the second cell is used to specify the gpio polarity:
-      0 = active high
-      1 = active low
-- interrupt-controller: Marks the device node as an interrupt controller.
-- #interrupt-cells : Should be 2.  The first cell is the GPIO number.
-  The second cell bits[3:0] is used to specify trigger type and level flags:
-      1 = low-to-high edge triggered.
-      2 = high-to-low edge triggered.
-      4 = active high level-sensitive.
-      8 = active low level-sensitive.
-
-Note: Each GPIO port should have an alias correctly numbered in "aliases"
-node.
-
-Examples:
-
-aliases {
-	gpio0 = &gpio0;
-	gpio1 = &gpio1;
-	gpio2 = &gpio2;
-	gpio3 = &gpio3;
-	gpio4 = &gpio4;
-};
-
-pinctrl@80018000 {
-	compatible = "fsl,imx28-pinctrl", "simple-bus";
-	reg = <0x80018000 2000>;
-
-	gpio0: gpio@0 {
-		compatible = "fsl,imx28-gpio";
-		interrupts = <127>;
-		gpio-controller;
-		#gpio-cells = <2>;
-		interrupt-controller;
-		#interrupt-cells = <2>;
-	};
-
-	gpio1: gpio@1 {
-		compatible = "fsl,imx28-gpio";
-		interrupts = <126>;
-		gpio-controller;
-		#gpio-cells = <2>;
-		interrupt-controller;
-		#interrupt-cells = <2>;
-	};
-
-	gpio2: gpio@2 {
-		compatible = "fsl,imx28-gpio";
-		interrupts = <125>;
-		gpio-controller;
-		#gpio-cells = <2>;
-		interrupt-controller;
-		#interrupt-cells = <2>;
-	};
-
-	gpio3: gpio@3 {
-		compatible = "fsl,imx28-gpio";
-		interrupts = <124>;
-		gpio-controller;
-		#gpio-cells = <2>;
-		interrupt-controller;
-		#interrupt-cells = <2>;
-	};
-
-	gpio4: gpio@4 {
-		compatible = "fsl,imx28-gpio";
-		interrupts = <123>;
-		gpio-controller;
-		#gpio-cells = <2>;
-		interrupt-controller;
-		#interrupt-cells = <2>;
-	};
-};
diff --git a/Documentation/devicetree/bindings/gpio/gpio-mxs.yaml b/Documentation/devicetree/bindings/gpio/gpio-mxs.yaml
new file mode 100644
index 0000000..ccf5b50
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/gpio-mxs.yaml
@@ -0,0 +1,136 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/gpio-mxs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale MXS GPIO controller
+
+maintainers:
+  - Shawn Guo <shawn.guo@linaro.org>
+  - Anson Huang <Anson.Huang@nxp.com>
+
+description: |
+  The Freescale MXS GPIO controller is part of MXS PIN controller.
+  The GPIOs are organized in port/bank, each port consists of 32 GPIOs.
+  As the GPIO controller is embedded in the PIN controller and all the
+  GPIO ports share the same IO space with PIN controller, the GPIO node
+  will be represented as sub-nodes of MXS pinctrl node.
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx23-pinctrl
+      - fsl,imx28-pinctrl
+
+  '#address-cells':
+    const: 1
+  '#size-cells':
+    const: 0
+
+  reg:
+    maxItems: 1
+
+patternProperties:
+  "gpio@[0-9]+$":
+    type: object
+    properties:
+      compatible:
+        enum:
+          - fsl,imx23-gpio
+          - fsl,imx28-gpio
+
+      reg:
+        maxItems: 1
+
+      interrupts:
+        description: Should be the port interrupt shared by all 32 pins.
+        maxItems: 1
+
+      interrupt-controller: true
+
+      "#interrupt-cells":
+        const: 2
+
+      "#gpio-cells":
+        const: 2
+
+      gpio-controller: true
+
+    required:
+      - compatible
+      - reg
+      - interrupts
+      - interrupt-controller
+      - "#interrupt-cells"
+      - "#gpio-cells"
+      - gpio-controller
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - '#address-cells'
+  - '#size-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    pinctrl@80018000 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        compatible = "fsl,imx28-pinctrl";
+        reg = <0x80018000 0x2000>;
+
+        gpio@0 {
+                compatible = "fsl,imx28-gpio";
+                reg = <0>;
+                interrupts = <127>;
+                gpio-controller;
+                #gpio-cells = <2>;
+                interrupt-controller;
+                #interrupt-cells = <2>;
+        };
+
+        gpio@1 {
+                compatible = "fsl,imx28-gpio";
+                reg = <1>;
+                interrupts = <126>;
+                gpio-controller;
+                #gpio-cells = <2>;
+                interrupt-controller;
+                #interrupt-cells = <2>;
+        };
+
+        gpio@2 {
+                compatible = "fsl,imx28-gpio";
+                reg = <2>;
+                interrupts = <125>;
+                gpio-controller;
+                #gpio-cells = <2>;
+                interrupt-controller;
+                #interrupt-cells = <2>;
+        };
+
+        gpio@3 {
+                compatible = "fsl,imx28-gpio";
+                reg = <3>;
+                interrupts = <124>;
+                gpio-controller;
+                #gpio-cells = <2>;
+                interrupt-controller;
+                #interrupt-cells = <2>;
+        };
+
+        gpio@4 {
+                compatible = "fsl,imx28-gpio";
+                reg = <4>;
+                interrupts = <123>;
+                gpio-controller;
+                #gpio-cells = <2>;
+                interrupt-controller;
+                #interrupt-cells = <2>;
+        };
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
