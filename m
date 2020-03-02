Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7551757EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 11:07:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wmUSY//wvi04dzYpdsHoKM6GlDw2pLWhqhY7Yw21s6U=; b=NKRQbEa07PlZ+faWA14e4C6tN
	LggFgyknQf1lu4xDYAOMYk/aDIpgLn/XCK8QSx9OLB0k0d/GSFVEhZexvzj7Am1o8u87G07xn3rk3
	abo6A5w5OviQGYdDE2wZzMlPXHuzYQotY+BEqdydgI5ZoSrLhB4frvXD9wGRwl7MSH0a3AjGy+aIY
	CZbl2cct6Q7xRHU7OXw3VJI1F7DMqtqZXhJup37C3YSVhhcQNgSij5dc1Qg4gWp0PRBehfYUzW82J
	JWtRgxJkfy3QzHgj4htN81FBvWDMf5TF4j/qs8z6s2eAkSSvWYTgH5eBlFOnViKocR3BvYP8E8hHf
	LtUiuWmJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hyQ-00088z-Nb; Mon, 02 Mar 2020 10:06:54 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hyI-00088O-ER
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 10:06:49 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0229xB6t027123; Mon, 2 Mar 2020 11:06:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=NmdlIguhddaDqPz+E83YQzRpW8sgsanIXxQTAubgk2Y=;
 b=heIxyKlLA2Hvy8UvEWV1SvfQFzAhdpHm8kRaIiSiL/IYZGsavKd1VYbbz8hINQ2esCad
 O6BSl7fg+/eBdpXUBXDISZJ0zgAc6nWcx53lafo30CQtdGGZR9V0hyCKq9+Vf0snW7qD
 hFQZmujL2bUPEtrkD9eVf2TBTuA/4ZJUHIe4qHaIUQikuLnZNxttRSyu8nS46NrwPzuM
 z/uN1N+TqmtL4gdf+PkkK4lGpNJtd3UQ69IbssMQVG1Jm8FXsDcgOJMJQM98kN6x6sEK
 +4n9EAqkcpQ9gQdS4tBVhEtwydFJpPFgZ7loOodfwKEHjlmWOdw74MJNcUqHYIZOPnQi Ow== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yfdyck1hf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 02 Mar 2020 11:06:35 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 90BCC10002A;
 Mon,  2 Mar 2020 11:06:29 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 787172B1872;
 Mon,  2 Mar 2020 11:06:29 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 2 Mar
 2020 11:06:28 +0100
Subject: Re: [PATCH 2/3] ARM: dts: stm32: add STM32MP1-based Linux Automation
 MC-1 board
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
References: <20200226143826.1146-1-a.fatoum@pengutronix.de>
 <20200226143826.1146-2-a.fatoum@pengutronix.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <244a4502-03e0-836c-2ce2-7fa6cef3c188@st.com>
Date: Mon, 2 Mar 2020 11:06:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200226143826.1146-2-a.fatoum@pengutronix.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-02_03:2020-02-28,
 2020-03-02 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_020646_930550_3EC73E6F 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ahmad

Thanks for adding a new STM32 board. Some minor comments.

