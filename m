Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F6AF4E62
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:42:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZgvuIwfPcM0TRuMaXkXZDbWpApkLMUFj5Qqf4cABuE=; b=joe4kmY2d/4gMb
	p5zGHa71jmYXxEwqJunw1dyjDIYyZljpVQ9LfKtp1GTf9tejtNRAthEDt4AIbLeedYFFLhxzCDrjw
	XJZZCYZubE9bMk8aIbxNL5elnkvEC8t0inNTnJhaiCmfm6eHQpfEwMxnN3jYtRszfcPJ/RtlF7o/J
	X7ut3dVh4FKOcCR+FrjhUx4oPRILRMDNhw3WSY8s+YzycElI4iSOZXHYr0LqjMNmGySBcqyJAOprG
	dWQ4HTAsth3xgJOm9ddy6kf/Dgkk9/TcmHSSgP8j3uLW3Cg/Fg1MIoCaibDP4Jh3h25byJnisMdCL
	yDNLh9z/xxNMMUfgtdyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5Si-0007Bv-VT; Fri, 08 Nov 2019 14:42:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5SU-0007BB-Jy; Fri, 08 Nov 2019 14:41:59 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iT5SP-0001g1-CL; Fri, 08 Nov 2019 15:41:49 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH v3] arm64: dts: rockchip: Split rk3399-roc-pc for with and
 without mezzanine board.
Date: Fri, 08 Nov 2019 15:41:48 +0100
Message-ID: <1628743.87kQKnQNn8@diego>
In-Reply-To: <7293c5f6-a07f-cf51-954f-92907879eea2@fivetechno.de>
References: <7293c5f6-a07f-cf51-954f-92907879eea2@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_064156_232017_42C466F9 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Markus,

Am Montag, 4. November 2019, 16:22:25 CET schrieb Markus Reichl:
> For rk3399-roc-pc is a mezzanine board available that carries M.2 and
> POE interfaces. Use it with a separate dts.
> 
> ---
> v3: Use enum in binding and full name in compatible string and file name.
> v2: Add new compatible string for roc-pc with mezzanine board.
> --
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     |   4 +-
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../dts/rockchip/rk3399-roc-pc-mezzanine.dts  |  72 ++
>  .../arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 757 +----------------
>  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 770 ++++++++++++++++++
>  5 files changed, 847 insertions(+), 757 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> 

> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> index 7e07dae33d0f..cd4195425309 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> @@ -4,764 +4,9 @@

This whole hunk fails to apply against my current branch for 5.5
which contain your other patches [0].

And the moved block is obviously so big that I can't really check
which part is somehow different, so I'd ask you to rebase this
patch accordingly, so that it applies again.

Thanks
Heiko

[0] https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/log/?h=v5.5-armsoc/dts64


