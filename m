Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64064656A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 14:18:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6vMmfy5f0G/UTG14QPpKkmyKUO+Hs6pmpG78bWTJ0w=; b=L86syDSW05B6R9
	P4MvYy6voUPxp88l4Omfkh2dYM+ooCWR/stgklZc1hDOPwNiqDcBQ3Ea2GtO9xA4UhTsCnGA29e1Q
	qaq42kGMAuU4deOstst8u71o6TrvgsMTL05twStZ4TVAEEb8F9PIqouLyHPamXnFJv/ZZPllfnXUp
	iC5vOVN1jqjsD4lcMhLKjfkAVSb7AlCZSuaMadgUaKQQShDixOSvTQeh+ymCWrerwdOP2AJsqwgXy
	OQoeQHMe8EF3X4rZ8Y0GcftaCq4AiZF9AMePxY2xX9hr4clzP3OwyipoDFexHMwx1G3y1Q7KTgYkr
	JQ+1taiM8XTcm+HvAIPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlY1Q-0000fE-N7; Thu, 11 Jul 2019 12:18:00 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlY1F-0000eG-Iq
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 12:17:51 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 91C6120020;
 Thu, 11 Jul 2019 12:15:23 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Hans Verkuil <hans.verkuil@cisco.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH v6 5/5] DO NOT MERGE: ARM: dts: bananapi: Add Camera support
Date: Thu, 11 Jul 2019 14:15:07 +0200
Message-Id: <cf0e40b0bca9219d2bb023a5b7f23bad8baba1e5.1562847292.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.34bcd988943a26671681eaf849aacab51fab1cfe.1562847292.git-series.maxime.ripard@bootlin.com>
References: <cover.34bcd988943a26671681eaf849aacab51fab1cfe.1562847292.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_051749_933381_23DC7687 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 arch/arm/boot/dts/sun7i-a20-bananapi.dts | 91 +++++++++++++++++++++++++-
 1 file changed, 91 insertions(+)

diff --git a/arch/arm/boot/dts/sun7i-a20-bananapi.dts b/arch/arm/boot/dts/sun7i-a20-bananapi.dts
index 4df921632f7a..cecc4eb26082 100644
--- a/arch/arm/boot/dts/sun7i-a20-bananapi.dts
+++ b/arch/arm/boot/dts/sun7i-a20-bananapi.dts
@@ -54,6 +54,9 @@
 	compatible = "lemaker,bananapi", "allwinner,sun7i-a20";
 
 	aliases {
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
+		i2c2 = &i2c2;
 		serial0 = &uart0;
 		serial1 = &uart3;
 		serial2 = &uart7;
@@ -63,6 +66,41 @@
 		stdout-path = "serial0:115200n8";
 	};
 
+	reg_cam: cam {
+		compatible = "regulator-fixed";
+		regulator-name = "cam";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&reg_vcc5v0>;
+		gpio = <&pio 7 16 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+        reg_cam_avdd: cam-avdd {
+                compatible = "regulator-fixed";
+                regulator-name = "cam500b-avdd";
+                regulator-min-microvolt = <2800000>;
+                regulator-max-microvolt = <2800000>;
+                vin-supply = <&reg_cam>;
+        };
+
+        reg_cam_dovdd: cam-dovdd {
+                compatible = "regulator-fixed";
+                regulator-name = "cam500b-dovdd";
+                regulator-min-microvolt = <1800000>;
+                regulator-max-microvolt = <1800000>;
+                vin-supply = <&reg_cam>;
+        };
+
+        reg_cam_dvdd: cam-dvdd {
+                compatible = "regulator-fixed";
+                regulator-name = "cam500b-dvdd";
+                regulator-min-microvolt = <1500000>;
+                regulator-max-microvolt = <1500000>;
+                vin-supply = <&reg_cam>;
+        };
+
 	hdmi-connector {
 		compatible = "hdmi-connector";
 		type = "a";
@@ -116,6 +154,23 @@
 		>;
 };
 
+&csi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&csi0_pins_a>;
+	status = "okay";
+
+	port {
+		csi_from_ov5640: endpoint {
+                        remote-endpoint = <&ov5640_to_csi>;
+                        bus-width = <8>;
+                        hsync-active = <1>; /* Active high */
+                        vsync-active = <0>; /* Active low */
+                        data-active = <1>;  /* Active high */
+                        pclk-sample = <1>;  /* Rising */
+                };
+	};
+};
+
 &de {
 	status = "okay";
 };
@@ -161,6 +216,36 @@
 	};
 };
 
+&i2c1 {
+	status = "okay";
+
+	camera: camera@21 {
+		compatible = "ovti,ov5640";
+		reg = <0x21>;
+                clocks = <&ccu CLK_CSI0>;
+                clock-names = "xclk";
+		assigned-clocks = <&ccu CLK_CSI0>;
+		assigned-clock-rates = <24000000>;
+
+                reset-gpios = <&pio 7 14 GPIO_ACTIVE_LOW>;
+                powerdown-gpios = <&pio 7 19 GPIO_ACTIVE_HIGH>;
+                AVDD-supply = <&reg_cam_avdd>;
+                DOVDD-supply = <&reg_cam_dovdd>;
+                DVDD-supply = <&reg_cam_dvdd>;
+
+                port {
+                        ov5640_to_csi: endpoint {
+                                remote-endpoint = <&csi_from_ov5640>;
+                                bus-width = <8>;
+                                hsync-active = <1>; /* Active high */
+                                vsync-active = <0>; /* Active low */
+                                data-active = <1>;  /* Active high */
+                                pclk-sample = <1>;  /* Rising */
+                        };
+                };
+	};
+};
+
 &i2c2 {
 	status = "okay";
 };
@@ -246,6 +331,12 @@
 			"SPI-MISO", "SPI-CE1", "",
 		"IO-6", "IO-3", "IO-2", "IO-0", "", "", "", "",
 		"", "", "", "", "", "", "", "";
+
+	csi0_pins_a: csi_pins_a@0 {
+		pins = "PE0", "PE1", "PE2", "PE3", "PE4", "PE5",
+		       "PE6", "PE7", "PE8", "PE9", "PE10", "PE11";
+		function = "csi0";
+	};
 };
 
 #include "axp209.dtsi"
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
