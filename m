Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFD211AEA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:03:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=U6BRVn6ey8dJIOcJVRqGhBFU4YoLsFqgjnhGlSSh86g=; b=Z2c
	EMgZ0rmxNV18aUPYW5shK/aMW+tKUZWlgARi+dssCsNeFZ3UN77km3ehwnQnx2xjeNT2oduRpREA7
	/v3hf/HCW98VW9gLyr5gHVg7XHIzHKNYaKo60so5UrAf7W3zAHQP0H3Nhyur+ROSTbQyRjQEp27Ix
	ZMAQzIApINuPbwvUG8ZJkOVJ/ftvmWg/012AWaE8wbWckMppKGddkHS1ANVFYoS/nfuE13L0BqMo0
	CUXUNmMQRegi5Kvl0RYvSWchR/bR1MM51znsvJjWZqPygwzTF4PBX/a4CAYPdY9VU3rc/f5wnnpsT
	hGtP1w4OFis9Wmrod4N0HsLvTYztrJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3W1-0006Fw-ET; Wed, 11 Dec 2019 15:03:01 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3Vs-0006FQ-FZ
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:02:54 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8A7CE2005E1;
 Wed, 11 Dec 2019 16:02:50 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7BEBA2005DA;
 Wed, 11 Dec 2019 16:02:50 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 1D01F20568;
 Wed, 11 Dec 2019 16:02:50 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Marco Felsch <m.felsch@pengutronix.de>,
 Anson Huang <Anson.Huang@nxp.com>
Subject: [PATCH v2] ARM: dts: imx6ul-evk: Fix peripheral regulator
Date: Wed, 11 Dec 2019 17:02:47 +0200
Message-Id: <3dbf3c6b01b4c372544127d61746e2d9b62108d7.1576076393.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_070252_796762_F8414E83 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, linux-arm-kernel@lists.infradead.org
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

The "peri_3v3" naming is similar to imx6sx-sdb and regulator-name is
same string as in schematics (VPERI_3V3).

Fixes: 09e2b1048954 ("ARM: dts: imx6ul-14x14-evk: Add sensors' GPIO regulator")
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

---
Changes since v1:
* Properly set phy-supply so that ethernet works even without
regulator-always-on
* Change regulator-name to VPERI_3V3 to match pdf schematics
* List affected peripherals in comment
Link to v1: https://patchwork.kernel.org/patch/11284851/

It seems the wm8960 doesn't have regulator support so making this
work dynamically might also require changes in sound drivers.

 arch/arm/boot/dts/imx6ul-14x14-evk.dtsi | 26 +++++++++++++++++++------
 1 file changed, 20 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
index e5dafb49ef12..212144511b66 100644
--- a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
+++ b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
@@ -28,18 +28,30 @@
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
+		regulator-name = "VPERI_3V3";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		gpio = <&gpio5 2 GPIO_ACTIVE_LOW>;
+		/*
+		 * If you want to want to make this dynamic please
+		 * check schematics and test all affected peripherals:
+		 *
+		 * - sensors
+		 * - ethernet phy
+		 * - can
+		 * - bluetooth
+		 * - wm8960 audio codec
+		 * - ov5640 camera
+		 */
+		regulator-always-on;
 	};
 
 	reg_can_3v3: regulator-can-3v3 {
 		compatible = "regulator-fixed";
 		regulator-name = "can-3v3";
@@ -138,18 +150,20 @@
 &fec1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet1>;
 	phy-mode = "rmii";
 	phy-handle = <&ethphy0>;
+	phy-supply = <&reg_peri_3v3>;
 	status = "okay";
 };
 
 &fec2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet2>;
 	phy-mode = "rmii";
 	phy-handle = <&ethphy1>;
+	phy-supply = <&reg_peri_3v3>;
 	status = "okay";
 
 	mdio {
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -191,12 +205,12 @@
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
@@ -460,11 +474,11 @@
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
