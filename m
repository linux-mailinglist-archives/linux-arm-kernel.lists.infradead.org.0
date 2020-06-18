Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F8F1FE983
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 05:34:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7vnXQ75NPJrJhVM+XQjAhxLtCAG1Lgq/JaftYHWc+ys=; b=hSD
	f+1RkC97vNXFlpE1BW0oFpRCg2p4DMMKxKWLojPFxBEvKNxssvm4Y56kOPUuwKrERSeLPXThFKhIF
	SxK2YZprib4oRHWUyMAWaeAJ3lm2gcpV/ZbbGbV/Q1oTfn0aVBO+bNNkUUgh8dJ0dzhXnP6PXUHpp
	/yo6mf4uAkkWGeWT2wS4jPaFz4NKDi22WVNptA2GiJv6FbC/Z3wI4Wip+GAXR06EvTOpAbbgKM47u
	+2kbn/7QN4J/jwqDfu0ctsrtOLefcPf+eweoVU3LgU65bV672Lzzvm7VmzOgWaOAs7xWThj5Fynpi
	CyYKB6xhslabe+kl70VQvSFoMMaPIJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jllKB-0004vJ-QZ; Thu, 18 Jun 2020 03:34:47 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jllJf-0004g3-8g
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 03:34:17 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E1D891A008A;
 Thu, 18 Jun 2020 05:34:12 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 61E561A0045;
 Thu, 18 Jun 2020 05:34:06 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 5FC73402F3;
 Thu, 18 Jun 2020 11:33:58 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, ulf.hansson@linaro.org, s.trumtrar@pengutronix.de,
 aisheng.dong@nxp.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org
Subject: [PATCH V4 1/3] dt-bindings: mmc: Convert imx esdhc to json-schema
Date: Thu, 18 Jun 2020 11:22:56 +0800
Message-Id: <1592450578-30140-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_203415_583553_B708C9BE 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

Convert the i.MX ESDHC binding to DT schema format using json-schema

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change.
---
 .../devicetree/bindings/mmc/fsl-imx-esdhc.txt      |  67 -----------
 .../devicetree/bindings/mmc/fsl-imx-esdhc.yaml     | 124 +++++++++++++++++++++
 2 files changed, 124 insertions(+), 67 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
 create mode 100644 Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml

diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
deleted file mode 100644
index de1b8bd..0000000
--- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
+++ /dev/null
@@ -1,67 +0,0 @@
-* Freescale Enhanced Secure Digital Host Controller (eSDHC) for i.MX
-
-The Enhanced Secure Digital Host Controller on Freescale i.MX family
-provides an interface for MMC, SD, and SDIO types of memory cards.
-
-This file documents differences between the core properties described
-by mmc.txt and the properties used by the sdhci-esdhc-imx driver.
-
-Required properties:
-- compatible : Should be "fsl,<chip>-esdhc", the supported chips include
-	       "fsl,imx25-esdhc"
-	       "fsl,imx35-esdhc"
-	       "fsl,imx51-esdhc"
-	       "fsl,imx53-esdhc"
-	       "fsl,imx6q-usdhc"
-	       "fsl,imx6sl-usdhc"
-	       "fsl,imx6sx-usdhc"
-	       "fsl,imx6ull-usdhc"
-	       "fsl,imx7d-usdhc"
-	       "fsl,imx7ulp-usdhc"
-	       "fsl,imx8mq-usdhc"
-	       "fsl,imx8mm-usdhc"
-	       "fsl,imx8mn-usdhc"
-	       "fsl,imx8mp-usdhc"
-	       "fsl,imx8qm-usdhc"
-	       "fsl,imx8qxp-usdhc"
-
-Optional properties:
-- fsl,wp-controller : Indicate to use controller internal write protection
-- fsl,delay-line : Specify the number of delay cells for override mode.
-  This is used to set the clock delay for DLL(Delay Line) on override mode
-  to select a proper data sampling window in case the clock quality is not good
-  due to signal path is too long on the board. Please refer to eSDHC/uSDHC
-  chapter, DLL (Delay Line) section in RM for details.
-- voltage-ranges : Specify the voltage range in case there are software
-  transparent level shifters on the outputs of the controller. Two cells are
-  required, first cell specifies minimum slot voltage (mV), second cell
-  specifies maximum slot voltage (mV). Several ranges could be specified.
-- fsl,tuning-start-tap: Specify the start dealy cell point when send first CMD19
-  in tuning procedure.
-- fsl,tuning-step: Specify the increasing delay cell steps in tuning procedure.
-  The uSDHC use one delay cell as default increasing step to do tuning process.
-  This property allows user to change the tuning step to more than one delay
-  cells which is useful for some special boards or cards when the default
-  tuning step can't find the proper delay window within limited tuning retries.
-- fsl,strobe-dll-delay-target: Specify the strobe dll control slave delay target.
-  This delay target programming host controller loopback read clock, and this
-  property allows user to change the delay target for the strobe input read clock.
-  If not use this property, driver default set the delay target to value 7.
-  Only eMMC HS400 mode need to take care of this property.
-
-Examples:
-
-esdhc@70004000 {
-	compatible = "fsl,imx51-esdhc";
-	reg = <0x70004000 0x4000>;
-	interrupts = <1>;
-	fsl,wp-controller;
-};
-
-esdhc@70008000 {
-	compatible = "fsl,imx51-esdhc";
-	reg = <0x70008000 0x4000>;
-	interrupts = <2>;
-	cd-gpios = <&gpio1 6 0>; /* GPIO1_6 */
-	wp-gpios = <&gpio1 5 0>; /* GPIO1_5 */
-};
diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
new file mode 100644
index 0000000..75dc116
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
@@ -0,0 +1,124 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/fsl-imx-esdhc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale Enhanced Secure Digital Host Controller (eSDHC) for i.MX
+
+maintainers:
+  - Shawn Guo <shawn.guo@linaro.org>
+
+allOf:
+  - $ref: "mmc-controller.yaml"
+
+description: |
+  The Enhanced Secure Digital Host Controller on Freescale i.MX family
+  provides an interface for MMC, SD, and SDIO types of memory cards.
+
+  This file documents differences between the core properties described
+  by mmc.txt and the properties used by the sdhci-esdhc-imx driver.
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx25-esdhc
+      - fsl,imx35-esdhc
+      - fsl,imx51-esdhc
+      - fsl,imx53-esdhc
+      - fsl,imx6q-usdhc
+      - fsl,imx6sl-usdhc
+      - fsl,imx6sx-usdhc
+      - fsl,imx6ull-usdhc
+      - fsl,imx7d-usdhc
+      - fsl,imx7ulp-usdhc
+      - fsl,imx8mq-usdhc
+      - fsl,imx8mm-usdhc
+      - fsl,imx8mn-usdhc
+      - fsl,imx8mp-usdhc
+      - fsl,imx8qm-usdhc
+      - fsl,imx8qxp-usdhc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  fsl,wp-controller:
+    description: |
+      boolean, if present, indicate to use controller internal write protection.
+    type: boolean
+
+  fsl,delay-line:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Specify the number of delay cells for override mode.
+      This is used to set the clock delay for DLL(Delay Line) on override mode
+      to select a proper data sampling window in case the clock quality is not good
+      due to signal path is too long on the board. Please refer to eSDHC/uSDHC
+      chapter, DLL (Delay Line) section in RM for details.
+    default: 0
+
+  voltage-ranges:
+    $ref: '/schemas/types.yaml#/definitions/uint32-matrix'
+    description: |
+      Specify the voltage range in case there are software transparent level
+      shifters on the outputs of the controller. Two cells are required, first
+      cell specifies minimum slot voltage (mV), second cell specifies maximum
+      slot voltage (mV).
+    items:
+      items:
+        - description: value for minimum slot voltage
+        - description: value for maximum slot voltage
+    maxItems: 1
+
+  fsl,tuning-start-tap:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Specify the start delay cell point when send first CMD19 in tuning procedure.
+    default: 0
+
+  fsl,tuning-step:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Specify the increasing delay cell steps in tuning procedure.
+      The uSDHC use one delay cell as default increasing step to do tuning process.
+      This property allows user to change the tuning step to more than one delay
+      cells which is useful for some special boards or cards when the default
+      tuning step can't find the proper delay window within limited tuning retries.
+    default: 0
+
+  fsl,strobe-dll-delay-target:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Specify the strobe dll control slave delay target.
+      This delay target programming host controller loopback read clock, and this
+      property allows user to change the delay target for the strobe input read clock.
+      If not use this property, driver default set the delay target to value 7.
+      Only eMMC HS400 mode need to take care of this property.
+    default: 0
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    mmc@70004000 {
+        compatible = "fsl,imx51-esdhc";
+        reg = <0x70004000 0x4000>;
+        interrupts = <1>;
+        fsl,wp-controller;
+    };
+
+    mmc@70008000 {
+        compatible = "fsl,imx51-esdhc";
+        reg = <0x70008000 0x4000>;
+        interrupts = <2>;
+        cd-gpios = <&gpio1 6 0>; /* GPIO1_6 */
+        wp-gpios = <&gpio1 5 0>; /* GPIO1_5 */
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
