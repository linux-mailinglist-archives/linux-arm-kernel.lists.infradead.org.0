Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 311641A48A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 18:44:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I8h+yNSFpsWG7Ruh+mEOLN0P37J7f3VdmLCKxvekdLY=; b=oOUeUjH1wo3J54
	9tfVQDpn4bjsM3/RNqTHP37e2AyBDcnTuVhz8POatZyY8DYLfDX+5FNsO9/IgHu1SDkdaSrY1usAG
	LfMtRuXB/hbDgPF0jz/1p3vnpqDALZcR2dPTyz5SntygBWOG+kLOgT3OeQ/yEyDO15FwFnf+y2eF6
	80dMvzZtLpA0vjo+jMFuxSI9RWbnLax8YpVDj+qOd2IyzrZvCilLyIOXSl3IYzEsNQxSKTFFJc6L3
	MiM5ZONeTI21Tgh0g0w1ilcVJilHnZSd+zvVafRoaWr8vDwIYHIMPGj21SktcoW1Cq8NVQuCP6RSw
	0kFgEFMTYxysZ2+axszQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMwlY-0006Xk-DG; Fri, 10 Apr 2020 16:44:28 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMwl8-0006FP-TA
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 16:44:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586537042; x=1618073042;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=5kGkr4YKH3PXOGiQVVGM6yObHvomSXjRC5ZY5Ji5iDk=;
 b=VvwTrpSgA+lCo0wMqTpZNltRCjw/6xnFdERyt10WWDN676iaupEIkfil
 PlgZ+F+zeqmbpM4zduhgZPQA/mzJ//4vINMo2+1GhhivBvN6vkSSF6qJw
 /z4DBJ/Y3/BHtLsd2isPM6nf2rKVRfWdADbuPii9La9bLQqBkI6/gSzU2
 UEM5kJ8BSSm3LhD3LT+ijJgPTZ7UDvN2//4tRzSPBDga6G3VtmpGGivEt
 k+1bgLVJgHSBKgIGv8viQ6my1XqLs8Nq0SjOiZNWUXUQ6bsToDfkUPjSm
 IfNUvmkdtBRN175dqC03xvNJ3ryeehTbzkbCWoUHnRDSq2w/T6R5I7AeW A==;
IronPort-SDR: cRjvLoUVj8hgkoasCKW/WT3M2pmKcCmASalnKc0huGaxjx22is1kG50Qlu8bFzaXDV7jnZ2Llt
 qUO0vh6l+U/ZWMpu1MGp27vm3seQZa1a9vlejqP/cAKaxjRNpJVk6YMSfzV9GqWDe7FiY8QGye
 sGD874GHq64dS11r1ZdE4X0IgT5rv0Z4c7q+H4pW6dfTzAjFBLwa9P+rX3GTAKcYRMWfjtwwHq
 OTO5ir4lTdoLlY1ueacr2rjF4qNAwoCPJ7tnLmPNnbAIFCbu4CBq1hAwMJW5h2S9ywAYW5th4D
 /NI=
X-IronPort-AV: E=Sophos;i="5.72,367,1580799600"; 
   d="scan'208";a="8794044"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Apr 2020 09:44:01 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Apr 2020 09:43:56 -0700
Received: from cristi-P53.amer.actel.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 10 Apr 2020 09:43:54 -0700
From: <cristian.birsan@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/2] ARM: dts: at91: sama5d2-icp: add SAMA5D2-ICP
Date: Fri, 10 Apr 2020 19:43:20 +0300
Message-ID: <20200410164320.7658-3-cristian.birsan@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200410164320.7658-1-cristian.birsan@microchip.com>
References: <20200410164320.7658-1-cristian.birsan@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_094403_062179_E76B4A39 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Cristian Birsan <cristian.birsan@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Cristian Birsan <cristian.birsan@microchip.com>

This is the addition of the new SAMA5D2 Industrial Connectivity
Platform(ICP).

Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
---
 arch/arm/boot/dts/Makefile             |   1 +
 arch/arm/boot/dts/at91-sama5d2_icp.dts | 797 +++++++++++++++++++++++++
 2 files changed, 798 insertions(+)
 create mode 100644 arch/arm/boot/dts/at91-sama5d2_icp.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index d6546d2676b9..9631e5aa3cd0 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -55,6 +55,7 @@ dtb-$(CONFIG_SOC_SAM_V7) += \
 	at91-nattis-2-natte-2.dtb \
 	at91-sama5d27_som1_ek.dtb \
 	at91-sama5d27_wlsom1_ek.dtb \
