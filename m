Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6831EDACD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 03:53:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FtAdNIK59lL3S0PqtP24hf89PnqnecgBzdlK/t2nNoU=; b=YBaT7lK6/Y+KHXrM21t+khQB+c
	WXpc/M0CrMmI1dGbJLKNqAH7NrhamwI/GP86UBSuwatpP7K2Fjc+GhWrJodNheG5RrEI0eeSpVOUm
	xEpqBm+SF98L7afFtUaQTFJXiDZfvLLIwvei1mF9yxW1VG+bss8fsIFyShwRqDmsJ5L69k5VHs39o
	nUvWnBDPG02DX1VO8fGqOAifqNxBbQ35u1i/U46OFbcaNPJsYgP4KlrU5w1n5AYntAaArnn5RvAVA
	bdNChe3Bx6e9jCv8nS1LZuPFMCj+OtNJVmvP3bXhYRCa+MBsazDmhpzLD5qHXdvv1IgP2C7EbZFrJ
	Q87+Sfow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgf3w-0007YI-7T; Thu, 04 Jun 2020 01:52:56 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgf33-0006np-Da
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 01:52:03 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3D64420012A;
 Thu,  4 Jun 2020 03:52:00 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 58A9C200EDD;
 Thu,  4 Jun 2020 03:51:55 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 0FCDD402B0;
 Thu,  4 Jun 2020 09:51:48 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 mpa@pengutronix.de, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2 3/3] dt-bindings: mmc: Convert mxs mmc to json-schema
Date: Thu,  4 Jun 2020 09:41:26 +0800
Message-Id: <1591234886-15351-4-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591234886-15351-1-git-send-email-Anson.Huang@nxp.com>
References: <1591234886-15351-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_185201_745587_9F7F27EB 
X-CRM114-Status: GOOD (  11.47  )
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

Convert the MXS MMC binding to DT schema format using json-schema

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- add "unevaluatedProperties: false".
---
 Documentation/devicetree/bindings/mmc/mxs-mmc.txt  | 27 ----------
 Documentation/devicetree/bindings/mmc/mxs-mmc.yaml | 58 ++++++++++++++++++++++
 2 files changed, 58 insertions(+), 27 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mmc/mxs-mmc.txt
 create mode 100644 Documentation/devicetree/bindings/mmc/mxs-mmc.yaml

diff --git a/Documentation/devicetree/bindings/mmc/mxs-mmc.txt b/Documentation/devicetree/bindings/mmc/mxs-mmc.txt
deleted file mode 100644
index 515addc..0000000
--- a/Documentation/devicetree/bindings/mmc/mxs-mmc.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-* Freescale MXS MMC controller
-
-The Freescale MXS Synchronous Serial Ports (SSP) can act as a MMC controller
-to support MMC, SD, and SDIO types of memory cards.
-
-This file documents differences between the core properties in mmc.txt
-and the properties used by the mxsmmc driver.
-
-Required properties:
-- compatible: Should be "fsl,<chip>-mmc".  The supported chips include
-  imx23 and imx28.
-- interrupts: Should contain ERROR interrupt number
-- dmas: DMA specifier, consisting of a phandle to DMA controller node
-  and SSP DMA channel ID.
-  Refer to dma.txt and fsl-mxs-dma.txt for details.
-- dma-names: Must be "rx-tx".
-
-Examples:
-
-ssp0: ssp@80010000 {
-	compatible = "fsl,imx28-mmc";
-	reg = <0x80010000 2000>;
-	interrupts = <96>;
-	dmas = <&dma_apbh 0>;
-	dma-names = "rx-tx";
-	bus-width = <8>;
-};
diff --git a/Documentation/devicetree/bindings/mmc/mxs-mmc.yaml b/Documentation/devicetree/bindings/mmc/mxs-mmc.yaml
new file mode 100644
index 0000000..1cccc04
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/mxs-mmc.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/mxs-mmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale MXS MMC controller
+
+maintainers:
+  - Shawn Guo <shawn.guo@linaro.org>
+
+description: |
+  The Freescale MXS Synchronous Serial Ports (SSP) can act as a MMC controller
+  to support MMC, SD, and SDIO types of memory cards.
+
+  This file documents differences between the core properties in mmc.txt
+  and the properties used by the mxsmmc driver.
+
+allOf:
+  - $ref: "mmc-controller.yaml"
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx23-mmc
+      - fsl,imx28-mmc
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
+  - dmas
+  - dma-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    mmc@80010000 {
+        compatible = "fsl,imx28-mmc";
+        reg = <0x80010000 2000>;
+        interrupts = <96>;
+        dmas = <&dma_apbh 0>;
+        dma-names = "rx-tx";
+        bus-width = <8>;
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
