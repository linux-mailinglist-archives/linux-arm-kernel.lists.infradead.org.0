Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 865491CEAC5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 04:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pDPEcwzxw+UU1w29LxDDg5Q7wEnbYQsHZuYhibuNyqo=; b=kZr
	f8dC+umBG2du/2UVIntGqWHmdbDjqpOYEOLptNcrr2KkL/Z1avLLsBHlwvhix8PU+9WzxN4mg26p8
	Ehuwuo8+h9AguwdZC1lN115qS82Mw/nSct6fK/iQtUiwmBYKMg4SngsK7ATarXKk6BVsgL33vZdHh
	TkRGayuqVCel54yZpkGh+fmBUwFz26YmkK+h3WAeqH4fbgvQnagupbJe9z8IbjrakUDMyprsqJiz+
	pcWqIWIzx1qV0sZ7yfgWVm3evqzmrYqCaaGUqdnHfPe5vs1RXoKKiQgO/uhEdWZf8XWthUXj8U4GL
	Oju53iR9dvllk/oL6n473Pa7oM/QSpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYKiy-0003Zj-Va; Tue, 12 May 2020 02:32:52 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYKio-0003Xi-11
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 02:32:44 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 285F11A0E7B;
 Tue, 12 May 2020 04:32:40 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id BE8731A0E81;
 Tue, 12 May 2020 04:32:35 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id D8E03402BC;
 Tue, 12 May 2020 10:32:29 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: p.zabel@pengutronix.de, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: reset: Convert i.MX reset to json-schema
Date: Tue, 12 May 2020 10:23:14 +0800
Message-Id: <1589250194-29441-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_193242_339867_F1DB8086 
X-CRM114-Status: GOOD (  12.13  )
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

Convert the i.MX reset binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/reset/fsl,imx-src.txt      | 49 ------------------
 .../devicetree/bindings/reset/fsl,imx-src.yaml     | 58 ++++++++++++++++++++++
 2 files changed, 58 insertions(+), 49 deletions(-)
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
index 0000000..276a533
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/fsl,imx-src.yaml
@@ -0,0 +1,58 @@
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
+    items:
+      - const: "fsl,imx51-src"
+
+  reg:
+    maxItems: 1
+
+  interrupts:
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
+    src@73fd0000 {
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
