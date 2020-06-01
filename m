Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3AA1E9FE9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 10:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9BEXMdP0ouL7eUxydwI8x7bDL/mKAnUdt+P+V1J1q+I=; b=F5K
	gqScIWrmObSUBqzD/lDlQuSZG0a7LkDFosfxa/zDOyORXckMAfdHkeRx2qHWAstdJ9RbRjtCpxqQf
	+5R+6nAMJsJ03nEU0sEspEIB9E81xUcWvd9i9bYVPHmNQtRep5BeiJZTut71lcX3jYd6/9toa/A+b
	rp5ccDvPRMxXpauz6Gggl6tLsGoVtOZfC7hyP9eYs+u9Z6XTdNnaXZWUgedH9wIOzdgQS7eK4Ffts
	olGXKzb82BbxxCMdonn2OvGkQN4VyFlagwk6kz2iiq1BPoIQUK1/Rrr7C5aNBiOqyoC87uTz6wMmh
	SjEn9di3pQMm0Uc75Ya9Dr0OkClsH0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jffdF-000167-64; Mon, 01 Jun 2020 08:17:17 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jffd8-00015I-Kv
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 08:17:12 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7B15E1A0661;
 Mon,  1 Jun 2020 10:17:08 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B04B51A0675;
 Mon,  1 Jun 2020 10:17:02 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 72F1A40280;
 Mon,  1 Jun 2020 16:16:55 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, ulf.hansson@linaro.org,
 sboyd@kernel.org, krzk@kernel.org, p.zabel@pengutronix.de,
 andrew.smirnov@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: power: Convert imx gpc to json-schema
Date: Mon,  1 Jun 2020 16:06:42 +0800
Message-Id: <1590998803-29191-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_011710_960716_4CBB6E80 
X-CRM114-Status: GOOD (  16.37  )
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

Convert the i.MX GPC binding to DT schema format using json-schema

From latest reference manual, there is actually ONLY 1 interrupt for
GPC, so the additional GPC interrupt is removed.

Consumer's example is also removed since it is NOT that useful.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/power/fsl,imx-gpc.txt      |  91 ---------------
 .../devicetree/bindings/power/fsl,imx-gpc.yaml     | 124 +++++++++++++++++++++
 2 files changed, 124 insertions(+), 91 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/power/fsl,imx-gpc.txt
 create mode 100644 Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml

diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpc.txt b/Documentation/devicetree/bindings/power/fsl,imx-gpc.txt
deleted file mode 100644
index f0f5553..0000000
--- a/Documentation/devicetree/bindings/power/fsl,imx-gpc.txt
+++ /dev/null
@@ -1,91 +0,0 @@
-Freescale i.MX General Power Controller
-=======================================
-
-The i.MX6 General Power Control (GPC) block contains DVFS load tracking
-counters and Power Gating Control (PGC).
-
-Required properties:
-- compatible: Should be one of the following:
-  - fsl,imx6q-gpc
-  - fsl,imx6qp-gpc
-  - fsl,imx6sl-gpc
-  - fsl,imx6sx-gpc
-- reg: should be register base and length as documented in the
-  datasheet
-- interrupts: Should contain one interrupt specifier for the GPC interrupt
-- clocks: Must contain an entry for each entry in clock-names.
-  See Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
-- clock-names: Must include the following entries:
-  - ipg
-
-The power domains are generic power domain providers as documented in
-Documentation/devicetree/bindings/power/power-domain.yaml. They are described as
-subnodes of the power gating controller 'pgc' node of the GPC and should
-contain the following:
-
-Required properties:
-- reg: Must contain the DOMAIN_INDEX of this power domain
-  The following DOMAIN_INDEX values are valid for i.MX6Q:
-  ARM_DOMAIN     0
-  PU_DOMAIN      1
-  The following additional DOMAIN_INDEX value is valid for i.MX6SL:
-  DISPLAY_DOMAIN 2
-  The following additional DOMAIN_INDEX value is valid for i.MX6SX:
-  PCI_DOMAIN     3
-
-- #power-domain-cells: Should be 0
-
-Optional properties:
-- clocks: a number of phandles to clocks that need to be enabled during domain
-  power-up sequencing to ensure reset propagation into devices located inside
-  this power domain
-- power-supply: a phandle to the regulator powering this domain
-
-Example:
-
-	gpc: gpc@20dc000 {
-		compatible = "fsl,imx6q-gpc";
-		reg = <0x020dc000 0x4000>;
-		interrupts = <0 89 IRQ_TYPE_LEVEL_HIGH>,
-			     <0 90 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&clks IMX6QDL_CLK_IPG>;
-		clock-names = "ipg";
-
-		pgc {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			power-domain@0 {
-				reg = <0>;
-				#power-domain-cells = <0>;
-			};
-
-			pd_pu: power-domain@1 {
-				reg = <1>;
-				#power-domain-cells = <0>;
-				power-supply = <&reg_pu>;
-				clocks = <&clks IMX6QDL_CLK_GPU3D_CORE>,
-				         <&clks IMX6QDL_CLK_GPU3D_SHADER>,
-				         <&clks IMX6QDL_CLK_GPU2D_CORE>,
-				         <&clks IMX6QDL_CLK_GPU2D_AXI>,
-				         <&clks IMX6QDL_CLK_OPENVG_AXI>,
-				         <&clks IMX6QDL_CLK_VPU_AXI>;
-			};
-		};
-	};
-
-
-Specifying power domain for IP modules
-======================================
-
-IP cores belonging to a power domain should contain a 'power-domains' property
-that is a phandle pointing to the power domain the device belongs to.
-
-Example of a device that is part of the PU power domain:
-
-	vpu: vpu@2040000 {
-		reg = <0x02040000 0x3c000>;
-		/* ... */
-		power-domains = <&pd_pu>;
-		/* ... */
-	};
diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml b/Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml
new file mode 100644
index 0000000..a055b3e
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml
@@ -0,0 +1,124 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/fsl,imx-gpc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX General Power Controller
+
+maintainers:
+  - Philipp Zabel <p.zabel@pengutronix.de>
+
+description: |
+  The i.MX6 General Power Control (GPC) block contains DVFS load tracking
+  counters and Power Gating Control (PGC).
+
+  The power domains are generic power domain providers as documented in
+  Documentation/devicetree/bindings/power/power-domain.yaml. They are
+  described as subnodes of the power gating controller 'pgc' node of the GPC.
+
+  IP cores belonging to a power domain should contain a 'power-domains'
+  property that is a phandle pointing to the power domain the device belongs
+  to.
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx6q-gpc
+      - fsl,imx6qp-gpc
+      - fsl,imx6sl-gpc
+      - fsl,imx6sx-gpc
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
+              The following DOMAIN_INDEX values are valid for i.MX6Q:
+                ARM_DOMAIN     0
+                PU_DOMAIN      1
+              The following additional DOMAIN_INDEX value is valid for i.MX6SL:
+                DISPLAY_DOMAIN 2
+              The following additional DOMAIN_INDEX value is valid for i.MX6SX:
+                PCI_DOMAIN     3
+            maxItems: 1
+
+          clocks:
+            description: |
+              A number of phandles to clocks that need to be enabled during domain
+              power-up sequencing to ensure reset propagation into devices located
+              inside this power domain.
+            minItems: 1
+            maxItems: 7
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
+  - clocks
+  - clock-names
+  - pgc
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx6qdl-clock.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    gpc@20dc000 {
+        compatible = "fsl,imx6q-gpc";
+        reg = <0x020dc000 0x4000>;
+        interrupts = <0 89 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clks IMX6QDL_CLK_IPG>;
+        clock-names = "ipg";
+
+        pgc {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            power-domain@0 {
+                reg = <0>;
+                #power-domain-cells = <0>;
+            };
+
+            pd_pu: power-domain@1 {
+                reg = <1>;
+                #power-domain-cells = <0>;
+                power-supply = <&reg_pu>;
+                clocks = <&clks IMX6QDL_CLK_GPU3D_CORE>,
+                         <&clks IMX6QDL_CLK_GPU3D_SHADER>,
+                         <&clks IMX6QDL_CLK_GPU2D_CORE>,
+                         <&clks IMX6QDL_CLK_GPU2D_AXI>,
+                         <&clks IMX6QDL_CLK_OPENVG_AXI>,
+                         <&clks IMX6QDL_CLK_VPU_AXI>;
+            };
+        };
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
