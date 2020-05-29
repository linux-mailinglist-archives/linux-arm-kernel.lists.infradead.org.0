Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F51A1E75F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 08:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AWhmTPRGH48vop10f9QZXCXy00+M7PA4gpwQuJ+BdgM=; b=sqV
	wX8gkO9lV9rQu+Tg/hYzKYXhLyi1O8rBKNYWnib9JJEkCC04MiXdpcSSGZHdfYuZMSbMNkPSw+un8
	f6DJrk/SuRMau1sPNRaBC2xBUcFSYqt7cCZBIrGJf5MKekk8wTPaSGR0tNKxSw0xwgatB/T5T4HqG
	dwUirD2PgP0l173VwsLCrtsvV9pXI0KuTujquW3RoWQROqL0BWpwZn58JPLn1f/qAtoWSeylWoqzH
	CXXLO3b+B6Gpn4eTd2HbO190XcIougv64VDqo+eb4aA1xgnwT4j1jr34qX75E2E62qftbKkbLPOA+
	sBQIUfO3wnW6mECu9ON7kD7hauMBMxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeYYu-00034Z-8d; Fri, 29 May 2020 06:32:12 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeYYk-00033W-32
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 06:32:04 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 19940200087;
 Fri, 29 May 2020 08:31:55 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 985C9200DAC;
 Fri, 29 May 2020 08:31:49 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id DBC31402A7;
 Fri, 29 May 2020 14:31:42 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, aisheng.dong@nxp.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: clock: Convert i.MX8QXP LPCG to json-schema
Date: Fri, 29 May 2020 14:21:39 +0800
Message-Id: <1590733299-12051-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_233202_408702_3410B5B5 
X-CRM114-Status: GOOD (  11.59  )
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

Convert the i.MX8QXP LPCG binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/clock/imx8qxp-lpcg.txt     | 51 ---------------
 .../devicetree/bindings/clock/imx8qxp-lpcg.yaml    | 72 ++++++++++++++++++++++
 2 files changed, 72 insertions(+), 51 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx8qxp-lpcg.yaml

diff --git a/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt b/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
deleted file mode 100644
index 965cfa4..0000000
--- a/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
+++ /dev/null
@@ -1,51 +0,0 @@
-* NXP i.MX8QXP LPCG (Low-Power Clock Gating) Clock bindings
-
-The Low-Power Clock Gate (LPCG) modules contain a local programming
-model to control the clock gates for the peripherals. An LPCG module
-is used to locally gate the clocks for the associated peripheral.
-
-Note:
-This level of clock gating is provided after the clocks are generated
-by the SCU resources and clock controls. Thus even if the clock is
-enabled by these control bits, it might still not be running based
-on the base resource.
-
-Required properties:
-- compatible:	Should be one of:
-		  "fsl,imx8qxp-lpcg-adma",
-		  "fsl,imx8qxp-lpcg-conn",
-		  "fsl,imx8qxp-lpcg-dc",
-		  "fsl,imx8qxp-lpcg-dsp",
-		  "fsl,imx8qxp-lpcg-gpu",
-		  "fsl,imx8qxp-lpcg-hsio",
-		  "fsl,imx8qxp-lpcg-img",
-		  "fsl,imx8qxp-lpcg-lsio",
-		  "fsl,imx8qxp-lpcg-vpu"
-- reg:		Address and length of the register set
-- #clock-cells:	Should be <1>
-
-The clock consumer should specify the desired clock by having the clock
-ID in its "clocks" phandle cell.
-See the full list of clock IDs from:
-include/dt-bindings/clock/imx8qxp-clock.h
-
-Examples:
-
-#include <dt-bindings/clock/imx8qxp-clock.h>
-
-conn_lpcg: clock-controller@5b200000 {
-	compatible = "fsl,imx8qxp-lpcg-conn";
-	reg = <0x5b200000 0xb0000>;
-	#clock-cells = <1>;
-};
-
-usdhc1: mmc@5b010000 {
-	compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
-	interrupt-parent = <&gic>;
-	interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
-	reg = <0x5b010000 0x10000>;
-	clocks = <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_IPG_CLK>,
-		 <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_PER_CLK>,
-		 <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_HCLK>;
-	clock-names = "ipg", "per", "ahb";
-};
diff --git a/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.yaml b/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.yaml
new file mode 100644
index 0000000..d5b6825
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/imx8qxp-lpcg.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP i.MX8QXP LPCG (Low-Power Clock Gating) Clock bindings
+
+maintainers:
+  - Aisheng Dong <aisheng.dong@nxp.com>
+
+description: |
+  The Low-Power Clock Gate (LPCG) modules contain a local programming
+  model to control the clock gates for the peripherals. An LPCG module
+  is used to locally gate the clocks for the associated peripheral.
+
+  This level of clock gating is provided after the clocks are generated
+  by the SCU resources and clock controls. Thus even if the clock is
+  enabled by these control bits, it might still not be running based
+  on the base resource.
+
+  The clock consumer should specify the desired clock by having the clock
+  ID in its "clocks" phandle cell. See the full list of clock IDs from:
+  include/dt-bindings/clock/imx8-clock.h
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8qxp-lpcg-adma
+      - fsl,imx8qxp-lpcg-conn
+      - fsl,imx8qxp-lpcg-dc
+      - fsl,imx8qxp-lpcg-dsp
+      - fsl,imx8qxp-lpcg-gpu
+      - fsl,imx8qxp-lpcg-hsio
+      - fsl,imx8qxp-lpcg-img
+      - fsl,imx8qxp-lpcg-lsio
+      - fsl,imx8qxp-lpcg-vpu
+
+  reg:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - '#clock-cells'
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8-clock.h>
+    #include <dt-bindings/firmware/imx/rsrc.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    clock-controller@5b200000 {
+        compatible = "fsl,imx8qxp-lpcg-conn";
+        reg = <0x5b200000 0xb0000>;
+        #clock-cells = <1>;
+    };
+
+    mmc@5b010000 {
+        compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
+        interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
+        reg = <0x5b010000 0x10000>;
+        clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC0_IPG_CLK>,
+                 <&conn_lpcg IMX_CONN_LPCG_SDHC0_PER_CLK>,
+                 <&conn_lpcg IMX_CONN_LPCG_SDHC0_HCLK>;
+        clock-names = "ipg", "per", "ahb";
+        power-domains = <&pd IMX_SC_R_SDHC_0>;
+        status = "disabled";
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
