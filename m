Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 764341E590F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:41:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YAm91/f8eQCbWlH+nSIAD5ajEPPYVzt6zVMIgSOmUz8=; b=W3a5MZzgy0ZCJdgHXE8obSkYdx
	axkTTXyjr+dxO8oqPdoHixPN8v9c4v00BfWy3cQg3kr+1rhkpKQTXvuqcAvOzAPqktHmJHIkOHvR5
	MzJ1MSAqm7vwYx3QYIFdlEG4EzpslBpL5qrwJBt5t/Hm/Zh9vKsq+4xYdHmd+Fq0R8A6WzKk3dPVj
	9bogiMwpNMFOmFKmPvOao60kctK5afO9bRhyWMbEPLywQaAr4mLGp/+AoejZW925mSStxZK2b3nKk
	eINW/olvzBZStcTNafEqX3SeN9FzfcUXaKfPBDelGehpXR5XLf/i40X/sjV9qd3eDQQUWrxQ0f6j2
	QvLIWEzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDA3-0007dZ-Sr; Thu, 28 May 2020 07:41:07 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeD7S-0003Mf-I5
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:38:29 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CF2DA1A0184;
 Thu, 28 May 2020 09:38:24 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 02A7E1A0C42;
 Thu, 28 May 2020 09:38:19 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 74445402FC;
 Thu, 28 May 2020 15:38:11 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, shc_work@mail.ru, s.trumtrar@pengutronix.de,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 5/9] dt-bindings: clock: Convert i.MX23 clock to json-schema
Date: Thu, 28 May 2020 15:27:55 +0800
Message-Id: <1590650879-18288-6-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
References: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_003826_902557_0380BE5D 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

Convert the i.MX23 clock binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/clock/imx23-clock.txt      | 70 -----------------
 .../devicetree/bindings/clock/imx23-clock.yaml     | 90 ++++++++++++++++++++++
 2 files changed, 90 insertions(+), 70 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/imx23-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx23-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/imx23-clock.txt b/Documentation/devicetree/bindings/clock/imx23-clock.txt
deleted file mode 100644
index 8385348..0000000
--- a/Documentation/devicetree/bindings/clock/imx23-clock.txt
+++ /dev/null
@@ -1,70 +0,0 @@
-* Clock bindings for Freescale i.MX23
-
-Required properties:
-- compatible: Should be "fsl,imx23-clkctrl"
-- reg: Address and length of the register set
-- #clock-cells: Should be <1>
-
-The clock consumer should specify the desired clock by having the clock
-ID in its "clocks" phandle cell.  The following is a full list of i.MX23
-clocks and IDs.
-
-	Clock		ID
-	------------------
-	ref_xtal	0
-	pll		1
-	ref_cpu		2
-	ref_emi		3
-	ref_pix		4
-	ref_io		5
-	saif_sel	6
-	lcdif_sel	7
-	gpmi_sel	8
-	ssp_sel		9
-	emi_sel		10
-	cpu		11
-	etm_sel		12
-	cpu_pll		13
-	cpu_xtal	14
-	hbus		15
-	xbus		16
-	lcdif_div	17
-	ssp_div		18
-	gpmi_div	19
-	emi_pll		20
-	emi_xtal	21
-	etm_div		22
-	saif_div	23
-	clk32k_div	24
-	rtc		25
-	adc		26
-	spdif_div	27
-	clk32k		28
-	dri		29
-	pwm		30
-	filt		31
-	uart		32
-	ssp		33
-	gpmi		34
-	spdif		35
-	emi		36
-	saif		37
-	lcdif		38
-	etm		39
-	usb		40
-	usb_phy		41
-
-Examples:
-
-clks: clkctrl@80040000 {
-	compatible = "fsl,imx23-clkctrl";
-	reg = <0x80040000 0x2000>;
-	#clock-cells = <1>;
-};
-
-auart0: serial@8006c000 {
-	compatible = "fsl,imx23-auart";
-	reg = <0x8006c000 0x2000>;
-	interrupts = <24 25 23>;
-	clocks = <&clks 32>;
-};
diff --git a/Documentation/devicetree/bindings/clock/imx23-clock.yaml b/Documentation/devicetree/bindings/clock/imx23-clock.yaml
new file mode 100644
index 0000000..0fd21f1
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx23-clock.yaml
@@ -0,0 +1,90 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/imx23-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Clock bindings for Freescale i.MX23
+
+maintainers:
+  - Shawn Guo <shawn.guo@linaro.org>
+
+description: |
+  The clock consumer should specify the desired clock by having the clock
+  ID in its "clocks" phandle cell. The following is a full list of i.MX23
+  clocks and IDs.
+
+        Clock		ID
+        ------------------
+        ref_xtal	0
+        pll		1
+        ref_cpu		2
+        ref_emi		3
+        ref_pix		4
+        ref_io		5
+        saif_sel	6
+        lcdif_sel	7
+        gpmi_sel	8
+        ssp_sel		9
+        emi_sel		10
+        cpu		11
+        etm_sel		12
+        cpu_pll		13
+        cpu_xtal	14
+        hbus		15
+        xbus		16
+        lcdif_div	17
+        ssp_div		18
+        gpmi_div	19
+        emi_pll		20
+        emi_xtal	21
+        etm_div		22
+        saif_div	23
+        clk32k_div	24
+        rtc		25
+        adc		26
+        spdif_div	27
+        clk32k		28
+        dri		29
+        pwm		30
+        filt		31
+        uart		32
+        ssp		33
+        gpmi		34
+        spdif		35
+        emi		36
+        saif		37
+        lcdif		38
+        etm		39
+        usb		40
+        usb_phy		41
+
+properties:
+  compatible:
+    const: fsl,imx23-clkctrl
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
+        compatible = "fsl,imx23-clkctrl";
+        reg = <0x80040000 0x2000>;
+        #clock-cells = <1>;
+    };
+
+    serial@8006c000 {
+        compatible = "fsl,imx23-auart";
+        reg = <0x8006c000 0x2000>;
+        interrupts = <24 25 23>;
+        clocks = <&clks 32>;
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
