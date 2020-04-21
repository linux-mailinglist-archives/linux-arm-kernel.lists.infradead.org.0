Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 725781B267B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 14:41:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yfywfEUt4IGKrVRXnltJZUBWf6pyZgx9OpLSxMDsMj4=; b=GmrDojSqBp8Ooc
	aj3tzt+D+nEtKrTH9YS2evenrFP/EScqUEXWm+wmrQqwN2MDwjAH3/YXvMhYs/ZOlIaDgVtt7OiAo
	ROkhOwlTBca02/6ywqQ6b3XVzaxe+Mv9gEgAu3glA1DIy4/FxYp8K8S4NTvCu7VoC5ZbX+dRbmuXX
	CA0txjfcZ+3up+3z4umlNLApGy4jGZZewplSOuqPpMkXrtfpVWar/40GRNiIhgkdB0+RoXpoSxS6v
	mObtRh20YUHL/Vpxb5kKGB1hLTq01jci6jAkro38lbzJI80SFTkm9J0tzKqcZcbfxOqKwIqFAyXVq
	/Xqt/SWHujEHefQuEg2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQsDG-0008Hi-FU; Tue, 21 Apr 2020 12:41:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQsD6-0008GX-01
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 12:41:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jQsCy-0002fj-ST; Tue, 21 Apr 2020 14:41:00 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jQsCx-00055d-0J; Tue, 21 Apr 2020 14:40:59 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v6 2/5] ARM: dts: add Protonic WD2 board
Date: Tue, 21 Apr 2020 14:40:54 +0200
Message-Id: <20200421124057.19238-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200421124057.19238-1-o.rempel@pengutronix.de>
References: <20200421124057.19238-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_054108_033800_E2EA422B 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, Oleksij Rempel <o.rempel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Jander <david@protonic.nl>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the Protonic WD2 board, which is an internal development
platform for low-cost agricultural Virtual Terminals based on COTS tablets
and web applications.
It inherits from the PRTI6Q base class.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boot/dts/Makefile         |   1 +
 arch/arm/boot/dts/imx6q-prtwd2.dts | 188 +++++++++++++++++++++++++++++
 2 files changed, 189 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6q-prtwd2.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 206a36a50575e..8ce744f1cbfc9 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -539,6 +539,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
 	imx6q-pico-pi.dtb \
 	imx6q-pistachio.dtb \
 	imx6q-prti6q.dtb \
+	imx6q-prtwd2.dtb \
 	imx6q-rex-pro.dtb \
 	imx6q-sabreauto.dtb \
 	imx6q-sabrelite.dtb \
