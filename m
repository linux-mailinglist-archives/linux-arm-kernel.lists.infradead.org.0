Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE79414972B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 19:28:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pN29X/IzDch/RkBNGim3/k2ru20swLi45R0PkL0HExg=; b=htkHXQIte8ApGu
	h2G/Vrbt7pCfh7hYJGuiSlxjtkAZUR/h9BAJ7t0qKGBh/ku1MjS4qrHMywsaNkkavOdhLOO26TH+P
	341rm3jS/2KmzVAQF14NL/Wlgv2SVyh81aC4pmCDL3FU4D5+pGmqOMB56PSu2o0ylWp/XSwlCTj0z
	eKPHFD1iLhE8g7x3fSO2ZQF+1CyfKT3wwKdYu6COoQEzGta0lESNJ9BiAmmr18qDKAmCq7m42Z4JW
	VmD21bmkXNtl4A71vZ5zYAFbMb0AqROFBIph5Y4q9u1GnGUJLEX3uhTWdkoCK/FGCRtaTbUTL5LBT
	l0SRNXAzYPIxq79Xif2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivQAE-0007XK-0E; Sat, 25 Jan 2020 18:28:10 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivQA0-0007WU-H3; Sat, 25 Jan 2020 18:27:58 +0000
Received: by mail-wr1-x444.google.com with SMTP id j42so5932058wrj.12;
 Sat, 25 Jan 2020 10:27:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=E436PIKNvJvhiL5V9eZKI5eZ1VtUP4Fon0XAt5zGstY=;
 b=GArjKjWwHzlA8Ed9LAI+Qr5ZMcJQmbFihfZP/eQ01MAhXeFraf+1zJbZLCzRTT0PnB
 cwIO882vdk5z43lKN+rOLFYzncD6xMoDk7CTNNyotGUpEyAJ81nntrcJyW7tP28BB5I8
 5D0PubIgdzxxx7IDUSLUL14ag6VpOAllUXolNvsYcSq963MmCqDlAjd0GFLYS4Wsy4/7
 gOj2iP9EjHgiYhkfb4XyYQNhAVaQVUsR8HSrzRqzRaEEkP18hD32lp9Tke8IlgCAbeJ8
 xIeUJaepd45AHdn+wWMq3/IdvTp5wmZAlT60wr3tfG2bjuxm7ROkBMe255jPCgOUxz0Y
 /+gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=E436PIKNvJvhiL5V9eZKI5eZ1VtUP4Fon0XAt5zGstY=;
 b=LgH0S0tegn4OxqXLWeWQni54HLQzROUD+Z9vsB8QHgLLyOuEU6mQ2/92wy7pL7QxYk
 gMebYuYmaQCJTkk2GhczPfNBpPHueLCejBSB6G8Ea+wRFmMfyWYxd0xFDIYAVNNU8BXA
 29wbIPoiKtVy8IAVY1Eyl3bEiEeo/rNPUTuEhWLeq6xJLLKeEGPTJNBG95QWT81T3Hhv
 l9MhNfkFY9ZXalc4u1/s3doI6qG4XOE7vCSYqMhOIxP61yiCg23tG7Ad3eC8aCTllnfi
 7akKMjVlYpToWIL5sAylEA9Gh0bsy8PdYS5+aHwn36zOf+naB9kS1N7dCA1AdVy4PoIk
 hv2w==
X-Gm-Message-State: APjAAAUS/D9jqdbG6OoZRmCasyHpZbxOBSihcq4mDiUyCFRSaAuQKTE5
 xIWdZHsJ0nzy/XyUNGcM0us=
X-Google-Smtp-Source: APXvYqygJjvF2tHhSOu0a8+uk+0WU219i2M5C8ZZ5lfD+GP/SzmChoPo3xU/VSaYKohpvZe8+/lE6Q==
X-Received: by 2002:a5d:5267:: with SMTP id l7mr11276402wrc.84.1579976874285; 
 Sat, 25 Jan 2020 10:27:54 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q15sm12660193wrr.11.2020.01.25.10.27.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Jan 2020 10:27:53 -0800 (PST)
