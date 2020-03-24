Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E684190E55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 14:05:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pO9n8nH824MOT6dQAq1lddwcCn559j6D7K3PwimQMVc=; b=BY6mlTyTyjQQGKE5dI993aZnz
	tXhoNQK1rajUmQrJ+TTdSsy22BhysR5gopXK+TcUz4GqqqJKnfaMctMQ1kQT7goxxUULvGMiOEi9y
	KdIg/jGUj53Kg3vbQ83P00crl6yIp7t/UCCqHNEnEJNKbg6z72oxSSI2FUBoxK7AO2O4/Hwjqi1pR
	yeyGiri6v62CFMTIDG7uEU8LTntiuCsTTXaW8NLyUskX0bnZA14/3mP7/JD4p8nBtE+33NL82kkRH
	o1TVHIRx5Wch4ijNMfh5fPaEJ+Y9LWVaRLcwvRkvimzXLuobiMa6S8HjlHfOJv2FpucMfk0Xxdsvx
	BCZsg3nxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGjF9-0001dq-Aa; Tue, 24 Mar 2020 13:05:19 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGjEv-0000Os-O8
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 13:05:09 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02OD3b5G027526; Tue, 24 Mar 2020 14:04:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=u38LOYR5hjayosHqJqEAj7Lmwtf1iBEt04JbzTvajoQ=;
 b=rOY7RfZPXBdsF/ETV4pqtJ6DRyODpI0kiBRb1h/Zz/9BcEPKVYt6pP7eMAjCkEf2a1Ty
 IAHxuXdd4yLb21OeDfFYvdKmStN5SEn2D3YRdGfScVy98HcMdSn/QyHxdSh8+JrxMOIA
 WBrhFlpCM+ucEGA6nKXCjB6NwD+7lYJwMMADBGIrs6Fkf/pnkLJ/mrxcQ4VmhqnShcVC
 ERtZ6wresVXG5dAVYMojKAPDQRpfv+70zCVMO0wxdZD6rtnfNC3qfZGAVhf/sBS+lTDP
 OdVPbCSXOAh5SxFFJd+dUQ6rvppPMPllx1wMoLMwxhO5ah7RIwTJknskWlOeEFffs/Dm 3w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yw995fn1n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 24 Mar 2020 14:04:55 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5933F100034;
 Tue, 24 Mar 2020 14:04:55 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3FC1B2AD2BD;
 Tue, 24 Mar 2020 14:04:55 +0100 (CET)
Received: from lmecxl0912.tpe.st.com (10.75.127.47) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 24 Mar
 2020 14:04:53 +0100
Subject: Re: [PATCH] [RFC] ARM: dts: stm32: Add DTs for STM32MP15x variants of
 the DH SOM and PDK2
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
References: <20200323023145.3345133-1-marex@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <7f76ea73-122f-3761-a97b-57bdb99dc4fa@st.com>
Date: Tue, 24 Mar 2020 14:04:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200323023145.3345133-1-marex@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-24_05:2020-03-23,
 2020-03-24 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_060506_188908_9B0601A0 
