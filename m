Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B96EDF4A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 12:55:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gjm6nD/Kr184+e+CUNKlEpOeHc8JVM6PF+PMm5ORxQA=; b=m/InVMThJ8u4lG
	NMYDBpzeis8Vc9ZpiNpfzdHX2EyJV3OgDcnWcuOc8PIwAA32/AS7R8oaf01cSY6YdPG6kG9Qy5xkL
	O5P14+0NJi8e0r2PEI0ewmus8Sye42yATJWu6aUo9TikhpLzUWSSve/90E2Mls822F6GDS7UwZbMv
	CyHMihhI3Y4Q1uRkCyAc9qaY1mvSTVVSoOHfKuGwkmiFCCEwKjD9IH7AoWgfvQlEyJEw9KxDAPtfp
	dyDeWuAK5jok9Y2DsVkcQX/NcK53yjdzCNXKoKALZ2PHJP4Io6YSsu7F79KtgpO9JTIS6hL/+wWac
	nAIdt0UpaZoOgdYqtAYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRax0-0007rl-6L; Mon, 04 Nov 2019 11:55:14 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRavt-0006zl-U5
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 11:54:08 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id E1E4160039A;
 Mon,  4 Nov 2019 12:53:59 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 4 Nov 2019
 12:53:59 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Mon, 4 Nov 2019 12:53:59 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
 Mark Rutland <mark.rutland@arm.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Rob Herring
 <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo
 <shawnguo@kernel.org>
Subject: [PATCH v4 1/9] ARM: dts: imx6ul-kontron-n6310: Move common SoM nodes
 to a separate file
Thread-Topic: [PATCH v4 1/9] ARM: dts: imx6ul-kontron-n6310: Move common SoM
 nodes to a separate file
Thread-Index: AQHVkwaLozmp4mUWskywg6g6pJgdZQ==
Date: Mon, 4 Nov 2019 11:53:59 +0000
Message-ID: <20191104115352.8728-2-frieder.schrempf@kontron.de>
References: <20191104115352.8728-1-frieder.schrempf@kontron.de>
In-Reply-To: <20191104115352.8728-1-frieder.schrempf@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: E1E4160039A.A0891
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: devicetree@vger.kernel.org, festevam@gmail.com,
 kernel@pengutronix.de, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_035406_318006_3CB5D5E3 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Frieder Schrempf <frieder.schrempf@kontron.de>

The Kontron N6311 and N6411 SoMs are very similar to N6310. In
preparation to add support for them, we move the common nodes to a
separate file imx6ul-kontron-n6x1x-som-common.dtsi.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 .../boot/dts/imx6ul-kontron-n6310-som.dtsi    |  95 +---------------
 .../dts/imx6ul-kontron-n6x1x-som-common.dtsi  | 103 ++++++++++++++++++
 2 files changed, 104 insertions(+), 94 deletions(-)
 create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6x1x-som-common.dtsi

diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6310-som.dtsi b/arch/arm/boot/dts/imx6ul-kontron-n6310-som.dtsi
index a896b2348dd2..47d3ce5d255f 100644
--- a/arch/arm/boot/dts/imx6ul-kontron-n6310-som.dtsi
+++ b/arch/arm/boot/dts/imx6ul-kontron-n6310-som.dtsi
@@ -6,7 +6,7 @@
  */
 
 #include "imx6ul.dtsi"
-#include <dt-bindings/gpio/gpio.h>
+#include "imx6ul-kontron-n6x1x-som-common.dtsi"
 
 / {
 	model = "Kontron N6310 SOM";
@@ -18,49 +18,7 @@
 	};
 };
 
-&ecspi2 {
-	cs-gpios = <&gpio4 22 GPIO_ACTIVE_HIGH>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_ecspi2>;
-	status = "okay";
-
-	spi-flash@0 {
-		compatible = "mxicy,mx25v8035f", "jedec,spi-nor";
-		spi-max-frequency = <50000000>;
-		reg = <0>;
-	};
-};
-
-&fec1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_enet1 &pinctrl_enet1_mdio>;
-	phy-mode = "rmii";
-	phy-handle = <&ethphy1>;
-	status = "okay";
-
-	mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		ethphy1: ethernet-phy@1 {
-			reg = <1>;
-			micrel,led-mode = <0>;
-			clocks = <&clks IMX6UL_CLK_ENET_REF>;
-			clock-names = "rmii-ref";
-		};
-	};
-};
-
-&fec2 {
-	phy-mode = "rmii";
-	status = "disabled";
-};
-
 &qspi {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_qspi>;
-	status = "okay";
-
 	spi-flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -81,54 +39,3 @@
 		};
 	};
 };
