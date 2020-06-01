Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CD11E9FEE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 10:17:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OHcQtiFSWjpnRvO0F8BSiFthRd/4ZEAJ9FiPC4pcX2E=; b=EgU39cxO7uFQS1GSYj3hHlf7xh
	8QNZSMHjMogEvJnma/I/qcmKw1ODf6FisuUt0y9E2WQ/kQeg5rdnOdyLrt/64CitOckYbNX8m5UGe
	4uEpaISbNsPhRGNm87RcAeuS14CT2CyzEckzjrFmgYzOnZYNJbGDvZOS1QqGvQv4LZutOGxhtNlL0
	X6YIND64B3GgWGV4UjfUahmysj6nDSPE96gn2mbeKkg1L0hjH0oDLl/FbYwyj+G+V3CQ1X5OTJqcf
	guceYBKDN9g1UqpSKo1w/RXrqRfsu24EPF5Omov+ZfU8wuuyYVSFswUa0FYHw8iZxMW8fxNegqcTJ
	MIrhhbsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jffdW-0001C7-9q; Mon, 01 Jun 2020 08:17:34 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jffd8-00015J-Vh
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 08:17:12 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AC1801A0675;
 Mon,  1 Jun 2020 10:17:09 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DFAD81A0695;
 Mon,  1 Jun 2020 10:17:03 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BB747402A7;
 Mon,  1 Jun 2020 16:16:56 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, ulf.hansson@linaro.org,
 sboyd@kernel.org, krzk@kernel.org, p.zabel@pengutronix.de,
 andrew.smirnov@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: power: Convert imx gpcv2 to json-schema
Date: Mon,  1 Jun 2020 16:06:43 +0800
Message-Id: <1590998803-29191-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590998803-29191-1-git-send-email-Anson.Huang@nxp.com>
References: <1590998803-29191-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_011711_293926_A72DB064 
X-CRM114-Status: GOOD (  15.36  )
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

Convert the i.MX GPCv2 binding to DT schema format using json-schema

Example is updated based on latest DT file and consumer's example is
removed since it is NOT that useful.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/power/fsl,imx-gpcv2.txt    |  77 ---------------
 .../devicetree/bindings/power/fsl,imx-gpcv2.yaml   | 108 +++++++++++++++++++++
 2 files changed, 108 insertions(+), 77 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt
 create mode 100644 Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml

diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt
deleted file mode 100644
index 6164920..0000000
--- a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt
+++ /dev/null
@@ -1,77 +0,0 @@
-Freescale i.MX General Power Controller v2
-==========================================
-
-The i.MX7S/D General Power Control (GPC) block contains Power Gating
-Control (PGC) for various power domains.
-
-Required properties:
-
-- compatible: Should be one of:
-	- "fsl,imx7d-gpc"
-	- "fsl,imx8mq-gpc"
-
-- reg: should be register base and length as documented in the
-  datasheet
-
-- interrupts: Should contain GPC interrupt request 1
-
-Power domains contained within GPC node are generic power domain
-providers, documented in
-Documentation/devicetree/bindings/power/power-domain.yaml, which are
-described as subnodes of the power gating controller 'pgc' node,
-which, in turn, is expected to contain the following:
-
-Required properties:
-
-- reg: Power domain index. Valid values are defined in
-  include/dt-bindings/power/imx7-power.h for fsl,imx7d-gpc and
-  include/dt-bindings/power/imx8m-power.h for fsl,imx8mq-gpc
-
-- #power-domain-cells: Should be 0
-
-Optional properties:
-
-- power-supply: Power supply used to power the domain
-- clocks: a number of phandles to clocks that need to be enabled during
-  domain power-up sequencing to ensure reset propagation into devices
-  located inside this power domain
-
-Example:
-
-	gpc: gpc@303a0000 {
-		compatible = "fsl,imx7d-gpc";
-		reg = <0x303a0000 0x1000>;
-		interrupt-controller;
-		interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
-		#interrupt-cells = <3>;
-		interrupt-parent = <&intc>;
-
-		pgc {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			pgc_pcie_phy: power-domain@1 {
-				#power-domain-cells = <0>;
-
-				reg = <1>;
-				power-supply = <&reg_1p0d>;
-			};
-		};
-	};
-
-
-Specifying power domain for IP modules
-======================================
-
-IP cores belonging to a power domain should contain a 'power-domains'
-property that is a phandle for PGC node representing the domain.
-
-Example of a device that is part of the PCIE_PHY power domain:
-
-	pcie: pcie@33800000 {
-	      reg = <0x33800000 0x4000>,
-	            <0x4ff00000 0x80000>;
-		/* ... */
-		power-domains = <&pgc_pcie_phy>;
-		/* ... */
-	};
diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
new file mode 100644
index 0000000..bde09a0
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
@@ -0,0 +1,108 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/fsl,imx-gpcv2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX General Power Controller v2
+
+maintainers:
+  - Andrey Smirnov <andrew.smirnov@gmail.com>
+
+description: |
+  The i.MX7S/D General Power Control (GPC) block contains Power Gating
+  Control (PGC) for various power domains.
+
+  Power domains contained within GPC node are generic power domain
+  providers, documented in
+  Documentation/devicetree/bindings/power/power-domain.yaml, which are
+  described as subnodes of the power gating controller 'pgc' node.
+
+  IP cores belonging to a power domain should contain a 'power-domains'
+  property that is a phandle for PGC node representing the domain.
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx7d-gpc
+      - fsl,imx8mq-gpc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  pgc:
+    type: object
+    description: list of power domains provided by this controller.
+
+    patternProperties:
+      "power-domain@[0-9]$":
+        type: object
+        properties:
+
+          '#power-domain-cells':
+            const: 0
+
+          reg:
+            description: |
+              Power domain index. Valid values are defined in
+              include/dt-bindings/power/imx7-power.h for fsl,imx7d-gpc and
+              include/dt-bindings/power/imx8m-power.h for fsl,imx8mq-gpc
+            maxItems: 1
+
+          clocks:
+            description: |
+              A number of phandles to clocks that need to be enabled during domain
+              power-up sequencing to ensure reset propagation into devices located
+              inside this power domain.
+            minItems: 1
+            maxItems: 5
+
+          power-supply: true
+
+        required:
+          - '#power-domain-cells'
+          - reg
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - pgc
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    gpc@303a0000 {
+        compatible = "fsl,imx7d-gpc";
+        reg = <0x303a0000 0x1000>;
+        interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+
+        pgc {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            pgc_mipi_phy: power-domain@0 {
+                #power-domain-cells = <0>;
+                reg = <0>;
+                power-supply = <&reg_1p0d>;
+            };
+
+            pgc_pcie_phy: power-domain@1 {
+                #power-domain-cells = <0>;
+                reg = <1>;
+                power-supply = <&reg_1p0d>;
+            };
+
+            pgc_hsic_phy: power-domain@2 {
+                #power-domain-cells = <0>;
+                reg = <2>;
+                power-supply = <&reg_1p2>;
+            };
+        };
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
