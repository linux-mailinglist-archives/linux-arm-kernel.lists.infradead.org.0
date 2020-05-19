Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10971D8E7D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 06:06:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O1sg3FvchrG/VfUr8sQIUOWKRmOq5Q5Nskv8foIoTeE=; b=fOoB5Ubf/YmF15IDJJaBowtSCM
	qB5xtJ/25NOwr6i7y9mux866FqFpiVQNCcsG1g3yaBj5xEeRgfuVgPONV5TEcG2QQisxMxYQjxUDf
	C9XTQ01VTfDZPoLnNJ/AycU9SGL83t/T5DdQZKVDuvqyWyYPkxH7pb/zqZ12B3J8as1UPvD3E++NS
	PfUeezzEWOxQ6b3abzrTveD1Av4Sm47k7fdFC5BCFWiKmKyGJ2j4uYoOe7DX431bxfQ/7J2dn2xwi
	nm8hgAlAnb+N1Zy1Kf+Yy9JUBG6cTv5Zjxabs/4xAEXqbR7v+XctezO58u2axJIYYCTOe+qlJW/XS
	e/n6U8ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jatVz-0000w7-Fq; Tue, 19 May 2020 04:06:03 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jatVa-0000lC-3F
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 04:05:40 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 45D891A000A;
 Tue, 19 May 2020 06:05:36 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 90BE51A00D2;
 Tue, 19 May 2020 06:05:30 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 801F3402B3;
 Tue, 19 May 2020 12:05:23 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: daniel.lezcano@linaro.org, tglx@linutronix.de, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, ping.bai@nxp.com, aisheng.dong@nxp.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 1/3] dt-bindings: timer: Convert i.MX GPT to json-schema
Date: Tue, 19 May 2020 11:55:45 +0800
Message-Id: <1589860547-3207-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589860547-3207-1-git-send-email-Anson.Huang@nxp.com>
References: <1589860547-3207-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_210538_415908_21CB8A38 
X-CRM114-Status: GOOD (  10.93  )
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

Convert the i.MX GPT binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- remove unnecessary compatible item descriptions;
	- remove unnecessary maxItems for clocks/clock-names;
---
 .../devicetree/bindings/timer/fsl,imxgpt.txt       | 45 ------------
 .../devicetree/bindings/timer/fsl,imxgpt.yaml      | 80 ++++++++++++++++++++++
 2 files changed, 80 insertions(+), 45 deletions(-)
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
index 0000000..5479290
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
@@ -0,0 +1,80 @@
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
+      - const: "fsl,imx1-gpt"
+      - const: "fsl,imx21-gpt"
+      - items:
+          - const: "fsl,imx27-gpt"
+          - const: "fsl,imx21-gpt"
+      - const: "fsl,imx31-gpt"
+      - items:
+          - const: "fsl,imx25-gpt"
+          - const: "fsl,imx31-gpt"
+      - items:
+          - const: "fsl,imx50-gpt"
+          - const: "fsl,imx31-gpt"
+      - items:
+          - const: "fsl,imx51-gpt"
+          - const: "fsl,imx31-gpt"
+      - items:
+          - const: "fsl,imx53-gpt"
+          - const: "fsl,imx31-gpt"
+      - items:
+          - const: "fsl,imx6q-gpt"
+          - const: "fsl,imx31-gpt"
+      - const: "fsl,imx6dl-gpt"
+      - items:
+          - const: "fsl,imx6sl-gpt"
+          - const: "fsl,imx6dl-gpt"
+      - items:
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
+
+  clock-names:
+    items:
+      - const: ipg
+      - const: per
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
