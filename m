Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AFC11FCA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 02:46:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZviLs+MIbo4zmSVW5R7cr4j/jPmjuxjBy5uC7rNZPnU=; b=Pg7Ucl5FObW9ii1H8eOrzGLWb
	AHs0qgajI7TpkD42XXrq0hac20IYegbO9Y0UlX3k+kNk07CROliTxBuIgnsXSjaa65wwayEdraeVX
	7YOY9n+hrrlePUDwOqdjYR0oEaC8iejaMZJooVTTfL9ev2BOV8nYEbbrSA/+DgK3k7EeGLFjrNwYz
	QMoRb5WJaDQ/LAD8igwJxirRMqZUJn6uXOOqzu5EIg6Y3FNH080Dxl9eAXo9xXCxQcu2+QXMNPLjX
	QmgrjlIOVAeBBYAZRxXnGpOzyPqBwFgA7gwXXKY25ZeK08wQO9HuwiJBldW/FVmW8KxhcFK/c8RZZ
	j9hd/2pcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igfSY-0008Rp-O6; Mon, 16 Dec 2019 01:46:06 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igfSM-0008Ol-LI
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 01:45:58 +0000
Received: from fsav105.sakura.ne.jp (fsav105.sakura.ne.jp [27.133.134.232])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id xBG1jbGU079212;
 Mon, 16 Dec 2019 10:45:37 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav105.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav105.sakura.ne.jp);
 Mon, 16 Dec 2019 10:45:37 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav105.sakura.ne.jp)
