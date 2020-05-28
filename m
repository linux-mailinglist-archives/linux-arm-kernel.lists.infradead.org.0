Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC39D1E58EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:39:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OEKed81BPVW05TIccm3sXjN6XfF9uW8oRVadLvZEo/I=; b=b28xgrhySST7YxeraZbvS7NWNj
	8X/TGWpoVpnn3hNbGXN3a1IfJak6G5rtMw6dQnOzqPEUXF8IqhtoOkkk9Bu5PpWmuUUcqNeE3xEu2
	rbJvoNWgcPX6fKcEIq9vYGqjndzzAzynvk7IP3urBVRtjCXtNbqrlrC3N3HapQfY8SP5aa7AowEaq
	UJOl2VAloqSEfgiUqhJtggEqci4XNnuKUVvwldQ0HNQpOurtMwQ+c9sBFT97V4Uf6/bH8MiY7Q77b
	UwsEi0si38/QORwcMYmRDav4Wr8yo39y4P4cwoaQVZ47wsEx7Ohs9X9JDJsUH9vE6+F0OFyTKJF/m
	1HPbFNwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeD8d-000453-5x; Thu, 28 May 2020 07:39:39 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeD7N-0003IU-V5
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:38:24 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A0B73200A1A;
 Thu, 28 May 2020 09:38:20 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D5606200A1E;
 Thu, 28 May 2020 09:38:14 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 60C8A40319;
 Thu, 28 May 2020 15:38:07 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, shc_work@mail.ru, s.trumtrar@pengutronix.de,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/9] dt-bindings: clock: Convert i.MX31 clock to json-schema
Date: Thu, 28 May 2020 15:27:53 +0800
Message-Id: <1590650879-18288-4-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
References: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_003822_286270_78448793 
X-CRM114-Status: GOOD (  10.75  )
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

Convert the i.MX31 clock binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/clock/imx31-clock.txt      |  90 ----------------
 .../devicetree/bindings/clock/imx31-clock.yaml     | 118 +++++++++++++++++++++
 2 files changed, 118 insertions(+), 90 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/imx31-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx31-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/imx31-clock.txt b/Documentation/devicetree/bindings/clock/imx31-clock.txt