-
-&iomuxc {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_reset_out>;
-
-	pinctrl_ecspi2: ecspi2grp {
-		fsl,pins = <
-			MX6UL_PAD_CSI_DATA03__ECSPI2_MISO      0x100b1
-			MX6UL_PAD_CSI_DATA02__ECSPI2_MOSI      0x100b1
-			MX6UL_PAD_CSI_DATA00__ECSPI2_SCLK      0x100b1
-			MX6UL_PAD_CSI_DATA01__GPIO4_IO22       0x100b1
-		>;
-	};
-
-	pinctrl_enet1: enet1grp {
-		fsl,pins = <
-			MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN      0x1b0b0
-			MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER      0x1b0b0
-			MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00 0x1b0b0
-			MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01 0x1b0b0
-			MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN      0x1b0b0
-			MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00 0x1b0b0
-			MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01 0x1b0b0
-			MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1  0x4001b009
-		>;
-	};
-
-	pinctrl_enet1_mdio: enet1mdiogrp {
-		fsl,pins = <
-			MX6UL_PAD_GPIO1_IO07__ENET1_MDC         0x1b0b0
-			MX6UL_PAD_GPIO1_IO06__ENET1_MDIO        0x1b0b0
-		>;
-	};
-
-	pinctrl_qspi: qspigrp {
-		fsl,pins = <
-			MX6UL_PAD_NAND_WP_B__QSPI_A_SCLK        0x70a1
-			MX6UL_PAD_NAND_READY_B__QSPI_A_DATA00   0x70a1
-			MX6UL_PAD_NAND_CE0_B__QSPI_A_DATA01     0x70a1
-			MX6UL_PAD_NAND_CE1_B__QSPI_A_DATA02     0x70a1
-			MX6UL_PAD_NAND_CLE__QSPI_A_DATA03       0x70a1
-			MX6UL_PAD_NAND_DQS__QSPI_A_SS0_B        0x70a1
-		>;
-	};
-
-	pinctrl_reset_out: rstoutgrp {
-		fsl,pins = <
-			MX6UL_PAD_SNVS_TAMPER9__GPIO5_IO09      0x1b0b0
-		>;
-	};
-};
diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-som-common.dtsi b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-som-common.dtsi
new file mode 100644
index 000000000000..a843e028bcde
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-som-common.dtsi
@@ -0,0 +1,103 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2017 exceet electronics GmbH
+ * Copyright (C) 2018 Kontron Electronics GmbH
+ * Copyright (c) 2019 Krzysztof Kozlowski <krzk@kernel.org>
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+
+&ecspi2 {
+	cs-gpios = <&gpio4 22 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi2>;
+	status = "okay";
+
+	spi-flash@0 {
+		compatible = "mxicy,mx25v8035f", "jedec,spi-nor";
+		spi-max-frequency = <50000000>;
+		reg = <0>;
+	};
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet1 &pinctrl_enet1_mdio>;
+	phy-mode = "rmii";
+	phy-handle = <&ethphy1>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy1: ethernet-phy@1 {
+			reg = <1>;
+			micrel,led-mode = <0>;
+			clocks = <&clks IMX6UL_CLK_ENET_REF>;
+			clock-names = "rmii-ref";
+		};
+	};
+};
+
+&fec2 {
+	phy-mode = "rmii";
+	status = "disabled";
+};
+
+&qspi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_qspi>;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_reset_out>;
+
+	pinctrl_ecspi2: ecspi2grp {
+		fsl,pins = <
+			MX6UL_PAD_CSI_DATA03__ECSPI2_MISO      0x100b1
+			MX6UL_PAD_CSI_DATA02__ECSPI2_MOSI      0x100b1
+			MX6UL_PAD_CSI_DATA00__ECSPI2_SCLK      0x100b1
+			MX6UL_PAD_CSI_DATA01__GPIO4_IO22       0x100b1
+		>;
+	};
+
+	pinctrl_enet1: enet1grp {
+		fsl,pins = <
+			MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN      0x1b0b0
+			MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER      0x1b0b0
+			MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00 0x1b0b0
+			MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01 0x1b0b0
+			MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN      0x1b0b0
+			MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00 0x1b0b0
+			MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01 0x1b0b0
+			MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1  0x4001b009
+		>;
+	};
+
+	pinctrl_enet1_mdio: enet1mdiogrp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO07__ENET1_MDC         0x1b0b0
+			MX6UL_PAD_GPIO1_IO06__ENET1_MDIO        0x1b0b0
+		>;
+	};
+
+	pinctrl_qspi: qspigrp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_WP_B__QSPI_A_SCLK        0x70a1
+			MX6UL_PAD_NAND_READY_B__QSPI_A_DATA00   0x70a1
+			MX6UL_PAD_NAND_CE0_B__QSPI_A_DATA01     0x70a1
+			MX6UL_PAD_NAND_CE1_B__QSPI_A_DATA02     0x70a1
+			MX6UL_PAD_NAND_CLE__QSPI_A_DATA03       0x70a1
+			MX6UL_PAD_NAND_DQS__QSPI_A_SS0_B        0x70a1
+		>;
+	};
+
+	pinctrl_reset_out: rstoutgrp {
+		fsl,pins = <
+			MX6UL_PAD_SNVS_TAMPER9__GPIO5_IO09      0x1b0b0
+		>;
+	};
+};
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
