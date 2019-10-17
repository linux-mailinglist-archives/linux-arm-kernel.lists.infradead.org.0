Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AD8DA445
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 05:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IoRHn/xEILYmWlCV8eLxTU4E3/GeZX/KmbX6LZbQ6ic=; b=F8b
	hL9jtn6jMBwLZxDZjDQFT/0EEDLm/vcXA3NypSNkuuZQ6OhHqzl9I/OIFj30+go+ZP0xBzMmhYJNU
	7MNWLeNLHHrVMt1QqDdLikGBM2X+flSqTTQuNzWeA6zgrb6kwseIXdD+gmi8mUYvNREo0uFV83omd
	78Mtb+XXmtGodVWjtbO4kPNstbUq3cw/jpDTD9DztifEVPSx9SqyfDLMD6DN7rzX9cs3EnNi82BG0
	Al3H0y3NdpvW2YEox7d8ZUeY1jEdkFMweLrXldOIjEC3k3rVWT3b2PQeFT7E8EuJNAFA8+sZzSyDE
	9g81n9EehaNANelx2hJOynhHjz/Jg2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKwHC-0001RB-2h; Thu, 17 Oct 2019 03:16:34 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKwGi-0001D1-Lq
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 03:16:07 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3596C2005C8;
 Thu, 17 Oct 2019 05:15:58 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 81DD5200021;
 Thu, 17 Oct 2019 05:15:49 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 87FF4402AE;
 Thu, 17 Oct 2019 11:15:38 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 manivannan.sadhasivam@linaro.org, andrew.smirnov@gmail.com,
 aisheng.dong@nxp.com, sebastien.szymanski@armadeus.com, leoyang.li@nxp.com,
 pramod.kumar_1@nxp.com, l.stach@pengutronix.de, ping.bai@nxp.com,
 bhaskar.upadhaya@nxp.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] arm64: dts: imx8mn: Create EVK dtsi file for common use
Date: Thu, 17 Oct 2019 11:13:02 +0800
Message-Id: <1571281984-7125-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_201605_000550_8860B157 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

i.MX8MN has different EVK boards to support different DDR types,
the ONLY differences are DDR chips and PMIC, so most of the devices
can be shared between these EVK boards, create a EVK dtsi file for
common use.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
	- This patch is based on https://patchwork.kernel.org/patch/11192221/
---
 arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts | 241 +--------------------
 arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi     | 252 ++++++++++++++++++++++
 2 files changed, 253 insertions(+), 240 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
index 5c96203..0719494 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
@@ -6,71 +6,18 @@
 /dts-v1/;
 
 #include "imx8mn.dtsi"
+#include "imx8mn-evk.dtsi"
 
 / {
 	model = "NXP i.MX8MNano DDR4 EVK board";
 	compatible = "fsl,imx8mn-ddr4-evk", "fsl,imx8mn";
-
-	chosen {
-		stdout-path = &uart2;
-	};
-
-	gpio-leds {
-		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_gpio_led>;
-
-		status {
-			label = "yellow:status";
-			gpios = <&gpio3 16 GPIO_ACTIVE_HIGH>;
-			default-state = "on";
-		};
-	};
-
-	reg_usdhc2_vmmc: regulator-usdhc2 {
-		compatible = "regulator-fixed";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
-		regulator-name = "VSD_3V3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-	};
 };
 
 &A53_0 {
 	cpu-supply = <&buck2_reg>;
 };
 
-&fec1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_fec1>;
-	phy-mode = "rgmii-id";
-	phy-handle = <&ethphy0>;
-	fsl,magic-packet;
-	status = "okay";
-
-	mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		ethphy0: ethernet-phy@0 {
-			compatible = "ethernet-phy-ieee802.3-c22";
-			reg = <0>;
-			at803x,led-act-blind-workaround;
-			at803x,eee-disabled;
-			at803x,vddio-1p8v;
-		};
-	};
-};
-
 &i2c1 {
-	clock-frequency = <400000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c1>;
-	status = "okay";
-
 	pmic@4b {
 		compatible = "rohm,bd71847";
 		reg = <0x4b>;
@@ -175,196 +122,10 @@
 	};
 };
 
