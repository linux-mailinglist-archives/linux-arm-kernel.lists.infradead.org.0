Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 759381608E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:27:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Mpxf7MJ6Lx9YvBPJHzoaWvrq6wRHPP5M7tTMJS+Nkf8=; b=ScUbCzZkSFEIHLcd4nfUz5A91+
	QAxw+BUETupg7qoJ7tu5qMmXv9k5dY6uikarrnRzCgq36XO2RvJJ2TJHnaXzMjBcWMhscUXZzRyyJ
	Vx7ncDm5aUsHLLJLpg9YI47n3voqA5yGKAZe4QXHsSGpETUq9+eVR4irDcZeXPfdYDl+5966wxf3U
	HrIo1w75PiBlV3DmV9KE9XPta/ZbKj6qzabrNRUlGjR05Wgie5TmybQ/sENpA7YGbHJh4Uz7P/Ycd
	Www/fcw6eCqAzOS/BSGDeDm6nsLGOIQyJRwx2loKNKT5vupP3Dx5e7XBBxReBCTmtRJxj4Z+GGna6
	X3BIUIug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3X4c-0000Bc-Vp; Mon, 17 Feb 2020 03:27:54 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3X3S-0007Wg-TG
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:26:44 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A4C621A1F30;
 Mon, 17 Feb 2020 04:26:41 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A895E1A1F39;
 Mon, 17 Feb 2020 04:26:31 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 72D68402E0;
 Mon, 17 Feb 2020 11:26:20 +0800 (SGT)
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de
Subject: [PATCH 5/7] arch: arm64: dts: imx8qxp: add device node for I2C and
 INTMUX in CM40 SS
Date: Mon, 17 Feb 2020 11:19:19 +0800
Message-Id: <1581909561-12058-6-git-send-email-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581909561-12058-1-git-send-email-qiangqing.zhang@nxp.com>
References: <1581909561-12058-1-git-send-email-qiangqing.zhang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_192643_240735_DA43B7E4 
X-CRM114-Status: GOOD (  10.34  )
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

Add device node for I2C and INTMUX in CM40 SS.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 27 +++++++++++
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi    | 47 +++++++++++++++++++
 2 files changed, 74 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index d3d26cca7d52..f88402ee650c 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -30,6 +30,26 @@
 	};
 };
 
+&cm40_i2c {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_cm40_i2c>;
+	status = "okay";
+
+	pca6416: gpio@20 {
+		compatible = "nxp,pca6416";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+};
+
+&cm40_intmux {
+	status = "okay";
+};
+
 &adma_lpuart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpuart0>;
@@ -161,6 +181,13 @@
 };
 
 &iomuxc {
+	pinctrl_cm40_i2c: cm40i2cgrp {
+		fsl,pins = <
+			IMX8QXP_ADC_IN1_M40_I2C0_SDA                            0x0600004c
+			IMX8QXP_ADC_IN0_M40_I2C0_SCL                            0x0600004c
+		>;
+	};
+
 	pinctrl_fec1: fec1grp {
 		fsl,pins = <
 			IMX8QXP_ENET0_MDC_CONN_ENET0_MDC			0x06000020
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index fb5f752b15fe..cd10519eced7 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -213,6 +213,53 @@
 		clock-output-names = "xtal_24MHz";
 	};
 
+	cm40_subsys: bus@34000000 {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x34000000 0x0 0x34000000 0x4000000>;
+
+		cm40_lpcg: clock-controller@375d0000 {
+			compatible = "fsl,imx8qxp-lpcg-cm40";
+			reg = <0x375d0000 0x70000>;
+			#clock-cells = <1>;
+		};
+
+		cm40_i2c: i2c@37230000 {
+			compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
+			reg = <0x37230000 0x1000>;
+			interrupts = <9 0>;
+			interrupt-parent = <&cm40_intmux>;
+			clocks = <&cm40_lpcg IMX_CM40_LPCG_I2C_CLK>,
+				 <&cm40_lpcg IMX_CM40_LPCG_I2C_IPG_CLK>;
+			clock-names = "per", "ipg";
+			assigned-clocks = <&clk IMX_CM40_I2C_CLK>;
+			assigned-clock-rates = <24000000>;
+			power-domains = <&pd IMX_SC_R_M4_0_I2C>;
+			status = "disabled";
+		};
+
+		cm40_intmux: intmux@37400000 {
+			compatible = "fsl,imx-intmux";
+			reg = <0x37400000 0x1000>;
+			interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			interrupt-parent = <&gic>;
+			#interrupt-cells = <2>;
+			clocks = <&clk IMX_CM40_IPG_CLK>;
+			clock-names = "ipg";
+			power-domains = <&pd IMX_SC_R_M4_0_INTMUX>;
+			status = "disabled";
+		};
+	};
+
 	adma_subsys: bus@59000000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
