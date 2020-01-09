Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 066F5135C5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 16:11:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wkpq4NpOTTruefF1LiYbcYtgSUMO/G1vHrQsZGEjgw=; b=sPP/VCojnHDfvG
	AJ37XCfemp2V31XqL3O2m1Nv5Lw4bG9LVc0WvqN9vh7V6tg48DLSS0ozfLaCw6VoQ6oewgclq7N3d
	bmrhiiQYTVGqe+zkBHF+Tg+vMol4Yb7ZC/oaJY7TkduC8eOjefaQihbHtjIXwNBtS5R5bMHCXmZOq
	xXOWXfyyyGWB7OwMjHJLyyDYL7+NW4LJomMcmJ+wUTpU2Ok32KRrxP24ACJ1EuQpuUvTIj0xrYfzn
	PLh6ynBES0R+sDSJqP29qNnnAX49bhx7Z7SAmmpe5SSDJjNA/6tJENTTokt4ZSdkalYbC5+TCv3bX
	V6Hlvan/5MF1Hks6MryA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZT3-00062E-4S; Thu, 09 Jan 2020 15:11:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipZSq-00061T-CC; Thu, 09 Jan 2020 15:11:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 3292C293619
Subject: Re: [PATCH 2/2] arm64: dts: mediatek: add mt8173 elm and hana board
To: Hsin-Yi Wang <hsinyi@chromium.org>, linux-arm-kernel@lists.infradead.org
References: <20200109101042.201500-1-hsinyi@chromium.org>
 <20200109101042.201500-3-hsinyi@chromium.org>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <5a2ebfb5-f0bd-bb42-0463-d2db74f7048d@collabora.com>
