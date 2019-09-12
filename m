Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A2FB1239
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 17:34:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rRiQnqJ/gM/ahrFROQCgVZIYdrBXrfqHjY4MOsb4Bck=; b=tD2YM7coFV3ABrQiIxJdD2FZr8
	exrFQJr4uNPmXxfrfEgIIOEEhIrwytgRVzjwryzPz332miknMdqzbykZxzj3xOYVe7x849OQ50ldJ
	TMgEq5vRfppD86GpTkyXfBXJdh2I8q8l/kZXUHtimXJTue3hrQhW3XhXZEz13M59CDH+tYJsjoqWz
	NvonSX7soMLgjfkKTfwmgXk99MJle3Ywz5T/gr+hoIoz5bwptiSk9U+NEYx5zb0kb7KEPAKxny6jW
	GttDc2YfvIRUlBIJfB/oWl1SVQ4Hr1pBP9hXFBErTvojL0rfBHC/dNSZxrUxaXoVNs1duGZhaKFAy
	yXmLWTig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8R6l-0007I5-BV; Thu, 12 Sep 2019 15:34:07 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8R4y-00064e-P0
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 15:32:20 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 703D82006D6;
 Thu, 12 Sep 2019 17:32:13 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 27467200146;
 Thu, 12 Sep 2019 17:32:07 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A7402402CF;
 Thu, 12 Sep 2019 23:31:59 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 03/15] arm64: dts: imx8qxp: orginize dts in subsystems
