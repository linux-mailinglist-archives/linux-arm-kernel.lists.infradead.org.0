Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C5F1EDAFE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 04:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UF9UD5c6HSj5Vrn2o/mk61EFpBuMZYf81ASpPm0Awb8=; b=DX7Y5f012KPQS3kn4zryWs4LJG
	X3hr9E0E94f8m1DGGKunN3yzeU/9+VnE7h6xhBPOXXg6MkxQU00pE/wYXGHTo9/Az0NWaqtpc4Owc
	Df1vy+x28yCxw57q00zehbUCq2OGi3J6rxB0u1H5LZ4jULV0053v1AMhksm3mzJyvt0wwHVuEPybW
	ge+iXL2UGAJFZkb7GB1s7TG+S5ZzdvvG4YCIYG4BnaxDn9cO3fmPZXGGwMws1dWlHSf28PGTRUWfr
	5csDdENktOWTNs9tdUFpN7lepL7ZrZYZQX9XA0U8HxLDfUxjzfm+wMwygdXnwuX6ESAx0ZKKQm94w
	i2ByQ1wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgfB7-00039m-3Y; Thu, 04 Jun 2020 02:00:21 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgfAf-00031r-Ch
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 01:59:55 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3723F1A10CF;
 Thu,  4 Jun 2020 03:59:52 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EFA041A0192;
 Thu,  4 Jun 2020 03:59:46 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 3D881402B3;
 Thu,  4 Jun 2020 09:59:40 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux@rempel-privat.de, wolfram@the-dreams.de, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2 1/3] dt-bindings: i2c: Convert imx lpi2c to json-schema
Date: Thu,  4 Jun 2020 09:49:16 +0800
Message-Id: <1591235358-15516-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591235358-15516-1-git-send-email-Anson.Huang@nxp.com>
References: <1591235358-15516-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_185953_700922_0AE97538 
X-CRM114-Status: GOOD (  10.75  )
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

Convert the i.MX LPI2C binding to DT schema format using json-schema

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- add "additionalProperties: false".
---
 .../devicetree/bindings/i2c/i2c-imx-lpi2c.txt      | 20 ---------
 .../devicetree/bindings/i2c/i2c-imx-lpi2c.yaml     | 47 ++++++++++++++++++++++
 2 files changed, 47 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.txt
 create mode 100644 Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.yaml

diff --git a/Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.txt b/Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.txt
deleted file mode 100644
index f0c072f..0000000
--- a/Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-* Freescale Low Power Inter IC (LPI2C) for i.MX
-
-Required properties:
-- compatible :
-  - "fsl,imx7ulp-lpi2c" for LPI2C compatible with the one integrated on i.MX7ULP soc
-  - "fsl,imx8qxp-lpi2c" for LPI2C compatible with the one integrated on i.MX8QXP soc
-  - "fsl,imx8qm-lpi2c" for LPI2C compatible with the one integrated on i.MX8QM soc
-- reg : address and length of the lpi2c master registers
-- interrupts : lpi2c interrupt
-- clocks : lpi2c clock specifier
-
-Examples:
-
-lpi2c7: lpi2c7@40a50000 {
-	compatible = "fsl,imx7ulp-lpi2c";
-	reg = <0x40A50000 0x10000>;
-	interrupt-parent = <&intc>;
-	interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
-	clocks = <&clks IMX7ULP_CLK_LPI2C7>;
-};
diff --git a/Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.yaml b/Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.yaml
new file mode 100644
index 0000000..ac0bc5d
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/i2c-imx-lpi2c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale Low Power Inter IC (LPI2C) for i.MX
+
+maintainers:
+  - Anson Huang <Anson.Huang@nxp.com>
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx7ulp-lpi2c
+      - fsl,imx8qxp-lpi2c
+      - fsl,imx8qm-lpi2c
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
+    #include <dt-bindings/clock/imx7ulp-clock.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    lpi2c7@40a50000 {
+        compatible = "fsl,imx7ulp-lpi2c";
+        reg = <0x40A50000 0x10000>;
+        interrupt-parent = <&intc>;
+        interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clks IMX7ULP_CLK_LPI2C7>;
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
