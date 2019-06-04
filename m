Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 462F3346D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:32:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uhn3s0/INOnjkO4a+BRo1R4jl0OKK7RiFx0ypc2oA3g=; b=sFZfvbCTDO3su7bHC2tu/jGJlH
	GErYrQMV888PDRlSzTABJyBMsWbALp6Gr9135Pvh5X6aVm0cKj+PQ/8vpurXKAcGJ3mL+0Bh4C2OW
	n7QWALa5rPmqxH9N9y+ExirQNmuWQ5Oxn18qZx6fnBtEP90MAAZ++3cyIRSKhNp92+KRmAyIplzHM
	iAtHNATPnKepwZXPW30bNwILaWPjks9j6sAL0atpCh4qr0853kwSrRmAH6A11qr6C6y3rtVvBQZcz
	97WeHaKuFF5CUVHBHKIJPYHi+WOcfJfy9wZvNdx7xuDD38IRp+09ad/SCWTT9lFkhLGcpQ/jy6K5A
	4d32uceA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8bd-0007kJ-He; Tue, 04 Jun 2019 12:31:57 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8b9-0007FL-V6
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 12:31:31 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3656D200F22;
 Tue,  4 Jun 2019 14:31:26 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 471E2200F1C;
 Tue,  4 Jun 2019 14:31:20 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 09F3B402D5;
 Tue,  4 Jun 2019 20:31:12 +0800 (SGT)
From: daniel.baluta@nxp.com
To: shawnguo@kernel.org
Subject: [PATCH v4 1/2] arm64: dts: imx8mm: Add SAI nodes
Date: Tue,  4 Jun 2019 20:32:56 +0800
Message-Id: <20190604123257.2920-2-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604123257.2920-1-daniel.baluta@nxp.com>
References: <20190604123257.2920-1-daniel.baluta@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_053128_419610_D1615563 
X-CRM114-Status: UNSURE (   6.35  )
X-CRM114-Notice: Please train this message.
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Daniel Baluta <daniel.baluta@nxp.com>, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, m.felsch@pengutronix.de, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 shengjiu.wang@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Baluta <daniel.baluta@nxp.com>

i.MX8MM has 5 SAI instances with the following base
addresses according to RM.

SAI1 base address: 3001_0000h
SAI2 base address: 3002_0000h
SAI3 base address: 3003_0000h
SAI5 base address: 3005_0000h
SAI6 base address: 3006_0000h

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 66 +++++++++++++++++++++++
 1 file changed, 66 insertions(+)

Shawn, although here https://lkml.org/lkml/2019/5/31/110 you 
say this patch is applied I couldn't find it in any of your
branches.

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 708d3c4c1389..321cd050e6f8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -212,6 +212,72 @@
 			#size-cells = <1>;
 			ranges;
 
+			sai1: sai@30010000 {
+				compatible = "fsl,imx8mm-sai", "fsl,imx8mq-sai";
+				reg = <0x30010000 0x10000>;
+				interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_SAI1_IPG>,
+					 <&clk IMX8MM_CLK_SAI1_ROOT>,
+					 <&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_CLK_DUMMY>;
+				clock-names = "bus", "mclk1", "mclk2", "mclk3";
+				dmas = <&sdma2 0 2 0>, <&sdma2 1 2 0>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
+
+			sai2: sai@30020000 {
+				compatible = "fsl,imx8mm-sai", "fsl,imx8mq-sai";
+				reg = <0x30020000 0x10000>;
+				interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_SAI2_IPG>,
+					<&clk IMX8MM_CLK_SAI2_ROOT>,
+					<&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_CLK_DUMMY>;
+				clock-names = "bus", "mclk1", "mclk2", "mclk3";
+				dmas = <&sdma2 2 2 0>, <&sdma2 3 2 0>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
+
+			sai3: sai@30030000 {
+				#sound-dai-cells = <0>;
+				compatible = "fsl,imx8mm-sai", "fsl,imx8mq-sai";
+				reg = <0x30030000 0x10000>;
+				interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_SAI3_IPG>,
+					 <&clk IMX8MM_CLK_SAI3_ROOT>,
+					 <&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_CLK_DUMMY>;
+				clock-names = "bus", "mclk1", "mclk2", "mclk3";
+				dmas = <&sdma2 4 2 0>, <&sdma2 5 2 0>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
+
+			sai5: sai@30050000 {
+				compatible = "fsl,imx8mm-sai", "fsl,imx8mq-sai";
+				reg = <0x30050000 0x10000>;
+				interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_SAI5_IPG>,
+					 <&clk IMX8MM_CLK_SAI5_ROOT>,
+					 <&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_CLK_DUMMY>;
+				clock-names = "bus", "mclk1", "mclk2", "mclk3";
+				dmas = <&sdma2 8 2 0>, <&sdma2 9 2 0>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
+
+			sai6: sai@30060000 {
+				compatible = "fsl,imx8mm-sai", "fsl,imx8mq-sai";
+				reg = <0x30060000 0x10000>;
+				interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_SAI6_IPG>,
+					 <&clk IMX8MM_CLK_SAI6_ROOT>,
+					 <&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_CLK_DUMMY>;
+				clock-names = "bus", "mclk1", "mclk2", "mclk3";
+				dmas = <&sdma2 10 2 0>, <&sdma2 11 2 0>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
+
 			gpio1: gpio@30200000 {
 				compatible = "fsl,imx8mm-gpio", "fsl,imx35-gpio";
 				reg = <0x30200000 0x10000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