>   */
>  
>  /dts-v1/;
> -#include <dt-bindings/input/linux-event-codes.h>
> -#include <dt-bindings/pwm/pwm.h>
> -#include "rk3399.dtsi"
> -#include "rk3399-opp.dtsi"
> +#include "rk3399-roc-pc.dtsi"
>  
>  / {
>  	model = "Firefly ROC-RK3399-PC Board";
>  	compatible = "firefly,roc-rk3399-pc", "rockchip,rk3399";
> -
> -	chosen {
> -		stdout-path = "serial2:1500000n8";
> -	};
> -
> -	backlight: backlight {
> -		compatible = "pwm-backlight";
> -		pwms = <&pwm0 0 25000 0>;
> -	};
> -
> -	clkin_gmac: external-gmac-clock {
> -		compatible = "fixed-clock";
> -		clock-frequency = <125000000>;
> -		clock-output-names = "clkin_gmac";
> -		#clock-cells = <0>;
> -	};
> -
> -	adc-keys {
> -		compatible = "adc-keys";
> -		io-channels = <&saradc 1>;
> -		io-channel-names = "buttons";
> -		keyup-threshold-microvolt = <1500000>;
> -		poll-interval = <100>;
> -
> -		recovery {
> -			label = "Recovery";
> -			linux,code = <KEY_VENDOR>;
> -			press-threshold-microvolt = <18000>;
> -		};
> -	};
> -
> -	gpio-keys {
> -		compatible = "gpio-keys";
> -		autorepeat;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&pwr_key_l>;
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
> -		pinctrl-0 = <&work_led_gpio>, <&diy_led_gpio>, <&yellow_led_gpio>;
> -
> -		work-led {
> -			label = "green:work";
> -			gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
> -			default-state = "on";
> -			linux,default-trigger = "heartbeat";
> -		};
> -
> -		diy-led {
> -			label = "red:diy";
> -			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
> -			default-state = "off";
> -			linux,default-trigger = "mmc1";
> -		};
> -
> -		yellow-led {
> -			label = "yellow:yellow-led";
> -			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> -			default-state = "off";
> -			linux,default-trigger = "mmc0";
> -		};
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
> -	vcc_vbus_typec0: vcc-vbus-typec0 {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vcc_vbus_typec0";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <5000000>;
> -		regulator-max-microvolt = <5000000>;
> -	};
> -
> -	/*
> -	 * should be placed inside mp8859, but not until mp8859 has
> -	 * its own dt-binding.
> -	 */
> -	dc_12v: mp8859-dcdc1 {
> -		compatible = "regulator-fixed";
> -		regulator-name = "dc_12v";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <12000000>;
> -		regulator-max-microvolt = <12000000>;
> -		vin-supply = <&vcc_vbus_typec0>;
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
> -	vcc3v3_sys: vcc3v3-sys {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vcc3v3_sys";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <3300000>;
> -		regulator-max-microvolt = <3300000>;
> -		vin-supply = <&dc_12v>;
> -	};
> -
> -	/* Actually 3 regulators (host0, 1, 2) controlled by the same gpio */
> -	vcc5v0_host: vcc5v0-host-regulator {
> -		compatible = "regulator-fixed";
> -		enable-active-high;
> -		gpio = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&vcc5v0_host_en &hub_rst>;
> -		regulator-name = "vcc5v0_host";
> -		regulator-always-on;
> -		vin-supply = <&vcc_sys>;
> -	};
> -
> -	vcc_vbus_typec1: vcc-vbus-typec1 {
> -		compatible = "regulator-fixed";
> -		enable-active-high;
> -		gpio = <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&vcc_vbus_typec1_en>;
> -		regulator-name = "vcc_vbus_typec1";
> -		regulator-always-on;
> -		vin-supply = <&vcc_sys>;
> -	};
> -
> -	vcc_sys: vcc-sys {
> -		compatible = "regulator-fixed";
> -		enable-active-high;
> -		gpio = <&gpio2 RK_PA6 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&vcc_sys_en>;
> -		regulator-name = "vcc_sys";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <5000000>;
> -		regulator-max-microvolt = <5000000>;
> -		vin-supply = <&dc_12v>;
> -	};
> -
> -	vdd_log: vdd-log {
> -		compatible = "pwm-regulator";
> -		pwms = <&pwm2 0 25000 1>;
> -		regulator-name = "vdd_log";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <800000>;
> -		regulator-max-microvolt = <1400000>;
> -		vin-supply = <&vcc3v3_sys>;
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
> -&i2c0 {
> -	clock-frequency = <400000>;
> -	i2c-scl-rising-time-ns = <168>;
> -	i2c-scl-falling-time-ns = <4>;
> -	status = "okay";
> -
> -	rk808: pmic@1b {
> -		compatible = "rockchip,rk808";
> -		reg = <0x1b>;
> -		interrupt-parent = <&gpio1>;
> -		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
> -		#clock-cells = <1>;
> -		clock-output-names = "xin32k", "rk808-clkout2";
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> -		wakeup-source;
> -
> -		vcc1-supply = <&vcc3v3_sys>;
> -		vcc2-supply = <&vcc3v3_sys>;
> -		vcc3-supply = <&vcc3v3_sys>;
> -		vcc4-supply = <&vcc3v3_sys>;
> -		vcc6-supply = <&vcc3v3_sys>;
> -		vcc7-supply = <&vcc3v3_sys>;
> -		vcc8-supply = <&vcc3v3_sys>;
> -		vcc9-supply = <&vcc3v3_sys>;
> -		vcc10-supply = <&vcc3v3_sys>;
> -		vcc11-supply = <&vcc3v3_sys>;
> -		vcc12-supply = <&vcc3v3_sys>;
> -		vcc13-supply = <&vcc3v3_sys>;
> -		vcc14-supply = <&vcc3v3_sys>;
> -		vddio-supply = <&vcc_3v0>;
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
> -			vcca1v8_codec: LDO_REG1 {
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
> -			vcc1v8_hdmi: LDO_REG2 {
> -				regulator-name = "vcc1v8_hdmi";
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <1800000>;
> -				regulator-max-microvolt = <1800000>;
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			vcc1v8_pmu: LDO_REG3 {
> -				regulator-name = "vcc1v8_pmu";
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
> -			vcca0v9_hdmi: LDO_REG7 {
> -				regulator-name = "vcca0v9_hdmi";
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <900000>;
> -				regulator-max-microvolt = <900000>;
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
> -		vin-supply = <&vcc3v3_sys>;
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
> -		vin-supply = <&vcc3v3_sys>;
> -
> -		regulator-state-mem {
> -			regulator-off-in-suspend;
> -		};
> -	};
> -};
> -
> -&i2c1 {
> -	i2c-scl-rising-time-ns = <300>;
> -	i2c-scl-falling-time-ns = <15>;
> -	status = "okay";
> -};
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
> -	fusb1: usb-typec@22 {
> -		compatible = "fcs,fusb302";
> -		reg = <0x22>;
> -		interrupt-parent = <&gpio1>;
> -		interrupts = <1 IRQ_TYPE_LEVEL_LOW>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&fusb1_int>;
> -		vbus-supply = <&vcc_vbus_typec1>;
> -		status = "okay";
> -	};
> -};
> -
> -&i2c7 {
> -	i2c-scl-rising-time-ns = <600>;
> -	i2c-scl-falling-time-ns = <20>;
> -	status = "okay";
> -
> -	fusb0: usb-typec@22 {
> -		compatible = "fcs,fusb302";
> -		reg = <0x22>;
> -		interrupt-parent = <&gpio1>;
> -		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&fusb0_int>;
> -		vbus-supply = <&vcc_vbus_typec0>;
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
> -};
> -
> -&i2s2 {
> -	status = "okay";
> -};
> -
> -&io_domains {
> -	audio-supply = <&vcca1v8_codec>;
> -	bt656-supply = <&vcc_3v0>;
> -	gpio1830-supply = <&vcc_3v0>;
> -	sdmmc-supply = <&vcc_sdio>;
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
> -		pwr_key_l: pwr-key-l {
> -			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
> -		};
> -	};
> -
> -	lcd-panel {
> -		lcd_panel_reset: lcd-panel-reset {
> -			rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
> -		};
> -	};
> -
> -	leds {
> -		diy_led_gpio: diy_led-gpio {
> -			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
> -		work_led_gpio: work_led-gpio {
> -			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
> -		yellow_led_gpio: yellow_led-gpio {
> -			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
> -
> -	pmic {
> -		vsel1_gpio: vsel1-gpio {
> -			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
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
> -	pmic {
> -		pmic_int_l: pmic-int-l {
> -			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
> -		};
> -	};
> -
> -	usb2 {
> -		vcc5v0_host_en: vcc5v0-host-en {
> -			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
> -		vcc_sys_en: vcc-sys-en {
> -			rockchip,pins = <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
> -		hub_rst: hub-rst {
> -			rockchip,pins = <2 RK_PA4 RK_FUNC_GPIO &pcfg_output_high>;
> -		};
> -	};
> -
> -	usb-typec {
> -		vcc_vbus_typec1_en: vcc-vbus-typec1-en {
> -			rockchip,pins = <1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
> -
> -	fusb30x {
> -		fusb0_int: fusb0-int {
> -			rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
> -		};
> -
> -		fusb1_int: fusb1-int {
> -			rockchip,pins = <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>;
> -		};
> -	};
> -};
> -
> -&pwm0 {
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
> -	cap-mmc-highspeed;
> -	cap-sd-highspeed;
> -	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
> -	disable-wp;
> -	max-frequency = <150000000>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
> -	status = "okay";
> -};
> -
> -&sdhci {
> -	bus-width = <8>;
> -	mmc-hs400-1_8v;
> -	mmc-hs400-enhanced-strobe;
> -	non-removable;
> -	status = "okay";
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
> -		phy-supply = <&vcc_vbus_typec0>;
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
> -		phy-supply = <&vcc_vbus_typec1>;
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
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> new file mode 100644
> index 000000000000..287f97488f65
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> @@ -0,0 +1,770 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2017 T-Chip Intelligent Technology Co., Ltd
> + */
> +
> +/dts-v1/;
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/pwm/pwm.h>
> +#include "rk3399.dtsi"
> +#include "rk3399-opp.dtsi"
> +
> +/ {
> +	model = "Firefly ROC-RK3399-PC Board";
> +	compatible = "firefly,roc-rk3399-pc", "rockchip,rk3399";
> +
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm0 0 25000 0>;
> +	};
> +
> +	clkin_gmac: external-gmac-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <125000000>;
> +		clock-output-names = "clkin_gmac";
> +		#clock-cells = <0>;
> +	};
> +
> +	adc-keys {
> +		compatible = "adc-keys";
> +		io-channels = <&saradc 1>;
> +		io-channel-names = "buttons";
> +		keyup-threshold-microvolt = <1500000>;
> +		poll-interval = <100>;
> +
> +		recovery {
> +			label = "Recovery";
> +			linux,code = <KEY_VENDOR>;
> +			press-threshold-microvolt = <18000>;
> +		};
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		autorepeat;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pwr_key_l>;
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
> +		pinctrl-0 = <&work_led_gpio>, <&diy_led_gpio>, <&yellow_led_gpio>;
> +
> +		work-led {
> +			label = "green:work";
> +			gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
> +			default-state = "on";
> +			linux,default-trigger = "heartbeat";
> +		};
> +
> +		diy-led {
> +			label = "red:diy";
> +			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";
> +			linux,default-trigger = "mmc1";
> +		};
> +
> +		yellow-led {
> +			label = "yellow:yellow-led";
> +			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";
> +			linux,default-trigger = "mmc0";
> +		};
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
> +	vcc_vbus_typec0: vcc-vbus-typec0 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_vbus_typec0";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
> +	/*
> +	 * should be placed inside mp8859, but not until mp8859 has
> +	 * its own dt-binding.
> +	 */
> +	dc_12v: mp8859-dcdc1 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "dc_12v";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +		vin-supply = <&vcc_vbus_typec0>;
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
> +	vcc3v3_sys: vcc3v3-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&dc_12v>;
> +	};
> +
> +	/* Actually 3 regulators (host0, 1, 2) controlled by the same gpio */
> +	vcc5v0_host: vcc5v0-host-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_host_en &hub_rst>;
> +		regulator-name = "vcc5v0_host";
> +		regulator-always-on;
> +		vin-supply = <&vcc_sys>;
> +	};
> +
> +	vcc_vbus_typec1: vcc-vbus-typec1 {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc_vbus_typec1_en>;
> +		regulator-name = "vcc_vbus_typec1";
> +		regulator-always-on;
> +		vin-supply = <&vcc_sys>;
> +	};
> +
> +	vcc_sys: vcc-sys {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio2 RK_PA6 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc_sys_en>;
> +		regulator-name = "vcc_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&dc_12v>;
> +	};
> +
> +	vdd_log: vdd-log {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm2 0 25000 1>;
> +		regulator-name = "vdd_log";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <800000>;
> +		regulator-max-microvolt = <1400000>;
> +		vin-supply = <&vcc3v3_sys>;
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
> +&gpu {
> +	mali-supply = <&vdd_gpu>;
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
> +&i2c0 {
> +	clock-frequency = <400000>;
> +	i2c-scl-rising-time-ns = <168>;
> +	i2c-scl-falling-time-ns = <4>;
> +	status = "okay";
> +
> +	rk808: pmic@1b {
> +		compatible = "rockchip,rk808";
> +		reg = <0x1b>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
> +		#clock-cells = <1>;
> +		clock-output-names = "xin32k", "rk808-clkout2";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_int_l>;
> +		rockchip,system-power-controller;
> +		wakeup-source;
> +
> +		vcc1-supply = <&vcc3v3_sys>;
> +		vcc2-supply = <&vcc3v3_sys>;
> +		vcc3-supply = <&vcc3v3_sys>;
> +		vcc4-supply = <&vcc3v3_sys>;
> +		vcc6-supply = <&vcc3v3_sys>;
> +		vcc7-supply = <&vcc3v3_sys>;
> +		vcc8-supply = <&vcc3v3_sys>;
> +		vcc9-supply = <&vcc3v3_sys>;
> +		vcc10-supply = <&vcc3v3_sys>;
> +		vcc11-supply = <&vcc3v3_sys>;
> +		vcc12-supply = <&vcc3v3_sys>;
> +		vcc13-supply = <&vcc3v3_sys>;
> +		vcc14-supply = <&vcc3v3_sys>;
> +		vddio-supply = <&vcc_3v0>;
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
> +			vcca1v8_codec: LDO_REG1 {
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
> +			vcc1v8_hdmi: LDO_REG2 {
> +				regulator-name = "vcc1v8_hdmi";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc1v8_pmu: LDO_REG3 {
> +				regulator-name = "vcc1v8_pmu";
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
> +			vcca0v9_hdmi: LDO_REG7 {
> +				regulator-name = "vcca0v9_hdmi";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
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
> +		vin-supply = <&vcc3v3_sys>;
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
> +		vin-supply = <&vcc3v3_sys>;
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
> +	fusb1: usb-typec@22 {
> +		compatible = "fcs,fusb302";
> +		reg = <0x22>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <1 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&fusb1_int>;
> +		vbus-supply = <&vcc_vbus_typec1>;
> +		status = "okay";
> +	};
> +};
> +
> +&i2c7 {
> +	i2c-scl-rising-time-ns = <600>;
> +	i2c-scl-falling-time-ns = <20>;
> +	status = "okay";
> +
> +	fusb0: usb-typec@22 {
> +		compatible = "fcs,fusb302";
> +		reg = <0x22>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&fusb0_int>;
> +		vbus-supply = <&vcc_vbus_typec0>;
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
> +};
> +
> +&i2s2 {
> +	status = "okay";
> +};
> +
> +&io_domains {
> +	audio-supply = <&vcca1v8_codec>;
> +	bt656-supply = <&vcc_3v0>;
> +	gpio1830-supply = <&vcc_3v0>;
> +	sdmmc-supply = <&vcc_sdio>;
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
> +		pwr_key_l: pwr-key-l {
> +			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	lcd-panel {
> +		lcd_panel_reset: lcd-panel-reset {
> +			rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	leds {
> +		diy_led_gpio: diy_led-gpio {
> +			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		work_led_gpio: work_led-gpio {
> +			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		yellow_led_gpio: yellow_led-gpio {
> +			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pmic {
> +		vsel1_gpio: vsel1-gpio {
> +			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
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
> +	pmic {
> +		pmic_int_l: pmic-int-l {
> +			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	usb2 {
> +		vcc5v0_host_en: vcc5v0-host-en {
> +			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		vcc_sys_en: vcc-sys-en {
> +			rockchip,pins = <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		hub_rst: hub-rst {
> +			rockchip,pins = <2 RK_PA4 RK_FUNC_GPIO &pcfg_output_high>;
> +		};
> +	};
> +
> +	usb-typec {
> +		vcc_vbus_typec1_en: vcc-vbus-typec1-en {
> +			rockchip,pins = <1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	fusb30x {
> +		fusb0_int: fusb0-int {
> +			rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		fusb1_int: fusb1-int {
> +			rockchip,pins = <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +};
> +
> +&pwm0 {
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
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
> +	disable-wp;
> +	max-frequency = <150000000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
> +	status = "okay";
> +};
> +
> +&sdhci {
> +	bus-width = <8>;
> +	mmc-hs400-1_8v;
> +	mmc-hs400-enhanced-strobe;
> +	non-removable;
> +	status = "okay";
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
> +		phy-supply = <&vcc_vbus_typec0>;
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
> +		phy-supply = <&vcc_vbus_typec1>;
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
