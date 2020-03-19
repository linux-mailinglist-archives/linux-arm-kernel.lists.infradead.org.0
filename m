Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C9418AC86
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 06:58:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+OJzyq+tG4+BK49uw0cWETL9B83tltPPmrxdsaITxo=; b=LL148cEDPf/tvY
	VUP6wSeWNlpI+LdSD6aBCYtntS1eeNCAyo5RgMyKLgClzIXgBXs1qISyL2msjWYz546isPFxN/DBs
	cHOfmY6TedJxN0bzbXsQ4XyxVC2DSb88ycPMFbNHfHh16pKUPlO4FqAdymDMN6QTizTZ6PV7Bqm1k
	c4+pXtTMlu49hSLviha8jaENU7oO8L7SfbAu6KxWxwWKkjmaZAS0GSHRJPy+2cJcdQ+0JeOcgmPWh
	GmIpKQVzBmMjWEx+fmtVLCNWKT00NF0BBP7zVZBc+9kV9S9gbNIahSHYcHOBGdN0e8dsUi9ZEXzLp
	zoAdYIQhY7tLSpXMlKqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEoCP-0000gS-QS; Thu, 19 Mar 2020 05:58:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEoBH-0008KF-Ur
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 05:57:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jEoAh-0000e1-EN; Thu, 19 Mar 2020 06:56:47 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jEoAZ-0001zw-VI; Thu, 19 Mar 2020 06:56:39 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 5/5] ARM: dts: add Protonic RVT board
Date: Thu, 19 Mar 2020 06:56:36 +0100
Message-Id: <20200319055636.7573-6-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200319055636.7573-1-o.rempel@pengutronix.de>
References: <20200319055636.7573-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_225724_011785_52DABF1D 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Oleksij Rempel <o.rempel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Jander <david@protonic.nl>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Protonic RVT is an internal development platform for a wireless ISObus
Virtual Terminal based on COTS tablets, and the predecessor of the WD2
platform.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/imx6dl-prtrvt.dts           | 108 ++++++++++++++++++
 3 files changed, 110 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6dl-prtrvt.dts

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 424be1edf005..2e8a03ef5c95 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -168,6 +168,7 @@ properties:
               - emtrion,emcon-mx6-avari   # emCON-MX6S or emCON-MX6DL SoM on Avari Base
               - fsl,imx6dl-sabreauto      # i.MX6 DualLite/Solo SABRE Automotive Board
               - fsl,imx6dl-sabresd        # i.MX6 DualLite SABRE Smart Device Board
+              - prt,prtrvt                # Protonic RVT board
               - prt,prtvt7                # Protonic VT7 board
               - technologic,imx6dl-ts4900
               - technologic,imx6dl-ts7970
diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e53abe1de259..afaccc9bc645 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -446,6 +446,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
 	imx6dl-nitrogen6x.dtb \
 	imx6dl-phytec-mira-rdk-nand.dtb \
 	imx6dl-phytec-pbab01.dtb \
+	imx6dl-prtrvt.dtb \
 	imx6dl-prtvt7.dtb \
 	imx6dl-rex-basic.dtb \
 	imx6dl-riotboard.dtb \
diff --git a/arch/arm/boot/dts/imx6dl-prtrvt.dts b/arch/arm/boot/dts/imx6dl-prtrvt.dts
new file mode 100644
index 000000000000..fddc91b5a113
--- /dev/null
+++ b/arch/arm/boot/dts/imx6dl-prtrvt.dts
@@ -0,0 +1,108 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) 2014 Protonic Holland
+ */
+
+/dts-v1/;
+#include "imx6dl.dtsi"
+#include "imx6qdl-prti6q.dtsi"
+
+/ {
+	model = "Protonic RVT board";
+	compatible = "prt,prtrvt", "fsl,imx6dl";
+
+	memory@10000000 {
+		device_type = "memory";
+		reg = <0x10000000 0x10000000>;
+	};
+};
+
+&iomuxc {
+	prti6q {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				/* SGTL5000 sys_mclk */
+				MX6QDL_PAD_CSI0_MCLK__CCM_CLKO1	0x030b0
+				/* CAN1_SR + CAN2_SR GPIO outputs */
+				MX6QDL_PAD_KEY_COL3__GPIO4_IO12	0x13070
+				MX6QDL_PAD_KEY_ROW3__GPIO4_IO13	0x13070
+
+				/* CAN1_TERM */
+				MX6QDL_PAD_GPIO_0__GPIO1_IO00	0x1b0b0
+				/* ITU656_nRESET */
+				MX6QDL_PAD_GPIO_2__GPIO1_IO02	0x1b0b0
+
+				/* HW revision detect */
+				/* REV_ID0 */
+				MX6QDL_PAD_SD4_DAT0__GPIO2_IO08 0x1b0b0
+				/* REV_ID1 */
+				MX6QDL_PAD_SD4_DAT1__GPIO2_IO09 0x1b0b0
+				/* REV_ID2 */
+				MX6QDL_PAD_SD4_DAT2__GPIO2_IO10 0x1b0b0
+				/* REV_ID3 */
+				MX6QDL_PAD_SD4_DAT3__GPIO2_IO11 0x1b0b0
+				/* REV_ID4 */
+				MX6QDL_PAD_SD4_DAT4__GPIO2_IO12 0x1b0b0
+			>;
+		};
+
+		pinctrl_leds: ledsgrp {
+			fsl,pins = <
+				/* DEBUG0 */
+				MX6QDL_PAD_GPIO_8__GPIO1_IO08	0x1b0b0
+			>;
+		};
+
+		pinctrl_usbotg: usbotggrp {
+			fsl,pins = <
+				/* Not connected */
+				MX6QDL_PAD_EIM_D21__USB_OTG_OC	0x1b0b0
+				/* power enable, high active */
+				MX6QDL_PAD_EIM_D22__GPIO3_IO22  0x1b0b0
+			>;
+		};
+	};
+};
+
+&i2c3 {
+	rtc: pcf8563@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+	};
+};
+
+&pwm1 {
+	status = "disabled";
+};
+
+&ssi1 {
+	status = "disabled";
+};
+
+&uart2 {
+	status = "disabled";
+};
+
+&uart5 {
+	status = "disabled";
+};
+
+&usbh1 {
+	status = "disabled";
+};
+
+&can2 {
+	status = "disabled";
+};
+
+&vpu {
+	status = "disabled";
+};
+
+&audmux {
+	status = "disabled";
+};
+
+&ipu1 {
+	status = "disabled";
+};
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
