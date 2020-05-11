Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E010D1CD95A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 14:07:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uK2SQJwXr2J3dQCjg7WSrmh2TAEBndHo+IC/YxMmoHQ=; b=MMn
	gr9NmK9qUNTu65MUdYxG/JXUZJ1v0wjAfRN4rvYmXk+tAPbHj0MAbF4SiPiuVhnEiQgg2soX/Z8fR
	+bZ0n5VYKhY/DWzUjc8jSr+Z3sWQcIIJ1spd+C/Cd8J4/LTMB7seF6mfUBIbullGdUG4c/p+fP8Wf
	M2u74X7HTUxsjaBkv0jE56tO6ipZWpXgy+Taub/8K8+pqRdK54YQIQQE1SjAUskBdfiCVpRjw4z2B
	sg7PuWrzMarNRnWFAT1Um16p9qOxpOPCvkjOaRgDgqfSaGfr0rnLuukMZLXjuH1EcxkQ7l7BpE/C7
	XErJzfTV3WpYdU4F6wvon5NIXdEoRtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY7DJ-0006DY-GJ; Mon, 11 May 2020 12:07:17 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY7DA-0006D1-Ft
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 12:07:10 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A8132200BA6;
 Mon, 11 May 2020 14:07:06 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F004F20025F;
 Mon, 11 May 2020 14:07:01 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 195BF402A7;
 Mon, 11 May 2020 20:06:56 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: p.zabel@pengutronix.de, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 andrew.smirnov@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2] dt-bindings: reset: Convert i.MX7 reset to json-schema
Date: Mon, 11 May 2020 19:57:42 +0800
Message-Id: <1589198262-21372-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_050708_811457_3756EEA1 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

Convert the i.MX7 reset binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- Improve description;
	- Remove i.MX8MM and i.MX8MN compatible, they use i.MX8MQ's compatible;
	- Keep original author as maintainer;
	- Remove unnecessary "..." at the end of file.
---
 .../devicetree/bindings/reset/fsl,imx7-src.txt     | 56 ---------------------
 .../devicetree/bindings/reset/fsl,imx7-src.yaml    | 58 ++++++++++++++++++++++
 2 files changed, 58 insertions(+), 56 deletions(-)
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
index 0000000..b1a71c1
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/fsl,imx7-src.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reset/fsl,imx7-src.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX7 System Reset Controller
+
+maintainers:
+  - Andrey Smirnov <andrew.smirnov@gmail.com>
+
+description: |
+  The system reset controller can be used to reset various set of
+  peripherals. Device nodes that need access to reset lines should
+  specify them as a reset phandle in their corresponding node as
+  specified in reset.txt.
+
+  For list of all valid reset indices see
+    <dt-bindings/reset/imx7-reset.h> for i.MX7,
+    <dt-bindings/reset/imx8mq-reset.h> for i.MX8MQ, i.MX8MM and i.MX8MN,
+    <dt-bindings/reset/imx8mp-reset.h> for i.MX8MP.
+
+properties:
+  compatible:
+    items:
+      - enum:
+        - fsl,imx7d-src
+        - fsl,imx8mq-src
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
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
