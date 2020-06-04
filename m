Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 850D31EDB12
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 04:06:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iQgeOflrH9hA7l4qflRyw64AUBlHfPDzaWSQVMADGbc=; b=sMEqAVhFQ48U2smIKL8FplRssB
	0TKzVKW4QKmg0lI6F2GUlCl1nrR0HMXJkiKz1RmMdd2oZdEWvY2WYVv5cXL60Wk6Aa8aTfh0mpgHI
	JJbZDKsxAY0PK+QJef2QSKPp1FOj0k66c43bVU9fznAKYHGqHV8Ei1ZWHUIMNSxqOMVSGQX65onCl
	HafKmSN7HzbK2EQKNhBe/u8nbAowKQPUgSby27o6Ns9pCyUMBRhLYusS7kKnnFFfGLFcGAkoZFwWC
	l63t0TSKclxkhs2A8sS7Y3kUBJCDmoeBI55pNJZgKTaItlKUONxZVtT0O5b9/q+RI6GRabJFngi4Q
	clzBoVxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgfHR-0001rR-Ff; Thu, 04 Jun 2020 02:06:53 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgfGh-0001Dg-3k
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 02:06:09 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A612520011E;
 Thu,  4 Jun 2020 04:06:05 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 97C5020013B;
 Thu,  4 Jun 2020 04:06:00 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 4EFFF402B0;
 Thu,  4 Jun 2020 10:05:54 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: broonie@kernel.org, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 marex@denx.de, linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2 3/3] dt-bindings: spi: Convert imx lpspi to json-schema
Date: Thu,  4 Jun 2020 09:55:31 +0800
Message-Id: <1591235731-15673-4-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591235731-15673-1-git-send-email-Anson.Huang@nxp.com>
References: <1591235731-15673-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_190607_448985_171E90B4 
X-CRM114-Status: GOOD (  12.16  )
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

Convert the i.MX LPSPI binding to DT schema format using json-schema

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- add "unevaluatedProperties: false".
---
 .../devicetree/bindings/spi/spi-fsl-lpspi.txt      | 29 ----------
 .../devicetree/bindings/spi/spi-fsl-lpspi.yaml     | 62 ++++++++++++++++++++++
 2 files changed, 62 insertions(+), 29 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-fsl-lpspi.txt
 create mode 100644 Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml

diff --git a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.txt b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.txt
deleted file mode 100644
index e71b81a..0000000
--- a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.txt
+++ /dev/null
@@ -1,29 +0,0 @@
-* Freescale Low Power SPI (LPSPI) for i.MX
-
-Required properties:
-- compatible :
-  - "fsl,imx7ulp-spi" for LPSPI compatible with the one integrated on i.MX7ULP soc
-  - "fsl,imx8qxp-spi" for LPSPI compatible with the one integrated on i.MX8QXP soc
-- reg : address and length of the lpspi master registers
-- interrupt-parent : core interrupt controller
-- interrupts : lpspi interrupt
-- clocks : lpspi clock specifier. Its number and order need to correspond to the
-	   value in clock-names.
-- clock-names : Corresponding to per clock and ipg clock in "clocks"
-		respectively. In i.MX7ULP, it only has per clk, so use CLK_DUMMY
-		to fill the "ipg" blank.
-- spi-slave : spi slave mode support. In slave mode, add this attribute without
-	      value. In master mode, remove it.
-
-Examples:
-
-lpspi2: lpspi@40290000 {
-	compatible = "fsl,imx7ulp-spi";
-	reg = <0x40290000 0x10000>;
-	interrupt-parent = <&intc>;
-	interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
-	clocks = <&clks IMX7ULP_CLK_LPSPI2>,
-		 <&clks IMX7ULP_CLK_DUMMY>;
-	clock-names = "per", "ipg";
-	spi-slave;
-};
diff --git a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
new file mode 100644
index 0000000..8ceb529
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/spi-fsl-lpspi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale Low Power SPI (LPSPI) for i.MX
+
+maintainers:
+  - Anson Huang <Anson.Huang@nxp.com>
+
+allOf:
+  - $ref: "/schemas/spi/spi-controller.yaml#"
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx7ulp-spi
+      - fsl,imx8qxp-spi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: SoC SPI per clock
+      - description: SoC SPI ipg clock
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: per
+      - const: ipg
+    maxItems: 2
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx7ulp-clock.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    spi@40290000 {
+        compatible = "fsl,imx7ulp-spi";
+        reg = <0x40290000 0x10000>;
+        interrupt-parent = <&intc>;
+        interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clks IMX7ULP_CLK_LPSPI2>,
+                 <&clks IMX7ULP_CLK_DUMMY>;
+        clock-names = "per", "ipg";
+        spi-slave;
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
