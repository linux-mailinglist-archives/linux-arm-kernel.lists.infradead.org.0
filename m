Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C71F1368A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 08:59:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uycz0fiQP6j+y7VJVk2pWyQiv2m7RWUGKY8zuMMOUnc=; b=YyZ
	X3yn1Om4T+8aU3Qbx/wHllyDK273URQU/swnKfssVGnC/U5oxJppbno3fM00Oc3I0aWYOHAlAwPAc
	dAGfNCCWhJ5p9jOX+BMzYOqMwuK5UV0LksUZw/9515GfPfm/c7slJ4xKgV2cHDbE0vT9W5HIdGZoO
	Rd59+deZ3TO2lKl3lzoQRZ4eNz8y8mFz5z+TMQDnEfCZ9H8uiXg8zJObgg2N5gEOgI9BLnv2374rI
	JYjsPNGQlgzJhs+pxsyHx81Wy9KtaNcDNMnZHbS806Ca2q8aOzY5NklZwnY9yD0xOh6/aT2Co9ctU
	Ey84p3fYk4QQlWZqnAgr0pEArgo6DsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ippCV-0007Xs-DN; Fri, 10 Jan 2020 07:59:23 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ippCO-0007Wr-RE
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 07:59:18 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D3F8B1A0BCA;
 Fri, 10 Jan 2020 08:59:14 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C05561A0BD8;
 Fri, 10 Jan 2020 08:59:08 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 4FDEC402C1;
 Fri, 10 Jan 2020 15:59:01 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: clock: Convert i.MX8MQ to json-schema
Date: Fri, 10 Jan 2020 15:55:12 +0800
Message-Id: <1578642914-838-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_235917_158598_0A138883 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

Convert the i.MX8MQ clock binding to DT schema format using json-schema

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/clock/imx8mq-clock.txt     | 20 ------
 .../devicetree/bindings/clock/imx8mq-clock.yaml    | 72 ++++++++++++++++++++++
 2 files changed, 72 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/imx8mq-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx8mq-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/imx8mq-clock.txt b/Documentation/devicetree/bindings/clock/imx8mq-clock.txt
deleted file mode 100644
index 52de826..0000000
--- a/Documentation/devicetree/bindings/clock/imx8mq-clock.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-* Clock bindings for NXP i.MX8M Quad
-
-Required properties:
-- compatible: Should be "fsl,imx8mq-ccm"
-- reg: Address and length of the register set
-- #clock-cells: Should be <1>
-- clocks: list of clock specifiers, must contain an entry for each required
-          entry in clock-names
-- clock-names: should include the following entries:
-    - "ckil"
-    - "osc_25m"
-    - "osc_27m"
-    - "clk_ext1"
-    - "clk_ext2"
-    - "clk_ext3"
-    - "clk_ext4"
-
-The clock consumer should specify the desired clock by having the clock
-ID in its "clocks" phandle cell.  See include/dt-bindings/clock/imx8mq-clock.h
-for the full list of i.MX8M Quad clock IDs.
diff --git a/Documentation/devicetree/bindings/clock/imx8mq-clock.yaml b/Documentation/devicetree/bindings/clock/imx8mq-clock.yaml
new file mode 100644
index 0000000..881c01c
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx8mq-clock.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bindings/clock/imx8mq-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP i.MX8M Quad Clock Control Module Binding
+
+maintainers:
+  - Anson Huang <Anson.Huang@nxp.com>
+
+description: |
+  NXP i.MX8M Quad clock control module is an integrated clock controller, which
+  generates and supplies to all modules.
+
+properties:
+  compatible:
+    const: fsl,imx8mn-ccm
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: 32k osc
+      - description: 25m osc
+      - description: 27m osc
+      - description: ext1 clock input
+      - description: ext2 clock input
+      - description: ext3 clock input
+      - description: ext4 clock input
+
+  clock-names:
+    items:
+      - const: ckil
+      - const: osc_25m
+      - const: osc_27m
+      - const: clk_ext1
+      - const: clk_ext2
+      - const: clk_ext3
+      - const: clk_ext4
+
+  '#clock-cells':
+    const: 1
+    description:
+      The clock consumer should specify the desired clock by having the clock
+      ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx8mq-clock.h
+      for the full list of i.MX8M Quad clock IDs.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - '#clock-cells'
+
+examples:
+  # Clock Control Module node:
+  - |
+    clk: clock-controller@30380000 {
+        compatible = "fsl,imx8mq-ccm";
+        reg = <0x30380000 0x10000>;
+        #clock-cells = <1>;
+        clocks = <&ckil>, <&osc_25m>, <&osc_27m>,
+                 <&clk_ext1>, <&clk_ext2>,
+                 <&clk_ext3>, <&clk_ext4>;
+        clock-names = "ckil", "osc_25m", "osc_27m",
+                      "clk_ext1", "clk_ext2",
+                      "clk_ext3", "clk_ext4";
+    };
+
+...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