Date: Thu, 9 Jan 2020 16:11:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200109101042.201500-3-hsinyi@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_071112_682508_6C660588 
X-CRM114-Status: GOOD (  21.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Mars Cheng <mars.cheng@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hsin-Yi,

Many thanks for sending the patch upstream, some comments below ...

On 9/1/20 11:10, Hsin-Yi Wang wrote:
> Elm is Acer Chromebook R13. Hana is Lenovo Chromebook. Both uses mt8173
> SoC.
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> This depends on parade bridge ps8640, the driver's status is:
> https://patchwork.kernel.org/cover/11312747/
> ---
>  arch/arm64/boot/dts/mediatek/Makefile         |    3 +
>  .../dts/mediatek/mt8173-elm-hana-rev7.dts     |   27 +
>  .../boot/dts/mediatek/mt8173-elm-hana.dts     |   16 +
>  .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |   53 +
>  arch/arm64/boot/dts/mediatek/mt8173-elm.dts   |   15 +
>  arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  | 1069 +++++++++++++++++
>  6 files changed, 1183 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> 
> diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
> index 458bbc422a94..ee7aadc94dc6 100644
> --- a/arch/arm64/boot/dts/mediatek/Makefile
> +++ b/arch/arm64/boot/dts/mediatek/Makefile
> @@ -7,4 +7,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-x20-dev.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-rfb1.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-bananapi-bpi-r64.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-evb.dtb
> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm.dtb
> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana.dtb
> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana-rev7.dtb

Alphabetical order, so those three before mt8173-evb.dtb

>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-evb.dtb
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
> new file mode 100644
> index 000000000000..a3616bc3d859
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
> @@ -0,0 +1,27 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright 2019 MediaTek Inc.
> + */
> +
> +/dts-v1/;
> +#include "mt8173-elm-hana.dtsi"
> +
> +/ {
> +	model = "Mediatek Hana rev7 board";
> +	compatible = "google,hana-rev7", "mediatek,mt8173";
> +};
> +
> +&cpu_thermal {
> +	trips {
> +		cpu_crit: cpu_crit@0 {
> +			temperature = <100000>;
> +			type = "critical";
> +		};
> +	};
> +};
> +
> +&gpio_keys {
> +	/delete-node/tablet_mode;
> +	/delete-node/volume_down;
> +	/delete-node/volume_up;
> +};
> \ No newline at end of file
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
> new file mode 100644
> index 000000000000..8cbcc75192e3
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
> @@ -0,0 +1,16 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright 2016 MediaTek Inc.
> + */
> +
> +/dts-v1/;
> +#include "mt8173-elm-hana.dtsi"
> +
> +/ {
> +	model = "Mediatek Hana rev0 board";
> +	compatible = "google,hana-rev6",
> +			"google,hana-rev5", "google,hana-rev4",
> +			"google,hana-rev3", "google,hana-rev2",
> +			"google,hana-rev1", "google,hana-rev0",
> +			"google,hana", "mediatek,mt8173";
> +};
> \ No newline at end of file
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
> new file mode 100644
> index 000000000000..26de3133c1b7
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
> @@ -0,0 +1,53 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright 2016 MediaTek Inc.
> + */
> +
> +#include "mt8173-elm.dtsi"
> +
> +&i2c_tunnel {
> +	google,limited-passthrough;

I don't think this exists in mainline. In such case you should remove this.

> +};
> +
> +&i2c0 {
> +	clock-frequency = <200000>;
> +};
> +
> +&i2c3 {
> +	touchscreen2: touchscreen@34 {
> +		compatible = "melfas,mip4_ts";
> +		reg = <0x34>;
> +		interrupt-parent = <&pio>;
> +		interrupts = <88 IRQ_TYPE_LEVEL_LOW>;
> +	};

Hmm, so the same Hana revision can go with up to different touchscreens models?

> +
> +	touchscreen3: touchscreen@20 {
> +		compatible = "hid-over-i2c";
> +		reg = <0x20>;
> +		hid-descr-addr = <0x0020>;
> +		interrupt-parent = <&pio>;
> +		interrupts = <88 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +};
> +
> +&mmc1 {
> +	wp-gpios = <&pio 42 GPIO_ACTIVE_HIGH>;
> +};
> +
> +&pio {
> +	hdmi_mux_pins: hdmi_mux_pins {
> +		pins2 {
> +			pinmux = <MT8173_PIN_98_URTS1__FUNC_GPIO98>;
> +			bias-pull-up;
> +			output-high;
> +		};
> +	};
> +
> +	mmc1_pins_default: mmc1default {
> +		pins_wp {
> +			pinmux = <MT8173_PIN_42_DSI_TE__FUNC_GPIO42>;
> +			input-enable;
> +			bias-pull-up;
> +		};
> +	};
> +};
> \ No newline at end of file
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dts b/arch/arm64/boot/dts/mediatek/mt8173-elm.dts
> new file mode 100644
> index 000000000000..e5da2355760e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dts
> @@ -0,0 +1,15 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright 2016 MediaTek Inc.
> + */
> +
> +/dts-v1/;
> +#include "mt8173-elm.dtsi"
> +
> +/ {
> +	model = "Mediatek Elm board";
> +	compatible = "google,elm-rev8", "google,elm-rev7", "google,elm-rev6",
> +			"google,elm-rev5", "google,elm-rev4", "google,elm-rev3",
> +			"google,elm-rev2", "google,elm-rev1",
> +			"google,elm", "mediatek,mt8173";
> +};
> \ No newline at end of file
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> new file mode 100644
> index 000000000000..fca631e88d58
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> @@ -0,0 +1,1069 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright 2016 MediaTek Inc.
> + */
> +
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include "mt8173.dtsi"
> +
> +/ {
> +	aliases {
> +		serial0 = &uart0;
> +		serial1 = &uart1;
> +		serial2 = &uart2;
> +		serial3 = &uart3;
> +	};
> +
> +	memory@40000000 {
> +		device_type = "memory";
> +		reg = <0 0x40000000 0 0x80000000>;
> +	};
> +
> +	backlight_lcd: backlight_lcd {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm0 0 1000000>;
> +		brightness-levels = <
> +			  0  16  32  48  64  80  96 112
> +			128 144 160 176 192 208 224 240
> +			255
> +		>;
> +		default-brightness-level = <9>;

Actually if you don't specify the brightness-levels and the
default-brightness-level the pwm-backlight driver computes a table of levels and
probably you'll have more granularity, did you try to just remove those properties?


> +		power-supply = <&bl_fixed_reg>;
> +		enable-gpios = <&pio 95 GPIO_ACTIVE_HIGH>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&disp_pwm0_pins>;
> +		status = "okay";
> +	};
> +
> +	bl_fixed_reg: fixedregulator@2 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "bl_fixed";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		startup-delay-us = <1000>;
> +		enable-active-high;
> +		gpio = <&pio 32 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bl_fixed_pins>;
> +	};
> +
> +	chosen {
> +		stdout-path = &uart0;
> +	};
> +
> +	firmware {
> +		chromeos {
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&chromeos_write_protect>;
> +			write-protect-gpio = <&pio 4 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +

This is not upstream, so you can remove it.

> +	gpio_keys: gpio-keys {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&gpio_keys_pins>;
> +
> +		lid {
> +			label = "Lid";
> +			gpios = <&pio 69 GPIO_ACTIVE_LOW>;
> +			linux,code = <0>; /* SW_LID */
> +			linux,input-type = <5>; /* EV_SW */
> +			gpio-key,wakeup;
> +		};
> +
> +		power {
> +			label = "Power";
> +			gpios = <&pio 14 GPIO_ACTIVE_HIGH>;
> +			linux,code = <KEY_POWER>;
> +			debounce-interval = <30>;
> +			gpio-key,wakeup;
> +		};
> +
> +		tablet_mode {
> +			label = "Tablet_mode";
> +			gpios = <&pio 121 GPIO_ACTIVE_HIGH>;
> +			linux,code = <1>; /* SW_TABLET_MODE */
> +			linux,input-type = <5>; /* EV_SW */
> +			gpio-key,wakeup;
> +		};
> +
> +		volume_down {
> +			label = "Volume_down";
> +			gpios = <&pio 123 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_VOLUMEDOWN>;
> +		};
> +
> +		volume_up {
> +			label = "Volume_up";
> +			gpios = <&pio 124 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_VOLUMEUP>;
> +		};
> +	};
> +
> +	panel: panel {
> +		compatible = "lg,lp120up1";
> +		power-supply = <&panel_fixed_3v3>;
> +		ddc-i2c-bus = <&i2c0>;
> +		backlight = <&backlight_lcd>;
> +
> +		port {
> +			panel_in: endpoint {
> +				remote-endpoint = <&ps8640_out>;
> +			};
> +		};
> +	};
> +
> +	panel_fixed_3v3: regulator@1 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "PANEL_3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		enable-active-high;
> +		gpio = <&pio 41 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&panel_fixed_pins>;
> +	};
> +
> +	ps8640_fixed_1v2: regulator@2 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "PS8640_1V2";
> +		regulator-min-microvolt = <1200000>;
> +		regulator-max-microvolt = <1200000>;
> +		regulator-enable-ramp-delay = <2000>;
> +		enable-active-high;
> +		regulator-boot-on;
> +		gpio = <&pio 30 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&ps8640_fixed_pins>;
> +	};
> +
> +	sdio_fixed_3v3: fixedregulator@0 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&pio 85 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	sound: sound {
> +		compatible = "mediatek,mt8173-rt5650";
> +		mediatek,audio-codec = <&rt5650 &hdmi0>;
> +		mediatek,platform = <&afe>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&aud_i2s2>;
> +
> +		mediatek,mclk = <1>;
> +		codec-capture {
> +			sound-dai = <&rt5650 1>;
> +		};
> +	};
> +
> +	hdmicon: connector {
> +		compatible = "hdmi-connector";
> +		label = "hdmi";
> +		type = "a";
> +		ddc-i2c-bus = <&hdmiddc0>;
> +
> +		port {
> +			hdmi_connector_in: endpoint {
> +				remote-endpoint = <&hdmi0_out>;
> +			};
> +		};
> +	};
> +};
> +
> +&cec {
> +	status = "okay";
> +};
> +
> +&cpu0 {
> +	proc-supply = <&mt6397_vpca15_reg>;
> +};
> +
> +&cpu1 {
> +	proc-supply = <&mt6397_vpca15_reg>;
> +};
> +
> +&cpu2 {
> +	proc-supply = <&da9211_vcpu_reg>;
> +	sram-supply = <&mt6397_vsramca7_reg>;
> +};
> +
> +&cpu3 {
> +	proc-supply = <&da9211_vcpu_reg>;
> +	sram-supply = <&mt6397_vsramca7_reg>;
> +};
> +
> +&cpu_thermal {
> +	sustainable-power = <4500>; /* milliwatts */
> +	trips {
> +		threshold: trip-point@0 {
> +			temperature = <60000>;
> +		};
> +
> +		target: trip-point@1 {
> +			temperature = <65000>;
> +		};
> +	};
> +};
> +
> +&dsi0 {
> +	status = "okay";
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		port@1 {
> +			dsi0_out: endpoint {
> +				remote-endpoint = <&ps8640_in>;
> +			};
> +		};
> +	};
> +};
> +
> +&dpi0 {
> +	status = "okay";
> +};
> +
> +&hdmi0 {
> +	status = "okay";
> +	ports {
> +		port@1 {
> +			reg = <1>;
> +
> +			hdmi0_out: endpoint {
> +				remote-endpoint = <&hdmi_connector_in>;
> +			};
> +		};
> +	};
> +};
> +
> +&hdmi_phy {
> +	status = "okay";
> +	mediatek,ibias = <0xc>;
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	rt5650: audio-codec@1a {
> +		compatible = "realtek,rt5650";
> +		reg = <0x1a>;
> +		avdd-supply = <&mt6397_vgp1_reg>;
> +		cpvdd-supply = <&mt6397_vcama_reg>;
> +		interrupt-parent = <&pio>;
> +		interrupts = <3 IRQ_TYPE_EDGE_BOTH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&rt5650_irq>;
> +		#sound-dai-cells = <1>;
> +		realtek,dmic1-data-pin = <2>;
> +		realtek,jd-mode = <2>;
> +	};
> +
> +	ps8640: edp-bridge@8 {
> +		compatible = "parade,ps8640";
> +		reg = <0x8>;
> +		powerdown-gpios = <&pio 127 GPIO_ACTIVE_HIGH>;

This should be GPIO_ACTIVE_LOW with latest version of the driver sent.

> +		reset-gpios = <&pio 115 GPIO_ACTIVE_HIGH>;

Same here, GPIO_ACTIVE_LOW.

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&ps8640_pins>;
> +		vdd12-supply = <&ps8640_fixed_1v2>;
> +		vdd33-supply = <&mt6397_vgp2_reg>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				ps8640_in: endpoint {
> +					remote-endpoint = <&dsi0_out>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +
> +				ps8640_out: endpoint {
> +					remote-endpoint = <&panel_in>;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&i2c1 {
> +	clock-frequency = <1500000>;
> +	status = "okay";
> +
> +	da9211: da9211@68 {
> +		compatible = "dlg,da9211";
> +		reg = <0x68>;
> +
> +		regulators {
> +			da9211_vcpu_reg: BUCKA {
> +				regulator-name = "VBUCKA";
> +				regulator-min-microvolt = < 700000>;
> +				regulator-max-microvolt = <1310000>;
> +				regulator-min-microamp  = <2000000>;
> +				regulator-max-microamp  = <4400000>;
> +				regulator-ramp-delay = <10000>;
> +				regulator-always-on;
> +				regulator-allowed-modes = <0 1>;
> +			};
> +
> +			da9211_vgpu_reg: BUCKB {
> +				regulator-name = "VBUCKB";
> +				regulator-min-microvolt = < 700000>;
> +				regulator-max-microvolt = <1310000>;
> +				regulator-min-microamp  = <2000000>;
> +				regulator-max-microamp  = <3000000>;
> +				regulator-ramp-delay = <10000>;
> +			};
> +		};
> +	};
> +};
> +
> +&i2c2 {
> +	status = "okay";
> +
> +	tpm: tpm@20 {
> +		compatible = "infineon,slb9645tt";
> +		reg = <0x20>;
> +		powered-while-suspended;
> +	};
> +};
> +
> +&i2c3 {
> +	clock-frequency = <400000>;
> +	status = "okay";
> +
> +	touchscreen: touchscreen@10 {
> +		compatible = "elan,ekth3500";
> +		reg = <0x10>;
> +		interrupt-parent = <&pio>;
> +		interrupts = <88 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +};
> +
> +&i2c4 {
> +	clock-frequency = <400000>;
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&trackpad_irq>;
> +
> +	trackpad: trackpad@15 {
> +		compatible = "elan,ekth3000";
> +		interrupt-parent = <&pio>;
> +		interrupts = <117 IRQ_TYPE_LEVEL_LOW>;
> +		reg = <0x15>;
> +		vcc-supply = <&mt6397_vgp6_reg>;
> +		wakeup-source;
> +	};
> +
> +	trackpad2: trackpad@2c {
> +		compatible = "hid-over-i2c";
> +		interrupt-parent = <&pio>;
> +		interrupts = <117 IRQ_TYPE_LEVEL_LOW>;
> +		reg = <0x2c>;
> +		hid-descr-addr = <0x0020>;
> +		wakeup-source;
> +	};

So two trackpad models for the same ELM revision?

> +};
> +
> +&mipi_tx0 {
> +	status = "okay";
> +};
> +
> +&mmc0 {
> +	status = "okay";
> +	pinctrl-names = "default", "state_uhs";
> +	pinctrl-0 = <&mmc0_pins_default>;
> +	pinctrl-1 = <&mmc0_pins_uhs>;
> +	bus-width = <8>;
> +	max-frequency = <200000000>;
> +	cap-mmc-highspeed;
> +	mmc-hs200-1_8v;
> +	mmc-hs400-1_8v;
> +	cap-mmc-hw-reset;
> +	hs400-ds-delay = <0x14015>;
> +	mediatek,hs200-cmd-int-delay=<30>;
> +	mediatek,hs400-cmd-int-delay=<14>;
> +	mediatek,hs400-cmd-resp-sel-rising;
> +	vmmc-supply = <&mt6397_vemc_3v3_reg>;
> +	vqmmc-supply = <&mt6397_vio18_reg>;
> +	assigned-clocks = <&topckgen CLK_TOP_MSDC50_0_SEL>;
> +	assigned-clock-parents = <&topckgen CLK_TOP_MSDCPLL_D2>;
> +	non-removable;
> +};
> +
> +&mmc1 {
> +	status = "okay";
> +	pinctrl-names = "default", "state_uhs";
> +	pinctrl-0 = <&mmc1_pins_default>;
> +	pinctrl-1 = <&mmc1_pins_uhs>;
> +	bus-width = <4>;
> +	max-frequency = <200000000>;
> +	cap-sd-highspeed;
> +	sd-uhs-sdr50;
> +	sd-uhs-sdr104;
> +	cd-gpios = <&pio 1 GPIO_ACTIVE_HIGH>;
> +	vmmc-supply = <&mt6397_vmch_reg>;
> +	vqmmc-supply = <&mt6397_vmc_reg>;
> +};
> +
> +&mmc3 {
> +	status = "okay";
> +	pinctrl-names = "default", "state_uhs";
> +	pinctrl-0 = <&mmc3_pins_default>;
> +	pinctrl-1 = <&mmc3_pins_uhs>;
> +	bus-width = <4>;
> +	max-frequency = <200000000>;
> +	cap-sd-highspeed;
> +	sd-uhs-sdr50;
> +	sd-uhs-sdr104;
> +	sdr104-clk-delay = <5>;
> +	keep-power-in-suspend;
> +	enable-sdio-wakeup;
> +	cap-sdio-irq;
> +	vmmc-supply = <&sdio_fixed_3v3>;
> +	vqmmc-supply = <&mt6397_vgp3_reg>;
> +	non-removable;
> +	cap-power-off-card;
> +
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	btmrvl: btmrvl@2 {
> +		compatible = "marvell,sd8897-bt";
> +		reg = <2>;
> +		interrupt-parent = <&pio>;
> +		interrupts = <119 IRQ_TYPE_LEVEL_LOW>;
> +		marvell,wakeup-pin = /bits/ 16 <0x0d>;
> +		marvell,wakeup-gap-ms = /bits/ 16 <0x64>;
> +	};
> +
> +	mwifiex: mwifiex@1 {
> +		compatible = "marvell,sd8897";
> +		reg = <1>;
> +		interrupt-parent = <&pio>;
> +		interrupts = <38 IRQ_TYPE_LEVEL_LOW>;
> +		marvell,wakeup-pin = <3>;
> +		marvell,caldata_ed_mac = /bits/ 8 <
> +0x01 0x00 0x07 0x00 0x14 0x00 0x01 0x00 0x00 0x00 0x12 0x00 0x02 0x00 0x01 0x00
> +0x01 0x00 0x00 0x00 0x12 0x00 0x02 0x00 0x01 0x00
> +		>;
> +	};
> +};
> +
> +&nor_flash {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&nor_gpio1_pins>;
> +	bus-width = <8>;
> +	max-frequency = <50000000>;
> +	non-removable;
> +	flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +	};
> +};
> +
> +&pio {
> +	aud_i2s2: aud_i2s2 {
> +		pins1 {
> +			pinmux = <MT8173_PIN_128_I2S0_LRCK__FUNC_I2S1_WS>,
> +				 <MT8173_PIN_129_I2S0_BCK__FUNC_I2S1_BCK>,
> +				 <MT8173_PIN_130_I2S0_MCK__FUNC_I2S1_MCK>,
> +				 <MT8173_PIN_131_I2S0_DATA0__FUNC_I2S1_DO_1>,
> +				 <MT8173_PIN_12_EINT12__FUNC_I2S2_WS>,
> +				 <MT8173_PIN_13_EINT13__FUNC_I2S2_BCK>,
> +				 <MT8173_PIN_132_I2S0_DATA1__FUNC_I2S2_DI_2>;
> +			bias-pull-down;
> +		};
> +	};
> +
> +	bl_fixed_pins: bl_fixed_pins {
> +		pins1 {
> +			pinmux = <MT8173_PIN_32_UTXD2__FUNC_GPIO32>;
> +			output-low;
> +		};
> +	};
> +
> +	bt_wake_pins: bt_wake_pins {
> +		pins1 {
> +			pinmux = <MT8173_PIN_119_KPROW0__FUNC_GPIO119>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	chromeos_write_protect: chromeos_write_protect {
> +		pins1 {
> +			pinmux = <MT8173_PIN_4_EINT4__FUNC_GPIO4>;
> +			bias-disable;
> +		};
> +	};
> +

I don't think this is needed.


> +	disp_pwm0_pins: disp_pwm0_pins {
> +		pins1 {
> +			pinmux = <MT8173_PIN_87_DISP_PWM0__FUNC_DISP_PWM0>;
> +			output-low;
> +		};
> +	};
> +
> +	gpio_keys_pins: gpio_keys_pins {
> +		volume_pins {
> +			pinmux = <MT8173_PIN_123_KPCOL1__FUNC_GPIO123>,
> +				 <MT8173_PIN_124_KPCOL2__FUNC_GPIO124>;
> +			bias-pull-up;
> +		};
> +
> +		tablet_mode_pins {
> +			pinmux = <MT8173_PIN_121_KPROW2__FUNC_GPIO121>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	hdmi_mux_pins: hdmi_mux_pins {
> +		pins1 {
> +			pinmux = <MT8173_PIN_36_DAISYNC__FUNC_GPIO36>;
> +		};
> +	};
> +
> +	mmc0_pins_default: mmc0default {
> +		pins_cmd_dat {
> +			pinmux = <MT8173_PIN_57_MSDC0_DAT0__FUNC_MSDC0_DAT0>,
> +				 <MT8173_PIN_58_MSDC0_DAT1__FUNC_MSDC0_DAT1>,
> +				 <MT8173_PIN_59_MSDC0_DAT2__FUNC_MSDC0_DAT2>,
> +				 <MT8173_PIN_60_MSDC0_DAT3__FUNC_MSDC0_DAT3>,
> +				 <MT8173_PIN_61_MSDC0_DAT4__FUNC_MSDC0_DAT4>,
> +				 <MT8173_PIN_62_MSDC0_DAT5__FUNC_MSDC0_DAT5>,
> +				 <MT8173_PIN_63_MSDC0_DAT6__FUNC_MSDC0_DAT6>,
> +				 <MT8173_PIN_64_MSDC0_DAT7__FUNC_MSDC0_DAT7>,
> +				 <MT8173_PIN_66_MSDC0_CMD__FUNC_MSDC0_CMD>;
> +				bias-pull-up;
> +		};
> +
> +		pins_clk {
> +			pinmux = <MT8173_PIN_65_MSDC0_CLK__FUNC_MSDC0_CLK>;
> +				bias-pull-down;
> +		};
> +
> +		pins_rst {
> +			pinmux = <MT8173_PIN_68_MSDC0_RST___FUNC_MSDC0_RSTB>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	mmc1_pins_default: mmc1default {
> +		pins_cmd_dat {
> +			pinmux = <MT8173_PIN_73_MSDC1_DAT0__FUNC_MSDC1_DAT0>,
> +				 <MT8173_PIN_74_MSDC1_DAT1__FUNC_MSDC1_DAT1>,
> +				 <MT8173_PIN_75_MSDC1_DAT2__FUNC_MSDC1_DAT2>,
> +				 <MT8173_PIN_76_MSDC1_DAT3__FUNC_MSDC1_DAT3>,
> +				 <MT8173_PIN_78_MSDC1_CMD__FUNC_MSDC1_CMD>;
> +			input-enable;
> +			drive-strength = <MTK_DRIVE_4mA>;
> +			bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
> +		};
> +
> +		pins_clk {
> +			pinmux = <MT8173_PIN_77_MSDC1_CLK__FUNC_MSDC1_CLK>;
> +			bias-pull-down;
> +			drive-strength = <MTK_DRIVE_4mA>;
> +		};
> +
> +		pins_insert {
> +			pinmux = <MT8173_PIN_1_EINT1__FUNC_GPIO1>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	mmc3_pins_default: mmc3default {
> +		pins_dat {
> +			pinmux = <MT8173_PIN_22_MSDC3_DAT0__FUNC_MSDC3_DAT0>,
> +				 <MT8173_PIN_23_MSDC3_DAT1__FUNC_MSDC3_DAT1>,
> +				 <MT8173_PIN_24_MSDC3_DAT2__FUNC_MSDC3_DAT2>,
> +				 <MT8173_PIN_25_MSDC3_DAT3__FUNC_MSDC3_DAT3>;
> +			input-enable;
> +			drive-strength = <MTK_DRIVE_8mA>;
> +			bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
> +		};
> +
> +		pins_cmd {
> +			pinmux = <MT8173_PIN_27_MSDC3_CMD__FUNC_MSDC3_CMD>;
> +			input-enable;
> +			drive-strength = <MTK_DRIVE_8mA>;
> +			bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
> +		};
> +
> +		pins_clk {
> +			pinmux = <MT8173_PIN_26_MSDC3_CLK__FUNC_MSDC3_CLK>;
> +			bias-pull-down;
> +			drive-strength = <MTK_DRIVE_8mA>;
> +		};
> +
> +		pins_pdn {
> +			pinmux = <MT8173_PIN_85_AUD_DAT_MOSI__FUNC_GPIO85>;
> +			output-low;
> +		};
> +	};
> +
> +	mmc0_pins_uhs: mmc0 {
> +		pins_cmd_dat {
> +			pinmux = <MT8173_PIN_57_MSDC0_DAT0__FUNC_MSDC0_DAT0>,
> +				 <MT8173_PIN_58_MSDC0_DAT1__FUNC_MSDC0_DAT1>,
> +				 <MT8173_PIN_59_MSDC0_DAT2__FUNC_MSDC0_DAT2>,
> +				 <MT8173_PIN_60_MSDC0_DAT3__FUNC_MSDC0_DAT3>,
> +				 <MT8173_PIN_61_MSDC0_DAT4__FUNC_MSDC0_DAT4>,
> +				 <MT8173_PIN_62_MSDC0_DAT5__FUNC_MSDC0_DAT5>,
> +				 <MT8173_PIN_63_MSDC0_DAT6__FUNC_MSDC0_DAT6>,
> +				 <MT8173_PIN_64_MSDC0_DAT7__FUNC_MSDC0_DAT7>,
> +				 <MT8173_PIN_66_MSDC0_CMD__FUNC_MSDC0_CMD>;
> +			input-enable;
> +			drive-strength = <MTK_DRIVE_6mA>;
> +			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
> +		};
> +
> +		pins_clk {
> +			pinmux = <MT8173_PIN_65_MSDC0_CLK__FUNC_MSDC0_CLK>;
> +			drive-strength = <MTK_DRIVE_6mA>;
> +			bias-pull-down = <MTK_PUPD_SET_R1R0_01>;
> +		};
> +
> +		pins_ds {
> +			pinmux = <MT8173_PIN_67_MSDC0_DSL__FUNC_MSDC0_DSL>;
> +			drive-strength = <MTK_DRIVE_10mA>;
> +			bias-pull-down = <MTK_PUPD_SET_R1R0_01>;
> +		};
> +
> +		pins_rst {
> +			pinmux = <MT8173_PIN_68_MSDC0_RST___FUNC_MSDC0_RSTB>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	mmc1_pins_uhs: mmc1 {
> +		pins_cmd_dat {
> +			pinmux = <MT8173_PIN_73_MSDC1_DAT0__FUNC_MSDC1_DAT0>,
> +				 <MT8173_PIN_74_MSDC1_DAT1__FUNC_MSDC1_DAT1>,
> +				 <MT8173_PIN_75_MSDC1_DAT2__FUNC_MSDC1_DAT2>,
> +				 <MT8173_PIN_76_MSDC1_DAT3__FUNC_MSDC1_DAT3>,
> +				 <MT8173_PIN_78_MSDC1_CMD__FUNC_MSDC1_CMD>;
> +			input-enable;
> +			drive-strength = <MTK_DRIVE_6mA>;
> +			bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
> +		};
> +
> +		pins_clk {
> +			pinmux = <MT8173_PIN_77_MSDC1_CLK__FUNC_MSDC1_CLK>;
> +			drive-strength = <MTK_DRIVE_8mA>;
> +			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
> +		};
> +	};
> +
> +	mmc3_pins_uhs: mmc3 {
> +		pins_dat {
> +			pinmux = <MT8173_PIN_22_MSDC3_DAT0__FUNC_MSDC3_DAT0>,
> +				 <MT8173_PIN_23_MSDC3_DAT1__FUNC_MSDC3_DAT1>,
> +				 <MT8173_PIN_24_MSDC3_DAT2__FUNC_MSDC3_DAT2>,
> +				 <MT8173_PIN_25_MSDC3_DAT3__FUNC_MSDC3_DAT3>;
> +			input-enable;
> +			drive-strength = <MTK_DRIVE_8mA>;
> +			bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
> +		};
> +
> +		pins_cmd {
> +			pinmux = <MT8173_PIN_27_MSDC3_CMD__FUNC_MSDC3_CMD>;
> +			input-enable;
> +			drive-strength = <MTK_DRIVE_8mA>;
> +			bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
> +		};
> +
> +		pins_clk {
> +			pinmux = <MT8173_PIN_26_MSDC3_CLK__FUNC_MSDC3_CLK>;
> +			drive-strength = <MTK_DRIVE_8mA>;
> +			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
> +		};
> +	};
> +
> +	nor_gpio1_pins: nor {
> +		pins1 {
> +			pinmux = <MT8173_PIN_6_EINT6__FUNC_SFCS0>,
> +				 <MT8173_PIN_7_EINT7__FUNC_SFHOLD>,
> +				 <MT8173_PIN_8_EINT8__FUNC_SFIN>;
> +			input-enable;
> +			drive-strength = <MTK_DRIVE_4mA>;
> +			bias-pull-up;
> +		};
> +
> +		pins2 {
> +			pinmux = <MT8173_PIN_5_EINT5__FUNC_SFOUT>;
> +			drive-strength = <MTK_DRIVE_4mA>;
> +			bias-pull-up;
> +		};
> +
> +		pins_clk {
> +			pinmux = <MT8173_PIN_9_EINT9__FUNC_SFCK>;
> +			input-enable;
> +			drive-strength = <MTK_DRIVE_4mA>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	panel_fixed_pins: panel_fixed_pins {
> +		pins1 {
> +			pinmux = <MT8173_PIN_41_CMMCLK__FUNC_GPIO41>;
> +		};
> +	};
> +
> +	ps8640_pins: ps8640_pins {
> +		pins1 {
> +			pinmux = <MT8173_PIN_92_PCM_CLK__FUNC_GPIO92>,
> +				 <MT8173_PIN_115_URTS0__FUNC_GPIO115>,
> +				 <MT8173_PIN_127_LCM_RST__FUNC_GPIO127>;
> +		};
> +	};
> +
> +	ps8640_fixed_pins: ps8640_fixed_pins {
> +		pins1 {
> +			pinmux = <MT8173_PIN_30_URTS2__FUNC_GPIO30>;
> +		};
> +	};
> +
> +	rt5650_irq: rt5650_irq {
> +		pins1 {
> +			pinmux = <MT8173_PIN_3_EINT3__FUNC_GPIO3>;
> +			bias-pull-down;
> +		};
> +	};
> +
> +	spi_pins_a: spi1 {
> +		pins1 {
> +			pinmux = <MT8173_PIN_0_EINT0__FUNC_GPIO0>;
> +			bias-pull-up;
> +		};
> +
> +		pins_spi {
> +			pinmux = <MT8173_PIN_102_MSDC2_DAT2__FUNC_SPI_CK_1_>,
> +				 <MT8173_PIN_103_MSDC2_DAT3__FUNC_SPI_MI_1_>,
> +				 <MT8173_PIN_104_MSDC2_CLK__FUNC_SPI_MO_1_>,
> +				 <MT8173_PIN_105_MSDC2_CMD__FUNC_SPI_CS_1_>;
> +			bias-disable;
> +		};
> +	};
> +
> +	trackpad_irq: trackpad_irq {
> +		pins1 {
> +			pinmux = <MT8173_PIN_117_URXD3__FUNC_GPIO117>;
> +			input-enable;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	usb_pins: usb@0 {
> +		pins1 {
> +			pinmux = <MT8173_PIN_101_MSDC2_DAT1__FUNC_GPIO101>;
> +			output-high;
> +			bias-disable;
> +		};
> +	};
> +
> +	wifi_wake_pins: wifi_wake_pins {
> +		pins1 {
> +			pinmux = <MT8173_PIN_38_CONN_RST__FUNC_GPIO38>;
> +			bias-pull-up;
> +		};
> +	};
> +};
> +
> +&pwm0 {
> +	status = "okay";
> +};
> +
> +&pwrap {
> +	pmic: mt6397 {
> +		compatible = "mediatek,mt6397";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		interrupt-parent = <&pio>;
> +		interrupts = <11 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +
> +		mt6397rtc: mt6397rtc {
> +			compatible = "mediatek,mt6397-rtc";
> +		};
> +
> +		syscfg_pctl_pmic: syscfg_pctl_pmic@c000 {
> +			compatible = "mediatek,mt6397-pctl-pmic-syscfg",
> +				     "syscon";
> +			reg = <0 0x0000c000 0 0x0108>;
> +		};
> +
> +		pio6397: pinctrl@c000 {
> +			compatible = "mediatek,mt6397-pinctrl";
> +			pins-are-numbered;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +		};
> +
> +		mt6397clock: mt6397clock {
> +			compatible = "mediatek,mt6397-clk";
> +			#clock-cells = <1>;
> +		};
> +
> +		mt6397regulator: mt6397regulator {
> +			compatible = "mediatek,mt6397-regulator";
> +
> +			mt6397_vpca15_reg: buck_vpca15 {
> +				regulator-compatible = "buck_vpca15";
> +				regulator-name = "vpca15";
> +				regulator-min-microvolt = < 700000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <12500>;
> +				regulator-always-on;
> +				regulator-allowed-modes = <0 1>;
> +			};
> +
> +			mt6397_vpca7_reg: buck_vpca7 {
> +				regulator-compatible = "buck_vpca7";
> +				regulator-name = "vpca7";
> +				regulator-min-microvolt = < 700000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <12500>;
> +				regulator-enable-ramp-delay = <115>;
> +				regulator-always-on;
> +			};
> +
> +			mt6397_vsramca15_reg: buck_vsramca15 {
> +				regulator-compatible = "buck_vsramca15";
> +				regulator-name = "vsramca15";
> +				regulator-min-microvolt = < 700000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <12500>;
> +				regulator-always-on;
> +			};
> +
> +			mt6397_vsramca7_reg: buck_vsramca7 {
> +				regulator-compatible = "buck_vsramca7";
> +				regulator-name = "vsramca7";
> +				regulator-min-microvolt = < 700000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <12500>;
> +				regulator-always-on;
> +			};
> +
> +			mt6397_vcore_reg: buck_vcore {
> +				regulator-compatible = "buck_vcore";
> +				regulator-name = "vcore";
> +				regulator-min-microvolt = < 700000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <12500>;
> +				regulator-always-on;
> +			};
> +
> +			mt6397_vgpu_reg: buck_vgpu {
> +				regulator-compatible = "buck_vgpu";
> +				regulator-name = "vgpu";
> +				regulator-min-microvolt = < 700000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <12500>;
> +				regulator-enable-ramp-delay = <115>;
> +			};
> +
> +			mt6397_vdrm_reg: buck_vdrm {
> +				regulator-compatible = "buck_vdrm";
> +				regulator-name = "vdrm";
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <1400000>;
> +				regulator-ramp-delay = <12500>;
> +				regulator-always-on;
> +			};
> +
> +			mt6397_vio18_reg: buck_vio18 {
> +				regulator-compatible = "buck_vio18";
> +				regulator-name = "vio18";
> +				regulator-min-microvolt = <1620000>;
> +				regulator-max-microvolt = <1980000>;
> +				regulator-ramp-delay = <12500>;
> +				regulator-always-on;
> +			};
> +
> +			mt6397_vtcxo_reg: ldo_vtcxo {
> +				regulator-compatible = "ldo_vtcxo";
> +				regulator-name = "vtcxo";
> +				regulator-always-on;
> +			};
> +
> +			mt6397_va28_reg: ldo_va28 {
> +				regulator-compatible = "ldo_va28";
> +				regulator-name = "va28";
> +			};
> +
> +			mt6397_vcama_reg: ldo_vcama {
> +				regulator-compatible = "ldo_vcama";
> +				regulator-name = "vcama";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-enable-ramp-delay = <218>;
> +			};
> +
> +			mt6397_vio28_reg: ldo_vio28 {
> +				regulator-compatible = "ldo_vio28";
> +				regulator-name = "vio28";
> +				regulator-always-on;
> +			};
> +
> +			mt6397_vusb_reg: ldo_vusb {
> +				regulator-compatible = "ldo_vusb";
> +				regulator-name = "vusb";
> +			};
> +
> +			mt6397_vmc_reg: ldo_vmc {
> +				regulator-compatible = "ldo_vmc";
> +				regulator-name = "vmc";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-enable-ramp-delay = <218>;
> +			};
> +
> +			mt6397_vmch_reg: ldo_vmch {
> +				regulator-compatible = "ldo_vmch";
> +				regulator-name = "vmch";
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-enable-ramp-delay = <218>;
> +			};
> +
> +			mt6397_vemc_3v3_reg: ldo_vemc3v3 {
> +				regulator-compatible = "ldo_vemc3v3";
> +				regulator-name = "vemc_3v3";
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-enable-ramp-delay = <218>;
> +			};
> +
> +			mt6397_vgp1_reg: ldo_vgp1 {
> +				regulator-compatible = "ldo_vgp1";
> +				regulator-name = "vcamd";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-enable-ramp-delay = <240>;
> +			};
> +
> +			mt6397_vgp2_reg: ldo_vgp2 {
> +				regulator-compatible = "ldo_vgp2";
> +				regulator-name = "vcamio";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-enable-ramp-delay = <218>;
> +			};
> +
> +			mt6397_vgp3_reg: ldo_vgp3 {
> +				regulator-compatible = "ldo_vgp3";
> +				regulator-name = "vcamaf";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-enable-ramp-delay = <218>;
> +			};
> +
> +			mt6397_vgp4_reg: ldo_vgp4 {
> +				regulator-compatible = "ldo_vgp4";
> +				regulator-name = "vgp4";
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-enable-ramp-delay = <218>;
> +			};
> +
> +			mt6397_vgp5_reg: ldo_vgp5 {
> +				regulator-compatible = "ldo_vgp5";
> +				regulator-name = "vgp5";
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-enable-ramp-delay = <218>;
> +			};
> +
> +			mt6397_vgp6_reg: ldo_vgp6 {
> +				regulator-compatible = "ldo_vgp6";
> +				regulator-name = "vgp6";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-enable-ramp-delay = <218>;
> +				regulator-always-on;
> +			};
> +
> +			mt6397_vibr_reg: ldo_vibr {
> +				regulator-compatible = "ldo_vibr";
> +				regulator-name = "vibr";
> +				regulator-min-microvolt = <1300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-enable-ramp-delay = <218>;
> +			};
> +		};
> +	};
> +};
> +
> +&spi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&spi_pins_a>;
> +	mediatek,pad-select = <1>;
> +	status = "okay";
> +	/* clients */
> +	cros_ec: ec@0 {
> +		compatible = "google,cros-ec-spi";
> +		reg = <0x0>;
> +		spi-max-frequency = <12000000>;
> +		interrupt-parent = <&pio>;
> +		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
> +		google,cros-ec-spi-msg-delay = <500>;
> +
> +		i2c_tunnel: i2c-tunnel@0 {
> +			compatible = "google,cros-ec-i2c-tunnel";
> +			google,remote-bus = <0>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			battery: sbs-battery@b {
> +				compatible = "sbs,sbs-battery";
> +				reg = <0xb>;
> +				sbs,i2c-retry-count = <2>;
> +				sbs,poll-retry-count = <1>;
> +			};
> +		};
> +
> +		i2c_tunnel_b: i2c-tunnel@1 {
> +			compatible = "google,cros-ec-i2c-tunnel";
> +			google,remote-bus = <1>;

For what is used this second i2c tunnel? There is anything connected to it?

> +		};
> +	};
> +};
> +
> +&thermal {
> +	bank0-supply = <&mt6397_vpca15_reg>;
> +	bank1-supply = <&da9211_vcpu_reg>;
> +};
> +
> +&uart0 {
> +	status = "okay";
> +};
> +
> +&ssusb {
> +	dr_mode = "host";
> +	wakeup-source;
> +	vusb33-supply = <&mt6397_vusb_reg>;
> +	status = "okay";
> +};
> +
> +&usb_host {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&usb_pins>;
> +	vusb33-supply = <&mt6397_vusb_reg>;
> +	status = "okay";
> +};
> +
> +#include "../../../../arm/boot/dts/cros-ec-keyboard.dtsi"
> \ No newline at end of file
> 

Thanks,
 Enric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
