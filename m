Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3892143F58
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 15:22:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWx5QBn533ZF/dFmuppO4+aDg1ee8+UbpZC1jE3xGrc=; b=sgs/ssD+70X8cN
	9c0CyPJ5AwuKUdd+eyvaOo63pUPp6Ssf3UVcGgXTTStqBOs0JGyzVKv0IGPbd9y9TQOW8VXBooBF5
	GDGvGTw004S6Y1a6+JNlSMdBRKtsmBky8gaWCBtWQvufrO1Lo6Ll02953ZFJGFGuvFOU9Tr2RGKQ8
	gZRbIDHkwozF72lw5p1vfM2PTgKEvW1hHjU36URSdUR+RyZcpwTfcjhyXFwV/lXfH9Zz8AwhziAt9
	yt+lwQV66kEZZzaofWmU8srhToeeScte6yW36hacS/KQbQb13uls+RMZu6C5lmtLe0GJc+4IsOeru
	htrEx2/oTYXqle3XziQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ituQB-00080r-0u; Tue, 21 Jan 2020 14:22:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ituPu-00080E-Qp; Tue, 21 Jan 2020 14:22:11 +0000
Received: from ip092042140082.rev.nessus.at ([92.42.140.82] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ituPT-000404-Bh; Tue, 21 Jan 2020 15:21:39 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Tobias Schramm <t.schramm@manjaro.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
Date: Tue, 21 Jan 2020 15:21:38 +0100
Message-ID: <3785040.Baxn5HRXxd@phil>
In-Reply-To: <477e2602-d740-5954-5573-87db5fd83888@manjaro.org>
References: <20200116225617.6318-1-manu@freebsd.org>
 <20200116225617.6318-2-manu@freebsd.org>
 <477e2602-d740-5954-5573-87db5fd83888@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_062207_021631_7D117006 
X-CRM114-Status: GOOD (  23.06  )
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
Cc: mark.rutland@arm.com, m.reichl@fivetechno.de, aballier@gentoo.org,
 devicetree@vger.kernel.org, kever.yang@rock-chips.com,
 linux-kernel@vger.kernel.org, Emmanuel Vadot <manu@freebsd.org>,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, pbrobinson@gmail.com,
 nick@khadas.com, andy.yan@rock-chips.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am Dienstag, 21. Januar 2020, 15:13:06 CET schrieb Tobias Schramm:
> I do strongly oppose merging this DTS. It is missing several device
> components (for example the eDP panel and the lid switch) and the power
> supply setup does not reflect the implementation in the device at all.
> Also some control/irq GPIOs are incorrect. See comments below.
> 
> The schematic of the Pinebook Pro can be found here:
> http://files.pine64.org/doc/PinebookPro/pinebookpro_v2.1_mainboard_schematic.pdf
> 
> I'm currently planning on submitting a DTS with correct power supply and
> GPIO setup as well as more supported hardware components late February.
> Unfortunately I won't get around to doing it any sooner.
> 
> Current state of the DTS can be found here:
> https://gitlab.manjaro.org/tsys/linux-pinebook-pro/blob/v5.5-rc7/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts

I really like power trees that match the actual schematics, so I'm all
for it ;-) . I don't have a Pinebook Pro myself, so won't be comparing
the power-tree to the schematics myself though.

As for timing, it's too late for 5.6 anyway, so you have time until
around 5.6-rc5 gets released so around 8 weeks.

The other parts you can coordinate between you ;-)


Heiko

