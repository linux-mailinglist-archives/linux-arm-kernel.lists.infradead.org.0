Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0437117CCDD
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 09:36:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9F8aoa5D6dSvp3PZmgkuaMhdYipCnV8M1BUNxzdHl7w=; b=uoX2wGJQIOn0Q+
	vDIKA7IbdlFSIlLvyJihlJ/AuMpHgx/YILOgjnRAla66dL8jiI+rufGLnXSr8frODtvP958a3MeQi
	mBCcD2gHGY8RtuAYHFlJCxFKGDNOrVXXorkpcgSeJGnD0xoH+pGiw/wVo11B6kxwAXH8ImyzBY6yl
	nzJoNFlCDB1Gy0o8XUWvI/zVq1GaYlX2ikec2dMRFovFO6+H4md3ODf2+z9rV1O7vjOA1DOHfZ2Uy
	ILTwnCYV8GVk53hnhpejoFpBDjs0hBeKlgJHPicuFjsP6143oqZCbY3AUayISSIjXKE7VWIrYX5zY
	2vy0s9mLNSeHzWdbxd0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAUwj-0000hb-W7; Sat, 07 Mar 2020 08:36:34 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAUwc-0000gf-13; Sat, 07 Mar 2020 08:36:28 +0000
Received: by mail-wm1-x344.google.com with SMTP id a141so4759716wme.2;
 Sat, 07 Mar 2020 00:36:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+llLPrGd5t8/uzhFM/JY7vfZMQbUY9JxBp7ItfeQETg=;
 b=ZRhN2JuBc1yZkvqlv8Nz7tw90jGoUvvyG5U5lSFosjd87xniaE35kHUCrXF3gbRgLO
 8sCahkAPj+kUccqOrd4W4nZB+MOZ0pcyAYA3jJdTbG0dwvmKvVCtI1AH1D8csPp0s219
 UvO7kbWsUHIs9Kez4Bquy4BtmJ4yrbY2afogLT1fHIS/Yk++SNF8dOa5znqbjKMRSk6N
 BT1N3wYStmxMV+cfQPACYhHZ5r/PsUDPzZ/LnIsus9Kz2M3ZpTyykH4XP3iT6ka9Tx9y
 vFFEAfm6qDCMb7RnLrmbKYMqEQoGoDv5gXsq5241upGF9shsghC2DcKTfpKHF83a8iUU
 pOlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+llLPrGd5t8/uzhFM/JY7vfZMQbUY9JxBp7ItfeQETg=;
 b=fANIiuPX4WgMeZsaWJKvGnhx0Uhk8T2Y8Y4koLWsZvmoXsWhLee7TyiLeupewc/TlV
 dy6hiJCYOI9Rid99GOLY874r46/uQM9bSBS1n8rMxighpsrqxzbgQZqcB95nTXKVceqj
 /b5g75TrmCNl5ArAjUiIN5SxOH0gKtPn6OuZiGD1FYc4RMiJh/5qH07qCWWgY0/TNOVw
 M5ODAYHxPMIS+YuGSSyAjXT4MD2SkX6XOheCW/1hZiyHn2Ql2dmproHpo3PSCmwbG5qk
 LEv6/sDo5ZGiLIe9cwXTv+X0L2+u8GfivaXWvurXh2ugo/srS+T9WgSz7UQ6u5AZr/I9
 dA7Q==
X-Gm-Message-State: ANhLgQ1fHG3u8EjSL4JzuTgMx5sUcXZ8Xd3qtnJUVSupz/99Z/R4cAE3
 YjSrEGl7LBE6LKSL2EGhkDw=
X-Google-Smtp-Source: ADFU+vuyotHzjwL5WHrLpokrRMf3GK6+z5AfHgvriTox//HNu4OX1ioXJSvmX6mkBnSUaOZ/5FGaVQ==
X-Received: by 2002:a7b:cb42:: with SMTP id v2mr8904028wmj.170.1583570181971; 
 Sat, 07 Mar 2020 00:36:21 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f17sm31420661wrm.3.2020.03.07.00.36.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 Mar 2020 00:36:21 -0800 (PST)