deleted file mode 100644
index 0a29109..0000000
--- a/Documentation/devicetree/bindings/clock/imx31-clock.txt
+++ /dev/null
@@ -1,90 +0,0 @@
-* Clock bindings for Freescale i.MX31
-
-Required properties:
-- compatible: Should be "fsl,imx31-ccm"
-- reg: Address and length of the register set
-- interrupts: Should contain CCM interrupt
-- #clock-cells: Should be <1>
-
-The clock consumer should specify the desired clock by having the clock
-ID in its "clocks" phandle cell.  The following is a full list of i.MX31
-clocks and IDs.
-
-	Clock		    ID
-	-----------------------
-	dummy	             0
-	ckih                 1
-	ckil                 2
-	mpll                 3
-	spll                 4
-	upll                 5
-	mcu_main             6
-	hsp                  7
-	ahb                  8
-	nfc                  9
-	ipg                  10
-	per_div              11
-	per                  12
-	csi_sel              13
-	fir_sel              14
-	csi_div              15
-	usb_div_pre          16
-	usb_div_post         17
-	fir_div_pre          18
-	fir_div_post         19
-	sdhc1_gate           20
-	sdhc2_gate           21
-	gpt_gate             22
-	epit1_gate           23
-	epit2_gate           24
-	iim_gate             25
-	ata_gate             26
-	sdma_gate            27
-	cspi3_gate           28
-	rng_gate             29
-	uart1_gate           30
-	uart2_gate           31
-	ssi1_gate            32
-	i2c1_gate            33
-	i2c2_gate            34
-	i2c3_gate            35
-	hantro_gate          36
-	mstick1_gate         37
-	mstick2_gate         38
-	csi_gate             39
-	rtc_gate             40
-	wdog_gate            41
-	pwm_gate             42
-	sim_gate             43
-	ect_gate             44
-	usb_gate             45
-	kpp_gate             46
-	ipu_gate             47
-	uart3_gate           48
-	uart4_gate           49
-	uart5_gate           50
-	owire_gate           51
-	ssi2_gate            52
-	cspi1_gate           53
-	cspi2_gate           54
-	gacc_gate            55
-	emi_gate             56
-	rtic_gate            57
-	firi_gate            58
-
-Examples:
-
-clks: ccm@53f80000{
-	compatible = "fsl,imx31-ccm";
-	reg = <0x53f80000 0x4000>;
-	interrupts = <31>, <53>;
-	#clock-cells = <1>;
-};
-
-uart1: serial@43f90000 {
-	compatible = "fsl,imx31-uart", "fsl,imx21-uart";
-	reg = <0x43f90000 0x4000>;
-	interrupts = <45>;
-	clocks = <&clks 10>, <&clks 30>;
-	clock-names = "ipg", "per";
-};
diff --git a/Documentation/devicetree/bindings/clock/imx31-clock.yaml b/Documentation/devicetree/bindings/clock/imx31-clock.yaml
new file mode 100644
index 0000000..2d9220e
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx31-clock.yaml
@@ -0,0 +1,118 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/imx31-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Clock bindings for Freescale i.MX31
+
+maintainers:
+  - Fabio Estevam <fabio.estevam@freescale.com>
+
+description: |
+  The clock consumer should specify the desired clock by having the clock
+  ID in its "clocks" phandle cell. The following is a full list of i.MX31
+  clocks and IDs.
+
+        Clock		    ID
+        -----------------------
+        dummy	             0
+        ckih                 1
+        ckil                 2
+        mpll                 3
+        spll                 4
+        upll                 5
+        mcu_main             6
+        hsp                  7
+        ahb                  8
+        nfc                  9
+        ipg                  10
+        per_div              11
+        per                  12
+        csi_sel              13
+        fir_sel              14
+        csi_div              15
+        usb_div_pre          16
+        usb_div_post         17
+        fir_div_pre          18
+        fir_div_post         19
+        sdhc1_gate           20
+        sdhc2_gate           21
+        gpt_gate             22
+        epit1_gate           23
+        epit2_gate           24
+        iim_gate             25
+        ata_gate             26
+        sdma_gate            27
+        cspi3_gate           28
+        rng_gate             29
+        uart1_gate           30
+        uart2_gate           31
+        ssi1_gate            32
+        i2c1_gate            33
+        i2c2_gate            34
+        i2c3_gate            35
+        hantro_gate          36
+        mstick1_gate         37
+        mstick2_gate         38
+        csi_gate             39
+        rtc_gate             40
+        wdog_gate            41
+        pwm_gate             42
+        sim_gate             43
+        ect_gate             44
+        usb_gate             45
+        kpp_gate             46
+        ipu_gate             47
+        uart3_gate           48
+        uart4_gate           49
+        uart5_gate           50
+        owire_gate           51
+        ssi2_gate            52
+        cspi1_gate           53
+        cspi2_gate           54
+        gacc_gate            55
+        emi_gate             56
+        rtic_gate            57
+        firi_gate            58
+
+properties:
+  compatible:
+    const: fsl,imx31-ccm
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    description: CCM provides 2 interrupt requests, request 1 is to generate
+      interrupt for DVFS when a frequency change is requested, request 2 is
+      to generate interrupt for DPTC when a voltage change is requested.
+    items:
+      - description: CCM DVFS interrupt request 1
+      - description: CCM DPTC interrupt request 2
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
+        compatible = "fsl,imx31-ccm";
+        reg = <0x53f80000 0x4000>;
+        interrupts = <31>, <53>;
+        #clock-cells = <1>;
+    };
+
+    serial@43f90000 {
+        compatible = "fsl,imx31-uart", "fsl,imx21-uart";
+        reg = <0x43f90000 0x4000>;
+        interrupts = <45>;
+        clocks = <&clks 10>, <&clks 30>;
+        clock-names = "ipg", "per";
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
