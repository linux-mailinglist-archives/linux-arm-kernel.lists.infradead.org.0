Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AED1C949D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFLXpLDWb2MuRLAvnOJzrFgVcpMIvd36HwqrM4hmDLQ=; b=F4uHILIuZQkign
	gQ6wG06WLZQTIa3YI0hYm2e/2NTAu3csu6znYcv4iceLcWphKQJYozPMiw/yWdZ8GUx65uJpi0GPB
	xGnO0ERN6Gf6A0xYHjrZmTfmXE2So0Lay0BIe0t1xRsqVwyXXtiWeI0vpeIqgp3CIKsM5Kb2yTVtl
	ioNNpMe/ub4dW4VVgUxV659Jf0LdzWNlgchdC8MZ4PtpRcdMd/3KTcIzjDC4+6A0AaT8XjxMzULBM
	5UKeI4ZxN4e78MhUvsF7F/j8cKFCcby0RVmVYp/t/ZZiV34smLk1cwyvGoHVOHyZwbUSL+Gpnuox7
	QC3BIhKPZm4msryPMW5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiFT-00054Y-M5; Thu, 07 May 2020 15:15:43 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWiDu-0001cY-7X
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:14:11 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49HxnS332sz1rtMh;
 Thu,  7 May 2020 17:14:04 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49HxnS2DlZz1qtwK;
 Thu,  7 May 2020 17:14:04 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id ZjDF0UIHn9tA; Thu,  7 May 2020 17:14:01 +0200 (CEST)
X-Auth-Info: TMO0D7HSkcLfm+7cN5p/fjwkmTB1mXNjV28NvcVewZk=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu,  7 May 2020 17:14:01 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/4] ARM: dts: stm32: Split Avenger96 into DHCOR SoM and
 Avenger96 board
Date: Thu,  7 May 2020 17:13:48 +0200
Message-Id: <20200507151348.246134-4-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200507151348.246134-1-marex@denx.de>
References: <20200507151348.246134-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_081406_766568_8716D181 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Marek Vasut <marex@denx.de>, Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Avenger96 is in fact an assembly of DH Electronics DHCOR SoM on top
of an Avenger96 reference board. The DHCOR SoM can be populated with any
STM32MP15xx. Split the DTs to reflect this such that the common SoM and
Avenger96 parts are now in stm32mp15xx-dhcor-*dtsi and a specific example
implementation of STM32MP157A SoM and Avenger96 board is separated into
stm32mp157a-dhcor-*dts* . The stm32mp157a-avenger96.dts is retained for
the sake of backward naming compatibility.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/stm32mp157a-avenger96.dts   | 618 +-----------------
 .../boot/dts/stm32mp157a-dhcor-avenger96.dts  |  31 +
 arch/arm/boot/dts/stm32mp157a-dhcor-som.dtsi  |  15 +
 .../boot/dts/stm32mp15xx-dhcor-avenger96.dtsi | 401 ++++++++++++
 .../arm/boot/dts/stm32mp15xx-dhcor-io1v8.dtsi |  23 +
 arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi  | 209 ++++++
 7 files changed, 683 insertions(+), 615 deletions(-)
 create mode 100644 arch/arm/boot/dts/stm32mp157a-dhcor-avenger96.dts
 create mode 100644 arch/arm/boot/dts/stm32mp157a-dhcor-som.dtsi
 create mode 100644 arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
 create mode 100644 arch/arm/boot/dts/stm32mp15xx-dhcor-io1v8.dtsi
 create mode 100644 arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index f43467b02bcd..d0f6c5838568 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1029,6 +1029,7 @@ dtb-$(CONFIG_ARCH_STM32) += \
 	stm32h743i-eval.dtb \
 	stm32h743i-disco.dtb \
 	stm32mp157a-avenger96.dtb \
+	stm32mp157a-dhcor-avenger96.dtb \
 	stm32mp157a-dk1.dtb \
 	stm32mp157c-dhcom-pdk2.dtb \
 	stm32mp157c-dk2.dtb \
diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index a9f3ba9da170..8a6eaca994d1 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -2,622 +2,10 @@
 /*
  * Copyright (C) Linaro Ltd 2019 - All Rights Reserved
  * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+ * Copyright (C) 2020 Marek Vasut <marex@denx.de>
  */
 
 /dts-v1/;
 
