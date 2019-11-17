Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E878FF9B1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 13:49:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mpGOtlnzNZNgUgU1YDSUX3b+KIoCBvnUleMBbzu85fI=; b=NW/MXoQUd7v73y2nFB6hl3PZmx
	ArsZk0/1lTO5NuQy4XY4LcJrL8uyHaI5r7XIktbWf3ffMJagBom84yMggxzj3fP0ew7psLi0esPJ+
	KHoqejJlCaLq5/wUfU6NUTjc+Hcg/fUHnJgTGcJ5zkLp433UawkRo0gBftaS5cbi1YkNNsH2Nwmel
	pKPeyKf/hn7Tc8ZsOa6TEkZJHJIgaZK9XwKMfpxDWEWIiHLYyyXhs6yR56fVGfby5KrRVHd0DhWy+
	nyopLU8+CLoGqq9iG1ycbTAXU4ceFz6O9zmKCPfBwYa4Zwul77324D/YJhHIdmPmhXrFiyAO1uQ/I
	H7rx34eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWJzz-0001gL-4t; Sun, 17 Nov 2019 12:49:51 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWJwW-0007M1-3k
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 12:46:20 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5D9C62007DA;
 Sun, 17 Nov 2019 13:46:14 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DBC252007E9;
 Sun, 17 Nov 2019 13:46:09 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 036E840330;
 Sun, 17 Nov 2019 20:46:02 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH RESEND v3 11/15] arm64: dts: imx8: split adma ss into dma and
 audio ss
Date: Sun, 17 Nov 2019 20:43:51 +0800
Message-Id: <1573994635-14479-12-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573994635-14479-1-git-send-email-aisheng.dong@nxp.com>
References: <1573994635-14479-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_044617_113434_80ADC73E 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, sboyd@kernel.org,
 mturquette@baylibre.com, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, shawnguo@kernel.org, linux-clk@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

amda ss is consisted of dma and audio ss in qxp which are
also used in qm.
Let's split them into two ss for better code reuse.

Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v3->4:
 * remove amda_* prefix for new boards colibri
v2->v3:
 * use new clock-indices IDs
 * remove ss prefix for adma
v1->v2:
 * change to the new two cell scu clk binding
---
 .../boot/dts/freescale/imx8-ss-adma.dtsi      | 252 +-----------------
 .../boot/dts/freescale/imx8-ss-audio.dtsi     |  68 +++++
 .../arm64/boot/dts/freescale/imx8-ss-dma.dtsi | 210 +++++++++++++++
 .../boot/dts/freescale/imx8qxp-ai_ml.dts      |  16 +-
 .../freescale/imx8qxp-colibri-eval-v3.dtsi    |   8 +-
 .../boot/dts/freescale/imx8qxp-colibri.dtsi   |  12 +-
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts |   8 +-
 .../boot/dts/freescale/imx8qxp-ss-adma.dtsi   |  16 +-
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi    |   8 +-
 9 files changed, 314 insertions(+), 284 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
index 1501424c7b76..22b6dfe63950 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
@@ -4,253 +4,5 @@
  *	Dong Aisheng <aisheng.dong@nxp.com>
  */
 
