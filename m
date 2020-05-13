Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9951D038E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 02:22:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zzkoGOwyszanM1eDkkO35i3vduQqHO2xNVavR0VBrHA=; b=Bsm9WDNVmp1Td0GRqfJssPWA/W
	/cND5LI16RkxQTEOa3BoTAms5BGIbSHFgn2qv6EbjgPQWELzj4KyNoetHJ3YQP0OIcvDaJgZW5pAH
	XuZqrLDtuRX7USiqMhUZndQo3Fqo/ap5AvI5INLmU9UAO43j1DBS0Nf7wwsh9r3EWy8CNXe/HnKft
	TSbQgRnmYB/6qZkr9EC0nlh5ATuhPwp2f4Ze8NS/8bN+i25neSQKw9Xa7ON4xy274CrkAH7iTQIIh
	o9wYeSwg9IiQvVohh8z4OQnGeS5H6aEPdK9kln+qjrLNxcWgT92N67M/Z5ckJgUH/rEeV0W/8P7Xp
	D05YIdLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYfAD-0003iW-Jt; Wed, 13 May 2020 00:22:21 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYf8v-0002YG-Gk
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 00:21:03 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3A281201190;
 Wed, 13 May 2020 02:21:00 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 226252002A6;
 Wed, 13 May 2020 02:20:55 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 29AA140318;
 Wed, 13 May 2020 08:20:49 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V5 5/5] dt-bindings: clock: Convert i.MX6UL clock to
 json-schema
Date: Wed, 13 May 2020 08:11:24 +0800
Message-Id: <1589328684-1397-6-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589328684-1397-1-git-send-email-Anson.Huang@nxp.com>
References: <1589328684-1397-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_172101_829233_AB3E62EC 
X-CRM114-Status: GOOD (  10.28  )
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
Acked-by: Stephen Boyd <sboyd@kernel.org>
---
Changes since V4:
	- add descriptions for interrupts and each item of it.
---
 .../devicetree/bindings/clock/imx6ul-clock.txt     | 13 -----
 .../devicetree/bindings/clock/imx6ul-clock.yaml    | 66 ++++++++++++++++++++++
 2 files changed, 66 insertions(+), 13 deletions(-)
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
index 0000000..3c779ee
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx6ul-clock.yaml
@@ -0,0 +1,66 @@
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
+    description: CCM provides 2 interrupt requests, request 1 is to generate
+      interrupt for frequency or mux change, request 2 is to generate
+      interrupt for oscillator read or PLL lock.
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