-&snvs_pwrkey {
-	status = "okay";
-};
-
-&uart2 { /* console */
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart2>;
-	status = "okay";
-};
-
-&usdhc2 {
-	assigned-clocks = <&clk IMX8MN_CLK_USDHC2>;
-	assigned-clock-rates = <200000000>;
-	pinctrl-names = "default", "state_100mhz", "state_200mhz";
-	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
-	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
-	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
-	cd-gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
-	bus-width = <4>;
-	vmmc-supply = <&reg_usdhc2_vmmc>;
-	status = "okay";
-};
-
-&usdhc3 {
-	assigned-clocks = <&clk IMX8MN_CLK_USDHC3_ROOT>;
-	assigned-clock-rates = <400000000>;
-	pinctrl-names = "default", "state_100mhz", "state_200mhz";
-	pinctrl-0 = <&pinctrl_usdhc3>;
-	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
-	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
-	bus-width = <8>;
-	non-removable;
-	status = "okay";
-};
-
-&wdog1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_wdog>;
-	fsl,ext-reset-output;
-	status = "okay";
-};
-
 &iomuxc {
-	pinctrl-names = "default";
-
-	pinctrl_fec1: fec1grp {
-		fsl,pins = <
-			MX8MN_IOMUXC_ENET_MDC_ENET1_MDC		0x3
-			MX8MN_IOMUXC_ENET_MDIO_ENET1_MDIO	0x3
-			MX8MN_IOMUXC_ENET_TD3_ENET1_RGMII_TD3	0x1f
-			MX8MN_IOMUXC_ENET_TD2_ENET1_RGMII_TD2	0x1f
-			MX8MN_IOMUXC_ENET_TD1_ENET1_RGMII_TD1	0x1f
-			MX8MN_IOMUXC_ENET_TD0_ENET1_RGMII_TD0	0x1f
-			MX8MN_IOMUXC_ENET_RD3_ENET1_RGMII_RD3	0x91
-			MX8MN_IOMUXC_ENET_RD2_ENET1_RGMII_RD2	0x91
-			MX8MN_IOMUXC_ENET_RD1_ENET1_RGMII_RD1	0x91
-			MX8MN_IOMUXC_ENET_RD0_ENET1_RGMII_RD0	0x91
-			MX8MN_IOMUXC_ENET_TXC_ENET1_RGMII_TXC	0x1f
-			MX8MN_IOMUXC_ENET_RXC_ENET1_RGMII_RXC	0x91
-			MX8MN_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
-			MX8MN_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
-			MX8MN_IOMUXC_SAI2_RXC_GPIO4_IO22	0x19
-		>;
-	};
-
-	pinctrl_gpio_led: gpioledgrp {
-		fsl,pins = <
-			MX8MN_IOMUXC_NAND_READY_B_GPIO3_IO16	0x19
-		>;
-	};
-
-	pinctrl_i2c1: i2c1grp {
-		fsl,pins = <
-			MX8MN_IOMUXC_I2C1_SCL_I2C1_SCL		0x400001c3
-			MX8MN_IOMUXC_I2C1_SDA_I2C1_SDA		0x400001c3
-		>;
-	};
-
 	pinctrl_pmic: pmicirq {
 		fsl,pins = <
 			MX8MN_IOMUXC_GPIO1_IO03_GPIO1_IO3	0x41
 		>;
 	};
-
-	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmc {
-		fsl,pins = <
-			MX8MN_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
-		>;
-	};
-
-	pinctrl_uart2: uart2grp {
-		fsl,pins = <
-			MX8MN_IOMUXC_UART2_RXD_UART2_DCE_RX	0x140
-			MX8MN_IOMUXC_UART2_TXD_UART2_DCE_TX	0x140
-		>;
-	};
-
-	pinctrl_usdhc2_gpio: usdhc2grpgpio {
-		fsl,pins = <
-			MX8MN_IOMUXC_GPIO1_IO15_GPIO1_IO15	0x1c4
-		>;
-	};
-
-	pinctrl_usdhc2: usdhc2grp {
-		fsl,pins = <
-			MX8MN_IOMUXC_SD2_CLK_USDHC2_CLK		0x190
-			MX8MN_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d0
-			MX8MN_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d0
-			MX8MN_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d0
-			MX8MN_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d0
-			MX8MN_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d0
-			MX8MN_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
-		>;
-	};
-
-	pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
-		fsl,pins = <
-			MX8MN_IOMUXC_SD2_CLK_USDHC2_CLK		0x194
-			MX8MN_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d4
-			MX8MN_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d4
-			MX8MN_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d4
-			MX8MN_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d4
-			MX8MN_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d4
-			MX8MN_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
-		>;
-	};
-
-	pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
-		fsl,pins = <
-			MX8MN_IOMUXC_SD2_CLK_USDHC2_CLK		0x196
-			MX8MN_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d6
-			MX8MN_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d6
-			MX8MN_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d6
-			MX8MN_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d6
-			MX8MN_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d6
-			MX8MN_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
-		>;
-	};
-
-	pinctrl_usdhc3: usdhc3grp {
-		fsl,pins = <
-			MX8MN_IOMUXC_NAND_WE_B_USDHC3_CLK		0x40000190
-			MX8MN_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d0
-			MX8MN_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d0
-			MX8MN_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d0
-			MX8MN_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d0
-			MX8MN_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d0
-			MX8MN_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d0
-			MX8MN_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d0
-			MX8MN_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d0
-			MX8MN_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d0
-			MX8MN_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x190
-		>;
-	};
-
-	pinctrl_usdhc3_100mhz: usdhc3grp100mhz {
-		fsl,pins = <
-			MX8MN_IOMUXC_NAND_WE_B_USDHC3_CLK		0x40000194
-			MX8MN_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d4
-			MX8MN_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d4
-			MX8MN_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d4
-			MX8MN_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d4
-			MX8MN_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d4
-			MX8MN_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d4
-			MX8MN_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d4
-			MX8MN_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d4
-			MX8MN_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d4
-			MX8MN_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x194
-		>;
-	};
-
-	pinctrl_usdhc3_200mhz: usdhc3grp200mhz {
-		fsl,pins = <
-			MX8MN_IOMUXC_NAND_WE_B_USDHC3_CLK		0x40000196
-			MX8MN_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d6
-			MX8MN_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d6
-			MX8MN_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d6
-			MX8MN_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d6
-			MX8MN_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d6
-			MX8MN_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d6
-			MX8MN_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d6
-			MX8MN_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d6
-			MX8MN_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d6
-			MX8MN_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x196
-		>;
-	};
-
-	pinctrl_wdog: wdoggrp {
-		fsl,pins = <
-			MX8MN_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B		0xc6
-		>;
-	};
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
new file mode 100644
index 0000000..fa9c7cd
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
@@ -0,0 +1,252 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2019 NXP
+ */
+
+#include "imx8mn.dtsi"
+
+/ {
+	chosen {
+		stdout-path = &uart2;
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_led>;
+
+		status {
+			label = "yellow:status";
+			gpios = <&gpio3 16 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+	};
+
+	reg_usdhc2_vmmc: regulator-usdhc2 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
+		regulator-name = "VSD_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy0>;
+	fsl,magic-packet;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+			at803x,led-act-blind-workaround;
+			at803x,eee-disabled;
+			at803x,vddio-1p8v;
+		};
+	};
+};
+
+&i2c1 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+};
+
+&snvs_pwrkey {
+	status = "okay";
+};
+
+&uart2 { /* console */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+&usdhc2 {
+	assigned-clocks = <&clk IMX8MN_CLK_USDHC2>;
+	assigned-clock-rates = <200000000>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
+	cd-gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
+	bus-width = <4>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	status = "okay";
+};
+
+&usdhc3 {
+	assigned-clocks = <&clk IMX8MN_CLK_USDHC3_ROOT>;
+	assigned-clock-rates = <400000000>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	bus-width = <8>;
+	non-removable;
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+
+	pinctrl_fec1: fec1grp {
+		fsl,pins = <
+			MX8MN_IOMUXC_ENET_MDC_ENET1_MDC		0x3
+			MX8MN_IOMUXC_ENET_MDIO_ENET1_MDIO	0x3
+			MX8MN_IOMUXC_ENET_TD3_ENET1_RGMII_TD3	0x1f
+			MX8MN_IOMUXC_ENET_TD2_ENET1_RGMII_TD2	0x1f
+			MX8MN_IOMUXC_ENET_TD1_ENET1_RGMII_TD1	0x1f
+			MX8MN_IOMUXC_ENET_TD0_ENET1_RGMII_TD0	0x1f
+			MX8MN_IOMUXC_ENET_RD3_ENET1_RGMII_RD3	0x91
+			MX8MN_IOMUXC_ENET_RD2_ENET1_RGMII_RD2	0x91
+			MX8MN_IOMUXC_ENET_RD1_ENET1_RGMII_RD1	0x91
+			MX8MN_IOMUXC_ENET_RD0_ENET1_RGMII_RD0	0x91
+			MX8MN_IOMUXC_ENET_TXC_ENET1_RGMII_TXC	0x1f
+			MX8MN_IOMUXC_ENET_RXC_ENET1_RGMII_RXC	0x91
+			MX8MN_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
+			MX8MN_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
+			MX8MN_IOMUXC_SAI2_RXC_GPIO4_IO22	0x19
+		>;
+	};
+
+	pinctrl_gpio_led: gpioledgrp {
+		fsl,pins = <
+			MX8MN_IOMUXC_NAND_READY_B_GPIO3_IO16	0x19
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX8MN_IOMUXC_I2C1_SCL_I2C1_SCL		0x400001c3
+			MX8MN_IOMUXC_I2C1_SDA_I2C1_SDA		0x400001c3
+		>;
+	};
+
+	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmc {
+		fsl,pins = <
+			MX8MN_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX8MN_IOMUXC_UART2_RXD_UART2_DCE_RX	0x140
+			MX8MN_IOMUXC_UART2_TXD_UART2_DCE_TX	0x140
+		>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2grpgpio {
+		fsl,pins = <
+			MX8MN_IOMUXC_GPIO1_IO15_GPIO1_IO15	0x1c4
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX8MN_IOMUXC_SD2_CLK_USDHC2_CLK		0x190
+			MX8MN_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d0
+			MX8MN_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d0
+			MX8MN_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d0
+			MX8MN_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d0
+			MX8MN_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d0
+			MX8MN_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
+		fsl,pins = <
+			MX8MN_IOMUXC_SD2_CLK_USDHC2_CLK		0x194
+			MX8MN_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d4
+			MX8MN_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d4
+			MX8MN_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d4
+			MX8MN_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d4
+			MX8MN_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d4
+			MX8MN_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
+		fsl,pins = <
+			MX8MN_IOMUXC_SD2_CLK_USDHC2_CLK		0x196
+			MX8MN_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d6
+			MX8MN_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d6
+			MX8MN_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d6
+			MX8MN_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d6
+			MX8MN_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d6
+			MX8MN_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX8MN_IOMUXC_NAND_WE_B_USDHC3_CLK		0x40000190
+			MX8MN_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d0
+			MX8MN_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d0
+			MX8MN_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d0
+			MX8MN_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d0
+			MX8MN_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d0
+			MX8MN_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d0
+			MX8MN_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d0
+			MX8MN_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d0
+			MX8MN_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d0
+			MX8MN_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x190
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3grp100mhz {
+		fsl,pins = <
+			MX8MN_IOMUXC_NAND_WE_B_USDHC3_CLK		0x40000194
+			MX8MN_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d4
+			MX8MN_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d4
+			MX8MN_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d4
+			MX8MN_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d4
+			MX8MN_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d4
+			MX8MN_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d4
+			MX8MN_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d4
+			MX8MN_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d4
+			MX8MN_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d4
+			MX8MN_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x194
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3grp200mhz {
+		fsl,pins = <
+			MX8MN_IOMUXC_NAND_WE_B_USDHC3_CLK		0x40000196
+			MX8MN_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d6
+			MX8MN_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d6
+			MX8MN_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d6
+			MX8MN_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d6
+			MX8MN_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d6
+			MX8MN_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d6
+			MX8MN_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d6
+			MX8MN_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d6
+			MX8MN_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d6
+			MX8MN_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x196
+		>;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX8MN_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B		0xc6
+		>;
+	};
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
