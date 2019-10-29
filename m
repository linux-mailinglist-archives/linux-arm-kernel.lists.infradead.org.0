Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05015E86FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 12:29:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGAIQFnBXB1/9CA4zoLBDn+jz892u3GvVzJnxVsQi84=; b=Gh/ZT6JzlOmMQH
	I+TsFbf/AfjMCRwweNB/1my2Q88yxz7+LRiyWs6nCXQHt6JSDbdRgB5TvY/Hd3xOSAxkDME5Prr4v
	seyifrankD2hNxMhbQT+BZtxDAOfYOGFZdJjlm5muWOo+AVNaRRThp7ssqsShBcCZS4cNCjZcAJ7M
	j3XAroS8Rp6AJc/Y2J4M7VQNblKtRodYUrccTVzWEPF/QybP0Rj+97izWJ3MfhdU7iHnid+y/vpfn
	Z1ETU3Zu7nsWmRwyDQt/1M1LS0X7IfwzPwdhY/xrn0DymIHIwT1z8S+0FVauTGMSQ3H4U6ZHrii39
	hPi2LnjnByk6nLjb1UzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPgd-0007AV-8v; Tue, 29 Oct 2019 11:29:19 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPfG-0006K0-Gd
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 11:27:58 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id E307860CF47;
 Tue, 29 Oct 2019 12:27:51 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 29 Oct
 2019 12:27:51 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Tue, 29 Oct 2019 12:27:51 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
 Schrempf Frieder <frieder.schrempf@kontron.de>, Mark Rutland
 <mark.rutland@arm.com>, NXP Linux Team <linux-imx@nxp.com>, "Pengutronix
 Kernel Team" <kernel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 "Sascha Hauer" <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 03/11] ARM: dts: imx6ul-kontron-n6310-s: Move common nodes
 to a separate file
Thread-Topic: [PATCH v2 03/11] ARM: dts: imx6ul-kontron-n6310-s: Move common
 nodes to a separate file
Thread-Index: AQHVjkvmcQscreMWdkCLe6rbkfcQEA==
Date: Tue, 29 Oct 2019 11:27:51 +0000
Message-ID: <20191029112655.15058-4-frieder.schrempf@kontron.de>
References: <20191029112655.15058-1-frieder.schrempf@kontron.de>
In-Reply-To: <20191029112655.15058-1-frieder.schrempf@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: E307860CF47.A1656
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
X-CRM114-CacheID: sfid-20191029_042754_924020_DBAAB227 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Frieder Schrempf <frieder.schrempf@kontron.de>

The baseboard for the Kontron N6310 SoM is also used for other SoMs
such as N6311 and N6411. In order to share the code, we move the
definitions of the baseboard to a separate dtsi file.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 arch/arm/boot/dts/imx6ul-kontron-n6310-s.dts  | 405 +----------------
 arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi | 414 ++++++++++++++++++
 2 files changed, 415 insertions(+), 404 deletions(-)
 create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi

diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6310-s.dts b/arch/arm/boot/dts/imx6ul-kontron-n6310-s.dts
index 0205fd56d975..5a3e06d6219b 100644
--- a/arch/arm/boot/dts/imx6ul-kontron-n6310-s.dts
+++ b/arch/arm/boot/dts/imx6ul-kontron-n6310-s.dts
@@ -8,413 +8,10 @@
 /dts-v1/;
 
 #include "imx6ul-kontron-n6310-som.dtsi"
