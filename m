Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C351FA761
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 06:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GkOTajHXbkaYdFBfFWqOPM7sPB1iNMSaZj06nlZmRUw=; b=PdyMo2Ds1NuABuRQ8AtJW3IZwJ
	JSdkJEBRpeYw0vo4sy93+wlbW8hNA3QxNPW3i7h2MoD/52SGEQbBM3biQiosBkEmgqZz6lMur1ZVL
	Rqx2DyzvfupoxM6trXTxvqvXO+MNkT41/3rKOF1SMSeMTY2fte5Epm6PlZxwV5skeP/z0fTtvat/b
	wxhy347C+knM2VTbDL2dP8gNTScNEo0qp0BXW5aegdjS2wzcOJVjPeBKF9mYXFPBqkb8CjFtnLwt7
	GqMBtRrGnRMc4FN1Rc2HdkrBVzar2LWype0NWcbDQIS/Plfh85snB2Piqam677XSEsL179hWhCSWv
	cSBa5AcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl2oX-0002ie-EI; Tue, 16 Jun 2020 04:03:09 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl2nS-0001ys-Qv
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 04:02:05 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 04E831A0579;
 Tue, 16 Jun 2020 06:02:01 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D43861A053F;
 Tue, 16 Jun 2020 06:01:55 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8A072402E8;
 Tue, 16 Jun 2020 12:01:49 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: linux@rempel-privat.de, kernel@pengutronix.de, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 wolfram@the-dreams.de, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V3 2/2] dt-bindings: i2c: Convert imx i2c to json-schema
Date: Tue, 16 Jun 2020 11:50:54 +0800
Message-Id: <1592279454-32551-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592279454-32551-1-git-send-email-Anson.Huang@nxp.com>
References: <1592279454-32551-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_210203_170191_512C315A 
X-CRM114-Status: GOOD (  14.31  )
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

Convert the i.MX I2C binding to DT schema format using json-schema,
some improvements applied, such as update example based on latest DT
file, add more compatible for existing SoCs, and remove unnecessary
common property "pinctrl".

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V2:
	- remove 'clock-frequency' property's type and use enum for it, ONLY support 100KHz/400KHz.
	- remove *-gpios's typs/description, since it is already defined in i2c-gpio.yaml.
	- fix space issue in example.
---
 Documentation/devicetree/bindings/i2c/i2c-imx.txt  |  49 ----------
 Documentation/devicetree/bindings/i2c/i2c-imx.yaml | 103 +++++++++++++++++++++
 2 files changed, 103 insertions(+), 49 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-imx.txt
 create mode 100644 Documentation/devicetree/bindings/i2c/i2c-imx.yaml

