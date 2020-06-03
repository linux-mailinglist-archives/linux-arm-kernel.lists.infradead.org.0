Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF0E1EC97A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 08:24:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3mySo9pX3JCgLccJdl7Zf8SY6nW5wdnDxlMUGJNBkas=; b=blJPgovlwSSaEasXwcih0np5/P
	u6Dfc7Uft/5gAPETTqZPnfNrLru58SoOZ4JrcsuinPvXk8m6l0Xm2H0YzuAnSxRRzlpbhoSBjfXIT
	T1JYkoeiZAJKGz9LNewf/keCWurcCJzodOyFFC+Gd2QTHswDNSqCPW4efucOSufHXyGr/MIb3vrHi
	ES5/7YCkOj6a/FDWngkwTaocNZ3wQcK/a7+CjFAWFQXa3kUd7k1G8R5g7qihkw1hlvpKGwws+1r9/
	XfeoOPhsx/TTZgSssWRsPFTYQYhTiKDGcJJHQpLf7iEhq68srxOaAahFWJZeAIV8ctY9LokGKqO9C
	3ZjEdeDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgMp6-0005uO-E5; Wed, 03 Jun 2020 06:24:24 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgMoi-0005kY-Pe
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 06:24:02 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 88C00200089;
 Wed,  3 Jun 2020 08:23:59 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A65AF200D3C;
 Wed,  3 Jun 2020 08:23:54 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 60532402B3;
 Wed,  3 Jun 2020 14:23:48 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: broonie@kernel.org, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 marex@denx.de, linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: spi: Convert mxs spi to json-schema
Date: Wed,  3 Jun 2020 14:13:27 +0800
Message-Id: <1591164809-13964-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591164809-13964-1-git-send-email-Anson.Huang@nxp.com>
References: <1591164809-13964-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_232401_100969_DD8376BA 
X-CRM114-Status: GOOD (  10.94  )
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

Convert the MXS SPI binding to DT schema format using json-schema

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 Documentation/devicetree/bindings/spi/mxs-spi.txt  | 26 ----------
 Documentation/devicetree/bindings/spi/mxs-spi.yaml | 55 ++++++++++++++++++++++
 2 files changed, 55 insertions(+), 26 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/spi/mxs-spi.txt
 create mode 100644 Documentation/devicetree/bindings/spi/mxs-spi.yaml

diff --git a/Documentation/devicetree/bindings/spi/mxs-spi.txt b/Documentation/devicetree/bindings/spi/mxs-spi.txt
deleted file mode 100644
index 3499b73..0000000
--- a/Documentation/devicetree/bindings/spi/mxs-spi.txt
+++ /dev/null
@@ -1,26 +0,0 @@
-* Freescale MX233/MX28 SSP/SPI
-
-Required properties:
-- compatible: Should be "fsl,<soc>-spi", where soc is "imx23" or "imx28"
-- reg: Offset and length of the register set for the device
-- interrupts: Should contain SSP ERROR interrupt
-- dmas: DMA specifier, consisting of a phandle to DMA controller node
-  and SSP DMA channel ID.
-  Refer to dma.txt and fsl-mxs-dma.txt for details.
-- dma-names: Must be "rx-tx".
-
-Optional properties:
-- clock-frequency : Input clock frequency to the SPI block in Hz.
-		    Default is 160000000 Hz.
-
-Example:
-
-ssp0: ssp@80010000 {
-	#address-cells = <1>;
-	#size-cells = <0>;
-	compatible = "fsl,imx28-spi";
-	reg = <0x80010000 0x2000>;
-	interrupts = <96>;
-	dmas = <&dma_apbh 0>;
-	dma-names = "rx-tx";
-};
diff --git a/Documentation/devicetree/bindings/spi/mxs-spi.yaml b/Documentation/devicetree/bindings/spi/mxs-spi.yaml
new file mode 100644
index 0000000..ef99d12
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/mxs-spi.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/mxs-spi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale MX233/MX28 SSP/SPI
+
+maintainers:
+  - Marek Vasut <marex@denx.de>
+
+allOf:
+  - $ref: "/schemas/spi/spi-controller.yaml#"
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx23-spi
+      - fsl,imx28-spi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  dmas:
+    maxItems: 1
+
+  dma-names:
+    const: rx-tx
+
+  clock-frequency:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: input clock frequency to the SPI block in Hz.
+    default: 160000000
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - dmas
+  - dma-names
+
+examples:
+  - |
+    spi@80010000 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        compatible = "fsl,imx28-spi";
+        reg = <0x80010000 0x2000>;
+        interrupts = <96>;
+        dmas = <&dma_apbh 0>;
+        dma-names = "rx-tx";
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
