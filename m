Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6791EB3F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 05:49:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bguya7riKYXu5ba4whEOrQEWUCap7SMVs6b6d7hNRd0=; b=lYTTNzlzJ/ITa7VBlae9jz6iU/
	GL+3tJL4cg3yVyCJ5kpcon1z/rk8cwHugQ/WFwhgjIgHczWEbOVCJP1bgGSuEVtMnkv8paTlFb0Mf
	WB/z5aepYvrgQtqrDhokyvyyljMlpUPvuSImZZMNFe9LMvQ8hOiULFLimyCluqus6DcuiCSAxudKq
	TOEIshlQaIWiB/sPVKheWB//xqYK3pyPHNrA+mg2gYW1OycSTMdIOmr0ur5nKF6NVodS8JlGazQwX
	BA+m6Knkr/U83FNWAOSkdclGtrvJ8nGzwHEMk2Va0PBWQ0BtlIVMk/qXOlGfP0c0Zfsk2maQmG5qA
	md5wsYIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfxvL-0001pZ-4M; Tue, 02 Jun 2020 03:49:11 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfxuW-00019i-Ks
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 03:48:22 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 599DE1A0AA9;
 Tue,  2 Jun 2020 05:48:14 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 727471A0A48;
 Tue,  2 Jun 2020 05:48:09 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 2AEB4402B1;
 Tue,  2 Jun 2020 11:48:03 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 mpa@pengutronix.de, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: mmc: Convert imx mmc to json-schema
Date: Tue,  2 Jun 2020 11:37:45 +0800
Message-Id: <1591069066-12727-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591069066-12727-1-git-send-email-Anson.Huang@nxp.com>
References: <1591069066-12727-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_204820_837544_9D316BF3 
X-CRM114-Status: GOOD (  10.02  )
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

Convert the i.MX MMC binding to DT schema format using json-schema

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/mmc/fsl-imx-mmc.txt        | 23 ----------
 .../devicetree/bindings/mmc/fsl-imx-mmc.yaml       | 51 ++++++++++++++++++++++
 2 files changed, 51 insertions(+), 23 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mmc/fsl-imx-mmc.txt
 create mode 100644 Documentation/devicetree/bindings/mmc/fsl-imx-mmc.yaml

diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-mmc.txt b/Documentation/devicetree/bindings/mmc/fsl-imx-mmc.txt
deleted file mode 100644
index 184ccff..0000000
--- a/Documentation/devicetree/bindings/mmc/fsl-imx-mmc.txt
+++ /dev/null
@@ -1,23 +0,0 @@
-* Freescale Secure Digital Host Controller for i.MX2/3 series
-
-This file documents differences to the properties defined in mmc.txt.
-
-Required properties:
-- compatible : Should be "fsl,<chip>-mmc", chip can be imx21 or imx31
-
-Optional properties:
-- dmas: One DMA phandle with arguments as defined by the devicetree bindings
-	of the used DMA controller.
-- dma-names: Has to be "rx-tx".
-
-Example:
-
-sdhci1: sdhci@10014000 {
-	compatible = "fsl,imx27-mmc", "fsl,imx21-mmc";
-	reg = <0x10014000 0x1000>;
-	interrupts = <11>;
-	dmas = <&dma 7>;
-	dma-names = "rx-tx";
-	bus-width = <4>;
-	cd-gpios = <&gpio3 29>;
-};
diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-mmc.yaml b/Documentation/devicetree/bindings/mmc/fsl-imx-mmc.yaml
new file mode 100644
index 0000000..777a732
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/fsl-imx-mmc.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/fsl-imx-mmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale Secure Digital Host Controller for i.MX2/3 series
+
+maintainers:
+  - Markus Pargmann <mpa@pengutronix.de>
+
+allOf:
+  - $ref: "mmc-controller.yaml"
+
+properties:
+  compatible:
+    oneOf:
+      - const: fsl,imx21-mmc
+      - const: fsl,imx31-mmc
+      - items:
+          - const: fsl,imx27-mmc
+          - const: fsl,imx21-mmc
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
+required:
+  - compatible
+  - reg
+  - interrupts
+
+examples:
+  - |
+    mmc@10014000 {
+        compatible = "fsl,imx27-mmc", "fsl,imx21-mmc";
+        reg = <0x10014000 0x1000>;
+        interrupts = <11>;
+        dmas = <&dma 7>;
+        dma-names = "rx-tx";
+        bus-width = <4>;
+        cd-gpios = <&gpio3 29>;
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
