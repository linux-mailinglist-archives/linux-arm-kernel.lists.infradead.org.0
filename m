Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EB6F4F43
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 16:19:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R9/eaCyBLZbF0ZT6XP3594CWJeX2svGOV8wChr9fOXc=; b=D6/pwbGdkTeSeube1E1n2CXaS
	mjj/JPKrDANj0fi4l+ONZqCXJ7i9WCDqsTlU5CZ9xB/C6Y8XCm3mBRq/uiVWYTb3GNgPdJemBUHO7
	ZhUc5ZXUwHwXykAtB6VFUPP99lGK8S7CFFr0d8uZa/XODYGaiydSWUl7CZfVwjQGhadK+MwQBoQTs
	AF77C/x/8l1Rp+mafEUMoFcn+/Z97zisqEAzE4MrZrJ5YMmVsdTOXBiiHqzw/8d0NJISixGZndnar
	VX1tRlTY05K4HjM7qm6/wCGY5koki/co4P1ST4gML9bhz2PNyRTZeA5lSj3+MVJbZIwijd0XxlOqi
	BO5Dbbuhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT62Q-0000Xi-Vo; Fri, 08 Nov 2019 15:19:03 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT62F-0000WL-Ah; Fri, 08 Nov 2019 15:18:55 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1iT628-0005nx-Jp; Fri, 08 Nov 2019 16:18:44 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from [192.168.34.101] (p5098d998.dip0.t-ipconnect.de
 [80.152.217.152]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 xA8FIhQk014454
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Fri, 8 Nov 2019 16:18:43 +0100
Subject: Re: [PATCH v3] arm64: dts: rockchip: Split rk3399-roc-pc for with and
 without mezzanine board.
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <7293c5f6-a07f-cf51-954f-92907879eea2@fivetechno.de>
 <1628743.87kQKnQNn8@diego>
From: Markus Reichl <m.reichl@fivetechno.de>
Autocrypt: addr=m.reichl@fivetechno.de; prefer-encrypt=mutual; keydata=
 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
 eD/Xv4SsK2JTO4nkQYw8
Organization: five technologies GmbH
Message-ID: <616df0fa-a503-1a57-12b6-43bcd674db8c@fivetechno.de>
Date: Fri, 8 Nov 2019 16:18:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <1628743.87kQKnQNn8@diego>
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1573226331;
 01f067b7; 
X-HE-SMSGID: 1iT628-0005nx-Jp
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_071851_816470_FF92BE26 
X-CRM114-Status: GOOD (  15.08  )
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
Content-Type: multipart/mixed; boundary="===============0749193525850463235=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0749193525850463235==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="66dJ7a7eEZCbQSLhvv29mchtfWsermLuO"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--66dJ7a7eEZCbQSLhvv29mchtfWsermLuO
Content-Type: multipart/mixed; boundary="xYVs8VYWJTiUO9VromQ7ohzi6clFiY6Mq";
 protected-headers="v1"
From: Markus Reichl <m.reichl@fivetechno.de>
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Jagan Teki <jagan@amarulasolutions.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Message-ID: <616df0fa-a503-1a57-12b6-43bcd674db8c@fivetechno.de>
Subject: Re: [PATCH v3] arm64: dts: rockchip: Split rk3399-roc-pc for with and
 without mezzanine board.
References: <7293c5f6-a07f-cf51-954f-92907879eea2@fivetechno.de>
 <1628743.87kQKnQNn8@diego>
In-Reply-To: <1628743.87kQKnQNn8@diego>

--xYVs8VYWJTiUO9VromQ7ohzi6clFiY6Mq
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: quoted-printable

Hi Heiko,

Am 08.11.19 um 15:41 schrieb Heiko St=C3=BCbner:
> Hi Markus,
>=20
> Am Montag, 4. November 2019, 16:22:25 CET schrieb Markus Reichl:
>> For rk3399-roc-pc is a mezzanine board available that carries M.2 and
>> POE interfaces. Use it with a separate dts.
>>=20
>> ---
>> v3: Use enum in binding and full name in compatible string and file na=
me.
>> v2: Add new compatible string for roc-pc with mezzanine board.
>> --
>>=20
>> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
>> ---
>>  .../devicetree/bindings/arm/rockchip.yaml     |   4 +-
>>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>  .../dts/rockchip/rk3399-roc-pc-mezzanine.dts  |  72 ++
>>  .../arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 757 +----------------=

>>  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 770 +++++++++++++++++=
+
>>  5 files changed, 847 insertions(+), 757 deletions(-)
>>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzani=
ne.dts
>>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
>>=20
>=20
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm=
64/boot/dts/rockchip/rk3399-roc-pc.dts
>> index 7e07dae33d0f..cd4195425309 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
>> @@ -4,764 +4,9 @@
>=20
> This whole hunk fails to apply against my current branch for 5.5
> which contain your other patches [0].
>=20
> And the moved block is obviously so big that I can't really check
> which part is somehow different, so I'd ask you to rebase this
> patch accordingly, so that it applies again.

Yes, will rebase and come with v4.

>=20
> Thanks
> Heiko
>=20
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchi=
p.git/log/?h=3Dv5.5-armsoc/dts64
>=20
>=20
>>   */
>> =20
>>  /dts-v1/;
>> -#include <dt-bindings/input/linux-event-codes.h>
>> -#include <dt-bindings/pwm/pwm.h>
>> -#include "rk3399.dtsi"
>> -#include "rk3399-opp.dtsi"
>> +#include "rk3399-roc-pc.dtsi"
>> =20
>>  / {
>>  	model =3D "Firefly ROC-RK3399-PC Board";
>>  	compatible =3D "firefly,roc-rk3399-pc", "rockchip,rk3399";
>> -
>> -	chosen {
>> -		stdout-path =3D "serial2:1500000n8";
>> -	};
>> -
>> -	backlight: backlight {
>> -		compatible =3D "pwm-backlight";
>> -		pwms =3D <&pwm0 0 25000 0>;
>> -	};
>> -
>> -	clkin_gmac: external-gmac-clock {
>> -		compatible =3D "fixed-clock";
>> -		clock-frequency =3D <125000000>;
>> -		clock-output-names =3D "clkin_gmac";
>> -		#clock-cells =3D <0>;
>> -	};
>> -
>> -	adc-keys {
>> -		compatible =3D "adc-keys";
>> -		io-channels =3D <&saradc 1>;
>> -		io-channel-names =3D "buttons";
>> -		keyup-threshold-microvolt =3D <1500000>;
>> -		poll-interval =3D <100>;
>> -
>> -		recovery {
>> -			label =3D "Recovery";
>> -			linux,code =3D <KEY_VENDOR>;
>> -			press-threshold-microvolt =3D <18000>;
>> -		};
>> -	};
>> -
>> -	gpio-keys {
>> -		compatible =3D "gpio-keys";
>> -		autorepeat;
>> -		pinctrl-names =3D "default";
>> -		pinctrl-0 =3D <&pwr_key_l>;
>> -
>> -		power {
>> -			debounce-interval =3D <100>;
>> -			gpios =3D <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
>> -			label =3D "GPIO Key Power";
>> -			linux,code =3D <KEY_POWER>;
>> -			wakeup-source;
>> -		};
>> -	};
>> -
>> -	leds {
>> -		compatible =3D "gpio-leds";
>> -		pinctrl-names =3D "default";
>> -		pinctrl-0 =3D <&work_led_gpio>, <&diy_led_gpio>, <&yellow_led_gpio>=
;
>> -
>> -		work-led {
>> -			label =3D "green:work";
>> -			gpios =3D <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
>> -			default-state =3D "on";
>> -			linux,default-trigger =3D "heartbeat";
>> -		};
>> -
>> -		diy-led {
>> -			label =3D "red:diy";
>> -			gpios =3D <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
>> -			default-state =3D "off";
>> -			linux,default-trigger =3D "mmc1";
>> -		};
>> -
>> -		yellow-led {
>> -			label =3D "yellow:yellow-led";
>> -			gpios =3D <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
>> -			default-state =3D "off";
>> -			linux,default-trigger =3D "mmc0";
>> -		};
>> -	};
>> -
>> -	sdio_pwrseq: sdio-pwrseq {
>> -		compatible =3D "mmc-pwrseq-simple";
>> -		clocks =3D <&rk808 1>;
>> -		clock-names =3D "ext_clock";
>> -		pinctrl-names =3D "default";
>> -		pinctrl-0 =3D <&wifi_enable_h>;
>> -
>> -		/*
>> -		 * On the module itself this is one of these (depending
>> -		 * on the actual card populated):
>> -		 * - SDIO_RESET_L_WL_REG_ON
>> -		 * - PDN (power down when low)
>> -		 */
>> -		reset-gpios =3D <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
>> -	};
>> -
>> -	vcc_vbus_typec0: vcc-vbus-typec0 {
>> -		compatible =3D "regulator-fixed";
>> -		regulator-name =3D "vcc_vbus_typec0";
>> -		regulator-always-on;
>> -		regulator-boot-on;
>> -		regulator-min-microvolt =3D <5000000>;
>> -		regulator-max-microvolt =3D <5000000>;
>> -	};
>> -
>> -	/*
>> -	 * should be placed inside mp8859, but not until mp8859 has
>> -	 * its own dt-binding.
>> -	 */
>> -	dc_12v: mp8859-dcdc1 {
>> -		compatible =3D "regulator-fixed";
>> -		regulator-name =3D "dc_12v";
>> -		regulator-always-on;
>> -		regulator-boot-on;
>> -		regulator-min-microvolt =3D <12000000>;
>> -		regulator-max-microvolt =3D <12000000>;
>> -		vin-supply =3D <&vcc_vbus_typec0>;
>> -	};
>> -
>> -	/* switched by pmic_sleep */
>> -	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
>> -		compatible =3D "regulator-fixed";
>> -		regulator-name =3D "vcc1v8_s3";
>> -		regulator-always-on;
>> -		regulator-boot-on;
>> -		regulator-min-microvolt =3D <1800000>;
>> -		regulator-max-microvolt =3D <1800000>;
>> -		vin-supply =3D <&vcc_1v8>;
>> -	};
>> -
>> -	vcc3v3_sys: vcc3v3-sys {
>> -		compatible =3D "regulator-fixed";
>> -		regulator-name =3D "vcc3v3_sys";
>> -		regulator-always-on;
>> -		regulator-boot-on;
>> -		regulator-min-microvolt =3D <3300000>;
>> -		regulator-max-microvolt =3D <3300000>;
>> -		vin-supply =3D <&dc_12v>;
>> -	};
>> -
>> -	/* Actually 3 regulators (host0, 1, 2) controlled by the same gpio *=
/
>> -	vcc5v0_host: vcc5v0-host-regulator {
>> -		compatible =3D "regulator-fixed";
>> -		enable-active-high;
>> -		gpio =3D <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
>> -		pinctrl-names =3D "default";
>> -		pinctrl-0 =3D <&vcc5v0_host_en &hub_rst>;
>> -		regulator-name =3D "vcc5v0_host";
>> -		regulator-always-on;
>> -		vin-supply =3D <&vcc_sys>;
>> -	};
>> -
>> -	vcc_vbus_typec1: vcc-vbus-typec1 {
>> -		compatible =3D "regulator-fixed";
>> -		enable-active-high;
>> -		gpio =3D <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
>> -		pinctrl-names =3D "default";
>> -		pinctrl-0 =3D <&vcc_vbus_typec1_en>;
>> -		regulator-name =3D "vcc_vbus_typec1";
>> -		regulator-always-on;
>> -		vin-supply =3D <&vcc_sys>;
>> -	};
>> -
>> -	vcc_sys: vcc-sys {
>> -		compatible =3D "regulator-fixed";
>> -		enable-active-high;
>> -		gpio =3D <&gpio2 RK_PA6 GPIO_ACTIVE_HIGH>;
>> -		pinctrl-names =3D "default";
>> -		pinctrl-0 =3D <&vcc_sys_en>;
>> -		regulator-name =3D "vcc_sys";
>> -		regulator-always-on;
>> -		regulator-boot-on;
>> -		regulator-min-microvolt =3D <5000000>;
>> -		regulator-max-microvolt =3D <5000000>;
>> -		vin-supply =3D <&dc_12v>;
>> -	};
>> -
>> -	vdd_log: vdd-log {
>> -		compatible =3D "pwm-regulator";
>> -		pwms =3D <&pwm2 0 25000 1>;
>> -		regulator-name =3D "vdd_log";
>> -		regulator-always-on;
>> -		regulator-boot-on;
>> -		regulator-min-microvolt =3D <800000>;
>> -		regulator-max-microvolt =3D <1400000>;
>> -		vin-supply =3D <&vcc3v3_sys>;
>> -	};
>> -};
>> -
>> -&cpu_l0 {
>> -	cpu-supply =3D <&vdd_cpu_l>;
>> -};
>> -
>> -&cpu_l1 {
>> -	cpu-supply =3D <&vdd_cpu_l>;
>> -};
>> -
>> -&cpu_l2 {
>> -	cpu-supply =3D <&vdd_cpu_l>;
>> -};
>> -
>> -&cpu_l3 {
>> -	cpu-supply =3D <&vdd_cpu_l>;
>> -};
>> -
>> -&cpu_b0 {
>> -	cpu-supply =3D <&vdd_cpu_b>;
>> -};
>> -
>> -&cpu_b1 {
>> -	cpu-supply =3D <&vdd_cpu_b>;
>> -};
>> -
>> -&emmc_phy {
>> -	status =3D "okay";
>> -};
>> -
>> -&gmac {
>> -	assigned-clocks =3D <&cru SCLK_RMII_SRC>;
>> -	assigned-clock-parents =3D <&clkin_gmac>;
>> -	clock_in_out =3D "input";
>> -	phy-supply =3D <&vcc_lan>;
>> -	phy-mode =3D "rgmii";
>> -	pinctrl-names =3D "default";
>> -	pinctrl-0 =3D <&rgmii_pins>;
>> -	snps,reset-gpio =3D <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
>> -	snps,reset-active-low;
>> -	snps,reset-delays-us =3D <0 10000 50000>;
>> -	tx_delay =3D <0x28>;
>> -	rx_delay =3D <0x11>;
>> -	status =3D "okay";
>> -};
>> -
>> -&hdmi {
>> -	ddc-i2c-bus =3D <&i2c3>;
>> -	pinctrl-names =3D "default";
>> -	pinctrl-0 =3D <&hdmi_cec>;
>> -	status =3D "okay";
>> -};
>> -
>> -&i2c0 {
>> -	clock-frequency =3D <400000>;
>> -	i2c-scl-rising-time-ns =3D <168>;
>> -	i2c-scl-falling-time-ns =3D <4>;
>> -	status =3D "okay";
>> -
>> -	rk808: pmic@1b {
>> -		compatible =3D "rockchip,rk808";
>> -		reg =3D <0x1b>;
>> -		interrupt-parent =3D <&gpio1>;
>> -		interrupts =3D <21 IRQ_TYPE_LEVEL_LOW>;
>> -		#clock-cells =3D <1>;
>> -		clock-output-names =3D "xin32k", "rk808-clkout2";
>> -		pinctrl-names =3D "default";
>> -		pinctrl-0 =3D <&pmic_int_l>;
>> -		rockchip,system-power-controller;
>> -		wakeup-source;
>> -
>> -		vcc1-supply =3D <&vcc3v3_sys>;
>> -		vcc2-supply =3D <&vcc3v3_sys>;
>> -		vcc3-supply =3D <&vcc3v3_sys>;
>> -		vcc4-supply =3D <&vcc3v3_sys>;
>> -		vcc6-supply =3D <&vcc3v3_sys>;
>> -		vcc7-supply =3D <&vcc3v3_sys>;
>> -		vcc8-supply =3D <&vcc3v3_sys>;
>> -		vcc9-supply =3D <&vcc3v3_sys>;
>> -		vcc10-supply =3D <&vcc3v3_sys>;
>> -		vcc11-supply =3D <&vcc3v3_sys>;
>> -		vcc12-supply =3D <&vcc3v3_sys>;
>> -		vcc13-supply =3D <&vcc3v3_sys>;
>> -		vcc14-supply =3D <&vcc3v3_sys>;
>> -		vddio-supply =3D <&vcc_3v0>;
>> -
>> -		regulators {
>> -			vdd_center: DCDC_REG1 {
>> -				regulator-name =3D "vdd_center";
>> -				regulator-always-on;
>> -				regulator-boot-on;
>> -				regulator-min-microvolt =3D <750000>;
>> -				regulator-max-microvolt =3D <1350000>;
>> -				regulator-ramp-delay =3D <6001>;
>> -				regulator-state-mem {
>> -					regulator-off-in-suspend;
>> -				};
>> -			};
>> -
>> -			vdd_cpu_l: DCDC_REG2 {
>> -				regulator-name =3D "vdd_cpu_l";
>> -				regulator-always-on;
>> -				regulator-boot-on;
>> -				regulator-min-microvolt =3D <750000>;
>> -				regulator-max-microvolt =3D <1350000>;
>> -				regulator-ramp-delay =3D <6001>;
>> -				regulator-state-mem {
>> -					regulator-off-in-suspend;
>> -				};
>> -			};
>> -
>> -			vcc_ddr: DCDC_REG3 {
>> -				regulator-name =3D "vcc_ddr";
>> -				regulator-always-on;
>> -				regulator-boot-on;
>> -				regulator-state-mem {
>> -					regulator-on-in-suspend;
>> -				};
>> -			};
>> -
>> -			vcc_1v8: DCDC_REG4 {
>> -				regulator-name =3D "vcc_1v8";
>> -				regulator-always-on;
>> -				regulator-boot-on;
>> -				regulator-min-microvolt =3D <1800000>;
>> -				regulator-max-microvolt =3D <1800000>;
>> -				regulator-state-mem {
>> -					regulator-on-in-suspend;
>> -					regulator-suspend-microvolt =3D <1800000>;
>> -				};
>> -			};
>> -
>> -			vcca1v8_codec: LDO_REG1 {
>> -				regulator-name =3D "vcca1v8_codec";
>> -				regulator-always-on;
>> -				regulator-boot-on;
>> -				regulator-min-microvolt =3D <1800000>;
>> -				regulator-max-microvolt =3D <1800000>;
>> -				regulator-state-mem {
>> -					regulator-off-in-suspend;
>> -				};
>> -			};
>> -
>> -			vcc1v8_hdmi: LDO_REG2 {
>> -				regulator-name =3D "vcc1v8_hdmi";
>> -				regulator-always-on;
>> -				regulator-boot-on;
>> -				regulator-min-microvolt =3D <1800000>;
>> -				regulator-max-microvolt =3D <1800000>;
>> -				regulator-state-mem {
>> -					regulator-off-in-suspend;
>> -				};
>> -			};
>> -
>> -			vcc1v8_pmu: LDO_REG3 {
>> -				regulator-name =3D "vcc1v8_pmu";
>> -				regulator-always-on;
>> -				regulator-boot-on;
>> -				regulator-min-microvolt =3D <1800000>;
>> -				regulator-max-microvolt =3D <1800000>;
>> -				regulator-state-mem {
>> -					regulator-on-in-suspend;
>> -					regulator-suspend-microvolt =3D <1800000>;
>> -				};
>> -			};
>> -
>> -			vcc_sdio: LDO_REG4 {
>> -				regulator-name =3D "vcc_sdio";
>> -				regulator-always-on;
>> -				regulator-boot-on;
>> -				regulator-min-microvolt =3D <1800000>;
>> -				regulator-max-microvolt =3D <3000000>;
>> -				regulator-state-mem {
>> -					regulator-on-in-suspend;
>> -					regulator-suspend-microvolt =3D <3000000>;
>> -				};
>> -			};
>> -
>> -			vcca3v0_codec: LDO_REG5 {
>> -				regulator-name =3D "vcca3v0_codec";
>> -				regulator-always-on;
>> -				regulator-boot-on;
>> -				regulator-min-microvolt =3D <3000000>;
>> -				regulator-max-microvolt =3D <3000000>;
>> -				regulator-state-mem {
>> -					regulator-off-in-suspend;
>> -				};
>> -			};
>> -
>> -			vcc_1v5: LDO_REG6 {
>> -				regulator-name =3D "vcc_1v5";
>> -				regulator-always-on;
>> -				regulator-boot-on;
>> -				regulator-min-microvolt =3D <1500000>;
>> -				regulator-max-microvolt =3D <1500000>;
>> -				regulator-state-mem {
>> -					regulator-on-in-suspend;
>> -					regulator-suspend-microvolt =3D <1500000>;
>> -				};
>> -			};
>> -
>> -			vcca0v9_hdmi: LDO_REG7 {
>> -				regulator-name =3D "vcca0v9_hdmi";
>> -				regulator-always-on;
>> -				regulator-boot-on;
>> -				regulator-min-microvolt =3D <900000>;
>> -				regulator-max-microvolt =3D <900000>;
>> -				regulator-state-mem {
>> -					regulator-off-in-suspend;
>> -				};
>> -			};
>> -
>> -			vcc_3v0: LDO_REG8 {
>> -				regulator-name =3D "vcc_3v0";
>> -				regulator-always-on;
>> -				regulator-boot-on;
>> -				regulator-min-microvolt =3D <3000000>;
>> -				regulator-max-microvolt =3D <3000000>;
>> -				regulator-state-mem {
>> -					regulator-on-in-suspend;
>> -					regulator-suspend-microvolt =3D <3000000>;
>> -				};
>> -			};
>> -
>> -			vcc3v3_s3: vcc_lan: SWITCH_REG1 {
>> -				regulator-name =3D "vcc3v3_s3";
>> -				regulator-always-on;
>> -				regulator-boot-on;
>> -				regulator-state-mem {
>> -					regulator-off-in-suspend;
>> -				};
>> -			};
>> -
>> -			vcc3v3_s0: SWITCH_REG2 {
>> -				regulator-name =3D "vcc3v3_s0";
>> -				regulator-always-on;
>> -				regulator-boot-on;
>> -				regulator-state-mem {
>> -					regulator-off-in-suspend;
>> -				};
>> -			};
>> -		};
>> -	};
>> -
>> -	vdd_cpu_b: regulator@40 {
>> -		compatible =3D "silergy,syr827";
>> -		reg =3D <0x40>;
>> -		fcs,suspend-voltage-selector =3D <1>;
>> -		pinctrl-names =3D "default";
>> -		pinctrl-0 =3D <&vsel1_gpio>;
>> -		regulator-name =3D "vdd_cpu_b";
>> -		regulator-min-microvolt =3D <712500>;
>> -		regulator-max-microvolt =3D <1500000>;
>> -		regulator-ramp-delay =3D <1000>;
>> -		regulator-always-on;
>> -		regulator-boot-on;
>> -		vin-supply =3D <&vcc3v3_sys>;
>> -
>> -		regulator-state-mem {
>> -			regulator-off-in-suspend;
>> -		};
>> -	};
>> -
>> -	vdd_gpu: regulator@41 {
>> -		compatible =3D "silergy,syr828";
>> -		reg =3D <0x41>;
>> -		fcs,suspend-voltage-selector =3D <1>;
>> -		pinctrl-names =3D "default";
>> -		pinctrl-0 =3D <&vsel2_gpio>;
>> -		regulator-name =3D "vdd_gpu";
>> -		regulator-min-microvolt =3D <712500>;
>> -		regulator-max-microvolt =3D <1500000>;
>> -		regulator-ramp-delay =3D <1000>;
>> -		regulator-always-on;
>> -		regulator-boot-on;
>> -		vin-supply =3D <&vcc3v3_sys>;
>> -
>> -		regulator-state-mem {
>> -			regulator-off-in-suspend;
>> -		};
>> -	};
>> -};
>> -
>> -&i2c1 {
>> -	i2c-scl-rising-time-ns =3D <300>;
>> -	i2c-scl-falling-time-ns =3D <15>;
>> -	status =3D "okay";
>> -};
>> -
>> -&i2c3 {
>> -	i2c-scl-rising-time-ns =3D <450>;
>> -	i2c-scl-falling-time-ns =3D <15>;
>> -	status =3D "okay";
>> -};
>> -
>> -&i2c4 {
>> -	i2c-scl-rising-time-ns =3D <600>;
>> -	i2c-scl-falling-time-ns =3D <20>;
>> -	status =3D "okay";
>> -
>> -	fusb1: usb-typec@22 {
>> -		compatible =3D "fcs,fusb302";
>> -		reg =3D <0x22>;
>> -		interrupt-parent =3D <&gpio1>;
>> -		interrupts =3D <1 IRQ_TYPE_LEVEL_LOW>;
>> -		pinctrl-names =3D "default";
>> -		pinctrl-0 =3D <&fusb1_int>;
>> -		vbus-supply =3D <&vcc_vbus_typec1>;
>> -		status =3D "okay";
>> -	};
>> -};
>> -
>> -&i2c7 {
>> -	i2c-scl-rising-time-ns =3D <600>;
>> -	i2c-scl-falling-time-ns =3D <20>;
>> -	status =3D "okay";
>> -
>> -	fusb0: usb-typec@22 {
>> -		compatible =3D "fcs,fusb302";
>> -		reg =3D <0x22>;
>> -		interrupt-parent =3D <&gpio1>;
>> -		interrupts =3D <2 IRQ_TYPE_LEVEL_LOW>;
>> -		pinctrl-names =3D "default";
>> -		pinctrl-0 =3D <&fusb0_int>;
>> -		vbus-supply =3D <&vcc_vbus_typec0>;
>> -		status =3D "okay";
>> -	};
>> -};
>> -
>> -&i2s0 {
>> -	rockchip,playback-channels =3D <8>;
>> -	rockchip,capture-channels =3D <8>;
>> -	status =3D "okay";
>> -};
>> -
>> -&i2s1 {
>> -	rockchip,playback-channels =3D <2>;
>> -	rockchip,capture-channels =3D <2>;
>> -	status =3D "okay";
>> -};
>> -
>> -&i2s2 {
>> -	status =3D "okay";
>> -};
>> -
>> -&io_domains {
>> -	audio-supply =3D <&vcca1v8_codec>;
>> -	bt656-supply =3D <&vcc_3v0>;
>> -	gpio1830-supply =3D <&vcc_3v0>;
>> -	sdmmc-supply =3D <&vcc_sdio>;
>> -	status =3D "okay";
>> -};
>> -
>> -&pmu_io_domains {
>> -	pmu1830-supply =3D <&vcc_3v0>;
>> -	status =3D "okay";
>> -};
>> -
>> -&pinctrl {
>> -	buttons {
>> -		pwr_key_l: pwr-key-l {
>> -			rockchip,pins =3D <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
>> -		};
>> -	};
>> -
>> -	lcd-panel {
>> -		lcd_panel_reset: lcd-panel-reset {
>> -			rockchip,pins =3D <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
>> -		};
>> -	};
>> -
>> -	leds {
>> -		diy_led_gpio: diy_led-gpio {
>> -			rockchip,pins =3D <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
>> -		};
>> -
>> -		work_led_gpio: work_led-gpio {
>> -			rockchip,pins =3D <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
>> -		};
>> -
>> -		yellow_led_gpio: yellow_led-gpio {
>> -			rockchip,pins =3D <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
>> -		};
>> -	};
>> -
>> -	pmic {
>> -		vsel1_gpio: vsel1-gpio {
>> -			rockchip,pins =3D <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
>> -		};
>> -
>> -		vsel2_gpio: vsel2-gpio {
>> -			rockchip,pins =3D <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
>> -		};
>> -	};
>> -
>> -	sdio-pwrseq {
>> -		wifi_enable_h: wifi-enable-h {
>> -			rockchip,pins =3D <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
>> -		};
>> -	};
>> -
>> -	pmic {
>> -		pmic_int_l: pmic-int-l {
>> -			rockchip,pins =3D <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
>> -		};
>> -	};
>> -
>> -	usb2 {
>> -		vcc5v0_host_en: vcc5v0-host-en {
>> -			rockchip,pins =3D <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
>> -		};
>> -
>> -		vcc_sys_en: vcc-sys-en {
>> -			rockchip,pins =3D <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
>> -		};
>> -
>> -		hub_rst: hub-rst {
>> -			rockchip,pins =3D <2 RK_PA4 RK_FUNC_GPIO &pcfg_output_high>;
>> -		};
>> -	};
>> -
>> -	usb-typec {
>> -		vcc_vbus_typec1_en: vcc-vbus-typec1-en {
>> -			rockchip,pins =3D <1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
>> -		};
>> -	};
>> -
>> -	fusb30x {
>> -		fusb0_int: fusb0-int {
>> -			rockchip,pins =3D <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
>> -		};
>> -
>> -		fusb1_int: fusb1-int {
>> -			rockchip,pins =3D <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>;
>> -		};
>> -	};
>> -};
>> -
>> -&pwm0 {
>> -	status =3D "okay";
>> -};
>> -
>> -&pwm2 {
>> -	status =3D "okay";
>> -};
>> -
>> -&saradc {
>> -	vref-supply =3D <&vcca1v8_s3>;
>> -	status =3D "okay";
>> -};
>> -
>> -&sdmmc {
>> -	bus-width =3D <4>;
>> -	cap-mmc-highspeed;
>> -	cap-sd-highspeed;
>> -	cd-gpios =3D <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
>> -	disable-wp;
>> -	max-frequency =3D <150000000>;
>> -	pinctrl-names =3D "default";
>> -	pinctrl-0 =3D <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
>> -	status =3D "okay";
>> -};
>> -
>> -&sdhci {
>> -	bus-width =3D <8>;
>> -	mmc-hs400-1_8v;
>> -	mmc-hs400-enhanced-strobe;
>> -	non-removable;
>> -	status =3D "okay";
>> -};
>> -
>> -&tcphy0 {
>> -	status =3D "okay";
>> -};
>> -
>> -&tcphy1 {
>> -	status =3D "okay";
>> -};
>> -
>> -&tsadc {
>> -	/* tshut mode 0:CRU 1:GPIO */
>> -	rockchip,hw-tshut-mode =3D <1>;
>> -	/* tshut polarity 0:LOW 1:HIGH */
>> -	rockchip,hw-tshut-polarity =3D <1>;
>> -	status =3D "okay";
>> -};
>> -
>> -&u2phy0 {
>> -	status =3D "okay";
>> -
>> -	u2phy0_otg: otg-port {
>> -		phy-supply =3D <&vcc_vbus_typec0>;
>> -		status =3D "okay";
>> -	};
>> -
>> -	u2phy0_host: host-port {
>> -		phy-supply =3D <&vcc5v0_host>;
>> -		status =3D "okay";
>> -	};
>> -};
>> -
>> -&u2phy1 {
>> -	status =3D "okay";
>> -
>> -	u2phy1_otg: otg-port {
>> -		phy-supply =3D <&vcc_vbus_typec1>;
>> -		status =3D "okay";
>> -	};
>> -
>> -	u2phy1_host: host-port {
>> -		phy-supply =3D <&vcc5v0_host>;
>> -		status =3D "okay";
>> -	};
>> -};
>> -
>> -&uart0 {
>> -	pinctrl-names =3D "default";
>> -	pinctrl-0 =3D <&uart0_xfer &uart0_cts>;
>> -	status =3D "okay";
>> -};
>> -
>> -&uart2 {
>> -	status =3D "okay";
>> -};
>> -
>> -&usb_host0_ehci {
>> -	status =3D "okay";
>> -};
>> -
>> -&usb_host0_ohci {
>> -	status =3D "okay";
>> -};
>> -
>> -&usb_host1_ehci {
>> -	status =3D "okay";
>> -};
>> -
>> -&usb_host1_ohci {
>> -	status =3D "okay";
>> -};
>> -
>> -&usbdrd3_0 {
>> -	status =3D "okay";
>> -};
>> -
>> -&usbdrd_dwc3_0 {
>> -	status =3D "okay";
>> -};
>> -
>> -&usbdrd3_1 {
>> -	status =3D "okay";
>> -};
>> -
>> -&usbdrd_dwc3_1 {
>> -	status =3D "okay";
>> -	dr_mode =3D "host";
>> -};
>> -
>> -&vopb {
>> -	status =3D "okay";
>> -};
>> -
>> -&vopb_mmu {
>> -	status =3D "okay";
>> -};
>> -
>> -&vopl {
>> -	status =3D "okay";
>> -};
>> -
>> -&vopl_mmu {
>> -	status =3D "okay";
>>  };
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/ar=
m64/boot/dts/rockchip/rk3399-roc-pc.dtsi
>> new file mode 100644
>> index 000000000000..287f97488f65
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
>> @@ -0,0 +1,770 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2017 T-Chip Intelligent Technology Co., Ltd
>> + */
>> +
>> +/dts-v1/;
>> +#include <dt-bindings/input/linux-event-codes.h>
>> +#include <dt-bindings/pwm/pwm.h>
>> +#include "rk3399.dtsi"
>> +#include "rk3399-opp.dtsi"
>> +
>> +/ {
>> +	model =3D "Firefly ROC-RK3399-PC Board";
>> +	compatible =3D "firefly,roc-rk3399-pc", "rockchip,rk3399";
>> +
>> +	chosen {
>> +		stdout-path =3D "serial2:1500000n8";
>> +	};
>> +
>> +	backlight: backlight {
>> +		compatible =3D "pwm-backlight";
>> +		pwms =3D <&pwm0 0 25000 0>;
>> +	};
>> +
>> +	clkin_gmac: external-gmac-clock {
>> +		compatible =3D "fixed-clock";
>> +		clock-frequency =3D <125000000>;
>> +		clock-output-names =3D "clkin_gmac";
>> +		#clock-cells =3D <0>;
>> +	};
>> +
>> +	adc-keys {
>> +		compatible =3D "adc-keys";
>> +		io-channels =3D <&saradc 1>;
>> +		io-channel-names =3D "buttons";
>> +		keyup-threshold-microvolt =3D <1500000>;
>> +		poll-interval =3D <100>;
>> +
>> +		recovery {
>> +			label =3D "Recovery";
>> +			linux,code =3D <KEY_VENDOR>;
>> +			press-threshold-microvolt =3D <18000>;
>> +		};
>> +	};
>> +
>> +	gpio-keys {
>> +		compatible =3D "gpio-keys";
>> +		autorepeat;
>> +		pinctrl-names =3D "default";
>> +		pinctrl-0 =3D <&pwr_key_l>;
>> +
>> +		power {
>> +			debounce-interval =3D <100>;
>> +			gpios =3D <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
>> +			label =3D "GPIO Key Power";
>> +			linux,code =3D <KEY_POWER>;
>> +			wakeup-source;
>> +		};
>> +	};
>> +
>> +	leds {
>> +		compatible =3D "gpio-leds";
>> +		pinctrl-names =3D "default";
>> +		pinctrl-0 =3D <&work_led_gpio>, <&diy_led_gpio>, <&yellow_led_gpio>=
;
>> +
>> +		work-led {
>> +			label =3D "green:work";
>> +			gpios =3D <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
>> +			default-state =3D "on";
>> +			linux,default-trigger =3D "heartbeat";
>> +		};
>> +
>> +		diy-led {
>> +			label =3D "red:diy";
>> +			gpios =3D <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
>> +			default-state =3D "off";
>> +			linux,default-trigger =3D "mmc1";
>> +		};
>> +
>> +		yellow-led {
>> +			label =3D "yellow:yellow-led";
>> +			gpios =3D <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
>> +			default-state =3D "off";
>> +			linux,default-trigger =3D "mmc0";
>> +		};
>> +	};
>> +
>> +	sdio_pwrseq: sdio-pwrseq {
>> +		compatible =3D "mmc-pwrseq-simple";
>> +		clocks =3D <&rk808 1>;
>> +		clock-names =3D "ext_clock";
>> +		pinctrl-names =3D "default";
>> +		pinctrl-0 =3D <&wifi_enable_h>;
>> +
>> +		/*
>> +		 * On the module itself this is one of these (depending
>> +		 * on the actual card populated):
>> +		 * - SDIO_RESET_L_WL_REG_ON
>> +		 * - PDN (power down when low)
>> +		 */
>> +		reset-gpios =3D <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
>> +	};
>> +
>> +	vcc_vbus_typec0: vcc-vbus-typec0 {
>> +		compatible =3D "regulator-fixed";
>> +		regulator-name =3D "vcc_vbus_typec0";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt =3D <5000000>;
>> +		regulator-max-microvolt =3D <5000000>;
>> +	};
>> +
>> +	/*
>> +	 * should be placed inside mp8859, but not until mp8859 has
>> +	 * its own dt-binding.
>> +	 */
>> +	dc_12v: mp8859-dcdc1 {
>> +		compatible =3D "regulator-fixed";
>> +		regulator-name =3D "dc_12v";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt =3D <12000000>;
>> +		regulator-max-microvolt =3D <12000000>;
>> +		vin-supply =3D <&vcc_vbus_typec0>;
>> +	};
>> +
>> +	/* switched by pmic_sleep */
>> +	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
>> +		compatible =3D "regulator-fixed";
>> +		regulator-name =3D "vcc1v8_s3";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt =3D <1800000>;
>> +		regulator-max-microvolt =3D <1800000>;
>> +		vin-supply =3D <&vcc_1v8>;
>> +	};
>> +
>> +	vcc3v3_sys: vcc3v3-sys {
>> +		compatible =3D "regulator-fixed";
>> +		regulator-name =3D "vcc3v3_sys";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt =3D <3300000>;
>> +		regulator-max-microvolt =3D <3300000>;
>> +		vin-supply =3D <&dc_12v>;
>> +	};
>> +
>> +	/* Actually 3 regulators (host0, 1, 2) controlled by the same gpio *=
/
>> +	vcc5v0_host: vcc5v0-host-regulator {
>> +		compatible =3D "regulator-fixed";
>> +		enable-active-high;
>> +		gpio =3D <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
>> +		pinctrl-names =3D "default";
>> +		pinctrl-0 =3D <&vcc5v0_host_en &hub_rst>;
>> +		regulator-name =3D "vcc5v0_host";
>> +		regulator-always-on;
>> +		vin-supply =3D <&vcc_sys>;
>> +	};
>> +
>> +	vcc_vbus_typec1: vcc-vbus-typec1 {
>> +		compatible =3D "regulator-fixed";
>> +		enable-active-high;
>> +		gpio =3D <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
>> +		pinctrl-names =3D "default";
>> +		pinctrl-0 =3D <&vcc_vbus_typec1_en>;
>> +		regulator-name =3D "vcc_vbus_typec1";
>> +		regulator-always-on;
>> +		vin-supply =3D <&vcc_sys>;
>> +	};
>> +
>> +	vcc_sys: vcc-sys {
>> +		compatible =3D "regulator-fixed";
>> +		enable-active-high;
>> +		gpio =3D <&gpio2 RK_PA6 GPIO_ACTIVE_HIGH>;
>> +		pinctrl-names =3D "default";
>> +		pinctrl-0 =3D <&vcc_sys_en>;
>> +		regulator-name =3D "vcc_sys";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt =3D <5000000>;
>> +		regulator-max-microvolt =3D <5000000>;
>> +		vin-supply =3D <&dc_12v>;
>> +	};
>> +
>> +	vdd_log: vdd-log {
>> +		compatible =3D "pwm-regulator";
>> +		pwms =3D <&pwm2 0 25000 1>;
>> +		regulator-name =3D "vdd_log";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt =3D <800000>;
>> +		regulator-max-microvolt =3D <1400000>;
>> +		vin-supply =3D <&vcc3v3_sys>;
>> +	};
>> +};
>> +
>> +&cpu_l0 {
>> +	cpu-supply =3D <&vdd_cpu_l>;
>> +};
>> +
>> +&cpu_l1 {
>> +	cpu-supply =3D <&vdd_cpu_l>;
>> +};
>> +
>> +&cpu_l2 {
>> +	cpu-supply =3D <&vdd_cpu_l>;
>> +};
>> +
>> +&cpu_l3 {
>> +	cpu-supply =3D <&vdd_cpu_l>;
>> +};
>> +
>> +&cpu_b0 {
>> +	cpu-supply =3D <&vdd_cpu_b>;
>> +};
>> +
>> +&cpu_b1 {
>> +	cpu-supply =3D <&vdd_cpu_b>;
>> +};
>> +
>> +&emmc_phy {
>> +	status =3D "okay";
>> +};
>> +
>> +&gmac {
>> +	assigned-clocks =3D <&cru SCLK_RMII_SRC>;
>> +	assigned-clock-parents =3D <&clkin_gmac>;
>> +	clock_in_out =3D "input";
>> +	phy-supply =3D <&vcc_lan>;
>> +	phy-mode =3D "rgmii";
>> +	pinctrl-names =3D "default";
>> +	pinctrl-0 =3D <&rgmii_pins>;
>> +	snps,reset-gpio =3D <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
>> +	snps,reset-active-low;
>> +	snps,reset-delays-us =3D <0 10000 50000>;
>> +	tx_delay =3D <0x28>;
>> +	rx_delay =3D <0x11>;
>> +	status =3D "okay";
>> +};
>> +
>> +&gpu {
>> +	mali-supply =3D <&vdd_gpu>;
>> +	status =3D "okay";
>> +};
>> +
>> +&hdmi {
>> +	ddc-i2c-bus =3D <&i2c3>;
>> +	pinctrl-names =3D "default";
>> +	pinctrl-0 =3D <&hdmi_cec>;
>> +	status =3D "okay";
>> +};
>> +
>> +&i2c0 {
>> +	clock-frequency =3D <400000>;
>> +	i2c-scl-rising-time-ns =3D <168>;
>> +	i2c-scl-falling-time-ns =3D <4>;
>> +	status =3D "okay";
>> +
>> +	rk808: pmic@1b {
>> +		compatible =3D "rockchip,rk808";
>> +		reg =3D <0x1b>;
>> +		interrupt-parent =3D <&gpio1>;
>> +		interrupts =3D <21 IRQ_TYPE_LEVEL_LOW>;
>> +		#clock-cells =3D <1>;
>> +		clock-output-names =3D "xin32k", "rk808-clkout2";
>> +		pinctrl-names =3D "default";
>> +		pinctrl-0 =3D <&pmic_int_l>;
>> +		rockchip,system-power-controller;
>> +		wakeup-source;
>> +
>> +		vcc1-supply =3D <&vcc3v3_sys>;
>> +		vcc2-supply =3D <&vcc3v3_sys>;
>> +		vcc3-supply =3D <&vcc3v3_sys>;
>> +		vcc4-supply =3D <&vcc3v3_sys>;
>> +		vcc6-supply =3D <&vcc3v3_sys>;
>> +		vcc7-supply =3D <&vcc3v3_sys>;
>> +		vcc8-supply =3D <&vcc3v3_sys>;
>> +		vcc9-supply =3D <&vcc3v3_sys>;
>> +		vcc10-supply =3D <&vcc3v3_sys>;
>> +		vcc11-supply =3D <&vcc3v3_sys>;
>> +		vcc12-supply =3D <&vcc3v3_sys>;
>> +		vcc13-supply =3D <&vcc3v3_sys>;
>> +		vcc14-supply =3D <&vcc3v3_sys>;
>> +		vddio-supply =3D <&vcc_3v0>;
>> +
>> +		regulators {
>> +			vdd_center: DCDC_REG1 {
>> +				regulator-name =3D "vdd_center";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt =3D <750000>;
>> +				regulator-max-microvolt =3D <1350000>;
>> +				regulator-ramp-delay =3D <6001>;
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vdd_cpu_l: DCDC_REG2 {
>> +				regulator-name =3D "vdd_cpu_l";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt =3D <750000>;
>> +				regulator-max-microvolt =3D <1350000>;
>> +				regulator-ramp-delay =3D <6001>;
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcc_ddr: DCDC_REG3 {
>> +				regulator-name =3D "vcc_ddr";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-state-mem {
>> +					regulator-on-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcc_1v8: DCDC_REG4 {
>> +				regulator-name =3D "vcc_1v8";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt =3D <1800000>;
>> +				regulator-max-microvolt =3D <1800000>;
>> +				regulator-state-mem {
>> +					regulator-on-in-suspend;
>> +					regulator-suspend-microvolt =3D <1800000>;
>> +				};
>> +			};
>> +
>> +			vcca1v8_codec: LDO_REG1 {
>> +				regulator-name =3D "vcca1v8_codec";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt =3D <1800000>;
>> +				regulator-max-microvolt =3D <1800000>;
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcc1v8_hdmi: LDO_REG2 {
>> +				regulator-name =3D "vcc1v8_hdmi";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt =3D <1800000>;
>> +				regulator-max-microvolt =3D <1800000>;
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcc1v8_pmu: LDO_REG3 {
>> +				regulator-name =3D "vcc1v8_pmu";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt =3D <1800000>;
>> +				regulator-max-microvolt =3D <1800000>;
>> +				regulator-state-mem {
>> +					regulator-on-in-suspend;
>> +					regulator-suspend-microvolt =3D <1800000>;
>> +				};
>> +			};
>> +
>> +			vcc_sdio: LDO_REG4 {
>> +				regulator-name =3D "vcc_sdio";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt =3D <1800000>;
>> +				regulator-max-microvolt =3D <3000000>;
>> +				regulator-state-mem {
>> +					regulator-on-in-suspend;
>> +					regulator-suspend-microvolt =3D <3000000>;
>> +				};
>> +			};
>> +
>> +			vcca3v0_codec: LDO_REG5 {
>> +				regulator-name =3D "vcca3v0_codec";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt =3D <3000000>;
>> +				regulator-max-microvolt =3D <3000000>;
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcc_1v5: LDO_REG6 {
>> +				regulator-name =3D "vcc_1v5";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt =3D <1500000>;
>> +				regulator-max-microvolt =3D <1500000>;
>> +				regulator-state-mem {
>> +					regulator-on-in-suspend;
>> +					regulator-suspend-microvolt =3D <1500000>;
>> +				};
>> +			};
>> +
>> +			vcca0v9_hdmi: LDO_REG7 {
>> +				regulator-name =3D "vcca0v9_hdmi";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt =3D <900000>;
>> +				regulator-max-microvolt =3D <900000>;
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcc_3v0: LDO_REG8 {
>> +				regulator-name =3D "vcc_3v0";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt =3D <3000000>;
>> +				regulator-max-microvolt =3D <3000000>;
>> +				regulator-state-mem {
>> +					regulator-on-in-suspend;
>> +					regulator-suspend-microvolt =3D <3000000>;
>> +				};
>> +			};
>> +
>> +			vcc3v3_s3: vcc_lan: SWITCH_REG1 {
>> +				regulator-name =3D "vcc3v3_s3";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcc3v3_s0: SWITCH_REG2 {
>> +				regulator-name =3D "vcc3v3_s0";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +		};
>> +	};
>> +
>> +	vdd_cpu_b: regulator@40 {
>> +		compatible =3D "silergy,syr827";
>> +		reg =3D <0x40>;
>> +		fcs,suspend-voltage-selector =3D <1>;
>> +		pinctrl-names =3D "default";
>> +		pinctrl-0 =3D <&vsel1_gpio>;
>> +		regulator-name =3D "vdd_cpu_b";
>> +		regulator-min-microvolt =3D <712500>;
>> +		regulator-max-microvolt =3D <1500000>;
>> +		regulator-ramp-delay =3D <1000>;
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		vin-supply =3D <&vcc3v3_sys>;
>> +
>> +		regulator-state-mem {
>> +			regulator-off-in-suspend;
>> +		};
>> +	};
>> +
>> +	vdd_gpu: regulator@41 {
>> +		compatible =3D "silergy,syr828";
>> +		reg =3D <0x41>;
>> +		fcs,suspend-voltage-selector =3D <1>;
>> +		pinctrl-names =3D "default";
>> +		pinctrl-0 =3D <&vsel2_gpio>;
>> +		regulator-name =3D "vdd_gpu";
>> +		regulator-min-microvolt =3D <712500>;
>> +		regulator-max-microvolt =3D <1500000>;
>> +		regulator-ramp-delay =3D <1000>;
>> +		vin-supply =3D <&vcc3v3_sys>;
>> +
>> +		regulator-state-mem {
>> +			regulator-off-in-suspend;
>> +		};
>> +	};
>> +};
>> +
>> +&i2c1 {
>> +	i2c-scl-rising-time-ns =3D <300>;
>> +	i2c-scl-falling-time-ns =3D <15>;
>> +	status =3D "okay";
>> +};
>> +
>> +&i2c3 {
>> +	i2c-scl-rising-time-ns =3D <450>;
>> +	i2c-scl-falling-time-ns =3D <15>;
>> +	status =3D "okay";
>> +};
>> +
>> +&i2c4 {
>> +	i2c-scl-rising-time-ns =3D <600>;
>> +	i2c-scl-falling-time-ns =3D <20>;
>> +	status =3D "okay";
>> +
>> +	fusb1: usb-typec@22 {
>> +		compatible =3D "fcs,fusb302";
>> +		reg =3D <0x22>;
>> +		interrupt-parent =3D <&gpio1>;
>> +		interrupts =3D <1 IRQ_TYPE_LEVEL_LOW>;
>> +		pinctrl-names =3D "default";
>> +		pinctrl-0 =3D <&fusb1_int>;
>> +		vbus-supply =3D <&vcc_vbus_typec1>;
>> +		status =3D "okay";
>> +	};
>> +};
>> +
>> +&i2c7 {
>> +	i2c-scl-rising-time-ns =3D <600>;
>> +	i2c-scl-falling-time-ns =3D <20>;
>> +	status =3D "okay";
>> +
>> +	fusb0: usb-typec@22 {
>> +		compatible =3D "fcs,fusb302";
>> +		reg =3D <0x22>;
>> +		interrupt-parent =3D <&gpio1>;
>> +		interrupts =3D <2 IRQ_TYPE_LEVEL_LOW>;
>> +		pinctrl-names =3D "default";
>> +		pinctrl-0 =3D <&fusb0_int>;
>> +		vbus-supply =3D <&vcc_vbus_typec0>;
>> +		status =3D "okay";
>> +	};
>> +};
>> +
>> +&i2s0 {
>> +	rockchip,playback-channels =3D <8>;
>> +	rockchip,capture-channels =3D <8>;
>> +	status =3D "okay";
>> +};
>> +
>> +&i2s1 {
>> +	rockchip,playback-channels =3D <2>;
>> +	rockchip,capture-channels =3D <2>;
>> +	status =3D "okay";
>> +};
>> +
>> +&i2s2 {
>> +	status =3D "okay";
>> +};
>> +
>> +&io_domains {
>> +	audio-supply =3D <&vcca1v8_codec>;
>> +	bt656-supply =3D <&vcc_3v0>;
>> +	gpio1830-supply =3D <&vcc_3v0>;
>> +	sdmmc-supply =3D <&vcc_sdio>;
>> +	status =3D "okay";
>> +};
>> +
>> +&pmu_io_domains {
>> +	pmu1830-supply =3D <&vcc_3v0>;
>> +	status =3D "okay";
>> +};
>> +
>> +&pinctrl {
>> +	buttons {
>> +		pwr_key_l: pwr-key-l {
>> +			rockchip,pins =3D <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
>> +		};
>> +	};
>> +
>> +	lcd-panel {
>> +		lcd_panel_reset: lcd-panel-reset {
>> +			rockchip,pins =3D <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
>> +		};
>> +	};
>> +
>> +	leds {
>> +		diy_led_gpio: diy_led-gpio {
>> +			rockchip,pins =3D <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +
>> +		work_led_gpio: work_led-gpio {
>> +			rockchip,pins =3D <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +
>> +		yellow_led_gpio: yellow_led-gpio {
>> +			rockchip,pins =3D <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +	};
>> +
>> +	pmic {
>> +		vsel1_gpio: vsel1-gpio {
>> +			rockchip,pins =3D <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
>> +		};
>> +
>> +		vsel2_gpio: vsel2-gpio {
>> +			rockchip,pins =3D <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
>> +		};
>> +	};
>> +
>> +	sdio-pwrseq {
>> +		wifi_enable_h: wifi-enable-h {
>> +			rockchip,pins =3D <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +	};
>> +
>> +	pmic {
>> +		pmic_int_l: pmic-int-l {
>> +			rockchip,pins =3D <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
>> +		};
>> +	};
>> +
>> +	usb2 {
>> +		vcc5v0_host_en: vcc5v0-host-en {
>> +			rockchip,pins =3D <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +
>> +		vcc_sys_en: vcc-sys-en {
>> +			rockchip,pins =3D <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +
>> +		hub_rst: hub-rst {
>> +			rockchip,pins =3D <2 RK_PA4 RK_FUNC_GPIO &pcfg_output_high>;
>> +		};
>> +	};
>> +
>> +	usb-typec {
>> +		vcc_vbus_typec1_en: vcc-vbus-typec1-en {
>> +			rockchip,pins =3D <1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +	};
>> +
>> +	fusb30x {
>> +		fusb0_int: fusb0-int {
>> +			rockchip,pins =3D <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
>> +		};
>> +
>> +		fusb1_int: fusb1-int {
>> +			rockchip,pins =3D <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>;
>> +		};
>> +	};
>> +};
>> +
>> +&pwm0 {
>> +	status =3D "okay";
>> +};
>> +
>> +&pwm2 {
>> +	status =3D "okay";
>> +};
>> +
>> +&saradc {
>> +	vref-supply =3D <&vcca1v8_s3>;
>> +	status =3D "okay";
>> +};
>> +
>> +&sdmmc {
>> +	bus-width =3D <4>;
>> +	cap-mmc-highspeed;
>> +	cap-sd-highspeed;
>> +	cd-gpios =3D <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
>> +	disable-wp;
>> +	max-frequency =3D <150000000>;
>> +	pinctrl-names =3D "default";
>> +	pinctrl-0 =3D <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
>> +	status =3D "okay";
>> +};
>> +
>> +&sdhci {
>> +	bus-width =3D <8>;
>> +	mmc-hs400-1_8v;
>> +	mmc-hs400-enhanced-strobe;
>> +	non-removable;
>> +	status =3D "okay";
>> +};
>> +
>> +&tcphy0 {
>> +	status =3D "okay";
>> +};
>> +
>> +&tcphy1 {
>> +	status =3D "okay";
>> +};
>> +
>> +&tsadc {
>> +	/* tshut mode 0:CRU 1:GPIO */
>> +	rockchip,hw-tshut-mode =3D <1>;
>> +	/* tshut polarity 0:LOW 1:HIGH */
>> +	rockchip,hw-tshut-polarity =3D <1>;
>> +	status =3D "okay";
>> +};
>> +
>> +&u2phy0 {
>> +	status =3D "okay";
>> +
>> +	u2phy0_otg: otg-port {
>> +		phy-supply =3D <&vcc_vbus_typec0>;
>> +		status =3D "okay";
>> +	};
>> +
>> +	u2phy0_host: host-port {
>> +		phy-supply =3D <&vcc5v0_host>;
>> +		status =3D "okay";
>> +	};
>> +};
>> +
>> +&u2phy1 {
>> +	status =3D "okay";
>> +
>> +	u2phy1_otg: otg-port {
>> +		phy-supply =3D <&vcc_vbus_typec1>;
>> +		status =3D "okay";
>> +	};
>> +
>> +	u2phy1_host: host-port {
>> +		phy-supply =3D <&vcc5v0_host>;
>> +		status =3D "okay";
>> +	};
>> +};
>> +
>> +&uart0 {
>> +	pinctrl-names =3D "default";
>> +	pinctrl-0 =3D <&uart0_xfer &uart0_cts>;
>> +	status =3D "okay";
>> +};
>> +
>> +&uart2 {
>> +	status =3D "okay";
>> +};
>> +
>> +&usb_host0_ehci {
>> +	status =3D "okay";
>> +};
>> +
>> +&usb_host0_ohci {
>> +	status =3D "okay";
>> +};
>> +
>> +&usb_host1_ehci {
>> +	status =3D "okay";
>> +};
>> +
>> +&usb_host1_ohci {
>> +	status =3D "okay";
>> +};
>> +
>> +&usbdrd3_0 {
>> +	status =3D "okay";
>> +};
>> +
>> +&usbdrd_dwc3_0 {
>> +	status =3D "okay";
>> +};
>> +
>> +&usbdrd3_1 {
>> +	status =3D "okay";
>> +};
>> +
>> +&usbdrd_dwc3_1 {
>> +	status =3D "okay";
>> +	dr_mode =3D "host";
>> +};
>> +
>> +&vopb {
>> +	status =3D "okay";
>> +};
>> +
>> +&vopb_mmu {
>> +	status =3D "okay";
>> +};
>> +
>> +&vopl {
>> +	status =3D "okay";
>> +};
>> +
>> +&vopl_mmu {
>> +	status =3D "okay";
>> +};
>>=20
>=20
>=20
>=20
>=20

