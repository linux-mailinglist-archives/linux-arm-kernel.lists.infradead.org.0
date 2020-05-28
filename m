Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC79D1E58F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Pgv58ePkIC9o1oAUgAe2FIbMBL3xFeo4b6dYFxpWug4=; b=mBVppBkILX7854+EU0cg8LFA/3
	5/XXiwTuzmY22JzfKEpE+fCzyi/GCXwzqZUnKSb6vlrfK1sOyeT1e4CIn8qE7A5A0W3j64fGmGTql
	6u78Muiq7jThWJvX1qCqqVpNKHEIjggEK3DJZAYf0qpyJccOkwpBuu+eahFfI+oWgfKRqaVqvV7zh
	nMy5HllcD7jXSO46mXIHcpJDTqHo2ITMIPBIeG5g/fl/V5ljmK45WjuAqHhvnxlv/0UikeXtyVAxA
	ydt5ToR8nhwadDNZrdNYcuRufeJEriadRL2DkrQzlud8gV0s2j6q38mc4oFes0TFBmK3C3fs7Rx0V
	+uq+x3Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeD9M-0004Tj-48; Thu, 28 May 2020 07:40:24 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeD7Q-0003Ks-PM
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:38:27 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 04A05200A1E;
 Thu, 28 May 2020 09:38:23 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3784E200A1D;
 Thu, 28 May 2020 09:38:17 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 62B1C402FB;
 Thu, 28 May 2020 15:38:09 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, shc_work@mail.ru, s.trumtrar@pengutronix.de,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/9] dt-bindings: clock: Convert i.MX28 clock to json-schema
Date: Thu, 28 May 2020 15:27:54 +0800
Message-Id: <1590650879-18288-5-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
References: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_003825_130773_473FA07C 
X-CRM114-Status: GOOD (  10.12  )
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

Convert the i.MX28 clock binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/clock/imx28-clock.txt      |  93 -----------------
 .../devicetree/bindings/clock/imx28-clock.yaml     | 113 +++++++++++++++++++++
 2 files changed, 113 insertions(+), 93 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/imx28-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx28-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/imx28-clock.txt b/Documentation/devicetree/bindings/clock/imx28-clock.txt
deleted file mode 100644
index d84a37d..0000000
--- a/Documentation/devicetree/bindings/clock/imx28-clock.txt
+++ /dev/null
@@ -1,93 +0,0 @@
-* Clock bindings for Freescale i.MX28
-
-Required properties:
-- compatible: Should be "fsl,imx28-clkctrl"
-- reg: Address and length of the register set
-- #clock-cells: Should be <1>
-
-The clock consumer should specify the desired clock by having the clock
-ID in its "clocks" phandle cell.  The following is a full list of i.MX28
-clocks and IDs.
-
-	Clock		ID
-	------------------
-	ref_xtal	0
-	pll0		1
-	pll1		2
-	pll2		3
-	ref_cpu		4
-	ref_emi		5
-	ref_io0		6
-	ref_io1		7
-	ref_pix		8
-	ref_hsadc	9
-	ref_gpmi	10
-	saif0_sel	11
-	saif1_sel	12
-	gpmi_sel	13
-	ssp0_sel	14
-	ssp1_sel	15
-	ssp2_sel	16
-	ssp3_sel	17
-	emi_sel		18
-	etm_sel		19
-	lcdif_sel	20
-	cpu		21
-	ptp_sel		22
-	cpu_pll		23
-	cpu_xtal	24
-	hbus		25
-	xbus		26
-	ssp0_div	27
-	ssp1_div	28
-	ssp2_div	29
-	ssp3_div	30
-	gpmi_div	31
-	emi_pll		32
-	emi_xtal	33
-	lcdif_div	34
-	etm_div		35
-	ptp		36
-	saif0_div	37
-	saif1_div	38
-	clk32k_div	39
-	rtc		40
-	lradc		41
-	spdif_div	42
-	clk32k		43
-	pwm		44
-	uart		45
-	ssp0		46
-	ssp1		47
-	ssp2		48
-	ssp3		49
-	gpmi		50
-	spdif		51
-	emi		52
-	saif0		53
-	saif1		54
-	lcdif		55
-	etm		56
-	fec		57
-	can0		58
-	can1		59
-	usb0		60
-	usb1		61
-	usb0_phy	62
-	usb1_phy	63
-	enet_out	64
-
-Examples:
-
-clks: clkctrl@80040000 {
-	compatible = "fsl,imx28-clkctrl";
-	reg = <0x80040000 0x2000>;
-	#clock-cells = <1>;
-};
-
-auart0: serial@8006a000 {
-	compatible = "fsl,imx28-auart", "fsl,imx23-auart";
-	reg = <0x8006a000 0x2000>;
-	interrupts = <112 70 71>;
-	clocks = <&clks 45>;
-};
diff --git a/Documentation/devicetree/bindings/clock/imx28-clock.yaml b/Documentation/devicetree/bindings/clock/imx28-clock.yaml
new file mode 100644
index 0000000..e4a7038
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx28-clock.yaml
@@ -0,0 +1,113 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/imx28-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Clock bindings for Freescale i.MX28
+
+maintainers:
+  - Shawn Guo <shawn.guo@linaro.org>
+
+description: |
+  The clock consumer should specify the desired clock by having the clock
+  ID in its "clocks" phandle cell. The following is a full list of i.MX28
+  clocks and IDs.
+
+        Clock		ID
+        ------------------
+        ref_xtal	0
+        pll0		1
+        pll1		2
+        pll2		3
+        ref_cpu		4
+        ref_emi		5
+        ref_io0		6
+        ref_io1		7
+        ref_pix		8
+        ref_hsadc	9
+        ref_gpmi	10
+        saif0_sel	11
+        saif1_sel	12
+        gpmi_sel	13
+        ssp0_sel	14
+        ssp1_sel	15
+        ssp2_sel	16
+        ssp3_sel	17
+        emi_sel		18
+        etm_sel		19
+        lcdif_sel	20
+        cpu		21
+        ptp_sel		22
+        cpu_pll		23
+        cpu_xtal	24
+        hbus		25
+        xbus		26
+        ssp0_div	27
+        ssp1_div	28
+        ssp2_div	29
+        ssp3_div	30
+        gpmi_div	31
+        emi_pll		32
+        emi_xtal	33
+        lcdif_div	34
+        etm_div		35
+        ptp		36
+        saif0_div	37
+        saif1_div	38
+        clk32k_div	39
+        rtc		40
+        lradc		41
+        spdif_div	42
+        clk32k		43
+        pwm		44
+        uart		45
+        ssp0		46
+        ssp1		47
+        ssp2		48
+        ssp3		49
+        gpmi		50
+        spdif		51
+        emi		52
+        saif0		53
+        saif1		54
+        lcdif		55
+        etm		56
+        fec		57
+        can0		58
+        can1		59
+        usb0		60
+        usb1		61
+        usb0_phy	62
+        usb1_phy	63
+        enet_out	64
+
+properties:
+  compatible:
+    const: fsl,imx28-clkctrl
+
+  reg:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - '#clock-cells'
+
+examples:
+  - |
+    clock-controller@80040000 {
+        compatible = "fsl,imx28-clkctrl";
+        reg = <0x80040000 0x2000>;
+        #clock-cells = <1>;
+    };
+
+    serial@8006a000 {
+        compatible = "fsl,imx28-auart", "fsl,imx23-auart";
+        reg = <0x8006a000 0x2000>;
+        interrupts = <112 70 71>;
+        clocks = <&clks 45>;
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
