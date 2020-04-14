Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 679FC1A7120
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 04:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Xp9It+nzSxjx5tgDSWPldP+FYHc87VNhXZO1SeaMI3Q=; b=Awiu7RIry/aDQNyEfTlMWBcQ6q
	+vf0Q8nq/EEzU+oZkKvGiajgcZP9Q2SJRZGinraeSxceXoFCSiylPzYTYahsBNhb/ubU3krvTgtdG
	/0k+FrNtJ0whmw2nUKqfi/OH/SBfZaQrd6jopK+FcqMV6a401DTOlKhRsbGxgq906bGVkSrNanRLc
	/DorBOcfw/4Vp5j4vwEeJMTowVDgxD1iZlszq3N0mge7y2Z21BdQ9EGKUoPnu+e2DSEIGgg6mobKU
	dyXHWXwinBDIumfHTmgvURpTm+Sl5IEaJF/ISi6j9brUQmq7MgP3dZN4/fjhgHMOQjNcz0+2NQVw9
	+P/74vLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOBVs-0005oN-96; Tue, 14 Apr 2020 02:41:24 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOBVV-0005iv-Tc
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 02:41:03 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 51A89200261;
 Tue, 14 Apr 2020 04:40:58 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 52A09200269;
 Tue, 14 Apr 2020 04:40:53 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 56D514030C;
 Tue, 14 Apr 2020 10:40:45 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-watchdog@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: watchdog: Convert i.MX7ULP to json-schema
Date: Tue, 14 Apr 2020 10:32:48 +0800
Message-Id: <1586831568-24635-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586831568-24635-1-git-send-email-Anson.Huang@nxp.com>
References: <1586831568-24635-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_194102_229015_33D177E8 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

Convert the i.MX7ULP watchdog binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../bindings/watchdog/fsl-imx7ulp-wdt.txt          | 22 --------
 .../bindings/watchdog/fsl-imx7ulp-wdt.yaml         | 60 ++++++++++++++++++++++
 2 files changed, 60 insertions(+), 22 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt
 create mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml

diff --git a/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt
deleted file mode 100644
index f902508..0000000
--- a/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-* Freescale i.MX7ULP Watchdog Timer (WDT) Controller
-
-Required properties:
-- compatible : Should be "fsl,imx7ulp-wdt"
-- reg : Should contain WDT registers location and length
-- interrupts : Should contain WDT interrupt
-- clocks: Should contain a phandle pointing to the gated peripheral clock.
-
-Optional properties:
-- timeout-sec : Contains the watchdog timeout in seconds
-
-Examples:
-
-wdog1: watchdog@403d0000 {
-	compatible = "fsl,imx7ulp-wdt";
-	reg = <0x403d0000 0x10000>;
-	interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
-	clocks = <&pcc2 IMX7ULP_CLK_WDG1>;
-	assigned-clocks = <&pcc2 IMX7ULP_CLK_WDG1>;
-	assigned-clocks-parents = <&scg1 IMX7ULP_CLK_FIRC_BUS_CLK>;
-	timeout-sec = <40>;
-};
diff --git a/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml
new file mode 100644
index 0000000..0fe0ef9
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/fsl-imx7ulp-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX7ULP Watchdog Timer (WDT) Controller
+
+maintainers:
+  - Anson Huang <Anson.Huang@nxp.com>
+
+allOf:
+  - $ref: "watchdog.yaml#"
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx7ulp-wdt
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    description: |
+      Watchdog's clock source.
+    maxItems: 1
+
+  assigned-clocks:
+    maxItems: 1
+
+  assigned-clocks-parents:
+    maxItems: 1
+
+required:
+  - compatible
+  - interrupts
+  - reg
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/imx7ulp-clock.h>
+
+    wdog1: watchdog@403d0000 {
+        compatible = "fsl,imx7ulp-wdt";
+        reg = <0x403d0000 0x10000>;
+        interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&pcc2 IMX7ULP_CLK_WDG1>;
+        assigned-clocks = <&pcc2 IMX7ULP_CLK_WDG1>;
+        assigned-clocks-parents = <&scg1 IMX7ULP_CLK_FIRC_BUS_CLK>;
+        timeout-sec = <40>;
+    };
+
+...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