Received: from [192.168.1.2] (121.252.232.153.ap.dti.ne.jp [153.232.252.121])
 (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id xBG1jaJg079206
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Mon, 16 Dec 2019 10:45:36 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Subject: Re: [PATCH v3] arm64: dts: rockchip: split rk3399-rockpro64 for v2
 and v2.1 boards
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
References: <20191202055929.26540-1-katsuhiro@katsuster.net>
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Message-ID: <c92ca626-75ad-b22d-4e43-5716be2efa48@katsuster.net>
Date: Mon, 16 Dec 2019 10:45:36 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191202055929.26540-1-katsuhiro@katsuster.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_174555_248478_9085F2DE 
X-CRM114-Status: GOOD (  21.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Hugh Cole-Baker <sigmaris@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Past 2 weeks, so I send a ping...

On 2019/12/02 14:59, Katsuhiro Suzuki wrote:
> This patch splits rk3399-rockpro64 dts file to 2 files for v2 and
> v2.1 boards.
> 
> Both v2 and v2.1 boards can use almost same settings but we find a
> difference in I2C address of audio CODEC ES8136.
> 
> Reported-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> 
> ---
> 
> Changes in v3:
>    - Add compatible strings for v2.0 and v2.1 boards
> 
> Changes in v2:
>    - Use rk3399-rockpro64.dts for for v2.1 instead of creating
>      rk3399-rockpro64-v2.1.dts
> ---
>   .../devicetree/bindings/arm/rockchip.yaml     |   2 +
>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>   .../boot/dts/rockchip/rk3399-rockpro64-v2.dts |  30 +
>   .../boot/dts/rockchip/rk3399-rockpro64.dts    | 759 +----------------
>   .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 763 ++++++++++++++++++
>   5 files changed, 800 insertions(+), 755 deletions(-)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index d9847b306b83..8d8658613c57 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -409,6 +409,8 @@ properties:
>   
>         - description: Pine64 RockPro64
>           items:
> +          - const: pine64,rockpro64-v2.1
> +          - const: pine64,rockpro64-v2.0
>             - const: pine64,rockpro64
>             - const: rockchip,rk3399
>   
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 48fb631d5451..ee67175f3e78 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -33,6 +33,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-v2.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
> new file mode 100644
> index 000000000000..304e3c51391c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
> @@ -0,0 +1,30 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
> + * Copyright (c) 2019 Katsuhiro Suzuki <katsuhiro@katsuster.net>
> + */
> +
> +/dts-v1/;
> +#include "rk3399-rockpro64.dtsi"
> +
> +/ {
> +	model = "Pine64 RockPro64 v2.0";
> +	compatible = "pine64,rockpro64-v2.0", "pine64,rockpro64", "rockchip,rk3399";
> +};
> +
> +&i2c1 {
> +	es8316: codec@10 {
> +		compatible = "everest,es8316";
> +		reg = <0x10>;
> +		clocks = <&cru SCLK_I2S_8CH_OUT>;
> +		clock-names = "mclk";
> +		#sound-dai-cells = <0>;
> +
> +		port {
> +			es8316_p0_0: endpoint {
> +				remote-endpoint = <&i2s1_p0_0>;
> +			};
> +		};
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> index 7f4b2eba31d4..4b42717800f7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> @@ -2,481 +2,18 @@
>   /*
>    * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
>    * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
> + * Copyright (c) 2019 Katsuhiro Suzuki <katsuhiro@katsuster.net>
>    */
>   
>   /dts-v1/;
> -#include <dt-bindings/input/linux-event-codes.h>
> -#include <dt-bindings/pwm/pwm.h>
> -#include "rk3399.dtsi"
> -#include "rk3399-opp.dtsi"
> +#include "rk3399-rockpro64.dtsi"
>   
>   / {
> -	model = "Pine64 RockPro64";
> -	compatible = "pine64,rockpro64", "rockchip,rk3399";
> -
> -	chosen {
> -		stdout-path = "serial2:1500000n8";
> -	};
> -
> -	clkin_gmac: external-gmac-clock {
> -		compatible = "fixed-clock";
> -		clock-frequency = <125000000>;
> -		clock-output-names = "clkin_gmac";
> -		#clock-cells = <0>;
> -	};
> -
> -	gpio-keys {
> -		compatible = "gpio-keys";
> -		autorepeat;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&pwrbtn>;
> -
> -		power {
> -			debounce-interval = <100>;
> -			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
> -			label = "GPIO Key Power";
> -			linux,code = <KEY_POWER>;
> -			wakeup-source;
> -		};
> -	};
> -
> -	leds {
> -		compatible = "gpio-leds";
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&work_led_gpio>, <&diy_led_gpio>;
> -
> -		work-led {
> -			label = "work";
> -			default-state = "on";
> -			gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
> -		};
> -
> -		diy-led {
> -			label = "diy";
> -			default-state = "off";
> -			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> -		};
> -	};
> -
> -	fan: pwm-fan {
> -		compatible = "pwm-fan";
> -		#cooling-cells = <2>;
> -		fan-supply = <&vcc12v_dcin>;
> -		pwms = <&pwm1 0 50000 0>;
> -	};
> -
> -	sdio_pwrseq: sdio-pwrseq {
> -		compatible = "mmc-pwrseq-simple";
> -		clocks = <&rk808 1>;
> -		clock-names = "ext_clock";
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&wifi_enable_h>;
> -
> -		/*
> -		 * On the module itself this is one of these (depending
> -		 * on the actual card populated):
> -		 * - SDIO_RESET_L_WL_REG_ON
> -		 * - PDN (power down when low)
> -		 */
> -		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
> -	};
> -
> -	sound {
> -		compatible = "audio-graph-card";
> -		label = "rockchip,rk3399";
> -		dais = <&i2s1_p0>;
> -	};
> -
> -	vcc12v_dcin: vcc12v-dcin {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vcc12v_dcin";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <12000000>;
> -		regulator-max-microvolt = <12000000>;
> -	};
> -
> -	/* switched by pmic_sleep */
> -	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vcc1v8_s3";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <1800000>;
> -		regulator-max-microvolt = <1800000>;
> -		vin-supply = <&vcc_1v8>;
> -	};
> -
> -	vcc3v3_pcie: vcc3v3-pcie-regulator {
> -		compatible = "regulator-fixed";
> -		enable-active-high;
> -		gpio = <&gpio1 RK_PD0 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&pcie_pwr_en>;
> -		regulator-name = "vcc3v3_pcie";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		vin-supply = <&vcc12v_dcin>;
> -	};
> -
> -	vcc3v3_sys: vcc3v3-sys {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vcc3v3_sys";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <3300000>;
> -		regulator-max-microvolt = <3300000>;
> -		vin-supply = <&vcc5v0_sys>;
> -	};
> -
> -	/* Actually 3 regulators (host0, 1, 2) controlled by the same gpio */
> -	vcc5v0_host: vcc5v0-host-regulator {
> -		compatible = "regulator-fixed";
> -		enable-active-high;
> -		gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&vcc5v0_host_en>;
> -		regulator-name = "vcc5v0_host";
> -		regulator-always-on;
> -		vin-supply = <&vcc5v0_usb>;
> -	};
> -
> -	vcc5v0_typec: vcc5v0-typec-regulator {
> -		compatible = "regulator-fixed";
> -		enable-active-high;
> -		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&vcc5v0_typec_en>;
> -		regulator-name = "vcc5v0_typec";
> -		regulator-always-on;
> -		vin-supply = <&vcc5v0_usb>;
> -	};
> -
> -	vcc5v0_sys: vcc5v0-sys {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vcc5v0_sys";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <5000000>;
> -		regulator-max-microvolt = <5000000>;
> -		vin-supply = <&vcc12v_dcin>;
> -	};
> -
> -	vcc5v0_usb: vcc5v0-usb {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vcc5v0_usb";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <5000000>;
> -		regulator-max-microvolt = <5000000>;
> -		vin-supply = <&vcc12v_dcin>;
> -	};
> -
> -	vdd_log: vdd-log {
> -		compatible = "pwm-regulator";
> -		pwms = <&pwm2 0 25000 1>;
> -		regulator-name = "vdd_log";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <800000>;
> -		regulator-max-microvolt = <1700000>;
> -		vin-supply = <&vcc5v0_sys>;
> -	};
> -};
> -
> -&cpu_l0 {
> -	cpu-supply = <&vdd_cpu_l>;
> -};
> -
> -&cpu_l1 {
> -	cpu-supply = <&vdd_cpu_l>;
> -};
> -
> -&cpu_l2 {
> -	cpu-supply = <&vdd_cpu_l>;
> -};
> -
> -&cpu_l3 {
> -	cpu-supply = <&vdd_cpu_l>;
> -};
> -
> -&cpu_b0 {
> -	cpu-supply = <&vdd_cpu_b>;
> -};
> -
> -&cpu_b1 {
> -	cpu-supply = <&vdd_cpu_b>;
> -};
> -
> -&emmc_phy {
> -	status = "okay";
> -};
> -
> -&gmac {
> -	assigned-clocks = <&cru SCLK_RMII_SRC>;
> -	assigned-clock-parents = <&clkin_gmac>;
> -	clock_in_out = "input";
> -	phy-supply = <&vcc_lan>;
> -	phy-mode = "rgmii";
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&rgmii_pins>;
> -	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
> -	snps,reset-active-low;
> -	snps,reset-delays-us = <0 10000 50000>;
> -	tx_delay = <0x28>;
> -	rx_delay = <0x11>;
> -	status = "okay";
> -};
> -
> -&hdmi {
> -	ddc-i2c-bus = <&i2c3>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&hdmi_cec>;
> -	status = "okay";
> -};
> -
> -&hdmi_sound {
> -	status = "okay";
> -};
> -
> -&gpu {
> -	mali-supply = <&vdd_gpu>;
> -	status = "okay";
> -};
> -
> -&i2c0 {
> -	clock-frequency = <400000>;
> -	i2c-scl-rising-time-ns = <168>;
> -	i2c-scl-falling-time-ns = <4>;
> -	status = "okay";
> -
> -	rk808: pmic@1b {
> -		compatible = "rockchip,rk808";
> -		reg = <0x1b>;
> -		interrupt-parent = <&gpio3>;
> -		interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
> -		#clock-cells = <1>;
> -		clock-output-names = "xin32k", "rk808-clkout2";
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> -		wakeup-source;
> -
> -		vcc1-supply = <&vcc5v0_sys>;
> -		vcc2-supply = <&vcc5v0_sys>;
> -		vcc3-supply = <&vcc5v0_sys>;
> -		vcc4-supply = <&vcc5v0_sys>;
> -		vcc6-supply = <&vcc5v0_sys>;
> -		vcc7-supply = <&vcc5v0_sys>;
> -		vcc8-supply = <&vcc3v3_sys>;
> -		vcc9-supply = <&vcc5v0_sys>;
> -		vcc10-supply = <&vcc5v0_sys>;
> -		vcc11-supply = <&vcc5v0_sys>;
> -		vcc12-supply = <&vcc3v3_sys>;
> -		vddio-supply = <&vcca_1v8>;
> -
> -		regulators {
> -			vdd_center: DCDC_REG1 {
> -				regulator-name = "vdd_center";
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <750000>;
> -				regulator-max-microvolt = <1350000>;
> -				regulator-ramp-delay = <6001>;
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			vdd_cpu_l: DCDC_REG2 {
> -				regulator-name = "vdd_cpu_l";
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <750000>;
> -				regulator-max-microvolt = <1350000>;
> -				regulator-ramp-delay = <6001>;
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			vcc_ddr: DCDC_REG3 {
> -				regulator-name = "vcc_ddr";
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -				};
> -			};
> -
> -			vcc_1v8: DCDC_REG4 {
> -				regulator-name = "vcc_1v8";
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <1800000>;
> -				regulator-max-microvolt = <1800000>;
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <1800000>;
> -				};
> -			};
> -
> -			vcc1v8_dvp: LDO_REG1 {
> -				regulator-name = "vcc1v8_dvp";
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <1800000>;
> -				regulator-max-microvolt = <1800000>;
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			vcc3v0_touch: LDO_REG2 {
> -				regulator-name = "vcc3v0_touch";
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <3000000>;
> -				regulator-max-microvolt = <3000000>;
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			vcca_1v8: LDO_REG3 {
> -				regulator-name = "vcca_1v8";
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <1800000>;
> -				regulator-max-microvolt = <1800000>;
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <1800000>;
> -				};
> -			};
> -
> -			vcc_sdio: LDO_REG4 {
> -				regulator-name = "vcc_sdio";
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <1800000>;
> -				regulator-max-microvolt = <3000000>;
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <3000000>;
> -				};
> -			};
> -
> -			vcca3v0_codec: LDO_REG5 {
> -				regulator-name = "vcca3v0_codec";
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <3000000>;
> -				regulator-max-microvolt = <3000000>;
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			vcc_1v5: LDO_REG6 {
> -				regulator-name = "vcc_1v5";
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <1500000>;
> -				regulator-max-microvolt = <1500000>;
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <1500000>;
> -				};
> -			};
> -
> -			vcca1v8_codec: LDO_REG7 {
> -				regulator-name = "vcca1v8_codec";
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <1800000>;
> -				regulator-max-microvolt = <1800000>;
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			vcc_3v0: LDO_REG8 {
> -				regulator-name = "vcc_3v0";
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <3000000>;
> -				regulator-max-microvolt = <3000000>;
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <3000000>;
> -				};
> -			};
> -
> -			vcc3v3_s3: vcc_lan: SWITCH_REG1 {
> -				regulator-name = "vcc3v3_s3";
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			vcc3v3_s0: SWITCH_REG2 {
> -				regulator-name = "vcc3v3_s0";
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -		};
> -	};
> -
> -	vdd_cpu_b: regulator@40 {
> -		compatible = "silergy,syr827";
> -		reg = <0x40>;
> -		fcs,suspend-voltage-selector = <1>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&vsel1_gpio>;
> -		regulator-name = "vdd_cpu_b";
> -		regulator-min-microvolt = <712500>;
> -		regulator-max-microvolt = <1500000>;
> -		regulator-ramp-delay = <1000>;
> -		regulator-always-on;
> -		regulator-boot-on;
> -		vin-supply = <&vcc5v0_sys>;
> -
> -		regulator-state-mem {
> -			regulator-off-in-suspend;
> -		};
> -	};
> -
> -	vdd_gpu: regulator@41 {
> -		compatible = "silergy,syr828";
> -		reg = <0x41>;
> -		fcs,suspend-voltage-selector = <1>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&vsel2_gpio>;
> -		regulator-name = "vdd_gpu";
> -		regulator-min-microvolt = <712500>;
> -		regulator-max-microvolt = <1500000>;
> -		regulator-ramp-delay = <1000>;
> -		regulator-always-on;
> -		regulator-boot-on;
> -		vin-supply = <&vcc5v0_sys>;
> -
> -		regulator-state-mem {
> -			regulator-off-in-suspend;
> -		};
> -	};
> +	model = "Pine64 RockPro64 v2.1";
> +	compatible = "pine64,rockpro64-v2.1", "pine64,rockpro64", "rockchip,rk3399";
>   };
>   
>   &i2c1 {
> -	i2c-scl-rising-time-ns = <300>;
> -	i2c-scl-falling-time-ns = <15>;
> -	status = "okay";
> -
>   	es8316: codec@11 {
>   		compatible = "everest,es8316";
>   		reg = <0x11>;
> @@ -491,291 +28,3 @@ es8316_p0_0: endpoint {
>   		};
>   	};
>   };
> -
> -&i2c3 {
> -	i2c-scl-rising-time-ns = <450>;
> -	i2c-scl-falling-time-ns = <15>;
> -	status = "okay";
> -};
> -
> -&i2c4 {
> -	i2c-scl-rising-time-ns = <600>;
> -	i2c-scl-falling-time-ns = <20>;
> -	status = "okay";
> -
> -	fusb0: typec-portc@22 {
> -		compatible = "fcs,fusb302";
> -		reg = <0x22>;
> -		interrupt-parent = <&gpio1>;
> -		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&fusb0_int>;
> -		vbus-supply = <&vcc5v0_typec>;
> -		status = "okay";
> -	};
> -};
> -
> -&i2s0 {
> -	rockchip,playback-channels = <8>;
> -	rockchip,capture-channels = <8>;
> -	status = "okay";
> -};
> -
> -&i2s1 {
> -	rockchip,playback-channels = <2>;
> -	rockchip,capture-channels = <2>;
> -	status = "okay";
> -
> -	i2s1_p0: port {
> -		i2s1_p0_0: endpoint {
> -			dai-format = "i2s";
> -			mclk-fs = <256>;
> -			remote-endpoint = <&es8316_p0_0>;
> -		};
> -	};
> -};
> -
> -&i2s2 {
> -	status = "okay";
> -};
> -
> -&io_domains {
> -	status = "okay";
> -
> -	bt656-supply = <&vcc1v8_dvp>;
> -	audio-supply = <&vcc_3v0>;
> -	sdmmc-supply = <&vcc_sdio>;
> -	gpio1830-supply = <&vcc_3v0>;
> -};
> -
> -&pcie0 {
> -	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
> -	num-lanes = <4>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie_perst>;
> -	vpcie12v-supply = <&vcc12v_dcin>;
> -	vpcie3v3-supply = <&vcc3v3_pcie>;
> -	status = "okay";
> -};
> -
> -&pcie_phy {
> -	status = "okay";
> -};
> -
> -&pmu_io_domains {
> -	pmu1830-supply = <&vcc_3v0>;
> -	status = "okay";
> -};
> -
> -&pinctrl {
> -	buttons {
> -		pwrbtn: pwrbtn {
> -			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
> -		};
> -	};
> -
> -	fusb302x {
> -		fusb0_int: fusb0-int {
> -			rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
> -		};
> -	};
> -
> -	leds {
> -		work_led_gpio: work_led-gpio {
> -			rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
> -		diy_led_gpio: diy_led-gpio {
> -			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
> -
> -	pcie {
> -		pcie_perst: pcie-perst {
> -			rockchip,pins = <2 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
> -		pcie_pwr_en: pcie-pwr-en {
> -			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
> -
> -	pmic {
> -		pmic_int_l: pmic-int-l {
> -			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
> -		};
> -
> -		vsel1_gpio: vsel1-gpio {
> -			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
> -		};
> -
> -		vsel2_gpio: vsel2-gpio {
> -			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
> -		};
> -	};
> -
> -	sdio-pwrseq {
> -		wifi_enable_h: wifi-enable-h {
> -			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
> -
> -	usb-typec {
> -		vcc5v0_typec_en: vcc5v0_typec_en {
> -			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
> -		};
> -	};
> -
> -	usb2 {
> -		vcc5v0_host_en: vcc5v0-host-en {
> -			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
> -};
> -
> -&pwm0 {
> -	status = "okay";
> -};
> -
> -&pwm1 {
> -	status = "okay";
> -};
> -
> -&pwm2 {
> -	status = "okay";
> -};
> -
> -&saradc {
> -	vref-supply = <&vcca1v8_s3>;
> -	status = "okay";
> -};
> -
> -&sdmmc {
> -	bus-width = <4>;
> -	cap-sd-highspeed;
> -	cd-gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
> -	disable-wp;
> -	max-frequency = <150000000>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
> -	status = "okay";
> -};
> -
> -&sdhci {
> -	bus-width = <8>;
> -	mmc-hs200-1_8v;
> -	non-removable;
> -	status = "okay";
> -};
> -
> -&spi1 {
> -	status = "okay";
> -
> -	flash@0 {
> -		compatible = "jedec,spi-nor";
> -		reg = <0>;
> -		spi-max-frequency = <10000000>;
> -	};
> -};
> -
> -&tcphy0 {
> -	status = "okay";
> -};
> -
> -&tcphy1 {
> -	status = "okay";
> -};
> -
> -&tsadc {
> -	/* tshut mode 0:CRU 1:GPIO */
> -	rockchip,hw-tshut-mode = <1>;
> -	/* tshut polarity 0:LOW 1:HIGH */
> -	rockchip,hw-tshut-polarity = <1>;
> -	status = "okay";
> -};
> -
> -&u2phy0 {
> -	status = "okay";
> -
> -	u2phy0_otg: otg-port {
> -		status = "okay";
> -	};
> -
> -	u2phy0_host: host-port {
> -		phy-supply = <&vcc5v0_host>;
> -		status = "okay";
> -	};
> -};
> -
> -&u2phy1 {
> -	status = "okay";
> -
> -	u2phy1_otg: otg-port {
> -		status = "okay";
> -	};
> -
> -	u2phy1_host: host-port {
> -		phy-supply = <&vcc5v0_host>;
> -		status = "okay";
> -	};
> -};
> -
> -&uart0 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&uart0_xfer &uart0_cts>;
> -	status = "okay";
> -};
> -
> -&uart2 {
> -	status = "okay";
> -};
> -
> -&usb_host0_ehci {
> -	status = "okay";
> -};
> -
> -&usb_host0_ohci {
> -	status = "okay";
> -};
> -
> -&usb_host1_ehci {
> -	status = "okay";
> -};
> -
> -&usb_host1_ohci {
> -	status = "okay";
> -};
> -
> -&usbdrd3_0 {
> -	status = "okay";
> -};
> -
> -&usbdrd_dwc3_0 {
> -	status = "okay";
> -	dr_mode = "otg";
> -};
> -
> -&usbdrd3_1 {
> -	status = "okay";
> -};
> -
> -&usbdrd_dwc3_1 {
> -	status = "okay";
> -	dr_mode = "host";
> -};
> -
> -&vopb {
> -	status = "okay";
> -};
> -
> -&vopb_mmu {
> -	status = "okay";
> -};
> -
> -&vopl {
> -	status = "okay";
> -};
> -
> -&vopl_mmu {
> -	status = "okay";
> -};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> new file mode 100644
> index 000000000000..183eda4ffb9c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> @@ -0,0 +1,763 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
> + */
> +
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/pwm/pwm.h>
> +#include "rk3399.dtsi"
> +#include "rk3399-opp.dtsi"
> +
> +/ {
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	clkin_gmac: external-gmac-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <125000000>;
> +		clock-output-names = "clkin_gmac";
> +		#clock-cells = <0>;
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		autorepeat;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pwrbtn>;
> +
> +		power {
> +			debounce-interval = <100>;
> +			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
> +			label = "GPIO Key Power";
> +			linux,code = <KEY_POWER>;
> +			wakeup-source;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&work_led_gpio>, <&diy_led_gpio>;
> +
> +		work-led {
> +			label = "work";
> +			default-state = "on";
> +			gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		diy-led {
> +			label = "diy";
> +			default-state = "off";
> +			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	fan: pwm-fan {
> +		compatible = "pwm-fan";
> +		#cooling-cells = <2>;
> +		fan-supply = <&vcc12v_dcin>;
> +		pwms = <&pwm1 0 50000 0>;
> +	};
> +
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rk808 1>;
> +		clock-names = "ext_clock";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_enable_h>;
> +
> +		/*
> +		 * On the module itself this is one of these (depending
> +		 * on the actual card populated):
> +		 * - SDIO_RESET_L_WL_REG_ON
> +		 * - PDN (power down when low)
> +		 */
> +		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	sound {
> +		compatible = "audio-graph-card";
> +		label = "rockchip,rk3399";
> +		dais = <&i2s1_p0>;
> +	};
> +
> +	vcc12v_dcin: vcc12v-dcin {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc12v_dcin";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +	};
> +
> +	/* switched by pmic_sleep */
> +	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc1v8_s3";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vcc_1v8>;
> +	};
> +
> +	vcc3v3_pcie: vcc3v3-pcie-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PD0 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pcie_pwr_en>;
> +		regulator-name = "vcc3v3_pcie";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&vcc12v_dcin>;
> +	};
> +
> +	vcc3v3_sys: vcc3v3-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	/* Actually 3 regulators (host0, 1, 2) controlled by the same gpio */
> +	vcc5v0_host: vcc5v0-host-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_host_en>;
> +		regulator-name = "vcc5v0_host";
> +		regulator-always-on;
> +		vin-supply = <&vcc5v0_usb>;
> +	};
> +
> +	vcc5v0_typec: vcc5v0-typec-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_typec_en>;
> +		regulator-name = "vcc5v0_typec";
> +		regulator-always-on;
> +		vin-supply = <&vcc5v0_usb>;
> +	};
> +
> +	vcc5v0_sys: vcc5v0-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc12v_dcin>;
> +	};
> +
> +	vcc5v0_usb: vcc5v0-usb {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_usb";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc12v_dcin>;
> +	};
> +
> +	vdd_log: vdd-log {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm2 0 25000 1>;
> +		regulator-name = "vdd_log";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <800000>;
> +		regulator-max-microvolt = <1700000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +};
> +
> +&cpu_l0 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_l1 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_l2 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_l3 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_b0 {
> +	cpu-supply = <&vdd_cpu_b>;
> +};
> +
> +&cpu_b1 {
> +	cpu-supply = <&vdd_cpu_b>;
> +};
> +
> +&emmc_phy {
> +	status = "okay";
> +};
> +
> +&gmac {
> +	assigned-clocks = <&cru SCLK_RMII_SRC>;
> +	assigned-clock-parents = <&clkin_gmac>;
> +	clock_in_out = "input";
> +	phy-supply = <&vcc_lan>;
> +	phy-mode = "rgmii";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&rgmii_pins>;
> +	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
> +	snps,reset-active-low;
> +	snps,reset-delays-us = <0 10000 50000>;
> +	tx_delay = <0x28>;
> +	rx_delay = <0x11>;
> +	status = "okay";
> +};
> +
> +&hdmi {
> +	ddc-i2c-bus = <&i2c3>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&hdmi_cec>;
> +	status = "okay";
> +};
> +
> +&hdmi_sound {
> +	status = "okay";
> +};
> +
> +&gpu {
> +	mali-supply = <&vdd_gpu>;
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	clock-frequency = <400000>;
> +	i2c-scl-rising-time-ns = <168>;
> +	i2c-scl-falling-time-ns = <4>;
> +	status = "okay";
> +
> +	rk808: pmic@1b {
> +		compatible = "rockchip,rk808";
> +		reg = <0x1b>;
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
> +		#clock-cells = <1>;
> +		clock-output-names = "xin32k", "rk808-clkout2";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_int_l>;
> +		rockchip,system-power-controller;
> +		wakeup-source;
> +
> +		vcc1-supply = <&vcc5v0_sys>;
> +		vcc2-supply = <&vcc5v0_sys>;
> +		vcc3-supply = <&vcc5v0_sys>;
> +		vcc4-supply = <&vcc5v0_sys>;
> +		vcc6-supply = <&vcc5v0_sys>;
> +		vcc7-supply = <&vcc5v0_sys>;
> +		vcc8-supply = <&vcc3v3_sys>;
> +		vcc9-supply = <&vcc5v0_sys>;
> +		vcc10-supply = <&vcc5v0_sys>;
> +		vcc11-supply = <&vcc5v0_sys>;
> +		vcc12-supply = <&vcc3v3_sys>;
> +		vddio-supply = <&vcca_1v8>;
> +
> +		regulators {
> +			vdd_center: DCDC_REG1 {
> +				regulator-name = "vdd_center";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <750000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdd_cpu_l: DCDC_REG2 {
> +				regulator-name = "vdd_cpu_l";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <750000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_ddr: DCDC_REG3 {
> +				regulator-name = "vcc_ddr";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc_1v8: DCDC_REG4 {
> +				regulator-name = "vcc_1v8";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vcc1v8_dvp: LDO_REG1 {
> +				regulator-name = "vcc1v8_dvp";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc3v0_touch: LDO_REG2 {
> +				regulator-name = "vcc3v0_touch";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcca_1v8: LDO_REG3 {
> +				regulator-name = "vcca_1v8";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vcc_sdio: LDO_REG4 {
> +				regulator-name = "vcc_sdio";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3000000>;
> +				};
> +			};
> +
> +			vcca3v0_codec: LDO_REG5 {
> +				regulator-name = "vcca3v0_codec";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_1v5: LDO_REG6 {
> +				regulator-name = "vcc_1v5";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1500000>;
> +				regulator-max-microvolt = <1500000>;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1500000>;
> +				};
> +			};
> +
> +			vcca1v8_codec: LDO_REG7 {
> +				regulator-name = "vcca1v8_codec";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_3v0: LDO_REG8 {
> +				regulator-name = "vcc_3v0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3000000>;
> +				};
> +			};
> +
> +			vcc3v3_s3: vcc_lan: SWITCH_REG1 {
> +				regulator-name = "vcc3v3_s3";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc3v3_s0: SWITCH_REG2 {
> +				regulator-name = "vcc3v3_s0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +		};
> +	};
> +
> +	vdd_cpu_b: regulator@40 {
> +		compatible = "silergy,syr827";
> +		reg = <0x40>;
> +		fcs,suspend-voltage-selector = <1>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vsel1_gpio>;
> +		regulator-name = "vdd_cpu_b";
> +		regulator-min-microvolt = <712500>;
> +		regulator-max-microvolt = <1500000>;
> +		regulator-ramp-delay = <1000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&vcc5v0_sys>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	vdd_gpu: regulator@41 {
> +		compatible = "silergy,syr828";
> +		reg = <0x41>;
> +		fcs,suspend-voltage-selector = <1>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vsel2_gpio>;
> +		regulator-name = "vdd_gpu";
> +		regulator-min-microvolt = <712500>;
> +		regulator-max-microvolt = <1500000>;
> +		regulator-ramp-delay = <1000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&vcc5v0_sys>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +};
> +
> +&i2c1 {
> +	i2c-scl-rising-time-ns = <300>;
> +	i2c-scl-falling-time-ns = <15>;
> +	status = "okay";
> +};
> +
> +&i2c3 {
> +	i2c-scl-rising-time-ns = <450>;
> +	i2c-scl-falling-time-ns = <15>;
> +	status = "okay";
> +};
> +
> +&i2c4 {
> +	i2c-scl-rising-time-ns = <600>;
> +	i2c-scl-falling-time-ns = <20>;
> +	status = "okay";
> +
> +	fusb0: typec-portc@22 {
> +		compatible = "fcs,fusb302";
> +		reg = <0x22>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&fusb0_int>;
> +		vbus-supply = <&vcc5v0_typec>;
> +		status = "okay";
> +	};
> +};
> +
> +&i2s0 {
> +	rockchip,playback-channels = <8>;
> +	rockchip,capture-channels = <8>;
> +	status = "okay";
> +};
> +
> +&i2s1 {
> +	rockchip,playback-channels = <2>;
> +	rockchip,capture-channels = <2>;
> +	status = "okay";
> +
> +	i2s1_p0: port {
> +		i2s1_p0_0: endpoint {
> +			dai-format = "i2s";
> +			mclk-fs = <256>;
> +			remote-endpoint = <&es8316_p0_0>;
> +		};
> +	};
> +};
> +
> +&i2s2 {
> +	status = "okay";
> +};
> +
> +&io_domains {
> +	status = "okay";
> +
> +	bt656-supply = <&vcc1v8_dvp>;
> +	audio-supply = <&vcc_3v0>;
> +	sdmmc-supply = <&vcc_sdio>;
> +	gpio1830-supply = <&vcc_3v0>;
> +};
> +
> +&pcie0 {
> +	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
> +	num-lanes = <4>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_perst>;
> +	vpcie12v-supply = <&vcc12v_dcin>;
> +	vpcie3v3-supply = <&vcc3v3_pcie>;
> +	status = "okay";
> +};
> +
> +&pcie_phy {
> +	status = "okay";
> +};
> +
> +&pmu_io_domains {
> +	pmu1830-supply = <&vcc_3v0>;
> +	status = "okay";
> +};
> +
> +&pinctrl {
> +	buttons {
> +		pwrbtn: pwrbtn {
> +			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	fusb302x {
> +		fusb0_int: fusb0-int {
> +			rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	leds {
> +		work_led_gpio: work_led-gpio {
> +			rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		diy_led_gpio: diy_led-gpio {
> +			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pcie {
> +		pcie_perst: pcie-perst {
> +			rockchip,pins = <2 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		pcie_pwr_en: pcie-pwr-en {
> +			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pmic {
> +		pmic_int_l: pmic-int-l {
> +			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		vsel1_gpio: vsel1-gpio {
> +			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +
> +		vsel2_gpio: vsel2-gpio {
> +			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +	};
> +
> +	sdio-pwrseq {
> +		wifi_enable_h: wifi-enable-h {
> +			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	usb-typec {
> +		vcc5v0_typec_en: vcc5v0_typec_en {
> +			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	usb2 {
> +		vcc5v0_host_en: vcc5v0-host-en {
> +			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +};
> +
> +&pwm0 {
> +	status = "okay";
> +};
> +
> +&pwm1 {
> +	status = "okay";
> +};
> +
> +&pwm2 {
> +	status = "okay";
> +};
> +
> +&saradc {
> +	vref-supply = <&vcca1v8_s3>;
> +	status = "okay";
> +};
> +
> +&sdmmc {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
> +	disable-wp;
> +	max-frequency = <150000000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
> +	status = "okay";
> +};
> +
> +&sdhci {
> +	bus-width = <8>;
> +	mmc-hs200-1_8v;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&spi1 {
> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-max-frequency = <10000000>;
> +	};
> +};
> +
> +&tcphy0 {
> +	status = "okay";
> +};
> +
> +&tcphy1 {
> +	status = "okay";
> +};
> +
> +&tsadc {
> +	/* tshut mode 0:CRU 1:GPIO */
> +	rockchip,hw-tshut-mode = <1>;
> +	/* tshut polarity 0:LOW 1:HIGH */
> +	rockchip,hw-tshut-polarity = <1>;
> +	status = "okay";
> +};
> +
> +&u2phy0 {
> +	status = "okay";
> +
> +	u2phy0_otg: otg-port {
> +		status = "okay";
> +	};
> +
> +	u2phy0_host: host-port {
> +		phy-supply = <&vcc5v0_host>;
> +		status = "okay";
> +	};
> +};
> +
> +&u2phy1 {
> +	status = "okay";
> +
> +	u2phy1_otg: otg-port {
> +		status = "okay";
> +	};
> +
> +	u2phy1_host: host-port {
> +		phy-supply = <&vcc5v0_host>;
> +		status = "okay";
> +	};
> +};
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_xfer &uart0_cts>;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> +
> +&usb_host0_ehci {
> +	status = "okay";
> +};
> +
> +&usb_host0_ohci {
> +	status = "okay";
> +};
> +
> +&usb_host1_ehci {
> +	status = "okay";
> +};
> +
> +&usb_host1_ohci {
> +	status = "okay";
> +};
> +
> +&usbdrd3_0 {
> +	status = "okay";
> +};
> +
> +&usbdrd_dwc3_0 {
> +	status = "okay";
> +	dr_mode = "otg";
> +};
> +
> +&usbdrd3_1 {
> +	status = "okay";
> +};
> +
> +&usbdrd_dwc3_1 {
> +	status = "okay";
> +	dr_mode = "host";
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
> +&vopl {
> +	status = "okay";
> +};
> +
> +&vopl_mmu {
> +	status = "okay";
> +};
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
