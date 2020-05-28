Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C78E1E5913
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:41:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=W+vEfSyZMkI9/ZlRxyfpkCVpic3k/LIhKrSI8mzOFYc=; b=pgNjLYjVcLVrYKqYMl12lAw9Mv
	QXYTPlQKiA7a7gItpVkzDcHtMHOO7IBQcGta/Qf9NXD1kSiItEu4JtjqMiDRQawj/vvRFOEERSqCx
	6ZGl3cJukF7OvtTzUthUPGKlDiH/824CFZnteFzkhm3AF0FpDcfGmWKCQ1z4xVNg8VUAJ760j6zET
	yxXmINFQIAi8Nmu5Y2tzi2o+Ko4fD3XAIVDa1LDlefVhzlKAK5Gcrk/oheuWMMPAWjzzwO6xpKCy6
	KukyoIrJP1Sn948xH78jrhgeEtJj8Jx+G5jMHF4FoR3lxmntl3ttug1XP5CLtKScXowRM/xbiPjX5
	Ywpj4Vpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDAQ-0007wo-2g; Thu, 28 May 2020 07:41:30 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeD7W-0003Pa-6M
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:38:32 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AB2601A0C4D;
 Thu, 28 May 2020 09:38:28 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DF5DE1A0C49;
 Thu, 28 May 2020 09:38:22 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B3E4C4031C;
 Thu, 28 May 2020 15:38:15 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, shc_work@mail.ru, s.trumtrar@pengutronix.de,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 7/9] dt-bindings: clock: Convert i.MX25 clock to json-schema
Date: Thu, 28 May 2020 15:27:57 +0800
Message-Id: <1590650879-18288-8-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
References: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_003830_525334_194AEA00 
X-CRM114-Status: GOOD (  10.29  )
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

Convert the i.MX25 clock binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/clock/imx25-clock.txt      | 160 ------------------
 .../devicetree/bindings/clock/imx25-clock.yaml     | 184 +++++++++++++++++++++
 2 files changed, 184 insertions(+), 160 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/imx25-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx25-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/imx25-clock.txt b/Documentation/devicetree/bindings/clock/imx25-clock.txt