On 2/26/20 3:38 PM, Ahmad Fatoum wrote:
> The Linux Automation MC-1 is a SBC built around the Octavo Systems
> OSD32MP15x SiP. The SiP features up to 1 GB DDR3 RAM, EEPROM and
> a PMIC. The board has eMMC and a SD slot for storage and GbE
> for both connectivity and power.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de
> ---
>   arch/arm/boot/dts/Makefile                |   3 +-
>   arch/arm/boot/dts/stm32mp157c-lxa-mc1.dts | 367 ++++++++++++++++++++++
>   arch/arm/boot/dts/stm32mp15xx-osd32.dtsi  | 229 ++++++++++++++
>   3 files changed, 598 insertions(+), 1 deletion(-)
>   create mode 100644 arch/arm/boot/dts/stm32mp157c-lxa-mc1.dts
>   create mode 100644 arch/arm/boot/dts/stm32mp15xx-osd32.dtsi
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index d6546d2676b9..47db736ec4aa 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1018,7 +1018,8 @@ dtb-$(CONFIG_ARCH_STM32) += \
>   	stm32mp157a-dk1.dtb \
>   	stm32mp157c-dk2.dtb \
>   	stm32mp157c-ed1.dtb \
> -	stm32mp157c-ev1.dtb
> +	stm32mp157c-ev1.dtb \
> +	stm32mp157c-lxa-mc1.dtb
>   dtb-$(CONFIG_MACH_SUN4I) += \
>   	sun4i-a10-a1000.dtb \
>   	sun4i-a10-ba10-tvbox.dtb \
> diff --git a/arch/arm/boot/dts/stm32mp157c-lxa-mc1.dts b/arch/arm/boot/dts/stm32mp157c-lxa-mc1.dts
> new file mode 100644
> index 000000000000..70fad7a2f2af
> --- /dev/null
> +++ b/arch/arm/boot/dts/stm32mp157c-lxa-mc1.dts
> @@ -0,0 +1,367 @@
> +/* SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause) */
> +/*
> + * Copyright (C) 2020 STMicroelectronics - All Rights Reserved
> + * Copyright (C) 2020 Ahmad Fatoum, Pengutronix
> + */
> +
> +/dts-v1/;
> +
> +#include "stm32mp157.dtsi"
> +#include "stm32mp15xx-osd32.dtsi"
> +#include "stm32mp15xxac-pinctrl.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pwm/pwm.h>
> +
> +/ {
> +	model = "Linux Automation MC-1 board";
> +	compatible = "lxa,stm32mp157c-mc1", "st,stm32mp157";
> +
> +	aliases {
> +		ethernet0 = &ethernet0;
> +		mmc0 = &sdmmc1;
> +		mmc1 = &sdmmc2;
> +		serial0 = &uart4;
> +	};
> +
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		pwms = <&backlight_pwm 1 100000 PWM_POLARITY_INVERTED>;
> +		brightness-levels = <0 31 63 95 127 159 191 223 255>;
> +		default-brightness-level = <7>;
> +		power-supply = <&reg_5v2>; /* 3V3_BACKLIGHT */
> +	};
> +
> +	chosen {
> +		stdout-path = &uart4;
> +	};
> +
> +	led-act {
> +		compatible = "gpio-leds";
> +
> +		led-green {
> +			label = "mc1:green:act";
> +			gpios = <&gpioa 13 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger = "heartbeat";
> +			default-state = "off";
> +		};
> +	};
> +
> +	led-rgb {
> +		compatible = "pwm-leds";
> +
> +		led-red {
> +			label = "mc1:red:rgb";
> +			pwms = <&leds_pwm 1 1000000 0>;
> +			max-brightness = <255>;
> +			active-low;
> +		};
> +
> +		led-green {
> +			label = "mc1:green:rgb";
> +			pwms = <&leds_pwm 2 1000000 0>;
> +			max-brightness = <255>;
> +			active-low;
> +		};
> +
> +		led-blue {
> +			label = "mc1:blue:rgb";
> +			pwms = <&leds_pwm 3 1000000 0>;
> +			max-brightness = <255>;
> +			active-low;
> +		};
> +	};
> +
> +	panel: panel {
> +		compatible = "edt,etm0700g0edh6", "simple-panel";
> +		backlight = <&backlight>;
> +		enable-gpios = <&gpiod 4 GPIO_ACTIVE_HIGH>;
> +		power-supply = <&reg_3v3>;
> +
> +		port {
> +			panel_input: endpoint {
> +				remote-endpoint = <&ltdc_ep0_out>;
> +			};
> +		};
> +	};
> +
> +	reg_3v3: regulator_3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +		vin-supply = <&v3v3>;
> +	};
> +
> +	/* supplied by either debug board or PoE */
> +	reg_5v2: regulator_5v2 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "5V2";
> +		regulator-min-microvolt = <5200000>;
> +		regulator-max-microvolt = <5200000>;
> +		regulator-always-on;
> +	};
> +};
> +
> +&gpioz {
> +	gpio-line-names = "HWID0", "HWID1", "HWID2", "HWID3", "", "",
> +			  "HWID4", "HWID5";
> +};
> +
> +&gpu {
> +	status = "okay";
> +};
> +
> +&ethernet0 {

you could follow alphabetic ordering (I find it easier to read, but just 
my opinion).

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&eth_rgmii_pins>;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&ethphy>;
> +	status = "okay";
> +
> +	mdio0 {
> +		compatible = "snps,dwmac-mdio";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy: ethernet-phy@3 { /* KSZ9031RN */
> +			reg = <3>;
> +			reset-gpios = <&gpiog 0 GPIO_ACTIVE_LOW>; /* ETH_RST# */
> +			interrupt-parent = <&gpioa>;
> +			interrupts = <6 IRQ_TYPE_EDGE_FALLING>; /* ETH_MDINT# */
> +			rxc-skew-ps = <1860>;
> +			txc-skew-ps = <1860>;
> +			reset-assert-us = <10000>;
> +			reset-deassert-us = <300>;
> +			micrel,force-master;
> +		};
> +	};
> +};
> +
> +&i2c5 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c5_pins>;
> +	clock-frequency = <400000>;
> +	status = "okay";
> +
> +	touchscreen@38 {
> +		compatible = "edt,edt-ft5x06";
> +		interrupt-parent = <&gpiod>;
> +		interrupts = <11 IRQ_TYPE_EDGE_FALLING>; /* TOUCH_INT# */
> +		vcc-supply = <&reg_3v3>;
> +		reg = <0x38>;
> +		reset-gpios = <&gpiof 8 GPIO_ACTIVE_LOW>; /* TOUCH_RESET# */
> +		touchscreen-size-x = <1792>;
> +		touchscreen-size-y = <1024>;
> +		wakeup-source;
> +	};
> +};
> +
> +&ltdc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&ltdc_pins>;
> +	status = "okay";
> +
> +	port {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ltdc_ep0_out: endpoint@0 {
> +			reg = <0>;
> +			remote-endpoint = <&panel_input>;
> +		};
> +	};
> +};
> +
> +&pmic {
> +	regulators {
> +		buck4-supply = <&reg_5v2>;	/* VIN */
> +		ldo2-supply = <&reg_5v2>;	/* PMIC_LDO25IN */
> +		ldo5-supply = <&reg_5v2>;	/* PMIC_LDO25IN */
> +		boost-supply = <&reg_5v2>;	/* PMIC_BSTIN */
> +		pwr_sw2-supply = <&bst_out>;    /* PMIC_SWIN */
> +	};
> +};
> +
> +&sdmmc1 {
> +	pinctrl-names = "default", "opendrain";
> +	pinctrl-0 = <&sdmmc1_b4_pu_pins_a>;
> +	pinctrl-1 = <&sdmmc1_b4_od_pins_a>;
> +	bus-width = <4>;
> +	cd-gpios = <&gpioh 3 GPIO_ACTIVE_LOW>;
> +	disable-wp;
> +	no-1-8-v;
> +	st,neg-edge;
> +	vmmc-supply = <&reg_3v3>;
> +	status = "okay";
> +};
> +
> +&sdmmc2 {
> +	pinctrl-names = "default", "opendrain";
> +	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_b>;
> +	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_b>;
> +	bus-width = <8>;
> +	no-1-8-v;
> +	no-sd;
> +	no-sdio;
> +	non-removable;
> +	st,neg-edge;
> +	vmmc-supply = <&reg_3v3>;
> +	status = "okay";
> +};
> +
> +&timers3 {
> +	status = "okay";
> +
> +	backlight_pwm: pwm {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&tim3_pwm_pins>;
> +		status = "okay";
> +	};
> +};
> +
> +&timers5 {
> +	status = "okay";
> +
> +	leds_pwm: pwm {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&tim5_pwm_pins>;
> +		status = "okay";
> +	};
> +};
> +
> +&uart4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart4_pins_a>;
> +	status = "okay";
> +};
> +
> +&pinctrl {

Pin groups are currently defined in stm32mp15-pinctrl.dtsi. You could 
move this part.

> +	eth_rgmii_pins: eth_rgmii {
> +		pins1 {
> +			pinmux = <STM32_PINMUX('G',  5, AF11)>, /* ETH_CLK125 */
> +				 <STM32_PINMUX('G',  4, AF11)>, /* ETH_GTX_CLK */
> +				 <STM32_PINMUX('G', 13, AF11)>, /* ETH_TXD0 */
> +				 <STM32_PINMUX('G', 14, AF11)>, /* ETH_TXD1 */
> +				 <STM32_PINMUX('C',  2, AF11)>, /* ETH_TXD2 */
> +				 <STM32_PINMUX('E',  2, AF11)>, /* ETH_TXD3 */
> +				 <STM32_PINMUX('B', 11, AF11)>, /* ETH_TX_CTL */
> +				 <STM32_PINMUX('C',  1, AF11)>; /* ETH_MDC */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <2>;
> +		};
> +		pins2 {
> +			pinmux = <STM32_PINMUX('C', 4, AF11)>, /* ETH_RXD0 */
> +				 <STM32_PINMUX('C', 5, AF11)>, /* ETH_RXD1 */
> +				 <STM32_PINMUX('H', 6, AF11)>, /* ETH_RXD2 */
> +				 <STM32_PINMUX('H', 7, AF11)>, /* ETH_RXD3 */
> +				 <STM32_PINMUX('A', 1, AF11)>, /* ETH_RX_CLK */
> +				 <STM32_PINMUX('A', 7, AF11)>; /* ETH_RX_CTL */
> +				 bias-disable;
> +		};
> +		pins3 {
> +			pinmux = <STM32_PINMUX('A', 2, AF11)>; /* ETH_MDIO */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <0>;
> +		};
> +	};
> +
> +	i2c5_pins: i2c5 {
> +		pins {
> +			pinmux = <STM32_PINMUX('D', 0, AF4)>, /* TOUCH_SDA */
> +			         <STM32_PINMUX('D', 1, AF4)>; /* TOUCH_SCL */
> +			bias-disable;
> +			drive-open-drain;
> +			slew-rate = <0>;
> +		};
> +	};
> +
> +	ltdc_pins: ltdc {
> +		pins1 {
> +			pinmux = <STM32_PINMUX('B',  1, AF9)>,  /* LTDC_R6 */
> +				 <STM32_PINMUX('B',  9, AF14)>, /* LTDC_B7 */
> +				 <STM32_PINMUX('C',  0, AF14)>, /* LTDC_R5 */
> +				 <STM32_PINMUX('D',  3, AF14)>, /* LTDC_G7 */
> +				 <STM32_PINMUX('D',  6, AF14)>, /* LTDC_B2 */
> +				 <STM32_PINMUX('D', 10, AF14)>, /* LTDC_B3 */
> +				 <STM32_PINMUX('E', 11, AF14)>, /* LTDC_G3 */
> +				 <STM32_PINMUX('E', 12, AF14)>, /* LTDC_B4 */
> +				 <STM32_PINMUX('E', 13, AF14)>, /* LTDC_DE */
> +				 <STM32_PINMUX('E', 15, AF14)>, /* LTDC_R7 */
> +				 <STM32_PINMUX('H',  4, AF9)>,  /* LTDC_G5 */
> +				 <STM32_PINMUX('H',  8, AF14)>, /* LTDC_R2 */
> +				 <STM32_PINMUX('H',  9, AF14)>, /* LTDC_R3 */
> +				 <STM32_PINMUX('H', 10, AF14)>, /* LTDC_R4 */
> +				 <STM32_PINMUX('H', 13, AF14)>, /* LTDC_G2 */
> +				 <STM32_PINMUX('H', 15, AF14)>, /* LTDC_G4 */
> +				 <STM32_PINMUX('I',  1, AF14)>, /* LTDC_G6 */
> +				 <STM32_PINMUX('I',  5, AF14)>, /* LTDC_B5 */
> +				 <STM32_PINMUX('I',  6, AF14)>, /* LTDC_B6 */
> +				 <STM32_PINMUX('I',  9, AF14)>, /* LTDC_VSYNC */
> +				 <STM32_PINMUX('I', 10, AF14)>; /* LTDC_HSYNC */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <0>;
> +		};
> +		pins2 {
> +			pinmux = <STM32_PINMUX('E', 14, AF14)>; /* LTDC_CLK */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <1>;
> +		};
> +	};
> +
> +	sdmmc1_b4_pu_pins_a: sdmmc1-pu-b4-0 {
> +		pins1 {
> +			pinmux = <STM32_PINMUX('C',  8, AF12)>, /* SDMMC1_D0 */
> +				 <STM32_PINMUX('C',  9, AF12)>, /* SDMMC1_D1 */
> +				 <STM32_PINMUX('C', 10, AF12)>, /* SDMMC1_D2 */
> +				 <STM32_PINMUX('C', 11, AF12)>, /* SDMMC1_D3 */
> +				 <STM32_PINMUX('D',  2, AF12)>; /* SDMMC1_CMD */
> +			slew-rate = <1>;
> +			drive-push-pull;
> +			bias-pull-up;
> +		};
> +		pins2 {
> +			pinmux = <STM32_PINMUX('C', 12, AF12)>; /* SDMMC1_CK */
> +			slew-rate = <2>;
> +			drive-push-pull;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	sdmmc2_d47_pins_b: sdmmc2-d47-1 {
> +		pins {
> +			pinmux = <STM32_PINMUX('A', 8, AF9)>,  /* eMMC_D4 */
> +				 <STM32_PINMUX('A', 9, AF10)>, /* eMMC_D5 */
> +				 <STM32_PINMUX('C', 6, AF10)>, /* eMMC_D6 */
> +				 <STM32_PINMUX('C', 7, AF10)>; /* eMMC_D7 */
> +			slew-rate = <1>;
> +			drive-push-pull;
> +			bias-disable;
> +		};
> +	};
> +
> +	tim3_pwm_pins: tim3_pwm {
> +		pins {
> +			pinmux = <STM32_PINMUX('B', 5, AF2)>; /* TIM3_CH2 */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <0>;
> +		};
> +	};
> +
> +	tim5_pwm_pins: tim5_pwm {
> +		pins {
> +			pinmux = <STM32_PINMUX('H', 11, AF2)>, /* TIM5_CH2 */
> +				 <STM32_PINMUX('H', 12, AF2)>, /* TIM5_CH3 */
> +				 <STM32_PINMUX('I',  0, AF2)>; /* TIM5_CH4 */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <0>;
> +		};
> +	};
> +};
> diff --git a/arch/arm/boot/dts/stm32mp15xx-osd32.dtsi b/arch/arm/boot/dts/stm32mp15xx-osd32.dtsi
> new file mode 100644
> index 000000000000..70ee1c9aa8ec
> --- /dev/null
> +++ b/arch/arm/boot/dts/stm32mp15xx-osd32.dtsi
> @@ -0,0 +1,229 @@
> +/* SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause) */
> +/*
> + * Copyright (C) 2020 STMicroelectronics - All Rights Reserved
> + * Copyright (C) 2020 Ahmad Fatoum, Pengutronix
> + */
> +
> +#include "stm32mp15-pinctrl.dtsi"
> +
> +#include <dt-bindings/mfd/st,stpmic1.h>
> +
> +/ {
> +	reserved-memory {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		mcuram2: mcuram2@10000000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0x10000000 0x40000>;
> +			no-map;
> +		};
> +
> +		vdev0vring0: vdev0vring0@10040000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0x10040000 0x1000>;
> +			no-map;
> +		};
> +
> +		vdev0vring1: vdev0vring1@10041000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0x10041000 0x1000>;
> +			no-map;
> +		};
> +
> +		vdev0buffer: vdev0buffer@10042000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0x10042000 0x4000>;
> +			no-map;
> +		};
> +
> +		mcuram: mcuram@30000000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0x30000000 0x40000>;
> +			no-map;
> +		};
> +
> +		retram: retram@38000000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0x38000000 0x10000>;
> +			no-map;
> +		};
> +	};
> +
> +	reg_sip_eeprom: regulator_eeprom {
> +		compatible = "regulator-fixed";
> +		regulator-name = "sip_eeprom";
> +		regulator-always-on;
> +	};
> +};
> +
> +&i2c4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c4_pins_a>;
> +	clock-frequency = <400000>;
> +	i2c-scl-rising-time-ns = <185>;
> +	i2c-scl-falling-time-ns = <20>;
> +	status = "okay";
> +
> +	pmic: stpmic@33 {
> +		compatible = "st,stpmic1";
> +		reg = <0x33>;
> +		interrupts-extended = <&gpioa 0 IRQ_TYPE_EDGE_FALLING>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +
> +		regulators {
> +			compatible = "st,stpmic1-regulators";
> +
> +			ldo1-supply = <&v3v3>;
> +			ldo6-supply = <&v3v3>;
> +			pwr_sw1-supply = <&bst_out>;
> +
> +			vddcore: buck1 {
> +				regulator-name = "vddcore";
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-always-on;
> +				regulator-initial-mode = <0>;
> +				regulator-over-current-protection;
> +			};
> +
> +			vdd_ddr: buck2 {
> +				regulator-name = "vdd_ddr";
> +				regulator-min-microvolt = <1350000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-always-on;
> +				regulator-initial-mode = <0>;
> +				regulator-over-current-protection;
> +			};
> +
> +			vdd: buck3 {
> +				regulator-name = "vdd";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				st,mask-reset;
> +				regulator-initial-mode = <0>;
> +				regulator-over-current-protection;
> +			};
> +
> +			v3v3: buck4 {
> +				regulator-name = "v3v3";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				regulator-over-current-protection;
> +				regulator-initial-mode = <0>;
> +			};
> +
> +			v1v8_audio: ldo1 {
> +				regulator-name = "v1v8_audio";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-always-on;
> +				interrupts = <IT_CURLIM_LDO1 0>;
> +
> +			};
> +
> +			v3v3_hdmi: ldo2 {
> +				regulator-name = "v3v3_hdmi";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				interrupts = <IT_CURLIM_LDO2 0>;
> +
> +			};
> +
> +			vtt_ddr: ldo3 {
> +				regulator-name = "vtt_ddr";
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <750000>;
> +				regulator-always-on;
> +				regulator-over-current-protection;
> +			};
> +
> +			vdd_usb: ldo4 {
> +				regulator-name = "vdd_usb";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				interrupts = <IT_CURLIM_LDO4 0>;
> +			};
> +
> +			vdda: ldo5 {
> +				regulator-name = "vdda";
> +				regulator-min-microvolt = <2900000>;
> +				regulator-max-microvolt = <2900000>;
> +				interrupts = <IT_CURLIM_LDO5 0>;
> +				regulator-boot-on;
> +			};
> +
> +			v1v2_hdmi: ldo6 {
> +				regulator-name = "v1v2_hdmi";
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <1200000>;
> +				regulator-always-on;
> +				interrupts = <IT_CURLIM_LDO6 0>;
> +
> +			};
> +
> +			vref_ddr: vref_ddr {
> +				regulator-name = "vref_ddr";
> +				regulator-always-on;
> +				regulator-over-current-protection;
> +			};
> +
> +			bst_out: boost {
> +				regulator-name = "bst_out";
> +				interrupts = <IT_OCP_BOOST 0>;
> +			};
> +
> +			vbus_otg: pwr_sw1 {
> +				regulator-name = "vbus_otg";
> +				interrupts = <IT_OCP_OTG 0>;
> +				regulator-active-discharge;
> +			};
> +
> +			vbus_sw: pwr_sw2 {
> +				regulator-name = "vbus_sw";
> +				interrupts = <IT_OCP_SWOUT 0>;
> +				regulator-active-discharge;
> +			};
> +		};
> +
> +		onkey {
> +			compatible = "st,stpmic1-onkey";
> +			interrupts = <IT_PONKEY_F 0>, <IT_PONKEY_R 1>;
> +			interrupt-names = "onkey-falling", "onkey-rising";
> +		};
> +
> +		pmic_watchdog: watchdog {
> +			compatible = "st,stpmic1-wdt";
> +			status = "disabled";
> +		};
> +	};
> +
> +	sip_eeprom: eeprom@50 {
> +		compatible = "atmel,24c32";
> +		vcc-supply = <&reg_sip_eeprom>;
> +		reg = <0x50>;
> +	};
> +};
> +
> +&ipcc {
> +	status = "okay";
> +};
> +
> +&rng1 {
> +	status = "okay";
> +};
> +
> +&m4_rproc {

you could follow alphabetic ordering.

> +	memory-region = <&retram>, <&mcuram>, <&mcuram2>, <&vdev0vring0>,
> +			<&vdev0vring1>, <&vdev0buffer>;
> +	mboxes = <&ipcc 0>, <&ipcc 1>, <&ipcc 2>;
> +	mbox-names = "vq0", "vq1", "shutdown";
> +	interrupt-parent = <&exti>;
> +	interrupts = <68 1>;
> +	status = "okay";
> +};
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
