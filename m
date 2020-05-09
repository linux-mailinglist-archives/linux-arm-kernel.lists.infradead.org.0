Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD151CBEE9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 10:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ys31NQe9WrWB9f3kR4/BeNGDuw1Vs6fUBx+FRMNC6KA=; b=P9H
	RnfHKfoV0vlIdkUBJadhD29ASRDx1AO0w/B/3Nf54lq7eg79w70miDB4aKglvQRR4rapbbgvpEa6G
	J9StyGDrodDFfE0DhSzaM/D6qvET2bsFW5mfWYXMLlUQSHTjys7eHUazrYNSfBxexppVPPvEzFzYu
	3Vre5paqyjKs2bQo8fX0QR4mCe3vqM1nA9y7/adpoxO2T5rf1xlGCmYJld+Kf/8ON/JFPtmi5qZsT
	6Q3ZsRutkzX3TqI5U7LZruXqFx8VlPhOei9IK7+A3oC7cVy8OdK2lsEFPgczKEF8L5RjSxt/RkUnz
	XWFHyKnbozurGcVESEcqyBaZNKqwQHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXKmF-00088U-Ri; Sat, 09 May 2020 08:24:07 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXKm7-00086f-Vm
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 08:24:02 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 925031A028B;
 Sat,  9 May 2020 10:23:54 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 349F91A015F;
 Sat,  9 May 2020 10:23:50 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BB55D40285;
 Sat,  9 May 2020 16:23:44 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: p.zabel@pengutronix.de, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: reset: Convert i.MX7 reset to json-schema
Date: Sat,  9 May 2020 16:14:37 +0800
Message-Id: <1589012077-12088-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_012400_302838_2ADCC2FD 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

Convert the i.MX7 reset binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/reset/fsl,imx7-src.txt     | 56 -------------------
 .../devicetree/bindings/reset/fsl,imx7-src.yaml    | 64 ++++++++++++++++++++++
 2 files changed, 64 insertions(+), 56 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
 create mode 100644 Documentation/devicetree/bindings/reset/fsl,imx7-src.yaml

diff --git a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt b/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
deleted file mode 100644
index e10502d..0000000
--- a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
+++ /dev/null
@@ -1,56 +0,0 @@
-Freescale i.MX7 System Reset Controller
-======================================
-
-Please also refer to reset.txt in this directory for common reset
-controller binding usage.
-
-Required properties:
-- compatible:
-	- For i.MX7 SoCs should be "fsl,imx7d-src", "syscon"
-	- For i.MX8MQ SoCs should be "fsl,imx8mq-src", "syscon"
-	- For i.MX8MM SoCs should be "fsl,imx8mm-src", "fsl,imx8mq-src", "syscon"
-	- For i.MX8MN SoCs should be "fsl,imx8mn-src", "fsl,imx8mq-src", "syscon"
-	- For i.MX8MP SoCs should be "fsl,imx8mp-src", "syscon"
-- reg: should be register base and length as documented in the
-  datasheet
-- interrupts: Should contain SRC interrupt
-- #reset-cells: 1, see below
-
-example:
-
-src: reset-controller@30390000 {
-     compatible = "fsl,imx7d-src", "syscon";
-     reg = <0x30390000 0x2000>;
-     interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
-     #reset-cells = <1>;
-};
-
-
-Specifying reset lines connected to IP modules
-==============================================
-
-The system reset controller can be used to reset various set of
-peripherals. Device nodes that need access to reset lines should
-specify them as a reset phandle in their corresponding node as
-specified in reset.txt.
-
-Example:
-
-	pcie: pcie@33800000 {
-
-		...
-
-		resets = <&src IMX7_RESET_PCIEPHY>,
-			 <&src IMX7_RESET_PCIE_CTRL_APPS_EN>;
-		reset-names = "pciephy", "apps";
-
-		...
-        };
-
-
-For list of all valid reset indices see
-<dt-bindings/reset/imx7-reset.h> for i.MX7,
-<dt-bindings/reset/imx8mq-reset.h> for i.MX8MQ and
-<dt-bindings/reset/imx8mq-reset.h> for i.MX8MM and
-<dt-bindings/reset/imx8mq-reset.h> for i.MX8MN and
-<dt-bindings/reset/imx8mp-reset.h> for i.MX8MP
diff --git a/Documentation/devicetree/bindings/reset/fsl,imx7-src.yaml b/Documentation/devicetree/bindings/reset/fsl,imx7-src.yaml
new file mode 100644
index 0000000..ad254ba
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/fsl,imx7-src.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reset/fsl,imx7-src.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX7 System Reset Controller
+
+maintainers:
+  - Anson Huang <Anson.Huang@nxp.com>
+
+description: |
+  The system reset controller can be used to reset various set of
+  peripherals. Device nodes that need access to reset lines should
+  specify them as a reset phandle in their corresponding node as
+  specified in reset.txt.
+
+  For list of all valid reset indices see
+    <dt-bindings/reset/imx7-reset.h> for i.MX7,
+    <dt-bindings/reset/imx8mq-reset.h> for i.MX8MQ and
+    <dt-bindings/reset/imx8mq-reset.h> for i.MX8MM and
+    <dt-bindings/reset/imx8mq-reset.h> for i.MX8MN and
+    <dt-bindings/reset/imx8mp-reset.h> for i.MX8MP
+
+properties:
+  compatible:
+    items:
+      - enum:
+        - fsl,imx7d-src
+        - fsl,imx8mq-src
+        - fsl,imx8mm-src
+        - fsl,imx8mn-src
+        - fsl,imx8mp-src
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  '#reset-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - '#reset-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    reset-controller@30390000 {
+        compatible = "fsl,imx7d-src", "syscon";
+        reg = <0x30390000 0x2000>;
+        interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
+        #reset-cells = <1>;
+    };
+
+...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
