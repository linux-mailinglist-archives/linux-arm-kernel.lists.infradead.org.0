Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0041FA7D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 06:38:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ay4fy8SDzeZzLsTrFWfXSoEeCX/EfdiOTBv5GYoWgJA=; b=QJX0Lt+gyH9lApDZ6MeoqAkl5I
	6fcqxZErHn1Q2HUMa4OwVz90NQWSY00edBntjJiCI2oNaNw9cgp8/7mzdQcdIXNkJnQrItVOD6z8A
	izhYh24qfYX5/nGYWHDhKRY5uOsyR9AqCeljyWJREiAWX990xNlVQ4EPWaxexrYVHtwA2TXWsSqln
	Q8n645lIyBh3IaTxZO7SnFGk7OJT57yMZa/obMMhgkzcLbT2K/BCJ3z/4RjzdvbF5JCCUXFhCndPq
	TTj+4tLdG8rcemnEOoJDFhhRw3W+GRpCeMbPlqkBq6TxIXJw3B9A4S9JQM7D6oDfA816ZwNFNW8si
	iiIKMMsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl3ML-00061H-1D; Tue, 16 Jun 2020 04:38:05 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl3Lh-0005Wh-1t
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 04:37:28 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C23721A05A1;
 Tue, 16 Jun 2020 06:37:23 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B21201A0597;
 Tue, 16 Jun 2020 06:37:18 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 50E5D402E8;
 Tue, 16 Jun 2020 12:37:12 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: broonie@kernel.org, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 marex@denx.de, linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V3 2/3] dt-bindings: spi: Convert imx cspi to json-schema
Date: Tue, 16 Jun 2020 12:26:14 +0800
Message-Id: <1592281575-32708-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592281575-32708-1-git-send-email-Anson.Huang@nxp.com>
References: <1592281575-32708-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_213725_363050_E209064A 
X-CRM114-Status: GOOD (  13.80  )
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

Convert the i.MX CSPI binding to DT schema format using json-schema,
update compatible, remove obsolete properties "fsl,spi-num-chipselects"
and update the example based on latest DT file.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V2:
	- remove redundant "maxItems" in "clocks" and "clock-names".
---
 .../devicetree/bindings/spi/fsl-imx-cspi.txt       | 56 -------------
 .../devicetree/bindings/spi/fsl-imx-cspi.yaml      | 97 ++++++++++++++++++++++
 2 files changed, 97 insertions(+), 56 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
 create mode 100644 Documentation/devicetree/bindings/spi/fsl-imx-cspi.yaml

