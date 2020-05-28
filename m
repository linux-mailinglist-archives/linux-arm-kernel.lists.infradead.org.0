Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C681E58D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MNhIpJHmWKkPx6zmRVQ9NCDkUvBVVOEwOdR72FSERA0=; b=az8jWggCdIstZjthisvDBZGXPv
	dZHYBuIE12b7D6Z5YStFo15SHTMEesHmpISL59Iqfy6tpgHtgNRIf/e9qXpPKOuKgiwMs2tehogfg
	LnT40kjb9utRJi4+pLQ/OvzHXpPtCWlWgDoaCeiVNwni2htprVvvy1Hvz+ebWXYNBTSPS7d9DDFGv
	43Yb7IayMhi1eJQwI2tbghCxb+NNAsWYTnuWsA21KAHdyfg7J74hp1oMjF/Gh73M8ryQh2LwVxJti
	8AX2ociZMks9eomo+9SLoziv+fu5Lkr4HMKyfioIAlQdVFmNSh6VKHS65jeykv/xxSfx0kSFlT+U0
	l0fmF7Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeD7x-0003Y1-J4; Thu, 28 May 2020 07:38:57 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeD7M-0003Hw-N4
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:38:22 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 270AB200A1F;
 Thu, 28 May 2020 09:38:17 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 54085200A1D;
 Thu, 28 May 2020 09:38:11 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 48AF8402BF;
 Thu, 28 May 2020 15:38:04 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, shc_work@mail.ru, s.trumtrar@pengutronix.de,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/9] dt-bindings: clock: Convert i.MX5 clock to json-schema
Date: Thu, 28 May 2020 15:27:51 +0800
Message-Id: <1590650879-18288-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
References: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_003821_072835_ABAA836B 
X-CRM114-Status: GOOD (  10.29  )
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

Convert the i.MX5 clock binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/clock/imx5-clock.txt       | 28 ----------
 .../devicetree/bindings/clock/imx5-clock.yaml      | 63 ++++++++++++++++++++++
 2 files changed, 63 insertions(+), 28 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/imx5-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx5-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/imx5-clock.txt b/Documentation/devicetree/bindings/clock/imx5-clock.txt
deleted file mode 100644
index a24ca9e..0000000
--- a/Documentation/devicetree/bindings/clock/imx5-clock.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-* Clock bindings for Freescale i.MX5
-
-Required properties:
-- compatible: Should be "fsl,<soc>-ccm" , where <soc> can be imx51 or imx53
-- reg: Address and length of the register set
-- interrupts: Should contain CCM interrupt
-- #clock-cells: Should be <1>
-
-The clock consumer should specify the desired clock by having the clock
-ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx5-clock.h
-for the full list of i.MX5 clock IDs.
-
-Examples (for mx53):
-
-clks: ccm@53fd4000{
-	compatible = "fsl,imx53-ccm";
-	reg = <0x53fd4000 0x4000>;
-	interrupts = <0 71 0x04 0 72 0x04>;
-	#clock-cells = <1>;
-};
-
-can1: can@53fc8000 {
-	compatible = "fsl,imx53-flexcan", "fsl,p1010-flexcan";
-	reg = <0x53fc8000 0x4000>;
-	interrupts = <82>;
-	clocks = <&clks IMX5_CLK_CAN1_IPG_GATE>, <&clks IMX5_CLK_CAN1_SERIAL_GATE>;
-	clock-names = "ipg", "per";
-};
diff --git a/Documentation/devicetree/bindings/clock/imx5-clock.yaml b/Documentation/devicetree/bindings/clock/imx5-clock.yaml
new file mode 100644
index 0000000..e4c405c
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx5-clock.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/imx5-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Clock bindings for Freescale i.MX5
+
+maintainers:
+  - Fabio Estevam <fabio.estevam@freescale.com>
+
+description: |
+  The clock consumer should specify the desired clock by having the clock
+  ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx5-clock.h
+  for the full list of i.MX5 clock IDs.
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx53-ccm
+      - fsl,imx51-ccm
+      - fsl,imx50-ccm
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
+
+  '#clock-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - '#clock-cells'
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx5-clock.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    clock-controller@53fd4000{
+        compatible = "fsl,imx53-ccm";
+        reg = <0x53fd4000 0x4000>;
+        interrupts = <0 71 IRQ_TYPE_LEVEL_HIGH>,
+                     <0 72 IRQ_TYPE_LEVEL_HIGH>;
+        #clock-cells = <1>;
+    };
+
+    can@53fc8000 {
+        compatible = "fsl,imx53-flexcan", "fsl,p1010-flexcan";
+        reg = <0x53fc8000 0x4000>;
+        interrupts = <82>;
+        clocks = <&clks IMX5_CLK_CAN1_IPG_GATE>, <&clks IMX5_CLK_CAN1_SERIAL_GATE>;
+        clock-names = "ipg", "per";
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