To: akash@openedev.com
References: <20200125063153.2720-1-akash@openedev.com>
Subject: Re: [PATCH v4, 1/1] arm64: dts: rockchip: add ROCK Pi S DTS support
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <8d827794-043f-15ee-a902-e739f74f9702@gmail.com>
Date: Sat, 25 Jan 2020 19:27:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200125063153.2720-1-akash@openedev.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_102756_595153_8C2313DC 
X-CRM114-Status: GOOD (  22.95  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, npcomplete13@gmail.com,
 heiko@sntech.de, linux-kernel@vger.kernel.org, dianders@chromium.org,
 robh+dt@kernel.org, kever.yang@rock-chips.com, m.reichl@fivetechno.de,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 jagan@amarulasolutions.com, nick@khadas.com, andy.yan@rock-chips.com,
 robin.murphy@arm.com, jagan@openedev.com, linux-arm-kernel@lists.infradead.org,
 aballier@gentoo.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Akash,


> ROCK Pi S is RK3308 based SBC from radxa.com. ROCK Pi S has a,
> - 256MB/512MB DDR3 RAM
> - SD, NAND flash (optional on board 1/2/4/8Gb)
> - 100MB ethernet, PoE (optional)
> - Onboard 802.11 b/g/n wifi + Bluetooth 4.0 Module
> - USB2.0 Type-A HOST x1
> - USB3.0 Type-C OTG x1
> - 26-pin expansion header
> - USB Type-C DC 5V Power Supply
> 
> This patch enables
> - Console
> - NAND Flash
> - SD Card
> 
> Signed-off-by: Akash Gajjar <akash@openedev.com>
> ---
> Changes in v4
> - remove supports-sd/sdio, nums-slots property
> - use vmmc-supply for emmc node
> 
> Changes in v3
> - Use small S on dts file name
> - Add missing semicolon
> - Remove USB2.0 node support
> 
> Changes in v2
> - Use pwm-supply for vdd_core node instead of vi-supply
> - Add USB2.0 node support
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 216 ++++++++++++++++++
>  3 files changed, 222 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index d9847b306b83..48d40c928d45 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -422,6 +422,11 @@ properties:
>            - const: radxa,rockpi4
>            - const: rockchip,rk3399
> 
> +      - description: Radxa ROCK Pi S
> +        items:
> +          - const: radxa,rockpis
> +          - const: rockchip,rk3308
> +
>        - description: Radxa Rock2 Square
>          items:
>            - const: radxa,rock2-square
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 48fb631d5451..e56a5527bab4 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -2,6 +2,7 @@
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-pi-s.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> new file mode 100644
> index 000000000000..7c7b9a2d3701
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> @@ -0,0 +1,216 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Akash Gajjar <akash@openedev.com>
> + * Copyright (c) 2019 Jagan Teki <jagan@openedev.com>
> + */
> +
> +/dts-v1/;
> +#include "rk3308.dtsi"
> +
> +/ {
> +	model = "Radxa ROCK Pi S";
> +	compatible = "radxa,rockpis", "rockchip,rk3308";
> +
> +	chosen {
> +		stdout-path = "serial0:1500000n8";
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&green_led_gio>, <&heartbeat_led_gpio>;
> +
> +		green-led {
> +			label = "rockpis:green:power";
> +			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "default-on";
> +			default-state = "on";
> +		};
> +
> +		blue-led {
> +			label = "rockpis:blue:user";
> +			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
> +			default-state = "on";
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_enable_h>;
> +		reset-gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	vcc5v0_sys: vcc5v0-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
> +	vdd_core: vdd-core {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm0 0 5000 1>;
> +		regulator-name = "vdd_core";
> +		regulator-min-microvolt = <827000>;
> +		regulator-max-microvolt = <1340000>;
> +		regulator-init-microvolt = <1015000>;
> +		regulator-settling-time-up-us = <250>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		pwm-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vdd_log: vdd-log {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd_log";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1050000>;
> +		regulator-max-microvolt = <1050000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vcc_ddr: vcc-ddr {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_ddr";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1500000>;
> +		regulator-max-microvolt = <1500000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vcc_1v8: vcc-1v8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_1v8";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vcc_io>;
> +	};
> +
> +	vcc_io: vcc-io {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_io";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vcc5v0_otg: vcc5v0-otg {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_otg";
> +		regulator-always-on;
> +		gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&otg_vbus_drv>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&vdd_core>;
> +};
> +
> +&emmc {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	mmc-hs200-1_8v;

> +	disable-wp;

Remove all disable-wp from emmc or sdio controllers.

> +	non-removable;
> +	vmmc-supply = <&vcc_io>;
> +	status = "okay";
> +};
> +
> +&i2c1 {
> +	status = "okay";
> +};
> +
> +&sdmmc {

Sort nodes alphabetically for someone after you who wants to add a node
in a list that is already a mess.

> +	bus-width = <4>;

bus-width = <4>;
Already in dtsi.

> +	cap-mmc-highspeed;


Only micro SD.
Do we still need cap-mmc-highspeed?

> +	cap-sd-highspeed;

> +	max-frequeency = <150000000>;

replace max-frequeency by max-frequency
max-frequency = <150000000> is already defined in rk3308.dtsi,
so remove or change value.

> +	disable-wp;
> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_det &sdmmc_bus4>;

> +	card-detect-delay = <800>;

Why do we need this?
Why is this value set to 800? All other dts use 200.
What changed in the specifications?

> +	status = "okay";
> +};
> +

> +&spi2 {

Sort nodes alphabetically.

> +	status = "okay";

status below

> +	max-freq = <10000000>;
> +};
> +
> +&pinctrl {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&rtc_32k>;
> +
> +	leds {
> +		green_led_gio: green-led-gpio {
> +			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		heartbeat_led_gpio: heartbeat-led-gpio {
> +			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	usb {
> +		otg_vbus_drv: otg-vbus-drv {
> +			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	sdio-pwrseq {
> +		wifi_enable_h: wifi-enable-h {
> +			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		wifi_host_wake: wifi-host-wake {
> +			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +	};
> +};
> +
> +&pwm0 {
> +	status = "okay";

status below

> +	pinctrl-0 = <&pwm0_pin_pull_down>;
> +};
> +
> +&saradc {
> +	vref-supply = <&vcc_1v8>;
> +	status = "okay";
> +};
> +
> +&sdio {
> +	#address-cells = <1>;
> +	#size-cells = <0>;

> +	bus-width = <4>;

bus-width = <4>;
Already in dtsi.

> +	max-frequency = <1000000>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;
> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	sd-uhs-sdr104;

Sort properties.
Keep status below.

> +	status = "okay";
> +};
> +
> +&uart0 {
> +	status = "okay";
> +};
> +
> +&uart4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart4_xfer &uart4_rts &uart4_cts>;
> +	status = "okay";
> +};
> --
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
