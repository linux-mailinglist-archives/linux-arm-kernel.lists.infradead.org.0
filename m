Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 793DF1C9505
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:26:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WWhgvJCBML3+Geoz9pCFsCML89N20W89wv3a1uZISaU=; b=M/uxC0a/1DbVsW
	JBKvLw3F2ON5RO1mDkhGmTudHrmdBhe6bx5E1lY/1kVb1anjuFezwrpfGb9p/mcVFo3vn5h0hdmbw
	aXA2zbrT7wN9gW1h+eM/fz9OjAf8Ugp9URuuCxfff66Lzt0dJsmG1WaXzGLPwfXRb+An15PAiDPPg
	e6V90thufg5DkAJ9NuQBZGwtNbFTzMbF+zh7RZTANejGwaaUAl26PaJ4V6duOh7v1L1iYByPgBgjk
	EGeYXO03BOAQre7iB2KUvm6PreFj3xoqUC90w55PB2dD+rIBhbj0KDWSgLSLQxCYIiQ99PQu/KgVA
	UI5w/05JQi6DcEnMUyoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiQ2-0004ic-Dy; Thu, 07 May 2020 15:26:38 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWiPq-0004gW-Fq
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:26:29 +0000
Received: by mail-pl1-x642.google.com with SMTP id s10so2191262plr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 08:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WaKAFidLyqa+J90zxjvMdlLDYFqhDm4OrOWhAXduYuo=;
 b=ckUffH+EN+avtGwuuJ8E2dPuhvRAeh4U8vV+0Gw0ZVkM13tQcGNPb1m7MbToh6Vn/C
 UU3wmnC8rO5iBi+KxoedD35dc39Jl5tG9DjcK9KbD3+Ah8fSt0kE+K4Lw9By3hbvtdcM
 60C70WdoqiAd16A2w5Fhw4bvKvFGMYD22IzoCrNBrg6DQKqPYMTcvj6i/N+7GLdRfl6R
 PbB8MRvNAPl5PvgTQvlqSBECUBipUwp+YfDoKExw7NVl4iOOooabGiBFr/zG2gF+SiD5
 XbyCmUG9crONnQdxRbMyuGFSsOFbYA3VG/LRYaQKrocOJHPBhWlpdsajkdoM6zBLcIMu
 j3uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WaKAFidLyqa+J90zxjvMdlLDYFqhDm4OrOWhAXduYuo=;
 b=nN2F0HgTvrMqsBWCp1eMd/ABP5zYEUtUfH0cezzPRVSDZ8uTF5hiXDQHlvzcflvnWq
 yD8MMs1Ps4MxhnMeq/r2COxHeewGr9SmK15yPptfE7T7DCza8haZAWH32vL8ErdYkSck
 buO27VEzVX0tqp5Kl5FVRwRzvN2MsaRnbUzQYRB4Ofm3ihNYjua0Vo4H2ppoXDQ+/+Ns
 OLR5boo6ZwMY53kScTX9R2L6FvHTXIiRAQsXmLUXQelk2MMhcoVmcn8DnRO32QaJmb4w
 LY0KIvWWAwv0Qa4xnW10EHZ8uA9156WrhsvWrW+vbx5gGlkipMftaj8Y5VlZp6jefs0o
 pQyQ==
X-Gm-Message-State: AGi0PuZbKhRuOfaNVWJWbtl4OgoaDj6YoZpd8QaLf9yPbses8gl5mpUT
 8oOLRdEu52ehvMyqQDZwDtTn
X-Google-Smtp-Source: APiQypJ88zqnR+bKSi61eeRxywNn0m402xmK1lLCAAdJnBZ+KoqWVAXOltFtBVJXwFyDRaxKc0govw==
X-Received: by 2002:a17:90a:7a83:: with SMTP id
 q3mr665180pjf.162.1588865184980; 
 Thu, 07 May 2020 08:26:24 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6093:7a3f:4ddc:efce:d298:c431])
 by smtp.gmail.com with ESMTPSA id g6sm129185pjx.48.2020.05.07.08.26.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 07 May 2020 08:26:24 -0700 (PDT)
Date: Thu, 7 May 2020 20:56:16 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH 12/12] ARM: dts: stm32: Add DTs for STM32MP15x variants
 of the DHCOR SOM and AV96
Message-ID: <20200507152616.GB2019@Mani-XPS-13-9360>
References: <20200429163743.67854-1-marex@denx.de>
 <20200429163743.67854-12-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429163743.67854-12-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_082626_544926_A77E4F0E 
