Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 868D211AB17
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 13:41:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0rB5dO6T9pRhysRtAxzfHYR4wQY604Hu2RngfsGy4N8=; b=t9q
	9olX8AmC/QUgAHoF5XKsJTjdUhBNi6xn7xuBcYdCEbk3UwEiOn8QUL60PSxqPtQXPSwT6y+2yDlVQ
	PaQ26J+jRa3rjYRGfPwqVHtZJzxRPLw2XnfZWutdRW7O0ISMpNpTg4S7HY/qTQmiKZTggZVqjuLmI
	EgOvtswQO4fRz32cN5WBPA+e+D2uWmqDa1SAK1KW8a1ZFyIOSqdkKxL8UK3JTR8adtvl1dXPyvguj
	mEXgoQBgm91hX76/j7R4XuR2z1H1YLzjFh5nWLRyQ415Ujx32HAJ+Egq/4MC+U0iyXYdhI5dApyfg
	4/Aq6o5Ioj5Rn2cqvYbynCuMPbD3cqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if1JH-0005Hf-MO; Wed, 11 Dec 2019 12:41:43 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if1JA-0005Gq-6X
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 12:41:37 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D418E1A060E;
 Wed, 11 Dec 2019 13:41:33 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C44AF1A0009;
 Wed, 11 Dec 2019 13:41:33 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 6AFA820568;
 Wed, 11 Dec 2019 13:41:33 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Anson Huang <Anson.Huang@nxp.com>,
 Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH] ARM: dts: imx6ul-evk: Fix peripheral regulator
Date: Wed, 11 Dec 2019 14:41:31 +0200
Message-Id: <ccd182469476d43739ebdb4eedb2497bf72146ea.1576067880.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_044136_377492_1BFE2D6B 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Many peripherals are affected by gpio5/2, not just sensors. One of those
is ethernet phy so network boot is current broken.

Fix by renaming reg_sensors and marking it as "always on". Also add a
comment asking for careful testing if this is to be made dynamic in the
future.

The "peri-3v3" naming mirrors imx6sx and schematics.

Fixes: 09e2b1048954 ("ARM: dts: imx6ul-14x14-evk: Add sensors' GPIO regulator")
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 arch/arm/boot/dts/imx6ul-14x14-evk.dtsi | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
index e5dafb49ef12..96853f42c050 100644
--- a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
+++ b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
@@ -28,18 +28,23 @@
 		regulator-max-microvolt = <3300000>;
 		gpio = <&gpio1 9 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 	};
 
-	reg_sensors: regulator-sensors {
+	reg_peri_3v3: regulator-peri-3v3 {
 		compatible = "regulator-fixed";
 		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_sensors_reg>;
-		regulator-name = "sensors-supply";
+		pinctrl-0 = <&pinctrl_peri_3v3>;
+		regulator-name = "peri_3v3";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		gpio = <&gpio5 2 GPIO_ACTIVE_LOW>;
+		/*
+		 * If you want to want to make this dynamic please
+		 * check schematics and test all affected peripherals
+		 */
+		regulator-always-on;
 	};
 
 	reg_can_3v3: regulator-can-3v3 {
 		compatible = "regulator-fixed";
 		regulator-name = "can-3v3";
@@ -157,17 +162,19 @@
 		ethphy0: ethernet-phy@2 {
 			reg = <2>;
 			micrel,led-mode = <1>;
 			clocks = <&clks IMX6UL_CLK_ENET_REF>;
 			clock-names = "rmii-ref";
+			supply = <&reg_peri_3v3>;
 		};
 
 		ethphy1: ethernet-phy@1 {
 			reg = <1>;
 			micrel,led-mode = <1>;
 			clocks = <&clks IMX6UL_CLK_ENET2_REF>;
 			clock-names = "rmii-ref";
+			supply = <&reg_peri_3v3>;
 		};
 	};
 };
 
 &can1 {
@@ -191,12 +198,12 @@
 	status = "okay";
 
 	magnetometer@e {
 		compatible = "fsl,mag3110";
 		reg = <0x0e>;
-		vdd-supply = <&reg_sensors>;
-		vddio-supply = <&reg_sensors>;
+		vdd-supply = <&reg_peri_3v3>;
+		vddio-supply = <&reg_peri_3v3>;
 	};
 };
 
 &lcdif {
 	assigned-clocks = <&clks IMX6UL_CLK_LCDIF_PRE_SEL>;
@@ -460,11 +467,11 @@
 			MX6UL_PAD_JTAG_TMS__SAI2_MCLK		0x17088
 			MX6UL_PAD_SNVS_TAMPER4__GPIO5_IO04	0x17059
 		>;
 	};
 
-	pinctrl_sensors_reg: sensorsreggrp {
+	pinctrl_peri_3v3: peri3v3grp {
 		fsl,pins = <
 			MX6UL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x1b0b0
 		>;
 	};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
