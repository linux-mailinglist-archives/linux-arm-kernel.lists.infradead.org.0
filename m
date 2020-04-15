Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 727F91A91A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 05:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dGTDsRz4tjy7KGxdkjyBHKg299k9FHfeU0jKKBP310Y=; b=TAv
	SOPrs/OPll6lqzYRJjzYMlgfaqTSZGt3JVK+N5nJvQl7TgBNxhJg2FkxWLOnAKNGRLGOr5ueptUGR
	pMgm4BVZSp/569FuZ0HOzHr6xayF1vuDQSwjDN6K02vIXsLlJ3tIqhcXWO0i72aA28ca6so7lYJxW
	lNwjI93ubinIk9VgrmIXUQ2SmQPVF66900j8OuM1tEdHfQ5jo5aWC+FVwr3FenYUZx6537gWi6Wcs
	mu3tlTtLhLChMDM64wFcO+tBhxz+yRq/WOPBXXkEBhoxK3O5z2rgj9644VJsp68narV5XEeI/wFUJ
	526h8wOGxPQLWTa/AeQhrK20LRM+K9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOYwN-0005Az-02; Wed, 15 Apr 2020 03:42:19 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOYvg-0004nJ-3W
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 03:41:42 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 441CA2006E5;
 Wed, 15 Apr 2020 05:41:32 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DCE29200715;
 Wed, 15 Apr 2020 05:41:27 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8277B402D8;
 Wed, 15 Apr 2020 11:41:22 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: srinivas.kandagatla@linaro.org, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: nvmem: Convert i.MX OCOTP to json-schema
Date: Wed, 15 Apr 2020 11:33:20 +0800
Message-Id: <1586921602-1877-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_204136_414839_04893811 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

Convert the i.MX OCOTP binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/nvmem/imx-ocotp.txt        |  50 ----------
 .../devicetree/bindings/nvmem/imx-ocotp.yaml       | 103 +++++++++++++++++++++
 2 files changed, 103 insertions(+), 50 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
 create mode 100644 Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml

diff --git a/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt b/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
deleted file mode 100644
index 6e346d5..0000000
--- a/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
+++ /dev/null
@@ -1,50 +0,0 @@
-Freescale i.MX6 On-Chip OTP Controller (OCOTP) device tree bindings
-
-This binding represents the on-chip eFuse OTP controller found on
-i.MX6Q/D, i.MX6DL/S, i.MX6SL, i.MX6SX, i.MX6UL, i.MX6ULL/ULZ, i.MX6SLL,
-i.MX7D/S, i.MX7ULP, i.MX8MQ, i.MX8MM, i.MX8MN and i.MX8MP SoCs.
-
-Required properties:
-- compatible: should be one of
-	"fsl,imx6q-ocotp" (i.MX6Q/D/DL/S),
-	"fsl,imx6sl-ocotp" (i.MX6SL), or
-	"fsl,imx6sx-ocotp" (i.MX6SX),
-	"fsl,imx6ul-ocotp" (i.MX6UL),
-	"fsl,imx6ull-ocotp" (i.MX6ULL/ULZ),
-	"fsl,imx7d-ocotp" (i.MX7D/S),
-	"fsl,imx6sll-ocotp" (i.MX6SLL),
-	"fsl,imx7ulp-ocotp" (i.MX7ULP),
-	"fsl,imx8mq-ocotp" (i.MX8MQ),
-	"fsl,imx8mm-ocotp" (i.MX8MM),
-	"fsl,imx8mn-ocotp" (i.MX8MN),
-	"fsl,imx8mp-ocotp" (i.MX8MP),
-	followed by "syscon".
-- #address-cells : Should be 1
-- #size-cells : Should be 1
-- reg: Should contain the register base and length.
-- clocks: Should contain a phandle pointing to the gated peripheral clock.
-
-Optional properties:
-- read-only: disable write access
-
-Optional Child nodes:
-
-- Data cells of ocotp:
-  Detailed bindings are described in bindings/nvmem/nvmem.txt
-
-Example:
-	ocotp: ocotp@21bc000 {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "fsl,imx6sx-ocotp", "syscon";
-		reg = <0x021bc000 0x4000>;
-		clocks = <&clks IMX6SX_CLK_OCOTP>;
-
-		tempmon_calib: calib@38 {
-			reg = <0x38 4>;
-		};
-
-		tempmon_temp_grade: temp-grade@20 {
-			reg = <0x20 4>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml b/Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml
new file mode 100644
index 0000000..70aa637
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml
@@ -0,0 +1,103 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/imx-ocotp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX6 On-Chip OTP Controller (OCOTP) device tree bindings
+
+maintainers:
+  - Anson Huang <Anson.Huang@nxp.com>
+
+description: |
+  This binding represents the on-chip eFuse OTP controller found on
+  i.MX6Q/D, i.MX6DL/S, i.MX6SL, i.MX6SX, i.MX6UL, i.MX6ULL/ULZ, i.MX6SLL,
+  i.MX7D/S, i.MX7ULP, i.MX8MQ, i.MX8MM, i.MX8MN and i.MX8MP SoCs.
+
+allOf:
+  - $ref: "nvmem.yaml#"
+
+properties:
+  compatible:
+    anyOf:
+      - items:
+        - enum:
+          - fsl,imx6q-ocotp
+          - fsl,imx6sl-ocotp
+          - fsl,imx6sx-ocotp
+          - fsl,imx6ul-ocotp
+          - fsl,imx6ull-ocotp
+          - fsl,imx7d-ocotp
+          - fsl,imx6sll-ocotp
+          - fsl,imx7ulp-ocotp
+          - fsl,imx8mq-ocotp
+          - fsl,imx8mm-ocotp
+          - fsl,imx8mn-ocotp
+          - fsl,imx8mp-ocotp
+
+        - const: syscon
+
+      - contains:
+          const: syscon
+        additionalItems: true
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  clocks:
+    description: |
+      OCOTP's clock source.
+    maxItems: 1
+
+required:
+  - "#address-cells"
+  - "#size-cells"
+  - compatible
+  - reg
+
+patternProperties:
+  "^.*@[0-9a-f]+$":
+    type: object
+
+    properties:
+      reg:
+        maxItems: 1
+        description:
+          Offset and size in bytes within the storage device.
+
+    required:
+      - reg
+
+    additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx6sx-clock.h>
+
+    ocotp: efuse@21bc000 {
+        #address-cells = <1>;
+        #size-cells = <1>;
+        compatible = "fsl,imx6sx-ocotp", "syscon";
+        reg = <0x021bc000 0x4000>;
+        clocks = <&clks IMX6SX_CLK_OCOTP>;
+
+        cpu_speed_grade: speed-grade@10 {
+            reg = <0x10 4>;
+        };
+
+        tempmon_calib: calib@38 {
+            reg = <0x38 4>;
+        };
+
+        tempmon_temp_grade: temp-grade@20 {
+            reg = <0x20 4>;
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