diff --git a/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt b/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
deleted file mode 100644
index 33bc58f..0000000
--- a/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
+++ /dev/null
@@ -1,56 +0,0 @@
-* Freescale (Enhanced) Configurable Serial Peripheral Interface
-  (CSPI/eCSPI) for i.MX
-
-Required properties:
-- compatible :
-  - "fsl,imx1-cspi" for SPI compatible with the one integrated on i.MX1
-  - "fsl,imx21-cspi" for SPI compatible with the one integrated on i.MX21
-  - "fsl,imx27-cspi" for SPI compatible with the one integrated on i.MX27
-  - "fsl,imx31-cspi" for SPI compatible with the one integrated on i.MX31
-  - "fsl,imx35-cspi" for SPI compatible with the one integrated on i.MX35
-  - "fsl,imx51-ecspi" for SPI compatible with the one integrated on i.MX51
-  - "fsl,imx53-ecspi" for SPI compatible with the one integrated on i.MX53 and later Soc
-  - "fsl,imx8mq-ecspi" for SPI compatible with the one integrated on i.MX8MQ
-  - "fsl,imx8mm-ecspi" for SPI compatible with the one integrated on i.MX8MM
-  - "fsl,imx8mn-ecspi" for SPI compatible with the one integrated on i.MX8MN
-  - "fsl,imx8mp-ecspi" for SPI compatible with the one integrated on i.MX8MP
-- reg : Offset and length of the register set for the device
-- interrupts : Should contain CSPI/eCSPI interrupt
-- clocks : Clock specifiers for both ipg and per clocks.
-- clock-names : Clock names should include both "ipg" and "per"
-See the clock consumer binding,
-	Documentation/devicetree/bindings/clock/clock-bindings.txt
-
-Recommended properties:
-- cs-gpios : GPIOs to use as chip selects, see spi-bus.txt.  While the native chip
-select lines can be used, they appear to always generate a pulse between each
-word of a transfer.  Most use cases will require GPIO based chip selects to
-generate a valid transaction.
-
-Optional properties:
-- num-cs :  Number of total chip selects, see spi-bus.txt.
-- dmas: DMA specifiers for tx and rx dma. See the DMA client binding,
-Documentation/devicetree/bindings/dma/dma.txt.
-- dma-names: DMA request names, if present, should include "tx" and "rx".
-- fsl,spi-rdy-drctl: Integer, representing the value of DRCTL, the register
-controlling the SPI_READY handling. Note that to enable the DRCTL consideration,
-the SPI_READY mode-flag needs to be set too.
-Valid values are: 0 (disabled), 1 (edge-triggered burst) and 2 (level-triggered burst).
-
-Obsolete properties:
-- fsl,spi-num-chipselects : Contains the number of the chipselect
-
-Example:
-
-ecspi@70010000 {
-	#address-cells = <1>;
-	#size-cells = <0>;
-	compatible = "fsl,imx51-ecspi";
-	reg = <0x70010000 0x4000>;
-	interrupts = <36>;
-	cs-gpios = <&gpio3 24 0>, /* GPIO3_24 */
-		   <&gpio3 25 0>; /* GPIO3_25 */
-	dmas = <&sdma 3 7 1>, <&sdma 4 7 2>;
-	dma-names = "rx", "tx";
-	fsl,spi-rdy-drctl = <1>;
-};
diff --git a/Documentation/devicetree/bindings/spi/fsl-imx-cspi.yaml b/Documentation/devicetree/bindings/spi/fsl-imx-cspi.yaml
new file mode 100644
index 0000000..6e44c9c
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/fsl-imx-cspi.yaml
@@ -0,0 +1,97 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/fsl-imx-cspi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale (Enhanced) Configurable Serial Peripheral Interface (CSPI/eCSPI) for i.MX
+
+maintainers:
+  - Shawn Guo <shawn.guo@linaro.org>
+
+allOf:
+  - $ref: "/schemas/spi/spi-controller.yaml#"
+
+properties:
+  compatible:
+    oneOf:
+      - const: fsl,imx1-cspi
+      - const: fsl,imx21-cspi
+      - const: fsl,imx27-cspi
+      - const: fsl,imx31-cspi
+      - const: fsl,imx35-cspi
+      - const: fsl,imx51-ecspi
+      - const: fsl,imx53-ecspi
+      - items:
+        - enum:
+          - fsl,imx50-ecspi
+          - fsl,imx6q-ecspi
+          - fsl,imx6sx-ecspi
+          - fsl,imx6sl-ecspi
+          - fsl,imx6sll-ecspi
+          - fsl,imx6ul-ecspi
+          - fsl,imx7d-ecspi
+          - fsl,imx8mq-ecspi
+          - fsl,imx8mm-ecspi
+          - fsl,imx8mn-ecspi
+          - fsl,imx8mp-ecspi
+        - const: fsl,imx51-ecspi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: SoC SPI ipg clock
+      - description: SoC SPI per clock
+
+  clock-names:
+    items:
+      - const: ipg
+      - const: per
+
+  dmas:
+    items:
+      - description: DMA controller phandle and request line for RX
+      - description: DMA controller phandle and request line for TX
+
+  dma-names:
+    items:
+      - const: rx
+      - const: tx
+
+  fsl,spi-rdy-drctl:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Integer, representing the value of DRCTL, the register controlling
+      the SPI_READY handling. Note that to enable the DRCTL consideration,
+      the SPI_READY mode-flag needs to be set too.
+      Valid values are: 0 (disabled), 1 (edge-triggered burst) and 2 (level-triggered burst).
+    enum: [0, 1, 2]
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
+    #include <dt-bindings/clock/imx5-clock.h>
+
+    spi@70010000 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        compatible = "fsl,imx51-ecspi";
+        reg = <0x70010000 0x4000>;
+        interrupts = <36>;
+        clocks = <&clks IMX5_CLK_ECSPI1_IPG_GATE>,
+                 <&clks IMX5_CLK_ECSPI1_PER_GATE>;
+        clock-names = "ipg", "per";
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
