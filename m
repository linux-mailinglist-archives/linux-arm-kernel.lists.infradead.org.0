Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07370143F0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 15:13:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mXaX90WVKY3hOZC+ueKqsHTAaoy8vlqfBipabsc6Z4=; b=YX7gMxdSVw+7y7
	itgn7/h3gk0gKDvdHtjkswLAJcHPfXV0olzWjc9yaUFHnRWD88nfJWjNEI0htlp9Qml2SKRFQwmVG
	+O8aF88qp0wVzHwDZSOhf/F/3GunQno9FvRR+WeJfHGaOowRG0PuEGBUnDcVSHY5hEgDHukOuZhzz
	K7GLLtaCfWFEMfm7blEaICp8xITdVKjfWhwxe2GLKpekSFDKFwg/kg7eFeXEAvFtsjrqs4sKJvvsS
	ld9g49pH6egB3xbXg5L2lnhxVWhonDOrGOgUVNsV/dR4/qDB3oKIwPdFBtfRyEtBx84kOyvVwWAju
	dvm3q6mO20rpGezwDu6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ituHa-0004Jf-Ie; Tue, 21 Jan 2020 14:13:30 +0000
Received: from mail.manjaro.org ([176.9.38.148] helo=manjaro.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ituHO-0004IL-E8; Tue, 21 Jan 2020 14:13:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by manjaro.org (Postfix) with ESMTP id D66FD37E1762;
 Tue, 21 Jan 2020 15:13:13 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 15c4yKmLzXHI; Tue, 21 Jan 2020 15:13:06 +0100 (CET)
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
To: Emmanuel Vadot <manu@freebsd.org>, heiko@sntech.de, pbrobinson@gmail.com
References: <20200116225617.6318-1-manu@freebsd.org>
 <20200116225617.6318-2-manu@freebsd.org>
From: Tobias Schramm <t.schramm@manjaro.org>
Autocrypt: addr=tobias@t-sys.eu; prefer-encrypt=mutual; keydata=
 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
Message-ID: <477e2602-d740-5954-5573-87db5fd83888@manjaro.org>
Date: Tue, 21 Jan 2020 15:13:06 +0100
MIME-Version: 1.0
In-Reply-To: <20200116225617.6318-2-manu@freebsd.org>
Content-Language: en-US-large
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_061318_770987_7E271DA1 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aballier@gentoo.org,
 kever.yang@rock-chips.com, linux-kernel@vger.kernel.org,
 m.reichl@fivetechno.de, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 nick@khadas.com, andy.yan@rock-chips.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I do strongly oppose merging this DTS. It is missing several device
components (for example the eDP panel and the lid switch) and the power
supply setup does not reflect the implementation in the device at all.
Also some control/irq GPIOs are incorrect. See comments below.

The schematic of the Pinebook Pro can be found here:
http://files.pine64.org/doc/PinebookPro/pinebookpro_v2.1_mainboard_schematic.pdf

I'm currently planning on submitting a DTS with correct power supply and
GPIO setup as well as more supported hardware components late February.
Unfortunately I won't get around to doing it any sooner.

Current state of the DTS can be found here:
https://gitlab.manjaro.org/tsys/linux-pinebook-pro/blob/v5.5-rc7/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts


> From: Peter Robinson <pbrobinson@gmail.com>
> 

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

Missing lid switch
> +	};
> +
> +	leds {
> +		status = "okay";
> +		compatible = "gpio-leds";
> +
> +		work-led {
> +			label = "work";
> +			gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		standby-led {
> +			label = "standby";
> +			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
vcc1v8_s3 and vcca1v8_s3 are not the same. They are powered from
different vin supplies.

> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc1v8_s3";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vcc_1v8>;
> +	};
> +
> +	dc_12v: dc-12v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "dc_12v";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +	};
There is no primary 12 V supply on the Pinebook Pro

> +
> +	vcc3v3_sys: vcc3v3-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc_sys>;
> +	};
> +
> +	vcc5v0_host: vcc5v0-host-regulator {
> +		compatible = "regulator-fixed";
> +		gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&host_vbus_drv>;
> +		regulator-name = "vcc5v0_host";
> +	};
> +
> +	vcc5v0_usb3_host: vcc5v0-usb3-host-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&host_usb3_drv>;
> +		regulator-name = "vcc5v0_usb3_host";
> +		regulator-always-on;
> +	};
> +
> +	vcc3v3_s0: vcc3v3-s0-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PC6 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&lcdvcc_en>;
> +		regulator-name = "vcc3v3_s0";
> +		regulator-always-on;
> +	};
> +
> +	vcc_sys: vcc-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&dc_12v>;
> +	};
> +The main system voltage is not 5 V and it is not powered by a 12 V rail

> +	vdd_log: vdd-log {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm2 0 25000 1>;
> +		pwm-supply = <&vcc_sys>;
> +		regulator-name = "vdd_log";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-init-microvolt = <950000>;
> +		regulator-min-microvolt = <800000>;
> +		regulator-max-microvolt = <1400000>;
> +	};
> +};
> +

Regulators for backlight, 0.9 V rail, USB-C power out and SD card power
are missing

Also most regulator names do not match the names of the power rails in
the schematic

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
> +&emmc_phy {
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
Interrupt GPIO is not correct, should be 10. This will stop the RTC from
working correctly.

> +		#clock-cells = <1>;
> +		clock-output-names = "xin32k", "rk808-clkout2";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_int_l>;
> +		rockchip,system-power-controller;
> +		wakeup-source;
> +
> +		vcc1-supply = <&vcc_sys>;
> +		vcc2-supply = <&vcc_sys>;
> +		vcc3-supply = <&vcc_sys>;
> +		vcc4-supply = <&vcc_sys>;
> +		vcc6-supply = <&vcc_sys>;
> +		vcc7-supply = <&vcc_sys>;
> +		vcc8-supply = <&vcc3v3_sys>;
> +		vcc9-supply = <&vcc_sys>;
> +		vcc10-supply = <&vcc_sys>;
> +		vcc11-supply = <&vcc_sys>;
> +		vcc12-supply = <&vcc3v3_sys>;
> +		vddio-supply = <&vcc_1v8>;
vddio-supply is not vcc_1v8 but vcc_3v0

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
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3000000>;
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
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
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
> +			vcc3v3_s3: SWITCH_REG1 {
> +				regulator-name = "vcc3v3_s3";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			switch_reg2: SWITCH_REG2 {
> +				regulator-name = "SWITCH_REG2";
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
> +		vsel-gpios = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
> +		regulator-compatible = "fan53555-reg";
> +		regulator-name = "vdd_cpu_b";
> +		regulator-min-microvolt = <712500>;
> +		regulator-max-microvolt = <1500000>;
> +		regulator-ramp-delay = <1000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&vcc_sys>;
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
> +		vsel-gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_HIGH>;
> +		regulator-compatible = "fan53555-reg";
> +		regulator-name = "vdd_gpu";
> +		regulator-min-microvolt = <712500>;
> +		regulator-max-microvolt = <1500000>;
> +		regulator-ramp-delay = <1000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&vcc_sys>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +};

Additionally there a quite a few components missing. This includes the
aforementioned lid switch and eDP panel but there are also a battery
gauge, two chargers, a es8316 audio codec, two speaker amplifiers and a
BT/WiFi module.

Best regards,

Tobias


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