To: heiko@sntech.de
References: <20200306210922.172346-3-heiko@sntech.de>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add Odroid Advance Go
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <59bdf2c1-79cf-2c45-263e-80a9358c7fdd@gmail.com>
Date: Sat, 7 Mar 2020 09:36:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200306210922.172346-3-heiko@sntech.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_003626_104031_9735F40A 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 heiko.stuebner@theobroma-systems.com, kever.yang@rock-chips.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heiko,

The 'heartbeat' led seems to need some changes. The rest is inherited
from px30.dtsi I think. How do you deal with all the compatible
properties names that are normally SoC specific?

Also include all mail lists found with:
./scripts/get_maintainer.pl --nogit-fallback --nogit

linux-kernel@vger.kernel.org

  DTC     arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dtb
  DTC     arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dt.yaml
  CHECK   arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dt.yaml
arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dt.yaml: tsadc:
tsadc-otp-gpio: {'rockchip,pins': [[0, 6, 0, 123]], 'phandle': [[90]]}
is not of type 'array'
arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dt.yaml: usb@ff340000:
'clock-names', 'power-domains' do not match any of the regexes:
'pinctrl-[0-9]+'
arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dt.yaml: usb@ff300000:
'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'
arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dt.yaml: usb@ff350000:
'clock-names', 'power-domains' do not match any of the regexes:
'pinctrl-[0-9]+'
arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dt.yaml: gpio-leds:
'heartbeat' does not match any of the regexes: '(^led-[0-9a-f]$|led)',
'pinctrl-[0-9]+'
arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dt.yaml: usb2-phy@100:
'#phy-cells' is a required property

> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The Odroid Advance Go is a handheld based on Rockchip's rk3326 soc
> with a DSI display and some handheld controls including an analog
> joystick connected to the saradc.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 544 ++++++++++++++++++
>  2 files changed, 545 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index af1e1c3707d0..86c38467d487 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -6,6 +6,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-copperhead-ltk101b4029w.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> new file mode 100644
> index 000000000000..a16f4a0d1d4d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> @@ -0,0 +1,544 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Hardkernel Co., Ltd
> + * Copyright (c) 2020 Theobroma Systems Design und Consulting GmbH
> + */
> +
> +/dts-v1/;
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include "rk3326.dtsi"
> +
> +/ {
> +	model = "ODROID-GO Advance";
> +	compatible = "hardkernel,rk3326-odroid-go2", "rockchip,rk3326";
> +
> +	chosen {
> +		stdout-path = "serial2:115200n8";
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&btn_pins>;
> +
> +		/*
> +		 *      *** ODROIDGO2-Advance Switch layoout ***
> +		 * |------------------------------------------------|
> +		 * | sw15                                      sw16 |
> +		 * |------------------------------------------------|
> +		 * |     sw1      |-------------------|      sw8    |
> +		 * |  sw3   sw4   |                   |   sw7   sw5 |
> +		 * |     sw2      |    LCD Display    |      sw6    |
> +		 * |              |                   |             |
> +		 * |              |-------------------|             |
> +		 * |         sw9 sw10   sw11 sw12   sw13 sw14       |
> +		 * |------------------------------------------------|
> +		 */
> +
> +		sw1 {
> +			gpios = <&gpio1 RK_PB4 GPIO_ACTIVE_LOW>;
> +			label = "DPAD-UP";
> +			linux,code = <BTN_DPAD_UP>;
> +		};
> +		sw2 {
> +			gpios = <&gpio1 RK_PB5 GPIO_ACTIVE_LOW>;
> +			label = "DPAD-DOWN";
> +			linux,code = <BTN_DPAD_DOWN>;
> +		};
> +		sw3 {
> +			gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_LOW>;
> +			label = "DPAD-LEFT";
> +			linux,code = <BTN_DPAD_LEFT>;
> +		};
> +		sw4 {
> +			gpios = <&gpio1 RK_PB7 GPIO_ACTIVE_LOW>;
> +			label = "DPAD-RIGHT";
> +			linux,code = <BTN_DPAD_RIGHT>;
> +		};
> +		sw5 {
> +			gpios = <&gpio1 RK_PA2 GPIO_ACTIVE_LOW>;
> +			label = "BTN-A";
> +			linux,code = <BTN_EAST>;
> +		};
> +		sw6 {
> +			gpios = <&gpio1 RK_PA5 GPIO_ACTIVE_LOW>;
> +			label = "BTN-B";
> +			linux,code = <BTN_SOUTH>;
> +		};
> +		sw7 {
> +			gpios = <&gpio1 RK_PA6 GPIO_ACTIVE_LOW>;
> +			label = "BTN-Y";
> +			linux,code = <BTN_WEST>;
> +		};
> +		sw8 {
> +			gpios = <&gpio1 RK_PA7 GPIO_ACTIVE_LOW>;
> +			label = "BTN-X";
> +			linux,code = <BTN_NORTH>;
> +		};
> +		sw9 {
> +			gpios = <&gpio2 RK_PA0 GPIO_ACTIVE_LOW>;
> +			label = "F1";
> +			linux,code = <BTN_TRIGGER_HAPPY1>;
> +		};
> +		sw10 {
> +			gpios = <&gpio2 RK_PA1 GPIO_ACTIVE_LOW>;
> +			label = "F2";
> +			linux,code = <BTN_TRIGGER_HAPPY2>;
> +		};
> +		sw11 {
> +			gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_LOW>;
> +			label = "F3";
> +			linux,code = <BTN_TRIGGER_HAPPY3>;
> +		};
> +		sw12 {
> +			gpios = <&gpio2 RK_PA3 GPIO_ACTIVE_LOW>;
> +			label = "F4";
> +			linux,code = <BTN_TRIGGER_HAPPY4>;
> +		};
> +		sw13 {
> +			gpios = <&gpio2 RK_PA4 GPIO_ACTIVE_LOW>;
> +			label = "F5";
> +			linux,code = <BTN_TRIGGER_HAPPY5>;
> +		};
> +		sw14 {
> +			gpios = <&gpio2 RK_PA5 GPIO_ACTIVE_LOW>;
> +			label = "F6";
> +			linux,code = <BTN_TRIGGER_HAPPY6>;
> +		};
> +		sw15 {
> +			gpios = <&gpio2 RK_PA6 GPIO_ACTIVE_LOW>;
> +			label = "TOP-LEFT";
> +			linux,code = <BTN_TL>;
> +		};
> +		sw16 {
> +			gpios = <&gpio2 RK_PA7 GPIO_ACTIVE_LOW>;
> +			label = "TOP-RIGHT";
> +			linux,code = <BTN_TR>;
> +		};
> +	};
> +
> +	leds: gpio-leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "led_pins";
> +		pinctrl-0 = <&led_pins>;
> +
> +		/* Blue LED : GPIO0_C1 */
> +		heartbeat {
> +			label = "blue:heartbeat";
> +			gpios = <&gpio0 RK_PC1 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +

> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		power-supply = <&vcc_bl>;
> +		pwms = <&pwm1 0 25000 0>;
> +	};

sort nodenames

> +
> +	vccsys: vccsys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v8_sys";
> +		regulator-always-on;
> +		regulator-min-microvolt = <3800000>;
> +		regulator-max-microvolt = <3800000>;
> +	};
> +
> +	vcc_host: vcc_host {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_host";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +
> +		gpio = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-always-on;
> +		vin-supply = <&vccsys>;
> +	};
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&vdd_arm>;
> +};
> +
> +&cpu1 {
> +	cpu-supply = <&vdd_arm>;
> +};
> +
> +&cpu2 {
> +	cpu-supply = <&vdd_arm>;
> +};
> +
> +&cpu3 {
> +	cpu-supply = <&vdd_arm>;
> +};
> +
> +&cru {
> +	assigned-clocks = <&cru PLL_NPLL>,
> +		<&cru ACLK_BUS_PRE>, <&cru ACLK_PERI_PRE>,
> +		<&cru HCLK_BUS_PRE>, <&cru HCLK_PERI_PRE>,
> +		<&cru PCLK_BUS_PRE>, <&cru SCLK_GPU>,
> +		<&cru PLL_CPLL>;
> +
> +	assigned-clock-rates = <1188000000>,
> +		<200000000>, <200000000>,
> +		<150000000>, <150000000>,
> +		<100000000>, <200000000>,
> +		<17000000>;
> +};
> +
> +&display_subsystem {
> +	status = "okay";
> +};
> +
> +&dsi {
> +	status = "okay";
> +
> +	ports {
> +		mipi_out: port@1 {
> +			reg = <1>;
> +
> +			mipi_out_panel: endpoint {
> +				remote-endpoint = <&mipi_in_panel>;
> +			};
> +		};
> +	};
> +
> +	panel@0 {
> +		compatible = "elida,kd35t133";
> +		reg = <0>;
> +		backlight = <&backlight>;
> +		iovcc-supply = <&vcc_lcd>;
> +		reset-gpios = <&gpio3 RK_PC0 GPIO_ACTIVE_LOW>;
> +		vdd-supply = <&vcc_lcd>;
> +
> +		port {
> +			mipi_in_panel: endpoint {
> +				remote-endpoint = <&mipi_out_panel>;
> +			};
> +		};
> +	};
> +};
> +
> +&dsi_dphy {
> +	status = "okay";
> +};
> +
> +&gpu {
> +	mali-supply = <&vdd_logic>;
> +	status = "okay";
> +};
> +
> +&i2c0 {

> +	status = "okay";

status below

> +	clock-frequency = <400000>;

> +	i2c-scl-rising-time-ns = <280>;
> +	i2c-scl-falling-time-ns = <16>;

sort

> +
> +	rk817: pmic@20 {
> +		compatible = "rockchip,rk817";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_int>;
> +		rockchip,system-power-controller;
> +		wakeup-source;
> +		#clock-cells = <1>;
> +		clock-output-names = "rk808-clkout1", "xin32k";
> +
> +		vcc1-supply = <&vccsys>;
> +		vcc2-supply = <&vccsys>;
> +		vcc3-supply = <&vccsys>;
> +		vcc4-supply = <&vccsys>;
> +		vcc5-supply = <&vccsys>;
> +		vcc6-supply = <&vccsys>;
> +		vcc7-supply = <&vccsys>;
> +
> +		regulators {
> +			vdd_logic: DCDC_REG1 {
> +				regulator-name = "vdd_logic";
> +				regulator-min-microvolt = <950000>;
> +				regulator-max-microvolt = <1150000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <950000>;
> +				};
> +			};
> +
> +			vdd_arm: DCDC_REG2 {
> +				regulator-name = "vdd_arm";
> +				regulator-min-microvolt = <950000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-suspend-microvolt = <950000>;
> +				};
> +			};
> +
> +			vcc_ddr: DCDC_REG3 {
> +				regulator-name = "vcc_ddr";
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc_3v3: DCDC_REG4 {
> +				regulator-name = "vcc_3v3";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc_1v8: LDO_REG2 {
> +				regulator-name = "vcc_1v8";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vdd_1v0: LDO_REG3 {
> +				regulator-name = "vdd_1v0";
> +				regulator-min-microvolt = <1000000>;
> +				regulator-max-microvolt = <1000000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1000000>;
> +				};
> +			};
> +
> +			vcc3v3_pmu: LDO_REG4 {
> +				regulator-name = "vcc3v3_pmu";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vccio_sd: LDO_REG5 {
> +				regulator-name = "vccio_sd";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc_sd: LDO_REG6 {
> +				regulator-name = "vcc_sd";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc_bl: LDO_REG7 {
> +				regulator-name = "vcc_bl";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc_lcd: LDO_REG8 {
> +				regulator-name = "vcc_lcd";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-suspend-microvolt = <2800000>;
> +				};
> +			};
> +
> +			vcc_cam: LDO_REG9 {
> +				regulator-name = "vcc_cam";
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-suspend-microvolt = <3000000>;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +/* EXT Header(P2) : 7(SCL:GPIO0.C2), 8(SDA:GPIO0.C3) */
> +&i2c1 {

> +	status = "okay";

status below

> +	clock-frequency = <400000>;
> +};
> +
> +/* I2S 1 Channel Used */
> +&i2s1_2ch {

> +	status = "okay";

status below

> +	#sound-dai-cells = <0>;
> +};
> +
> +&io_domains {
> +	vccio1-supply = <&vcc_3v3>;
> +	vccio2-supply = <&vccio_sd>;
> +	vccio3-supply = <&vcc_3v3>;
> +	vccio4-supply = <&vcc_3v3>;
> +	vccio5-supply = <&vcc_3v3>;
> +	vccio6-supply = <&vcc_3v3>;
> +	status = "okay";
> +};
> +
> +&pmu_io_domains {
> +	pmuio1-supply = <&vcc3v3_pmu>;
> +	pmuio2-supply = <&vcc3v3_pmu>;
> +	status = "okay";
> +};
> +
> +&pwm1 {
> +	status = "okay";
> +};
> +
> +&saradc {
> +	vref-supply = <&vcc_1v8>;
> +	status = "okay";
> +};
> +
> +&sdmmc {
> +	bus-width = <4>;
> +	cap-sd-highspeed;

> +	card-detect-delay = <800>;

Other dts use 200. Why we need 800?

> +	cd-gpios = <&gpio0 RK_PA3 GPIO_ACTIVE_LOW>;
> +	sd-uhs-sdr12;
> +	sd-uhs-sdr25;
> +	sd-uhs-sdr50;
> +	sd-uhs-sdr104;
> +	vmmc-supply = <&vcc_sd>;
> +	vqmmc-supply = <&vccio_sd>;
> +	status = "okay";
> +};
> +
> +&tsadc {
> +	pinctrl-names = "gpio", "otpout";
> +	pinctrl-0 = <&tsadc_otp_gpio>;
> +	pinctrl-1 = <&tsadc_otp_out>;
> +	status = "okay";
> +};
> +
> +&u2phy {
> +	status = "okay";
> +
> +	u2phy_host: host-port {
> +		status = "okay";
> +	};
> +
> +	u2phy_otg: otg-port {
> +		status = "disabled";
> +	};
> +};
> +
> +&usb20_otg {
> +	status = "okay";
> +};
> +
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart1_xfer &uart1_cts>;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart2m1_xfer>;
> +	status = "okay";
> +};
> +
> +&vopb {
> +	status = "okay";
> +};
> +
> +&vopb_mmu {
> +	status = "okay";
> +};
> +
> +&pinctrl {
> +	pmic {
> +		pmic_int: pmic-int {
> +			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		dc_det: dc-det {
> +			rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	leds {
> +		led_pins: led-pins {
> +			rockchip,pins = <0 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	btns {
> +		btn_pins: btn-pins {
> +			rockchip,pins = <1 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>,
> +					<1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>,
> +					<1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_up>,
> +					<1 RK_PB7 RK_FUNC_GPIO &pcfg_pull_up>,
> +					<1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>,
> +					<1 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>,
> +					<1 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>,
> +					<1 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>,
> +
> +					<2 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>,
> +					<2 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>,
> +					<2 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>,
> +					<2 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>,
> +					<2 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>,
> +					<2 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>,
> +					<2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>,
> +					<2 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +};
> --
> 2.24.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
