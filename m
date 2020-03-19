Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFFC18AC84
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 06:58:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3h6rSnhTXutONDUr2WC8dPc8vyyF4gnLAOrZwRD1JcA=; b=lX6yhCHhDVSgTf
	K5Y8mJjBEj2qpTtYafhzmZiR315Z3H094UIeirHP/DWzF3eavVQNUbbj+L9IgNiu8e4sIJXnUT5vC
	7pFfX2FggGgB80a8+U4bAff4/WEifPSsLHHnTZcQY/YO5+YilB7TXuZRzbK+2sSoQr2pdFKVh9Bj+
	zoayHeYUFsvFjTrM7XQhl0H15G18unDMU1mWn4fTI+TI1BqyCT9OHR6i0zaR+1G0vhEMOWnHYEPHW
	bcX1Hx0iHFFaCJYBp3j+hKNsiO1SZfTFP0UbB7xDCvswK8persBPERP3no2ZF2Hf9K2MOaM9vCoZy
	Zk+7H8PNI5N3yxeuS5rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEoBn-0000BZ-47; Thu, 19 Mar 2020 05:57:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEoB1-00086F-O0
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 05:57:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jEoAh-0000dz-EC; Thu, 19 Mar 2020 06:56:47 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jEoAZ-0001ze-Sc; Thu, 19 Mar 2020 06:56:39 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 3/5] ARM: dts: add Protonic WD2 board
Date: Thu, 19 Mar 2020 06:56:34 +0100
Message-Id: <20200319055636.7573-4-o.rempel@pengutronix.de>
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
X-CRM114-CacheID: sfid-20200318_225707_968933_E522BD00 
X-CRM114-Status: GOOD (  16.91  )
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

Add support for the Protonic WD2 board, which is an internal development
platform for low-cost agricultural Virtual Terminals based on COTS tablets
and web applications.
It inherits from the PRTI6Q base class.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/imx6q-prtwd2.dts            | 242 ++++++++++++++++++
 3 files changed, 244 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6q-prtwd2.dts

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 3b52b582efdf..5bdf8d38b2f0 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -120,6 +120,7 @@ properties:
               - fsl,imx6q-sabrelite
               - fsl,imx6q-sabresd
               - prt,prti6q                      # Protonic PRTI6Q board
+              - prt,prtwd2                      # Protonic WD2 board
               - technologic,imx6q-ts4900
               - technologic,imx6q-ts7970
               - toradex,apalis_imx6q            # Apalis iMX6 Module
diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 3f500a9e88a9..b6fc2b375a61 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -531,6 +531,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
 	imx6q-phytec-pbab01.dtb \
 	imx6q-pistachio.dtb \
 	imx6q-prti6q.dtb \
+	imx6q-prtwd2.dtb \
 	imx6q-rex-pro.dtb \
 	imx6q-sabreauto.dtb \
 	imx6q-sabrelite.dtb \