-#include "stm32mp157.dtsi"
-#include "stm32mp15-pinctrl.dtsi"
-#include "stm32mp15xxac-pinctrl.dtsi"
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/mfd/st,stpmic1.h>
-
-/ {
-	model = "Arrow Electronics STM32MP157A Avenger96 board";
-	compatible = "arrow,stm32mp157a-avenger96", "st,stm32mp157";
-
-	aliases {
-		ethernet0 = &ethernet0;
-		mmc0 = &sdmmc1;
-		serial0 = &uart4;
-		serial1 = &uart7;
-		serial2 = &usart2;
-		spi0 = &qspi;
-	};
-
-	/* XTal Q1 */
-	cec_clock: clk-cec-fixed {
-		#clock-cells = <0>;
-		compatible = "fixed-clock";
-		clock-frequency = <24000000>;
-	};
-
-	chosen {
-		stdout-path = "serial0:115200n8";
-	};
-
-	hdmi-out {
-		compatible = "hdmi-connector";
-		type = "a";
-
-		port {
-			hdmi_con: endpoint {
-				remote-endpoint = <&adv7513_out>;
-			};
-		};
-	};
-
-	memory@c0000000 {
-		device_type = "memory";
-		reg = <0xc0000000 0x40000000>;
-	};
-
-	led {
-		compatible = "gpio-leds";
-		led1 {
-			label = "green:user0";
-			gpios = <&gpioz 7 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "heartbeat";
-			default-state = "off";
-		};
-
-		led2 {
-			label = "green:user1";
-			gpios = <&gpiof 3 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "mmc0";
-			default-state = "off";
-		};
-
-		led3 {
-			label = "green:user2";
-			gpios = <&gpiog 0 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "mmc1";
-			default-state = "off";
-		};
-
-		led4 {
-			label = "green:user3";
-			gpios = <&gpiog 1 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "none";
-			default-state = "off";
-			panic-indicator;
-		};
-	};
-
-	sd_switch: regulator-sd_switch {
-		compatible = "regulator-gpio";
-		regulator-name = "sd_switch";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <2900000>;
-		regulator-type = "voltage";
-		regulator-always-on;
-
-		gpios = <&gpioi 5 GPIO_ACTIVE_HIGH>;
-		gpios-states = <0>;
-		states = <1800000 0x1>,
-			 <2900000 0x0>;
-	};
-
-	sound {
-		compatible = "audio-graph-card";
-		label = "STM32MP1-AV96-HDMI";
-		dais = <&sai2a_port>;
-		status = "okay";
-	};
-
-	/* Enpirion EP3A8LQI U2 on the DHCOR */
-	vdd_io: regulator-buck-io {
-		compatible = "regulator-fixed";
-		regulator-name = "buck-io";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		regulator-always-on;
-		regulator-boot-on;
-		vin-supply = <&vdd>;
-	};
-
-	wlan_pwr: regulator-wlan {
-		compatible = "regulator-fixed";
-
-		regulator-name = "wl-reg";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-
-		gpios = <&gpioz 3 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-	};
-};
-
-&adc {
-	pinctrl-names = "default";
-	pinctrl-0 = <&adc12_ain_pins_b>;
-	vdd-supply = <&vdd>;
-	vdda-supply = <&vdda>;
-	vref-supply = <&vdda>;
-	status = "okay";
-
-	adc1: adc@0 {
-		st,adc-channels = <0 1 6>;
-		st,min-sample-time-nsecs = <5000>;
-		status = "okay";
-	};
-
-	adc2: adc@100 {
-		st,adc-channels = <0 1 2>;
-		st,min-sample-time-nsecs = <5000>;
-		status = "okay";
-	};
-};
-
-&ethernet0 {
-	status = "okay";
-	pinctrl-0 = <&ethernet0_rgmii_pins_c>;
-	pinctrl-1 = <&ethernet0_rgmii_sleep_pins_c>;
-	pinctrl-names = "default", "sleep";
-	phy-mode = "rgmii";
-	max-speed = <1000>;
-	phy-handle = <&phy0>;
-
-	mdio0 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		compatible = "snps,dwmac-mdio";
-		reset-gpios = <&gpioz 2 GPIO_ACTIVE_LOW>;
-		reset-delay-us = <1000>;
-
-		phy0: ethernet-phy@7 {
-			reg = <7>;
-
-			rxc-skew-ps = <1500>;
-			rxdv-skew-ps = <540>;
-			rxd0-skew-ps = <420>;
-			rxd1-skew-ps = <420>;
-			rxd2-skew-ps = <420>;
-			rxd3-skew-ps = <420>;
-
-			txc-skew-ps = <1440>;
-			txen-skew-ps = <540>;
-			txd0-skew-ps = <420>;
-			txd1-skew-ps = <420>;
-			txd2-skew-ps = <420>;
-			txd3-skew-ps = <420>;
-		};
-	};
-};
-
-&i2c1 {	/* X6 I2C1 */
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c1_pins_b>;
-	i2c-scl-rising-time-ns = <185>;
-	i2c-scl-falling-time-ns = <20>;
-	status = "okay";
-	/delete-property/dmas;
-	/delete-property/dma-names;
-};
-
-&i2c2 {	/* X6 I2C2 */
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c2_pins_c>;
-	i2c-scl-rising-time-ns = <185>;
-	i2c-scl-falling-time-ns = <20>;
-	status = "okay";
-	/delete-property/dmas;
-	/delete-property/dma-names;
-};
-
-&i2c4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c4_pins_a>;
-	i2c-scl-rising-time-ns = <185>;
-	i2c-scl-falling-time-ns = <20>;
-	status = "okay";
-	/delete-property/dmas;
-	/delete-property/dma-names;
-
-	pmic: stpmic@33 {
-		compatible = "st,stpmic1";
-		reg = <0x33>;
-		interrupts-extended = <&gpioa 0 IRQ_TYPE_EDGE_FALLING>;
-		interrupt-controller;
-		#interrupt-cells = <2>;
-		status = "okay";
-
-		regulators {
-			compatible = "st,stpmic1-regulators";
-
-			ldo1-supply = <&v3v3>;
-			ldo2-supply = <&v3v3>;
-			ldo3-supply = <&vdd_ddr>;
-			ldo5-supply = <&v3v3>;
-			ldo6-supply = <&v3v3>;
-			pwr_sw1-supply = <&bst_out>;
-			pwr_sw2-supply = <&bst_out>;
-
-			vddcore: buck1 {
-				regulator-name = "vddcore";
-				regulator-min-microvolt = <1200000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-always-on;
-				regulator-initial-mode = <0>;
-				regulator-over-current-protection;
-			};
-
-			vdd_ddr: buck2 {
-				regulator-name = "vdd_ddr";
-				regulator-min-microvolt = <1350000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-always-on;
-				regulator-initial-mode = <0>;
-				regulator-over-current-protection;
-			};
-
-			vdd: buck3 {
-				regulator-name = "vdd";
-				regulator-min-microvolt = <2900000>;
-				regulator-max-microvolt = <2900000>;
-				regulator-always-on;
-				regulator-initial-mode = <0>;
-				regulator-over-current-protection;
-			};
-
-			v3v3: buck4 {
-				regulator-name = "v3v3";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-				regulator-over-current-protection;
-				regulator-initial-mode = <0>;
-			};
-
-			vdda: ldo1 {
-				regulator-name = "vdda";
-				regulator-min-microvolt = <2900000>;
-				regulator-max-microvolt = <2900000>;
-				interrupts = <IT_CURLIM_LDO1 0>;
-			};
-
-			v2v8: ldo2 {
-				regulator-name = "v2v8";
-				regulator-min-microvolt = <2800000>;
-				regulator-max-microvolt = <2800000>;
-				interrupts = <IT_CURLIM_LDO2 0>;
-			};
-
-			vtt_ddr: ldo3 {
-				regulator-name = "vtt_ddr";
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <750000>;
-				regulator-always-on;
-				regulator-over-current-protection;
-			};
-
-			vdd_usb: ldo4 {
-				regulator-name = "vdd_usb";
-				interrupts = <IT_CURLIM_LDO4 0>;
-			};
-
-			vdd_sd: ldo5 {
-				regulator-name = "vdd_sd";
-				regulator-min-microvolt = <2900000>;
-				regulator-max-microvolt = <2900000>;
-				interrupts = <IT_CURLIM_LDO5 0>;
-				regulator-boot-on;
-			};
-
-			v1v8: ldo6 {
-				regulator-name = "v1v8";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				interrupts = <IT_CURLIM_LDO6 0>;
-				regulator-enable-ramp-delay = <300000>;
-			};
-
-			vref_ddr: vref_ddr {
-				regulator-name = "vref_ddr";
-				regulator-always-on;
-			};
-
-			bst_out: boost {
-				regulator-name = "bst_out";
-				interrupts = <IT_OCP_BOOST 0>;
-			};
-
-			vbus_otg: pwr_sw1 {
-				regulator-name = "vbus_otg";
-				interrupts = <IT_OCP_OTG 0>;
-				regulator-active-discharge = <1>;
-			};
-
-			vbus_sw: pwr_sw2 {
-				regulator-name = "vbus_sw";
-				interrupts = <IT_OCP_SWOUT 0>;
-				regulator-active-discharge = <1>;
-			};
-		};
-
-		onkey {
-			compatible = "st,stpmic1-onkey";
-			interrupts = <IT_PONKEY_F 0>, <IT_PONKEY_R 1>;
-			interrupt-names = "onkey-falling", "onkey-rising";
-			status = "okay";
-		};
-
-		watchdog {
-			compatible = "st,stpmic1-wdt";
-			status = "disabled";
-		};
-	};
-
-	hdmi-transmitter@3d {
-		compatible = "adi,adv7513";
-		reg = <0x3d>, <0x2d>, <0x4d>, <0x5d>;
-		reg-names = "main", "cec", "edid", "packet";
-		clocks = <&cec_clock>;
-		clock-names = "cec";
-
-		avdd-supply = <&v3v3>;
-		dvdd-supply = <&v3v3>;
-		pvdd-supply = <&v3v3>;
-		dvdd-3v-supply = <&v3v3>;
-		bgvdd-supply = <&v3v3>;
-
-		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
-		interrupt-parent = <&gpiog>;
-
-		status = "okay";
-
-		adi,input-depth = <8>;
-		adi,input-colorspace = "rgb";
-		adi,input-clock = "1x";
-		adi,input-style = <1>;
-		adi,input-justification = "evenly";
-
-		ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			port@0 {
-				reg = <0>;
-				adv7513_in: endpoint {
-					remote-endpoint = <&ltdc_ep0_out>;
-				};
-			};
-
-			port@1 {
-				reg = <1>;
-				adv7513_out: endpoint {
-					remote-endpoint = <&hdmi_con>;
-				};
-			};
-
-			port@2 {
-				reg = <2>;
-				adv7513_i2s0: endpoint {
-					remote-endpoint = <&sai2a_endpoint>;
-				};
-			};
-		};
-	};
-
-	eeprom@53 {
-		compatible = "atmel,24c02";
-		reg = <0x53>;
-		pagesize = <16>;
-	};
-};
-
-&iwdg2 {
-	timeout-sec = <32>;
-	status = "okay";
-};
-
-&ltdc {
-	pinctrl-names = "default", "sleep";
-	pinctrl-0 = <&ltdc_pins_d>;
-	pinctrl-1 = <&ltdc_sleep_pins_d>;
-	status = "okay";
-
-	port {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		ltdc_ep0_out: endpoint@0 {
-			reg = <0>;
-			remote-endpoint = <&adv7513_in>;
-		};
-	};
-};
-
-&m_can1 {
-	pinctrl-names = "default", "sleep";
-	pinctrl-0 = <&m_can1_pins_b>;
-	pinctrl-1 = <&m_can1_sleep_pins_b>;
-	status = "disabled";
-};
-
-&m_can2 {
-	pinctrl-names = "default", "sleep";
-	pinctrl-0 = <&m_can2_pins_a>;
-	pinctrl-1 = <&m_can2_sleep_pins_a>;
-	status = "disabled";
-};
-
-&pwr_regulators {
-	vdd-supply = <&vdd_io>;
-	vdd_3v3_usbfs-supply = <&vdd_usb>;
-};
-
-&qspi {
-	pinctrl-names = "default", "sleep";
-	pinctrl-0 = <&qspi_clk_pins_a &qspi_bk1_pins_a>;
-	pinctrl-1 = <&qspi_clk_sleep_pins_a &qspi_bk1_sleep_pins_a>;
-	reg = <0x58003000 0x1000>, <0x70000000 0x200000>;
-	#address-cells = <1>;
-	#size-cells = <0>;
-	status = "okay";
-
-	flash0: spi-flash@0 {
-		compatible = "jedec,spi-nor";
-		reg = <0>;
-		spi-rx-bus-width = <4>;
-		spi-max-frequency = <108000000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-	};
-};
-
-&rng1 {
-	status = "okay";
-};
-
-&rtc {
-	status = "okay";
-};
-
-&sai2 {
-	clocks = <&rcc SAI2>, <&rcc PLL3_Q>, <&rcc PLL3_R>;
-	pinctrl-names = "default", "sleep";
-	pinctrl-0 = <&sai2a_pins_c>;
-	pinctrl-1 = <&sai2a_sleep_pins_c>;
-	clock-names = "pclk", "x8k", "x11k";
-	status = "okay";
-
-	sai2a: audio-controller@4400b004 {
-		#clock-cells = <0>;
-		dma-names = "tx";
-		clocks = <&rcc SAI2_K>;
-		clock-names = "sai_ck";
-		status = "okay";
-
-		sai2a_port: port {
-			sai2a_endpoint: endpoint {
-				remote-endpoint = <&adv7513_i2s0>;
-				format = "i2s";
-				mclk-fs = <256>;
-			};
-		};
-	};
-};
-
-&sdmmc1 {
-	pinctrl-names = "default", "opendrain", "sleep";
-	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_b>;
-	pinctrl-1 = <&sdmmc1_b4_od_pins_a &sdmmc1_dir_pins_b>;
-	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a &sdmmc1_dir_sleep_pins_b>;
-	cd-gpios = <&gpioi 8 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
-	disable-wp;
-	st,sig-dir;
-	st,neg-edge;
-	st,use-ckin;
-	bus-width = <4>;
-	vmmc-supply = <&vdd_sd>;
-	vqmmc-supply = <&sd_switch>;
-	status = "okay";
-};
-
-&sdmmc2 {
-	pinctrl-names = "default", "opendrain", "sleep";
-	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_b>;
-	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_b>;
-	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_b>;
-	bus-width = <8>;
-	mmc-ddr-1_8v;
-	no-sd;
-	no-sdio;
-	non-removable;
-	st,neg-edge;
-	vmmc-supply = <&v3v3>;
-	vqmmc-supply = <&vdd_io>;
-	status = "okay";
-};
-
-&sdmmc3 {
-	pinctrl-names = "default", "opendrain", "sleep";
-	pinctrl-0 = <&sdmmc3_b4_pins_b>;
-	pinctrl-1 = <&sdmmc3_b4_od_pins_b>;
-	pinctrl-2 = <&sdmmc3_b4_sleep_pins_b>;
-	broken-cd;
-	non-removable;
-	st,neg-edge;
-	bus-width = <4>;
-	vmmc-supply = <&wlan_pwr>;
-	status = "okay";
-
-	#address-cells = <1>;
-	#size-cells = <0>;
-	brcmf: bcrmf@1 {
-		reg = <1>;
-		compatible = "brcm,bcm4329-fmac";
-	};
-};
-
-&spi2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&spi2_pins_a>;
-	cs-gpios = <&gpioi 0 0>;
-	status = "disabled";
-	/delete-property/dmas;
-	/delete-property/dma-names;
-};
-
-&uart4 {
-	/* On Low speed expansion header */
-	label = "LS-UART1";
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart4_pins_b>;
-	status = "okay";
-};
-
-&uart7 {
-	/* On Low speed expansion header */
-	label = "LS-UART0";
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart7_pins_a>;
-	status = "okay";
-};
-
-/* Bluetooth */
-&usart2 {
-	pinctrl-names = "default", "sleep";
-	pinctrl-0 = <&usart2_pins_a>;
-	pinctrl-1 = <&usart2_sleep_pins_a>;
-	st,hw-flow-ctrl;
-	status = "okay";
-
-	bluetooth {
-		compatible = "brcm,bcm43438-bt";
-		max-speed = <3000000>;
-		shutdown-gpios = <&gpioz 6 GPIO_ACTIVE_HIGH>;
-	};
-};
-
-&usbh_ehci {
-	phys = <&usbphyc_port0>;
-	phy-names = "usb";
-	status = "okay";
-};
-
-&usbotg_hs {
-	pinctrl-0 = <&usbotg_hs_pins_a>;
-	pinctrl-names = "default";
-	phy-names = "usb2-phy";
-	phys = <&usbphyc_port1 0>;
-	status = "okay";
-	vbus-supply = <&vbus_otg>;
-};
-
-&usbphyc {
-	status = "okay";
-};
-
-&usbphyc_port0 {
-	phy-supply = <&vdd_usb>;
-	vdda1v1-supply = <&reg11>;
-	vdda1v8-supply = <&reg18>;
-};
-
-&usbphyc_port1 {
-	phy-supply = <&vdd_usb>;
-	vdda1v1-supply = <&reg11>;
-	vdda1v8-supply = <&reg18>;
-};
+/* This DT is here only for backward compatibility */
+#include "stm32mp157a-dhcor-avenger96.dts"
diff --git a/arch/arm/boot/dts/stm32mp157a-dhcor-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-dhcor-avenger96.dts
new file mode 100644
index 000000000000..010baa7f8afa
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp157a-dhcor-avenger96.dts
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
+/*
+ * Copyright (C) Linaro Ltd 2019 - All Rights Reserved
+ * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+ * Copyright (C) 2020 Marek Vasut <marex@denx.de>
+ */
+
+/dts-v1/;
+
+#include "stm32mp157a-dhcor-som.dtsi"
+#include "stm32mp15xx-dhcor-avenger96.dtsi"
+
+/ {
+	model = "Arrow Electronics STM32MP157A Avenger96 board";
+	compatible = "arrow,stm32mp157a-avenger96", "dh,stm32mp157a-dhcor-som",
+		     "st,stm32mp157";
+};
+
+&m_can1 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&m_can1_pins_b>;
+	pinctrl-1 = <&m_can1_sleep_pins_b>;
+	status = "disabled";
+};
+
+&m_can2 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&m_can2_pins_a>;
+	pinctrl-1 = <&m_can2_sleep_pins_a>;
+	status = "disabled";
+};
diff --git a/arch/arm/boot/dts/stm32mp157a-dhcor-som.dtsi b/arch/arm/boot/dts/stm32mp157a-dhcor-som.dtsi
new file mode 100644
index 000000000000..41428381e19c
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp157a-dhcor-som.dtsi
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
+/*
+ * Copyright (C) Linaro Ltd 2019 - All Rights Reserved
+ * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+ * Copyright (C) 2020 Marek Vasut <marex@denx.de>
+ */
+
+#include "stm32mp157.dtsi"
+#include "stm32mp15xc.dtsi"
+#include "stm32mp15xx-dhcor-som.dtsi"
+
+/ {
+	model = "DH Electronics STM32MP157A DHCOR SoM";
+	compatible = "dh,stm32mp157a-dhcor-som", "st,stm32mp157";
+};
diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
new file mode 100644
index 000000000000..930202742a3f
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
@@ -0,0 +1,401 @@
+// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
+/*
+ * Copyright (C) Linaro Ltd 2019 - All Rights Reserved
+ * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+ * Copyright (C) 2020 Marek Vasut <marex@denx.de>
+ */
+
+/* Avenger96 uses DHCOR SoM configured for 1V8 IO operation */
+#include "stm32mp15xx-dhcor-io1v8.dtsi"
+
+/ {
+	aliases {
+		ethernet0 = &ethernet0;
+		mmc0 = &sdmmc1;
+		serial0 = &uart4;
+		serial1 = &uart7;
+		serial2 = &usart2;
+		spi0 = &qspi;
+	};
+
+	/* XTal Q1 */
+	cec_clock: clk-cec-fixed {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <24000000>;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	hdmi-out {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con: endpoint {
+				remote-endpoint = <&adv7513_out>;
+			};
+		};
+	};
+
+	led {
+		compatible = "gpio-leds";
+		led1 {
+			label = "green:user0";
+			gpios = <&gpioz 7 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+			default-state = "off";
+		};
+
+		led2 {
+			label = "green:user1";
+			gpios = <&gpiof 3 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "mmc0";
+			default-state = "off";
+		};
+
+		led3 {
+			label = "green:user2";
+			gpios = <&gpiog 0 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "mmc1";
+			default-state = "off";
+		};
+
+		led4 {
+			label = "green:user3";
+			gpios = <&gpiog 1 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "none";
+			default-state = "off";
+			panic-indicator;
+		};
+	};
+
+	sd_switch: regulator-sd_switch {
+		compatible = "regulator-gpio";
+		regulator-name = "sd_switch";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <2900000>;
+		regulator-type = "voltage";
+		regulator-always-on;
+
+		gpios = <&gpioi 5 GPIO_ACTIVE_HIGH>;
+		gpios-states = <0>;
+		states = <1800000 0x1>,
+			 <2900000 0x0>;
+	};
+
+	sound {
+		compatible = "audio-graph-card";
+		label = "STM32MP1-AV96-HDMI";
+		dais = <&sai2a_port>;
+		status = "okay";
+	};
+
+	wlan_pwr: regulator-wlan {
+		compatible = "regulator-fixed";
+
+		regulator-name = "wl-reg";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpios = <&gpioz 3 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+};
+
+&adc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&adc12_ain_pins_b>;
+	vdd-supply = <&vdd>;
+	vdda-supply = <&vdda>;
+	vref-supply = <&vdda>;
+	status = "okay";
+
+	adc1: adc@0 {
+		st,adc-channels = <0 1 6>;
+		st,min-sample-time-nsecs = <5000>;
+		status = "okay";
+	};
+
+	adc2: adc@100 {
+		st,adc-channels = <0 1 2>;
+		st,min-sample-time-nsecs = <5000>;
+		status = "okay";
+	};
+};
+
+&ethernet0 {
+	status = "okay";
+	pinctrl-0 = <&ethernet0_rgmii_pins_c>;
+	pinctrl-1 = <&ethernet0_rgmii_sleep_pins_c>;
+	pinctrl-names = "default", "sleep";
+	phy-mode = "rgmii";
+	max-speed = <1000>;
+	phy-handle = <&phy0>;
+
+	mdio0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "snps,dwmac-mdio";
+		reset-gpios = <&gpioz 2 GPIO_ACTIVE_LOW>;
+		reset-delay-us = <1000>;
+
+		phy0: ethernet-phy@7 {
+			reg = <7>;
+
+			rxc-skew-ps = <1500>;
+			rxdv-skew-ps = <540>;
+			rxd0-skew-ps = <420>;
+			rxd1-skew-ps = <420>;
+			rxd2-skew-ps = <420>;
+			rxd3-skew-ps = <420>;
+
+			txc-skew-ps = <1440>;
+			txen-skew-ps = <540>;
+			txd0-skew-ps = <420>;
+			txd1-skew-ps = <420>;
+			txd2-skew-ps = <420>;
+			txd3-skew-ps = <420>;
+		};
+	};
+};
+
+&i2c1 {	/* X6 I2C1 */
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c1_pins_b>;
+	i2c-scl-rising-time-ns = <185>;
+	i2c-scl-falling-time-ns = <20>;
+	status = "okay";
+	/delete-property/dmas;
+	/delete-property/dma-names;
+};
+
+&i2c2 {	/* X6 I2C2 */
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c2_pins_c>;
+	i2c-scl-rising-time-ns = <185>;
+	i2c-scl-falling-time-ns = <20>;
+	status = "okay";
+	/delete-property/dmas;
+	/delete-property/dma-names;
+};
+
+&i2c4 {
+	hdmi-transmitter@3d {
+		compatible = "adi,adv7513";
+		reg = <0x3d>, <0x2d>, <0x4d>, <0x5d>;
+		reg-names = "main", "cec", "edid", "packet";
+		clocks = <&cec_clock>;
+		clock-names = "cec";
+
+		avdd-supply = <&v3v3>;
+		dvdd-supply = <&v3v3>;
+		pvdd-supply = <&v3v3>;
+		dvdd-3v-supply = <&v3v3>;
+		bgvdd-supply = <&v3v3>;
+
+		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
+		interrupt-parent = <&gpiog>;
+
+		status = "okay";
+
+		adi,input-depth = <8>;
+		adi,input-colorspace = "rgb";
+		adi,input-clock = "1x";
+		adi,input-style = <1>;
+		adi,input-justification = "evenly";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				adv7513_in: endpoint {
+					remote-endpoint = <&ltdc_ep0_out>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				adv7513_out: endpoint {
+					remote-endpoint = <&hdmi_con>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+				adv7513_i2s0: endpoint {
+					remote-endpoint = <&sai2a_endpoint>;
+				};
+			};
+		};
+	};
+};
+
+&ltdc {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&ltdc_pins_d>;
+	pinctrl-1 = <&ltdc_sleep_pins_d>;
+	status = "okay";
+
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ltdc_ep0_out: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&adv7513_in>;
+		};
+	};
+};
+
+&sai2 {
+	clocks = <&rcc SAI2>, <&rcc PLL3_Q>, <&rcc PLL3_R>;
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&sai2a_pins_c>;
+	pinctrl-1 = <&sai2a_sleep_pins_c>;
+	clock-names = "pclk", "x8k", "x11k";
+	status = "okay";
+
+	sai2a: audio-controller@4400b004 {
+		#clock-cells = <0>;
+		dma-names = "tx";
+		clocks = <&rcc SAI2_K>;
+		clock-names = "sai_ck";
+		status = "okay";
+
+		sai2a_port: port {
+			sai2a_endpoint: endpoint {
+				remote-endpoint = <&adv7513_i2s0>;
+				format = "i2s";
+				mclk-fs = <256>;
+			};
+		};
+	};
+};
+
+&sdmmc1 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_b>;
+	pinctrl-1 = <&sdmmc1_b4_od_pins_a &sdmmc1_dir_pins_b>;
+	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a &sdmmc1_dir_sleep_pins_b>;
+	cd-gpios = <&gpioi 8 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+	disable-wp;
+	st,sig-dir;
+	st,neg-edge;
+	st,use-ckin;
+	bus-width = <4>;
+	vmmc-supply = <&vdd_sd>;
+	vqmmc-supply = <&sd_switch>;
+	status = "okay";
+};
+
+&sdmmc2 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_b>;
+	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_b>;
+	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_b>;
+	bus-width = <8>;
+	mmc-ddr-1_8v;
+	no-sd;
+	no-sdio;
+	non-removable;
+	st,neg-edge;
+	vmmc-supply = <&v3v3>;
+	vqmmc-supply = <&vdd_io>;
+	status = "okay";
+};
+
+&sdmmc3 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc3_b4_pins_b>;
+	pinctrl-1 = <&sdmmc3_b4_od_pins_b>;
+	pinctrl-2 = <&sdmmc3_b4_sleep_pins_b>;
+	broken-cd;
+	non-removable;
+	st,neg-edge;
+	bus-width = <4>;
+	vmmc-supply = <&wlan_pwr>;
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+	brcmf: bcrmf@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+	};
+};
+
+&spi2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi2_pins_a>;
+	cs-gpios = <&gpioi 0 0>;
+	status = "disabled";
+	/delete-property/dmas;
+	/delete-property/dma-names;
+};
+
+&uart4 {
+	/* On Low speed expansion header */
+	label = "LS-UART1";
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart4_pins_b>;
+	status = "okay";
+};
+
+&uart7 {
+	/* On Low speed expansion header */
+	label = "LS-UART0";
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart7_pins_a>;
+	status = "okay";
+};
+
+/* Bluetooth */
+&usart2 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&usart2_pins_a>;
+	pinctrl-1 = <&usart2_sleep_pins_a>;
+	st,hw-flow-ctrl;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		max-speed = <3000000>;
+		shutdown-gpios = <&gpioz 6 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&usbh_ehci {
+	phys = <&usbphyc_port0>;
+	phy-names = "usb";
+	status = "okay";
+};
+
+&usbotg_hs {
+	pinctrl-0 = <&usbotg_hs_pins_a>;
+	pinctrl-names = "default";
+	phy-names = "usb2-phy";
+	phys = <&usbphyc_port1 0>;
+	status = "okay";
+	vbus-supply = <&vbus_otg>;
+};
+
+&usbphyc {
+	status = "okay";
+};
+
+&usbphyc_port0 {
+	phy-supply = <&vdd_usb>;
+	vdda1v1-supply = <&reg11>;
+	vdda1v8-supply = <&reg18>;
+};
+
+&usbphyc_port1 {
+	phy-supply = <&vdd_usb>;
+	vdda1v1-supply = <&reg11>;
+	vdda1v8-supply = <&reg18>;
+};
diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcor-io1v8.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcor-io1v8.dtsi
new file mode 100644
index 000000000000..75172314d7af
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp15xx-dhcor-io1v8.dtsi
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
+/*
+ * Copyright (C) Linaro Ltd 2019 - All Rights Reserved
+ * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+ * Copyright (C) 2020 Marek Vasut <marex@denx.de>
+ */
+
+/ {
+	/* Enpirion EP3A8LQI U2 on the DHCOR */
+	vdd_io: regulator-buck-io {
+		compatible = "regulator-fixed";
+		regulator-name = "buck-io";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vdd>;
+	};
+};
+
+&pwr_regulators {
+	vdd-supply = <&vdd_io>;
+};
diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
new file mode 100644
index 000000000000..04fbb324a541
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
@@ -0,0 +1,209 @@
+// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
+/*
+ * Copyright (C) Linaro Ltd 2019 - All Rights Reserved
+ * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+ * Copyright (C) 2020 Marek Vasut <marex@denx.de>
+ */
+
+#include "stm32mp15-pinctrl.dtsi"
+#include "stm32mp15xxac-pinctrl.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/mfd/st,stpmic1.h>
+
+/ {
+	aliases {
+		spi0 = &qspi;
+	};
+
+	memory@c0000000 {
+		device_type = "memory";
+		reg = <0xc0000000 0x40000000>;
+	};
+};
+
+&i2c4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c4_pins_a>;
+	i2c-scl-rising-time-ns = <185>;
+	i2c-scl-falling-time-ns = <20>;
+	status = "okay";
+	/delete-property/dmas;
+	/delete-property/dma-names;
+
+	pmic: stpmic@33 {
+		compatible = "st,stpmic1";
+		reg = <0x33>;
+		interrupts-extended = <&gpioa 0 IRQ_TYPE_EDGE_FALLING>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		status = "okay";
+
+		regulators {
+			compatible = "st,stpmic1-regulators";
+
+			ldo1-supply = <&v3v3>;
+			ldo2-supply = <&v3v3>;
+			ldo3-supply = <&vdd_ddr>;
+			ldo5-supply = <&v3v3>;
+			ldo6-supply = <&v3v3>;
+			pwr_sw1-supply = <&bst_out>;
+			pwr_sw2-supply = <&bst_out>;
+
+			vddcore: buck1 {
+				regulator-name = "vddcore";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+				regulator-initial-mode = <0>;
+				regulator-over-current-protection;
+			};
+
+			vdd_ddr: buck2 {
+				regulator-name = "vdd_ddr";
+				regulator-min-microvolt = <1350000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+				regulator-initial-mode = <0>;
+				regulator-over-current-protection;
+			};
+
+			vdd: buck3 {
+				regulator-name = "vdd";
+				regulator-min-microvolt = <2900000>;
+				regulator-max-microvolt = <2900000>;
+				regulator-always-on;
+				regulator-initial-mode = <0>;
+				regulator-over-current-protection;
+			};
+
+			v3v3: buck4 {
+				regulator-name = "v3v3";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-over-current-protection;
+				regulator-initial-mode = <0>;
+			};
+
+			vdda: ldo1 {
+				regulator-name = "vdda";
+				regulator-min-microvolt = <2900000>;
+				regulator-max-microvolt = <2900000>;
+				interrupts = <IT_CURLIM_LDO1 0>;
+			};
+
+			v2v8: ldo2 {
+				regulator-name = "v2v8";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				interrupts = <IT_CURLIM_LDO2 0>;
+			};
+
+			vtt_ddr: ldo3 {
+				regulator-name = "vtt_ddr";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <750000>;
+				regulator-always-on;
+				regulator-over-current-protection;
+			};
+
+			vdd_usb: ldo4 {
+				regulator-name = "vdd_usb";
+				interrupts = <IT_CURLIM_LDO4 0>;
+			};
+
+			vdd_sd: ldo5 {
+				regulator-name = "vdd_sd";
+				regulator-min-microvolt = <2900000>;
+				regulator-max-microvolt = <2900000>;
+				interrupts = <IT_CURLIM_LDO5 0>;
+				regulator-boot-on;
+			};
+
+			v1v8: ldo6 {
+				regulator-name = "v1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				interrupts = <IT_CURLIM_LDO6 0>;
+				regulator-enable-ramp-delay = <300000>;
+			};
+
+			vref_ddr: vref_ddr {
+				regulator-name = "vref_ddr";
+				regulator-always-on;
+			};
+
+			bst_out: boost {
+				regulator-name = "bst_out";
+				interrupts = <IT_OCP_BOOST 0>;
+			};
+
+			vbus_otg: pwr_sw1 {
+				regulator-name = "vbus_otg";
+				interrupts = <IT_OCP_OTG 0>;
+				regulator-active-discharge = <1>;
+			};
+
+			vbus_sw: pwr_sw2 {
+				regulator-name = "vbus_sw";
+				interrupts = <IT_OCP_SWOUT 0>;
+				regulator-active-discharge = <1>;
+			};
+		};
+
+		onkey {
+			compatible = "st,stpmic1-onkey";
+			interrupts = <IT_PONKEY_F 0>, <IT_PONKEY_R 1>;
+			interrupt-names = "onkey-falling", "onkey-rising";
+			status = "okay";
+		};
+
+		watchdog {
+			compatible = "st,stpmic1-wdt";
+			status = "disabled";
+		};
+	};
+
+	eeprom@53 {
+		compatible = "atmel,24c02";
+		reg = <0x53>;
+		pagesize = <16>;
+	};
+};
+
+&iwdg2 {
+	timeout-sec = <32>;
+	status = "okay";
+};
+
+&pwr_regulators {
+	vdd-supply = <&vdd>;
+	vdd_3v3_usbfs-supply = <&vdd_usb>;
+};
+
+&qspi {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&qspi_clk_pins_a &qspi_bk1_pins_a>;
+	pinctrl-1 = <&qspi_clk_sleep_pins_a &qspi_bk1_sleep_pins_a>;
+	reg = <0x58003000 0x1000>, <0x70000000 0x200000>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	flash0: spi-flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-rx-bus-width = <4>;
+		spi-max-frequency = <108000000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+};
+
+&rng1 {
+	status = "okay";
+};
+
+&rtc {
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