X-CRM114-Status: GOOD (  21.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Apr 29, 2020 at 06:37:43PM +0200, Marek Vasut wrote:
> The Avenger96 can be populated with DH Electronics DHCOR SoM with any
> STM32MP15xA variant. Add the DTs describing the remaining combinations.
> Since the board is a combination of carrier board and SoM, update the
> DT name, however keep the old DT for backward compatibility.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm/boot/dts/Makefile                    |   3 +
>  .../boot/dts/stm32mp151a-dhcor-avenger96.dts  |   9 +
>  arch/arm/boot/dts/stm32mp151a-dhcor-som.dtsi  |   8 +
>  .../boot/dts/stm32mp153a-dhcor-avenger96.dts  |  23 +
>  arch/arm/boot/dts/stm32mp153a-dhcor-som.dtsi  |   8 +
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts   | 416 +-----------------
>  .../boot/dts/stm32mp157a-dhcor-avenger96.dts  |  23 +
>  arch/arm/boot/dts/stm32mp157a-dhcor-som.dtsi  | 206 +--------
>  .../boot/dts/stm32mp15xa-dhcor-avenger96.dtsi | 405 +++++++++++++++++
>  ...o1v8.dtsi => stm32mp15xa-dhcor-io1v8.dtsi} |   0
>  arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi  | 209 +++++++++
>  11 files changed, 692 insertions(+), 618 deletions(-)
>  create mode 100644 arch/arm/boot/dts/stm32mp151a-dhcor-avenger96.dts
>  create mode 100644 arch/arm/boot/dts/stm32mp151a-dhcor-som.dtsi
>  create mode 100644 arch/arm/boot/dts/stm32mp153a-dhcor-avenger96.dts
>  create mode 100644 arch/arm/boot/dts/stm32mp153a-dhcor-som.dtsi
>  create mode 100644 arch/arm/boot/dts/stm32mp157a-dhcor-avenger96.dts
>  create mode 100644 arch/arm/boot/dts/stm32mp15xa-dhcor-avenger96.dtsi
>  rename arch/arm/boot/dts/{stm32mp157a-dhcor-io1v8.dtsi => stm32mp15xa-dhcor-io1v8.dtsi} (100%)
>  create mode 100644 arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index f43467b02bcd..b4a4d2b0f18e 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1029,6 +1029,9 @@ dtb-$(CONFIG_ARCH_STM32) += \
>  	stm32h743i-eval.dtb \
>  	stm32h743i-disco.dtb \
>  	stm32mp157a-avenger96.dtb \
> +	stm32mp151a-dhcor-avenger96.dtb \
> +	stm32mp153a-dhcor-avenger96.dtb \
> +	stm32mp157a-dhcor-avenger96.dtb \

I'm not really sure if keeping SoM name is a good practice here. Since the
board is sold as "Avenger96" alone, why do you want to prepend SoM name to it?
When you say, "stm32mp157a-avenger96.dtb" it obviously means that Avenger96
board uses the stm32mp157a SoC and that comes from SoM.

>  	stm32mp157a-dk1.dtb \
>  	stm32mp157c-dhcom-pdk2.dtb \
>  	stm32mp157c-dk2.dtb \
> diff --git a/arch/arm/boot/dts/stm32mp151a-dhcor-avenger96.dts b/arch/arm/boot/dts/stm32mp151a-dhcor-avenger96.dts
> new file mode 100644
> index 000000000000..0f3875fbdd73
> --- /dev/null
> +++ b/arch/arm/boot/dts/stm32mp151a-dhcor-avenger96.dts
> @@ -0,0 +1,9 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
> +/*
> + * Copyright (C) 2020 Marek Vasut <marex@denx.de>
> + */
> +
> +/dts-v1/;
> +
> +#include "stm32mp151a-dhcor-som.dtsi"
> +#include "stm32mp15xa-dhcor-avenger96.dtsi"

[...]

> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index 10f11ca53c7d..dc3bbd576756 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -1,421 +1,9 @@
>  // SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
>  /*
> - * Copyright (C) Linaro Ltd 2019 - All Rights Reserved
> - * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

I'd still keep the copyright here.

Rest looks fine to me.

Thanks,
Mani

>   * Copyright (C) 2020 Marek Vasut <marex@denx.de>
>   */
>  
>  /dts-v1/;
>  
> -#include "stm32mp157a-dhcor-som.dtsi"
> -/* Avenger96 uses DHCOR SoM configured for 1V8 IO operation */
> -#include "stm32mp157a-dhcor-io1v8.dtsi"
> -
> -/ {
> -	model = "Arrow Electronics STM32MP157A Avenger96 board";
> -	compatible = "arrow,stm32mp157a-avenger96", "st,stm32mp157";
> -
> -	aliases {
> -		ethernet0 = &ethernet0;
> -		mmc0 = &sdmmc1;
> -		serial0 = &uart4;
> -		serial1 = &uart7;
> -		serial2 = &usart2;
> -		spi0 = &qspi;
> -	};
> -
> -	/* XTal Q1 */
> -	cec_clock: clk-cec-fixed {
> -		#clock-cells = <0>;
> -		compatible = "fixed-clock";
> -		clock-frequency = <24000000>;
> -	};
> -
> -	chosen {
> -		stdout-path = "serial0:115200n8";
> -	};
> -
> -	hdmi-out {
> -		compatible = "hdmi-connector";
> -		type = "a";
> -
> -		port {
> -			hdmi_con: endpoint {
> -				remote-endpoint = <&adv7513_out>;
> -			};
> -		};
> -	};
> -
> -	led {
> -		compatible = "gpio-leds";
> -		led1 {
> -			label = "green:user0";
> -			gpios = <&gpioz 7 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger = "heartbeat";
> -			default-state = "off";
> -		};
> -
> -		led2 {
> -			label = "green:user1";
> -			gpios = <&gpiof 3 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger = "mmc0";
> -			default-state = "off";
> -		};
> -
> -		led3 {
> -			label = "green:user2";
> -			gpios = <&gpiog 0 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger = "mmc1";
> -			default-state = "off";
> -		};
> -
> -		led4 {
> -			label = "green:user3";
> -			gpios = <&gpiog 1 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger = "none";
> -			default-state = "off";
> -			panic-indicator;
> -		};
> -	};
> -
> -	sd_switch: regulator-sd_switch {
> -		compatible = "regulator-gpio";
> -		regulator-name = "sd_switch";
> -		regulator-min-microvolt = <1800000>;
> -		regulator-max-microvolt = <2900000>;
> -		regulator-type = "voltage";
> -		regulator-always-on;
> -
> -		gpios = <&gpioi 5 GPIO_ACTIVE_HIGH>;
> -		gpios-states = <0>;
> -		states = <1800000 0x1>,
> -			 <2900000 0x0>;
> -	};
> -
> -	sound {
> -		compatible = "audio-graph-card";
> -		label = "STM32MP1-AV96-HDMI";
> -		dais = <&sai2a_port>;
> -		status = "okay";
> -	};
> -
> -	wlan_pwr: regulator-wlan {
> -		compatible = "regulator-fixed";
> -
> -		regulator-name = "wl-reg";
> -		regulator-min-microvolt = <3300000>;
> -		regulator-max-microvolt = <3300000>;
> -
> -		gpios = <&gpioz 3 GPIO_ACTIVE_HIGH>;
> -		enable-active-high;
> -	};
> -};
> -
> -&adc {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&adc12_ain_pins_b>;
> -	vdd-supply = <&vdd>;
> -	vdda-supply = <&vdda>;
> -	vref-supply = <&vdda>;
> -	status = "okay";
> -
> -	adc1: adc@0 {
> -		st,adc-channels = <0 1 6>;
> -		st,min-sample-time-nsecs = <5000>;
> -		status = "okay";
> -	};
> -
> -	adc2: adc@100 {
> -		st,adc-channels = <0 1 2>;
> -		st,min-sample-time-nsecs = <5000>;
> -		status = "okay";
> -	};
> -};
> -
> -&ethernet0 {
> -	status = "okay";
> -	pinctrl-0 = <&ethernet0_rgmii_pins_c>;
> -	pinctrl-1 = <&ethernet0_rgmii_sleep_pins_c>;
> -	pinctrl-names = "default", "sleep";
> -	phy-mode = "rgmii";
> -	max-speed = <1000>;
> -	phy-handle = <&phy0>;
> -
> -	mdio0 {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -		compatible = "snps,dwmac-mdio";
> -		reset-gpios = <&gpioz 2 GPIO_ACTIVE_LOW>;
> -		reset-delay-us = <1000>;
> -
> -		phy0: ethernet-phy@7 {
> -			reg = <7>;
> -
> -			rxc-skew-ps = <1500>;
> -			rxdv-skew-ps = <540>;
> -			rxd0-skew-ps = <420>;
> -			rxd1-skew-ps = <420>;
> -			rxd2-skew-ps = <420>;
> -			rxd3-skew-ps = <420>;
> -
> -			txc-skew-ps = <1440>;
> -			txen-skew-ps = <540>;
> -			txd0-skew-ps = <420>;
> -			txd1-skew-ps = <420>;
> -			txd2-skew-ps = <420>;
> -			txd3-skew-ps = <420>;
> -		};
> -	};
> -};
> -
> -&i2c1 {	/* X6 I2C1 */
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&i2c1_pins_b>;
> -	i2c-scl-rising-time-ns = <185>;
> -	i2c-scl-falling-time-ns = <20>;
> -	status = "okay";
> -	/delete-property/dmas;
> -	/delete-property/dma-names;
> -};
> -
> -&i2c2 {	/* X6 I2C2 */
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&i2c2_pins_c>;
> -	i2c-scl-rising-time-ns = <185>;
> -	i2c-scl-falling-time-ns = <20>;
> -	status = "okay";
> -	/delete-property/dmas;
> -	/delete-property/dma-names;
> -};
> -
> -&i2c4 {
> -	hdmi-transmitter@3d {
> -		compatible = "adi,adv7513";
> -		reg = <0x3d>, <0x2d>, <0x4d>, <0x5d>;
> -		reg-names = "main", "cec", "edid", "packet";
> -		clocks = <&cec_clock>;
> -		clock-names = "cec";
> -
> -		avdd-supply = <&v3v3>;
> -		dvdd-supply = <&v3v3>;
> -		pvdd-supply = <&v3v3>;
> -		dvdd-3v-supply = <&v3v3>;
> -		bgvdd-supply = <&v3v3>;
> -
> -		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
> -		interrupt-parent = <&gpiog>;
> -
> -		status = "okay";
> -
> -		adi,input-depth = <8>;
> -		adi,input-colorspace = "rgb";
> -		adi,input-clock = "1x";
> -		adi,input-style = <1>;
> -		adi,input-justification = "evenly";
> -
> -		ports {
> -			#address-cells = <1>;
> -			#size-cells = <0>;
> -
> -			port@0 {
> -				reg = <0>;
> -				adv7513_in: endpoint {
> -					remote-endpoint = <&ltdc_ep0_out>;
> -				};
> -			};
> -
> -			port@1 {
> -				reg = <1>;
> -				adv7513_out: endpoint {
> -					remote-endpoint = <&hdmi_con>;
> -				};
> -			};
> -
> -			port@2 {
> -				reg = <2>;
> -				adv7513_i2s0: endpoint {
> -					remote-endpoint = <&sai2a_endpoint>;
> -				};
> -			};
> -		};
> -	};
> -};
> -
> -&ltdc {
> -	pinctrl-names = "default", "sleep";
> -	pinctrl-0 = <&ltdc_pins_d>;
> -	pinctrl-1 = <&ltdc_sleep_pins_d>;
> -	status = "okay";
> -
> -	port {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		ltdc_ep0_out: endpoint@0 {
> -			reg = <0>;
> -			remote-endpoint = <&adv7513_in>;
> -		};
> -	};
> -};
> -
> -&m_can1 {
> -	pinctrl-names = "default", "sleep";
> -	pinctrl-0 = <&m_can1_pins_b>;
> -	pinctrl-1 = <&m_can1_sleep_pins_b>;
> -	status = "disabled";
> -};
> -
> -&m_can2 {
> -	pinctrl-names = "default", "sleep";
> -	pinctrl-0 = <&m_can2_pins_a>;
> -	pinctrl-1 = <&m_can2_sleep_pins_a>;
> -	status = "disabled";
> -};
> -
> -&sai2 {
> -	clocks = <&rcc SAI2>, <&rcc PLL3_Q>, <&rcc PLL3_R>;
> -	pinctrl-names = "default", "sleep";
> -	pinctrl-0 = <&sai2a_pins_c>;
> -	pinctrl-1 = <&sai2a_sleep_pins_c>;
> -	clock-names = "pclk", "x8k", "x11k";
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
> -				remote-endpoint = <&adv7513_i2s0>;
> -				format = "i2s";
> -				mclk-fs = <256>;
> -			};
> -		};
> -	};
> -};
> -
> -&sdmmc1 {
> -	pinctrl-names = "default", "opendrain", "sleep";
> -	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_b>;
> -	pinctrl-1 = <&sdmmc1_b4_od_pins_a &sdmmc1_dir_pins_b>;
> -	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a &sdmmc1_dir_sleep_pins_b>;
> -	cd-gpios = <&gpioi 8 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> -	disable-wp;
> -	st,sig-dir;
> -	st,neg-edge;
> -	st,use-ckin;
> -	bus-width = <4>;
> -	vmmc-supply = <&vdd_sd>;
> -	vqmmc-supply = <&sd_switch>;
> -	status = "okay";
> -};
> -
> -&sdmmc2 {
> -	pinctrl-names = "default", "opendrain", "sleep";
> -	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_b>;
> -	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_b>;
> -	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_b>;
> -	bus-width = <8>;
> -	mmc-ddr-1_8v;
> -	no-sd;
> -	no-sdio;
> -	non-removable;
> -	st,neg-edge;
> -	vmmc-supply = <&v3v3>;
> -	vqmmc-supply = <&vdd_io>;
> -	status = "okay";
> -};
> -
> -&sdmmc3 {
> -	pinctrl-names = "default", "opendrain", "sleep";
> -	pinctrl-0 = <&sdmmc3_b4_pins_b>;
> -	pinctrl-1 = <&sdmmc3_b4_od_pins_b>;
> -	pinctrl-2 = <&sdmmc3_b4_sleep_pins_b>;
> -	broken-cd;
> -	non-removable;
> -	st,neg-edge;
> -	bus-width = <4>;
> -	vmmc-supply = <&wlan_pwr>;
> -	status = "okay";
> -
> -	#address-cells = <1>;
> -	#size-cells = <0>;
> -	brcmf: bcrmf@1 {
> -		reg = <1>;
> -		compatible = "brcm,bcm4329-fmac";
> -	};
> -};
> -
> -&spi2 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&spi2_pins_a>;
> -	cs-gpios = <&gpioi 0 0>;
> -	status = "disabled";
> -	/delete-property/dmas;
> -	/delete-property/dma-names;
> -};
> -
> -&uart4 {
> -	/* On Low speed expansion header */
> -	label = "LS-UART1";
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&uart4_pins_b>;
> -	status = "okay";
> -};
> -
> -&uart7 {
> -	/* On Low speed expansion header */
> -	label = "LS-UART0";
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&uart7_pins_a>;
> -	status = "okay";
> -};
> -
> -/* Bluetooth */
> -&usart2 {
> -	pinctrl-names = "default", "sleep";
> -	pinctrl-0 = <&usart2_pins_a>;
> -	pinctrl-1 = <&usart2_sleep_pins_a>;
> -	st,hw-flow-ctrl;
> -	status = "okay";
> -
> -	bluetooth {
> -		compatible = "brcm,bcm43438-bt";
> -		max-speed = <3000000>;
> -		shutdown-gpios = <&gpioz 6 GPIO_ACTIVE_HIGH>;
> -	};
> -};
> -
> -&usbh_ehci {
> -	phys = <&usbphyc_port0>;
> -	phy-names = "usb";
> -	status = "okay";
> -};
> -
> -&usbotg_hs {
> -	pinctrl-0 = <&usbotg_hs_pins_a>;
> -	pinctrl-names = "default";
> -	phy-names = "usb2-phy";
> -	phys = <&usbphyc_port1 0>;
> -	status = "okay";
> -	vbus-supply = <&vbus_otg>;
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
> +/* This DT is here only for backward compatibility */
> +#include "stm32mp157a-dhcor-avenger96.dts"
> diff --git a/arch/arm/boot/dts/stm32mp157a-dhcor-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-dhcor-avenger96.dts
> new file mode 100644
> index 000000000000..7355af3d14f6
> --- /dev/null
> +++ b/arch/arm/boot/dts/stm32mp157a-dhcor-avenger96.dts
> @@ -0,0 +1,23 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
> +/*
> + * Copyright (C) 2020 Marek Vasut <marex@denx.de>
> + */
> +
> +/dts-v1/;
> +
> +#include "stm32mp157a-dhcor-som.dtsi"
> +#include "stm32mp15xa-dhcor-avenger96.dtsi"
> +
> +&m_can1 {
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&m_can1_pins_b>;
> +	pinctrl-1 = <&m_can1_sleep_pins_b>;
> +	status = "disabled";
> +};
> +
> +&m_can2 {
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&m_can2_pins_a>;
> +	pinctrl-1 = <&m_can2_sleep_pins_a>;
> +	status = "disabled";
> +};
> diff --git a/arch/arm/boot/dts/stm32mp157a-dhcor-som.dtsi b/arch/arm/boot/dts/stm32mp157a-dhcor-som.dtsi
> index 7144afeab6ca..7dac547e7996 100644
> --- a/arch/arm/boot/dts/stm32mp157a-dhcor-som.dtsi
> +++ b/arch/arm/boot/dts/stm32mp157a-dhcor-som.dtsi
> @@ -1,210 +1,8 @@
>  // SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
>  /*
> - * Copyright (C) Linaro Ltd 2019 - All Rights Reserved
> - * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>   * Copyright (C) 2020 Marek Vasut <marex@denx.de>
>   */
>  
>  #include "stm32mp157.dtsi"
> -#include "stm32mp15-pinctrl.dtsi"
> -#include "stm32mp15xxac-pinctrl.dtsi"
> -#include <dt-bindings/gpio/gpio.h>
> -#include <dt-bindings/mfd/st,stpmic1.h>
> -
> -/ {
> -	aliases {
> -		spi0 = &qspi;
> -	};
> -
> -	memory@c0000000 {
> -		device_type = "memory";
> -		reg = <0xc0000000 0x40000000>;
> -	};
> -};
> -
> -&i2c4 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&i2c4_pins_a>;
> -	i2c-scl-rising-time-ns = <185>;
> -	i2c-scl-falling-time-ns = <20>;
> -	status = "okay";
> -	/delete-property/dmas;
> -	/delete-property/dma-names;
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
> -
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
> -				regulator-min-microvolt = <1200000>;
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
> -				regulator-min-microvolt = <2900000>;
> -				regulator-max-microvolt = <2900000>;
> -				regulator-always-on;
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
> -				regulator-enable-ramp-delay = <300000>;
> -			};
> -
> -			vref_ddr: vref_ddr {
> -				regulator-name = "vref_ddr";
> -				regulator-always-on;
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
> -				regulator-active-discharge = <1>;
> -			};
> -
> -			vbus_sw: pwr_sw2 {
> -				regulator-name = "vbus_sw";
> -				interrupts = <IT_OCP_SWOUT 0>;
> -				regulator-active-discharge = <1>;
> -			};
> -		};
> -
> -		onkey {
> -			compatible = "st,stpmic1-onkey";
> -			interrupts = <IT_PONKEY_F 0>, <IT_PONKEY_R 1>;
> -			interrupt-names = "onkey-falling", "onkey-rising";
> -			status = "okay";
> -		};
> -
> -		watchdog {
> -			compatible = "st,stpmic1-wdt";
> -			status = "disabled";
> -		};
> -	};
> -
> -	eeprom@53 {
> -		compatible = "atmel,24c02";
> -		reg = <0x53>;
> -		pagesize = <16>;
> -	};
> -};
> -
> -&iwdg2 {
> -	timeout-sec = <32>;
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
> -	pinctrl-0 = <&qspi_clk_pins_a &qspi_bk1_pins_a>;
> -	pinctrl-1 = <&qspi_clk_sleep_pins_a &qspi_bk1_sleep_pins_a>;
> -	reg = <0x58003000 0x1000>, <0x70000000 0x200000>;
> -	#address-cells = <1>;
> -	#size-cells = <0>;
> -	status = "okay";
> -
> -	flash0: spi-flash@0 {
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
> +#include "stm32mp15xc.dtsi"
> +#include "stm32mp15xx-dhcor-som.dtsi"
> diff --git a/arch/arm/boot/dts/stm32mp15xa-dhcor-avenger96.dtsi b/arch/arm/boot/dts/stm32mp15xa-dhcor-avenger96.dtsi
> new file mode 100644
> index 000000000000..baec592aee13
> --- /dev/null
> +++ b/arch/arm/boot/dts/stm32mp15xa-dhcor-avenger96.dtsi
> @@ -0,0 +1,405 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
> +/*
> + * Copyright (C) Linaro Ltd 2019 - All Rights Reserved
> + * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> + * Copyright (C) 2020 Marek Vasut <marex@denx.de>
> + */
> +
> +#include "stm32mp157a-dhcor-som.dtsi"
> +/* Avenger96 uses DHCOR SoM configured for 1V8 IO operation */
> +#include "stm32mp15xa-dhcor-io1v8.dtsi"
> +
> +/ {
> +	model = "Arrow Electronics STM32MP157A Avenger96 board";
> +	compatible = "arrow,stm32mp157a-avenger96", "st,stm32mp157";
> +
> +	aliases {
> +		ethernet0 = &ethernet0;
> +		mmc0 = &sdmmc1;
> +		serial0 = &uart4;
> +		serial1 = &uart7;
> +		serial2 = &usart2;
> +		spi0 = &qspi;
> +	};
> +
> +	/* XTal Q1 */
> +	cec_clock: clk-cec-fixed {
> +		#clock-cells = <0>;
> +		compatible = "fixed-clock";
> +		clock-frequency = <24000000>;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	hdmi-out {
> +		compatible = "hdmi-connector";
> +		type = "a";
> +
> +		port {
> +			hdmi_con: endpoint {
> +				remote-endpoint = <&adv7513_out>;
> +			};
> +		};
> +	};
> +
> +	led {
> +		compatible = "gpio-leds";
> +		led1 {
> +			label = "green:user0";
> +			gpios = <&gpioz 7 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +			default-state = "off";
> +		};
> +
> +		led2 {
> +			label = "green:user1";
> +			gpios = <&gpiof 3 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "mmc0";
> +			default-state = "off";
> +		};
> +
> +		led3 {
> +			label = "green:user2";
> +			gpios = <&gpiog 0 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "mmc1";
> +			default-state = "off";
> +		};
> +
> +		led4 {
> +			label = "green:user3";
> +			gpios = <&gpiog 1 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "none";
> +			default-state = "off";
> +			panic-indicator;
> +		};
> +	};
> +
> +	sd_switch: regulator-sd_switch {
> +		compatible = "regulator-gpio";
> +		regulator-name = "sd_switch";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <2900000>;
> +		regulator-type = "voltage";
> +		regulator-always-on;
> +
> +		gpios = <&gpioi 5 GPIO_ACTIVE_HIGH>;
> +		gpios-states = <0>;
> +		states = <1800000 0x1>,
> +			 <2900000 0x0>;
> +	};
> +
> +	sound {
> +		compatible = "audio-graph-card";
> +		label = "STM32MP1-AV96-HDMI";
> +		dais = <&sai2a_port>;
> +		status = "okay";
> +	};
> +
> +	wlan_pwr: regulator-wlan {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "wl-reg";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpios = <&gpioz 3 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +};
> +
> +&adc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&adc12_ain_pins_b>;
> +	vdd-supply = <&vdd>;
> +	vdda-supply = <&vdda>;
> +	vref-supply = <&vdda>;
> +	status = "okay";
> +
> +	adc1: adc@0 {
> +		st,adc-channels = <0 1 6>;
> +		st,min-sample-time-nsecs = <5000>;
> +		status = "okay";
> +	};
> +
> +	adc2: adc@100 {
> +		st,adc-channels = <0 1 2>;
> +		st,min-sample-time-nsecs = <5000>;
> +		status = "okay";
> +	};
> +};
> +
> +&ethernet0 {
> +	status = "okay";
> +	pinctrl-0 = <&ethernet0_rgmii_pins_c>;
> +	pinctrl-1 = <&ethernet0_rgmii_sleep_pins_c>;
> +	pinctrl-names = "default", "sleep";
> +	phy-mode = "rgmii";
> +	max-speed = <1000>;
> +	phy-handle = <&phy0>;
> +
> +	mdio0 {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		compatible = "snps,dwmac-mdio";
> +		reset-gpios = <&gpioz 2 GPIO_ACTIVE_LOW>;
> +		reset-delay-us = <1000>;
> +
> +		phy0: ethernet-phy@7 {
> +			reg = <7>;
> +
> +			rxc-skew-ps = <1500>;
> +			rxdv-skew-ps = <540>;
> +			rxd0-skew-ps = <420>;
> +			rxd1-skew-ps = <420>;
> +			rxd2-skew-ps = <420>;
> +			rxd3-skew-ps = <420>;
> +
> +			txc-skew-ps = <1440>;
> +			txen-skew-ps = <540>;
> +			txd0-skew-ps = <420>;
> +			txd1-skew-ps = <420>;
> +			txd2-skew-ps = <420>;
> +			txd3-skew-ps = <420>;
> +		};
> +	};
> +};
> +
> +&i2c1 {	/* X6 I2C1 */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c1_pins_b>;
> +	i2c-scl-rising-time-ns = <185>;
> +	i2c-scl-falling-time-ns = <20>;
> +	status = "okay";
> +	/delete-property/dmas;
> +	/delete-property/dma-names;
> +};
> +
> +&i2c2 {	/* X6 I2C2 */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c2_pins_c>;
> +	i2c-scl-rising-time-ns = <185>;
> +	i2c-scl-falling-time-ns = <20>;
> +	status = "okay";
> +	/delete-property/dmas;
> +	/delete-property/dma-names;
> +};
> +
> +&i2c4 {
> +	hdmi-transmitter@3d {
> +		compatible = "adi,adv7513";
> +		reg = <0x3d>, <0x2d>, <0x4d>, <0x5d>;
> +		reg-names = "main", "cec", "edid", "packet";
> +		clocks = <&cec_clock>;
> +		clock-names = "cec";
> +
> +		avdd-supply = <&v3v3>;
> +		dvdd-supply = <&v3v3>;
> +		pvdd-supply = <&v3v3>;
> +		dvdd-3v-supply = <&v3v3>;
> +		bgvdd-supply = <&v3v3>;
> +
> +		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
> +		interrupt-parent = <&gpiog>;
> +
> +		status = "okay";
> +
> +		adi,input-depth = <8>;
> +		adi,input-colorspace = "rgb";
> +		adi,input-clock = "1x";
> +		adi,input-style = <1>;
> +		adi,input-justification = "evenly";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +				adv7513_in: endpoint {
> +					remote-endpoint = <&ltdc_ep0_out>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +				adv7513_out: endpoint {
> +					remote-endpoint = <&hdmi_con>;
> +				};
> +			};
> +
> +			port@2 {
> +				reg = <2>;
> +				adv7513_i2s0: endpoint {
> +					remote-endpoint = <&sai2a_endpoint>;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&ltdc {
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&ltdc_pins_d>;
> +	pinctrl-1 = <&ltdc_sleep_pins_d>;
> +	status = "okay";
> +
> +	port {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ltdc_ep0_out: endpoint@0 {
> +			reg = <0>;
> +			remote-endpoint = <&adv7513_in>;
> +		};
> +	};
> +};
> +
> +&sai2 {
> +	clocks = <&rcc SAI2>, <&rcc PLL3_Q>, <&rcc PLL3_R>;
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&sai2a_pins_c>;
> +	pinctrl-1 = <&sai2a_sleep_pins_c>;
> +	clock-names = "pclk", "x8k", "x11k";
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
> +				remote-endpoint = <&adv7513_i2s0>;
> +				format = "i2s";
> +				mclk-fs = <256>;
> +			};
> +		};
> +	};
> +};
> +
> +&sdmmc1 {
> +	pinctrl-names = "default", "opendrain", "sleep";
> +	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_b>;
> +	pinctrl-1 = <&sdmmc1_b4_od_pins_a &sdmmc1_dir_pins_b>;
> +	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a &sdmmc1_dir_sleep_pins_b>;
> +	cd-gpios = <&gpioi 8 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> +	disable-wp;
> +	st,sig-dir;
> +	st,neg-edge;
> +	st,use-ckin;
> +	bus-width = <4>;
> +	vmmc-supply = <&vdd_sd>;
> +	vqmmc-supply = <&sd_switch>;
> +	status = "okay";
> +};
> +
> +&sdmmc2 {
> +	pinctrl-names = "default", "opendrain", "sleep";
> +	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_b>;
> +	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_b>;
> +	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_b>;
> +	bus-width = <8>;
> +	mmc-ddr-1_8v;
> +	no-sd;
> +	no-sdio;
> +	non-removable;
> +	st,neg-edge;
> +	vmmc-supply = <&v3v3>;
> +	vqmmc-supply = <&vdd_io>;
> +	status = "okay";
> +};
> +
> +&sdmmc3 {
> +	pinctrl-names = "default", "opendrain", "sleep";
> +	pinctrl-0 = <&sdmmc3_b4_pins_b>;
> +	pinctrl-1 = <&sdmmc3_b4_od_pins_b>;
> +	pinctrl-2 = <&sdmmc3_b4_sleep_pins_b>;
> +	broken-cd;
> +	non-removable;
> +	st,neg-edge;
> +	bus-width = <4>;
> +	vmmc-supply = <&wlan_pwr>;
> +	status = "okay";
> +
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	brcmf: bcrmf@1 {
> +		reg = <1>;
> +		compatible = "brcm,bcm4329-fmac";
> +	};
> +};
> +
> +&spi2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&spi2_pins_a>;
> +	cs-gpios = <&gpioi 0 0>;
> +	status = "disabled";
> +	/delete-property/dmas;
> +	/delete-property/dma-names;
> +};
> +
> +&uart4 {
> +	/* On Low speed expansion header */
> +	label = "LS-UART1";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart4_pins_b>;
> +	status = "okay";
> +};
> +
> +&uart7 {
> +	/* On Low speed expansion header */
> +	label = "LS-UART0";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart7_pins_a>;
> +	status = "okay";
> +};
> +
> +/* Bluetooth */
> +&usart2 {
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&usart2_pins_a>;
> +	pinctrl-1 = <&usart2_sleep_pins_a>;
> +	st,hw-flow-ctrl;
> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "brcm,bcm43438-bt";
> +		max-speed = <3000000>;
> +		shutdown-gpios = <&gpioz 6 GPIO_ACTIVE_HIGH>;
> +	};
> +};
> +
> +&usbh_ehci {
> +	phys = <&usbphyc_port0>;
> +	phy-names = "usb";
> +	status = "okay";
> +};
> +
> +&usbotg_hs {
> +	pinctrl-0 = <&usbotg_hs_pins_a>;
> +	pinctrl-names = "default";
> +	phy-names = "usb2-phy";
> +	phys = <&usbphyc_port1 0>;
> +	status = "okay";
> +	vbus-supply = <&vbus_otg>;
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
> diff --git a/arch/arm/boot/dts/stm32mp157a-dhcor-io1v8.dtsi b/arch/arm/boot/dts/stm32mp15xa-dhcor-io1v8.dtsi
> similarity index 100%
> rename from arch/arm/boot/dts/stm32mp157a-dhcor-io1v8.dtsi
> rename to arch/arm/boot/dts/stm32mp15xa-dhcor-io1v8.dtsi
> diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
> new file mode 100644
> index 000000000000..04fbb324a541
> --- /dev/null
> +++ b/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
> @@ -0,0 +1,209 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
> +/*
> + * Copyright (C) Linaro Ltd 2019 - All Rights Reserved
> + * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> + * Copyright (C) 2020 Marek Vasut <marex@denx.de>
> + */
> +
> +#include "stm32mp15-pinctrl.dtsi"
> +#include "stm32mp15xxac-pinctrl.dtsi"
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/mfd/st,stpmic1.h>
> +
> +/ {
> +	aliases {
> +		spi0 = &qspi;
> +	};
> +
> +	memory@c0000000 {
> +		device_type = "memory";
> +		reg = <0xc0000000 0x40000000>;
> +	};
> +};
> +
> +&i2c4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c4_pins_a>;
> +	i2c-scl-rising-time-ns = <185>;
> +	i2c-scl-falling-time-ns = <20>;
> +	status = "okay";
> +	/delete-property/dmas;
> +	/delete-property/dma-names;
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
> +
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
> +				regulator-min-microvolt = <2900000>;
> +				regulator-max-microvolt = <2900000>;
> +				regulator-always-on;
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
> +				regulator-enable-ramp-delay = <300000>;
> +			};
> +
> +			vref_ddr: vref_ddr {
> +				regulator-name = "vref_ddr";
> +				regulator-always-on;
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
> +				regulator-active-discharge = <1>;
> +			};
> +
> +			vbus_sw: pwr_sw2 {
> +				regulator-name = "vbus_sw";
> +				interrupts = <IT_OCP_SWOUT 0>;
> +				regulator-active-discharge = <1>;
> +			};
> +		};
> +
> +		onkey {
> +			compatible = "st,stpmic1-onkey";
> +			interrupts = <IT_PONKEY_F 0>, <IT_PONKEY_R 1>;
> +			interrupt-names = "onkey-falling", "onkey-rising";
> +			status = "okay";
> +		};
> +
> +		watchdog {
> +			compatible = "st,stpmic1-wdt";
> +			status = "disabled";
> +		};
> +	};
> +
> +	eeprom@53 {
> +		compatible = "atmel,24c02";
> +		reg = <0x53>;
> +		pagesize = <16>;
> +	};
> +};
> +
> +&iwdg2 {
> +	timeout-sec = <32>;
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
> +	pinctrl-0 = <&qspi_clk_pins_a &qspi_bk1_pins_a>;
> +	pinctrl-1 = <&qspi_clk_sleep_pins_a &qspi_bk1_sleep_pins_a>;
> +	reg = <0x58003000 0x1000>, <0x70000000 0x200000>;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	flash0: spi-flash@0 {
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
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
