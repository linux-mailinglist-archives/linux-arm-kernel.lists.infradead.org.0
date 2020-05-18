Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA001D7C07
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 16:58:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=25E9eVscZ8dNsYVtaHoYTwGYEOwE/4GadUhkY/j0BhY=; b=d/c3eYSQh76suv1b/hadOUR701
	h3y5h0b8JLawVrOIRrHdJz/0bzq/WDU9/ktzUsD0vDgmSJKGpK9TrZ9/ATHPyAL2h7zUEYbi44d/i
	wioNkkOO6e/bPeTILtCTynqc0KaoNzP6HhMmZtkDnOSd3dNA1mkYxg0y3LwoZ+MCAR5DusGmPr4fH
	m4c4NCj0YYPg5lYikOV5aLYrynRhuZGey2JSrCPmuST1kfetGeYsCWmkof0JESLL7fbDvIezUgOBt
	lV6YKgjjAQVYAjVwFDDZgFJ3hvx82r3JQ1htXi8eDngZtz48mC1ee2I5r++gO4lkrLwLWQEr6IYcs
	Ynt4wasQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahDW-0008K3-Fu; Mon, 18 May 2020 14:58:10 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahCq-0007oT-G7
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 14:57:30 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DC6DA2009BA;
 Mon, 18 May 2020 16:57:26 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 74FAE2009CA;
 Mon, 18 May 2020 16:57:21 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9A298402AD;
 Mon, 18 May 2020 22:57:14 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: daniel.lezcano@linaro.org, tglx@linutronix.de, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, ping.bai@nxp.com, aisheng.dong@nxp.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: timer: Convert i.MX GPT to json-schema
Date: Mon, 18 May 2020 22:47:38 +0800
Message-Id: <1589813260-20036-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589813260-20036-1-git-send-email-Anson.Huang@nxp.com>
References: <1589813260-20036-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_075728_820921_3AE4BD15 
X-CRM114-Status: GOOD (  10.70  )
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

Convert the i.MX GPT binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/timer/fsl,imxgpt.txt       |  45 ---------
 .../devicetree/bindings/timer/fsl,imxgpt.yaml      | 109 +++++++++++++++++++++
 2 files changed, 109 insertions(+), 45 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
 create mode 100644 Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml

diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt b/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
deleted file mode 100644
index 5d8fd5b..0000000
--- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
+++ /dev/null
@@ -1,45 +0,0 @@
-Freescale i.MX General Purpose Timer (GPT)
-
-Required properties:
-
-- compatible : should be one of following:
-  for i.MX1:
-  - "fsl,imx1-gpt";
-  for i.MX21:
-  - "fsl,imx21-gpt";
-  for i.MX27:
-  - "fsl,imx27-gpt", "fsl,imx21-gpt";
-  for i.MX31:
-  - "fsl,imx31-gpt";
-  for i.MX25:
-  - "fsl,imx25-gpt", "fsl,imx31-gpt";
-  for i.MX50:
-  - "fsl,imx50-gpt", "fsl,imx31-gpt";
-  for i.MX51:
-  - "fsl,imx51-gpt", "fsl,imx31-gpt";
-  for i.MX53:
-  - "fsl,imx53-gpt", "fsl,imx31-gpt";
-  for i.MX6Q:
-  - "fsl,imx6q-gpt", "fsl,imx31-gpt";
-  for i.MX6DL:
-  - "fsl,imx6dl-gpt";
-  for i.MX6SL:
-  - "fsl,imx6sl-gpt", "fsl,imx6dl-gpt";
-  for i.MX6SX:
-  - "fsl,imx6sx-gpt", "fsl,imx6dl-gpt";
-- reg : specifies base physical address and size of the registers.
-- interrupts : should be the gpt interrupt.
-- clocks : the clocks provided by the SoC to drive the timer, must contain
-           an entry for each entry in clock-names.
-- clock-names : must include "ipg" entry first, then "per" entry.
-
-Example:
-
-gpt1: timer@10003000 {
-	compatible = "fsl,imx27-gpt", "fsl,imx21-gpt";
-	reg = <0x10003000 0x1000>;
-	interrupts = <26>;
-	clocks = <&clks IMX27_CLK_GPT1_IPG_GATE>,
-		 <&clks IMX27_CLK_PER1_GATE>;
-	clock-names = "ipg", "per";
-};
diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
new file mode 100644
index 0000000..5c7186b
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
@@ -0,0 +1,109 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/fsl,imxgpt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX General Purpose Timer (GPT)
+
+maintainers:
+  - Sascha Hauer <s.hauer@pengutronix.de>
+
+properties:
+  compatible:
+    oneOf:
+      - description: on i.MX1 the following compatible must be specified
+        items:
+          - const: "fsl,imx1-gpt"
+
+      - description: on i.MX21 the following compatible must be specified
+        items:
+          - const: "fsl,imx21-gpt"
+
+      - description: on i.MX27 the following compatibles must be specified
+        items:
+          - const: "fsl,imx27-gpt"
+          - const: "fsl,imx21-gpt"
+
+      - description: on i.MX31 the following compatible must be specified
+        items:
+          - const: "fsl,imx31-gpt"
+
+      - description: on i.MX25 the following compatibles must be specified
+        items:
+          - const: "fsl,imx25-gpt"
+          - const: "fsl,imx31-gpt"
+
+      - description: on i.MX50 the following compatibles must be specified
+        items:
+          - const: "fsl,imx50-gpt"
+          - const: "fsl,imx31-gpt"
+
+      - description: on i.MX51 the following compatibles must be specified
+        items:
+          - const: "fsl,imx51-gpt"
+          - const: "fsl,imx31-gpt"
+
+      - description: on i.MX53 the following compatibles must be specified
+        items:
+          - const: "fsl,imx53-gpt"
+          - const: "fsl,imx31-gpt"
+
+      - description: on i.MX6Q the following compatibles must be specified
+        items:
+          - const: "fsl,imx6q-gpt"
+          - const: "fsl,imx31-gpt"
+
+      - description: on i.MX6DL the following compatible must be specified
+        items:
+          - const: "fsl,imx6dl-gpt"
+
+      - description: on i.MX6SL the following compatibles must be specified
+        items:
+          - const: "fsl,imx6sl-gpt"
+          - const: "fsl,imx6dl-gpt"
+
+      - description: on i.MX6SX the following compatibles must be specified
+        items:
+          - const: "fsl,imx6sx-gpt"
+          - const: "fsl,imx6dl-gpt"
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: SoC GPT ipg clock
+      - description: SoC GPT per clock
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: ipg
+      - const: per
+    maxItems: 2
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx27-clock.h>
+
+    timer@10003000 {
+        compatible = "fsl,imx27-gpt", "fsl,imx21-gpt";
+        reg = <0x10003000 0x1000>;
+        interrupts = <26>;
+        clocks = <&clks IMX27_CLK_GPT1_IPG_GATE>,
+                 <&clks IMX27_CLK_PER1_GATE>;
+        clock-names = "ipg", "per";
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