X-CRM114-Status: GOOD (  23.76  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/23/20 3:31 AM, Marek Vasut wrote:
> The DH PDK2 can be populated with SoM with any STM32MP15x variant.
> Add the DTs describing the remaining combinations.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
> NOTE: Is there a better way to do this than to have this kind of a
> 	combinatorial explosion of DTs ?

I have no better idea. Question was the same for stm32 boards, and I 
chose to take this option.


> ---
>   arch/arm/boot/dts/Makefile                    |   2 +
>   arch/arm/boot/dts/stm32mp151c-dhcom-pdk2.dts  |   8 +
>   arch/arm/boot/dts/stm32mp151c-dhcom-som.dtsi  |   8 +
>   arch/arm/boot/dts/stm32mp153c-dhcom-pdk2.dts  |  15 +
>   arch/arm/boot/dts/stm32mp153c-dhcom-som.dtsi  |   8 +
>   arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts  | 256 +------------
>   arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi  | 360 +----------------
>   arch/arm/boot/dts/stm32mp15xc-dhcom-pdk2.dtsi | 257 +++++++++++++
>   arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi  | 361 ++++++++++++++++++
>   9 files changed, 664 insertions(+), 611 deletions(-)
>   create mode 100644 arch/arm/boot/dts/stm32mp151c-dhcom-pdk2.dts
>   create mode 100644 arch/arm/boot/dts/stm32mp151c-dhcom-som.dtsi
>   create mode 100644 arch/arm/boot/dts/stm32mp153c-dhcom-pdk2.dts
>   create mode 100644 arch/arm/boot/dts/stm32mp153c-dhcom-som.dtsi
>   create mode 100644 arch/arm/boot/dts/stm32mp15xc-dhcom-pdk2.dtsi
>   create mode 100644 arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 55e1e54e245e..f6710f1a1bbc 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1020,6 +1020,8 @@ dtb-$(CONFIG_ARCH_STM32) += \
>   	stm32746g-eval.dtb \
>   	stm32h743i-eval.dtb \
>   	stm32h743i-disco.dtb \
> +	stm32mp151c-dhcom-pdk2.dtb \
> +	stm32mp153c-dhcom-pdk2.dtb \
>   	stm32mp157a-avenger96.dtb \
>   	stm32mp157a-dk1.dtb \
>   	stm32mp157c-dhcom-pdk2.dtb \
> diff --git a/arch/arm/boot/dts/stm32mp151c-dhcom-pdk2.dts b/arch/arm/boot/dts/stm32mp151c-dhcom-pdk2.dts
> new file mode 100644
> index 000000000000..196a6bddfcf0
> --- /dev/null
> +++ b/arch/arm/boot/dts/stm32mp151c-dhcom-pdk2.dts
> @@ -0,0 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
> +/*
> + * Copyright (C) 2020 Marek Vasut <marex@denx.de>
> + */
> +/dts-v1/;
> +
> +#include "stm32mp151c-dhcom-som.dtsi"
> +#include "stm32mp15xc-dhcom-pdk2.dtsi"
> diff --git a/arch/arm/boot/dts/stm32mp151c-dhcom-som.dtsi b/arch/arm/boot/dts/stm32mp151c-dhcom-som.dtsi
> new file mode 100644
> index 000000000000..7754b6d74e16
> --- /dev/null
> +++ b/arch/arm/boot/dts/stm32mp151c-dhcom-som.dtsi
> @@ -0,0 +1,8 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright (C) 2020 Marek Vasut <marex@denx.de>
> + */
> +
> +#include "stm32mp151.dtsi"
> +#include "stm32mp15xc.dtsi"
> +#include "stm32mp15xx-dhcom-som.dtsi"
> diff --git a/arch/arm/boot/dts/stm32mp153c-dhcom-pdk2.dts b/arch/arm/boot/dts/stm32mp153c-dhcom-pdk2.dts
> new file mode 100644
> index 000000000000..4f114b4f075a
> --- /dev/null
> +++ b/arch/arm/boot/dts/stm32mp153c-dhcom-pdk2.dts
> @@ -0,0 +1,15 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
> +/*
> + * Copyright (C) 2020 Marek Vasut <marex@denx.de>
> + */
> +/dts-v1/;
> +
> +#include "stm32mp153c-dhcom-som.dtsi"
> +#include "stm32mp15xc-dhcom-pdk2.dtsi"
> +
> +&m_can1 {
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&m_can1_pins_a>;
> +	pinctrl-1 = <&m_can1_sleep_pins_a>;
> +	status = "okay";
> +};
> diff --git a/arch/arm/boot/dts/stm32mp153c-dhcom-som.dtsi b/arch/arm/boot/dts/stm32mp153c-dhcom-som.dtsi
> new file mode 100644
> index 000000000000..111fe9419f05
> --- /dev/null
> +++ b/arch/arm/boot/dts/stm32mp153c-dhcom-som.dtsi
> @@ -0,0 +1,8 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright (C) 2020 Marek Vasut <marex@denx.de>
> + */
> +
> +#include "stm32mp153.dtsi"
> +#include "stm32mp15xc.dtsi"
> +#include "stm32mp15xx-dhcom-som.dtsi"
> diff --git a/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts b/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
> index af99e132e1b1..e65869ab35f1 100644
> --- a/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
> +++ b/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
> @@ -1,161 +1,11 @@
>   // SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
>   /*
> - * Copyright (C) 2019 Marek Vasut <marex@denx.de>
> + * Copyright (C) 2019-2020 Marek Vasut <marex@denx.de>
>    */
> +/dts-v1/;
>   
>   #include "stm32mp157c-dhcom-som.dtsi"
> -#include <dt-bindings/pwm/pwm.h>
> -
> -/ {
> -	model = "STMicroelectronics STM32MP157C DHCOM Premium Developer Kit (2)";
> -	compatible = "dh,stm32mp157c-dhcom-pdk2", "st,stm32mp157";
> -
> -	aliases {
> -		serial0 = &uart4;
> -		serial1 = &usart3;
> -		serial2 = &uart8;
> -		ethernet0 = &ethernet0;
> -	};
> -
> -	chosen {
> -		stdout-path = "serial0:115200n8";
> -	};
> -
> -	clk_ext_audio_codec: clock-codec {
> -		compatible = "fixed-clock";
> -		#clock-cells = <0>;
> -		clock-frequency = <24000000>;
> -	};
> -
> -	display_bl: display-bl {
> -		compatible = "pwm-backlight";
> -		pwms = <&pwm2 0 500000 PWM_POLARITY_INVERTED>;
> -		brightness-levels = <0 16 22 30 40 55 75 102 138 188 255>;
> -		default-brightness-level = <8>;
> -		enable-gpios = <&gpioi 0 GPIO_ACTIVE_HIGH>;
> -		status = "okay";
> -	};
> -
> -	ethernet_vio: vioregulator {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vio";
> -		regulator-min-microvolt = <3300000>;
> -		regulator-max-microvolt = <3300000>;
> -		gpio = <&gpiog 3 GPIO_ACTIVE_LOW>;
> -		regulator-always-on;
> -		regulator-boot-on;
> -	};
> -
> -	panel {
> -		compatible = "edt,etm0700g0edh6";
> -		backlight = <&display_bl>;
> -
> -		port {
> -			lcd_panel_in: endpoint {
> -				remote-endpoint = <&lcd_display_out>;
> -			};
> -		};
> -	};
> -
> -	sound {
> -		compatible = "audio-graph-card";
> -		routing =
> -			"MIC_IN", "Capture",
> -			"Capture", "Mic Bias",
> -			"Playback", "HP_OUT";
> -		dais = <&sai2a_port &sai2b_port>;
> -		status = "okay";
> -	};
> -};
> -
> -&cec {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&cec_pins_a>;
> -	status = "okay";
> -};
> -
> -&ethernet0 {
> -	status = "okay";
> -	pinctrl-0 = <&ethernet0_rmii_pins_a>;
> -	pinctrl-1 = <&ethernet0_rmii_pins_sleep_a>;
> -	pinctrl-names = "default", "sleep";
> -	phy-mode = "rmii";
> -	max-speed = <100>;
> -	phy-handle = <&phy0>;
> -	st,eth-ref-clk-sel;
> -	phy-reset-gpios = <&gpioh 15 GPIO_ACTIVE_LOW>;
> -
> -	mdio0 {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -		compatible = "snps,dwmac-mdio";
> -
> -		phy0: ethernet-phy@1 {
> -			reg = <1>;
> -		};
> -	};
> -};
> -
> -&i2c5 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&i2c5_pins_a>;
> -	i2c-scl-rising-time-ns = <185>;
> -	i2c-scl-falling-time-ns = <20>;
> -	status = "okay";
> -	/* spare dmas for other usage */
> -	/delete-property/dmas;
> -	/delete-property/dma-names;
> -
> -	sgtl5000: codec@a {
> -		compatible = "fsl,sgtl5000";
> -		reg = <0x0a>;
> -		#sound-dai-cells = <0>;
> -		clocks = <&clk_ext_audio_codec>;
> -		VDDA-supply = <&v3v3>;
> -		VDDIO-supply = <&vdd>;
> -
> -		sgtl5000_port: port {
> -			#address-cells = <1>;
> -			#size-cells = <0>;
> -
> -			sgtl5000_tx_endpoint: endpoint@0 {
> -				reg = <0>;
> -				remote-endpoint = <&sai2a_endpoint>;
> -				frame-master;
> -				bitclock-master;
> -			};
> -
> -			sgtl5000_rx_endpoint: endpoint@1 {
> -				reg = <1>;
> -				remote-endpoint = <&sai2b_endpoint>;
> -				frame-master;
> -				bitclock-master;
> -			};
> -		};
> -
> -	};
> -
> -	polytouch@38 {
> -		compatible = "edt,edt-ft5x06";
> -		reg = <0x38>;
> -		interrupt-parent = <&gpiog>;
> -		interrupts = <2 IRQ_TYPE_EDGE_FALLING>; /* GPIO E */
> -		linux,wakeup;
> -	};
> -};
> -
> -&ltdc {
> -	pinctrl-names = "default", "sleep";
> -	pinctrl-0 = <&ltdc_pins_b>;
> -	pinctrl-1 = <&ltdc_pins_sleep_b>;
> -	status = "okay";
> -
> -	port {
> -		lcd_display_out: endpoint {
> -			remote-endpoint = <&lcd_panel_in>;
> -		};
> -	};
> -};
> +#include "stm32mp15xc-dhcom-pdk2.dtsi"
>   
>   &m_can1 {
>   	pinctrl-names = "default", "sleep";
> @@ -163,103 +13,3 @@ &m_can1 {
>   	pinctrl-1 = <&m_can1_sleep_pins_a>;
>   	status = "okay";
>   };
> -
> -&sai2 {
> -	clocks = <&rcc SAI2>, <&rcc PLL3_Q>, <&rcc PLL3_R>;
> -	clock-names = "pclk", "x8k", "x11k";
> -	pinctrl-names = "default", "sleep";
> -	pinctrl-0 = <&sai2a_pins_b &sai2b_pins_b>;
> -	pinctrl-1 = <&sai2a_sleep_pins_b &sai2b_sleep_pins_b>;
> -	status = "okay";
> -
> -	sai2a: audio-controller@4400b004 {
> -		#clock-cells = <0>;
> -		dma-names = "tx";
> -		clocks = <&rcc SAI2_K>;
> -		clock-names = "sai_ck";
> -		status = "okay";
> -
> -		sai2a_port: port {
> -			sai2a_endpoint: endpoint {
> -				remote-endpoint = <&sgtl5000_tx_endpoint>;
> -				format = "i2s";
> -				mclk-fs = <512>;
> -				dai-tdm-slot-num = <2>;
> -				dai-tdm-slot-width = <16>;
> -			};
> -		};
> -	};
> -
> -	sai2b: audio-controller@4400b024 {
> -		dma-names = "rx";
> -		st,sync = <&sai2a 2>;
> -		clocks = <&rcc SAI2_K>, <&sai2a>;
> -		clock-names = "sai_ck", "MCLK";
> -		status = "okay";
> -
> -		sai2b_port: port {
> -			sai2b_endpoint: endpoint {
> -				remote-endpoint = <&sgtl5000_rx_endpoint>;
> -				format = "i2s";
> -				mclk-fs = <512>;
> -				dai-tdm-slot-num = <2>;
> -				dai-tdm-slot-width = <16>;
> -			};
> -		};
> -	};
> -};
> -
> -&timers2 {
> -	/* spare dmas for other usage (un-delete to enable pwm capture) */
> -	/delete-property/dmas;
> -	/delete-property/dma-names;
> -	status = "okay";
> -	pwm2: pwm {
> -		pinctrl-0 = <&pwm2_pins_a>;
> -		pinctrl-names = "default";
> -		status = "okay";
> -	};
> -	timer@1 {
> -		status = "okay";
> -	};
> -};
> -
> -&usart3 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&usart3_pins_a>;
> -	status = "okay";
> -};
> -
> -&uart8 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&uart8_pins_a>;
> -	status = "okay";
> -};
> -
> -&usbh_ehci {
> -	phys = <&usbphyc_port0>;
> -	status = "okay";
> -};
> -
> -&usbotg_hs {
> -	dr_mode = "peripheral";
> -	phys = <&usbphyc_port1 0>;
> -	phy-names = "usb2-phy";
> -	status = "okay";
> -};
> -
> -&usbphyc {
> -	status = "okay";
> -};
> -
> -&usbphyc_port0 {
> -	phy-supply = <&vdd_usb>;
> -	vdda1v1-supply = <&reg11>;
> -	vdda1v8-supply = <&reg18>;
> -};
> -
> -&usbphyc_port1 {
> -	phy-supply = <&vdd_usb>;
> -	vdda1v1-supply = <&reg11>;
> -	vdda1v8-supply = <&reg18>;
> -};
> diff --git a/arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi b/arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi
> index f81dc3134135..c9cbab091554 100644
> --- a/arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi
> +++ b/arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi
> @@ -1,368 +1,12 @@
>   // SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
>   /*
> - * Copyright (C) 2019 Marek Vasut <marex@denx.de>
> + * Copyright (C) 2019-2020 Marek Vasut <marex@denx.de>
>    */
> -/dts-v1/;
>   
>   #include "stm32mp157.dtsi"
>   #include "stm32mp15xc.dtsi"
> -#include "stm32mp15-pinctrl.dtsi"
> -#include "stm32mp15xxaa-pinctrl.dtsi"
> -#include <dt-bindings/gpio/gpio.h>
> -#include <dt-bindings/mfd/st,stpmic1.h>
> -
> -/ {
> -	memory@c0000000 {
> -		device_type = "memory";
> -		reg = <0xC0000000 0x40000000>;
> -	};
> -
> -	reserved-memory {
> -		#address-cells = <1>;
> -		#size-cells = <1>;
> -		ranges;
> -
> -		mcuram2: mcuram2@10000000 {
> -			compatible = "shared-dma-pool";
> -			reg = <0x10000000 0x40000>;
> -			no-map;
> -		};
> -
> -		vdev0vring0: vdev0vring0@10040000 {
> -			compatible = "shared-dma-pool";
> -			reg = <0x10040000 0x1000>;
> -			no-map;
> -		};
> -
> -		vdev0vring1: vdev0vring1@10041000 {
> -			compatible = "shared-dma-pool";
> -			reg = <0x10041000 0x1000>;
> -			no-map;
> -		};
> -
> -		vdev0buffer: vdev0buffer@10042000 {
> -			compatible = "shared-dma-pool";
> -			reg = <0x10042000 0x4000>;
> -			no-map;
> -		};
> -
> -		mcuram: mcuram@30000000 {
> -			compatible = "shared-dma-pool";
> -			reg = <0x30000000 0x40000>;
> -			no-map;
> -		};
> -
> -		retram: retram@38000000 {
> -			compatible = "shared-dma-pool";
> -			reg = <0x38000000 0x10000>;
> -			no-map;
> -		};
> -	};
> -};
> -
> -&adc {
> -	vdd-supply = <&vdd>;
> -	vdda-supply = <&vdda>;
> -	vref-supply = <&vdda>;
> -	status = "okay";
> -
> -	adc1: adc@0 {
> -		st,min-sample-time-nsecs = <5000>;
> -		st,adc-channels = <0>;
> -		status = "okay";
> -	};
> -
> -	adc2: adc@100 {
> -		st,adc-channels = <1>;
> -		st,min-sample-time-nsecs = <5000>;
> -		status = "okay";
> -	};
> -};
> -
> -&dac {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&dac_ch1_pins_a &dac_ch2_pins_a>;
> -	vref-supply = <&vdda>;
> -	status = "okay";
> -
> -	dac1: dac@1 {
> -		status = "okay";
> -	};
> -	dac2: dac@2 {
> -		status = "okay";
> -	};
> -};
> -
> -&dts {
> -	status = "okay";
> -};
> +#include "stm32mp15xx-dhcom-som.dtsi"
>   
>   &gpu {
>   	status = "okay";
>   };
> -
> -&i2c4 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&i2c4_pins_a>;
> -	i2c-scl-rising-time-ns = <185>;
> -	i2c-scl-falling-time-ns = <20>;
> -	status = "okay";
> -	/* spare dmas for other usage */
> -	/delete-property/dmas;
> -	/delete-property/dma-names;
> -
> -	rtc@32 {
> -		compatible = "microcrystal,rv8803";
> -		reg = <0x32>;
> -	};
> -
> -	pmic: stpmic@33 {
> -		compatible = "st,stpmic1";
> -		reg = <0x33>;
> -		interrupts-extended = <&gpioa 0 IRQ_TYPE_EDGE_FALLING>;
> -		interrupt-controller;
> -		#interrupt-cells = <2>;
> -		status = "okay";
> -
> -		regulators {
> -			compatible = "st,stpmic1-regulators";
> -			ldo1-supply = <&v3v3>;
> -			ldo2-supply = <&v3v3>;
> -			ldo3-supply = <&vdd_ddr>;
> -			ldo5-supply = <&v3v3>;
> -			ldo6-supply = <&v3v3>;
> -			pwr_sw1-supply = <&bst_out>;
> -			pwr_sw2-supply = <&bst_out>;
> -
> -			vddcore: buck1 {
> -				regulator-name = "vddcore";
> -				regulator-min-microvolt = <800000>;
> -				regulator-max-microvolt = <1350000>;
> -				regulator-always-on;
> -				regulator-initial-mode = <0>;
> -				regulator-over-current-protection;
> -			};
> -
> -			vdd_ddr: buck2 {
> -				regulator-name = "vdd_ddr";
> -				regulator-min-microvolt = <1350000>;
> -				regulator-max-microvolt = <1350000>;
> -				regulator-always-on;
> -				regulator-initial-mode = <0>;
> -				regulator-over-current-protection;
> -			};
> -
> -			vdd: buck3 {
> -				regulator-name = "vdd";
> -				regulator-min-microvolt = <3300000>;
> -				regulator-max-microvolt = <3300000>;
> -				regulator-always-on;
> -				st,mask-reset;
> -				regulator-initial-mode = <0>;
> -				regulator-over-current-protection;
> -			};
> -
> -			v3v3: buck4 {
> -				regulator-name = "v3v3";
> -				regulator-min-microvolt = <3300000>;
> -				regulator-max-microvolt = <3300000>;
> -				regulator-always-on;
> -				regulator-over-current-protection;
> -				regulator-initial-mode = <0>;
> -			};
> -
> -			vdda: ldo1 {
> -				regulator-name = "vdda";
> -				regulator-min-microvolt = <2900000>;
> -				regulator-max-microvolt = <2900000>;
> -				interrupts = <IT_CURLIM_LDO1 0>;
> -			};
> -
> -			v2v8: ldo2 {
> -				regulator-name = "v2v8";
> -				regulator-min-microvolt = <2800000>;
> -				regulator-max-microvolt = <2800000>;
> -				interrupts = <IT_CURLIM_LDO2 0>;
> -			};
> -
> -			vtt_ddr: ldo3 {
> -				regulator-name = "vtt_ddr";
> -				regulator-min-microvolt = <500000>;
> -				regulator-max-microvolt = <750000>;
> -				regulator-always-on;
> -				regulator-over-current-protection;
> -			};
> -
> -			vdd_usb: ldo4 {
> -				regulator-name = "vdd_usb";
> -				regulator-min-microvolt = <3300000>;
> -				regulator-max-microvolt = <3300000>;
> -				interrupts = <IT_CURLIM_LDO4 0>;
> -			};
> -
> -			vdd_sd: ldo5 {
> -				regulator-name = "vdd_sd";
> -				regulator-min-microvolt = <2900000>;
> -				regulator-max-microvolt = <2900000>;
> -				interrupts = <IT_CURLIM_LDO5 0>;
> -				regulator-boot-on;
> -			};
> -
> -			v1v8: ldo6 {
> -				regulator-name = "v1v8";
> -				regulator-min-microvolt = <1800000>;
> -				regulator-max-microvolt = <1800000>;
> -				interrupts = <IT_CURLIM_LDO6 0>;
> -			};
> -
> -			vref_ddr: vref_ddr {
> -				regulator-name = "vref_ddr";
> -				regulator-always-on;
> -				regulator-over-current-protection;
> -			};
> -
> -			bst_out: boost {
> -				regulator-name = "bst_out";
> -				interrupts = <IT_OCP_BOOST 0>;
> -			};
> -
> -			vbus_otg: pwr_sw1 {
> -				regulator-name = "vbus_otg";
> -				interrupts = <IT_OCP_OTG 0>;
> -			};
> -
> -			vbus_sw: pwr_sw2 {
> -				regulator-name = "vbus_sw";
> -				interrupts = <IT_OCP_SWOUT 0>;
> -				regulator-active-discharge;
> -			};
> -		};
> -
> -		onkey {
> -			compatible = "st,stpmic1-onkey";
> -			interrupts = <IT_PONKEY_F 0>, <IT_PONKEY_R 0>;
> -			interrupt-names = "onkey-falling", "onkey-rising";
> -			power-off-time-sec = <10>;
> -			status = "okay";
> -		};
> -
> -		watchdog {
> -			compatible = "st,stpmic1-wdt";
> -			status = "disabled";
> -		};
> -	};
> -
> -	touchscreen@49 {
> -		compatible = "ti,tsc2004";
> -		reg = <0x49>;
> -		vio-supply = <&v3v3>;
> -		interrupts-extended = <&gpioh 3 IRQ_TYPE_EDGE_FALLING>;
> -	};
> -
> -	eeprom@50 {
> -		compatible = "atmel,24c02";
> -		reg = <0x50>;
> -		pagesize = <16>;
> -	};
> -};
> -
> -&ipcc {
> -	status = "okay";
> -};
> -
> -&iwdg2 {
> -	timeout-sec = <32>;
> -	status = "okay";
> -};
> -
> -&m4_rproc {
> -	memory-region = <&retram>, <&mcuram>, <&mcuram2>, <&vdev0vring0>,
> -			<&vdev0vring1>, <&vdev0buffer>;
> -	mboxes = <&ipcc 0>, <&ipcc 1>, <&ipcc 2>;
> -	mbox-names = "vq0", "vq1", "shutdown";
> -	interrupt-parent = <&exti>;
> -	interrupts = <68 1>;
> -	status = "okay";
> -};
> -
> -&pwr_regulators {
> -	vdd-supply = <&vdd>;
> -	vdd_3v3_usbfs-supply = <&vdd_usb>;
> -};
> -
> -&qspi {
> -	pinctrl-names = "default", "sleep";
> -	pinctrl-0 = <&qspi_clk_pins_a &qspi_bk1_pins_a &qspi_bk2_pins_a>;
> -	pinctrl-1 = <&qspi_clk_sleep_pins_a &qspi_bk1_sleep_pins_a &qspi_bk2_sleep_pins_a>;
> -	reg = <0x58003000 0x1000>, <0x70000000 0x4000000>;
> -	#address-cells = <1>;
> -	#size-cells = <0>;
> -	status = "okay";
> -
> -	flash0: mx66l51235l@0 {
> -		compatible = "jedec,spi-nor";
> -		reg = <0>;
> -		spi-rx-bus-width = <4>;
> -		spi-max-frequency = <108000000>;
> -		#address-cells = <1>;
> -		#size-cells = <1>;
> -	};
> -};
> -
> -&rng1 {
> -	status = "okay";
> -};
> -
> -&rtc {
> -	status = "okay";
> -};
> -
> -&sdmmc1 {
> -	pinctrl-names = "default", "opendrain", "sleep";
> -	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_a>;
> -	pinctrl-1 = <&sdmmc1_b4_od_pins_a &sdmmc1_dir_pins_a>;
> -	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a &sdmmc1_dir_sleep_pins_a>;
> -	broken-cd;
> -	st,sig-dir;
> -	st,neg-edge;
> -	st,use-ckin;
> -	bus-width = <4>;
> -	vmmc-supply = <&vdd_sd>;
> -	status = "okay";
> -};
> -
> -&sdmmc2 {
> -	pinctrl-names = "default", "opendrain", "sleep";
> -	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_a>;
> -	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_a>;
> -	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_a>;
> -	non-removable;
> -	no-sd;
> -	no-sdio;
> -	st,neg-edge;
> -	bus-width = <8>;
> -	vmmc-supply = <&v3v3>;
> -	vqmmc-supply = <&v3v3>;
> -	mmc-ddr-3_3v;
> -	status = "okay";
> -};
> -
> -&sdmmc3 {
> -	pinctrl-names = "default", "opendrain", "sleep";
> -	pinctrl-0 = <&sdmmc3_b4_pins_a>;
> -	pinctrl-1 = <&sdmmc3_b4_od_pins_a>;
> -	pinctrl-2 = <&sdmmc3_b4_sleep_pins_a>;
> -	broken-cd;
> -	st,neg-edge;
> -	bus-width = <4>;
> -	vmmc-supply = <&v3v3>;
> -	vqmmc-supply = <&v3v3>;
> -	mmc-ddr-3_3v;
> -	status = "okay";
> -};
> -
> -&uart4 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&uart4_pins_a>;
> -	status = "okay";
> -};
> diff --git a/arch/arm/boot/dts/stm32mp15xc-dhcom-pdk2.dtsi b/arch/arm/boot/dts/stm32mp15xc-dhcom-pdk2.dtsi
> new file mode 100644
> index 000000000000..bed451bb8e2c
> --- /dev/null
> +++ b/arch/arm/boot/dts/stm32mp15xc-dhcom-pdk2.dtsi
> @@ -0,0 +1,257 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
> +/*
> + * Copyright (C) 2019 Marek Vasut <marex@denx.de>
> + */
> +
> +#include <dt-bindings/pwm/pwm.h>
> +
> +/ {
> +	model = "STMicroelectronics STM32MP157C DHCOM Premium Developer Kit (2)";
> +	compatible = "dh,stm32mp157c-dhcom-pdk2", "st,stm32mp157";
> +
> +	aliases {
> +		serial0 = &uart4;
> +		serial1 = &usart3;
> +		serial2 = &uart8;
> +		ethernet0 = &ethernet0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	clk_ext_audio_codec: clock-codec {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <24000000>;
> +	};
> +
> +	display_bl: display-bl {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm2 0 500000 PWM_POLARITY_INVERTED>;
> +		brightness-levels = <0 16 22 30 40 55 75 102 138 188 255>;
> +		default-brightness-level = <8>;
> +		enable-gpios = <&gpioi 0 GPIO_ACTIVE_HIGH>;
> +		status = "okay";
> +	};
> +
> +	ethernet_vio: vioregulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vio";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpiog 3 GPIO_ACTIVE_LOW>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +
> +	panel {
> +		compatible = "edt,etm0700g0edh6";
> +		backlight = <&display_bl>;
> +
> +		port {
> +			lcd_panel_in: endpoint {
> +				remote-endpoint = <&lcd_display_out>;
> +			};
> +		};
> +	};
> +
> +	sound {
> +		compatible = "audio-graph-card";
> +		routing =
> +			"MIC_IN", "Capture",
> +			"Capture", "Mic Bias",
> +			"Playback", "HP_OUT";
> +		dais = <&sai2a_port &sai2b_port>;
> +		status = "okay";
> +	};
> +};
> +
> +&cec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&cec_pins_a>;
> +	status = "okay";
> +};
> +
> +&ethernet0 {
> +	status = "okay";
> +	pinctrl-0 = <&ethernet0_rmii_pins_a>;
> +	pinctrl-1 = <&ethernet0_rmii_pins_sleep_a>;
> +	pinctrl-names = "default", "sleep";
> +	phy-mode = "rmii";
> +	max-speed = <100>;
> +	phy-handle = <&phy0>;
> +	st,eth-ref-clk-sel;
> +	phy-reset-gpios = <&gpioh 15 GPIO_ACTIVE_LOW>;
> +
> +	mdio0 {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		compatible = "snps,dwmac-mdio";
> +
> +		phy0: ethernet-phy@1 {
> +			reg = <1>;
> +		};
> +	};
> +};
> +
> +&i2c5 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c5_pins_a>;
> +	i2c-scl-rising-time-ns = <185>;
> +	i2c-scl-falling-time-ns = <20>;
> +	status = "okay";
> +	/* spare dmas for other usage */
> +	/delete-property/dmas;
> +	/delete-property/dma-names;
> +
> +	sgtl5000: codec@a {
> +		compatible = "fsl,sgtl5000";
> +		reg = <0x0a>;
> +		#sound-dai-cells = <0>;
> +		clocks = <&clk_ext_audio_codec>;
> +		VDDA-supply = <&v3v3>;
> +		VDDIO-supply = <&vdd>;
> +
> +		sgtl5000_port: port {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			sgtl5000_tx_endpoint: endpoint@0 {
> +				reg = <0>;
> +				remote-endpoint = <&sai2a_endpoint>;
> +				frame-master;
> +				bitclock-master;
> +			};
> +
> +			sgtl5000_rx_endpoint: endpoint@1 {
> +				reg = <1>;
> +				remote-endpoint = <&sai2b_endpoint>;
> +				frame-master;
> +				bitclock-master;
> +			};
> +		};
> +
> +	};
> +
> +	polytouch@38 {
> +		compatible = "edt,edt-ft5x06";
> +		reg = <0x38>;
> +		interrupt-parent = <&gpiog>;
> +		interrupts = <2 IRQ_TYPE_EDGE_FALLING>; /* GPIO E */
> +		linux,wakeup;
> +	};
> +};
> +
> +&ltdc {
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&ltdc_pins_b>;
> +	pinctrl-1 = <&ltdc_pins_sleep_b>;
> +	status = "okay";
> +
> +	port {
> +		lcd_display_out: endpoint {
> +			remote-endpoint = <&lcd_panel_in>;
> +		};
> +	};
> +};
> +
> +&sai2 {
> +	clocks = <&rcc SAI2>, <&rcc PLL3_Q>, <&rcc PLL3_R>;
> +	clock-names = "pclk", "x8k", "x11k";
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&sai2a_pins_b &sai2b_pins_b>;
> +	pinctrl-1 = <&sai2a_sleep_pins_b &sai2b_sleep_pins_b>;
> +	status = "okay";
> +
> +	sai2a: audio-controller@4400b004 {
> +		#clock-cells = <0>;
> +		dma-names = "tx";
> +		clocks = <&rcc SAI2_K>;
> +		clock-names = "sai_ck";
> +		status = "okay";
> +
> +		sai2a_port: port {
> +			sai2a_endpoint: endpoint {
> +				remote-endpoint = <&sgtl5000_tx_endpoint>;
> +				format = "i2s";
> +				mclk-fs = <512>;
> +				dai-tdm-slot-num = <2>;
> +				dai-tdm-slot-width = <16>;
> +			};
> +		};
> +	};
> +
> +	sai2b: audio-controller@4400b024 {
> +		dma-names = "rx";
> +		st,sync = <&sai2a 2>;
> +		clocks = <&rcc SAI2_K>, <&sai2a>;
> +		clock-names = "sai_ck", "MCLK";
> +		status = "okay";
> +
> +		sai2b_port: port {
> +			sai2b_endpoint: endpoint {
> +				remote-endpoint = <&sgtl5000_rx_endpoint>;
> +				format = "i2s";
> +				mclk-fs = <512>;
> +				dai-tdm-slot-num = <2>;
> +				dai-tdm-slot-width = <16>;
> +			};
> +		};
> +	};
> +};
> +
> +&timers2 {
> +	/* spare dmas for other usage (un-delete to enable pwm capture) */
> +	/delete-property/dmas;
> +	/delete-property/dma-names;
> +	status = "okay";
> +	pwm2: pwm {
> +		pinctrl-0 = <&pwm2_pins_a>;
> +		pinctrl-names = "default";
> +		status = "okay";
> +	};
> +	timer@1 {
> +		status = "okay";
> +	};
> +};
> +
> +&usart3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&usart3_pins_a>;
> +	status = "okay";
> +};
> +
> +&uart8 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart8_pins_a>;
> +	status = "okay";
> +};
> +
> +&usbh_ehci {
> +	phys = <&usbphyc_port0>;
> +	status = "okay";
> +};
> +
> +&usbotg_hs {
> +	dr_mode = "peripheral";
> +	phys = <&usbphyc_port1 0>;
> +	phy-names = "usb2-phy";
> +	status = "okay";
> +};
> +
> +&usbphyc {
> +	status = "okay";
> +};
> +
> +&usbphyc_port0 {
> +	phy-supply = <&vdd_usb>;
> +	vdda1v1-supply = <&reg11>;
> +	vdda1v8-supply = <&reg18>;
> +};
> +
> +&usbphyc_port1 {
> +	phy-supply = <&vdd_usb>;
> +	vdda1v1-supply = <&reg11>;
> +	vdda1v8-supply = <&reg18>;
> +};
> diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
> new file mode 100644
> index 000000000000..ba905196fb54
> --- /dev/null
> +++ b/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
> @@ -0,0 +1,361 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright (C) 2019-2020 Marek Vasut <marex@denx.de>
> + */
> +
> +#include "stm32mp15-pinctrl.dtsi"
> +#include "stm32mp15xxaa-pinctrl.dtsi"
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/mfd/st,stpmic1.h>
> +
> +/ {
> +	memory@c0000000 {
> +		device_type = "memory";
> +		reg = <0xC0000000 0x40000000>;
> +	};
> +
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
> +};
> +
> +&adc {
> +	vdd-supply = <&vdd>;
> +	vdda-supply = <&vdda>;
> +	vref-supply = <&vdda>;
> +	status = "okay";
> +
> +	adc1: adc@0 {
> +		st,min-sample-time-nsecs = <5000>;
> +		st,adc-channels = <0>;
> +		status = "okay";
> +	};
> +
> +	adc2: adc@100 {
> +		st,adc-channels = <1>;
> +		st,min-sample-time-nsecs = <5000>;
> +		status = "okay";
> +	};
> +};
> +
> +&dac {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&dac_ch1_pins_a &dac_ch2_pins_a>;
> +	vref-supply = <&vdda>;
> +	status = "okay";
> +
> +	dac1: dac@1 {
> +		status = "okay";
> +	};
> +	dac2: dac@2 {
> +		status = "okay";
> +	};
> +};
> +
> +&dts {
> +	status = "okay";
> +};
> +
> +&i2c4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c4_pins_a>;
> +	i2c-scl-rising-time-ns = <185>;
> +	i2c-scl-falling-time-ns = <20>;
> +	status = "okay";
> +	/* spare dmas for other usage */
> +	/delete-property/dmas;
> +	/delete-property/dma-names;
> +
> +	rtc@32 {
> +		compatible = "microcrystal,rv8803";
> +		reg = <0x32>;
> +	};
> +
> +	pmic: stpmic@33 {
> +		compatible = "st,stpmic1";
> +		reg = <0x33>;
> +		interrupts-extended = <&gpioa 0 IRQ_TYPE_EDGE_FALLING>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +		status = "okay";
> +
> +		regulators {
> +			compatible = "st,stpmic1-regulators";
> +			ldo1-supply = <&v3v3>;
> +			ldo2-supply = <&v3v3>;
> +			ldo3-supply = <&vdd_ddr>;
> +			ldo5-supply = <&v3v3>;
> +			ldo6-supply = <&v3v3>;
> +			pwr_sw1-supply = <&bst_out>;
> +			pwr_sw2-supply = <&bst_out>;
> +
> +			vddcore: buck1 {
> +				regulator-name = "vddcore";
> +				regulator-min-microvolt = <800000>;
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
> +			vdda: ldo1 {
> +				regulator-name = "vdda";
> +				regulator-min-microvolt = <2900000>;
> +				regulator-max-microvolt = <2900000>;
> +				interrupts = <IT_CURLIM_LDO1 0>;
> +			};
> +
> +			v2v8: ldo2 {
> +				regulator-name = "v2v8";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +				interrupts = <IT_CURLIM_LDO2 0>;
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
> +			vdd_sd: ldo5 {
> +				regulator-name = "vdd_sd";
> +				regulator-min-microvolt = <2900000>;
> +				regulator-max-microvolt = <2900000>;
> +				interrupts = <IT_CURLIM_LDO5 0>;
> +				regulator-boot-on;
> +			};
> +
> +			v1v8: ldo6 {
> +				regulator-name = "v1v8";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				interrupts = <IT_CURLIM_LDO6 0>;
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
> +			interrupts = <IT_PONKEY_F 0>, <IT_PONKEY_R 0>;
> +			interrupt-names = "onkey-falling", "onkey-rising";
> +			power-off-time-sec = <10>;
> +			status = "okay";
> +		};
> +
> +		watchdog {
> +			compatible = "st,stpmic1-wdt";
> +			status = "disabled";
> +		};
> +	};
> +
> +	touchscreen@49 {
> +		compatible = "ti,tsc2004";
> +		reg = <0x49>;
> +		vio-supply = <&v3v3>;
> +		interrupts-extended = <&gpioh 3 IRQ_TYPE_EDGE_FALLING>;
> +	};
> +
> +	eeprom@50 {
> +		compatible = "atmel,24c02";
> +		reg = <0x50>;
> +		pagesize = <16>;
> +	};
> +};
> +
> +&ipcc {
> +	status = "okay";
> +};
> +
> +&iwdg2 {
> +	timeout-sec = <32>;
> +	status = "okay";
> +};
> +
> +&m4_rproc {
> +	memory-region = <&retram>, <&mcuram>, <&mcuram2>, <&vdev0vring0>,
> +			<&vdev0vring1>, <&vdev0buffer>;
> +	mboxes = <&ipcc 0>, <&ipcc 1>, <&ipcc 2>;
> +	mbox-names = "vq0", "vq1", "shutdown";
> +	interrupt-parent = <&exti>;
> +	interrupts = <68 1>;
> +	status = "okay";
> +};
> +
> +&pwr_regulators {
> +	vdd-supply = <&vdd>;
> +	vdd_3v3_usbfs-supply = <&vdd_usb>;
> +};
> +
> +&qspi {
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&qspi_clk_pins_a &qspi_bk1_pins_a &qspi_bk2_pins_a>;
> +	pinctrl-1 = <&qspi_clk_sleep_pins_a &qspi_bk1_sleep_pins_a &qspi_bk2_sleep_pins_a>;
> +	reg = <0x58003000 0x1000>, <0x70000000 0x4000000>;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	flash0: mx66l51235l@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-rx-bus-width = <4>;
> +		spi-max-frequency = <108000000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +	};
> +};
> +
> +&rng1 {
> +	status = "okay";
> +};
> +
> +&rtc {
> +	status = "okay";
> +};
> +
> +&sdmmc1 {
> +	pinctrl-names = "default", "opendrain", "sleep";
> +	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_a>;
> +	pinctrl-1 = <&sdmmc1_b4_od_pins_a &sdmmc1_dir_pins_a>;
> +	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a &sdmmc1_dir_sleep_pins_a>;
> +	broken-cd;
> +	st,sig-dir;
> +	st,neg-edge;
> +	st,use-ckin;
> +	bus-width = <4>;
> +	vmmc-supply = <&vdd_sd>;
> +	status = "okay";
> +};
> +
> +&sdmmc2 {
> +	pinctrl-names = "default", "opendrain", "sleep";
> +	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_a>;
> +	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_a>;
> +	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_a>;
> +	non-removable;
> +	no-sd;
> +	no-sdio;
> +	st,neg-edge;
> +	bus-width = <8>;
> +	vmmc-supply = <&v3v3>;
> +	vqmmc-supply = <&v3v3>;
> +	mmc-ddr-3_3v;
> +	status = "okay";
> +};
> +
> +&sdmmc3 {
> +	pinctrl-names = "default", "opendrain", "sleep";
> +	pinctrl-0 = <&sdmmc3_b4_pins_a>;
> +	pinctrl-1 = <&sdmmc3_b4_od_pins_a>;
> +	pinctrl-2 = <&sdmmc3_b4_sleep_pins_a>;
> +	broken-cd;
> +	st,neg-edge;
> +	bus-width = <4>;
> +	vmmc-supply = <&v3v3>;
> +	vqmmc-supply = <&v3v3>;
> +	mmc-ddr-3_3v;
> +	status = "okay";
> +};
> +
> +&uart4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart4_pins_a>;
> +	status = "okay";
> +};
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