deleted file mode 100644
index f8135ea..0000000
--- a/Documentation/devicetree/bindings/clock/imx25-clock.txt
+++ /dev/null
@@ -1,160 +0,0 @@
-* Clock bindings for Freescale i.MX25
-
-Required properties:
-- compatible: Should be "fsl,imx25-ccm"
-- reg: Address and length of the register set
-- interrupts: Should contain CCM interrupt
-- #clock-cells: Should be <1>
-
-The clock consumer should specify the desired clock by having the clock
-ID in its "clocks" phandle cell.  The following is a full list of i.MX25
-clocks and IDs.
-
-	Clock			ID
-	---------------------------
-	dummy			0
-	osc			1
-	mpll			2
-	upll			3
-	mpll_cpu_3_4		4
-	cpu_sel			5
-	cpu			6
-	ahb			7
-	usb_div			8
-	ipg			9
-	per0_sel		10
-	per1_sel		11
-	per2_sel		12
-	per3_sel		13
-	per4_sel		14
-	per5_sel		15
-	per6_sel		16
-	per7_sel		17
-	per8_sel		18
-	per9_sel		19
-	per10_sel		20
-	per11_sel		21
-	per12_sel		22
-	per13_sel		23
-	per14_sel		24
-	per15_sel		25
-	per0			26
-	per1			27
-	per2			28
-	per3			29
-	per4			30
-	per5			31
-	per6			32
-	per7			33
-	per8			34
-	per9			35
-	per10			36
-	per11			37
-	per12			38
-	per13			39
-	per14			40
-	per15			41
-	csi_ipg_per		42
-	epit_ipg_per		43
-	esai_ipg_per		44
-	esdhc1_ipg_per		45
-	esdhc2_ipg_per		46
-	gpt_ipg_per		47
-	i2c_ipg_per		48
-	lcdc_ipg_per		49
-	nfc_ipg_per		50
-	owire_ipg_per		51
-	pwm_ipg_per		52
-	sim1_ipg_per		53
-	sim2_ipg_per		54
-	ssi1_ipg_per		55
-	ssi2_ipg_per		56
-	uart_ipg_per		57
-	ata_ahb			58
-	reserved		59
-	csi_ahb			60
-	emi_ahb			61
-	esai_ahb		62
-	esdhc1_ahb		63
-	esdhc2_ahb		64
-	fec_ahb			65
-	lcdc_ahb		66
-	rtic_ahb		67
-	sdma_ahb		68
-	slcdc_ahb		69
-	usbotg_ahb		70
-	reserved		71
-	reserved		72
-	reserved		73
-	reserved		74
-	can1_ipg		75
-	can2_ipg		76
-	csi_ipg			77
-	cspi1_ipg		78
-	cspi2_ipg		79
-	cspi3_ipg		80
-	dryice_ipg		81
-	ect_ipg			82
-	epit1_ipg		83
-	epit2_ipg		84
-	reserved		85
-	esdhc1_ipg		86
-	esdhc2_ipg		87
-	fec_ipg			88
-	reserved		89
-	reserved		90
-	reserved		91
-	gpt1_ipg		92
-	gpt2_ipg		93
-	gpt3_ipg		94
-	gpt4_ipg		95
-	reserved		96
-	reserved		97
-	reserved		98
-	iim_ipg			99
-	reserved		100
-	reserved		101
-	kpp_ipg			102
-	lcdc_ipg		103
-	reserved		104
-	pwm1_ipg		105
-	pwm2_ipg		106
-	pwm3_ipg		107
-	pwm4_ipg		108
-	rngb_ipg		109
-	reserved		110
-	scc_ipg			111
-	sdma_ipg		112
-	sim1_ipg		113
-	sim2_ipg		114
-	slcdc_ipg		115
-	spba_ipg		116
-	ssi1_ipg		117
-	ssi2_ipg		118
-	tsc_ipg			119
-	uart1_ipg		120
-	uart2_ipg		121
-	uart3_ipg		122
-	uart4_ipg		123
-	uart5_ipg		124
-	reserved		125
-	wdt_ipg			126
-	cko_div			127
-	cko_sel			128
-	cko			129
-
-Examples:
-
-clks: ccm@53f80000 {
-	compatible = "fsl,imx25-ccm";
-	reg = <0x53f80000 0x4000>;
-	interrupts = <31>;
-};
-
-uart1: serial@43f90000 {
-	compatible = "fsl,imx25-uart", "fsl,imx21-uart";
-	reg = <0x43f90000 0x4000>;
-	interrupts = <45>;
-	clocks = <&clks 79>, <&clks 50>;
-	clock-names = "ipg", "per";
-};
diff --git a/Documentation/devicetree/bindings/clock/imx25-clock.yaml b/Documentation/devicetree/bindings/clock/imx25-clock.yaml
new file mode 100644
index 0000000..d25c537
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx25-clock.yaml
@@ -0,0 +1,184 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/imx25-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Clock bindings for Freescale i.MX25
+
+maintainers:
+  - Sascha Hauer <s.hauer@pengutronix.de>
+
+description: |
+  The clock consumer should specify the desired clock by having the clock
+  ID in its "clocks" phandle cell. The following is a full list of i.MX25
+  clocks and IDs.
+
+        Clock			ID
+        --------------------------
+        dummy			0
+        osc			1
+        mpll			2
+        upll			3
+        mpll_cpu_3_4		4
+        cpu_sel			5
+        cpu			6
+        ahb			7
+        usb_div			8
+        ipg			9
+        per0_sel		10
+        per1_sel		11
+        per2_sel		12
+        per3_sel		13
+        per4_sel		14
+        per5_sel		15
+        per6_sel		16
+        per7_sel		17
+        per8_sel		18
+        per9_sel		19
+        per10_sel		20
+        per11_sel		21
+        per12_sel		22
+        per13_sel		23
+        per14_sel		24
+        per15_sel		25
+        per0			26
+        per1			27
+        per2			28
+        per3			29
+        per4			30
+        per5			31
+        per6			32
+        per7			33
+        per8			34
+        per9			35
+        per10			36
+        per11			37
+        per12			38
+        per13			39
+        per14			40
+        per15			41
+        csi_ipg_per		42
+        epit_ipg_per		43
+        esai_ipg_per		44
+        esdhc1_ipg_per		45
+        esdhc2_ipg_per		46
+        gpt_ipg_per		47
+        i2c_ipg_per		48
+        lcdc_ipg_per		49
+        nfc_ipg_per		50
+        owire_ipg_per		51
+        pwm_ipg_per		52
+        sim1_ipg_per		53
+        sim2_ipg_per		54
+        ssi1_ipg_per		55
+        ssi2_ipg_per		56
+        uart_ipg_per		57
+        ata_ahb			58
+        reserved		59
+        csi_ahb			60
+        emi_ahb			61
+        esai_ahb		62
+        esdhc1_ahb		63
+        esdhc2_ahb		64
+        fec_ahb			65
+        lcdc_ahb		66
+        rtic_ahb		67
+        sdma_ahb		68
+        slcdc_ahb		69
+        usbotg_ahb		70
+        reserved		71
+        reserved		72
+        reserved		73
+        reserved		74
+        can1_ipg		75
+        can2_ipg		76
+        csi_ipg			77
+        cspi1_ipg		78
+        cspi2_ipg		79
+        cspi3_ipg		80
+        dryice_ipg		81
+        ect_ipg			82
+        epit1_ipg		83
+        epit2_ipg		84
+        reserved		85
+        esdhc1_ipg		86
+        esdhc2_ipg		87
+        fec_ipg			88
+        reserved		89
+        reserved		90
+        reserved		91
+        gpt1_ipg		92
+        gpt2_ipg		93
+        gpt3_ipg		94
+        gpt4_ipg		95
+        reserved		96
+        reserved		97
+        reserved		98
+        iim_ipg			99
+        reserved		100
+        reserved		101
+        kpp_ipg			102
+        lcdc_ipg		103
+        reserved		104
+        pwm1_ipg		105
+        pwm2_ipg		106
+        pwm3_ipg		107
+        pwm4_ipg		108
+        rngb_ipg		109
+        reserved		110
+        scc_ipg			111
+        sdma_ipg		112
+        sim1_ipg		113
+        sim2_ipg		114
+        slcdc_ipg		115
+        spba_ipg		116
+        ssi1_ipg		117
+        ssi2_ipg		118
+        tsc_ipg			119
+        uart1_ipg		120
+        uart2_ipg		121
+        uart3_ipg		122
+        uart4_ipg		123
+        uart5_ipg		124
+        reserved		125
+        wdt_ipg			126
+        cko_div			127
+        cko_sel			128
+        cko			129
+
+properties:
+  compatible:
+    const: fsl,imx25-ccm
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
+        compatible = "fsl,imx25-ccm";
+        reg = <0x53f80000 0x4000>;
+        interrupts = <31>;
+        #clock-cells = <1>;
+    };
+
+    serial@43f90000 {
+        compatible = "fsl,imx25-uart", "fsl,imx21-uart";
+        reg = <0x43f90000 0x4000>;
+        interrupts = <45>;
+        clocks = <&clks 79>, <&clks 50>;
+        clock-names = "ipg", "per";
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
