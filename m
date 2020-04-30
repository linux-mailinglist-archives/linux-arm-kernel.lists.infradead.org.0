Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2721BED57
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 03:01:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hNeHmhQw678ZGCwVEo1ZY2VpGnSjMnH7tphe/W6L9VY=; b=JylGUd7aBgG9Oi1W4gn3XinB3r
	asqiv/6AxjUrQgTCqjRE4ABpKfZ41wMkNK0b+4hayWTamaOy7mJhuZ0b2o+n8A5fRUbMAuauAKMM1
	ludqoqtB07WL9ZU2H96gkBptiZBWf/fJtRGHhsFWmctHMshT0Gn2sanEwL9/sig5DTyB414Nvcha+
	IbbLOXgpgC/Mi2YQmwf7unxjp+juOWUS/J1V5vnxWdE4M3DRXD3SbL6OuDX5OxWZuXjiCEIerp6/i
	4ov3pp2IEbXe6Di8Ff0AICipLWuZaBpTaSlfblB51NeKfszywt+7dA/fYlq/fPqHD5kfIg3pIc/wZ
	o8w2pFWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTxZz-0004xa-86; Thu, 30 Apr 2020 01:01:31 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTxZQ-0004mo-2f
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 01:00:57 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 648B71A0581;
 Thu, 30 Apr 2020 03:00:54 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 499E51A056F;
 Thu, 30 Apr 2020 03:00:49 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 57B2A402B4;
 Thu, 30 Apr 2020 09:00:43 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V4 2/5] dt-bindings: clock: Convert i.MX6SX clock to
 json-schema
Date: Thu, 30 Apr 2020 08:51:58 +0800
Message-Id: <1588207921-20604-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588207921-20604-1-git-send-email-Anson.Huang@nxp.com>
References: <1588207921-20604-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_180056_391547_4FA35FAB 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

Convert the i.MX6SX clock binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V3:
	- update license to be with (GPL-2.0-only OR BSD-2-Clause);
	- remove unnecessary minItem for interrupts;
	- remove label in example.
---
 .../devicetree/bindings/clock/imx6sx-clock.txt     | 13 -----
 .../devicetree/bindings/clock/imx6sx-clock.yaml    | 64 ++++++++++++++++++++++
 2 files changed, 64 insertions(+), 13 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/imx6sx-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx6sx-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/imx6sx-clock.txt b/Documentation/devicetree/bindings/clock/imx6sx-clock.txt
deleted file mode 100644
index 22362b9..0000000
--- a/Documentation/devicetree/bindings/clock/imx6sx-clock.txt
+++ /dev/null
@@ -1,13 +0,0 @@
-* Clock bindings for Freescale i.MX6 SoloX
-
-Required properties:
-- compatible: Should be "fsl,imx6sx-ccm"
-- reg: Address and length of the register set
-- #clock-cells: Should be <1>
-- clocks: list of clock specifiers, must contain an entry for each required
-  entry in clock-names
-- clock-names: should include entries "ckil", "osc", "ipp_di0" and "ipp_di1"
-
-The clock consumer should specify the desired clock by having the clock
-ID in its "clocks" phandle cell.  See include/dt-bindings/clock/imx6sx-clock.h
-for the full list of i.MX6 SoloX clock IDs.
diff --git a/Documentation/devicetree/bindings/clock/imx6sx-clock.yaml b/Documentation/devicetree/bindings/clock/imx6sx-clock.yaml
new file mode 100644
index 0000000..2c7f625
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx6sx-clock.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/imx6sx-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Clock bindings for Freescale i.MX6 SoloX
+
+maintainers:
+  - Anson Huang <Anson.Huang@nxp.com>
+
+properties:
+  compatible:
+    const: fsl,imx6sx-ccm
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
+      - description: anaclk1 clock input
+      - description: anaclk2 clock input
+
+  clock-names:
+    items:
+      - const: ckil
+      - const: osc
+      - const: ipp_di0
+      - const: ipp_di1
+      - const: anaclk1
+      - const: anaclk2
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
+        compatible = "fsl,imx6sx-ccm";
+        reg = <0x020c4000 0x4000>;
+        interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+        #clock-cells = <1>;
+        clocks = <&ckil>, <&osc>, <&ipp_di0>, <&ipp_di1>, <&anaclk1>, <&anaclk2>;
+        clock-names = "ckil", "osc", "ipp_di0", "ipp_di1", "anaclk1", "anaclk2";
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
