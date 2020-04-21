Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EABCE1B2A1A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:38:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=60WDlTIjAs/L2PqNOSlKw96Newo9F1dFa0a257P77IM=; b=K84u3c+/ei5D55ZXw+CIMzYwwh
	jXuqC5CSY27ydhrAwRogqodsPeF22jzoEH6T/bP3b6jDG6+ojAojF7vFbShSwDS1Sy86Np7o4mS6h
	z0NiVjeU2xJnBD1e0r+WWSbngbz5cKejfOrfZMq494P2guovMtRIBuFRMhkMs/LkLWqM4jpc+nj+R
	NBeuEGmBPWcQocfxokRer4DqlbEgeECCeMWgs9jLrYTLDdZ5XAezRh+ZDlw9Cj3IKIZE2dQNNfFdK
	PP1D8HqFtqNiE/VM8FuNKlHA3zpHZJiQj93OvxD/qzUQi76PROokzLyj0DWWQ0M3S3VFb0pxaJDEg
	bEIox4sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQu2M-0005y1-1d; Tue, 21 Apr 2020 14:38:10 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtuP-0002vY-2G
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:30:00 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D367B200080;
 Tue, 21 Apr 2020 16:29:54 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B1B72200CEF;
 Tue, 21 Apr 2020 16:29:49 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id D7ADA4029E;
 Tue, 21 Apr 2020 22:29:43 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-watchdog@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V3 2/2] dt-bindings: watchdog: Convert i.MX7ULP to json-schema
Date: Tue, 21 Apr 2020 22:21:26 +0800
Message-Id: <1587478886-21512-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587478886-21512-1-git-send-email-Anson.Huang@nxp.com>
References: <1587478886-21512-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_072957_449207_1AA85050 
X-CRM114-Status: UNSURE (   9.85  )
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

Convert the i.MX7ULP watchdog binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V2:
	- drop clocks description;
	- drop unused label;
	- improve timeout-sec.
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
index 0000000..51d6d48
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
+    maxItems: 1
+
+  assigned-clocks:
+    maxItems: 1
+
+  assigned-clocks-parents:
+    maxItems: 1
+
+  timeout-sec: true
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
+    watchdog@403d0000 {
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
