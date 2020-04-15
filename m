Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D561A8FE4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 02:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uMZjY+j2OyNQpbD0Ri6b2koN03FgT0iBBSYUyDb7I60=; b=OvI
	pKa3ME8TrHdh3i+mo3CCy/9yzFjago5oEdush/5+jGYlo0/6DW1WKqvzsfLxVzld6rWm85a6ignMq
	Cedwd4ii8eqKVOS6yqre5Mmgs/JEWTnN6Ab/Po+8I4piCpeA9yeWBdBGnsb5IFiDsdElk0U+0ug57
	hZKbwOikkxSFZkGoPiWKEQU3RPFrrV1BbiJS5YEqHVlttDVVVzLYjtCLk5obTpLkFYT24mLJEVkk2
	juVZPeG3/COQnQMYHia31ys4JCB9QWeI6qxruGMd8UNMMLhRm0I0uJdUBSLdIXMssOV3iw9Q0cGvt
	Kf0e0f+/i2V7GDRvgfuAlOvxB04nuog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOWEH-0006HL-9H; Wed, 15 Apr 2020 00:48:37 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOWE4-0006Gh-O5
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 00:48:26 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 32AA71A0616;
 Wed, 15 Apr 2020 02:48:21 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 44B661A0613;
 Wed, 15 Apr 2020 02:48:16 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1107240293;
 Wed, 15 Apr 2020 08:48:10 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-watchdog@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2 1/2] dt-bindings: watchdog: Convert i.MX to json-schema
Date: Wed, 15 Apr 2020 08:40:10 +0800
Message-Id: <1586911211-1141-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_174825_062269_38BDB90D 
X-CRM114-Status: GOOD (  10.55  )
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

Convert the i.MX watchdog binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change.
---
 .../devicetree/bindings/watchdog/fsl-imx-wdt.txt   | 24 ----------
 .../devicetree/bindings/watchdog/fsl-imx-wdt.yaml  | 56 ++++++++++++++++++++++
 2 files changed, 56 insertions(+), 24 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.txt
 create mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.yaml

diff --git a/Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.txt b/Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.txt
deleted file mode 100644
index adc6b76..0000000
--- a/Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.txt
+++ /dev/null
@@ -1,24 +0,0 @@
-* Freescale i.MX Watchdog Timer (WDT) Controller
-
-Required properties:
-- compatible : Should be "fsl,<soc>-wdt"
-- reg : Should contain WDT registers location and length
-- interrupts : Should contain WDT interrupt
-
-Optional properties:
-- big-endian: If present the watchdog device's registers are implemented
-  in big endian mode, otherwise in native mode(same with CPU), for more
-  detail please see: Documentation/devicetree/bindings/regmap/regmap.txt.
-- fsl,ext-reset-output: If present the watchdog device is configured to
-  assert its external reset (WDOG_B) instead of issuing a software reset.
-- timeout-sec : Contains the watchdog timeout in seconds
-
-Examples:
-
-wdt@73f98000 {
-	compatible = "fsl,imx51-wdt", "fsl,imx21-wdt";
-	reg = <0x73f98000 0x4000>;
-	interrupts = <58>;
-	big-endian;
-	timeout-sec = <20>;
-};
diff --git a/Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.yaml b/Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.yaml
new file mode 100644
index 0000000..674d902
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/fsl-imx-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX Watchdog Timer (WDT) Controller
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
+      - fsl,imx21-wdt
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
+  fsl,ext-reset-output:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: |
+      If present, the watchdog device is configured to assert its
+      external reset (WDOG_B) instead of issuing a software reset.
+
+required:
+  - compatible
+  - interrupts
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/imx6qdl-clock.h>
+
+    wdog1: watchdog@20bc000 {
+        compatible = "fsl,imx21-wdt";
+        reg = <0x020bc000 0x4000>;
+        interrupts = <0 80 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clks IMX6QDL_CLK_IPG>;
+    };
+
+...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