diff --git a/arch/arm/boot/dts/imx6q-prtwd2.dts b/arch/arm/boot/dts/imx6q-prtwd2.dts
new file mode 100644
index 0000000000000..57d2a595d8d14
--- /dev/null
+++ b/arch/arm/boot/dts/imx6q-prtwd2.dts
@@ -0,0 +1,188 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2018 Protonic Holland
+ */
+
+/dts-v1/;
+#include "imx6q.dtsi"
+#include "imx6qdl-prti6q.dtsi"
+#include <dt-bindings/leds/common.h>
+
+/ {
+	model = "Protonic WD2 board";
+	compatible = "prt,prtwd2", "fsl,imx6q";
+
+	memory@10000000 {
+		device_type = "memory";
+		reg = <0x10000000 0x20000000>;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x20000000>;
+	};
+
+	usdhc2_wifi_pwrseq: usdhc2_wifi_pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_wifi_npd>;
+		reset-gpios = <&gpio6 10 GPIO_ACTIVE_LOW>;
+	};
+
+	/* PRTWD2 rev 1 bitbang I2C for Ethernet Switch */
+	i2c@4 {
+		compatible = "i2c-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_i2c4>;
+		sda-gpios = <&gpio1 22 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&gpio1 31 GPIO_ACTIVE_HIGH>;
+		i2c-gpio,delay-us = <20>;	/* ~10 kHz */
+		i2c-gpio,scl-output-only;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+};
+
+&can1 {
+	pinctrl-0 = <&pinctrl_can1 &pinctrl_can1phy>;
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet>;
+	phy-mode = "rmii";
+	clocks = <&clks IMX6QDL_CLK_ENET>,
+		 <&clks IMX6QDL_CLK_ENET>;
+	clock-names = "ipg", "ahb";
+	status = "okay";
+
+	fixed-link {
+		speed = <100>;
+		pause;
+		full-duplex;
+	};
+};
+
+&i2c3 {
+	adc@49 {
+		compatible = "ti,ads1015";
+		reg = <0x49>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		/* V in */
+		channel@4 {
+			reg = <4>;
+			ti,gain = <1>;
+			ti,datarate = <3>;
+		};
+
+		/* I charge */
+		channel@5 {
+			reg = <5>;
+			ti,gain = <1>;
+			ti,datarate = <3>;
+		};
+
+		/* V bus  */
+		channel@6 {
+			reg = <6>;
+			ti,gain = <1>;
+			ti,datarate = <3>;
+		};
+
+		/* nc */
+		channel@7 {
+			reg = <7>;
+			ti,gain = <1>;
+			ti,datarate = <3>;
+		};
+	};
+};
+
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	non-removable;
+	no-1-8-v;
+	non-removable;
+	mmc-pwrseq = <&usdhc2_wifi_pwrseq>;
+	pm-ignore-notify;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	wifi@1 {
+		compatible = "brcm,bcm4329-fmac";
+		reg = <1>;
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usb_eth_chg>;
+
+	pinctrl_can1phy: can1phy {
+		fsl,pins = <
+			/* CAN1_SR */
+			MX6QDL_PAD_KEY_COL3__GPIO4_IO12	0x13070
+		>;
+	};
+
+	pinctrl_enet: enetgrp {
+		fsl,pins = <
+			/* MX6QDL_ENET_PINGRP4 */
+			MX6QDL_PAD_ENET_RXD0__ENET_RX_DATA0     0x1b0b0
+			MX6QDL_PAD_ENET_RXD1__ENET_RX_DATA1     0x1b0b0
+			MX6QDL_PAD_ENET_RX_ER__ENET_RX_ER       0x130b0
+			MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN       0x1b0b0
+			MX6QDL_PAD_ENET_TXD0__ENET_TX_DATA0     0x1b0b0
+			MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1     0x1b0b0
+			MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN      0x1b0b0
+
+			MX6QDL_PAD_GPIO_16__ENET_REF_CLK   0x1b0b0
+			/* Phy reset */
+			MX6QDL_PAD_CSI0_DAT4__GPIO5_IO22   0x1b0b0
+			/* nINTRP */
+			MX6QDL_PAD_CSI0_DAT5__GPIO5_IO23   0x1b0b0
+
+			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x10030
+			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x10030
+		>;
+	};
+
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <
+			MX6QDL_PAD_ENET_MDIO__GPIO1_IO22	0x1f8b0
+			MX6QDL_PAD_ENET_MDC__GPIO1_IO31		0x1f8b0
+		>;
+	};
+
+	pinctrl_usb_eth_chg: usbethchggrp {
+		fsl,pins = <
+			/* USB charging control */
+			MX6QDL_PAD_NANDF_CS0__GPIO6_IO11	0x130b0
+			MX6QDL_PAD_NANDF_CS1__GPIO6_IO14	0x130b0
+			MX6QDL_PAD_NANDF_CS2__GPIO6_IO15	0x130b0
+			MX6QDL_PAD_NANDF_CS3__GPIO6_IO16	0x130b0
+			>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD2_CMD__SD2_CMD		0x170b9
+			MX6QDL_PAD_SD2_CLK__SD2_CLK		0x100b9
+			MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x170b9
+			MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x170b9
+			MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x170b9
+			MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x170b9
+		>;
+	};
+
+	pinctrl_wifi_npd: wifinpd {
+		fsl,pins = <
+			/* WL_REG_ON */
+			MX6QDL_PAD_NANDF_RB0__GPIO6_IO10	0x13069
+		>;
+	};
+};
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
