Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FDDF2601
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 04:32:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pyz1TmwCpNnecjP/AncrjgMr+KU5BPmf/y6p+tdsSTU=; b=Rie
	d+0s16TW1YuDI0Feka/a9eVYCKgT20Fq2DGCbq/upqP3fCzt/YJrSLJU8ZcJ/ymCg/0jBBeyOr3VH
	7/CRpICoyxZ2we+9IjqdzlZSiQDy8bSt2OXHSItWv/m0LuyzNMUrcvaRzrEXLeeLiK9uGZ2hZoG6c
	Y7oUEYepajfIuDxZ5Sr4diskKY6qHBo0jQ5WSo4bdGMf+KcIvrTJ+ThVNjMp9HzFQ8Np2Q+mRb0w/
	iA2rnWWki2Jaci5MNoWyRkPXESFNqQN9k15mxJpgk61UM0MtPcTCvBo0vhH5+8IrVMmltfVkWeVpG
	i54zhMy4r71JGqo0i8w34tgT/k4zXHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSYX5-0000NW-Vl; Thu, 07 Nov 2019 03:32:28 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSYWu-0000NE-Dw
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 03:32:18 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6E41A1A0697;
 Thu,  7 Nov 2019 04:32:14 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 26CD11A0511;
 Thu,  7 Nov 2019 04:32:08 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 26DB0402B1;
 Thu,  7 Nov 2019 11:32:00 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 aisheng.dong@nxp.com, daniel.baluta@nxp.com, peng.fan@nxp.com,
 fugang.duan@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8qxp: Remove unnecessary "interrupt-parent"
 property
Date: Thu,  7 Nov 2019 11:30:35 +0800
Message-Id: <1573097435-19814-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_193216_746629_6F2CEFCB 
X-CRM114-Status: UNSURE (   6.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

gic is appointed as default interrupt parent for devices, so no need
to specify it again in device nodes which use it as interrupt parent.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 9646a41..fb5f752 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -250,7 +250,6 @@
 			compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
 			reg = <0x5a060000 0x1000>;
 			interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-parent = <&gic>;
 			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART0_IPG_CLK>,
 				 <&adma_lpcg IMX_ADMA_LPCG_UART0_BAUD_CLK>;
 			clock-names = "ipg", "baud";
@@ -262,7 +261,6 @@
 			compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
 			reg = <0x5a070000 0x1000>;
 			interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-parent = <&gic>;
 			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART1_IPG_CLK>,
 				 <&adma_lpcg IMX_ADMA_LPCG_UART1_BAUD_CLK>;
 			clock-names = "ipg", "baud";
@@ -274,7 +272,6 @@
 			compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
 			reg = <0x5a080000 0x1000>;
 			interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-parent = <&gic>;
 			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART2_IPG_CLK>,
 				 <&adma_lpcg IMX_ADMA_LPCG_UART2_BAUD_CLK>;
 			clock-names = "ipg", "baud";
@@ -286,7 +283,6 @@
 			compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
 			reg = <0x5a090000 0x1000>;
 			interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-parent = <&gic>;
 			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART3_IPG_CLK>,
 				 <&adma_lpcg IMX_ADMA_LPCG_UART3_BAUD_CLK>;
 			clock-names = "ipg", "baud";
@@ -298,7 +294,6 @@
 			compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
 			reg = <0x5a800000 0x4000>;
 			interrupts = <GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-parent = <&gic>;
 			clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C0_CLK>;
 			clock-names = "per";
 			assigned-clocks = <&clk IMX_ADMA_I2C0_CLK>;
@@ -311,7 +306,6 @@
 			compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
 			reg = <0x5a810000 0x4000>;
 			interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-parent = <&gic>;
 			clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C1_CLK>;
 			clock-names = "per";
 			assigned-clocks = <&clk IMX_ADMA_I2C1_CLK>;
@@ -324,7 +318,6 @@
 			compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
 			reg = <0x5a820000 0x4000>;
 			interrupts = <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-parent = <&gic>;
 			clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C2_CLK>;
 			clock-names = "per";
 			assigned-clocks = <&clk IMX_ADMA_I2C2_CLK>;
@@ -337,7 +330,6 @@
 			compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
 			reg = <0x5a830000 0x4000>;
 			interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-parent = <&gic>;
 			clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C3_CLK>;
 			clock-names = "per";
 			assigned-clocks = <&clk IMX_ADMA_I2C3_CLK>;
@@ -361,7 +353,6 @@
 
 		usdhc1: mmc@5b010000 {
 			compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
-			interrupt-parent = <&gic>;
 			interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
 			reg = <0x5b010000 0x10000>;
 			clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC0_IPG_CLK>,
@@ -374,7 +365,6 @@
 
 		usdhc2: mmc@5b020000 {
 			compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
-			interrupt-parent = <&gic>;
 			interrupts = <GIC_SPI 233 IRQ_TYPE_LEVEL_HIGH>;
 			reg = <0x5b020000 0x10000>;
 			clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC1_IPG_CLK>,
@@ -389,7 +379,6 @@
 
 		usdhc3: mmc@5b030000 {
 			compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
-			interrupt-parent = <&gic>;
 			interrupts = <GIC_SPI 234 IRQ_TYPE_LEVEL_HIGH>;
 			reg = <0x5b030000 0x10000>;
 			clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC2_IPG_CLK>,
@@ -446,7 +435,6 @@
 		ddr-pmu@5c020000 {
 			compatible = "fsl,imx8-ddr-pmu";
 			reg = <0x5c020000 0x10000>;
-			interrupt-parent = <&gic>;
 			interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
 		};
 	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
