Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2551B1608E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:28:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4nG7+RvmGZUGhn9EEprwlZDkg8jHcPf0df75qISbcEY=; b=LB3rWt8YHW8ICaQveTFmQQXhZf
	DfbRHNeOuw6kwNrvPUcrv4c7OATSu1jaAVcJwWGuKrVwebJw1P6rzlVBqyR1nRo8CC3s0dnyYE7b+
	AuqhtaVgfSQPoS46PdlV8y6P4ARnCqxZRgJBjmXVji3cwVz9kp61dTcNYVpsYRB3H1FSsWsvuMNXa
	F6CcQHBbU0P+BNgnKG4xz9waDWs4yHTKLaEkjTwNyMXJUnFb4Jc7iDLG2fzaI+Jce9269lDf6Qdg9
	rkD9DANU57v/wSHLqvoQ3uV0pCQ5uwF/T2/PqD1u/SH1+H+rx4WiMbzHsgnxxS3sbw6p/rFjLEzHV
	i2JlMilA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3X51-0000bW-NX; Mon, 17 Feb 2020 03:28:19 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3X3W-0007cp-FV
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:26:48 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3E1FB1A1F30;
 Mon, 17 Feb 2020 04:26:45 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 37F211A1F3D;
 Mon, 17 Feb 2020 04:26:35 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 87FD0402E5;
 Mon, 17 Feb 2020 11:26:23 +0800 (SGT)
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de
Subject: [PATCH 7/7] arch: arm64: dts: imx8qxp: add device node for CAN in
 ADMA SS
Date: Mon, 17 Feb 2020 11:19:21 +0800
Message-Id: <1581909561-12058-8-git-send-email-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581909561-12058-1-git-send-email-qiangqing.zhang@nxp.com>
References: <1581909561-12058-1-git-send-email-qiangqing.zhang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_192646_863276_815BC217 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, peng.fan@nxp.com,
 fugang.duan@nxp.com, Anson.Huang@nxp.com, festevam@gmail.com,
 linux-kernel@vger.kernel.org, Joakim Zhang <qiangqing.zhang@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add device node for CAN in ADMA SS.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 47 +++++++++++++++
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi    | 59 +++++++++++++++++++
 2 files changed, 106 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index f88402ee650c..72a45dd7129e 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -28,6 +28,25 @@
 		gpio = <&lsio_gpio4 19 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 	};
+
+	reg_can_en: regulator-can-en {
+		compatible = "regulator-fixed";
+		regulator-name = "can-en";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&pca6416 3 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_can_stby: regulator-can-stby {
+		compatible = "regulator-fixed";
+		regulator-name = "can-stby";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&pca6416 5 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&reg_can_en>;
+	};
 };
 
 &cm40_i2c {
@@ -80,6 +99,20 @@
 	};
 };
 
+&adma_flexcan0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan0>;
+	xceiver-supply = <&reg_can_stby>;
+	status = "okay";
+};
+
+&adma_flexcan1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+	xceiver-supply = <&reg_can_stby>;
+	status = "okay";
+};
+
 &adma_i2c1 {
 	#address-cells = <1>;
 	#size-cells = <0>;
@@ -207,6 +240,20 @@
 		>;
 	};
 
+	pinctrl_flexcan0: flexcan0grp {
+		fsl,pins = <
+			IMX8QXP_FLEXCAN0_TX_ADMA_FLEXCAN0_TX			0x00000021
+			IMX8QXP_FLEXCAN0_RX_ADMA_FLEXCAN0_RX			0x00000021
+		>;
+	};
+
+	pinctrl_flexcan1: flexcan1grp {
+		fsl,pins = <
+			IMX8QXP_FLEXCAN1_TX_ADMA_FLEXCAN1_TX			0x00000021
+			IMX8QXP_FLEXCAN1_RX_ADMA_FLEXCAN1_RX			0x00000021
+		>;
+	};
+
 	pinctrl_ioexp_rst: ioexp_rst_grp {
 		fsl,pins = <
 			IMX8QXP_SPI2_SDO_LSIO_GPIO1_IO01			0x06000021
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index cd10519eced7..f549e33d1c82 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -34,6 +34,9 @@
 		serial1 = &adma_lpuart1;
 		serial2 = &adma_lpuart2;
 		serial3 = &adma_lpuart3;
+		can0 = &adma_flexcan0;
+		can1 = &adma_flexcan1;
+		can2 = &adma_flexcan2;
 	};
 
 	cpus {
@@ -384,6 +387,62 @@
 			power-domains = <&pd IMX_SC_R_I2C_3>;
 			status = "disabled";
 		};
+
+		adma_flexcan0: can@5a8d0000 {
+			compatible = "fsl,imx8qxp-flexcan", "fsl,imx8qm-flexcan";
+			reg = <0x5a8d0000 0x10000>;
+			interrupts = <GIC_SPI 235 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&gic>;
+			clocks = <&adma_lpcg IMX_ADMA_LPCG_CAN0_IPG_CLK>,
+				 <&adma_lpcg IMX_ADMA_LPCG_CAN0_IPG_PE_CLK>;
+			clock-names = "ipg", "per";
+			assigned-clocks = <&clk IMX_ADMA_CAN0_CLK>;
+			assigned-clock-rates = <40000000>;
+			power-domains = <&pd IMX_SC_R_CAN_0>;
+			/* SLSlice[4] */
+			fsl,clk-source = <0>;
+			status = "disabled";
+		};
+
+		adma_flexcan1: can@5a8e0000 {
+			compatible = "fsl,imx8qxp-flexcan", "fsl,imx8qm-flexcan";
+			reg = <0x5a8e0000 0x10000>;
+			interrupts = <GIC_SPI 236 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&gic>;
+			/* CAN0 clock and PD is shared among all CAN instances
+			 * as CAN1 shares CAN0's clock and to enable CAN0's
+			 * clock it has to be powered on.
+			 */
+			clocks = <&adma_lpcg IMX_ADMA_LPCG_CAN0_IPG_CLK>,
+				 <&adma_lpcg IMX_ADMA_LPCG_CAN0_IPG_PE_CLK>;
+			clock-names = "ipg", "per";
+			assigned-clocks = <&clk IMX_ADMA_CAN0_CLK>;
+			assigned-clock-rates = <40000000>;
+			power-domains = <&pd IMX_SC_R_CAN_1>;
+			/* SLSlice[4] */
+			fsl,clk-source = <0>;
+			status = "disabled";
+		};
+
+		adma_flexcan2: can@5a8f0000 {
+			compatible = "fsl,imx8qxp-flexcan", "fsl,imx8qm-flexcan";
+			reg = <0x5a8f0000 0x10000>;
+			interrupts = <GIC_SPI 237 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&gic>;
+			/* CAN0 clock and PD is shared among all CAN instances
+			 * as CAN2 shares CAN0's clock and to enable CAN0's
+			 * clock it has to be powered on.
+			 */
+			clocks = <&adma_lpcg IMX_ADMA_LPCG_CAN0_IPG_CLK>,
+				 <&adma_lpcg IMX_ADMA_LPCG_CAN0_IPG_PE_CLK>;
+			clock-names = "ipg", "per";
+			assigned-clocks = <&clk IMX_ADMA_CAN0_CLK>;
+			assigned-clock-rates = <40000000>;
+			power-domains = <&pd IMX_SC_R_CAN_2>;
+			/* SLSlice[4] */
+			fsl,clk-source = <0>;
+			status = "disabled";
+		};
 	};
 
 	conn_subsys: bus@5b000000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
