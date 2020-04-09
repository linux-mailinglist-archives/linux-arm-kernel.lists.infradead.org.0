Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EB21A2DF0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 05:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VTXWUY5VR5A2Q9s/R1SKo7gSF+zrOMQ6b/6tZrXdeB0=; b=Lz5
	VXI/ev69g8HAWBmhwMB3JxAJcPnPptW3n/xihqfnJxYwWVpTSwq5X9z8fX86DkMutKbMGFwVJngm0
	BViYufn6eM/Atd7oRHsRS6q1WcIciE05dGyoW9ZS5d/bdH+nqfgSZstJEgMRWowuks7kqrQx7+TuR
	uGAI4y++FoBukpi6A+YCL64mZE73SBes5AyJAHx3Jz4g0N0cr0I3KRFE0bmVsDwywsj1ZGUAy+hwz
	a6+ohoE4aJ0GDb370GmUCkIrxNqS1ZPEBvWgTtIvY9kGH5JNsdLEnoON551ayp2B114x4PElMy7FR
	ljeStEoVvUFd2aJEI2JNkUjN7/DTlyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMNpd-0006SO-Pg; Thu, 09 Apr 2020 03:26:21 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMNpV-0006RS-Lb
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 03:26:15 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E56C21A02A7;
 Thu,  9 Apr 2020 05:26:09 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4F94A1A02B7;
 Thu,  9 Apr 2020 05:26:03 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1BD4C40294;
 Thu,  9 Apr 2020 11:25:55 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: thermal: Convert i.MX8MM to json-schema
Date: Thu,  9 Apr 2020 11:18:13 +0800
Message-Id: <1586402293-30579-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_202613_846942_862D9581 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
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

Convert the i.MX8MM thermal binding to DT schema format using json-schema

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/thermal/imx8mm-thermal.txt | 15 ------
 .../bindings/thermal/imx8mm-thermal.yaml           | 53 ++++++++++++++++++++++
 2 files changed, 53 insertions(+), 15 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
 create mode 100644 Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml

diff --git a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
deleted file mode 100644
index 3629d3c..0000000
--- a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-* Thermal Monitoring Unit (TMU) on Freescale i.MX8MM SoC
-
-Required properties:
-- compatible : Must be "fsl,imx8mm-tmu" or "fsl,imx8mp-tmu".
-- reg : Address range of TMU registers.
-- clocks : TMU's clock source.
-- #thermal-sensor-cells : Should be 0 or 1. See ./thermal.txt for a description.
-
-Example:
-tmu: tmu@30260000 {
-	compatible = "fsl,imx8mm-tmu";
-	reg = <0x30260000 0x10000>;
-	clocks = <&clk IMX8MM_CLK_TMU_ROOT>;
-	#thermal-sensor-cells = <0>;
-};
diff --git a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
new file mode 100644
index 0000000..53a42b3
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/imx8mm-thermal.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP i.MX8M Mini Thermal Binding
+
+maintainers:
+  - Anson Huang <Anson.Huang@nxp.com>
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - fsl,imx8mm-tmu
+              - fsl,imx8mp-tmu
+  reg:
+    description: |
+      Address range of TMU registers.
+    maxItems: 1
+  clocks:
+    description: |
+      TMU's clock source.
+    maxItems: 1
+
+  # See ./thermal.txt for details
+  "#thermal-sensor-cells":
+    enum:
+      - 0
+      - 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - '#thermal-sensor-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mm-clock.h>
+
+    tmu: tmu@30260000 {
+         compatible = "fsl,imx8mm-tmu";
+         reg = <0x30260000 0x10000>;
+         clocks = <&clk IMX8MM_CLK_TMU_ROOT>;
+         #thermal-sensor-cells = <0>;
+    };
+
+...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