+#include "imx6ul-kontron-n6x1x-s.dtsi"
 
 / {
 	model = "Kontron N6310 S";
 	compatible = "kontron,imx6ul-n6310-s", "kontron,imx6ul-n6310-som",
 		     "fsl,imx6ul";
-
-	gpio-leds {
-		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_gpio_leds>;
-
-		led1 {
-			label = "debug-led1";
-			gpios = <&gpio1 30 GPIO_ACTIVE_LOW>;
-			default-state = "off";
-			linux,default-trigger = "heartbeat";
-		};
-
-		led2 {
-			label = "debug-led2";
-			gpios = <&gpio5 3 GPIO_ACTIVE_LOW>;
-			default-state = "off";
-		};
-
-		led3 {
-			label = "debug-led3";
-			gpios = <&gpio5 2 GPIO_ACTIVE_LOW>;
-			default-state = "off";
-		};
-	};
-
-	pwm-beeper {
-		compatible = "pwm-beeper";
-		pwms = <&pwm8 0 5000>;
-	};
-
-	reg_3v3: regulator-3v3 {
-		compatible = "regulator-fixed";
-		regulator-name = "3v3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-	};
-
-	reg_usb_otg1_vbus: regulator-usb-otg1-vbus {
-		compatible = "regulator-fixed";
-		regulator-name = "usb_otg1_vbus";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		gpio = <&gpio1 4 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-	};
-
-	reg_vref_adc: regulator-vref-adc {
-		compatible = "regulator-fixed";
-		regulator-name = "vref-adc";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-	};
-};
-
-&adc1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_adc1>;
-	num-channels = <3>;
-	vref-supply = <&reg_vref_adc>;
-	status = "okay";
-};
-
-&can2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_flexcan2>;
-	status = "okay";
-};
-
-&ecspi1 {
-	cs-gpios = <&gpio4 26 GPIO_ACTIVE_HIGH>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_ecspi1>;
-	status = "okay";
-
-	eeprom@0 {
-		compatible = "anvo,anv32e61w", "atmel,at25";
-		reg = <0>;
-		spi-max-frequency = <20000000>;
-		spi-cpha;
-		spi-cpol;
-		pagesize = <1>;
-		size = <8192>;
-		address-width = <16>;
-	};
-};
-
-&fec1 {
-	pinctrl-0 = <&pinctrl_enet1>;
-	/delete-node/ mdio;
-};
-
-&fec2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_enet2 &pinctrl_enet2_mdio>;
-	phy-mode = "rmii";
-	phy-handle = <&ethphy2>;
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
-
-		ethphy2: ethernet-phy@2 {
-			reg = <2>;
-			micrel,led-mode = <0>;
-			clocks = <&clks IMX6UL_CLK_ENET2_REF>;
-			clock-names = "rmii-ref";
-		};
-	};
-};
-
-&i2c1 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c1>;
-	status = "okay";
-};
-
-&i2c4 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c4>;
-	status = "okay";
-
-	rtc@32 {
-		compatible = "epson,rx8900";
-		reg = <0x32>;
-	};
-};
-
-&pwm8 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_pwm8>;
-	status = "okay";
-};
-
-&snvs_poweroff {
-	status = "okay";
-};
-
-&uart1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart1>;
-	status = "okay";
-};
-
-&uart2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart2>;
-	linux,rs485-enabled-at-boot-time;
-	rs485-rx-during-tx;
-	rs485-rts-active-low;
-	uart-has-rtscts;
-	status = "okay";
-};
-
-&uart3 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart3>;
-	fsl,uart-has-rtscts;
-	status = "okay";
-};
-
-&uart4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart4>;
-	status = "okay";
-};
-
-&usbotg1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usbotg1>;
-	dr_mode = "otg";
-	srp-disable;
-	hnp-disable;
-	adp-disable;
-	vbus-supply = <&reg_usb_otg1_vbus>;
-	status = "okay";
-};
-
-&usbotg2 {
-	dr_mode = "host";
-	disable-over-current;
-	status = "okay";
-};
-
-&usdhc1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc1>;
-	cd-gpios = <&gpio1 19 GPIO_ACTIVE_LOW>;
-	keep-power-in-suspend;
-	wakeup-source;
-	vmmc-supply = <&reg_3v3>;
-	voltage-ranges = <3300 3300>;
-	no-1-8-v;
-	status = "okay";
-};
-
-&usdhc2 {
-	pinctrl-names = "default", "state_100mhz", "state_200mhz";
-	pinctrl-0 = <&pinctrl_usdhc2>;
-	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
-	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
-	non-removable;
-	keep-power-in-suspend;
-	wakeup-source;
-	vmmc-supply = <&reg_3v3>;
-	voltage-ranges = <3300 3300>;
-	no-1-8-v;
-	status = "okay";
-};
-
-&wdog1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_wdog>;
-	fsl,ext-reset-output;
-	status = "okay";
-};
-
-&iomuxc {
-	pinctrl-0 = <&pinctrl_reset_out &pinctrl_gpio>;
-
-	pinctrl_adc1: adc1grp {
-		fsl,pins = <
-			MX6UL_PAD_GPIO1_IO02__GPIO1_IO02	0xb0
-			MX6UL_PAD_GPIO1_IO03__GPIO1_IO03	0xb0
-			MX6UL_PAD_GPIO1_IO08__GPIO1_IO08	0xb0
-		>;
-	};
-
-	/* FRAM */
-	pinctrl_ecspi1: ecspi1grp {
-		fsl,pins = <
-			MX6UL_PAD_CSI_DATA07__ECSPI1_MISO	0x100b1
-			MX6UL_PAD_CSI_DATA06__ECSPI1_MOSI	0x100b1
-			MX6UL_PAD_CSI_DATA04__ECSPI1_SCLK	0x100b1
-			MX6UL_PAD_CSI_DATA05__GPIO4_IO26	0x100b1	/* ECSPI1-CS1 */
-		>;
-	};
-
-	pinctrl_enet2: enet2grp {
-		fsl,pins = <
-			MX6UL_PAD_ENET2_RX_EN__ENET2_RX_EN	0x1b0b0
-			MX6UL_PAD_ENET2_RX_ER__ENET2_RX_ER	0x1b0b0
-			MX6UL_PAD_ENET2_RX_DATA0__ENET2_RDATA00	0x1b0b0
-			MX6UL_PAD_ENET2_RX_DATA1__ENET2_RDATA01	0x1b0b0
-			MX6UL_PAD_ENET2_TX_EN__ENET2_TX_EN	0x1b0b0
-			MX6UL_PAD_ENET2_TX_DATA0__ENET2_TDATA00	0x1b0b0
-			MX6UL_PAD_ENET2_TX_DATA1__ENET2_TDATA01	0x1b0b0
-			MX6UL_PAD_ENET2_TX_CLK__ENET2_REF_CLK2	0x4001b009
-		>;
-	};
-
-	pinctrl_enet2_mdio: enet2mdiogrp {
-		fsl,pins = <
-			MX6UL_PAD_GPIO1_IO07__ENET2_MDC         0x1b0b0
-			MX6UL_PAD_GPIO1_IO06__ENET2_MDIO        0x1b0b0
-		>;
-	};
-
-	pinctrl_flexcan2: flexcan2grp{
-		fsl,pins = <
-			MX6UL_PAD_UART2_RTS_B__FLEXCAN2_RX	0x1b020
-			MX6UL_PAD_UART2_CTS_B__FLEXCAN2_TX	0x1b020
-		>;
-	};
-
-	pinctrl_gpio: gpiogrp {
-		fsl,pins = <
-			MX6UL_PAD_SNVS_TAMPER5__GPIO5_IO05	0x1b0b0 /* DOUT1 */
-			MX6UL_PAD_SNVS_TAMPER4__GPIO5_IO04	0x1b0b0 /* DIN1 */
-			MX6UL_PAD_SNVS_TAMPER1__GPIO5_IO01	0x1b0b0 /* DOUT2 */
-			MX6UL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x1b0b0 /* DIN2 */
-		>;
-	};
-
-	pinctrl_gpio_leds: gpioledsgrp {
-		fsl,pins = <
-			MX6UL_PAD_UART5_TX_DATA__GPIO1_IO30	0x1b0b0	/* LED H14 */
-			MX6UL_PAD_SNVS_TAMPER3__GPIO5_IO03	0x1b0b0	/* LED H15 */
-			MX6UL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x1b0b0	/* LED H16 */
-		>;
-	};
-
-	pinctrl_i2c1: i2c1grp {
-		fsl,pins = <
-			MX6UL_PAD_CSI_PIXCLK__I2C1_SCL		0x4001b8b0
-			MX6UL_PAD_CSI_MCLK__I2C1_SDA		0x4001b8b0
-		>;
-	};
-
-	pinctrl_i2c4: i2c4grp {
-		fsl,pins = <
-			MX6UL_PAD_UART2_TX_DATA__I2C4_SCL	0x4001f8b0
-			MX6UL_PAD_UART2_RX_DATA__I2C4_SDA	0x4001f8b0
-		>;
-	};
-
-	pinctrl_pwm8: pwm8grp {
-		fsl,pins = <
-			MX6UL_PAD_CSI_HSYNC__PWM8_OUT		0x110b0
-		>;
-	};
-
-	pinctrl_uart1: uart1grp {
-		fsl,pins = <
-			MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX	0x1b0b1
-			MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX	0x1b0b1
-		>;
-	};
-
-	pinctrl_uart2: uart2grp {
-		fsl,pins = <
-			MX6UL_PAD_NAND_DATA04__UART2_DCE_TX	0x1b0b1
-			MX6UL_PAD_NAND_DATA05__UART2_DCE_RX	0x1b0b1
-			MX6UL_PAD_NAND_DATA06__UART2_DCE_CTS	0x1b0b1
-			/*
-			 * mux unused RTS to make sure it doesn't cause
-			 * any interrupts when it is undefined
-			 */
-			MX6UL_PAD_NAND_DATA07__UART2_DCE_RTS	0x1b0b1
-		>;
-	};
-
-	pinctrl_uart3: uart3grp {
-		fsl,pins = <
-			MX6UL_PAD_UART3_TX_DATA__UART3_DCE_TX	0x1b0b1
-			MX6UL_PAD_UART3_RX_DATA__UART3_DCE_RX	0x1b0b1
-			MX6UL_PAD_UART3_CTS_B__UART3_DCE_CTS	0x1b0b1
-			MX6UL_PAD_UART3_RTS_B__UART3_DCE_RTS	0x1b0b1
-		>;
-	};
-
-	pinctrl_uart4: uart4grp {
-		fsl,pins = <
-			MX6UL_PAD_UART4_TX_DATA__UART4_DCE_TX	0x1b0b1
-			MX6UL_PAD_UART4_RX_DATA__UART4_DCE_RX	0x1b0b1
-		>;
-	};
-
-	pinctrl_usbotg1: usbotg1 {
-		fsl,pins = <
-			MX6UL_PAD_GPIO1_IO04__GPIO1_IO04	0x1b0b0
-		>;
-	};
-
-	pinctrl_usdhc1: usdhc1grp {
-		fsl,pins = <
-			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x17059
-			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x10059
-			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x17059
-			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x17059
-			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x17059
-			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x17059
-			MX6UL_PAD_UART1_RTS_B__GPIO1_IO19	0x100b1	/* SD1_CD */
-		>;
-	};
-
-	pinctrl_usdhc2: usdhc2grp {
-		fsl,pins = <
-			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x10059
-			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x17059
-			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x17059
-			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x17059
-			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x17059
-			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x17059
-		>;
-	};
-
-	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
-		fsl,pins = <
-			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x100b9
-			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x170b9
-			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x170b9
-			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x170b9
-			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x170b9
-			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x170b9
-		>;
-	};
-
-	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
-		fsl,pins = <
-			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x100f9
-			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x170f9
-			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x170f9
-			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x170f9
-			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x170f9
-			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x170f9
-		>;
-	};
-
-	pinctrl_wdog: wdoggrp {
-		fsl,pins = <
-			MX6UL_PAD_GPIO1_IO09__WDOG1_WDOG_ANY	0x30b0
-		>;
-	};
 };
diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
new file mode 100644
index 000000000000..7c98a1a46fb1
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
@@ -0,0 +1,414 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2017 exceet electronics GmbH
+ * Copyright (C) 2018 Kontron Electronics GmbH
+ * Copyright (c) 2019 Krzysztof Kozlowski <krzk@kernel.org>
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_leds>;
+
+		led1 {
+			label = "debug-led1";
+			gpios = <&gpio1 30 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+			linux,default-trigger = "heartbeat";
+		};
+
+		led2 {
+			label = "debug-led2";
+			gpios = <&gpio5 3 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+		};
+
+		led3 {
+			label = "debug-led3";
+			gpios = <&gpio5 2 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+		};
+	};
+
+	pwm-beeper {
+		compatible = "pwm-beeper";
+		pwms = <&pwm8 0 5000>;
+	};
+
+	reg_3v3: regulator-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	reg_usb_otg1_vbus: regulator-usb-otg1-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "usb_otg1_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio1 4 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_vref_adc: regulator-vref-adc {
+		compatible = "regulator-fixed";
+		regulator-name = "vref-adc";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+};
+
+&adc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_adc1>;
+	num-channels = <3>;
+	vref-supply = <&reg_vref_adc>;
+	status = "okay";
+};
+
+&can2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan2>;
+	status = "okay";
+};
+
+&ecspi1 {
+	cs-gpios = <&gpio4 26 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	status = "okay";
+
+	eeprom@0 {
+		compatible = "anvo,anv32e61w", "atmel,at25";
+		reg = <0>;
+		spi-max-frequency = <20000000>;
+		spi-cpha;
+		spi-cpol;
+		pagesize = <1>;
+		size = <8192>;
+		address-width = <16>;
+	};
+};
+
+&fec1 {
+	pinctrl-0 = <&pinctrl_enet1>;
+	/delete-node/ mdio;
+};
+
+&fec2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet2 &pinctrl_enet2_mdio>;
+	phy-mode = "rmii";
+	phy-handle = <&ethphy2>;
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
+
+		ethphy2: ethernet-phy@2 {
+			reg = <2>;
+			micrel,led-mode = <0>;
+			clocks = <&clks IMX6UL_CLK_ENET2_REF>;
+			clock-names = "rmii-ref";
+		};
+	};
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+};
+
+&i2c4 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	status = "okay";
+
+	rtc@32 {
+		compatible = "epson,rx8900";
+		reg = <0x32>;
+	};
+};
+
+&pwm8 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm8>;
+	status = "okay";
+};
+
+&snvs_poweroff {
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	linux,rs485-enabled-at-boot-time;
+	rs485-rx-during-tx;
+	rs485-rts-active-low;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	fsl,uart-has-rtscts;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	status = "okay";
+};
+
+&usbotg1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg1>;
+	dr_mode = "otg";
+	srp-disable;
+	hnp-disable;
+	adp-disable;
+	vbus-supply = <&reg_usb_otg1_vbus>;
+	status = "okay";
+};
+
+&usbotg2 {
+	dr_mode = "host";
+	disable-over-current;
+	status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	cd-gpios = <&gpio1 19 GPIO_ACTIVE_LOW>;
+	keep-power-in-suspend;
+	wakeup-source;
+	vmmc-supply = <&reg_3v3>;
+	voltage-ranges = <3300 3300>;
+	no-1-8-v;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
+	non-removable;
+	keep-power-in-suspend;
+	wakeup-source;
+	vmmc-supply = <&reg_3v3>;
+	voltage-ranges = <3300 3300>;
+	no-1-8-v;
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
+	pinctrl-0 = <&pinctrl_reset_out &pinctrl_gpio>;
+
+	pinctrl_adc1: adc1grp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO02__GPIO1_IO02	0xb0
+			MX6UL_PAD_GPIO1_IO03__GPIO1_IO03	0xb0
+			MX6UL_PAD_GPIO1_IO08__GPIO1_IO08	0xb0
+		>;
+	};
+
+	/* FRAM */
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <
+			MX6UL_PAD_CSI_DATA07__ECSPI1_MISO	0x100b1
+			MX6UL_PAD_CSI_DATA06__ECSPI1_MOSI	0x100b1
+			MX6UL_PAD_CSI_DATA04__ECSPI1_SCLK	0x100b1
+			MX6UL_PAD_CSI_DATA05__GPIO4_IO26	0x100b1	/* ECSPI1-CS1 */
+		>;
+	};
+
+	pinctrl_enet2: enet2grp {
+		fsl,pins = <
+			MX6UL_PAD_ENET2_RX_EN__ENET2_RX_EN	0x1b0b0
+			MX6UL_PAD_ENET2_RX_ER__ENET2_RX_ER	0x1b0b0
+			MX6UL_PAD_ENET2_RX_DATA0__ENET2_RDATA00	0x1b0b0
+			MX6UL_PAD_ENET2_RX_DATA1__ENET2_RDATA01	0x1b0b0
+			MX6UL_PAD_ENET2_TX_EN__ENET2_TX_EN	0x1b0b0
+			MX6UL_PAD_ENET2_TX_DATA0__ENET2_TDATA00	0x1b0b0
+			MX6UL_PAD_ENET2_TX_DATA1__ENET2_TDATA01	0x1b0b0
+			MX6UL_PAD_ENET2_TX_CLK__ENET2_REF_CLK2	0x4001b009
+		>;
+	};
+
+	pinctrl_enet2_mdio: enet2mdiogrp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO07__ENET2_MDC         0x1b0b0
+			MX6UL_PAD_GPIO1_IO06__ENET2_MDIO        0x1b0b0
+		>;
+	};
+
+	pinctrl_flexcan2: flexcan2grp{
+		fsl,pins = <
+			MX6UL_PAD_UART2_RTS_B__FLEXCAN2_RX	0x1b020
+			MX6UL_PAD_UART2_CTS_B__FLEXCAN2_TX	0x1b020
+		>;
+	};
+
+	pinctrl_gpio: gpiogrp {
+		fsl,pins = <
+			MX6UL_PAD_SNVS_TAMPER5__GPIO5_IO05	0x1b0b0 /* DOUT1 */
+			MX6UL_PAD_SNVS_TAMPER4__GPIO5_IO04	0x1b0b0 /* DIN1 */
+			MX6UL_PAD_SNVS_TAMPER1__GPIO5_IO01	0x1b0b0 /* DOUT2 */
+			MX6UL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x1b0b0 /* DIN2 */
+		>;
+	};
+
+	pinctrl_gpio_leds: gpioledsgrp {
+		fsl,pins = <
+			MX6UL_PAD_UART5_TX_DATA__GPIO1_IO30	0x1b0b0	/* LED H14 */
+			MX6UL_PAD_SNVS_TAMPER3__GPIO5_IO03	0x1b0b0	/* LED H15 */
+			MX6UL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x1b0b0	/* LED H16 */
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX6UL_PAD_CSI_PIXCLK__I2C1_SCL		0x4001b8b0
+			MX6UL_PAD_CSI_MCLK__I2C1_SDA		0x4001b8b0
+		>;
+	};
+
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <
+			MX6UL_PAD_UART2_TX_DATA__I2C4_SCL	0x4001f8b0
+			MX6UL_PAD_UART2_RX_DATA__I2C4_SDA	0x4001f8b0
+		>;
+	};
+
+	pinctrl_pwm8: pwm8grp {
+		fsl,pins = <
+			MX6UL_PAD_CSI_HSYNC__PWM8_OUT		0x110b0
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX	0x1b0b1
+			MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX	0x1b0b1
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_DATA04__UART2_DCE_TX	0x1b0b1
+			MX6UL_PAD_NAND_DATA05__UART2_DCE_RX	0x1b0b1
+			MX6UL_PAD_NAND_DATA06__UART2_DCE_CTS	0x1b0b1
+			/*
+			 * mux unused RTS to make sure it doesn't cause
+			 * any interrupts when it is undefined
+			 */
+			MX6UL_PAD_NAND_DATA07__UART2_DCE_RTS	0x1b0b1
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX6UL_PAD_UART3_TX_DATA__UART3_DCE_TX	0x1b0b1
+			MX6UL_PAD_UART3_RX_DATA__UART3_DCE_RX	0x1b0b1
+			MX6UL_PAD_UART3_CTS_B__UART3_DCE_CTS	0x1b0b1
+			MX6UL_PAD_UART3_RTS_B__UART3_DCE_RTS	0x1b0b1
+		>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX6UL_PAD_UART4_TX_DATA__UART4_DCE_TX	0x1b0b1
+			MX6UL_PAD_UART4_RX_DATA__UART4_DCE_RX	0x1b0b1
+		>;
+	};
+
+	pinctrl_usbotg1: usbotg1 {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO04__GPIO1_IO04	0x1b0b0
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x17059
+			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x10059
+			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x17059
+			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x17059
+			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x17059
+			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x17059
+			MX6UL_PAD_UART1_RTS_B__GPIO1_IO19	0x100b1	/* SD1_CD */
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x10059
+			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x17059
+			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x17059
+			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x17059
+			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x17059
+			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x17059
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x100b9
+			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x170b9
+			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x170b9
+			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x170b9
+			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x170b9
+			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x170b9
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x100f9
+			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x170f9
+			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x170f9
+			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x170f9
+			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x170f9
+			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x170f9
+		>;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO09__WDOG1_WDOG_ANY	0x30b0
+		>;
+	};
+};
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