Date: Thu, 12 Sep 2019 23:30:40 +0800
Message-Id: <1568302252-28066-4-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
References: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_083217_145824_8318B4B0 
X-CRM114-Status: GOOD (  12.16  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, devicetree@vger.kernel.org,
 dongas86@gmail.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oliver.graute@gmail.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com,
 Mark Rutland <mark.rutland@arm.com>, shawnguo@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MX8 SoC is comprised of a few HW subsystems while some of them can be
reused in the different SoCs. So let's re-orginize them into subsystems
in device tree as well for the possible reuse of the common part.

Note, as there's still no devices of hsio subsys, so removed it
first instead of creating a subsys headfile with no devices.
They will be added back when new devices added.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Tested-by: Oliver Graute <oliver.graute@kococonnector.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v1->v3:
 * no changes except rebase
---
 arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi    | 130 +++++++
 arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi    |  95 +++++
 arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi     |  19 +
 arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi    | 138 +++++++
 arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi |  41 +++
 arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi |  25 ++
 arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi |  65 ++++
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi         | 402 +--------------------
 8 files changed, 523 insertions(+), 392 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
new file mode 100644
index 0000000..28b8fc9
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
@@ -0,0 +1,130 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2019 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+adma_subsys: bus@59000000 {
+	compatible = "simple-bus";
+	#address-cells = <1>;
+	#size-cells = <1>;
+	ranges = <0x59000000 0x0 0x59000000 0x2000000>;
+
+	adma_lpcg: clock-controller@59000000 {
+		reg = <0x59000000 0x2000000>;
+		#clock-cells = <1>;
+	};
+
+	adma_dsp: dsp@596e8000 {
+		compatible = "fsl,imx8qxp-dsp";
+		reg = <0x596e8000 0x88000>;
+		clocks = <&adma_lpcg IMX_ADMA_LPCG_DSP_IPG_CLK>,
+			<&adma_lpcg IMX_ADMA_LPCG_OCRAM_IPG_CLK>,
+			<&adma_lpcg IMX_ADMA_LPCG_DSP_CORE_CLK>;
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
+
+	adma_lpuart0: serial@5a060000 {
+		reg = <0x5a060000 0x1000>;
+		interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&adma_lpcg IMX_ADMA_LPCG_UART0_IPG_CLK>,
+			 <&adma_lpcg IMX_ADMA_LPCG_UART0_BAUD_CLK>;
+		clock-names = "ipg", "baud";
+		power-domains = <&pd IMX_SC_R_UART_0>;
+		status = "disabled";
+	};
+
+	adma_lpuart1: serial@5a070000 {
+		reg = <0x5a070000 0x1000>;
+		interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&adma_lpcg IMX_ADMA_LPCG_UART1_IPG_CLK>,
+			 <&adma_lpcg IMX_ADMA_LPCG_UART1_BAUD_CLK>;
+		clock-names = "ipg", "baud";
+		power-domains = <&pd IMX_SC_R_UART_1>;
+		status = "disabled";
+	};
+
+	adma_lpuart2: serial@5a080000 {
+		reg = <0x5a080000 0x1000>;
+		interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&adma_lpcg IMX_ADMA_LPCG_UART2_IPG_CLK>,
+			 <&adma_lpcg IMX_ADMA_LPCG_UART2_BAUD_CLK>;
+		clock-names = "ipg", "baud";
+		power-domains = <&pd IMX_SC_R_UART_2>;
+		status = "disabled";
+	};
+
+	adma_lpuart3: serial@5a090000 {
+		reg = <0x5a090000 0x1000>;
+		interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&adma_lpcg IMX_ADMA_LPCG_UART3_IPG_CLK>,
+			 <&adma_lpcg IMX_ADMA_LPCG_UART3_BAUD_CLK>;
+		clock-names = "ipg", "baud";
+		power-domains = <&pd IMX_SC_R_UART_3>;
+		status = "disabled";
+	};
+
+	adma_i2c0: i2c@5a800000 {
+		reg = <0x5a800000 0x4000>;
+		interrupts = <GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C0_CLK>;
+		clock-names = "per";
+		assigned-clocks = <&clk IMX_ADMA_I2C0_CLK>;
+		assigned-clock-rates = <24000000>;
+		power-domains = <&pd IMX_SC_R_I2C_0>;
+		status = "disabled";
+	};
+
+	adma_i2c1: i2c@5a810000 {
+		reg = <0x5a810000 0x4000>;
+		interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C1_CLK>;
+		clock-names = "per";
+		assigned-clocks = <&clk IMX_ADMA_I2C1_CLK>;
+		assigned-clock-rates = <24000000>;
+		power-domains = <&pd IMX_SC_R_I2C_1>;
+		status = "disabled";
+	};
+
+	adma_i2c2: i2c@5a820000 {
+		reg = <0x5a820000 0x4000>;
+		interrupts = <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C2_CLK>;
+		clock-names = "per";
+		assigned-clocks = <&clk IMX_ADMA_I2C2_CLK>;
+		assigned-clock-rates = <24000000>;
+		power-domains = <&pd IMX_SC_R_I2C_2>;
+		status = "disabled";
+	};
+
+	adma_i2c3: i2c@5a830000 {
+		reg = <0x5a830000 0x4000>;
+		interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C3_CLK>;
+		clock-names = "per";
+		assigned-clocks = <&clk IMX_ADMA_I2C3_CLK>;
+		assigned-clock-rates = <24000000>;
+		power-domains = <&pd IMX_SC_R_I2C_3>;
+		status = "disabled";
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
new file mode 100644
index 0000000..e5f6041
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
@@ -0,0 +1,95 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2019 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+conn_subsys: bus@5b000000 {
+	compatible = "simple-bus";
+	#address-cells = <1>;
+	#size-cells = <1>;
+	ranges = <0x5b000000 0x0 0x5b000000 0x1000000>;
+
+	conn_lpcg: clock-controller@5b200000 {
+		reg = <0x5b200000 0xb0000>;
+		#clock-cells = <1>;
+	};
+
+	usdhc1: mmc@5b010000 {
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
+		reg = <0x5b010000 0x10000>;
+		clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC0_IPG_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_SDHC0_PER_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_SDHC0_HCLK>;
+		clock-names = "ipg", "per", "ahb";
+		assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
+		assigned-clock-rates = <200000000>;
+		power-domains = <&pd IMX_SC_R_SDHC_0>;
+		status = "disabled";
+	};
+
+	usdhc2: mmc@5b020000 {
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_SPI 233 IRQ_TYPE_LEVEL_HIGH>;
+		reg = <0x5b020000 0x10000>;
+		clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC1_IPG_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_SDHC1_PER_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_SDHC1_HCLK>;
+		clock-names = "ipg", "per", "ahb";
+		assigned-clocks = <&clk IMX_CONN_SDHC1_CLK>;
+		assigned-clock-rates = <200000000>;
+		power-domains = <&pd IMX_SC_R_SDHC_1>;
+		fsl,tuning-start-tap = <20>;
+		fsl,tuning-step= <2>;
+		status = "disabled";
+	};
+
+	usdhc3: mmc@5b030000 {
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_SPI 234 IRQ_TYPE_LEVEL_HIGH>;
+		reg = <0x5b030000 0x10000>;
+		clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC2_IPG_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_SDHC2_PER_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_SDHC2_HCLK>;
+		clock-names = "ipg", "per", "ahb";
+		assigned-clocks = <&clk IMX_CONN_SDHC2_CLK>;
+		assigned-clock-rates = <200000000>;
+		power-domains = <&pd IMX_SC_R_SDHC_2>;
+		status = "disabled";
+	};
+
+	fec1: ethernet@5b040000 {
+		reg = <0x5b040000 0x10000>;
+		interrupts = <GIC_SPI 258 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 257 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&conn_lpcg IMX_CONN_LPCG_ENET0_IPG_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_ENET0_AHB_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_ENET0_TX_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_ENET0_ROOT_CLK>;
+		clock-names = "ipg", "ahb", "enet_clk_ref", "ptp";
+		fsl,num-tx-queues=<3>;
+		fsl,num-rx-queues=<3>;
+		power-domains = <&pd IMX_SC_R_ENET_0>;
+		status = "disabled";
+	};
+
+	fec2: ethernet@5b050000 {
+		reg = <0x5b050000 0x10000>;
+		interrupts = <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&conn_lpcg IMX_CONN_LPCG_ENET1_IPG_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_ENET1_AHB_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_ENET1_TX_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_ENET1_ROOT_CLK>;
+		clock-names = "ipg", "ahb", "enet_clk_ref", "ptp";
+		fsl,num-tx-queues=<3>;
+		fsl,num-rx-queues=<3>;
+		power-domains = <&pd IMX_SC_R_ENET_1>;
+		status = "disabled";
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi
new file mode 100644
index 0000000..5ad2a31
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2019 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+ddr_subsys: bus@5c000000 {
+	compatible = "simple-bus";
+	#address-cells = <1>;
+	#size-cells = <1>;
+	ranges = <0x5c000000 0x0 0x5c000000 0x1000000>;
+
+	ddr-pmu@5c020000 {
+	compatible = "fsl,imx8-ddr-pmu";
+		reg = <0x5c020000 0x10000>;
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
new file mode 100644
index 0000000..00eaadb
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
@@ -0,0 +1,138 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2019 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+lsio_subsys: bus@5d000000 {
+	compatible = "simple-bus";
+	#address-cells = <1>;
+	#size-cells = <1>;
+	ranges = <0x5d000000 0x0 0x5d000000 0x1000000>;
+
+	lsio_gpio0: gpio@5d080000 {
+		reg = <0x5d080000 0x10000>;
+		interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		power-domains = <&pd IMX_SC_R_GPIO_0>;
+	};
+
+	lsio_gpio1: gpio@5d090000 {
+		reg = <0x5d090000 0x10000>;
+		interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		power-domains = <&pd IMX_SC_R_GPIO_1>;
+	};
+
+	lsio_gpio2: gpio@5d0a0000 {
+		reg = <0x5d0a0000 0x10000>;
+		interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		power-domains = <&pd IMX_SC_R_GPIO_2>;
+	};
+
+	lsio_gpio3: gpio@5d0b0000 {
+		reg = <0x5d0b0000 0x10000>;
+		interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		power-domains = <&pd IMX_SC_R_GPIO_3>;
+	};
+
+	lsio_gpio4: gpio@5d0c0000 {
+		reg = <0x5d0c0000 0x10000>;
+		interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		power-domains = <&pd IMX_SC_R_GPIO_4>;
+	};
+
+	lsio_gpio5: gpio@5d0d0000 {
+		reg = <0x5d0d0000 0x10000>;
+		interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		power-domains = <&pd IMX_SC_R_GPIO_5>;
+	};
+
+	lsio_gpio6: gpio@5d0e0000 {
+		reg = <0x5d0e0000 0x10000>;
+		interrupts = <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		power-domains = <&pd IMX_SC_R_GPIO_6>;
+	};
+
+	lsio_gpio7: gpio@5d0f0000 {
+		reg = <0x5d0f0000 0x10000>;
+		interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		power-domains = <&pd IMX_SC_R_GPIO_7>;
+	};
+
+	lsio_mu0: mailbox@5d1b0000 {
+		reg = <0x5d1b0000 0x10000>;
+		interrupts = <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>;
+		#mbox-cells = <2>;
+		status = "disabled";
+	};
+
+	lsio_mu1: mailbox@5d1c0000 {
+		reg = <0x5d1c0000 0x10000>;
+		interrupts = <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH>;
+		#mbox-cells = <2>;
+	};
+
+	lsio_mu2: mailbox@5d1d0000 {
+		reg = <0x5d1d0000 0x10000>;
+		interrupts = <GIC_SPI 178 IRQ_TYPE_LEVEL_HIGH>;
+		#mbox-cells = <2>;
+		status = "disabled";
+	};
+
+	lsio_mu3: mailbox@5d1e0000 {
+		reg = <0x5d1e0000 0x10000>;
+		interrupts = <GIC_SPI 179 IRQ_TYPE_LEVEL_HIGH>;
+		#mbox-cells = <2>;
+		status = "disabled";
+	};
+
+	lsio_mu4: mailbox@5d1f0000 {
+		reg = <0x5d1f0000 0x10000>;
+		interrupts = <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>;
+		#mbox-cells = <2>;
+		status = "disabled";
+	};
+
+	lsio_mu13: mailbox@5d280000 {
+		reg = <0x5d280000 0x10000>;
+		interrupts = <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>;
+		#mbox-cells = <2>;
+		power-domains = <&pd IMX_SC_R_MU_13A>;
+	};
+
+	lsio_lpcg: clock-controller@5d400000 {
+		reg = <0x5d400000 0x400000>;
+		#clock-cells = <1>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
new file mode 100644
index 0000000..5809324
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
@@ -0,0 +1,41 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2019 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+&adma_lpcg {
+	compatible = "fsl,imx8qxp-lpcg-adma";
+};
+
+&adma_lpuart0 {
+	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
+};
+
+&adma_lpuart1 {
+	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
+};
+
+&adma_lpuart2 {
+	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
+};
+
+&adma_lpuart3 {
+	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
+};
+
+&adma_i2c0 {
+	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
+};
+
+&adma_i2c1 {
+	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
+};
+
+&adma_i2c2 {
+	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
+};
+
+&adma_i2c3 {
+	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi
new file mode 100644
index 0000000..ea0cd51
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2019 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+&conn_lpcg {
+	compatible = "fsl,imx8qxp-lpcg-conn";
+};
+
+&usdhc1 {
+	compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
+};
+
+&usdhc2 {
+	compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
+};
+
+&fec1 {
+	compatible = "fsl,imx8qxp-fec", "fsl,imx6sx-fec";
+};
+
+&fec2 {
+	compatible = "fsl,imx8qxp-fec", "fsl,imx6sx-fec";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi
new file mode 100644
index 0000000..b02ae5d
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi
@@ -0,0 +1,65 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2019 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+&lsio_gpio0 {
+	compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio1 {
+	compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio2 {
+	compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio3 {
+	compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio4 {
+	compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio5 {
+	compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio6 {
+	compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio7 {
+	compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_mu0 {
+	compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+};
+
+&lsio_mu1 {
+	compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+};
+
+&lsio_mu2 {
+	compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+};
+
+&lsio_mu3 {
+	compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+};
+
+&lsio_mu4 {
+	compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+};
+
+&lsio_mu13 {
+	compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+};
+
+&lsio_lpcg {
+	compatible = "fsl,imx8qxp-lpcg-lsio";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index ced62ee..e9f9466 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright (C) 2016 Freescale Semiconductor, Inc.
- * Copyright 2017-2018 NXP
+ * Copyright 2017-2019 NXP
  *	Dong Aisheng <aisheng.dong@nxp.com>
  */
 
@@ -206,395 +206,13 @@
 		clock-output-names = "xtal_24MHz";
 	};
 
-	adma_subsys: bus@59000000 {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0x59000000 0x0 0x59000000 0x2000000>;
-
-		adma_lpcg: clock-controller@59000000 {
-			compatible = "fsl,imx8qxp-lpcg-adma";
-			reg = <0x59000000 0x2000000>;
-			#clock-cells = <1>;
-		};
-
-		adma_dsp: dsp@596e8000 {
-			compatible = "fsl,imx8qxp-dsp";
-			reg = <0x596e8000 0x88000>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_DSP_IPG_CLK>,
-				<&adma_lpcg IMX_ADMA_LPCG_OCRAM_IPG_CLK>,
-				<&adma_lpcg IMX_ADMA_LPCG_DSP_CORE_CLK>;
-			clock-names = "ipg", "ocram", "core";
-			power-domains = <&pd IMX_SC_R_MU_13A>,
-				<&pd IMX_SC_R_MU_13B>,
-				<&pd IMX_SC_R_DSP>,
-				<&pd IMX_SC_R_DSP_RAM>;
-			mbox-names = "txdb0", "txdb1",
-				"rxdb0", "rxdb1";
-			mboxes = <&lsio_mu13 2 0>,
-				<&lsio_mu13 2 1>,
-				<&lsio_mu13 3 0>,
-				<&lsio_mu13 3 1>;
-			memory-region = <&dsp_reserved>;
-			status = "disabled";
-		};
-
-		adma_lpuart0: serial@5a060000 {
-			compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
-			reg = <0x5a060000 0x1000>;
-			interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-parent = <&gic>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART0_IPG_CLK>,
-				 <&adma_lpcg IMX_ADMA_LPCG_UART0_BAUD_CLK>;
-			clock-names = "ipg", "baud";
-			power-domains = <&pd IMX_SC_R_UART_0>;
-			status = "disabled";
-		};
-
-		adma_lpuart1: serial@5a070000 {
-			compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
-			reg = <0x5a070000 0x1000>;
-			interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-parent = <&gic>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART1_IPG_CLK>,
-				 <&adma_lpcg IMX_ADMA_LPCG_UART1_BAUD_CLK>;
-			clock-names = "ipg", "baud";
-			power-domains = <&pd IMX_SC_R_UART_1>;
-			status = "disabled";
-		};
-
-		adma_lpuart2: serial@5a080000 {
-			compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
-			reg = <0x5a080000 0x1000>;
-			interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-parent = <&gic>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART2_IPG_CLK>,
-				 <&adma_lpcg IMX_ADMA_LPCG_UART2_BAUD_CLK>;
-			clock-names = "ipg", "baud";
-			power-domains = <&pd IMX_SC_R_UART_2>;
-			status = "disabled";
-		};
-
-		adma_lpuart3: serial@5a090000 {
-			compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
-			reg = <0x5a090000 0x1000>;
-			interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-parent = <&gic>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART3_IPG_CLK>,
-				 <&adma_lpcg IMX_ADMA_LPCG_UART3_BAUD_CLK>;
-			clock-names = "ipg", "baud";
-			power-domains = <&pd IMX_SC_R_UART_3>;
-			status = "disabled";
-		};
-
-		adma_i2c0: i2c@5a800000 {
-			compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
-			reg = <0x5a800000 0x4000>;
-			interrupts = <GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-parent = <&gic>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C0_CLK>;
-			clock-names = "per";
-			assigned-clocks = <&clk IMX_ADMA_I2C0_CLK>;
-			assigned-clock-rates = <24000000>;
-			power-domains = <&pd IMX_SC_R_I2C_0>;
-			status = "disabled";
-		};
-
-		adma_i2c1: i2c@5a810000 {
-			compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
-			reg = <0x5a810000 0x4000>;
-			interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-parent = <&gic>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C1_CLK>;
-			clock-names = "per";
-			assigned-clocks = <&clk IMX_ADMA_I2C1_CLK>;
-			assigned-clock-rates = <24000000>;
-			power-domains = <&pd IMX_SC_R_I2C_1>;
-			status = "disabled";
-		};
-
-		adma_i2c2: i2c@5a820000 {
-			compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
-			reg = <0x5a820000 0x4000>;
-			interrupts = <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-parent = <&gic>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C2_CLK>;
-			clock-names = "per";
-			assigned-clocks = <&clk IMX_ADMA_I2C2_CLK>;
-			assigned-clock-rates = <24000000>;
-			power-domains = <&pd IMX_SC_R_I2C_2>;
-			status = "disabled";
-		};
-
-		adma_i2c3: i2c@5a830000 {
-			compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
-			reg = <0x5a830000 0x4000>;
-			interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-parent = <&gic>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C3_CLK>;
-			clock-names = "per";
-			assigned-clocks = <&clk IMX_ADMA_I2C3_CLK>;
-			assigned-clock-rates = <24000000>;
-			power-domains = <&pd IMX_SC_R_I2C_3>;
-			status = "disabled";
-		};
-	};
-
-	conn_subsys: bus@5b000000 {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0x5b000000 0x0 0x5b000000 0x1000000>;
-
-		conn_lpcg: clock-controller@5b200000 {
-			compatible = "fsl,imx8qxp-lpcg-conn";
-			reg = <0x5b200000 0xb0000>;
-			#clock-cells = <1>;
-		};
-
-		usdhc1: mmc@5b010000 {
-			compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
-			interrupt-parent = <&gic>;
-			interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
-			reg = <0x5b010000 0x10000>;
-			clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC0_IPG_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_SDHC0_PER_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_SDHC0_HCLK>;
-			clock-names = "ipg", "per", "ahb";
-			assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
-			assigned-clock-rates = <200000000>;
-			power-domains = <&pd IMX_SC_R_SDHC_0>;
-			status = "disabled";
-		};
-
-		usdhc2: mmc@5b020000 {
-			compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
-			interrupt-parent = <&gic>;
-			interrupts = <GIC_SPI 233 IRQ_TYPE_LEVEL_HIGH>;
-			reg = <0x5b020000 0x10000>;
-			clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC1_IPG_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_SDHC1_PER_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_SDHC1_HCLK>;
-			clock-names = "ipg", "per", "ahb";
-			assigned-clocks = <&clk IMX_CONN_SDHC1_CLK>;
-			assigned-clock-rates = <200000000>;
-			power-domains = <&pd IMX_SC_R_SDHC_1>;
-			fsl,tuning-start-tap = <20>;
-			fsl,tuning-step= <2>;
-			status = "disabled";
-		};
-
-		usdhc3: mmc@5b030000 {
-			compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
-			interrupt-parent = <&gic>;
-			interrupts = <GIC_SPI 234 IRQ_TYPE_LEVEL_HIGH>;
-			reg = <0x5b030000 0x10000>;
-			clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC2_IPG_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_SDHC2_PER_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_SDHC2_HCLK>;
-			clock-names = "ipg", "per", "ahb";
-			assigned-clocks = <&clk IMX_CONN_SDHC2_CLK>;
-			assigned-clock-rates = <200000000>;
-			power-domains = <&pd IMX_SC_R_SDHC_2>;
-			status = "disabled";
-		};
-
-		fec1: ethernet@5b040000 {
-			compatible = "fsl,imx8qxp-fec", "fsl,imx6sx-fec";
-			reg = <0x5b040000 0x10000>;
-			interrupts = <GIC_SPI 258 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 257 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&conn_lpcg IMX_CONN_LPCG_ENET0_IPG_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_ENET0_AHB_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_ENET0_TX_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_ENET0_ROOT_CLK>;
-			clock-names = "ipg", "ahb", "enet_clk_ref", "ptp";
-			fsl,num-tx-queues=<3>;
-			fsl,num-rx-queues=<3>;
-			power-domains = <&pd IMX_SC_R_ENET_0>;
-			status = "disabled";
-		};
-
-		fec2: ethernet@5b050000 {
-			compatible = "fsl,imx8qxp-fec", "fsl,imx6sx-fec";
-			reg = <0x5b050000 0x10000>;
-			interrupts = <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&conn_lpcg IMX_CONN_LPCG_ENET1_IPG_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_ENET1_AHB_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_ENET1_TX_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_ENET1_ROOT_CLK>;
-			clock-names = "ipg", "ahb", "enet_clk_ref", "ptp";
-			fsl,num-tx-queues=<3>;
-			fsl,num-rx-queues=<3>;
-			power-domains = <&pd IMX_SC_R_ENET_1>;
-			status = "disabled";
-		};
-	};
-
-	ddr_subsyss: bus@5c000000 {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0x5c000000 0x0 0x5c000000 0x1000000>;
-
-		ddr-pmu@5c020000 {
-			compatible = "fsl,imx8-ddr-pmu";
-			reg = <0x5c020000 0x10000>;
-			interrupt-parent = <&gic>;
-			interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
-		};
-	};
-
-	lsio_subsys: bus@5d000000 {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0x5d000000 0x0 0x5d000000 0x1000000>;
-
-		lsio_gpio0: gpio@5d080000 {
-			compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
-			reg = <0x5d080000 0x10000>;
-			interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>;
-			gpio-controller;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			power-domains = <&pd IMX_SC_R_GPIO_0>;
-		};
-
-		lsio_gpio1: gpio@5d090000 {
-			compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
-			reg = <0x5d090000 0x10000>;
-			interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
-			gpio-controller;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			power-domains = <&pd IMX_SC_R_GPIO_1>;
-		};
-
-		lsio_gpio2: gpio@5d0a0000 {
-			compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
-			reg = <0x5d0a0000 0x10000>;
-			interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
-			gpio-controller;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			power-domains = <&pd IMX_SC_R_GPIO_2>;
-		};
-
-		lsio_gpio3: gpio@5d0b0000 {
-			compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
-			reg = <0x5d0b0000 0x10000>;
-			interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
-			gpio-controller;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			power-domains = <&pd IMX_SC_R_GPIO_3>;
-		};
-
-		lsio_gpio4: gpio@5d0c0000 {
-			compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
-			reg = <0x5d0c0000 0x10000>;
-			interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
-			gpio-controller;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			power-domains = <&pd IMX_SC_R_GPIO_4>;
-		};
-
-		lsio_gpio5: gpio@5d0d0000 {
-			compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
-			reg = <0x5d0d0000 0x10000>;
-			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
-			gpio-controller;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			power-domains = <&pd IMX_SC_R_GPIO_5>;
-		};
-
-		lsio_gpio6: gpio@5d0e0000 {
-			compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
-			reg = <0x5d0e0000 0x10000>;
-			interrupts = <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>;
-			gpio-controller;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			power-domains = <&pd IMX_SC_R_GPIO_6>;
-		};
-
-		lsio_gpio7: gpio@5d0f0000 {
-			compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
-			reg = <0x5d0f0000 0x10000>;
-			interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
-			gpio-controller;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			power-domains = <&pd IMX_SC_R_GPIO_7>;
-		};
-
-		lsio_mu0: mailbox@5d1b0000 {
-			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
-			reg = <0x5d1b0000 0x10000>;
-			interrupts = <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>;
-			#mbox-cells = <2>;
-			status = "disabled";
-		};
-
-		lsio_mu1: mailbox@5d1c0000 {
-			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
-			reg = <0x5d1c0000 0x10000>;
-			interrupts = <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH>;
-			#mbox-cells = <2>;
-		};
-
-		lsio_mu2: mailbox@5d1d0000 {
-			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
-			reg = <0x5d1d0000 0x10000>;
-			interrupts = <GIC_SPI 178 IRQ_TYPE_LEVEL_HIGH>;
-			#mbox-cells = <2>;
-			status = "disabled";
-		};
-
-		lsio_mu3: mailbox@5d1e0000 {
-			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
-			reg = <0x5d1e0000 0x10000>;
-			interrupts = <GIC_SPI 179 IRQ_TYPE_LEVEL_HIGH>;
-			#mbox-cells = <2>;
-			status = "disabled";
-		};
-
-		lsio_mu4: mailbox@5d1f0000 {
-			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
-			reg = <0x5d1f0000 0x10000>;
-			interrupts = <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>;
-			#mbox-cells = <2>;
-			status = "disabled";
-		};
-
-		lsio_mu13: mailbox@5d280000 {
-			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
-			reg = <0x5d280000 0x10000>;
-			interrupts = <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>;
-			#mbox-cells = <2>;
-			power-domains = <&pd IMX_SC_R_MU_13A>;
-		};
-
-		lsio_lpcg: clock-controller@5d400000 {
-			compatible = "fsl,imx8qxp-lpcg-lsio";
-			reg = <0x5d400000 0x400000>;
-			#clock-cells = <1>;
-		};
-	};
+	/* sorted in register address */
+	#include "imx8-ss-adma.dtsi"
+	#include "imx8-ss-conn.dtsi"
+	#include "imx8-ss-ddr.dtsi"
+	#include "imx8-ss-lsio.dtsi"
 };
+
+#include "imx8qxp-ss-adma.dtsi"
+#include "imx8qxp-ss-conn.dtsi"
+#include "imx8qxp-ss-lsio.dtsi"
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
