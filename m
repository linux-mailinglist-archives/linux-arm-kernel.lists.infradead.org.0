Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2427F13654A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 03:17:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4hbnFfL5QRKhg94277qAfNQHO5Ze7IVtAAFeybO2qa0=; b=F+4YGh/bzBq/BRmTkA70RNMdJG
	qBxZJChWmZBNTQ5AwS/J2+7bSfN9bJLUPB3keo7tT+MUzZi33AvJle+ICdt+cfK10KQ1xAN9xTIXi
	L2eaiXRYCPFJvr0eh9bhvc10BjGxjSYc21EOck5n8vhzGivLGls8DnbFA4sDBNFYXVDCmndv1/8Ul
	H8HM6C+jHQK3xAfWFgoxnEpcrAP4gUrDKIaljpbmNs9QlANIwzJQKKVNGK+OAbRuP3KzNsZ9sVcub
	2X5ipOGARHB0Q1dHBO6ZzgTFFpDtyTT8OjKorWckAHjTDpU9ilkesQxfQEj4qePMZ7ZHLLwnJJXNH
	sT6K0kmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipjrp-0005XV-6S; Fri, 10 Jan 2020 02:17:41 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipjrO-0005Ld-UF
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 02:17:16 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0CC0620005C;
 Fri, 10 Jan 2020 03:17:13 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F15372016AF;
 Fri, 10 Jan 2020 03:17:05 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 81285402D7;
 Fri, 10 Jan 2020 10:16:57 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, s.hauer@pengutronix.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] dt-bindings: pinctrl: Convert i.MX8MN to json-schema
Date: Fri, 10 Jan 2020 10:13:08 +0800
Message-Id: <1578622388-23370-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578622388-23370-1-git-send-email-Anson.Huang@nxp.com>
References: <1578622388-23370-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_181715_247948_864CF38C 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the i.MX8MN pinctrl binding to DT schema format using json-schema

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../bindings/pinctrl/fsl,imx8mn-pinctrl.txt        | 39 -------------
 .../bindings/pinctrl/fsl,imx8mn-pinctrl.yaml       | 67 ++++++++++++++++++++++
 2 files changed, 67 insertions(+), 39 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx8mn-pinctrl.txt
 create mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx8mn-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mn-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mn-pinctrl.txt
deleted file mode 100644
index 330716c..0000000
--- a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mn-pinctrl.txt
+++ /dev/null
@@ -1,39 +0,0 @@
-* Freescale IMX8MN IOMUX Controller
-
-Please refer to fsl,imx-pinctrl.txt and pinctrl-bindings.txt in this directory
-for common binding part and usage.
-
-Required properties:
-- compatible: "fsl,imx8mn-iomuxc"
-- reg: should contain the base physical address and size of the iomuxc
-  registers.
-
-Required properties in sub-nodes:
-- fsl,pins: each entry consists of 6 integers and represents the mux and config
-  setting for one pin.  The first 5 integers <mux_reg conf_reg input_reg mux_val
-  input_val> are specified using a PIN_FUNC_ID macro, which can be found in
-  <arch/arm64/boot/dts/freescale/imx8mn-pinfunc.h>. The last integer CONFIG is
-  the pad setting value like pull-up on this pin. Please refer to i.MX8M Nano
-  Reference Manual for detailed CONFIG settings.
-
-Examples:
-
-&uart1 {
-       pinctrl-names = "default";
-       pinctrl-0 = <&pinctrl_uart1>;
-};
-
-iomuxc: pinctrl@30330000 {
-        compatible = "fsl,imx8mn-iomuxc";
-        reg = <0x0 0x30330000 0x0 0x10000>;
-
-        pinctrl_uart1: uart1grp {
-                fsl,pins = <
-			MX8MN_IOMUXC_UART1_RXD_UART1_DCE_RX	0x140
-			MX8MN_IOMUXC_UART1_TXD_UART1_DCE_TX	0x140
-			MX8MN_IOMUXC_UART3_RXD_UART1_DCE_CTS_B	0x140
-			MX8MN_IOMUXC_UART3_TXD_UART1_DCE_RTS_B	0x140
-			MX8MN_IOMUXC_SD1_DATA4_GPIO2_IO6	0x19
-                >;
-        };
-};
diff --git a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mn-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mn-pinctrl.yaml
new file mode 100644
index 0000000..44bf4e0
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mn-pinctrl.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/fsl,imx8mn-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale IMX8MN IOMUX Controller
+
+maintainers:
+  - Anson Huang <Anson.Huang@nxp.com>
+
+description:
+  Please refer to fsl,imx-pinctrl.txt and pinctrl-bindings.txt in this directory
+  for common binding part and usage.
+
+properties:
+  compatible:
+    const: fsl,imx8mn-iomuxc
+
+# Client device subnode's properties
+patternProperties:
+  '-grp$':
+    type: object
+    description:
+      Pinctrl node's client devices use subnodes for desired pin configuration.
+      Client device subnodes use below standard properties.
+
+    properties:
+      fsl,pins:
+        allOf:
+	  - $ref: /schemas/types.yaml#/definitions/uint32-array
+        maxItems: 6
+        description:
+          each entry consists of 6 integers and represents the mux and config
+          setting for one pin. The first 5 integers <mux_reg conf_reg input_reg
+          mux_val input_val> are specified using a PIN_FUNC_ID macro, which can
+          be found in <arch/arm64/boot/dts/freescale/imx8mn-pinfunc.h>. The last
+          integer CONFIG is the pad setting value like pull-up on this pin. Please
+          refer to i.MX8M Nano Reference Manual for detailed CONFIG settings.
+
+    required:
+      - fsl,pins
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  # Pinmux controller node
+  - |
+    iomuxc: pinctrl@30330000 {
+        compatible = "fsl,imx8mn-iomuxc";
+        reg = <0x30330000 0x10000>;
+
+        pinctrl_uart2: uart2grp {
+            fsl,pins = <
+                0x23C 0x4A4 0x4FC 0x0 0x0	0x140
+                0x240 0x4A8 0x000 0x0 0x0	0x140
+            >;
+        };
+    };
+
+...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
