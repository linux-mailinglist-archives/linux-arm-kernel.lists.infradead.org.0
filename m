Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B6E174A2F
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 00:36:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pl8ULE7usUyzevPgDwrdy23/lDFuA928btLeR3D0a4Q=; b=nHzspMY25ic6w5WghQCM1hSLHc
	sZy9xhUM4E+wR98+UeBdD7oV6vAbFZAcCrhZu8EVp3+RGfEGeLW/SZwIFs0I8BPxxx1LrI4qjCAHy
	yrVUQH7tla19EfefoXT2gKc6I+dtne6SjOdRiuBUcY+MbagP2ac125FbHdX4NVX7wyMKU/lgu5Zxu
	jcUC7h+Dlc6P5oeCuv8uQ/aJMm04J1g4xOMon94poiLqwH3P0CAHzTvlzIjk/X6B93Bb0+oe8xQ5i
	1wQikdHBAi70HsQ/xKP4aUDjOg0cQvbA/B4pHzc8CeoS/6tnMIGrmGiV/hI9gFfDBP/3lP1VE6yhz
	fWux1fLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8BeM-0003Fx-BP; Sat, 29 Feb 2020 23:36:02 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8BeA-0003Eu-RR; Sat, 29 Feb 2020 23:35:52 +0000
Received: by mail-wm1-x343.google.com with SMTP id e26so1672180wme.5;
 Sat, 29 Feb 2020 15:35:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VeaOZajZ8ChtFxoOKvqFs8Yu23rXbfsqVQmK9eQZCvs=;
 b=ItyokvZ68VpoCugmwkd5n2SHkJG1kw2DiIvEhpFg3YpBNf51uRoKxTd5JA1vMNtK6c
 R9QpgB21nPEqhrNpMJAPuBpNqd/ooOHnfmIk1IbAmaD+lhqEcZR2C5ALbd9iiTDJYXo7
 QC2V9OFRos7CuVRHxTbDUBjztEoF7xzQhI4oRplC5AUqKL5gAah/Fq8lOSTzTl7pes/p
 KHR6Gsx/GxMf0X6p/IfZ+1kiePhZHHTrHuQARyS4vi+q/5LRC13XH4sVOJjd3Grm/sIe
 x02GrptFgOA5dmgyueA5It6NYUmDgxLC+GkGY82s0kC4z2qVIyzWz2ArO8bmuRYtjz+d
 8dWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VeaOZajZ8ChtFxoOKvqFs8Yu23rXbfsqVQmK9eQZCvs=;
 b=VP/AGwGihnkvPa6LtmWmcJbQHCvO421/4ge35gdOhatPgd16uKq8ezCoyH2oxZwUq9
 OLSq1BDQeK+XVt3QDoA1I7ubZmjb3+xkpOFogwyTgB3J0s93EkxsL//6I9N3vHyB6FPB
 HV6DDt5erM6NIYfimUwsCfrcIV5TfVcbU7MmLDdVaV/fJ9d5eA0qosC2FK5BGmara1U0
 iwtF7pNSIqjPkcMScRlTlN128MzBz+gwNGMoCA5P62zpvLYGWSPOWF2xPF4zT1QAnZGa
 HVkRM4YpHlx453W3D8GT778NMBRQymXgySLKFhb5ayVhFUf8Btm5oCzRBtFvGvl7m+FJ
 rLuA==
X-Gm-Message-State: APjAAAV6oY5OEQxJXP60ajfaK5L3QebRSCVKiZejyYiQXyLaZQ31S4qG
 QNAyD6ofNJsdmixXFb+r8TE=
X-Google-Smtp-Source: APXvYqzloFMwhvHis8Vrqiq9LzrNtk0JLn1yNUUtiQ2jT0VLjgFCGUNZQLB5U0wEla2aqGnZz3LOhw==
X-Received: by 2002:a1c:7c11:: with SMTP id x17mr12215995wmc.168.1583019348936; 
 Sat, 29 Feb 2020 15:35:48 -0800 (PST)
Received: from ziggy.stardust ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id i18sm16161890wrv.30.2020.02.29.15.35.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 29 Feb 2020 15:35:48 -0800 (PST)
Subject: Re: [PATCH v3 2/2] arm64: dts: mediatek: add pumpkin board dts
To: Fabien Parent <fparent@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20200229170401.1287324-1-fparent@baylibre.com>
 <20200229170401.1287324-2-fparent@baylibre.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <78a87096-ab65-02fc-1c16-596c48eb8131@gmail.com>
