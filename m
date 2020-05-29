Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FF61E727A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 04:15:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=s74KGOAfgQthtuBzmSuWN6hLeL3GSSzC2YaE7MCtgZg=; b=iTy
	WZLHvH2TutF9ijefl1AyrX7KHPc54/8btbn773lNHD7pgszza8GhiFLFY0RQ53Bk/fRYkBolOWhsT
	/b/EUWX5MmwcrzIA5RcRFuYH6GI0madlCzqRu6khCGPG3JE0KeSjiR1NNS/N7gww3Y5o2Lrd4wN7K
	heK/y/wwX6GhSJDkHKuCMGOLTqZpAq6fYbhWJ42Yjr/3v8InWzdF/PLktOu1Vp3Y4aygaMoRRaHIs
	gPUAzSHn/t2C2gkR0LZTla1WkZn789rJAyJRK801gb5LKalaZPs3K/Vgk8WIxyk3ABZfvHl7itA9i
	KRJmdsKr0rpU6kbSELUXkBunOkBDulA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeUYK-0004ej-4B; Fri, 29 May 2020 02:15:20 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeUXx-0004eL-Hd
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 02:14:59 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6D7FF1A0098;
 Fri, 29 May 2020 04:14:55 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A9EA31A0099;
 Fri, 29 May 2020 04:14:50 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BC2EE402DF;
 Fri, 29 May 2020 10:14:44 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: daniel.lezcano@linaro.org, tglx@linutronix.de, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3] dt-bindings: timer: Convert i.MX GPT to json-schema
Date: Fri, 29 May 2020 10:04:42 +0800
Message-Id: <1590717882-20922-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_191457_860821_CABC52AE 
X-CRM114-Status: GOOD (  10.59  )
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
Changes since V2:
	- in compatible properties, group all the ones with the same
	  fallback to a single 'items' list using enum for the first entry.
---
 .../devicetree/bindings/timer/fsl,imxgpt.txt       | 45 --------------
 .../devicetree/bindings/timer/fsl,imxgpt.yaml      | 72 ++++++++++++++++++++++
 2 files changed, 72 insertions(+), 45 deletions(-)
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
index 0000000..883f7f4
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
@@ -0,0 +1,72 @@
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
+      - const: fsl,imx1-gpt
+      - const: fsl,imx21-gpt
+      - items:
+          - const: fsl,imx27-gpt
+          - const: fsl,imx21-gpt
+      - const: fsl,imx31-gpt
+      - items:
+          - enum:
+            - fsl,imx25-gpt
+            - fsl,imx50-gpt
+            - fsl,imx51-gpt
+            - fsl,imx53-gpt
+            - fsl,imx6q-gpt
+          - const: fsl,imx31-gpt
+      - const: fsl,imx6dl-gpt
+      - items:
+          - enum:
+            - fsl,imx6sl-gpt
+            - fsl,imx6sx-gpt
+          - const: fsl,imx6dl-gpt
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
