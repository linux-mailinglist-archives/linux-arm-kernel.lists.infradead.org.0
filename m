Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B306D1D74E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 12:13:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RvGnObidVF556k2QReYtJbLUYiMnO6I9KIFne0mmi2w=; b=s2b
	3l32puRR6QsQzGfpn9mnITmkIBfKjQRxhDNvxP+U3CEMO8yOpNzoXyK5+OjIFGNvBh91NoZRdiq6t
	s6fyJSTYnNlAl1Tjnn2PHWwZO802C+yl+jLL9IkBwzR4HIy6l2b8ds7R+1r1S9enNf6q2P1TVZwKr
	2fkVkN3mhFD0nKkYF2s1lTqyWhzHB133/uXyTl26fxP20tRPvZCIhPVHW6K9m/kfvx7upPyX0yX5e
	SJzJwXMW8K9n2zFLUDH5weNoGHJ0Blw7gnzhjfRPP/f8tYgqwa/DtaTUCOlVyhcG6KyHok1+/jKHf
	Y22mugi32LzJQD6WGnJip++8pSewx7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jacmI-00065T-9v; Mon, 18 May 2020 10:13:46 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jacm7-00062p-Pj
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 10:13:38 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D9583200060;
 Mon, 18 May 2020 12:13:14 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 759A6200781;
 Mon, 18 May 2020 12:13:10 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 0D20A402A6;
 Mon, 18 May 2020 18:13:04 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: p.zabel@pengutronix.de, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2] dt-bindings: reset: Convert i.MX reset to json-schema
Date: Mon, 18 May 2020 18:03:32 +0800
Message-Id: <1589796212-9993-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_031336_103038_2A051CFC 
X-CRM114-Status: GOOD (  12.81  )
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

Convert the i.MX reset binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- add the compatible strings per SoC;
	- use "reset-controller" as node name instead of src;
	- add interrupt items description.
---
 .../devicetree/bindings/reset/fsl,imx-src.txt      | 49 -----------
 .../devicetree/bindings/reset/fsl,imx-src.yaml     | 98 ++++++++++++++++++++++
 2 files changed, 98 insertions(+), 49 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/reset/fsl,imx-src.txt
 create mode 100644 Documentation/devicetree/bindings/reset/fsl,imx-src.yaml

diff --git a/Documentation/devicetree/bindings/reset/fsl,imx-src.txt b/Documentation/devicetree/bindings/reset/fsl,imx-src.txt
deleted file mode 100644
index 6ed79e6..0000000
--- a/Documentation/devicetree/bindings/reset/fsl,imx-src.txt
+++ /dev/null
@@ -1,49 +0,0 @@
-Freescale i.MX System Reset Controller
-======================================
-
-Please also refer to reset.txt in this directory for common reset
-controller binding usage.
-
-Required properties:
-- compatible: Should be "fsl,<chip>-src"
-- reg: should be register base and length as documented in the
-  datasheet
-- interrupts: Should contain SRC interrupt and CPU WDOG interrupt,
-  in this order.
-- #reset-cells: 1, see below
-
-example:
-
-src: src@20d8000 {
-        compatible = "fsl,imx6q-src";
-        reg = <0x020d8000 0x4000>;
-        interrupts = <0 91 0x04 0 96 0x04>;
-        #reset-cells = <1>;
-};
-
-Specifying reset lines connected to IP modules
-==============================================
-
-The system reset controller can be used to reset the GPU, VPU,
-IPU, and OpenVG IP modules on i.MX5 and i.MX6 ICs. Those device
-nodes should specify the reset line on the SRC in their resets
-property, containing a phandle to the SRC device node and a
-RESET_INDEX specifying which module to reset, as described in
-reset.txt
-
-example:
-
-        ipu1: ipu@2400000 {
-                resets = <&src 2>;
-        };
-        ipu2: ipu@2800000 {
-                resets = <&src 4>;
-        };
-
-The following RESET_INDEX values are valid for i.MX5:
-GPU_RESET     0
-VPU_RESET     1
-IPU1_RESET    2
-OPEN_VG_RESET 3
-The following additional RESET_INDEX value is valid for i.MX6:
-IPU2_RESET    4
diff --git a/Documentation/devicetree/bindings/reset/fsl,imx-src.yaml b/Documentation/devicetree/bindings/reset/fsl,imx-src.yaml
new file mode 100644
index 0000000..7cd6095
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/fsl,imx-src.yaml
@@ -0,0 +1,98 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reset/fsl,imx-src.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX System Reset Controller
+
+maintainers:
+  - Philipp Zabel <p.zabel@pengutronix.de>
+
+description: |
+  The system reset controller can be used to reset the GPU, VPU,
+  IPU, and OpenVG IP modules on i.MX5 and i.MX6 ICs. Those device
+  nodes should specify the reset line on the SRC in their resets
+  property, containing a phandle to the SRC device node and a
+  RESET_INDEX specifying which module to reset, as described in
+  reset.txt
+
+  The following RESET_INDEX values are valid for i.MX5:
+    GPU_RESET     0
+    VPU_RESET     1
+    IPU1_RESET    2
+    OPEN_VG_RESET 3
+  The following additional RESET_INDEX value is valid for i.MX6:
+    IPU2_RESET    4
+
+properties:
+  compatible:
+    oneOf:
+      - description: on i.MX51 the following compatible must be specified
+        items:
+          - const: "fsl,imx51-src"
+
+      - description: on i.MX50 the following compatibles must be specified
+        items:
+          - const: "fsl,imx50-src"
+          - const: "fsl,imx51-src"
+
+      - description: on i.MX53 the following compatibles must be specified
+        items:
+          - const: "fsl,imx53-src"
+          - const: "fsl,imx51-src"
+
+      - description: on i.MX6Q the following compatibles must be specified
+        items:
+          - const: "fsl,imx6q-src"
+          - const: "fsl,imx51-src"
+
+      - description: on i.MX6SX the following compatibles must be specified
+        items:
+          - const: "fsl,imx6sx-src"
+          - const: "fsl,imx51-src"
+
+      - description: on i.MX6SL the following compatibles must be specified
+        items:
+          - const: "fsl,imx6sl-src"
+          - const: "fsl,imx51-src"
+
+      - description: on i.MX6UL the following compatibles must be specified
+        items:
+          - const: "fsl,imx6ul-src"
+          - const: "fsl,imx51-src"
+
+      - description: on i.MX6SLL the following compatibles must be specified
+        items:
+          - const: "fsl,imx6sll-src"
+          - const: "fsl,imx51-src"
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: SRC interrupt
+      - description: CPU WDOG interrupts out of SRC
+    minItems: 1
+    maxItems: 2
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
+    reset-controller@73fd0000 {
+        compatible = "fsl,imx51-src";
+        reg = <0x73fd0000 0x4000>;
+        interrupts = <75>;
+        #reset-cells = <1>;
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
