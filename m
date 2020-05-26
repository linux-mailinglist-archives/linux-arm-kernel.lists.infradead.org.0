Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADA61BED5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 03:02:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1hL7RH97ajlwgIHVeBrGbRjeNVdG4M480TaEo/YmwVY=; b=TC2DPpOX/xUTE5KPheI6HLxSIh
	EAcyX8J+xJ4sWJ8kRjcb/enW5AXQu7z9kkxPyQJXfHGIXeAFzxKxn/CZH1krcVYuQkHgOx1eJifr9
	A3KABon5iluopha55U4ymJjgJMbowGkqoFiIbwiqX09/TFeJbIODNgxdb3eO9gQyGlNFrkj6a5Cjd
	j0uKXAfiqd9aYuajzJjkewbt8YvrEGNYkO5bzInN9hMsuYPTha9NgAIW9g0PYmWwpnL4yTlwu9rpO
	gAU2KEOhl0JUumDDlq1o+M3N6F+3YiaIZUylfFdg4XuctSTTl60VsSgKYpF5v9BsWRPg1yew+J+ah
	rbBReI1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTxan-0005pX-8B; Thu, 30 Apr 2020 01:02:21 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTxZS-0004oX-WF
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 01:01:00 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C8A862005F8;
 Thu, 30 Apr 2020 03:00:57 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B6F812005E9;
 Thu, 30 Apr 2020 03:00:52 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C2EDD4030E;
 Thu, 30 Apr 2020 09:00:46 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V4 5/5] dt-bindings: clock: Convert i.MX6UL clock to
 json-schema
Date: Thu, 30 Apr 2020 08:52:01 +0800
Message-Id: <1588207921-20604-5-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588207921-20604-1-git-send-email-Anson.Huang@nxp.com>
References: <1588207921-20604-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_180059_307470_4D146CD1 
X-CRM114-Status: UNSURE (   9.60  )
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

Convert the i.MX6UL clock binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V3:
	- update license to be with (GPL-2.0-only OR BSD-2-Clause);
	- remove unnecessary minItem for interrupts;
	- remove label in example.
---
 .../devicetree/bindings/clock/imx6ul-clock.txt     | 13 -----
 .../devicetree/bindings/clock/imx6ul-clock.yaml    | 60 ++++++++++++++++++++++
 2 files changed, 60 insertions(+), 13 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/imx6ul-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx6ul-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/imx6ul-clock.txt b/Documentation/devicetree/bindings/clock/imx6ul-clock.txt
deleted file mode 100644
index 571d503..0000000
--- a/Documentation/devicetree/bindings/clock/imx6ul-clock.txt
+++ /dev/null
@@ -1,13 +0,0 @@
-* Clock bindings for Freescale i.MX6 UltraLite
-
-Required properties:
-- compatible: Should be "fsl,imx6ul-ccm"
-- reg: Address and length of the register set
-- #clock-cells: Should be <1>
-- clocks: list of clock specifiers, must contain an entry for each required
-  entry in clock-names
-- clock-names: should include entries "ckil", "osc", "ipp_di0" and "ipp_di1"
-
-The clock consumer should specify the desired clock by having the clock
-ID in its "clocks" phandle cell.  See include/dt-bindings/clock/imx6ul-clock.h
-for the full list of i.MX6 UltraLite clock IDs.
diff --git a/Documentation/devicetree/bindings/clock/imx6ul-clock.yaml b/Documentation/devicetree/bindings/clock/imx6ul-clock.yaml
new file mode 100644
index 0000000..e1477df
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx6ul-clock.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/imx6ul-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Clock bindings for Freescale i.MX6 UltraLite
+
+maintainers:
+  - Anson Huang <Anson.Huang@nxp.com>
+
+properties:
+  compatible:
+    const: fsl,imx6ul-ccm
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 2
+
+  '#clock-cells':
+    const: 1
+
+  clocks:
+    items:
+      - description: 32k osc
+      - description: 24m osc
+      - description: ipp_di0 clock input
+      - description: ipp_di1 clock input
+
+  clock-names:
+    items:
+      - const: ckil
+      - const: osc
+      - const: ipp_di0
+      - const: ipp_di1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - '#clock-cells'
+  - clocks
+  - clock-names
+
+examples:
+  # Clock Control Module node:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    clock-controller@20c4000 {
+        compatible = "fsl,imx6ul-ccm";
+        reg = <0x020c4000 0x4000>;
+        interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+        #clock-cells = <1>;
+        clocks = <&ckil>, <&osc>, <&ipp_di0>, <&ipp_di1>;
+        clock-names = "ckil", "osc", "ipp_di0", "ipp_di1";
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