-#include <dt-bindings/clock/imx8-lpcg.h>
-#include <dt-bindings/firmware/imx/rsrc.h>
-
-adma_subsys: bus@59000000 {
-	compatible = "simple-bus";
-	#address-cells = <1>;
-	#size-cells = <1>;
-	ranges = <0x59000000 0x0 0x59000000 0x2000000>;
-
-	dma_ipg_clk: clock-dma-ipg {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <120000000>;
-		clock-output-names = "dma_ipg_clk";
-	};
-
-	dsp_lpcg: clock-controller@59580000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x59580000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&dma_ipg_clk>,
-			 <&dma_ipg_clk>,
-			 <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
-				<IMX_LPCG_CLK_7>;
-		clock-output-names = "dsp_lpcg_adb_clk",
-				     "dsp_lpcg_ipg_clk",
-				     "dsp_lpcg_core_clk";
-		power-domains = <&pd IMX_SC_R_DSP>;
-	};
-
-	dsp_ram_lpcg: clock-controller@59590000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x59590000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_4>;
-		clock-output-names = "dsp_ram_lpcg_ipg_clk";
-		power-domains = <&pd IMX_SC_R_DSP_RAM>;
-	};
-
-	adma_dsp: dsp@596e8000 {
-		compatible = "fsl,imx8qxp-dsp";
-		reg = <0x596e8000 0x88000>;
-		clocks = <&dsp_lpcg IMX_LPCG_CLK_5>,
-			 <&dsp_ram_lpcg IMX_LPCG_CLK_4>,
-			 <&dsp_lpcg IMX_LPCG_CLK_7>;
-		clock-names = "ipg", "ocram", "core";
-		power-domains = <&pd IMX_SC_R_MU_13A>,
-			<&pd IMX_SC_R_MU_13B>,
-			<&pd IMX_SC_R_DSP>,
-			<&pd IMX_SC_R_DSP_RAM>;
-		mbox-names = "txdb0", "txdb1",
-			"rxdb0", "rxdb1";
-		mboxes = <&lsio_mu13 2 0>,
-			<&lsio_mu13 2 1>,
-			<&lsio_mu13 3 0>,
-			<&lsio_mu13 3 1>;
-		memory-region = <&dsp_reserved>;
-		status = "disabled";
-	};
-
-	adma_lpuart0: serial@5a060000 {
-		reg = <0x5a060000 0x1000>;
-		interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-parent = <&gic>;
-		clocks = <&uart0_lpcg IMX_LPCG_CLK_4>,
-			 <&uart0_lpcg IMX_LPCG_CLK_0>;
-		clock-names = "ipg", "baud";
-		power-domains = <&pd IMX_SC_R_UART_0>;
-		status = "disabled";
-	};
-
-	adma_lpuart1: serial@5a070000 {
-		reg = <0x5a070000 0x1000>;
-		interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-parent = <&gic>;
-		clocks = <&uart1_lpcg IMX_LPCG_CLK_4>,
-			 <&uart1_lpcg IMX_LPCG_CLK_0>;
-		clock-names = "ipg", "baud";
-		power-domains = <&pd IMX_SC_R_UART_1>;
-		status = "disabled";
-	};
-
-	adma_lpuart2: serial@5a080000 {
-		reg = <0x5a080000 0x1000>;
-		interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-parent = <&gic>;
-		clocks = <&uart2_lpcg IMX_LPCG_CLK_4>,
-			 <&uart2_lpcg IMX_LPCG_CLK_0>;
-		clock-names = "ipg", "baud";
-		power-domains = <&pd IMX_SC_R_UART_2>;
-		status = "disabled";
-	};
-
-	adma_lpuart3: serial@5a090000 {
-		reg = <0x5a090000 0x1000>;
-		interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-parent = <&gic>;
-		clocks = <&uart3_lpcg IMX_LPCG_CLK_4>,
-			 <&uart3_lpcg IMX_LPCG_CLK_0>;
-		clock-names = "ipg", "baud";
-		power-domains = <&pd IMX_SC_R_UART_3>;
-		status = "disabled";
-	};
-
-	uart0_lpcg: clock-controller@5a460000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x5a460000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&clk IMX_SC_R_UART_0 IMX_SC_PM_CLK_PER>,
-			 <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
-		clock-output-names = "uart0_lpcg_baud_clk",
-				     "uart0_lpcg_ipg_clk";
-		power-domains = <&pd IMX_SC_R_UART_0>;
-	};
-
-	uart1_lpcg: clock-controller@5a470000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x5a470000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&clk IMX_SC_R_UART_1 IMX_SC_PM_CLK_PER>,
-			 <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
-		clock-output-names = "uart1_lpcg_baud_clk",
-				     "uart1_lpcg_ipg_clk";
-		power-domains = <&pd IMX_SC_R_UART_1>;
-	};
-
-	uart2_lpcg: clock-controller@5a480000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x5a480000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&clk IMX_SC_R_UART_2 IMX_SC_PM_CLK_PER>,
-			 <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
-		clock-output-names = "uart2_lpcg_baud_clk",
-				     "uart2_lpcg_ipg_clk";
-		power-domains = <&pd IMX_SC_R_UART_2>;
-	};
-
-	uart3_lpcg: clock-controller@5a490000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x5a490000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&clk IMX_SC_R_UART_3 IMX_SC_PM_CLK_PER>,
-			 <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
-		clock-output-names = "uart3_lpcg_baud_clk",
-				     "uart3_lpcg_ipg_clk";
-		power-domains = <&pd IMX_SC_R_UART_3>;
-	};
-
-	adma_i2c0: i2c@5a800000 {
-		reg = <0x5a800000 0x4000>;
-		interrupts = <GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-parent = <&gic>;
-		clocks = <&i2c0_lpcg IMX_LPCG_CLK_0>;
-		clock-names = "per";
-		assigned-clocks = <&clk IMX_SC_R_I2C_0 IMX_SC_PM_CLK_PER>;
-		assigned-clock-rates = <24000000>;
-		power-domains = <&pd IMX_SC_R_I2C_0>;
-		status = "disabled";
-	};
-
-	adma_i2c1: i2c@5a810000 {
-		reg = <0x5a810000 0x4000>;
-		interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-parent = <&gic>;
-		clocks = <&i2c1_lpcg IMX_LPCG_CLK_0>;
-		clock-names = "per";
-		assigned-clocks = <&clk IMX_SC_R_I2C_1 IMX_SC_PM_CLK_PER>;
-		assigned-clock-rates = <24000000>;
-		power-domains = <&pd IMX_SC_R_I2C_1>;
-		status = "disabled";
-	};
-
-	adma_i2c2: i2c@5a820000 {
-		reg = <0x5a820000 0x4000>;
-		interrupts = <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-parent = <&gic>;
-		clocks = <&i2c2_lpcg IMX_LPCG_CLK_0>;
-		clock-names = "per";
-		assigned-clocks = <&clk IMX_SC_R_I2C_2 IMX_SC_PM_CLK_PER>;
-		assigned-clock-rates = <24000000>;
-		power-domains = <&pd IMX_SC_R_I2C_2>;
-		status = "disabled";
-	};
-
-	adma_i2c3: i2c@5a830000 {
-		reg = <0x5a830000 0x4000>;
-		interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-parent = <&gic>;
-		clocks = <&i2c3_lpcg IMX_LPCG_CLK_0>;
-		clock-names = "per";
-		assigned-clocks = <&clk IMX_SC_R_I2C_3 IMX_SC_PM_CLK_PER>;
-		assigned-clock-rates = <24000000>;
-		power-domains = <&pd IMX_SC_R_I2C_3>;
-		status = "disabled";
-	};
-
-	i2c0_lpcg: clock-controller@5ac00000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x5ac00000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&clk IMX_SC_R_I2C_0 IMX_SC_PM_CLK_PER>,
-			 <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
-		clock-output-names = "i2c0_lpcg_clk",
-				     "i2c0_lpcg_ipg_clk";
-		power-domains = <&pd IMX_SC_R_I2C_0>;
-	};
-
-	i2c1_lpcg: clock-controller@5ac10000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x5ac10000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&clk IMX_SC_R_I2C_1 IMX_SC_PM_CLK_PER>,
-			 <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
-		clock-output-names = "i2c1_lpcg_clk",
-				     "i2c1_lpcg_ipg_clk";
-		power-domains = <&pd IMX_SC_R_I2C_1>;
-	};
-
-	i2c2_lpcg: clock-controller@5ac20000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x5ac20000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&clk IMX_SC_R_I2C_2 IMX_SC_PM_CLK_PER>,
-			 <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
-		clock-output-names = "i2c2_lpcg_clk",
-				     "i2c2_lpcg_ipg_clk";
-		power-domains = <&pd IMX_SC_R_I2C_2>;
-	};
-
-	i2c3_lpcg: clock-controller@5ac30000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x5ac30000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&clk IMX_SC_R_I2C_3 IMX_SC_PM_CLK_PER>,
-			 <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
-		clock-output-names = "i2c3_lpcg_clk",
-				     "i2c3_lpcg_ipg_clk";
-		power-domains = <&pd IMX_SC_R_I2C_3>;
-	};
-};
+#include "imx8-ss-audio.dtsi"
+#include "imx8-ss-dma.dtsi"
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
new file mode 100644
index 000000000000..6c8d75ef9250
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
@@ -0,0 +1,68 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2019 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+#include <dt-bindings/clock/imx8-lpcg.h>
+#include <dt-bindings/firmware/imx/rsrc.h>
+
+audio_subsys: bus@59000000 {
+	compatible = "simple-bus";
+	#address-cells = <1>;
+	#size-cells = <1>;
+	ranges = <0x59000000 0x0 0x59000000 0x1000000>;
+
+	audio_ipg_clk: clock-audio-ipg {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <120000000>;
+		clock-output-names = "audio_ipg_clk";
+	};
+
+	dsp_lpcg: clock-controller@59580000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x59580000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&audio_ipg_clk>,
+			 <&audio_ipg_clk>,
+			 <&audio_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
+				<IMX_LPCG_CLK_7>;
+		clock-output-names = "dsp_lpcg_adb_clk",
+				     "dsp_lpcg_ipg_clk",
+				     "dsp_lpcg_core_clk";
+		power-domains = <&pd IMX_SC_R_DSP>;
+	};
+
+	dsp_ram_lpcg: clock-controller@59590000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x59590000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&audio_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_4>;
+		clock-output-names = "dsp_ram_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_DSP_RAM>;
+	};
+
+	dsp: dsp@596e8000 {
+		compatible = "fsl,imx8qxp-dsp";
+		reg = <0x596e8000 0x88000>;
+		clocks = <&dsp_lpcg IMX_LPCG_CLK_5>,
+			 <&dsp_ram_lpcg IMX_LPCG_CLK_4>,
+			 <&dsp_lpcg IMX_LPCG_CLK_7>;
+		clock-names = "ipg", "ocram", "core";
+		power-domains = <&pd IMX_SC_R_MU_13A>,
+			<&pd IMX_SC_R_MU_13B>,
+			<&pd IMX_SC_R_DSP>,
+			<&pd IMX_SC_R_DSP_RAM>;
+		mbox-names = "txdb0", "txdb1",
+			"rxdb0", "rxdb1";
+		mboxes = <&lsio_mu13 2 0>,
+			<&lsio_mu13 2 1>,
+			<&lsio_mu13 3 0>,
+			<&lsio_mu13 3 1>;
+		memory-region = <&dsp_reserved>;
+		status = "disabled";
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
new file mode 100644
index 000000000000..70c15e4a4da1
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
@@ -0,0 +1,210 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2019 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+#include <dt-bindings/clock/imx8-lpcg.h>
+#include <dt-bindings/firmware/imx/rsrc.h>
+
+dma_subsys: bus@5a000000 {
+	compatible = "simple-bus";
+	#address-cells = <1>;
+	#size-cells = <1>;
+	ranges = <0x5a000000 0x0 0x5a000000 0x1000000>;
+
+	dma_ipg_clk: clock-dma-ipg {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <120000000>;
+		clock-output-names = "dma_ipg_clk";
+	};
+
+	lpuart0: serial@5a060000 {
+		reg = <0x5a060000 0x1000>;
+		interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&uart0_lpcg IMX_LPCG_CLK_4>,
+			 <&uart0_lpcg IMX_LPCG_CLK_0>;
+		clock-names = "ipg", "baud";
+		power-domains = <&pd IMX_SC_R_UART_0>;
+		status = "disabled";
+	};
+
+	lpuart1: serial@5a070000 {
+		reg = <0x5a070000 0x1000>;
+		interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&uart1_lpcg IMX_LPCG_CLK_4>,
+			 <&uart1_lpcg IMX_LPCG_CLK_0>;
+		clock-names = "ipg", "baud";
+		power-domains = <&pd IMX_SC_R_UART_1>;
+		status = "disabled";
+	};
+
+	lpuart2: serial@5a080000 {
+		reg = <0x5a080000 0x1000>;
+		interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&uart2_lpcg IMX_LPCG_CLK_4>,
+			 <&uart2_lpcg IMX_LPCG_CLK_0>;
+		clock-names = "ipg", "baud";
+		power-domains = <&pd IMX_SC_R_UART_2>;
+		status = "disabled";
+	};
+
+	lpuart3: serial@5a090000 {
+		reg = <0x5a090000 0x1000>;
+		interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&uart3_lpcg IMX_LPCG_CLK_4>,
+			 <&uart3_lpcg IMX_LPCG_CLK_0>;
+		clock-names = "ipg", "baud";
+		power-domains = <&pd IMX_SC_R_UART_3>;
+		status = "disabled";
+	};
+
+	uart0_lpcg: clock-controller@5a460000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5a460000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_UART_0 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "uart0_lpcg_baud_clk",
+				     "uart0_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_UART_0>;
+	};
+
+	uart1_lpcg: clock-controller@5a470000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5a470000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_UART_1 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "uart1_lpcg_baud_clk",
+				     "uart1_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_UART_1>;
+	};
+
+	uart2_lpcg: clock-controller@5a480000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5a480000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_UART_2 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "uart2_lpcg_baud_clk",
+				     "uart2_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_UART_2>;
+	};
+
+	uart3_lpcg: clock-controller@5a490000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5a490000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_UART_3 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "uart3_lpcg_baud_clk",
+				     "uart3_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_UART_3>;
+	};
+
+	i2c0: i2c@5a800000 {
+		reg = <0x5a800000 0x4000>;
+		interrupts = <GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&i2c0_lpcg IMX_LPCG_CLK_0>;
+		clock-names = "per";
+		assigned-clocks = <&clk IMX_SC_R_I2C_0 IMX_SC_PM_CLK_PER>;
+		assigned-clock-rates = <24000000>;
+		power-domains = <&pd IMX_SC_R_I2C_0>;
+		status = "disabled";
+	};
+
+	i2c1: i2c@5a810000 {
+		reg = <0x5a810000 0x4000>;
+		interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&i2c1_lpcg IMX_LPCG_CLK_0>;
+		clock-names = "per";
+		assigned-clocks = <&clk IMX_SC_R_I2C_1 IMX_SC_PM_CLK_PER>;
+		assigned-clock-rates = <24000000>;
+		power-domains = <&pd IMX_SC_R_I2C_1>;
+		status = "disabled";
+	};
+
+	i2c2: i2c@5a820000 {
+		reg = <0x5a820000 0x4000>;
+		interrupts = <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&i2c2_lpcg IMX_LPCG_CLK_0>;
+		clock-names = "per";
+		assigned-clocks = <&clk IMX_SC_R_I2C_2 IMX_SC_PM_CLK_PER>;
+		assigned-clock-rates = <24000000>;
+		power-domains = <&pd IMX_SC_R_I2C_2>;
+		status = "disabled";
+	};
+
+	i2c3: i2c@5a830000 {
+		reg = <0x5a830000 0x4000>;
+		interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&i2c3_lpcg IMX_LPCG_CLK_0>;
+		clock-names = "per";
+		assigned-clocks = <&clk IMX_SC_R_I2C_3 IMX_SC_PM_CLK_PER>;
+		assigned-clock-rates = <24000000>;
+		power-domains = <&pd IMX_SC_R_I2C_3>;
+		status = "disabled";
+	};
+
+	i2c0_lpcg: clock-controller@5ac00000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5ac00000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_I2C_0 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "i2c0_lpcg_clk",
+				     "i2c0_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_I2C_0>;
+	};
+
+	i2c1_lpcg: clock-controller@5ac10000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5ac10000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_I2C_1 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "i2c1_lpcg_clk",
+				     "i2c1_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_I2C_1>;
+	};
+
+	i2c2_lpcg: clock-controller@5ac20000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5ac20000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_I2C_2 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "i2c2_lpcg_clk",
+				     "i2c2_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_I2C_2>;
+	};
+
+	i2c3_lpcg: clock-controller@5ac30000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5ac30000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_I2C_3 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "i2c3_lpcg_clk",
+				     "i2c3_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_I2C_3>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts b/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
index b5352706e3f0..47bb68823b24 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
@@ -13,13 +13,13 @@
 	compatible = "einfochips,imx8qxp-ai_ml", "fsl,imx8qxp";
 
 	aliases {
-		serial1 = &adma_lpuart1;
-		serial2 = &adma_lpuart2;
-		serial3 = &adma_lpuart3;
+		serial1 = &lpuart1;
+		serial2 = &lpuart2;
+		serial3 = &lpuart3;
 	};
 
 	chosen {
-		stdout-path = &adma_lpuart2;
+		stdout-path = &lpuart2;
 	};
 
 	memory@80000000 {
@@ -82,7 +82,7 @@
 };
 
 /* BT */
