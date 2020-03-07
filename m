Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FC417CE73
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 14:48:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SutqmXu0lv88WMZU/dRz2KWfWUHKHASNWAXwwG/AGjM=; b=steyUvVDHeHcld
	8siPARjJekalNhQEZyEyX6RuDNHC1Zg9jNpEzXX28xDIus0yvpIXeQyvuUGKLOuIztT5UPoCtspgP
	LjVlXePtS7qdTQfgnQ21s7uygioazpBP3dvqQ9Jx5jGGPzxbT3kk9PqKGQIFdainFSe+FYjBRwubA
	4y5sO7L4pDF2w26g/n2PMYY5lGmIcsXYM4V1hiAygMgHgxjaDHM61c4fstbo2yhrKlSLRXIllXTx+
	nPkh085jmtkjt4o2wgl9yzcPAX+yM65oWk6cEU+BlB7tql50aPw9qzC3WrmkHwC9M6PykaNAJmVzU
	eqOUtMruTMZyniL+3aLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAZoG-0000kf-Nk; Sat, 07 Mar 2020 13:48:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAZo6-0000jP-Jz; Sat, 07 Mar 2020 13:48:02 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jAZnl-0006a4-U4; Sat, 07 Mar 2020 14:47:37 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add Odroid Advance Go
Date: Sat, 07 Mar 2020 14:47:37 +0100
Message-ID: <1813727.zy6ATufqe5@diego>
In-Reply-To: <59bdf2c1-79cf-2c45-263e-80a9358c7fdd@gmail.com>
References: <20200306210922.172346-3-heiko@sntech.de>
 <59bdf2c1-79cf-2c45-263e-80a9358c7fdd@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_054758_964425_03EA82D8 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, kever.yang@rock-chips.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Johan,

Am Samstag, 7. M=E4rz 2020, 09:36:19 CET schrieb Johan Jonker:
> The 'heartbeat' led seems to need some changes. The rest is inherited
> from px30.dtsi I think. How do you deal with all the compatible
> properties names that are normally SoC specific?

The rk3326 really is just a px30 with the little vop deactivated.
So I really don't want to make "much fuss" over that ;-)

Previous iterations where the arm32 px3/px3se/etc which essentially
also just copied an existing soc and added some industrial voodoo
to the chip itself (temperature range or whatever).


And thanks for making sure the details are right below. I'll do a
v2 with these things corrected.

Thanks
Heiko


> Also include all mail lists found with:
> ./scripts/get_maintainer.pl --nogit-fallback --nogit
> =

> linux-kernel@vger.kernel.org
> =

>   DTC     arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dtb
>   DTC     arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dt.yaml
>   CHECK   arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dt.yaml
> arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dt.yaml: tsadc:
> tsadc-otp-gpio: {'rockchip,pins': [[0, 6, 0, 123]], 'phandle': [[90]]}
> is not of type 'array'
> arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dt.yaml: usb@ff340000:
> 'clock-names', 'power-domains' do not match any of the regexes:
> 'pinctrl-[0-9]+'
> arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dt.yaml: usb@ff300000:
> 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'
> arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dt.yaml: usb@ff350000:
> 'clock-names', 'power-domains' do not match any of the regexes:
> 'pinctrl-[0-9]+'
> arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dt.yaml: gpio-leds:
> 'heartbeat' does not match any of the regexes: '(^led-[0-9a-f]$|led)',
> 'pinctrl-[0-9]+'
> arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dt.yaml: usb2-phy@100:
> '#phy-cells' is a required property
> =

> > From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > =

> > The Odroid Advance Go is a handheld based on Rockchip's rk3326 soc
> > with a DSI display and some handheld controls including an analog
> > joystick connected to the saradc.
> > =

> > Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 544 ++++++++++++++++++
> >  2 files changed, 545 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> > =

> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dt=
s/rockchip/Makefile
> > index af1e1c3707d0..86c38467d487 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -6,6 +6,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D px30-copperhead-ltk101=
b4029w.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D px30-evb.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3308-evb.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3308-roc-cc.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3326-odroid-go2.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3328-a1.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3328-evb.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3328-rock64.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/=
arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> > new file mode 100644
> > index 000000000000..a16f4a0d1d4d
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> > @@ -0,0 +1,544 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2019 Hardkernel Co., Ltd
> > + * Copyright (c) 2020 Theobroma Systems Design und Consulting GmbH
> > + */
> > +
> > +/dts-v1/;
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/input.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include "rk3326.dtsi"
> > +
> > +/ {
> > +	model =3D "ODROID-GO Advance";
> > +	compatible =3D "hardkernel,rk3326-odroid-go2", "rockchip,rk3326";
> > +
> > +	chosen {
> > +		stdout-path =3D "serial2:115200n8";
> > +	};
> > +
> > +	gpio-keys {
> > +		compatible =3D "gpio-keys";
> > +		pinctrl-names =3D "default";
> > +		pinctrl-0 =3D <&btn_pins>;
> > +
> > +		/*
> > +		 *      *** ODROIDGO2-Advance Switch layoout ***
> > +		 * |------------------------------------------------|
> > +		 * | sw15                                      sw16 |
> > +		 * |------------------------------------------------|
> > +		 * |     sw1      |-------------------|      sw8    |
> > +		 * |  sw3   sw4   |                   |   sw7   sw5 |
> > +		 * |     sw2      |    LCD Display    |      sw6    |
> > +		 * |              |                   |             |
> > +		 * |              |-------------------|             |
> > +		 * |         sw9 sw10   sw11 sw12   sw13 sw14       |
> > +		 * |------------------------------------------------|
> > +		 */
> > +
> > +		sw1 {
> > +			gpios =3D <&gpio1 RK_PB4 GPIO_ACTIVE_LOW>;
> > +			label =3D "DPAD-UP";
> > +			linux,code =3D <BTN_DPAD_UP>;
> > +		};
> > +		sw2 {
> > +			gpios =3D <&gpio1 RK_PB5 GPIO_ACTIVE_LOW>;
> > +			label =3D "DPAD-DOWN";
> > +			linux,code =3D <BTN_DPAD_DOWN>;
> > +		};
> > +		sw3 {
> > +			gpios =3D <&gpio1 RK_PB6 GPIO_ACTIVE_LOW>;
> > +			label =3D "DPAD-LEFT";
> > +			linux,code =3D <BTN_DPAD_LEFT>;
> > +		};
> > +		sw4 {
> > +			gpios =3D <&gpio1 RK_PB7 GPIO_ACTIVE_LOW>;
> > +			label =3D "DPAD-RIGHT";
> > +			linux,code =3D <BTN_DPAD_RIGHT>;
> > +		};
> > +		sw5 {
> > +			gpios =3D <&gpio1 RK_PA2 GPIO_ACTIVE_LOW>;
> > +			label =3D "BTN-A";
> > +			linux,code =3D <BTN_EAST>;
> > +		};
> > +		sw6 {
> > +			gpios =3D <&gpio1 RK_PA5 GPIO_ACTIVE_LOW>;
> > +			label =3D "BTN-B";
> > +			linux,code =3D <BTN_SOUTH>;
> > +		};
> > +		sw7 {
> > +			gpios =3D <&gpio1 RK_PA6 GPIO_ACTIVE_LOW>;
> > +			label =3D "BTN-Y";
> > +			linux,code =3D <BTN_WEST>;
> > +		};
> > +		sw8 {
> > +			gpios =3D <&gpio1 RK_PA7 GPIO_ACTIVE_LOW>;
> > +			label =3D "BTN-X";
> > +			linux,code =3D <BTN_NORTH>;
> > +		};
> > +		sw9 {
> > +			gpios =3D <&gpio2 RK_PA0 GPIO_ACTIVE_LOW>;
> > +			label =3D "F1";
> > +			linux,code =3D <BTN_TRIGGER_HAPPY1>;
> > +		};
> > +		sw10 {
> > +			gpios =3D <&gpio2 RK_PA1 GPIO_ACTIVE_LOW>;
> > +			label =3D "F2";
> > +			linux,code =3D <BTN_TRIGGER_HAPPY2>;
> > +		};
> > +		sw11 {
> > +			gpios =3D <&gpio2 RK_PA2 GPIO_ACTIVE_LOW>;
> > +			label =3D "F3";
> > +			linux,code =3D <BTN_TRIGGER_HAPPY3>;
> > +		};
> > +		sw12 {
> > +			gpios =3D <&gpio2 RK_PA3 GPIO_ACTIVE_LOW>;
> > +			label =3D "F4";
> > +			linux,code =3D <BTN_TRIGGER_HAPPY4>;
> > +		};
> > +		sw13 {
> > +			gpios =3D <&gpio2 RK_PA4 GPIO_ACTIVE_LOW>;
> > +			label =3D "F5";
> > +			linux,code =3D <BTN_TRIGGER_HAPPY5>;
> > +		};
> > +		sw14 {
> > +			gpios =3D <&gpio2 RK_PA5 GPIO_ACTIVE_LOW>;
> > +			label =3D "F6";
> > +			linux,code =3D <BTN_TRIGGER_HAPPY6>;
> > +		};
> > +		sw15 {
> > +			gpios =3D <&gpio2 RK_PA6 GPIO_ACTIVE_LOW>;
> > +			label =3D "TOP-LEFT";
> > +			linux,code =3D <BTN_TL>;
> > +		};
> > +		sw16 {
> > +			gpios =3D <&gpio2 RK_PA7 GPIO_ACTIVE_LOW>;
> > +			label =3D "TOP-RIGHT";
> > +			linux,code =3D <BTN_TR>;
> > +		};
> > +	};
> > +
> > +	leds: gpio-leds {
> > +		compatible =3D "gpio-leds";
> > +		pinctrl-names =3D "led_pins";
> > +		pinctrl-0 =3D <&led_pins>;
> > +
> > +		/* Blue LED : GPIO0_C1 */
> > +		heartbeat {
> > +			label =3D "blue:heartbeat";
> > +			gpios =3D <&gpio0 RK_PC1 GPIO_ACTIVE_HIGH>;
> > +			linux,default-trigger =3D "heartbeat";
> > +		};
> > +	};
> > +
> =

> > +	backlight: backlight {
> > +		compatible =3D "pwm-backlight";
> > +		power-supply =3D <&vcc_bl>;
> > +		pwms =3D <&pwm1 0 25000 0>;
> > +	};
> =

> sort nodenames
> =

> > +
> > +	vccsys: vccsys {
> > +		compatible =3D "regulator-fixed";
> > +		regulator-name =3D "vcc3v8_sys";
> > +		regulator-always-on;
> > +		regulator-min-microvolt =3D <3800000>;
> > +		regulator-max-microvolt =3D <3800000>;
> > +	};
> > +
> > +	vcc_host: vcc_host {
> > +		compatible =3D "regulator-fixed";
> > +		regulator-name =3D "vcc_host";
> > +		regulator-min-microvolt =3D <5000000>;
> > +		regulator-max-microvolt =3D <5000000>;
> > +
> > +		gpio =3D <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
> > +		enable-active-high;
> > +		regulator-always-on;
> > +		vin-supply =3D <&vccsys>;
> > +	};
> > +};
> > +
> > +&cpu0 {
> > +	cpu-supply =3D <&vdd_arm>;
> > +};
> > +
> > +&cpu1 {
> > +	cpu-supply =3D <&vdd_arm>;
> > +};
> > +
> > +&cpu2 {
> > +	cpu-supply =3D <&vdd_arm>;
> > +};
> > +
> > +&cpu3 {
> > +	cpu-supply =3D <&vdd_arm>;
> > +};
> > +
> > +&cru {
> > +	assigned-clocks =3D <&cru PLL_NPLL>,
> > +		<&cru ACLK_BUS_PRE>, <&cru ACLK_PERI_PRE>,
> > +		<&cru HCLK_BUS_PRE>, <&cru HCLK_PERI_PRE>,
> > +		<&cru PCLK_BUS_PRE>, <&cru SCLK_GPU>,
> > +		<&cru PLL_CPLL>;
> > +
> > +	assigned-clock-rates =3D <1188000000>,
> > +		<200000000>, <200000000>,
> > +		<150000000>, <150000000>,
> > +		<100000000>, <200000000>,
> > +		<17000000>;
> > +};
> > +
> > +&display_subsystem {
> > +	status =3D "okay";
> > +};
> > +
> > +&dsi {
> > +	status =3D "okay";
> > +
> > +	ports {
> > +		mipi_out: port@1 {
> > +			reg =3D <1>;
> > +
> > +			mipi_out_panel: endpoint {
> > +				remote-endpoint =3D <&mipi_in_panel>;
> > +			};
> > +		};
> > +	};
> > +
> > +	panel@0 {
> > +		compatible =3D "elida,kd35t133";
> > +		reg =3D <0>;
> > +		backlight =3D <&backlight>;
> > +		iovcc-supply =3D <&vcc_lcd>;
> > +		reset-gpios =3D <&gpio3 RK_PC0 GPIO_ACTIVE_LOW>;
> > +		vdd-supply =3D <&vcc_lcd>;
> > +
> > +		port {
> > +			mipi_in_panel: endpoint {
> > +				remote-endpoint =3D <&mipi_out_panel>;
> > +			};
> > +		};
> > +	};
> > +};
> > +
> > +&dsi_dphy {
> > +	status =3D "okay";
> > +};
> > +
> > +&gpu {
> > +	mali-supply =3D <&vdd_logic>;
> > +	status =3D "okay";
> > +};
> > +
> > +&i2c0 {
> =

> > +	status =3D "okay";
> =

> status below
> =

> > +	clock-frequency =3D <400000>;
> =

> > +	i2c-scl-rising-time-ns =3D <280>;
> > +	i2c-scl-falling-time-ns =3D <16>;
> =

> sort
> =

> > +
> > +	rk817: pmic@20 {
> > +		compatible =3D "rockchip,rk817";
> > +		reg =3D <0x20>;
> > +		interrupt-parent =3D <&gpio0>;
> > +		interrupts =3D <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
> > +		pinctrl-names =3D "default";
> > +		pinctrl-0 =3D <&pmic_int>;
> > +		rockchip,system-power-controller;
> > +		wakeup-source;
> > +		#clock-cells =3D <1>;
> > +		clock-output-names =3D "rk808-clkout1", "xin32k";
> > +
> > +		vcc1-supply =3D <&vccsys>;
> > +		vcc2-supply =3D <&vccsys>;
> > +		vcc3-supply =3D <&vccsys>;
> > +		vcc4-supply =3D <&vccsys>;
> > +		vcc5-supply =3D <&vccsys>;
> > +		vcc6-supply =3D <&vccsys>;
> > +		vcc7-supply =3D <&vccsys>;
> > +
> > +		regulators {
> > +			vdd_logic: DCDC_REG1 {
> > +				regulator-name =3D "vdd_logic";
> > +				regulator-min-microvolt =3D <950000>;
> > +				regulator-max-microvolt =3D <1150000>;
> > +				regulator-ramp-delay =3D <6001>;
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt =3D <950000>;
> > +				};
> > +			};
> > +
> > +			vdd_arm: DCDC_REG2 {
> > +				regulator-name =3D "vdd_arm";
> > +				regulator-min-microvolt =3D <950000>;
> > +				regulator-max-microvolt =3D <1350000>;
> > +				regulator-ramp-delay =3D <6001>;
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +					regulator-suspend-microvolt =3D <950000>;
> > +				};
> > +			};
> > +
> > +			vcc_ddr: DCDC_REG3 {
> > +				regulator-name =3D "vcc_ddr";
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +				};
> > +			};
> > +
> > +			vcc_3v3: DCDC_REG4 {
> > +				regulator-name =3D "vcc_3v3";
> > +				regulator-min-microvolt =3D <3300000>;
> > +				regulator-max-microvolt =3D <3300000>;
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +					regulator-suspend-microvolt =3D <3300000>;
> > +				};
> > +			};
> > +
> > +			vcc_1v8: LDO_REG2 {
> > +				regulator-name =3D "vcc_1v8";
> > +				regulator-min-microvolt =3D <1800000>;
> > +				regulator-max-microvolt =3D <1800000>;
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt =3D <1800000>;
> > +				};
> > +			};
> > +
> > +			vdd_1v0: LDO_REG3 {
> > +				regulator-name =3D "vdd_1v0";
> > +				regulator-min-microvolt =3D <1000000>;
> > +				regulator-max-microvolt =3D <1000000>;
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt =3D <1000000>;
> > +				};
> > +			};
> > +
> > +			vcc3v3_pmu: LDO_REG4 {
> > +				regulator-name =3D "vcc3v3_pmu";
> > +				regulator-min-microvolt =3D <3300000>;
> > +				regulator-max-microvolt =3D <3300000>;
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt =3D <3300000>;
> > +				};
> > +			};
> > +
> > +			vccio_sd: LDO_REG5 {
> > +				regulator-name =3D "vccio_sd";
> > +				regulator-min-microvolt =3D <1800000>;
> > +				regulator-max-microvolt =3D <3300000>;
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt =3D <3300000>;
> > +				};
> > +			};
> > +
> > +			vcc_sd: LDO_REG6 {
> > +				regulator-name =3D "vcc_sd";
> > +				regulator-min-microvolt =3D <3300000>;
> > +				regulator-max-microvolt =3D <3300000>;
> > +				regulator-boot-on;
> > +
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt =3D <3300000>;
> > +				};
> > +			};
> > +
> > +			vcc_bl: LDO_REG7 {
> > +				regulator-name =3D "vcc_bl";
> > +				regulator-min-microvolt =3D <3300000>;
> > +				regulator-max-microvolt =3D <3300000>;
> > +
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +					regulator-suspend-microvolt =3D <3300000>;
> > +				};
> > +			};
> > +
> > +			vcc_lcd: LDO_REG8 {
> > +				regulator-name =3D "vcc_lcd";
> > +				regulator-min-microvolt =3D <2800000>;
> > +				regulator-max-microvolt =3D <2800000>;
> > +
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +					regulator-suspend-microvolt =3D <2800000>;
> > +				};
> > +			};
> > +
> > +			vcc_cam: LDO_REG9 {
> > +				regulator-name =3D "vcc_cam";
> > +				regulator-min-microvolt =3D <3000000>;
> > +				regulator-max-microvolt =3D <3000000>;
> > +
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +					regulator-suspend-microvolt =3D <3000000>;
> > +				};
> > +			};
> > +		};
> > +	};
> > +};
> > +
> > +/* EXT Header(P2) : 7(SCL:GPIO0.C2), 8(SDA:GPIO0.C3) */
> > +&i2c1 {
> =

> > +	status =3D "okay";
> =

> status below
> =

> > +	clock-frequency =3D <400000>;
> > +};
> > +
> > +/* I2S 1 Channel Used */
> > +&i2s1_2ch {
> =

> > +	status =3D "okay";
> =

> status below
> =

> > +	#sound-dai-cells =3D <0>;
> > +};
> > +
> > +&io_domains {
> > +	vccio1-supply =3D <&vcc_3v3>;
> > +	vccio2-supply =3D <&vccio_sd>;
> > +	vccio3-supply =3D <&vcc_3v3>;
> > +	vccio4-supply =3D <&vcc_3v3>;
> > +	vccio5-supply =3D <&vcc_3v3>;
> > +	vccio6-supply =3D <&vcc_3v3>;
> > +	status =3D "okay";
> > +};
> > +
> > +&pmu_io_domains {
> > +	pmuio1-supply =3D <&vcc3v3_pmu>;
> > +	pmuio2-supply =3D <&vcc3v3_pmu>;
> > +	status =3D "okay";
> > +};
> > +
> > +&pwm1 {
> > +	status =3D "okay";
> > +};
> > +
> > +&saradc {
> > +	vref-supply =3D <&vcc_1v8>;
> > +	status =3D "okay";
> > +};
> > +
> > +&sdmmc {
> > +	bus-width =3D <4>;
> > +	cap-sd-highspeed;
> =

> > +	card-detect-delay =3D <800>;
> =

> Other dts use 200. Why we need 800?
> =

> > +	cd-gpios =3D <&gpio0 RK_PA3 GPIO_ACTIVE_LOW>;
> > +	sd-uhs-sdr12;
> > +	sd-uhs-sdr25;
> > +	sd-uhs-sdr50;
> > +	sd-uhs-sdr104;
> > +	vmmc-supply =3D <&vcc_sd>;
> > +	vqmmc-supply =3D <&vccio_sd>;
> > +	status =3D "okay";
> > +};
> > +
> > +&tsadc {
> > +	pinctrl-names =3D "gpio", "otpout";
> > +	pinctrl-0 =3D <&tsadc_otp_gpio>;
> > +	pinctrl-1 =3D <&tsadc_otp_out>;
> > +	status =3D "okay";
> > +};
> > +
> > +&u2phy {
> > +	status =3D "okay";
> > +
> > +	u2phy_host: host-port {
> > +		status =3D "okay";
> > +	};
> > +
> > +	u2phy_otg: otg-port {
> > +		status =3D "disabled";
> > +	};
> > +};
> > +
> > +&usb20_otg {
> > +	status =3D "okay";
> > +};
> > +
> > +&uart1 {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&uart1_xfer &uart1_cts>;
> > +	status =3D "okay";
> > +};
> > +
> > +&uart2 {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&uart2m1_xfer>;
> > +	status =3D "okay";
> > +};
> > +
> > +&vopb {
> > +	status =3D "okay";
> > +};
> > +
> > +&vopb_mmu {
> > +	status =3D "okay";
> > +};
> > +
> > +&pinctrl {
> > +	pmic {
> > +		pmic_int: pmic-int {
> > +			rockchip,pins =3D <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
> > +		};
> > +
> > +		dc_det: dc-det {
> > +			rockchip,pins =3D <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
> > +		};
> > +	};
> > +
> > +	leds {
> > +		led_pins: led-pins {
> > +			rockchip,pins =3D <0 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
> > +		};
> > +	};
> > +
> > +	btns {
> > +		btn_pins: btn-pins {
> > +			rockchip,pins =3D <1 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>,
> > +					<1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>,
> > +					<1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_up>,
> > +					<1 RK_PB7 RK_FUNC_GPIO &pcfg_pull_up>,
> > +					<1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>,
> > +					<1 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>,
> > +					<1 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>,
> > +					<1 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>,
> > +
> > +					<2 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>,
> > +					<2 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>,
> > +					<2 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>,
> > +					<2 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>,
> > +					<2 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>,
> > +					<2 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>,
> > +					<2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>,
> > +					<2 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>;
> > +		};
> > +	};
> > +};
> > --
> > 2.24.1
> =

> =

> =






_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
