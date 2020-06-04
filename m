Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BF81EDAB0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 03:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OKkpST6qQUte7Xu9l8HvZK9y8YowYqfhJEYBjc/GO2A=; b=UIy
	6g2dfHBCUnPUYQCSnZjfppvxaMcFZPb+tyuRHtPqh2YX0hqGD+rc4GzAh7A6Fv8zelXaRTUDluwi0
	uL6rs5UVyKnSItjHUVmNEyP6tKHR6gS0ZSmYIqYt078NW2DUF6fFR4wmKOpqvUcEwlJ2yBU2Bl8qe
	QWVH73G4A8gFLu9xdN6+W+NMSXPAR4n8DAPYAW9ezufhSHosgxvF5Ivqis78MhKjQJbNZiBlQRwW1
	3WpPqC8HU33R83ETyfo0G91UvfSEu6490gyo3r3L4A5ggS5ufdWAfs/AB08zB+kUmW4cbx1dluxuC
	U6sjCDDASA+kyh/E7iqHJo0rpc3IQ3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgeyb-0003Ww-1G; Thu, 04 Jun 2020 01:47:25 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgeyL-0003TT-Pv
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 01:47:11 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CED362011D0;
 Thu,  4 Jun 2020 03:47:07 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BCCB12011DF;
 Thu,  4 Jun 2020 03:46:21 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 08582402A5;
 Thu,  4 Jun 2020 09:46:14 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: a.zummo@towertech.it, alexandre.belloni@bootlin.com, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, stigge@antcom.de, linux-rtc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2] dt-bindings: rtc: Convert imxdi rtc to json-schema
Date: Thu,  4 Jun 2020 09:35:55 +0800
Message-Id: <1591234555-15187-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_184709_974959_C4B4A599 
X-CRM114-Status: UNSURE (   9.55  )
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

Convert the i.MXDI RTC binding to DT schema format using json-schema

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- add "additionalProperties: false".
---
 .../devicetree/bindings/rtc/imxdi-rtc.txt          | 20 ----------
 .../devicetree/bindings/rtc/imxdi-rtc.yaml         | 44 ++++++++++++++++++++++
 2 files changed, 44 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rtc/imxdi-rtc.txt
 create mode 100644 Documentation/devicetree/bindings/rtc/imxdi-rtc.yaml

diff --git a/Documentation/devicetree/bindings/rtc/imxdi-rtc.txt b/Documentation/devicetree/bindings/rtc/imxdi-rtc.txt
deleted file mode 100644
index c797bc9..0000000
--- a/Documentation/devicetree/bindings/rtc/imxdi-rtc.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-* i.MX25 Real Time Clock controller
-
-Required properties:
-- compatible: should be: "fsl,imx25-rtc"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-- clocks: should contain the phandle for the rtc clock
-- interrupts: rtc alarm interrupt
-
-Optional properties:
-- interrupts: dryice security violation interrupt (second entry)
-
-Example:
-
-rtc@53ffc000 {
-	compatible = "fsl,imx25-rtc";
-	reg = <0x53ffc000 0x4000>;
-	clocks = <&clks 81>;
-	interrupts = <25 56>;
-};
diff --git a/Documentation/devicetree/bindings/rtc/imxdi-rtc.yaml b/Documentation/devicetree/bindings/rtc/imxdi-rtc.yaml
new file mode 100644
index 0000000..06bd737
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/imxdi-rtc.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rtc/imxdi-rtc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: i.MX25 Real Time Clock controller
+
+maintainers:
+  - Roland Stigge <stigge@antcom.de>
+
+properties:
+  compatible:
+    const: fsl,imx25-rtc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: rtc alarm interrupt
+      - description: dryice security violation interrupt
+    minItems: 1
+    maxItems: 2
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    rtc@53ffc000 {
+        compatible = "fsl,imx25-rtc";
+        reg = <0x53ffc000 0x4000>;
+        clocks = <&clks 81>;
+        interrupts = <25>, <56>;
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
