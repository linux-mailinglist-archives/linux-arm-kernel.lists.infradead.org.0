Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 765531E58FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:40:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6KX8P4Sz5M5UYXMoce2rdi5g3btp6dLNyAt6/Jta6Ro=; b=m1w6FJ7G81f+kjdD+6tnYu4eRX
	VQ0Piml6q98CfbKOW7exDJabpvtHQ6oP2QK+0E1aW14k12uMNgkcxIM5TnJHSDh1wzajs/cDiLP8S
	0LT/3K2iEhd0VTHlztlFZmmaIHOzLyLv5fPxHqxluiuWzAW4aDQDXwaJG4+4r2seqNpmfwYqEV5Pk
	zSRdei82SBYl1QGCoZbrGx73xJz/SzSgZzgSm3Kh+yrKqtpoAeNMio2Txg5PH4vTuKP1AJnDQYXtr
	9sTwGO4adCCHuUKF8u57q+HhvyLQNfLVJxojEI4XmYLtQNSrN1r//whcdxds5/sU7CqIELafsG9Dv
	h2iitL+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeD9d-0007Ja-Uu; Thu, 28 May 2020 07:40:41 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeD7U-0003OS-GF
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:38:31 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 44CA1200A1F;
 Thu, 28 May 2020 09:38:27 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7A833200A16;
 Thu, 28 May 2020 09:38:21 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 92BDD40305;
 Thu, 28 May 2020 15:38:13 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, shc_work@mail.ru, s.trumtrar@pengutronix.de,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 6/9] dt-bindings: clock: Convert i.MX27 clock to json-schema
Date: Thu, 28 May 2020 15:27:56 +0800
Message-Id: <1590650879-18288-7-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
References: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_003828_832456_1F881943 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
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

Convert the i.MX27 clock binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/clock/imx27-clock.txt      | 27 -----------
 .../devicetree/bindings/clock/imx27-clock.yaml     | 53 ++++++++++++++++++++++
 2 files changed, 53 insertions(+), 27 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/imx27-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx27-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/imx27-clock.txt b/Documentation/devicetree/bindings/clock/imx27-clock.txt
deleted file mode 100644
index 4c95c04..0000000
--- a/Documentation/devicetree/bindings/clock/imx27-clock.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-* Clock bindings for Freescale i.MX27
-
-Required properties:
-- compatible: Should be "fsl,imx27-ccm"
-- reg: Address and length of the register set
-- interrupts: Should contain CCM interrupt
-- #clock-cells: Should be <1>
-
-The clock consumer should specify the desired clock by having the clock
-ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx27-clock.h
-for the full list of i.MX27 clock IDs.
-
-Examples:
-	clks: ccm@10027000{
-		compatible = "fsl,imx27-ccm";
-		reg = <0x10027000 0x1000>;
-		#clock-cells = <1>;
-	};
-
-	uart1: serial@1000a000 {
-		compatible = "fsl,imx27-uart", "fsl,imx21-uart";
-		reg = <0x1000a000 0x1000>;
-		interrupts = <20>;
-		clocks = <&clks IMX27_CLK_UART1_IPG_GATE>,
-			 <&clks IMX27_CLK_PER1_GATE>;
-		clock-names = "ipg", "per";
-	};
diff --git a/Documentation/devicetree/bindings/clock/imx27-clock.yaml b/Documentation/devicetree/bindings/clock/imx27-clock.yaml
new file mode 100644
index 0000000..2d69807
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx27-clock.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/imx27-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Clock bindings for Freescale i.MX27
+
+maintainers:
+  - Fabio Estevam <fabio.estevam@freescale.com>
+
+description: |
+  The clock consumer should specify the desired clock by having the clock
+  ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx27-clock.h
+  for the full list of i.MX27 clock IDs.
+
+properties:
+  compatible:
+    const: fsl,imx27-ccm
+
+  reg:
+    maxItems: 1
+
+  interrupts:
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
+    #include <dt-bindings/clock/imx27-clock.h>
+
+    clock-controller@10027000 {
+        compatible = "fsl,imx27-ccm";
+        reg = <0x10027000 0x1000>;
+        interrupts = <31>;
+        #clock-cells = <1>;
+    };
+
+    serial@1000a000 {
+        compatible = "fsl,imx27-uart", "fsl,imx21-uart";
+        reg = <0x1000a000 0x1000>;
+        interrupts = <20>;
+        clocks = <&clks IMX27_CLK_UART1_IPG_GATE>,
+                 <&clks IMX27_CLK_PER1_GATE>;
+        clock-names = "ipg", "per";
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