-&adma_lpuart0 {
+&lpuart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpuart0>;
 	uart-has-rtscts;
@@ -90,21 +90,21 @@
 };
 
 /* LS-UART0 */
-&adma_lpuart1 {
+&lpuart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpuart1>;
 	status = "okay";
 };
 
 /* Debug */
-&adma_lpuart2 {
+&lpuart2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpuart2>;
 	status = "okay";
 };
 
 /* PCI-E UART */
-&adma_lpuart3 {
+&lpuart3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpuart3>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-colibri-eval-v3.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp-colibri-eval-v3.dtsi
index c7336f387605..144fc9e82da7 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-colibri-eval-v3.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-colibri-eval-v3.dtsi
@@ -26,7 +26,7 @@
 	};
 };
 
-&adma_i2c1 {
+&i2c1 {
 	status = "okay";
 
 	/* M41T0M6 real time clock on carrier board */
@@ -37,17 +37,17 @@
 };
 
 /* Colibri UART_B */
-&adma_lpuart0 {
+&lpuart0 {
 	status= "okay";
 };
 
 /* Colibri UART_C */
-&adma_lpuart2 {
+&lpuart2 {
 	status= "okay";
 };
 
 /* Colibri UART_A */
-&adma_lpuart3 {
+&lpuart3 {
 	status= "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-colibri.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp-colibri.dtsi
index 75f17a29f81e..f83d66e30806 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-colibri.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-colibri.dtsi
@@ -10,7 +10,7 @@
 	compatible = "toradex,colibri-imx8x", "fsl,imx8qxp";
 
 	chosen {
-		stdout-path = &adma_lpuart3;
+		stdout-path = &lpuart3;
 	};
 
 	reg_module_3v3: regulator-module-3v3 {
@@ -22,7 +22,7 @@
 };
 
 /* On-module I2C */
-&adma_i2c0 {
+&i2c0 {
 	#address-cells = <1>;
 	#size-cells = <0>;
 	clock-frequency = <100000>;
@@ -49,7 +49,7 @@
 };
 
 /* Colibri I2C */
-&adma_i2c1 {
+&i2c1 {
 	#address-cells = <1>;
 	#size-cells = <0>;
 	clock-frequency = <100000>;
@@ -58,19 +58,19 @@
 };
 
 /* Colibri UART_B */
-&adma_lpuart0 {
+&lpuart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpuart0>;
 };
 
 /* Colibri UART_C */
-&adma_lpuart2 {
+&lpuart2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpuart2>;
 };
 
 /* Colibri UART_A */
-&adma_lpuart3 {
+&lpuart3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpuart3>, <&pinctrl_lpuart3_ctrl>;
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index bb374ea4f3bf..76f470c7dd97 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -12,7 +12,7 @@
 	compatible = "fsl,imx8qxp-mek", "fsl,imx8qxp";
 
 	chosen {
-		stdout-path = &adma_lpuart0;
+		stdout-path = &lpuart0;
 	};
 
 	memory@80000000 {
@@ -30,7 +30,7 @@
 	};
 };
 
-&adma_lpuart0 {
+&lpuart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpuart0>;
 	status = "okay";
@@ -60,7 +60,7 @@
 	};
 };
 
-&adma_i2c1 {
+&i2c1 {
 	#address-cells = <1>;
 	#size-cells = <0>;
 	clock-frequency = <100000>;
@@ -235,7 +235,7 @@
 	};
 };
 
-&adma_dsp {
+&dsp {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
index c80303d5cc78..f0264f04f986 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
@@ -4,34 +4,34 @@
  *	Dong Aisheng <aisheng.dong@nxp.com>
  */
 
-&adma_lpuart0 {
+&lpuart0 {
 	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
 };
 
-&adma_lpuart1 {
+&lpuart1 {
 	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
 };
 
-&adma_lpuart2 {
+&lpuart2 {
 	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
 };
 
-&adma_lpuart3 {
+&lpuart3 {
 	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
 };
 
-&adma_i2c0 {
+&i2c0 {
 	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
 };
 
-&adma_i2c1 {
+&i2c1 {
 	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
 };
 
-&adma_i2c2 {
+&i2c2 {
 	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
 };
 
-&adma_i2c3 {
+&i2c3 {
 	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 4281dd68ded2..ff87c677274b 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -31,10 +31,10 @@
 		mmc1 = &usdhc2;
 		mmc2 = &usdhc3;
 		mu1 = &lsio_mu1;
-		serial0 = &adma_lpuart0;
-		serial1 = &adma_lpuart1;
-		serial2 = &adma_lpuart2;
-		serial3 = &adma_lpuart3;
+		serial0 = &lpuart0;
+		serial1 = &lpuart1;
+		serial2 = &lpuart2;
+		serial3 = &lpuart3;
 	};
 
 	cpus {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
