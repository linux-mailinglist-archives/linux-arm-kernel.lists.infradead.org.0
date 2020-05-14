Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1101F1D2873
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 09:04:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kCP8EQcBTtqrpIpVe36eZjZBwOU6FiYxyUFkrNiVTYg=; b=YTs
	ZM6Gqk7eQTyHwGFiifza1NGoC0+q9CrHuxS3+gaR+rPpduZF0kvyO0wu6atBExWl0h/AtwFKWN/pM
	+6MphezKRrgkFQfCRrTk8X9TyNtHHGjQXPTtp7RmAq8+W5mfGEYWRWmkTXdxVN25wBHrgXxr4mnra
	TpfpQ6VpIfgwp5SqO1vt5OdXCZUpP22hyf71sNqwhkVVFIAhxAjP9Ak8tsTquVxjyuzdTw2etAWdY
	syZ9WNvT5eqIXgkyJXjPzFfxlaeYhML5A7XPFMMp20RN7Z8kCLyamF1NZMkV4MRHLjOZr9lUSc1lC
	u/5EVrTr6ywztklmhn9TNbyoUL/JtVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ7uV-0002u0-KB; Thu, 14 May 2020 07:04:03 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ7uM-0002tE-0s
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 07:03:55 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DB4881A0148;
 Thu, 14 May 2020 09:03:51 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6C4481A0132;
 Thu, 14 May 2020 09:03:46 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id AE84F402B4;
 Thu, 14 May 2020 15:03:39 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, p.zabel@pengutronix.de,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: pwm: Convert imx pwm to json-schema
Date: Thu, 14 May 2020 14:54:18 +0800
Message-Id: <1589439259-28510-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_000354_346632_63E00E43 
X-CRM114-Status: GOOD (  11.34  )
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

Convert the imx pwm binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 Documentation/devicetree/bindings/pwm/imx-pwm.txt  | 27 ---------
 Documentation/devicetree/bindings/pwm/imx-pwm.yaml | 66 ++++++++++++++++++++++
 2 files changed, 66 insertions(+), 27 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/pwm/imx-pwm.txt
 create mode 100644 Documentation/devicetree/bindings/pwm/imx-pwm.yaml

diff --git a/Documentation/devicetree/bindings/pwm/imx-pwm.txt b/Documentation/devicetree/bindings/pwm/imx-pwm.txt
deleted file mode 100644
index 22f1c3d..0000000
--- a/Documentation/devicetree/bindings/pwm/imx-pwm.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-Freescale i.MX PWM controller
-
-Required properties:
-- compatible : should be "fsl,<soc>-pwm" and one of the following
-   compatible strings:
-  - "fsl,imx1-pwm" for PWM compatible with the one integrated on i.MX1
-  - "fsl,imx27-pwm" for PWM compatible with the one integrated on i.MX27
-- reg: physical base address and length of the controller's registers
-- #pwm-cells: 2 for i.MX1 and 3 for i.MX27 and newer SoCs. See pwm.yaml
-  in this directory for a description of the cells format.
-- clocks : Clock specifiers for both ipg and per clocks.
-- clock-names : Clock names should include both "ipg" and "per"
-See the clock consumer binding,
-	Documentation/devicetree/bindings/clock/clock-bindings.txt
-- interrupts: The interrupt for the pwm controller
-
-Example:
-
-pwm1: pwm@53fb4000 {
-	#pwm-cells = <3>;
-	compatible = "fsl,imx53-pwm", "fsl,imx27-pwm";
-	reg = <0x53fb4000 0x4000>;
-	clocks = <&clks IMX5_CLK_PWM1_IPG_GATE>,
-		 <&clks IMX5_CLK_PWM1_HF_GATE>;
-	clock-names = "ipg", "per";
-	interrupts = <61>;
-};
diff --git a/Documentation/devicetree/bindings/pwm/imx-pwm.yaml b/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
new file mode 100644
index 0000000..4b62af2
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pwm/imx-pwm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX PWM controller
+
+maintainers:
+  - Philipp Zabel <p.zabel@pengutronix.de>
+
+properties:
+  "#pwm-cells":
+    description: |
+      Should be 2 for i.MX1 and 3 for i.MX27 and newer SoCs. See pwm.yaml
+      in this directory for a description of the cells format.
+    enum:
+      - 2
+      - 3
+
+  compatible:
+    enum:
+      - fsl,imx1-pwm
+      - fsl,imx27-pwm
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: SoC PWM ipg clock
+      - description: SoC PWM per clock
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: ipg
+      - const: per
+    maxItems: 2
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - "#pwm-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx5-clock.h>
+
+    pwm@53fb4000 {
+        #pwm-cells = <3>;
+        compatible = "fsl,imx27-pwm";
+        reg = <0x53fb4000 0x4000>;
+        clocks = <&clks IMX5_CLK_PWM1_IPG_GATE>,
+                 <&clks IMX5_CLK_PWM1_HF_GATE>;
+        clock-names = "ipg", "per";
+        interrupts = <61>;
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