Gru=C3=9F,
--=20
Markus Reichl


--xYVs8VYWJTiUO9VromQ7ohzi6clFiY6Mq--

--66dJ7a7eEZCbQSLhvv29mchtfWsermLuO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCAAdFiEEVKeIeBh0ZWJOldzLOiXeDmsa/bIFAl3Fh08ACgkQOiXeDmsa
/bK2BwwAlb3wQIKCcBUMH+hFIlcRjX9MpJrqb4WRvTLai21N7M2nevwv247nF3H4
ha6+qYHiFnLEwo2pm6txiSED4apNu6Q7bf8Em+8i6DR6muCcshDhjR6Uxe8ugHO1
ZBvxufRxOQ6w9krLB06n3Pde2/YJtla9VxR5e8FwhYZ6+5n+SPVKdMuwbAMcYZGd
Abv5rMRKex+KNu59YNaBgs7QlcqHY/dONH+qVfoDhKN0HxaEilzu4nquuTASK9Ft
vSYGrtcW4uv2naZbd3x3dhjE2Y/Muhd1Ook7aLzImCVlGYgzahBkOJXNwobPOeCG
dPuSMRtL5m903R6/2Fj6NRFqAPKBymYTFZLVeRSRrY/U8sip//btgtHuZeP85F8R
3vcwTSXogKkqp22hzSYqr+RPPzHH0XxSQ4To3oeY4ots2iPVmllppfMUuEfBEOFB
YBNjcMGiT0rq6RJwutudbc6FCuPPZ7jrhZuuBkX9+v/Xko7o81YMn35d70wSLAv+
Mq5RRqCm
=MzOx
-----END PGP SIGNATURE-----

--66dJ7a7eEZCbQSLhvv29mchtfWsermLuO--


--===============0749193525850463235==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0749193525850463235==--

