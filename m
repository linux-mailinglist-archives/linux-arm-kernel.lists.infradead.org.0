Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B08271E58E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VKssXfId/djq2kzr56ywJUIudByCw3b9Y3zNcZLRVyU=; b=jQgmOBRuoMjEahppUplZ9XMzWV
	fIF1TM7VERF74NKjMjpLCypAGI44ueh8zIss56OcQw1ffUPSuaHQphXbTf//GY3OVWo3lqFops74W
	WtXghey4tyZDiKQxywvCfsx3/VmsrbswJuFHm6Gf4sKEd4wZ5yRBqfClX0iScwAXRN70MrQ4zbJwa
	wTxOmABKJnJgnJ01PrAKcf3gZZ6r+JBXK5OxZlpFv7f9mnji4nqKol6WS0jYGBzLlvgdk/HPW8uFR
	gNGj8Uu3zDI+vyHSdmKHhkiUxDkXKMk60SRwEOQa7c/CKlzvC81IFufW9X2759En5uVDsnhYEINqZ
	kjk9NOMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeD8K-0003mI-Tj; Thu, 28 May 2020 07:39:20 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeD7M-0003Hs-N5
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:38:23 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F1686200A26;
 Thu, 28 May 2020 09:38:18 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 331F2200A1A;
 Thu, 28 May 2020 09:38:13 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BA765402DF;
 Thu, 28 May 2020 15:38:05 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, shc_work@mail.ru, s.trumtrar@pengutronix.de,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/9] dt-bindings: clock: Convert i.MX35 clock to json-schema
Date: Thu, 28 May 2020 15:27:52 +0800
Message-Id: <1590650879-18288-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
References: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_003821_045278_44E3DD5F 
X-CRM114-Status: UNSURE (   9.93  )
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

Convert the i.MX35 clock binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/clock/imx35-clock.txt      | 114 -----------------
 .../devicetree/bindings/clock/imx35-clock.yaml     | 137 +++++++++++++++++++++
 2 files changed, 137 insertions(+), 114 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/imx35-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx35-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/imx35-clock.txt b/Documentation/devicetree/bindings/clock/imx35-clock.txt
