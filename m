Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B341AB866
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 08:47:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ev9zLHMGHNm0zVJBFm9qjWwnsYjC2M7D1Byt61Uf3qA=; b=d5O
	DjPDCOeBUCMdE5ogYFMi+Et6x2ujXy6Ehx8zQQ3Jv1NuRESEtmwlNqs/JTjZ0S+RO8I/kGC+qoqrD
	QtLcy1n/kDqQvCEec8oKCqs7aWqkiCsb5rPEzfEQKP8rWIMOO9cWYBoMi4lknMmjljJL5c9C92xmg
	SJNSGdWrO22z9JLes9PG4UrUZjxRwRAoAxDAfzBk1Tll7vv8Bb56gLMV0Ir5IKA/VLbReZLGxCP30
	zmWoh16EuKR0YPQ+pJtVx+FcB/luNlJ5xDkZvMBV9odW5phRl3ogVwpAZZ/VBjKJAT3CyEy+jLKV/
	b9mVm1gy3EAJNqpfVlYgZV2aOdvZtng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOyJL-00043q-ED; Thu, 16 Apr 2020 06:47:43 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOyJB-00042Q-Lu
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 06:47:35 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D8B181A0C1F;
 Thu, 16 Apr 2020 08:47:30 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B6B081A0C1D;
 Thu, 16 Apr 2020 08:47:25 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 81D84402A8;
 Thu, 16 Apr 2020 14:47:19 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2 1/5] dt-bindings: clock: Convert i.MX6Q clock to json-schema
Date: Thu, 16 Apr 2020 14:39:14 +0800
Message-Id: <1587019158-12143-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_234733_995771_FA11759C 
X-CRM114-Status: GOOD (  10.09  )
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

Convert the i.MX6Q clock binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- remove minItem of interrupts;
	- remove '...' at the end of file
---
 .../devicetree/bindings/clock/imx6q-clock.txt      | 41 --------------
 .../devicetree/bindings/clock/imx6q-clock.yaml     | 66 ++++++++++++++++++++++
 2 files changed, 66 insertions(+), 41 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/imx6q-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx6q-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/imx6q-clock.txt b/Documentation/devicetree/bindings/clock/imx6q-clock.txt
deleted file mode 100644
index 13d36d4..0000000
--- a/Documentation/devicetree/bindings/clock/imx6q-clock.txt
+++ /dev/null
@@ -1,41 +0,0 @@
-* Clock bindings for Freescale i.MX6 Quad
-
-Required properties:
-- compatible: Should be "fsl,imx6q-ccm"
-- reg: Address and length of the register set
-- interrupts: Should contain CCM interrupt
-- #clock-cells: Should be <1>
-
-Optional properties:
-- fsl,pmic-stby-poweroff: Configure CCM to assert PMIC_STBY_REQ signal
-  on power off.
-  Use this property if the SoC should be powered off by external power
-  management IC (PMIC) triggered via PMIC_STBY_REQ signal.
-  Boards that are designed to initiate poweroff on PMIC_ON_REQ signal should
-  be using "syscon-poweroff" driver instead.
-- clocks: list of clock specifiers, must contain an entry for each entry
-          in clock-names
-- clock-names: valid names are "osc", "ckil", "ckih1", "anaclk1" and "anaclk2"
-
-The clock consumer should specify the desired clock by having the clock
-ID in its "clocks" phandle cell.  See include/dt-bindings/clock/imx6qdl-clock.h
-for the full list of i.MX6 Quad and DualLite clock IDs.
-
-Examples:
-
-#include <dt-bindings/clock/imx6qdl-clock.h>
-
-clks: ccm@20c4000 {
-	compatible = "fsl,imx6q-ccm";
-	reg = <0x020c4000 0x4000>;
-	interrupts = <0 87 0x04 0 88 0x04>;
-	#clock-cells = <1>;
-};
-
-uart1: serial@2020000 {
-	compatible = "fsl,imx6q-uart", "fsl,imx21-uart";
-	reg = <0x02020000 0x4000>;
-	interrupts = <0 26 0x04>;
-	clocks = <&clks IMX6QDL_CLK_UART_IPG>, <&clks IMX6QDL_CLK_UART_SERIAL>;
-	clock-names = "ipg", "per";
-};
diff --git a/Documentation/devicetree/bindings/clock/imx6q-clock.yaml b/Documentation/devicetree/bindings/clock/imx6q-clock.yaml
new file mode 100644
index 0000000..1c6e600
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx6q-clock.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/imx6q-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Clock bindings for Freescale i.MX6 Quad
+
+maintainers:
+  - Anson Huang <Anson.Huang@nxp.com>
+
+properties:
+  compatible:
+    const: fsl,imx6q-ccm
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
+      - description: 24m osc
+      - description: 32k osc
+      - description: ckih1 clock input
+      - description: anaclk1 clock input
+      - description: anaclk2 clock input
+
+  clock-names:
+    items:
+      - const: osc
+      - const: ckil
+      - const: ckih1
+      - const: anaclk1
+      - const: anaclk2
+
+  fsl,pmic-stby-poweroff:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: |
+      Use this property if the SoC should be powered off by external power
+      management IC (PMIC) triggered via PMIC_STBY_REQ signal.
+      Boards that are designed to initiate poweroff on PMIC_ON_REQ signal should
+      be using "syscon-poweroff" driver instead.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - '#clock-cells'
+
+examples:
+  # Clock Control Module node:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    clks: clock-controller@20c4000 {
+        compatible = "fsl,imx6q-ccm";
+        reg = <0x020c4000 0x4000>;
+        interrupts = <0 87 IRQ_TYPE_LEVEL_HIGH>,
+                     <0 88 IRQ_TYPE_LEVEL_HIGH>;
+        #clock-cells = <1>;
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