Date: Sun, 1 Mar 2020 00:35:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200229170401.1287324-2-fparent@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_153550_896777_2B5E9D2E 
X-CRM114-Status: GOOD (  25.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 29/02/2020 18:04, Fabien Parent wrote:
> The pumpkin board is  made by Gossamer Engineering and is using
> a MediaTek SoC. The board currently comes in two available version:
> MT8516 SoC and MT8167 SoC.
> The board provides the following IOs: eMMC, NAND, SD card, USB type-A,
> Ethernet, Wi-Fi, Bluetooth, Audio (jack out, 2 PDM port, 1 analog in),
> serial over USB, and an expansion header.
> 
> Additionally there is a HDMI port, DSI port, and camera port only
> on the MT8167 version of the board.
> 
> The board can be powered by battery and/or via a USB Type-C port and
> is using a PMIC MT6392.
> 
> The eMMC and NAND are sharing pins and cannot be used together.
> 
> This commit is adding the basic boot support for the Pumpkin MT8516
> board on the eMMC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>

pushed to v5.6-next/dts64

Thanks!

> ---
> 
> V3:
> 	* Fix warnings from dtbs_check and checkpatch.pl
> 	* Add FW optee nodes
> 	* Add usb0 and usb0_phy nodes
> 
> V2:
> 	* Remove dependency on PMIC MT6392 to make it easier to merge the DTS
> 	until the PMIC code is merged.
> 	* Rename a bunch of label to make them more straighforward
> 	* Use names for keycode instead of magic values
> 	* Add chosen for serial port
> 
> ---
>  arch/arm64/boot/dts/mediatek/Makefile         |   1 +
>  .../boot/dts/mediatek/mt8516-pumpkin.dts      |  20 ++
>  .../boot/dts/mediatek/pumpkin-common.dtsi     | 221 ++++++++++++++++++
>  3 files changed, 242 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8516-pumpkin.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
> 
> diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
> index 458bbc422a94..2f8967cb8717 100644
> --- a/arch/arm64/boot/dts/mediatek/Makefile
> +++ b/arch/arm64/boot/dts/mediatek/Makefile
> @@ -8,3 +8,4 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-rfb1.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-bananapi-bpi-r64.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-evb.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-evb.dtb
> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt8516-pumpkin.dtb
> diff --git a/arch/arm64/boot/dts/mediatek/mt8516-pumpkin.dts b/arch/arm64/boot/dts/mediatek/mt8516-pumpkin.dts
> new file mode 100644
> index 000000000000..cce642c53812
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/mt8516-pumpkin.dts
> @@ -0,0 +1,20 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 BayLibre, SAS.
> + * Author: Fabien Parent <fparent@baylibre.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "mt8516.dtsi"
> +#include "pumpkin-common.dtsi"
> +
> +/ {
> +	model = "Pumpkin MT8516";
> +	compatible = "mediatek,mt8516";
> +
> +	memory@40000000 {
> +		device_type = "memory";
> +		reg = <0 0x40000000 0 0x40000000>;
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
> new file mode 100644
> index 000000000000..a31093d7142b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
> @@ -0,0 +1,221 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 BayLibre, SAS.
> + * Author: Fabien Parent <fparent@baylibre.com>
> + */
> +
> +#include <dt-bindings/gpio/gpio.h>
> +
> +/ {
> +	aliases {
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:921600n8";
> +	};
> +
> +	firmware {
> +		optee: optee@4fd00000 {
> +			compatible = "linaro,optee-tz";
> +			method = "smc";
> +		};
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		input-name = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&gpio_keys_default>;
> +
> +		volume-up {
> +			gpios = <&pio 42 GPIO_ACTIVE_LOW>;
> +			label = "volume_up";
> +			linux,code = <115>;
> +			wakeup-source;
> +			debounce-interval = <15>;
> +		};
> +
> +		volume-down {
> +			gpios = <&pio 43 GPIO_ACTIVE_LOW>;
> +			label = "volume_down";
> +			linux,code = <114>;
> +			wakeup-source;
> +			debounce-interval = <15>;
> +		};
> +	};
> +};
> +
> +&i2c0 {
> +	clock-div = <2>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c0_pins_a>;
> +	status = "okay";
> +
> +	tca6416: gpio@20 {
> +		compatible = "ti,tca6416";
> +		reg = <0x20>;
> +		rst-gpio = <&pio 65 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&tca6416_pins>;
> +
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +
> +		eint20_mux_sel0 {
> +			gpio-hog;
> +			gpios = <0 0>;
> +			input;
> +			line-name = "eint20_mux_sel0";
> +		};
> +
> +		expcon_mux_sel1 {
> +			gpio-hog;
> +			gpios = <1 0>;
> +			input;
> +			line-name = "expcon_mux_sel1";
> +		};
> +
> +		mrg_di_mux_sel2 {
> +			gpio-hog;
> +			gpios = <2 0>;
> +			input;
> +			line-name = "mrg_di_mux_sel2";
> +		};
> +
> +		sd_sdio_mux_sel3 {
> +			gpio-hog;
> +			gpios = <3 0>;
> +			input;
> +			line-name = "sd_sdio_mux_sel3";
> +		};
> +
> +		sd_sdio_mux_ctrl7 {
> +			gpio-hog;
> +			gpios = <7 0>;
> +			output-low;
> +			line-name = "sd_sdio_mux_ctrl7";
> +		};
> +
> +		hw_id0 {
> +			gpio-hog;
> +			gpios = <8 0>;
> +			input;
> +			line-name = "hw_id0";
> +		};
> +
> +		hw_id1 {
> +			gpio-hog;
> +			gpios = <9 0>;
> +			input;
> +			line-name = "hw_id1";
> +		};
> +
> +		hw_id2 {
> +			gpio-hog;
> +			gpios = <10 0>;
> +			input;
> +			line-name = "hw_id2";
> +		};
> +
> +		fg_int_n {
> +			gpio-hog;
> +			gpios = <11 0>;
> +			input;
> +			line-name = "fg_int_n";
> +		};
> +
> +		usba_pwr_en {
> +			gpio-hog;
> +			gpios = <12 0>;
> +			output-high;
> +			line-name = "usba_pwr_en";
> +		};
> +
> +		wifi_3v3_pg {
> +			gpio-hog;
> +			gpios = <13 0>;
> +			input;
> +			line-name = "wifi_3v3_pg";
> +		};
> +
> +		cam_rst {
> +			gpio-hog;
> +			gpios = <14 0>;
> +			output-low;
> +			line-name = "cam_rst";
> +		};
> +
> +		cam_pwdn {
> +			gpio-hog;
> +			gpios = <15 0>;
> +			output-low;
> +			line-name = "cam_pwdn";
> +		};
> +	};
> +};
> +
> +&i2c2 {
> +	clock-div = <2>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c2_pins_a>;
> +	status = "okay";
> +};
> +
> +&uart0 {
> +	status = "okay";
> +};
> +
> +&usb0 {
> +	status = "okay";
> +	dr_mode = "peripheral";
> +
> +	usb_con: connector {
> +		compatible = "usb-c-connector";
> +		label = "USB-C";
> +	};
> +};
> +
> +&usb0_phy {
> +	status = "okay";
> +};
> +
> +&pio {
> +	gpio_keys_default: gpiodefault {
> +		pins_cmd_dat {
> +			pinmux = <MT8516_PIN_42_KPCOL0__FUNC_GPIO42>,
> +				 <MT8516_PIN_43_KPCOL1__FUNC_GPIO43>;
> +			bias-pull-up;
> +			input-enable;
> +		};
> +	};
> +
> +	i2c0_pins_a: i2c0@0 {
> +		pins1 {
> +			pinmux = <MT8516_PIN_58_SDA0__FUNC_SDA0_0>,
> +				 <MT8516_PIN_59_SCL0__FUNC_SCL0_0>;
> +			bias-disable;
> +		};
> +	};
> +
> +	i2c2_pins_a: i2c2@0 {
> +		pins1 {
> +			pinmux = <MT8516_PIN_60_SDA2__FUNC_SDA2_0>,
> +				 <MT8516_PIN_61_SCL2__FUNC_SCL2_0>;
> +			bias-disable;
> +		};
> +	};
> +
> +	tca6416_pins: pinmux_tca6416_pins {
> +		gpio_mux_rst_n_pin {
> +			pinmux = <MT8516_PIN_65_UTXD1__FUNC_GPIO65>;
> +			output-high;
> +		};
> +
> +		gpio_mux_int_n_pin {
> +			pinmux = <MT8516_PIN_64_URXD1__FUNC_GPIO64>;
> +			input-enable;
> +			bias-pull-up;
> +		};
> +	};
> +};
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