diff --git a/Documentation/devicetree/bindings/i2c/i2c-imx.txt b/Documentation/devicetree/bindings/i2c/i2c-imx.txt
deleted file mode 100644
index b967544..0000000
--- a/Documentation/devicetree/bindings/i2c/i2c-imx.txt
+++ /dev/null
@@ -1,49 +0,0 @@
-* Freescale Inter IC (I2C) and High Speed Inter IC (HS-I2C) for i.MX
-
-Required properties:
-- compatible :
-  - "fsl,imx1-i2c" for I2C compatible with the one integrated on i.MX1 SoC
-  - "fsl,imx21-i2c" for I2C compatible with the one integrated on i.MX21 SoC
-  - "fsl,vf610-i2c" for I2C compatible with the one integrated on Vybrid vf610 SoC
-- reg : Should contain I2C/HS-I2C registers location and length
-- interrupts : Should contain I2C/HS-I2C interrupt
-- clocks : Should contain the I2C/HS-I2C clock specifier
-
-Optional properties:
-- clock-frequency : Constains desired I2C/HS-I2C bus clock frequency in Hz.
-  The absence of the property indicates the default frequency 100 kHz.
-- dmas: A list of two dma specifiers, one for each entry in dma-names.
-- dma-names: should contain "tx" and "rx".
-- scl-gpios: specify the gpio related to SCL pin
-- sda-gpios: specify the gpio related to SDA pin
-- pinctrl: add extra pinctrl to configure i2c pins to gpio function for i2c
-  bus recovery, call it "gpio" state
-
-Examples:
-
-i2c@83fc4000 { /* I2C2 on i.MX51 */
-	compatible = "fsl,imx51-i2c", "fsl,imx21-i2c";
-	reg = <0x83fc4000 0x4000>;
-	interrupts = <63>;
-};
-
-i2c@70038000 { /* HS-I2C on i.MX51 */
-	compatible = "fsl,imx51-i2c", "fsl,imx21-i2c";
-	reg = <0x70038000 0x4000>;
-	interrupts = <64>;
-	clock-frequency = <400000>;
-};
-
-i2c0: i2c@40066000 { /* i2c0 on vf610 */
-	compatible = "fsl,vf610-i2c";
-	reg = <0x40066000 0x1000>;
-	interrupts =<0 71 0x04>;
-	dmas = <&edma0 0 50>,
-		<&edma0 0 51>;
-	dma-names = "rx","tx";
-	pinctrl-names = "default", "gpio";
-	pinctrl-0 = <&pinctrl_i2c1>;
-	pinctrl-1 = <&pinctrl_i2c1_gpio>;
-	scl-gpios = <&gpio5 26 GPIO_ACTIVE_HIGH>;
-	sda-gpios = <&gpio5 27 GPIO_ACTIVE_HIGH>;
-};
diff --git a/Documentation/devicetree/bindings/i2c/i2c-imx.yaml b/Documentation/devicetree/bindings/i2c/i2c-imx.yaml
new file mode 100644
index 0000000..869f2ae
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/i2c-imx.yaml
@@ -0,0 +1,103 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/i2c-imx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale Inter IC (I2C) and High Speed Inter IC (HS-I2C) for i.MX
+
+maintainers:
+  - Wolfram Sang <wolfram@the-dreams.de>
+
+properties:
+  compatible:
+    oneOf:
+      - const: fsl,imx1-i2c
+      - const: fsl,imx21-i2c
+      - const: fsl,vf610-i2c
+      - items:
+          - const: fsl,imx35-i2c
+          - const: fsl,imx1-i2c
+      - items:
+          - enum:
+            - fsl,imx25-i2c
+            - fsl,imx27-i2c
+            - fsl,imx31-i2c
+            - fsl,imx50-i2c
+            - fsl,imx51-i2c
+            - fsl,imx53-i2c
+            - fsl,imx6q-i2c
+            - fsl,imx6sl-i2c
+            - fsl,imx6sx-i2c
+            - fsl,imx6sll-i2c
+            - fsl,imx6ul-i2c
+            - fsl,imx7s-i2c
+            - fsl,imx8mq-i2c
+            - fsl,imx8mm-i2c
+            - fsl,imx8mn-i2c
+            - fsl,imx8mp-i2c
+          - const: fsl,imx21-i2c
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
+  clock-names:
+    const: ipg
+
+  clock-frequency:
+    enum: [ 100000, 400000 ]
+
+  dmas:
+    items:
+      - description: DMA controller phandle and request line for RX
+      - description: DMA controller phandle and request line for TX
+
+  dma-names:
+    items:
+      - const: rx
+      - const: tx
+
+  sda-gpios:
+    maxItems: 1
+
+  scl-gpios:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx5-clock.h>
+    #include <dt-bindings/clock/vf610-clock.h>
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    i2c@83fc4000 {
+        compatible = "fsl,imx51-i2c", "fsl,imx21-i2c";
+        reg = <0x83fc4000 0x4000>;
+        interrupts = <63>;
+        clocks = <&clks IMX5_CLK_I2C2_GATE>;
+    };
+
+    i2c@40066000 {
+        compatible = "fsl,vf610-i2c";
+        reg = <0x40066000 0x1000>;
+        interrupts = <71 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clks VF610_CLK_I2C0>;
+        clock-names = "ipg";
+        dmas = <&edma0 0 50>,
+               <&edma0 0 51>;
+        dma-names = "rx", "tx";
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
