Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF1910B589
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 19:21:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w9CRELEl8wToCrj2vGpB1uwJGhTHWyqVxF6x5Jxsjb4=; b=WSHlb/X6swU6DO
	oxiLt24rhK34mrcw58csyd/PdqQ6GUMW89AH3bJFyjUGkD5q0UnSAuU+ibCIQDw5ps9WirMgoca7F
	tORIODzeWXriTc3glsyOkC3dWU3cEDJMOkLOQU5uTzsBJITmJg5WAbFI+NLhbeSiOa97E0/tsZEfu
	4+63+DjAc1SCtdAqeC2/Mj9NeBpL4m/PJRZvYFK9NiJq8QOfLcmxHOnyxB3Q2ybCyxFYDSI7kRSkz
	QMaVLY+nTI6EGNVrshHMDRFgarR4s7hki9S9afIaifS9VgintF6d2+4/HS1QNEa2oL0eckA3I9i/A
	5SprruHGHW5+nMTOCkoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia1wi-0000v8-9L; Wed, 27 Nov 2019 18:21:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia1wS-0000uX-Ee
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 18:21:33 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1ia1wP-0001vy-8L; Wed, 27 Nov 2019 19:21:29 +0100
From: Lucas Stach <l.stach@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 1/2] arm64: dts: imx8mq: add missing SAI nodes
Date: Wed, 27 Nov 2019 19:21:26 +0100
Message-Id: <20191127182127.1204-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_102132_491828_3E16D71D 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, patchwork-lst@pengutronix.de,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently only SAI2 is present in the DT. Add all the other SAI
instances present on the SoC.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 70 +++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 55a3d1c4bdf0..42024ac3bc3f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -281,6 +281,62 @@
 			#size-cells = <1>;
 			ranges = <0x30000000 0x30000000 0x400000>;
 
+			sai1: sai@30010000 {
+				#sound-dai-cells = <0>;
+				compatible = "fsl,imx8mq-sai";
+				reg = <0x30010000 0x10000>;
+				interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MQ_CLK_SAI1_IPG>,
+				         <&clk IMX8MQ_CLK_SAI1_ROOT>,
+				         <&clk IMX8MQ_CLK_DUMMY>, <&clk IMX8MQ_CLK_DUMMY>;
+				clock-names = "bus", "mclk1", "mclk2", "mclk3";
+				dmas = <&sdma2 8 24 0>, <&sdma1 9 24 0>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
+
+			sai6: sai@30030000 {
+				#sound-dai-cells = <0>;
+				compatible = "fsl,imx8mq-sai";
+				reg = <0x30030000 0x10000>;
+				interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MQ_CLK_SAI6_IPG>,
+				         <&clk IMX8MQ_CLK_SAI6_ROOT>,
+				         <&clk IMX8MQ_CLK_DUMMY>, <&clk IMX8MQ_CLK_DUMMY>;
+				clock-names = "bus", "mclk1", "mclk2", "mclk3";
+				dmas = <&sdma2 4 24 0>, <&sdma2 5 24 0>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
+
+			sai5: sai@30040000 {
+				#sound-dai-cells = <0>;
+				compatible = "fsl,imx8mq-sai";
+				reg = <0x30040000 0x10000>;
+				interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MQ_CLK_SAI5_IPG>,
+				         <&clk IMX8MQ_CLK_SAI5_ROOT>,
+				         <&clk IMX8MQ_CLK_DUMMY>, <&clk IMX8MQ_CLK_DUMMY>;
+				clock-names = "bus", "mclk1", "mclk2", "mclk3";
+				dmas = <&sdma2 2 24 0>, <&sdma2 3 24 0>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
+
+			sai4: sai@30050000 {
+				#sound-dai-cells = <0>;
+				compatible = "fsl,imx8mq-sai";
+				reg = <0x30050000 0x10000>;
+				interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MQ_CLK_SAI4_IPG>,
+				         <&clk IMX8MQ_CLK_SAI4_ROOT>,
+				         <&clk IMX8MQ_CLK_DUMMY>, <&clk IMX8MQ_CLK_DUMMY>;
+				clock-names = "bus", "mclk1", "mclk2", "mclk3";
+				dmas = <&sdma2 0 24 0>, <&sdma2 1 24 0>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
+
 			gpio1: gpio@30200000 {
 				compatible = "fsl,imx8mq-gpio", "fsl,imx35-gpio";
 				reg = <0x30200000 0x10000>;
@@ -751,6 +807,20 @@
 				status = "disabled";
 			};
 
+			sai3: sai@308c0000 {
+				#sound-dai-cells = <0>;
+				compatible = "fsl,imx8mq-sai";
+				reg = <0x308c0000 0x10000>;
+				interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MQ_CLK_SAI3_IPG>,
+				         <&clk IMX8MQ_CLK_SAI3_ROOT>,
+				         <&clk IMX8MQ_CLK_DUMMY>, <&clk IMX8MQ_CLK_DUMMY>;
+				clock-names = "bus", "mclk1", "mclk2", "mclk3";
+				dmas = <&sdma1 12 24 0>, <&sdma1 13 24 0>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
+
 			crypto: crypto@30900000 {
 				compatible = "fsl,sec-v4.0";
 				#address-cells = <1>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