diff --git a/arch/arm/boot/dts/imx6q-prtwd2.dts b/arch/arm/boot/dts/imx6q-prtwd2.dts
new file mode 100644
index 000000000000..275c291d1ef4
--- /dev/null
+++ b/arch/arm/boot/dts/imx6q-prtwd2.dts
@@ -0,0 +1,242 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2018 Protonic Holland
+ */
+
+/dts-v1/;
+#include "imx6q.dtsi"
+#include "imx6qdl-prti6q.dtsi"
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
+	usdhc2_pwrseq: usdhc2_pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_wlan_npd>;
+		reset-gpios = <&gpio6 10 GPIO_ACTIVE_LOW>;
+	};
+
+	/* PRTWD2 rev 1 bitbang I2C for Ethernet Switch */
+	i2c@4 {
+		compatible = "i2c-gpio";
+		sda-gpios = <&gpio1 22 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&gpio1 31 (GPIO_ACTIVE_HIGH)>;
+		i2c-gpio,delay-us = <20>;	/* ~10 kHz */
+		i2c-gpio,scl-output-only;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+};
+
+&iomuxc {
+	prti6q {
+		pinctrl_enet: enetgrp {
+			fsl,pins = <
+				/* MX6QDL_ENET_PINGRP4 */
+				MX6QDL_PAD_ENET_RXD0__ENET_RX_DATA0     0x1b0b0
+				MX6QDL_PAD_ENET_RXD1__ENET_RX_DATA1     0x1b0b0
+				MX6QDL_PAD_ENET_RX_ER__ENET_RX_ER       0x130b0
+				MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN       0x1b0b0
+				MX6QDL_PAD_ENET_TXD0__ENET_TX_DATA0     0x1b0b0
+				MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1     0x1b0b0
+				MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN      0x1b0b0
+
+				MX6QDL_PAD_GPIO_16__ENET_REF_CLK   0x1b0b0
+				/* Phy reset */
+				MX6QDL_PAD_CSI0_DAT4__GPIO5_IO22   0x1b0b0
+				/* nINTRP */
+				MX6QDL_PAD_CSI0_DAT5__GPIO5_IO23   0x1b0b0
+			>;
+		};
+
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				/* SGTL5000 sys_mclk */
+				MX6QDL_PAD_CSI0_MCLK__CCM_CLKO1		0x030b0
+				/* CAN1_SR + CAN2_SR GPIO outputs */
+				MX6QDL_PAD_KEY_COL3__GPIO4_IO12		0x13070
+				MX6QDL_PAD_KEY_ROW3__GPIO4_IO13		0x13070
+				/* CAN1_TERM */
+				MX6QDL_PAD_GPIO_0__GPIO1_IO00		0x1b0b0
+				/* nON_SWITCH */
+				MX6QDL_PAD_EIM_CS0__GPIO2_IO23		0x1b0b0
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
+
+				/* USB charging control */
+				MX6QDL_PAD_NANDF_CS0__GPIO6_IO11	0x130b0
+				MX6QDL_PAD_NANDF_CS1__GPIO6_IO14	0x130b0
+				MX6QDL_PAD_NANDF_CS2__GPIO6_IO15	0x130b0
+				MX6QDL_PAD_NANDF_CS3__GPIO6_IO16	0x130b0
+
+				MX6QDL_PAD_ENET_MDIO__GPIO1_IO22	0x1f8b0
+				MX6QDL_PAD_ENET_MDC__GPIO1_IO31		0x1f8b0
+			>;
+		};
+
+		pinctrl_usbotg: usbotggrp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_D21__USB_OTG_OC	0x1b0b0
+				/* power enable, high active */
+				MX6QDL_PAD_EIM_D22__GPIO3_IO22	0x1b0b0
+			>;
+		};
+
+		pinctrl_leds: ledsgrp {
+			fsl,pins = <
+				/* DEBUG0 */
+				MX6QDL_PAD_DI0_DISP_CLK__GPIO4_IO16	0x1b0b0
+				/* DEBUG1 */
+				MX6QDL_PAD_DI0_PIN15__GPIO4_IO17	0x1b0b0
+				/* POWER_LED */
+				MX6QDL_PAD_EIM_CS1__GPIO2_IO24		0x1b0b0
+			>;
+		};
+
+		pinctrl_wlan_npd: wlan_npd {
+			fsl,pins = <
+				/* WL_REG_ON */
+				MX6QDL_PAD_NANDF_RB0__GPIO6_IO10	0x13069
+			>;
+		};
+
+		pinctrl_usdhc2: usdhc2grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD2_CMD__SD2_CMD		0x170b9
+				MX6QDL_PAD_SD2_CLK__SD2_CLK		0x100b9
+				MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x170b9
+				MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x170b9
+				MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x170b9
+				MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x170b9
+			>;
+		};
+	};
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
+	fixedphy: fixed-link {
+		speed = <100>;
+		pause;
+		full-duplex;
+	};
+};
+
+&ecspi1 {
+	status = "disabled";
+};
+
+&flash {
+	status = "disabled";
+};
+
+&ecspi1 {
+	status = "disabled";
+};
+
+&audmux {
+	status = "disabled";
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+};
+
+&pcie {
+	status = "disabled";
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
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	no-1-8-v;
+	non-removable;
+	mmc-pwrseq = <&usdhc2_pwrseq>;
+	pm-ignore-notify;
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	brcmf: bcrmf@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+	};
+};
+
+&can2 {
+	status = "disabled";
+};
+
+&can_adc {
+	channel@4 {
+		reg = <4>;
+		ti,gain = <1>;
+		ti,datarate = <3>;
+	};
+
+	channel@5 {
+		reg = <5>;
+		ti,gain = <1>;
+		ti,datarate = <3>;
+	};
+
+	channel@6 {
+		reg = <6>;
+		ti,gain = <1>;
+		ti,datarate = <3>;
+	};
+
+	channel@7 {
+		reg = <7>;
+		ti,gain = <1>;
+		ti,datarate = <3>;
+	};
+};
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
