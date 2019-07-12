Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C54A670D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 16:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r3dq+4JMsJDKEzF/egHYMVvDg35vqxfI8qhOO0/Mceg=; b=frlgRTGCWR9cJx
	/ELozTmPtY17LpBf84xsDCCALGCqGjb480O3S8ZsKO89q/+ps6N+qyLxeosIoVFh4297UKfdmpWlG
	mwfkdeHaxuTGKP4fI0AGMMUBzlsk050+z5pdVHxwebKgm8owhRQnfCZcjCaXk+CpZ0BAwTgEeKh9E
	yv7rNwkxJ8JaQ6uiC2MePG64LJDWoHlvqBCSzM06ZTZihm9V75v2WlFD5k8b4d5oqRMN5MqXoDCrQ
	IeR2E3QiaSEiUdsl2gGzhBKVj4dPIXWhzqpFgD4tXEWqBamXtVxuUESBv5abQKF9oCggeT3PsICVj
	s5Idtt0M4Cs64XMV1gvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlw63-0002h1-CU; Fri, 12 Jul 2019 14:00:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlw5X-0002fr-ER
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 13:59:52 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hlw5U-0005qF-GK; Fri, 12 Jul 2019 15:59:48 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] arm64: dts: rdu3: add UCS1002 charge controller node
Date: Fri, 12 Jul 2019 15:59:48 +0200
Message-Id: <20190712135948.28080-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_065951_484905_C899D538 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the charge controller node. With the controller driver loaded
the VBUS of the user USB socket is controlled exclusively via i2c
with the GPIO controls ignored, so vbus-supply for the user USB
port must be linked to the charge controller.

Hog the previously used GPIO control to unconditionally enable
VBUS until the driver is loaded.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../boot/dts/freescale/imx8mq-zii-ultra.dtsi  | 46 +++++++++++--------
 1 file changed, 27 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
index 7a1706f969f0..af99473ada04 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
@@ -68,18 +68,6 @@
 		regulator-always-on;
 	};
 
-	reg_5p0_user_usb: regulator-5p0-user-usb {
-		compatible = "regulator-fixed";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_reg_user_usb>;
-		vin-supply = <&reg_5p0_main>;
-		regulator-name = "5V_USER_USB";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		gpio = <&gpio3 12 GPIO_ACTIVE_LOW>;
-		startup-delay-us = <1000>;
-	};
-
 	reg_usdhc2_vmmc: regulator-vsd-3v3 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_reg_usdhc2>;
@@ -244,6 +232,13 @@
 		line-name = "usb-mode1";
 	};
 
+	usb-pwr {
+		gpio-hog;
+		gpios = <12 GPIO_ACTIVE_LOW>;
+		output-high;
+		line-name = "usb-pwr-ctrl-en-n";
+	};
+
 	usb-mode2 {
 		gpio-hog;
 		gpios = <13 GPIO_ACTIVE_HIGH>;
@@ -257,6 +252,17 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
+
+	ucs1002: charger@32 {
+		compatible = "microchip,ucs1002";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ucs1002>;
+		reg = <0x32>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <17 IRQ_TYPE_EDGE_BOTH>,
+		             <18 IRQ_TYPE_EDGE_BOTH>;
+		interrupt-names = "a_det", "alert";
+	};
 };
 
 &i2c2 {
@@ -428,7 +434,7 @@
 };
 
 &usb3_phy0 {
-	vbus-supply = <&reg_5p0_user_usb>;
+	vbus-supply = <&ucs1002>;
 	status = "okay";
 };
 
@@ -532,6 +538,7 @@
 		fsl,pins = <
 			MX8MQ_IOMUXC_NAND_DATA04_GPIO3_IO10		0x6
 			MX8MQ_IOMUXC_NAND_DATA05_GPIO3_IO11		0x6
+			MX8MQ_IOMUXC_NAND_DATA06_GPIO3_IO12		0x6
 			MX8MQ_IOMUXC_NAND_DATA07_GPIO3_IO13		0x6
 		>;
 	};
@@ -597,12 +604,6 @@
 		>;
 	};
 
-	pinctrl_reg_user_usb: reguserusbgrp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_NAND_DATA06_GPIO3_IO12		0x6
-		>;
-	};
-
 	pinctrl_switch_irq: switchgrp {
 		fsl,pins = <
 			MX8MQ_IOMUXC_GPIO1_IO15_GPIO1_IO15		0x41
@@ -630,6 +631,13 @@
 		>;
 	};
 
+	pinctrl_ucs1002: ucs1002grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_NAND_WE_B_GPIO3_IO17		0x41
+			MX8MQ_IOMUXC_NAND_WP_B_GPIO3_IO18		0x41
+		>;
+	};
+
 	pinctrl_usbhub: usbhubgrp {
 		fsl,pins = <
 			MX8MQ_IOMUXC_SAI5_MCLK_GPIO3_IO25		0x41
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
