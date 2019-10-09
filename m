Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B655D058C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 04:37:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9CS+qmAlfSWr1Xnm14I8Sqn/g650NBbal6oa2q6veKY=; b=XJAPZf/rIPMxlyu9TUEjaXTDXN
	ELze4mr/oS+OQfQj9z0CfbtL3wSFdSt+joE9pzAckZEZxevnfvA5CJ5BxyqhDYZZWEXTj5EwBChnA
	Hs0O2wpKPQ0AsnYa7Cj+fq5Ef5+6eOh5/dSo+YQYAoiejQjVrAFns1WyfsDnWx2dwmP3Tf750Rb3f
	NmXtxGfUXh8rM190FUBjJagilGZhlSslFnk9UzP9xlKkvYh85J/K2OerBlwzxBxffGtCKbzD2fPhp
	EMZNiBAEU6cBrhdepkExoej2MzH2SlmfUa3epQqkioSw0lpUN0NrKk4qSEn1ZMOfG0qRKdJ0kiM8y
	X3gCjeqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI1qr-0006Ry-RC; Wed, 09 Oct 2019 02:37:21 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI1qh-0006Ql-0b
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 02:37:12 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 13F3220002E;
 Wed,  9 Oct 2019 04:37:07 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D9EE4200081;
 Wed,  9 Oct 2019 04:36:59 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 400E5402E4;
 Wed,  9 Oct 2019 10:36:51 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 l.stach@pengutronix.de, ccaione@baylibre.com, abel.vesa@nxp.com,
 daniel.baluta@nxp.com, andrew.smirnov@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: imx8mn-ddr4-evk: Move iomuxc node to end of
 file
Date: Wed,  9 Oct 2019 10:34:39 +0800
Message-Id: <1570588479-28009-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570588479-28009-1-git-send-email-Anson.Huang@nxp.com>
References: <1570588479-28009-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_193711_332161_506CEC93 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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

All nodes are better to follow alphabetical sort except iomuxc
which has huge pinctrl data, better to put it at the end of
file.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts | 304 +++++++++++-----------
 1 file changed, 152 insertions(+), 152 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
index d78d657..1b90faac 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
@@ -43,158 +43,6 @@
 	cpu-supply = <&buck2_reg>;
 };
 
-&iomuxc {
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
-	pinctrl_pmic: pmicirq {
-		fsl,pins = <
-			MX8MN_IOMUXC_GPIO1_IO03_GPIO1_IO3	0x41
-		>;
-	};
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
-};
-
 &fec1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_fec1>;
@@ -364,3 +212,155 @@
 	fsl,ext-reset-output;
 	status = "okay";
 };
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
+	pinctrl_pmic: pmicirq {
+		fsl,pins = <
+			MX8MN_IOMUXC_GPIO1_IO03_GPIO1_IO3	0x41
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
