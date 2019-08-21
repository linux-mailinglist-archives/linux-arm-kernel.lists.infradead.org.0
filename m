Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC6D9749F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 10:22:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KBAecjkgbEtYd51rE3OuEDmS8dkFzEmz3cyhqyfgbGI=; b=HndsTSqZczRAbF
	BfnnXNg9fYe8JyR3CYHi/pG7ljplRJiLWBkqMl+Q8mX+a2yCqqBqydh4TebbzVFOlb0KjdzEiTBTo
	smI6ERhGwa0qGNmfUSzZzsHjCk2uUaLBY/G42vvSONIZ2Ky0QQInrk/592rTVqUOBaTn+4SY66im7
	lvYoayzPxmArq7U2phZcGzzYA0LoeqvU3mfXBNPJqIzmnQx69GN9NWnfGHXiyLY6mhavcS1VLTgHi
	GtX+YLxLSZNnhJIHoANlf/fRQimjrGxDUYbiXXthS4ttsygLTu+dq97PU4UXdxMmwMyvTCwvVxccL
	9T+eN4YxB9VCaejZi20A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Lso-000298-CZ; Wed, 21 Aug 2019 08:22:18 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Lro-0001mx-HX
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 08:21:20 +0000
Received: from tarshish.tkos.co.il (unknown [10.0.8.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 25E6E440539;
 Wed, 21 Aug 2019 11:21:09 +0300 (IDT)
From: Baruch Siach <baruch@tkos.co.il>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v4 1/2] arm64: dts: fsl: add support for Hummingboard Pulse
Date: Wed, 21 Aug 2019 11:20:18 +0300
Message-Id: <250bf15602801b09a1c1e6d286d0eb125029fd49.1566375619.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_012117_081805_B1C54E50 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Baruch Siach <baruch@tkos.co.il>, Jon Nettleton <jon@solid-run.com>,
 Marco Felsch <m.felsch@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jon Nettleton <jon@solid-run.com>

The SolidRun Hummingboard Pulse carrier board carries the SolidRun
i.MX8MQ based SOM.

Notably missing is PCIe support that depends on analog PLLOUT clock.
Current imx clk driver does not support this clock.

Signed-off-by: Jon Nettleton <jon@solid-run.com>
Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
v4:
  Address Shawn's comments:
  - Normalize PDO_FIXED() arguments indentation
  - Keep status property last
  - Fix alphabetical order of nodes
v3:
  Fix SD card power regulator enable gpio
  Address Marco's comments:
  - Reorder pinctrl properties
  - Move imx8mq.dtsi include to the SOM .dtsi
  - Add reg_ prefix to regulator labels
  - Add pinctrl node to SD card regulator gpio
  - Add label to SPI flash node

v2: Address Fabio's comments:
  - Remove redundant node nesting
  - Fix comments style
  - Use mainline DT bindings in UART and USB type C
  - Fix node names
  - Move &iomuxc to the end of file
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../freescale/imx8mq-hummingboard-pulse.dts   | 256 +++++++++++++++
 .../boot/dts/freescale/imx8mq-sr-som.dtsi     | 309 ++++++++++++++++++
 3 files changed, 566 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-sr-som.dtsi

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index c043aca66572..6833b23e2dd2 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -22,6 +22,7 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-rdb.dtb
 
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mq-hummingboard-pulse.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts b/arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts
new file mode 100644
index 000000000000..f52e872ac96f
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts
@@ -0,0 +1,256 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2018 Jon Nettleton <jon@solid-run.com>
+ */
+
+/dts-v1/;
+
+#include "dt-bindings/usb/pd.h"
+#include "imx8mq-sr-som.dtsi"
+
+/ {
+	model = "SolidRun i.MX8MQ HummingBoard Pulse";
+	compatible = "solidrun,hummingboard-pulse", "fsl,imx8mq";
+
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usdhc2_vmmc>;
+		regulator-name = "VSD_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio1 13 GPIO_ACTIVE_LOW>;
+	};
+
+	reg_v_5v0: regulator-v-5v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "v_5v0";
+		regulator-max-microvolt = <5000000>;
+		regulator-min-microvolt = <5000000>;
+		regulator-always-on;
+	};
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	typec_ptn5100: usb-typec@50 {
+		compatible = "nxp,ptn5110";
+		reg = <0x50>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_typec>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
+
+		connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			data-role = "dual";
+			power-role = "dual";
+			try-power-role = "sink";
+			source-pdos = <PDO_FIXED(5000, 2000,
+						 PDO_FIXED_USB_COMM |
+						 PDO_FIXED_SUSPEND |
+						 PDO_FIXED_EXTPOWER)>;
+			sink-pdos = <PDO_FIXED(5000, 2000,
+					       PDO_FIXED_USB_COMM |
+					       PDO_FIXED_SUSPEND |
+					       PDO_FIXED_EXTPOWER)
+				     PDO_FIXED(9000, 2000,
+					       PDO_FIXED_USB_COMM |
+					       PDO_FIXED_SUSPEND |
+					       PDO_FIXED_EXTPOWER)>;
+			op-sink-microwatt = <9000000>;
+
+			port {
+				typec1_dr_sw: endpoint {
+					remote-endpoint = <&usb1_drd_sw>;
+				};
+			};
+		};
+	};
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	rtc@69 {
+		compatible = "abracon,ab1805";
+		reg = <0x69>;
+		abracon,tc-diode = "schottky";
+		abracon,tc-resistor = <3>;
+	};
+};
+
+&uart2 { /* J35 header */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	assigned-clocks = <&clk IMX8MQ_CLK_UART2>;
+	assigned-clock-parents = <&clk IMX8MQ_CLK_25M>;
+	status = "okay";
+};
+
+&uart3 { /* Mikrobus */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	assigned-clocks = <&clk IMX8MQ_CLK_UART3>;
+	assigned-clock-parents = <&clk IMX8MQ_SYS1_PLL_80M>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
+	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	status = "okay";
+};
+
+&usb_dwc3_0 {
+	dr_mode = "otg";
+	status = "okay";
+
+	port {
+		usb1_drd_sw: endpoint {
+			remote-endpoint = <&typec1_dr_sw>;
+		};
+	};
+};
+
+&usb_dwc3_1 {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usb3_phy0 {
+	status = "okay";
+};
+
+&usb3_phy1 {
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	pinctrl_hog: hoggrp {
+		fsl,pins = <
+			/* MikroBus Analog */
+			MX8MQ_IOMUXC_NAND_DATA05_GPIO3_IO11		0x41
+			/* MikroBus Reset */
+			MX8MQ_IOMUXC_SAI2_RXD0_GPIO4_IO23		0x41
+			/*
+			 * The following 2 pins need to be commented out and
+			 * reconfigured to enable RTS/CTS on UART3
+			 */
+			/* MikroBus PWM */
+			MX8MQ_IOMUXC_ECSPI1_MISO_GPIO5_IO8		0x41
+			/* MikroBus INT */
+			MX8MQ_IOMUXC_ECSPI1_SS0_GPIO5_IO9		0x41
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_I2C2_SCL_I2C2_SCL		0x4000007f
+			MX8MQ_IOMUXC_I2C2_SDA_I2C2_SDA		0x4000007f
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_I2C3_SCL_I2C3_SCL		0x4000007f
+			MX8MQ_IOMUXC_I2C3_SDA_I2C3_SDA		0x4000007f
+		>;
+	};
+
+	pinctrl_typec: typecgrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_NAND_RE_B_GPIO3_IO15	0x16
+			MX8MQ_IOMUXC_GPIO1_IO06_GPIO1_IO6	0x17059
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_UART2_TXD_UART2_DCE_TX		0x49
+			MX8MQ_IOMUXC_UART2_RXD_UART2_DCE_RX		0x49
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_UART3_TXD_UART3_DCE_TX		0x49
+			MX8MQ_IOMUXC_UART3_RXD_UART3_DCE_RX		0x49
+			/*
+			 * These pins are by default GPIO on the Mikro Bus
+			 * Header. To use RTS/CTS on UART3 comment them out
+			 * of the hoggrp and enable them here
+			 */
+			/* MX8MQ_IOMUXC_ECSPI1_MISO_UART3_DCE_CTS_B	0x49 */
+			/* MX8MQ_IOMUXC_ECSPI1_SS0_UART3_DCE_RTS_B	0x49 */
+		>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2grpgpio {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD2_CD_B_GPIO2_IO12	0x41
+		>;
+	};
+
+	pinctrl_usdhc2_vmmc: usdhc2vmmcgpio {
+		fsl,pins = <
+			MX8MQ_IOMUXC_GPIO1_IO13_GPIO1_IO13	0x41
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK			0x83
+			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD			0xc3
+			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0		0xc3
+			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1		0xc3
+			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2		0xc3
+			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3		0xc3
+			MX8MQ_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0xc1
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK			0x8d
+			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD			0xcd
+			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0		0xcd
+			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1		0xcd
+			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2		0xcd
+			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3		0xcd
+			MX8MQ_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0xc1
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK			0x9f
+			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD			0xdf
+			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0		0xdf
+			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1		0xdf
+			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2		0xdf
+			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3		0xdf
+			MX8MQ_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0xc1
+		>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-sr-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-sr-som.dtsi
new file mode 100644
index 000000000000..d7f03c65832b
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mq-sr-som.dtsi
@@ -0,0 +1,309 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2018 Jon Nettleton <jon@solid-run.com>
+ */
+
+#include "imx8mq.dtsi"
+
+/ {
+	reg_vdd_3v3: regulator-vdd-3v3 {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-name = "vdd_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy0>;
+	phy-reset-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
+	phy-reset-duration = <2>;
+	fsl,magic-packet;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@4 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <4>;
+		};
+	};
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	clock-frequency = <400000>;
+	status = "okay";
+
+	pmic: pmic@8 {
+		compatible = "fsl,pfuze100";
+		reg = <0x08>;
+
+		regulators {
+			sw1a_reg: sw1ab {
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+			};
+
+			sw1c_reg: sw1c {
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+			};
+
+			sw2_reg: sw2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			sw3a_reg: sw3ab {
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-always-on;
+			};
+
+			sw4_reg: sw4 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			swbst_reg: swbst {
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5150000>;
+			};
+
+			snvs_reg: vsnvs {
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-always-on;
+			};
+
+			vref_reg: vrefddr {
+				regulator-always-on;
+			};
+
+			vgen1_reg: vgen1 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+			};
+
+			vgen2_reg: vgen2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+				regulator-always-on;
+			};
+
+			vgen3_reg: vgen3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen4_reg: vgen4 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen5_reg: vgen5 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen6_reg: vgen6 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+		};
+	};
+};
+
+&pgc_gpu{
+	power-supply = <&sw1a_reg>;
+};
+
+&pgc_vpu {
+	power-supply = <&sw1c_reg>;
+};
+
+&qspi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_qspi>;
+	status = "okay";
+
+	/* SPI flash; not assembled by default */
+	spi_flash: flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		reg = <0>;
+		compatible = "micron,n25q256a", "jedec,spi-nor";
+		spi-max-frequency = <29000000>;
+		status = "disabled";
+	};
+};
+
+&uart1 { /* console */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	assigned-clocks = <&clk IMX8MQ_CLK_UART1>;
+	assigned-clock-parents = <&clk IMX8MQ_CLK_25M>;
+	assigned-clock-rates = <25000000>;
+	status = "okay";
+};
+
+&uart4 { /* ublox BT */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	assigned-clocks = <&clk IMX8MQ_CLK_UART4>;
+	assigned-clock-parents = <&clk IMX8MQ_SYS1_PLL_80M>;
+	assigned-clock-rates = <80000000>;
+	status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
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
+	pinctrl_fec1: fec1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_ENET_MDC_ENET1_MDC		0x3
+			MX8MQ_IOMUXC_ENET_MDIO_ENET1_MDIO	0x23
+			MX8MQ_IOMUXC_ENET_TD3_ENET1_RGMII_TD3	0x1f
+			MX8MQ_IOMUXC_ENET_TD2_ENET1_RGMII_TD2	0x1f
+			MX8MQ_IOMUXC_ENET_TD1_ENET1_RGMII_TD1	0x1f
+			MX8MQ_IOMUXC_ENET_TD0_ENET1_RGMII_TD0	0x1f
+			MX8MQ_IOMUXC_ENET_RD3_ENET1_RGMII_RD3	0x91
+			MX8MQ_IOMUXC_ENET_RD2_ENET1_RGMII_RD2	0x91
+			MX8MQ_IOMUXC_ENET_RD1_ENET1_RGMII_RD1	0x91
+			MX8MQ_IOMUXC_ENET_RD0_ENET1_RGMII_RD0	0x91
+			MX8MQ_IOMUXC_ENET_TXC_ENET1_RGMII_TXC	0x1f
+			MX8MQ_IOMUXC_ENET_RXC_ENET1_RGMII_RXC	0x91
+			MX8MQ_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
+			MX8MQ_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
+			MX8MQ_IOMUXC_GPIO1_IO09_GPIO1_IO9	0x19
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_I2C1_SCL_I2C1_SCL			0x4000007f
+			MX8MQ_IOMUXC_I2C1_SDA_I2C1_SDA			0x4000007f
+		>;
+	};
+
+	pinctrl_pcie0: pcie0grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_I2C4_SCL_PCIE1_CLKREQ_B	0x74
+			MX8MQ_IOMUXC_SPDIF_EXT_CLK_GPIO5_IO5	0x16
+			MX8MQ_IOMUXC_SAI2_RXFS_GPIO4_IO21	0x16
+		>;
+	};
+
+	pinctrl_qspi: qspigrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_NAND_ALE_QSPI_A_SCLK	0x82
+			MX8MQ_IOMUXC_NAND_CE0_B_QSPI_A_SS0_B	0x82
+			MX8MQ_IOMUXC_NAND_DATA00_QSPI_A_DATA0	0x82
+			MX8MQ_IOMUXC_NAND_DATA01_QSPI_A_DATA1	0x82
+			MX8MQ_IOMUXC_NAND_DATA02_QSPI_A_DATA2	0x82
+			MX8MQ_IOMUXC_NAND_DATA03_QSPI_A_DATA3	0x82
+
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_UART1_RXD_UART1_DCE_RX		0x49
+			MX8MQ_IOMUXC_UART1_TXD_UART1_DCE_TX		0x49
+			MX8MQ_IOMUXC_NAND_CE1_B_GPIO3_IO2		0x19
+		>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_UART4_TXD_UART4_DCE_TX		0x49
+			MX8MQ_IOMUXC_UART4_RXD_UART4_DCE_RX		0x49
+			MX8MQ_IOMUXC_SAI3_TXD_GPIO5_IO1			0x19
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x83
+			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xc3
+			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xc3
+			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xc3
+			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xc3
+			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xc3
+			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xc3
+			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xc3
+			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xc3
+			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xc3
+			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE		0x83
+			MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B		0xc1
+		>;
+	};
+
+	pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x8d
+			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xcd
+			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xcd
+			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xcd
+			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xcd
+			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xcd
+			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xcd
+			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xcd
+			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xcd
+			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xcd
+			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE		0x8d
+			MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B		0xc1
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x9f
+			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xdf
+			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xdf
+			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xdf
+			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xdf
+			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xdf
+			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xdf
+			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xdf
+			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xdf
+			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xdf
+			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE		0x9f
+			MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B		0xc1
+		>;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B 0xc6
+		>;
+	};
+};
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
