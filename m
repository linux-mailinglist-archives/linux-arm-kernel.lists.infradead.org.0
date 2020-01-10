Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C55136E60
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 14:43:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EGKa/Qy0OWRd9lHKcR+xRDToAGDOnNHffJdOEehq8Vk=; b=hFxnDYPknLv5It
	tVbzqXuXmrcv1sWCtcC8O3JE+jSKvFipJ/DmzWLs9nv/Vr7mwPOKQjyGwUgV3L39CgCBIXfH/J50z
	BjNptZD/kTYalt8fICY6G/E1S9uNpoJFKgffAKG7mXg3aH49FcczMq3Z53f024TCplCn+7Kczo7bd
	Ixcs+eb099ZxDr3s3l06vXFxYGTqa03NMXEMtARTqOf7Q/AIL1NcNx52LBmvYKU0GqvhSYb2wbyWB
	TFDPbATy3x738VfgjD+BM+z3OtYjKwwaA1dzJ+g03tnxOCeLhRjDwvgPL3bd+7H1nCLuTglVNFBwL
	Ekf/Jg/J0vID5Tc8b3CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipuZ4-0001YX-5m; Fri, 10 Jan 2020 13:43:02 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipuYq-0001WP-Vx; Fri, 10 Jan 2020 13:42:52 +0000
Received: by mail-pl1-x641.google.com with SMTP id f20so883846plj.5;
 Fri, 10 Jan 2020 05:42:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NUkVfEtIgvWVKqks+YNP6mK9kBbxzZxdTxIrpsWQs1E=;
 b=mWuDuZ6n6kDzR/pAjjGb/oUoV5UvOYdt6dzwm3bCgo4PdklbBRGOwNOJZ/+cA34hlB
 g1+N5DD8IAotokjFwZJ6NakDNrJef5OTQMvr5kLIKmgAzilcdU3flkbpiftl7MKA3ihX
 Wim0jXBjHTfjnr4JuTmOeT2K1gl5uAwSj3pG/lsdVzidy2iJ3aFcPF1NGjHhh84/4GbT
 +hRhQohJPYMYh0Ubj/IPgXwj7+hN9fdotrSW6y40KiPPun0Uzcnno0neD9Qhoswu8Swm
 ubJxVkIVB3ZqhRcX0GPd0QRHIYfhc7ihdSSLsTAbNgj21ISQdp8/q+kT3snhXyFdv0Bp
 878Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=NUkVfEtIgvWVKqks+YNP6mK9kBbxzZxdTxIrpsWQs1E=;
 b=idg6vNe0+woVH3mRjs0AO7wBD34/Tvm9e5xSAP0kYTZEzu/hH7S3JRKmLWdm/p1BJO
 pZvVeLoWo05COS6gzluxE7m9mzF8mUZIVBeYmPRtqWhCHy4uZzquaewzUIjqvM9Mk54b
 NTfL8gV7jwJzLICiPUdgZ6+vKOVffWHvaIMAw586d2CXlXNteu60rl3KMvIQPO/gBjZa
 iGz2s6pUfw3bFTaS0BYs96RztUeSrGBxWarZSQNZWbOnu2AZfYWNJLlccdU53rEly+sr
 QlOY8UAayCw/fEW8zQjrDwhxXCIEQDaQ9Ky61i3fZnLxVgF5UU35DJvvnYpiEmdrIsaR
 8CLw==
X-Gm-Message-State: APjAAAV3QAP6yFUKac/D0+WagjGnS/DyJrk0edxDS2Hv+BebkftsDg6Z
 c03gZ5TINgp/AaVYZooro4jiCf6yW5k=
X-Google-Smtp-Source: APXvYqx5gkX/ZTvgJwdRWQ8duAUuiZwSQThb4rn2nLWRiKtDdqS6IvHnuYEOCyQa8xd4s5MhQ74MVw==
X-Received: by 2002:a17:902:8497:: with SMTP id
 c23mr4591867plo.59.1578663767773; 
 Fri, 10 Jan 2020 05:42:47 -0800 (PST)
Received: from ziggy.stardust ([95.169.227.92])
 by smtp.gmail.com with ESMTPSA id a69sm3161046pfa.129.2020.01.10.05.42.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Jan 2020 05:42:46 -0800 (PST)
Subject: Re: [PATCH v2 2/2] arm64: dts: mediatek: add mt8173 elm and hana board
To: Hsin-Yi Wang <hsinyi@chromium.org>, linux-arm-kernel@lists.infradead.org
References: <20200110073730.213789-1-hsinyi@chromium.org>
 <20200110073730.213789-3-hsinyi@chromium.org>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <7d137ab6-d57b-8471-bb6a-37556e5e2a01@gmail.com>
