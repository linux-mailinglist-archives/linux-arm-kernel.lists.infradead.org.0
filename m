Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D4A1B290A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=A/151xXDjtapJsua7L7kcbAxUSpv6KQ8V5eWGNuOk48=; b=g8d
	wMGo/4unNP8TnIq1Q/g+w36YU5Lh3AxOxPsqe+A/EjLgu9VDNkJlDL3s2iEm2EvoxkyqNnaCZhGCE
	p78mwHIetbbZgPcDyCgrzGhUp351gJdrBSSfPcTq1NPp0z4ubWfwBytiS/pgSVdPRvwU7q6XXG8N5
	Tm/QP/DBdhx6hr31UMZa1bwwXMX5s17PlLylDdGOb1Gfpm3SQr9W65RVcthgJxN1dmAA5C+WhqH5/
	cMQhBVdXdq1q60bvOvfVa/eAHJSPHWxmkmWiOz/pZcmL74Fe8LXYcN3aSQOGrG/NRj1l5CKtivUoR
	LWUgmDl+kFi664Z2ip+Q4Je//tI6OKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQtYx-00017Q-Eu; Tue, 21 Apr 2020 14:07:47 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtYm-00015D-Ot
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:07:39 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F29C120019A;
 Tue, 21 Apr 2020 16:07:32 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id ACAB6200CE3;
 Tue, 21 Apr 2020 16:07:27 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 12514402E8;
 Tue, 21 Apr 2020 22:07:21 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V3] dt-bindings: thermal: Convert i.MX8MM to json-schema
Date: Tue, 21 Apr 2020 21:59:04 +0800
Message-Id: <1587477544-20052-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_070737_086850_8EDE3133 
X-CRM114-Status: GOOD (  10.52  )
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

Convert the i.MX8MM thermal binding to DT schema format using json-schema

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V2:
	- drop unnecessary description for reg/clocks;
	- improve compatible;
	- use thermal-sensor as node name.
---
 .../devicetree/bindings/thermal/imx8mm-thermal.txt | 15 ------
 .../bindings/thermal/imx8mm-thermal.yaml           | 58 ++++++++++++++++++++++
 2 files changed, 58 insertions(+), 15 deletions(-)
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
index 0000000..3885287
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
@@ -0,0 +1,58 @@
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
+description: |
+  i.MX8MM has TMU IP to allow temperature measurement, there are
+  currently two distinct major versions of the IP that is supported
+  by a single driver. The IP versions are named v1 and v2, v1 is
+  for i.MX8MM which has ONLY 1 sensor, v2 is for i.MX8MP which has
+  2 sensors.
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8mm-tmu
+      - fsl,imx8mp-tmu
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  "#thermal-sensor-cells":
+    description: |
+      Number of cells required to uniquely identify the thermal
+      sensors, 0 for ONLY one sensor and 1 for multiple sensors.
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
+    thermal-sensor@30260000 {
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