+	at91-sama5d2_icp.dtb \
 	at91-sama5d2_ptc_ek.dtb \
 	at91-sama5d2_xplained.dtb \
 	at91-sama5d3_xplained.dtb \
diff --git a/arch/arm/boot/dts/at91-sama5d2_icp.dts b/arch/arm/boot/dts/at91-sama5d2_icp.dts
new file mode 100644
index 000000000000..cc9fa700eafb
--- /dev/null
+++ b/arch/arm/boot/dts/at91-sama5d2_icp.dts
@@ -0,0 +1,797 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * at91-sama5d2_icp.dts - Device Tree file for SAMA5D2-ICP board
+ *
+ *  Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries
+ *
+ *	Author: Radu Pirea & Razvan Stefanescu,
+ *		Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
+ *		Cristian Birsan <cristian.birsan@microchip.com>
+ */
+/dts-v1/;
+#include "sama5d2.dtsi"
+#include "sama5d2-pinfunc.h"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/mfd/atmel-flexcom.h>
+
+/ {
+	model = "Microchip SAMA5D2-ICP";
+	compatible = "microchip,sama5d2-icp", "atmel,sama5d27", "atmel,sama5d2", "atmel,sama5";
+
+	aliases {
+		serial0 = &uart0;	/* debug uart0 + mikro BUS 1 */
+		serial1 = &uart1;	/* mikro BUS 3 */
+		serial3 = &uart3;	/* mikro BUS 2 */
+		serial5 = &uart5;	/* flx2 */
+		i2c0	= &i2c0;
+		i2c1	= &i2c1;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	clocks {
+		slow_xtal {
+			clock-frequency = <32768>;
+		};
+
+		main_xtal {
+			clock-frequency = <12000000>;
+		};
+	};
+
+	gpio_keys {
+		compatible = "gpio-keys";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_key_gpio_default>;
+		status = "okay";
+
+		sw4 {
+			label = "USER_PB1";
+			gpios = <&pioA PIN_PD0 GPIO_ACTIVE_LOW>;
+			linux,code = <0x104>;
+			wakeup-source;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_led_gpio_default>;
+		status = "okay"; /* conflict with pwm0 */
+
+		red {
+			label = "red";
+			gpios = <&pioA PIN_PB0 GPIO_ACTIVE_HIGH>;
+		};
+
+		green {
+			label = "green";
+			gpios = <&pioA PIN_PB1 GPIO_ACTIVE_HIGH>;
+		};
+
+		blue {
+			label = "blue";
+			gpios = <&pioA PIN_PA31 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+};
+
+&adc {
+	vddana-supply = <&vdd_io_reg>;
+	vref-supply = <&vdd_io_reg>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_adc_default &pinctrl_adtrg_default>;
+	status = "okay";
+};
+
+&can0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_can0_default>;
+	status = "okay";
+};
+
+&can1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_can1_default>;
+	status = "okay";
+};
+
+&flx0 { /* mikrobus2 spi */
+	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_SPI>;
+	status = "okay";
+
+	spi2: spi@400 {
+		compatible = "atmel,at91rm9200-spi";
+		reg = <0x400 0x200>;
+		interrupts = <19 IRQ_TYPE_LEVEL_HIGH 7>;
+		clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
+		clock-names = "spi_clk";
+		cs-gpios = <&pioA PIN_PC0 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_mikrobus2_spi &pinctrl_ksz_spi_cs>;
+		atmel,fifo-size = <16>;
+		status = "okay";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		switch0: ksz8563@0 {
+			compatible = "microchip,ksz8563";
+			reg = <0>;
+			phy-mode = "mii";
+			reset-gpios = <&pioA PIN_PD4 GPIO_ACTIVE_LOW>;
+
+			spi-max-frequency = <500000>;
+			spi-cpha;
+			spi-cpol;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				port@0 {
+					reg = <0>;
+					label = "lan1";
+				};
+
+				port@1 {
+					reg = <1>;
+					label = "lan2";
+				};
+
+				port@2 {
+					reg = <2>;
+					label = "cpu";
+					ethernet = <&macb0>;
+					fixed-link {
+						speed = <100>;
+						full-duplex;
+					};
+				};
+			};
+		};
+	};
+};
+
+&flx2 {
+	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_USART>;
+	status = "okay";
+
+	uart5: serial@200 {
+		compatible = "atmel,at91sam9260-usart";
+		reg = <0x200 0x200>;
+		interrupts = <21 IRQ_TYPE_LEVEL_HIGH 7>;
+		dmas = <&dma0
+			(AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1) |
+				AT91_XDMAC_DT_PERID(15))>,
+				<&dma0
+				(AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1) |
+				AT91_XDMAC_DT_PERID(16))>;
+		dma-names = "tx", "rx";
+		clocks = <&pmc PMC_TYPE_PERIPHERAL 21>;
+		clock-names = "usart";
+		pinctrl-0 = <&pinctrl_flx2_default>;
+		pinctrl-names = "default";
+		atmel,use-dma-rx;
+		atmel,use-dma-tx;
+		status = "okay"; /* Conflict w/ qspi1. */
+	};
+};
+
+&flx3 { /* mikrobus1 spi */
+	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_SPI>;
+	status = "okay";
+
+	spi3: spi@400 {
+		compatible = "atmel,at91rm9200-spi";
+		reg = <0x400 0x200>;
+		interrupts = <22 IRQ_TYPE_LEVEL_HIGH 7>;
+		clocks = <&pmc PMC_TYPE_PERIPHERAL 22>;
+		clock-names = "spi_clk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_mikrobus1_spi &pinctrl_mikrobus1_spi_cs>;
+		atmel,fifo-size = <16>;
+		status = "okay";
+	};
+};
+
+&flx4 {
+	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_TWI>;
+	status = "okay";
+
+	i2c2: i2c@600 {
+		compatible = "atmel,sama5d2-i2c";
+		reg = <0x600 0x200>;
+		interrupts = <23 IRQ_TYPE_LEVEL_HIGH 7>;
+		dmas = <0>, <0>;
+		dma-names = "tx", "rx";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&pmc PMC_TYPE_PERIPHERAL 23>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_flx4_default>;
+		atmel,fifo-size = <16>;
+		status = "okay";
+
+		mcp16502@5b {
+			compatible = "microchip,mcp16502";
+			reg = <0x5b>;
+			status = "okay";
+			lpm-gpios = <&pioBU 7 GPIO_ACTIVE_LOW>;
+
+			regulators {
+				vdd_io_reg: VDD_IO {
+					regulator-name = "VDD_IO";
+					regulator-min-microvolt = <1200000>;
+					regulator-max-microvolt = <3700000>;
+					regulator-initial-mode = <2>;
+					regulator-allowed-modes = <2>, <4>;
+					regulator-always-on;
+
+					regulator-state-standby {
+						regulator-on-in-suspend;
+						regulator-mode = <4>;
+					};
+
+					regulator-state-mem {
+						regulator-off-in-suspend;
+						regulator-mode = <4>;
+					};
+				};
+
+				VDD_DDR {
+					regulator-name = "VDD_DDR";
+					regulator-min-microvolt = <600000>;
+					regulator-max-microvolt = <1850000>;
+					regulator-initial-mode = <2>;
+					regulator-allowed-modes = <2>, <4>;
+					regulator-always-on;
+
+					regulator-state-standby {
+						regulator-on-in-suspend;
+						regulator-mode = <4>;
+					};
+
+					regulator-state-mem {
+						regulator-on-in-suspend;
+						regulator-mode = <4>;
+					};
+				};
+
+				VDD_CORE {
+					regulator-name = "VDD_CORE";
+					regulator-min-microvolt = <600000>;
+					regulator-max-microvolt = <1850000>;
+					regulator-initial-mode = <2>;
+					regulator-allowed-modes = <2>, <4>;
+					regulator-always-on;
+
+					regulator-state-standby {
+						regulator-on-in-suspend;
+						regulator-mode = <4>;
+					};
+
+					regulator-state-mem {
+						regulator-off-in-suspend;
+						regulator-mode = <4>;
+					};
+				};
+
+				VDD_OTHER {
+					regulator-name = "VDD_OTHER";
+					regulator-min-microvolt = <600000>;
+					regulator-max-microvolt = <1850000>;
+					regulator-initial-mode = <2>;
+					regulator-allowed-modes = <2>, <4>;
+					regulator-always-on;
+
+					regulator-state-standby {
+						regulator-on-in-suspend;
+						regulator-mode = <4>;
+					};
+
+					regulator-state-mem {
+						regulator-off-in-suspend;
+						regulator-mode = <4>;
+					};
+				};
+
+				LDO1 {
+					regulator-name = "LDO1";
+					regulator-min-microvolt = <1200000>;
+					regulator-max-microvolt = <3700000>;
+					regulator-always-on;
+
+					regulator-state-standby {
+						regulator-on-in-suspend;
+					};
+
+					regulator-state-mem {
+						regulator-off-in-suspend;
+					};
+				};
+
+				LDO2 {
+					regulator-name = "LDO2";
+					regulator-min-microvolt = <1200000>;
+					regulator-max-microvolt = <3700000>;
+					regulator-always-on;
+
+					regulator-state-standby {
+						regulator-on-in-suspend;
+					};
+
+					regulator-state-mem {
+						regulator-off-in-suspend;
+					};
+				};
+
+			};
+		};
+	};
+};
+
+&i2c0 { /* mikrobus i2c */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_mikrobus_i2c>;
+	status = "okay";
+};
+
+&i2c1 {
+	dmas = <0>, <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1_default>;
+	status = "okay";
+
+	eeprom@50 {
+		compatible = "atmel,24c32";
+		reg = <0x50>;
+		pagesize = <16>;
+		status = "okay";
+	};
+
+	eeprom@52 {
+		compatible = "atmel,24c32";
+		reg = <0x52>;
+		pagesize = <16>;
+		status = "disabled";
+	};
+
+	eeprom@53 {
+		compatible = "atmel,24c32";
+		reg = <0x53>;
+		pagesize = <16>;
+		status = "disabled";
+	};
+};
+
+&macb0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_macb0_default &pinctrl_macb0_phy_irq &pinctrl_macb0_rst>;
+	phy-mode = "mii";
+	status = "okay";
+
+	fixed-link {
+		speed = <100>;
+		full-duplex;
+	};
+};
+
+&pioA {
+	pinctrl_adc_default: adc_default {
+		pinmux = <PIN_PD24__GPIO>,
+				<PIN_PD25__GPIO>,
+				<PIN_PD26__GPIO>;
+		bias-disable;
+	};
+
+	/*
+	 * The ADTRG pin can work on any edge type.
+	 * In here it's being pulled up, so need to
+	 * connect it to ground to get an edge e.g.
+	 * Trigger can be configured on falling, rise
+	 * or any edge, and the pull-up can be changed
+	 * to pull-down or left floating according to
+	 * needs.
+	 */
+	pinctrl_adtrg_default: adtrg_default {
+		pinmux = <PIN_PD31__ADTRG>;
+		bias-pull-up;
+	};
+
+	pinctrl_flx4_default: flx4_default {
+		pinmux = <PIN_PC28__FLEXCOM4_IO0>,
+			 <PIN_PC29__FLEXCOM4_IO1>;
+		bias-disable;
+	};
+
+	pinctrl_can0_default: can0_default {
+		pinmux = <PIN_PC10__CANTX0>,
+			 <PIN_PC11__CANRX0>;
+		bias-disable;
+	};
+
+	pinctrl_can1_default: can1_default {
+		pinmux = <PIN_PC26__CANTX1>,
+			 <PIN_PC27__CANRX1>;
+		bias-disable;
+	};
+
+	pinctrl_i2c1_default: i2c1_default {
+		pinmux = <PIN_PD19__TWD1>,
+			 <PIN_PD20__TWCK1>;
+		bias-disable;
+	};
+
+	pinctrl_key_gpio_default: key_gpio_default {
+		pinmux = <PIN_PD0__GPIO>;
+		bias-pull-up;
+	};
+
+	pinctrl_led_gpio_default: led_gpio_default {
+		pinmux = <PIN_PB0__GPIO>,
+			 <PIN_PB1__GPIO>,
+			 <PIN_PA31__GPIO>;
+		bias-pull-up;
+	};
+
+	pinctrl_qspi1_default: qspi1_default {
+		pinmux = <PIN_PA6__QSPI1_SCK>,
+			 <PIN_PA7__QSPI1_IO0>,
+			 <PIN_PA8__QSPI1_IO1>,
+			 <PIN_PA9__QSPI1_IO2>,
+			 <PIN_PA10__QSPI1_IO3>,
+			 <PIN_PA11__QSPI1_CS>;
+		bias-disable;
+	};
+
+	pinctrl_sdmmc0_default: sdmmc0_default {
+		cmd_data {
+			pinmux = <PIN_PA1__SDMMC0_CMD>,
+				 <PIN_PA2__SDMMC0_DAT0>,
+				 <PIN_PA3__SDMMC0_DAT1>,
+				 <PIN_PA4__SDMMC0_DAT2>,
+				 <PIN_PA5__SDMMC0_DAT3>;
+			bias-disable;
+		};
+
+		ck_cd {
+			pinmux = <PIN_PA0__SDMMC0_CK>,
+				 <PIN_PA13__SDMMC0_CD>;
+			bias-disable;
+		};
+	};
+
+	pinctrl_sdmmc1_default: sdmmc1_default {
+		cmd_data {
+			pinmux = <PIN_PA18__SDMMC1_DAT0>,
+				 <PIN_PA19__SDMMC1_DAT1>,
+				 <PIN_PA20__SDMMC1_DAT2>,
+				 <PIN_PA21__SDMMC1_DAT3>;
+			bias-disable;
+		};
+
+		ck_cd {
+			pinmux = <PIN_PA22__SDMMC1_CK>,
+				 <PIN_PA28__SDMMC1_CMD>;
+			bias-disable;
+		};
+	};
+
+	pinctrl_mikrobus_i2c: mikrobus_i2c {
+		pinmux = <PIN_PD22__TWCK0>,
+			 <PIN_PD21__TWD0>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus1_an: mikrobus1_an {
+		pinmux = <PIN_PD26__GPIO>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus1_rst: mikrobus1_rst {
+		pinmux = <PIN_PC5__GPIO>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus1_spi_cs: mikrobus1_spi_cs {
+		pinmux = <PIN_PC21__FLEXCOM3_IO3>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus1_spi: mikrobus1_spi {
+		pinmux = <PIN_PC20__FLEXCOM3_IO0>,
+			 <PIN_PC19__FLEXCOM3_IO1>,
+			 <PIN_PC18__FLEXCOM3_IO2>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus1_pwm: mikrobus1_pwm {
+		pinmux = <PIN_PC4__TIOB1>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus1_int: mikrobus1_int {
+		pinmux = <PIN_PC3__GPIO>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus1_uart: mikrobus1_uart {
+		pinmux = <PIN_PB26__URXD0>,
+			 <PIN_PB27__UTXD0>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus2_an: mikrobus2_an {
+		pinmux = <PIN_PD25__GPIO>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus2_rst: mikrobus2_rst {
+		pinmux = <PIN_PB24__GPIO>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus2_spi_cs: mikrobus2_spi_cs {
+		pinmux = <PIN_PB31__FLEXCOM0_IO3>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus2_spi: mikrobus2_spi {
+		pinmux = <PIN_PB28__FLEXCOM0_IO0>,
+			 <PIN_PB29__FLEXCOM0_IO1>,
+			 <PIN_PB30__FLEXCOM0_IO2>;
+		bias-disable;
+	};
+
+	pinctrl_ksz_spi_cs: ksz_spi_cs {
+		pinmux = <PIN_PC0__GPIO>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus2_pwm: mikrobus2_pwm {
+		pinmux = <PIN_PB23__TIOB2>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus2_int: mikrobus2_int {
+		pinmux = <PIN_PB22__GPIO>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus2_uart: mikrobus2_uart {
+		pinmux = <PIN_PC12__URXD3>,
+			 <PIN_PC13__UTXD3>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus3_an: mikrobus3_an {
+		pinmux = <PIN_PD24__GPIO>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus3_rst: mikrobus3_rst {
+		pinmux = <PIN_PB21__GPIO>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus3_spi_cs: mikrobus3_spi_cs {
+		pinmux = <PIN_PA17__SPI0_NPCS0>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus3_spi: mikrobus3_spi {
+		pinmux = <PIN_PA14__SPI0_SPCK>,
+			 <PIN_PA16__SPI0_MISO>,
+			 <PIN_PA15__SPI0_MOSI>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus3_pwm: mikrobus3_pwm {
+		pinmux = <PIN_PB20__TIOB3>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus3_int: mikrobus3_int {
+		pinmux = <PIN_PB18__GPIO>;
+		bias-disable;
+	};
+
+	pinctrl_mikrobus3_uart: mikrobus3_uart {
+		pinmux = <PIN_PC7__URXD1>,
+			 <PIN_PC8__UTXD1>;
+		bias-disable;
+	};
+
+	pinctrl_usb_default: usb_default {
+		pinmux = <PIN_PC17__GPIO>;
+		bias-disable;
+	};
+
+	pinctrl_usba_vbus: usba_vbus {
+		pinmux = <PIN_PD23__GPIO>;
+		bias-disable;
+	};
+
+	pinctrl_pwm0_pwm2_default: pwm0_pwm2_default {
+		pinmux = <PIN_PB5__PWMH2>,
+			 <PIN_PB6__PWML2>;
+		bias-pull-up;
+	};
+
+	pinctrl_macb0_default: macb0_default {
+		pinmux = <PIN_PD1__GRXCK>,
+			 <PIN_PD2__GTXER>,
+			 <PIN_PD5__GRX2>,
+			 <PIN_PD6__GRX3>,
+			 <PIN_PD7__GTX2>,
+			 <PIN_PD8__GTX3>,
+			 <PIN_PD9__GTXCK>,
+			 <PIN_PD10__GTXEN>,
+			 <PIN_PD11__GRXDV>,
+			 <PIN_PD12__GRXER>,
+			 <PIN_PD13__GRX0>,
+			 <PIN_PD14__GRX1>,
+			 <PIN_PD15__GTX0>,
+			 <PIN_PD16__GTX1>,
+			 <PIN_PD17__GMDC>,
+			 <PIN_PD18__GMDIO>;
+		bias-disable;
+	};
+
+	pinctrl_macb0_phy_irq: macb0_phy_irq {
+		pinmux = <PIN_PD3__GPIO>;
+		bias-disable;
+	};
+
+	pinctrl_macb0_rst: macb0_sw_rst {
+		pinmux = <PIN_PD4__GPIO>;
+		bias-disable;
+	};
+
+	pinctrl_flx2_default: flx2_default {
+		pinmux = <PIN_PA6__FLEXCOM2_IO0>,
+			 <PIN_PA7__FLEXCOM2_IO1>,
+			 <PIN_PA9__FLEXCOM2_IO3>,
+			 <PIN_PA10__FLEXCOM2_IO4>;
+		bias-disable;
+	};
+};
+
+&pwm0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm0_pwm2_default>;
+	status = "disabled"; /* conflict with leds, HSIC */
+};
+
+&qspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_qspi1_default>;
+	status = "disabled"; /* Conflict with wilc_pwrseq, flx2 */
+
+	flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <80000000>;
+		spi-tx-bus-width = <4>;
+		spi-rx-bus-width = <4>;
+		m25p,fast-read;
+
+		at91bootstrap@0 {
+			label = "qspi: at91bootstrap";
+			reg = <0x00000000 0x00040000>;
+		};
+
+		bootloader@40000 {
+			label = "qspi: bootloader";
+			reg = <0x00040000 0x000c0000>;
+		};
+
+		bootloaderenvred@100000 {
+			label = "qspi: bootloader env redundant";
+			reg = <0x00100000 0x00040000>;
+		};
+
+		bootloaderenv@140000 {
+			label = "qspi: bootloader env";
+			reg = <0x00140000 0x00040000>;
+		};
+
+		dtb@180000 {
+			label = "qspi: device tree";
+			reg = <0x00180000 0x00080000>;
+		};
+
+		kernel@200000 {
+			label = "qspi: kernel";
+			reg = <0x00200000 0x00600000>;
+		};
+	};
+};
+
+&sdmmc0 {
+	no-1-8-v;
+	bus-width = <4>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sdmmc0_default>;
+	status = "okay";
+};
+
+&shutdown_controller {
+	atmel,shdwc-debouncer = <976>;
+	atmel,wakeup-rtc-timer;
+
+	input@0 {
+		reg = <0>;
+		atmel,wakeup-type = "low";
+	};
+};
+
+&spi0 {  /* mikrobus3 spi */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_mikrobus3_spi &pinctrl_mikrobus3_spi_cs>;
+	status = "okay";
+};
+
+&tcb0 {
+	timer0: timer@0 {
+		compatible = "atmel,tcb-timer";
+		reg = <0>;
+	};
+
+	timer1: timer@1 {
+		compatible = "atmel,tcb-timer";
+		reg = <1>;
+	};
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_mikrobus1_uart>;
+	atmel,use-dma-rx;
+	atmel,use-dma-tx;
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_mikrobus3_uart>;
+	atmel,use-dma-rx;
+	atmel,use-dma-tx;
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_mikrobus2_uart>;
+	atmel,use-dma-rx;
+	atmel,use-dma-tx;
+	status = "okay";
+};
+
+&usb0 {
+	atmel,vbus-gpio = <&pioA PIN_PD23 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usba_vbus>;
+	status = "okay";
+};
+
+&usb1 {
+	num-ports = <3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usb_default>;
+	status = "okay";
+};
+
+&usb2 {
+	phy_type = "hsic";
+	status = "okay";
+};
+
+&watchdog {
+	status = "okay";
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