Date: Fri, 10 Jan 2020 14:42:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200110073730.213789-3-hsinyi@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_054249_068605_162091AA 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-mediatek@lists.infradead.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/01/2020 08:37, Hsin-Yi Wang wrote:
> Elm is Acer Chromebook R13. Hana is Lenovo Chromebook. Both uses mt8173
> SoC.
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> Changes in v2:
> - remove downstream nodes and unused nodes
> - use GPIO_ACTIVE_LOW for ps8640 gpios
> - move trackpad to hana
> ---
>  arch/arm64/boot/dts/mediatek/Makefile         |    3 +
>  .../dts/mediatek/mt8173-elm-hana-rev7.dts     |   27 +
>  .../boot/dts/mediatek/mt8173-elm-hana.dts     |   16 +
>  .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |   60 +
>  arch/arm64/boot/dts/mediatek/mt8173-elm.dts   |   15 +
>  arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  | 1040 +++++++++++++++++
>  6 files changed, 1161 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> 
> diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
> index 458bbc422a94..b45a45a565a1 100644
> --- a/arch/arm64/boot/dts/mediatek/Makefile
> +++ b/arch/arm64/boot/dts/mediatek/Makefile
> @@ -6,5 +6,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-evb.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-x20-dev.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-rfb1.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-bananapi-bpi-r64.dtb
> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm.dtb
> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana.dtb
> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana-rev7.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-evb.dtb
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

I'm a bit confused about all this versions. Do you want to keep them for
internal use, as I suppose only rev6 is available to the general public,
correct? I'm fine with keeping the old revisions if that's of use for you,
otherwise I'd prefer to delete them.

Model name could be more verbose.

> \ No newline at end of file
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
> new file mode 100644
> index 000000000000..35e12b290947
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
> @@ -0,0 +1,60 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright 2016 MediaTek Inc.
> + */
> +
> +#include "mt8173-elm.dtsi"
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
> +
> +	touchscreen3: touchscreen@20 {
> +		compatible = "hid-over-i2c";
> +		reg = <0x20>;
> +		hid-descr-addr = <0x0020>;
> +		interrupt-parent = <&pio>;
> +		interrupts = <88 IRQ_TYPE_LEVEL_LOW>;
> +	};

In v1 you mentioned:
"Partners wants to increase touchpad and touchscreen source (they choose
synaptics) for hana 300e, and synaptics uses hid-over-i2c driver."

So the partner uses the same compatible (google,hana-rev6?) for both devices?

> +};
> +
> +&i2c4 {
> +	trackpad2: trackpad@2c {
> +		compatible = "hid-over-i2c";
> +		interrupt-parent = <&pio>;
> +		interrupts = <117 IRQ_TYPE_LEVEL_LOW>;
> +		reg = <0x2c>;
> +		hid-descr-addr = <0x0020>;
> +		wakeup-source;
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
> index 000000000000..2ac738bebe04
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> @@ -0,0 +1,1040 @@
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

can't we use SW_TABLET_MODE fomr linux-event-codes.h?

> +			linux,input-type = <5>; /* EV_SW */

same here.

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

we don't need to set the pincontroller mux here?

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

Hm, only defined for "realtek,rt5663", I suppose that's an inconsistency in the
binding documentation. Can you please double check?

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
> +		powerdown-gpios = <&pio 127 GPIO_ACTIVE_LOW>;
> +		reset-gpios = <&pio 115 GPIO_ACTIVE_LOW>;
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

no interrupts? binding description have this stated as required. what happens
when the device raises an interrupt?

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

Why not move the pinctrl properties into the trackpad node?

> +
> +	trackpad: trackpad@15 {
> +		compatible = "elan,ekth3000";
> +		interrupt-parent = <&pio>;
> +		interrupts = <117 IRQ_TYPE_LEVEL_LOW>;
> +		reg = <0x15>;
> +		vcc-supply = <&mt6397_vgp6_reg>;
> +		wakeup-source;
> +	};
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

Not an upstream property, please delete it.

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

Not an upstream property, please delete.

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

identation.

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

AFAIK this should be
rtc: mt6397rtc {

Please fix that for all subnodes.

> +			compatible = "mediatek,mt6397-rtc";
> +		};
> +
> +		syscfg_pctl_pmic: syscfg_pctl_pmic@c000 {
> +			compatible = "mediatek,mt6397-pctl-pmic-syscfg",
> +				     "syscon";
> +			reg = <0 0x0000c000 0 0x0108>;

not an upstream compatible, please delete the node.

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
Why don't we use
#include <arm/cros-ec-keyboard.dtsi> ?

> \ No newline at end of file
> 

As Yingjoe already mentioned, please add a newline :)

Regards,
Matthias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