deleted file mode 100644
index f497832..0000000
--- a/Documentation/devicetree/bindings/clock/imx35-clock.txt
+++ /dev/null
@@ -1,114 +0,0 @@
-* Clock bindings for Freescale i.MX35
-
-Required properties:
-- compatible: Should be "fsl,imx35-ccm"
-- reg: Address and length of the register set
-- interrupts: Should contain CCM interrupt
-- #clock-cells: Should be <1>
-
-The clock consumer should specify the desired clock by having the clock
-ID in its "clocks" phandle cell.  The following is a full list of i.MX35
-clocks and IDs.
-
-	Clock			ID
-	---------------------------
-	ckih			0
-	mpll			1
-	ppll			2
-	mpll_075		3
-	arm			4
-	hsp			5
-	hsp_div			6
-	hsp_sel			7
-	ahb			8
-	ipg			9
-	arm_per_div		10
-	ahb_per_div		11
-	ipg_per			12
-	uart_sel		13
-	uart_div		14
-	esdhc_sel		15
-	esdhc1_div		16
-	esdhc2_div		17
-	esdhc3_div		18
-	spdif_sel		19
-	spdif_div_pre		20
-	spdif_div_post		21
-	ssi_sel			22
-	ssi1_div_pre		23
-	ssi1_div_post		24
-	ssi2_div_pre		25
-	ssi2_div_post		26
-	usb_sel			27
-	usb_div			28
-	nfc_div			29
-	asrc_gate		30
-	pata_gate		31
-	audmux_gate		32
-	can1_gate		33
-	can2_gate		34
-	cspi1_gate		35
-	cspi2_gate		36
-	ect_gate		37
-	edio_gate		38
-	emi_gate		39
-	epit1_gate		40
-	epit2_gate		41
-	esai_gate		42
-	esdhc1_gate		43
-	esdhc2_gate		44
-	esdhc3_gate		45
-	fec_gate		46
-	gpio1_gate		47
-	gpio2_gate		48
-	gpio3_gate		49
-	gpt_gate		50
-	i2c1_gate		51
-	i2c2_gate		52
-	i2c3_gate		53
-	iomuxc_gate		54
-	ipu_gate		55
-	kpp_gate		56
-	mlb_gate		57
-	mshc_gate		58
-	owire_gate		59
-	pwm_gate		60
-	rngc_gate		61
-	rtc_gate		62
-	rtic_gate		63
-	scc_gate		64
-	sdma_gate		65
-	spba_gate		66
-	spdif_gate		67
-	ssi1_gate		68
-	ssi2_gate		69
-	uart1_gate		70
-	uart2_gate		71
-	uart3_gate		72
-	usbotg_gate		73
-	wdog_gate		74
-	max_gate		75
-	admux_gate		76
-	csi_gate		77
-	csi_div			78
-	csi_sel			79
-	iim_gate		80
-	gpu2d_gate		81
-	ckli_gate		82
-
-Examples:
-
-clks: ccm@53f80000 {
-	compatible = "fsl,imx35-ccm";
-	reg = <0x53f80000 0x4000>;
-	interrupts = <31>;
-	#clock-cells = <1>;
-};
-
-esdhc1: esdhc@53fb4000 {
-	compatible = "fsl,imx35-esdhc";
-	reg = <0x53fb4000 0x4000>;
-	interrupts = <7>;
-	clocks = <&clks 9>, <&clks 8>, <&clks 43>;
-	clock-names = "ipg", "ahb", "per";
-};
diff --git a/Documentation/devicetree/bindings/clock/imx35-clock.yaml b/Documentation/devicetree/bindings/clock/imx35-clock.yaml
new file mode 100644
index 0000000..fecea84
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx35-clock.yaml
@@ -0,0 +1,137 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/imx35-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Clock bindings for Freescale i.MX35
+
+maintainers:
+  - Steffen Trumtrar <s.trumtrar@pengutronix.de>
+
+description: |
+  The clock consumer should specify the desired clock by having the clock
+  ID in its "clocks" phandle cell. The following is a full list of i.MX35
+  clocks and IDs.
+
+        Clock			ID
+        ---------------------------
+        ckih			0
+        mpll			1
+        ppll			2
+        mpll_075		3
+        arm			4
+        hsp			5
+        hsp_div			6
+        hsp_sel			7
+        ahb			8
+        ipg			9
+        arm_per_div		10
+        ahb_per_div		11
+        ipg_per			12
+        uart_sel		13
+        uart_div		14
+        esdhc_sel		15
+        esdhc1_div		16
+        esdhc2_div		17
+        esdhc3_div		18
+        spdif_sel		19
+        spdif_div_pre		20
+        spdif_div_post		21
+        ssi_sel			22
+        ssi1_div_pre		23
+        ssi1_div_post		24
+        ssi2_div_pre		25
+        ssi2_div_post		26
+        usb_sel			27
+        usb_div			28
+        nfc_div			29
+        asrc_gate		30
+        pata_gate		31
+        audmux_gate		32
+        can1_gate		33
+        can2_gate		34
+        cspi1_gate		35
+        cspi2_gate		36
+        ect_gate		37
+        edio_gate		38
+        emi_gate		39
+        epit1_gate		40
+        epit2_gate		41
+        esai_gate		42
+        esdhc1_gate		43
+        esdhc2_gate		44
+        esdhc3_gate		45
+        fec_gate		46
+        gpio1_gate		47
+        gpio2_gate		48
+        gpio3_gate		49
+        gpt_gate		50
+        i2c1_gate		51
+        i2c2_gate		52
+        i2c3_gate		53
+        iomuxc_gate		54
+        ipu_gate		55
+        kpp_gate		56
+        mlb_gate		57
+        mshc_gate		58
+        owire_gate		59
+        pwm_gate		60
+        rngc_gate		61
+        rtc_gate		62
+        rtic_gate		63
+        scc_gate		64
+        sdma_gate		65
+        spba_gate		66
+        spdif_gate		67
+        ssi1_gate		68
+        ssi2_gate		69
+        uart1_gate		70
+        uart2_gate		71
+        uart3_gate		72
+        usbotg_gate		73
+        wdog_gate		74
+        max_gate		75
+        admux_gate		76
+        csi_gate		77
+        csi_div			78
+        csi_sel			79
+        iim_gate		80
+        gpu2d_gate		81
+        ckli_gate		82
+
+properties:
+  compatible:
+    const: fsl,imx35-ccm
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
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
+    clock-controller@53f80000 {
+        compatible = "fsl,imx35-ccm";
+        reg = <0x53f80000 0x4000>;
+        interrupts = <31>;
+        #clock-cells = <1>;
+    };
+
+    esdhc@53fb4000 {
+        compatible = "fsl,imx35-esdhc";
+        reg = <0x53fb4000 0x4000>;
+        interrupts = <7>;
+        clocks = <&clks 9>, <&clks 8>, <&clks 43>;
+        clock-names = "ipg", "ahb", "per";
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
