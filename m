Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBF71D7ADE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 16:17:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KZNX/M1h3pbEcBIFnq3d9dPqhAG0n/OwwWFwa5Qi7ms=; b=Lik
	Ece3jEh/rTQ2D2hjOchRET0KljTMkIyNF4HIVX7RQYkXWX5wmWpYKFX8nq43YgnqUU2nZ1N0sqMpt
	zTkKacSvuQkl6ChziJJdurQHW8+ZhWNl/JGEgIxhXiBXBMi5xn85Ip5c51W6Mt4vlEMzGf1ve+O1I
	3VKo7rSjuuQbUlbedYRGTRzM0SMq1KpP+bQ294BShHMJ46spAsJzEtnunxUSx5eAYmjccf/wrAeDR
	MvAaqxPN4wL6Dh3+6hyBrwG5RDzslqc//P6QsUggn6H42wCqcBm53p2GxdHfP/RrP3NXwJDj0Ybj1
	dC829pgeWQqru0XQpoDMWvYOCTYrtjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jagZa-0006Jk-Ta; Mon, 18 May 2020 14:16:54 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jagZS-0006In-E0
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 14:16:48 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5ADF42009BA;
 Mon, 18 May 2020 16:16:44 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 069E3200941;
 Mon, 18 May 2020 16:16:39 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 47DC9402A8;
 Mon, 18 May 2020 22:16:32 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, Frank.Li@freescale.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: clock: Convert i.MX7D clock to json-schema
Date: Mon, 18 May 2020 22:06:59 +0800
Message-Id: <1589810819-19851-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_071646_745532_ABF0B6B9 
X-CRM114-Status: UNSURE (   9.06  )
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

Convert the i.MX7D clock binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/clock/imx7d-clock.txt      | 13 -----
 .../devicetree/bindings/clock/imx7d-clock.yaml     | 64 ++++++++++++++++++++++
 2 files changed, 64 insertions(+), 13 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/imx7d-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx7d-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/imx7d-clock.txt b/Documentation/devicetree/bindings/clock/imx7d-clock.txt
deleted file mode 100644
index 9d3026d..0000000
--- a/Documentation/devicetree/bindings/clock/imx7d-clock.txt
+++ /dev/null
@@ -1,13 +0,0 @@
-* Clock bindings for Freescale i.MX7 Dual
-
-Required properties:
-- compatible: Should be "fsl,imx7d-ccm"
-- reg: Address and length of the register set
-- #clock-cells: Should be <1>
-- clocks: list of clock specifiers, must contain an entry for each required
-  entry in clock-names
-- clock-names: should include entries "ckil", "osc"
-
-The clock consumer should specify the desired clock by having the clock
-ID in its "clocks" phandle cell.  See include/dt-bindings/clock/imx7d-clock.h
-for the full list of i.MX7 Dual clock IDs.
diff --git a/Documentation/devicetree/bindings/clock/imx7d-clock.yaml b/Documentation/devicetree/bindings/clock/imx7d-clock.yaml
new file mode 100644
index 0000000..72eb13f
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx7d-clock.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/imx7d-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Clock bindings for Freescale i.MX7 Dual
+
+maintainers:
+  - Frank Li <Frank.Li@freescale.com>
+  - Anson Huang <Anson.Huang@nxp.com>
+
+description: |
+  The clock consumer should specify the desired clock by having the clock
+  ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx7d-clock.h
+  for the full list of i.MX7 Dual clock IDs.
+
+properties:
+  compatible:
+    const: fsl,imx7d-ccm
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: CCM interrupt request 1
+      - description: CCM interrupt request 2
+    maxItems: 2
+
+  '#clock-cells':
+    const: 1
+
+  clocks:
+    items:
+      - description: 32k osc
+      - description: 24m osc
+
+  clock-names:
+    items:
+      - const: ckil
+      - const: osc
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - '#clock-cells'
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    clock-controller@30380000 {
+        compatible = "fsl,imx7d-ccm";
+        reg = <0x30380000 0x10000>;
+        interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+        #clock-cells = <1>;
+        clocks = <&ckil>, <&osc>;
+        clock-names = "ckil", "osc";
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