> > From: Peter Robinson <pbrobinson@gmail.com>
> > 
> 
> > +	gpio-keys {
> > +		compatible = "gpio-keys";
> > +		autorepeat;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pwrbtn>;
> > +
> > +		power {
> > +			debounce-interval = <100>;
> > +			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
> > +			label = "GPIO Key Power";
> > +			linux,code = <KEY_POWER>;
> > +			wakeup-source;
> > +		};
> 
> Missing lid switch
> > +	};
> > +
> > +	leds {
> > +		status = "okay";
> > +		compatible = "gpio-leds";
> > +
> > +		work-led {
> > +			label = "work";
> > +			gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
> > +		};
> > +
> > +		standby-led {
> > +			label = "standby";
> > +			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> > +		};
> > +	};
> > +
> > +	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
> vcc1v8_s3 and vcca1v8_s3 are not the same. They are powered from
> different vin supplies.
> 
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc1v8_s3";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt = <1800000>;
> > +		regulator-max-microvolt = <1800000>;
> > +		vin-supply = <&vcc_1v8>;
> > +	};
> > +
> > +	dc_12v: dc-12v {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "dc_12v";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt = <12000000>;
> > +		regulator-max-microvolt = <12000000>;
> > +	};
> There is no primary 12 V supply on the Pinebook Pro
> 
> > +
> > +	vcc3v3_sys: vcc3v3-sys {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc3v3_sys";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		vin-supply = <&vcc_sys>;
> > +	};
> > +
> > +	vcc5v0_host: vcc5v0-host-regulator {
> > +		compatible = "regulator-fixed";
> > +		gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&host_vbus_drv>;
> > +		regulator-name = "vcc5v0_host";
> > +	};
> > +
> > +	vcc5v0_usb3_host: vcc5v0-usb3-host-regulator {
> > +		compatible = "regulator-fixed";
> > +		enable-active-high;
> > +		gpio = <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&host_usb3_drv>;
> > +		regulator-name = "vcc5v0_usb3_host";
> > +		regulator-always-on;
> > +	};
> > +
> > +	vcc3v3_s0: vcc3v3-s0-regulator {
> > +		compatible = "regulator-fixed";
> > +		enable-active-high;
> > +		gpio = <&gpio1 RK_PC6 GPIO_ACTIVE_HIGH>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&lcdvcc_en>;
> > +		regulator-name = "vcc3v3_s0";
> > +		regulator-always-on;
> > +	};
> > +
> > +	vcc_sys: vcc-sys {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc_sys";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt = <5000000>;
> > +		regulator-max-microvolt = <5000000>;
> > +		vin-supply = <&dc_12v>;
> > +	};
> > +The main system voltage is not 5 V and it is not powered by a 12 V rail
> 
> > +	vdd_log: vdd-log {
> > +		compatible = "pwm-regulator";
> > +		pwms = <&pwm2 0 25000 1>;
> > +		pwm-supply = <&vcc_sys>;
> > +		regulator-name = "vdd_log";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-init-microvolt = <950000>;
> > +		regulator-min-microvolt = <800000>;
> > +		regulator-max-microvolt = <1400000>;
> > +	};
> > +};
> > +
> 
> Regulators for backlight, 0.9 V rail, USB-C power out and SD card power
> are missing
> 
> Also most regulator names do not match the names of the power rails in
> the schematic
> 
> > +&cpu_l0 {
> > +	cpu-supply = <&vdd_cpu_l>;
> > +};
> > +
> > +&cpu_l1 {
> > +	cpu-supply = <&vdd_cpu_l>;
> > +};
> > +
> > +&cpu_l2 {
> > +	cpu-supply = <&vdd_cpu_l>;
> > +};
> > +
> > +&cpu_l3 {
> > +	cpu-supply = <&vdd_cpu_l>;
> > +};
> > +
> > +&emmc_phy {
> > +	status = "okay";
> > +};
> > +
> > +&i2c0 {
> > +	clock-frequency = <400000>;
> > +	i2c-scl-rising-time-ns = <168>;
> > +	i2c-scl-falling-time-ns = <4>;
> > +	status = "okay";
> > +
> > +	rk808: pmic@1b {
> > +		compatible = "rockchip,rk808";
> > +		reg = <0x1b>;
> > +		interrupt-parent = <&gpio1>;
> > +		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
> Interrupt GPIO is not correct, should be 10. This will stop the RTC from
> working correctly.
> 
> > +		#clock-cells = <1>;
> > +		clock-output-names = "xin32k", "rk808-clkout2";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pmic_int_l>;
> > +		rockchip,system-power-controller;
> > +		wakeup-source;
> > +
> > +		vcc1-supply = <&vcc_sys>;
> > +		vcc2-supply = <&vcc_sys>;
> > +		vcc3-supply = <&vcc_sys>;
> > +		vcc4-supply = <&vcc_sys>;
> > +		vcc6-supply = <&vcc_sys>;
> > +		vcc7-supply = <&vcc_sys>;
> > +		vcc8-supply = <&vcc3v3_sys>;
> > +		vcc9-supply = <&vcc_sys>;
> > +		vcc10-supply = <&vcc_sys>;
> > +		vcc11-supply = <&vcc_sys>;
> > +		vcc12-supply = <&vcc3v3_sys>;
> > +		vddio-supply = <&vcc_1v8>;
> vddio-supply is not vcc_1v8 but vcc_3v0
> 
> > +
> > +		regulators {
> > +			vdd_center: DCDC_REG1 {
> > +				regulator-name = "vdd_center";
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt = <750000>;
> > +				regulator-max-microvolt = <1350000>;
> > +				regulator-ramp-delay = <6001>;
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};
> > +
> > +			vdd_cpu_l: DCDC_REG2 {
> > +				regulator-name = "vdd_cpu_l";
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt = <750000>;
> > +				regulator-max-microvolt = <1350000>;
> > +				regulator-ramp-delay = <6001>;
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};
> > +
> > +			vcc_ddr: DCDC_REG3 {
> > +				regulator-name = "vcc_ddr";
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +				};
> > +			};
> > +
> > +			vcc_1v8: DCDC_REG4 {
> > +				regulator-name = "vcc_1v8";
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt = <1800000>;
> > +				regulator-max-microvolt = <1800000>;
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt = <1800000>;
> > +				};
> > +			};
> > +
> > +			vcc1v8_dvp: LDO_REG1 {
> > +				regulator-name = "vcc1v8_dvp";
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt = <1800000>;
> > +				regulator-max-microvolt = <1800000>;
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};
> > +
> > +			vcc3v0_touch: LDO_REG2 {
> > +				regulator-name = "vcc3v0_touch";
> > +				regulator-min-microvolt = <3000000>;
> > +				regulator-max-microvolt = <3000000>;
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt = <3000000>;
> > +				};
> > +			};
> > +
> > +			vcc1v8_pmu: LDO_REG3 {
> > +				regulator-name = "vcc1v8_pmu";
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt = <1800000>;
> > +				regulator-max-microvolt = <1800000>;
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt = <1800000>;
> > +				};
> > +			};
> > +
> > +			vcc_sdio: LDO_REG4 {
> > +				regulator-name = "vcc_sdio";
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt = <3300000>;
> > +				regulator-max-microvolt = <3300000>;
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt = <3300000>;
> > +				};
> > +			};
> > +
> > +			vcca3v0_codec: LDO_REG5 {
> > +				regulator-name = "vcca3v0_codec";
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt = <3000000>;
> > +				regulator-max-microvolt = <3000000>;
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};
> > +
> > +			vcc_1v5: LDO_REG6 {
> > +				regulator-name = "vcc_1v5";
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt = <1500000>;
> > +				regulator-max-microvolt = <1500000>;
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt = <1500000>;
> > +				};
> > +			};
> > +
> > +			vcca1v8_codec: LDO_REG7 {
> > +				regulator-name = "vcca1v8_codec";
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt = <1800000>;
> > +				regulator-max-microvolt = <1800000>;
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};
> > +
> > +			vcc_3v0: LDO_REG8 {
> > +				regulator-name = "vcc_3v0";
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt = <3000000>;
> > +				regulator-max-microvolt = <3000000>;
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt = <3000000>;
> > +				};
> > +			};
> > +
> > +			vcc3v3_s3: SWITCH_REG1 {
> > +				regulator-name = "vcc3v3_s3";
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};
> > +
> > +			switch_reg2: SWITCH_REG2 {
> > +				regulator-name = "SWITCH_REG2";
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};
> > +		};
> > +	};
> > +
> > +	vdd_cpu_b: regulator@40 {
> > +		compatible = "silergy,syr827";
> > +		reg = <0x40>;
> > +		fcs,suspend-voltage-selector = <1>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&vsel1_gpio>;
> > +		vsel-gpios = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
> > +		regulator-compatible = "fan53555-reg";
> > +		regulator-name = "vdd_cpu_b";
> > +		regulator-min-microvolt = <712500>;
> > +		regulator-max-microvolt = <1500000>;
> > +		regulator-ramp-delay = <1000>;
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		vin-supply = <&vcc_sys>;
> > +
> > +		regulator-state-mem {
> > +			regulator-off-in-suspend;
> > +		};
> > +	};
> > +
> > +	vdd_gpu: regulator@41 {
> > +		compatible = "silergy,syr828";
> > +		reg = <0x41>;
> > +		fcs,suspend-voltage-selector = <1>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&vsel2_gpio>;
> > +		vsel-gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_HIGH>;
> > +		regulator-compatible = "fan53555-reg";
> > +		regulator-name = "vdd_gpu";
> > +		regulator-min-microvolt = <712500>;
> > +		regulator-max-microvolt = <1500000>;
> > +		regulator-ramp-delay = <1000>;
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		vin-supply = <&vcc_sys>;
> > +
> > +		regulator-state-mem {
> > +			regulator-off-in-suspend;
> > +		};
> > +	};
> > +
> > +};
> 
> Additionally there a quite a few components missing. This includes the
> aforementioned lid switch and eDP panel but there are also a battery
> gauge, two chargers, a es8316 audio codec, two speaker amplifiers and a
> BT/WiFi module.
> 
> Best regards,
> 
> Tobias
> 
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
