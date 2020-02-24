Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A66516A68B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 13:57:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQCXtlR2p4nv6g7pac7GyeagHD88Np76ahLUpbE4UtA=; b=RBPzRXACWCgalk
	gGpJjZvTXqnaAaz3QJW5e3LeiFRzx4yCtkJBI1Zjm7BBJTupw0FrrU+f9hipA4dVM+SrU2jat7end
	3kFyh7Q25C+Y4IB7y7R9fOfpuNh8BZmaGhuZzOXmgQhKVqPo3jWe3NsmB/46tfWtHckpUOIC6GOBh
	WUkZhjX7ZTETstQsQdQlVQLV2KlJDXa9OR2Kn73hwGymAOtW632UhG2LW+6aIiKeoJT0gVdBHbfce
	6Z6VzzRHBtKi8hchxy+z8a1LiHEPX/DooUC7hC13H9RMy6zNPv0dyKwKsYRX6uEtso3XdB03UZ5h0
	ihGUq0zlvVpU8JTTmiDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6DIL-0008Jc-5x; Mon, 24 Feb 2020 12:57:09 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6DI9-0008Ig-4g
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 12:57:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582549013; bh=BKCI8jE/h0mbYj1I1h3gTMrRFB9556T/0Ywsh9klNXY=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=gEfxScBAodEdGZb23KPfYvvKtFuFzKAdUhU+U4xvV3WyafIS6qhCmoTjpFypL/Est
 vEf8hV6pA05VXllwuMwQVfvVoPYjypSHNds6K9595GFVoqnycePm3eAwbAgblz9p2c
 J5iOAbpw4D6xLztcQJdiwu3fNXQwDie62oABasUw=
Date: Mon, 24 Feb 2020 13:56:52 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 3/3] arm64: dts: allwinner: Add initial support for
 Pine64 PinePhone
Message-ID: <20200224125652.pd666ltpvdjctvsd@core.my.home>
Mail-Followup-To: Maxime Ripard <maxime@cerno.tech>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe@baylibre.com>,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 Samuel Holland <samuel@sholland.org>,
 Martijn Braam <martijn@brixit.nl>, Luca Weiss <luca@z3ntu.xyz>,
 Bhushan Shah <bshah@kde.org>, Icenowy Zheng <icenowy@aosc.io>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200223172916.843379-1-megous@megous.com>
 <20200223172916.843379-4-megous@megous.com>
 <20200224110027.ry3v7ms76hwbdn22@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224110027.ry3v7ms76hwbdn22@gilmour.lan>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_045657_688976_59001E6F 
X-CRM114-Status: GOOD (  33.72  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 URIBL_RHS_DOB          Contains an URI of a new domain (Day Old Bread)
 [URIs: bootlin.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Luca Weiss <luca@z3ntu.xyz>,
 linux-arm-kernel@lists.infradead.org, Samuel Holland <samuel@sholland.org>,
 Bhushan Shah <bshah@kde.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, Martijn Braam <martijn@brixit.nl>,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe@baylibre.com>, devicetree@vger.kernel.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Maxime,

On Mon, Feb 24, 2020 at 12:00:27PM +0100, Maxime Ripard wrote:
> Hi,
> 
> On Sun, Feb 23, 2020 at 06:29:16PM +0100, Ondrej Jirman wrote:
> > At them moment PinePhone comes in two slightly incompatible variants:
> >
> > - 1.0: Early Developer Batch
> > - 1.1: Braveheart Batch
> >
> > There will be at least one more incompatible variant in the very near
> > future, so let's start by sharing the dtsi among multiple variants,
> > right away, even though the HW description doesn't yet include the
> > different bits.
> >
> > This is a basic DT that includes only features that are already
> > supported by mainline drivers.
> 
> What are those incompatibilities? It's not really obvious from your
> patch.

The changes are listed here:

https://wiki.pine64.org/index.php/PinePhone_v1.1_-_Braveheart#Changes_from_1.0

Substantial ones are:

2. Swap PC3 to FLASH_EN and PD24 to FLASH_TRIGOUT, where previously they were reversed
5. Set the EG25G's PWRKEY on by default (see resistor R1526)
6. Add R630 resistor location, populate with 0K by default. Allows adjusting to
   different battery thermistors in case this is not possible in software.

The incompatiblilities between 1.1 and 1.2 will be more extensive:

https://wiki.pine64.org/index.php/PinePhone/Power_Management#Suggested_GPIO_Hardware_Changes

> > Co-developed-by: Samuel Holland <samuel@sholland.org>
> > Signed-off-by: Samuel Holland <samuel@sholland.org>
> > Co-developed-by: Martijn Braam <martijn@brixit.nl>
> > Signed-off-by: Martijn Braam <martijn@brixit.nl>
> > Co-developed-by: Luca Weiss <luca@z3ntu.xyz>
> > Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> > Signed-off-by: Bhushan Shah <bshah@kde.org>
> > Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > ---
> >  arch/arm64/boot/dts/allwinner/Makefile        |   2 +
> >  .../allwinner/sun50i-a64-pinephone-1.0.dts    |  11 +
> >  .../allwinner/sun50i-a64-pinephone-1.1.dts    |  11 +
> >  .../dts/allwinner/sun50i-a64-pinephone.dtsi   | 385 ++++++++++++++++++
> >  4 files changed, 409 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.0.dts
> >  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.1.dts
> >  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
> > index cf4f78617c3f3..79ca263672c38 100644
> > --- a/arch/arm64/boot/dts/allwinner/Makefile
> > +++ b/arch/arm64/boot/dts/allwinner/Makefile
> > @@ -9,6 +9,8 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-orangepi-win.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pine64-lts.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pine64-plus.dtb sun50i-a64-pine64.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pinebook.dtb
> > +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pinephone-1.0.dtb
> > +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pinephone-1.1.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-sopine-baseboard.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-teres-i.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-bananapi-m2-plus.dtb
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.0.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.0.dts
> > new file mode 100644
> > index 0000000000000..0c42272106afa
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.0.dts
> > @@ -0,0 +1,11 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +// Copyright (C) 2020 Ondrej Jirman <megous@megous.com>
> 
> Given the list of authors, surely you're not the sole copyright owner
> here?

Yes, I made this and the 1.1 dts file by myself. It's not really a meaningful
contribution, since at the moment it's basically empty. I suppose to have
a license, the file requires some author.

Collaborative work is mostly in the dtsi.

> > +/dts-v1/;
> > +
> > +#include "sun50i-a64-pinephone.dtsi"
> > +
> > +/ {
> > +	model = "Pine64 PinePhone Developer Batch (1.0)";
> > +	compatible = "pine64,pinephone-1.0", "allwinner,sun50i-a64";
> > +};
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.1.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.1.dts
> > new file mode 100644
> > index 0000000000000..06a775c41664b
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.1.dts
> > @@ -0,0 +1,11 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +// Copyright (C) 2020 Ondrej Jirman <megous@megous.com>
> > +
> > +/dts-v1/;
> > +
> > +#include "sun50i-a64-pinephone.dtsi"
> > +
> > +/ {
> > +	model = "Pine64 PinePhone Braveheart (1.1)";
> > +	compatible = "pine64,pinephone-1.1", "allwinner,sun50i-a64";
> > +};
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
> > new file mode 100644
> > index 0000000000000..d0cf21d82c9e9
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
> > @@ -0,0 +1,385 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +// Copyright (C) 2019 Icenowy Zheng <icenowy@aosc.xyz>
> > +// Copyright (C) 2020 Ondrej Jirman <megous@megous.com>

For the record. Originally I took this file from:

https://gitlab.com/pine64-org/linux/commits/pine64-kernel-5.4.y
https://gitlab.com/pine64-org/linux/-/blob/pine64-kernel-5.4.y/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dts

about a month ago, and kept working on it in my trees for 5.5 and 5.6:

https://megous.com/git/linux/log/?h=pp-5.5
https://megous.com/git/linux/log/?h=pp-5.6

Adding support for using multiple cameras, bugfixing, and integrating work from
others, and now doing the legwork to strip the more complete DTS and make it
into a mainlainable state, so that collaboration can continue in the mainline
tree.

AFAIK, at this point (after stripdown), most of the work comes from Icenowy.
With some people contributing "smaller" things. I say "smaller" in quotes, since
I know that there can be a weekend of debugging behind changing a 2-3 lines, and
don't want to minimize anyone's contribution.

IANAL and I don't know what's entirely apropriate to do here. I've disucssed
this briefly on the IRC with involved people (that are also CCed in this
series), and there was a suggestion to adding a bunch of Cob/SoB tags, based on
some even older DTS file for dontbeevil (developer kit for PinePhone), that the
Icenowy's file was based on. So I did.

The more copyright holders the better, I guess. :) So if CCed people want to
be added here, and made the contribution to the present file, please state
so for the record again here on the mailing list, and I'll add you to the
header, or anywhere you wish.

> > +#include "sun50i-a64.dtsi"
> > +#include "sun50i-a64-cpu-opp.dtsi"
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/input.h>
> > +#include <dt-bindings/leds/common.h>
> > +#include <dt-bindings/pwm/pwm.h>
> > +
> > +/ {
> > +	aliases {
> > +		serial0 = &uart0;
> > +	};
> > +
> > +	chosen {
> > +		stdout-path = "serial0:115200n8";
> > +	};
> > +
> > +	leds {
> > +		compatible = "gpio-leds";
> > +
> > +		blue {
> > +			function = LED_FUNCTION_INDICATOR;
> > +			function-enumerator = <1>;
> > +			color = <LED_COLOR_ID_BLUE>;
> > +			gpios = <&pio 3 20 GPIO_ACTIVE_HIGH>; /* PD20 */
> > +		};
> > +
> > +		green {
> > +			function = LED_FUNCTION_INDICATOR;
> > +			function-enumerator = <2>;
> > +			color = <LED_COLOR_ID_GREEN>;
> > +			gpios = <&pio 3 18 GPIO_ACTIVE_HIGH>; /* PD18 */
> > +		};
> > +
> > +		red {
> > +			function = LED_FUNCTION_INDICATOR;
> > +			function-enumerator = <3>;
> > +			color = <LED_COLOR_ID_RED>;
> > +			gpios = <&pio 3 19 GPIO_ACTIVE_HIGH>; /* PD19 */
> > +		};
> > +	};
> 
> LEDs should be named using the $color:$board:$usage pattern

Do you mean using a label? It seems label is deprecated, and bindings should
start using function/function-enumerator/color properties now:

https://elixir.bootlin.com/linux/v5.6-rc2/source/Documentation/devicetree/bindings/leds/common.yaml#L57

It doesn't look like the new bindings are used much, yet. I've found:

https://elixir.bootlin.com/linux/v5.6-rc2/source/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts

and

https://elixir.bootlin.com/linux/v5.6-rc2/source/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi#L96

On PinePhone these are indicator leds with no pre-defined meaning, for
use by the apps to indicate things like a new SMS, or missed call, or
whatever people desire.

> > +
> > +	speaker_amp: audio-amplifier {
> > +		compatible = "simple-audio-amplifier";
> > +		enable-gpios = <&pio 2 7 GPIO_ACTIVE_HIGH>; /* PC7 */
> > +		sound-name-prefix = "Speaker Amp";
> > +	};
> > +
> > +	vibrator {
> > +		compatible = "gpio-vibrator";
> > +		enable-gpios = <&pio 3 2 GPIO_ACTIVE_HIGH>; /* PD2 */
> > +		vcc-supply = <&reg_dcdc1>;
> > +	};
> > +};
> > +
> > +&codec {
> > +	status = "okay";
> > +};
> > +
> > +&codec_analog {
> > +	cpvdd-supply = <&reg_eldo1>;
> > +	status = "okay";
> > +};
> > +
> > +&cpu0 {
> > +	cpu-supply = <&reg_dcdc2>;
> > +};
> > +
> > +&cpu1 {
> > +	cpu-supply = <&reg_dcdc2>;
> > +};
> > +
> > +&cpu2 {
> > +	cpu-supply = <&reg_dcdc2>;
> > +};
> > +
> > +&cpu3 {
> > +	cpu-supply = <&reg_dcdc2>;
> > +};
> > +
> > +&dai {
> > +	status = "okay";
> > +};
> > +
> > +&ehci0 {
> > +	status = "okay";
> > +};
> > +
> > +&ehci1 {
> > +	status = "okay";
> > +};
> > +
> > +&i2c1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&i2c1_pins>;
> 
> That's the default

Ok.

> > +	status = "okay";
> > +
> > +	/* Magnetometer */
> > +	lis3mdl@1e {
> > +		compatible = "st,lis3mdl-magn";
> > +		reg = <0x1e>;
> > +		vdd-supply = <&reg_dldo1>;
> > +		vddio-supply = <&reg_dldo1>;
> > +	};
> > +
> > +	/* Accelerometer/gyroscope */
> > +	mpu6050@68 {
> > +		compatible = "invensense,mpu6050";
> > +		reg = <0x68>;
> > +		interrupt-parent = <&pio>;
> > +		interrupts = <7 5 IRQ_TYPE_EDGE_RISING>; /* PH5 */
> > +		vdd-supply = <&reg_dldo1>;
> > +		vddio-supply = <&reg_dldo1>;
> > +	};
> > +};
> > +
> > +/* Connected to pogo pins */
> > +&i2c2 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&i2c2_pins>;
> 
> That's the default as well

Actually it is not. There's not i2c2_pins at all in the mainline yet.

> > +	status = "okay";
> > +};
> 
> And I'm not sure what the pogo pins are?

It's a common name for spring-loaded pin headers that can be used to connect the
phone to auxiliary devices. 6 pins are visible on this image near the top:

https://wiki.pine64.org/index.php/File:PinePhone_switches.jpeg

> > +
> > +&lradc {
> > +	vref-supply = <&reg_aldo3>;
> > +	status = "okay";
> > +
> > +	button-200 {
> > +		label = "Volume Up";
> > +		linux,code = <KEY_VOLUMEUP>;
> > +		channel = <0>;
> > +		voltage = <200000>;
> > +	};
> > +
> > +	button-400 {
> > +		label = "Volume Down";
> > +		linux,code = <KEY_VOLUMEDOWN>;
> > +		channel = <0>;
> > +		voltage = <400000>;
> > +	};
> > +};
> > +
> > +&mmc0 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&mmc0_pins>;
> 
> That's the default

Ok.

> > +	vmmc-supply = <&reg_dcdc1>;
> > +	vqmmc-supply = <&reg_dcdc1>;
> > +	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 */
> > +	disable-wp;
> > +	bus-width = <4>;
> > +	status = "okay";
> > +};
> > +
> > +&mmc2 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&mmc2_pins>;
> 
> Ditto

Will remove.

> > +	vmmc-supply = <&reg_dcdc1>;
> > +	vqmmc-supply = <&reg_dcdc1>;
> > +	bus-width = <8>;
> > +	non-removable;
> > +	cap-mmc-hw-reset;
> > +	status = "okay";
> > +};
> > +
> > +&ohci0 {
> > +	status = "okay";
> > +};
> > +
> > +&ohci1 {
> > +	status = "okay";
> > +};
> > +
> > +&pio {
> > +	vcc-pb-supply = <&reg_dcdc1>;
> > +	vcc-pc-supply = <&reg_dcdc1>;
> > +	vcc-pd-supply = <&reg_dcdc1>;
> > +	vcc-pe-supply = <&reg_aldo1>;
> > +	vcc-pf-supply = <&reg_dcdc1>;
> > +	vcc-pg-supply = <&reg_dldo4>;
> > +	vcc-ph-supply = <&reg_dcdc1>;
> > +};
> > +
> > +&r_pio {
> > +	/*
> > +	 * FIXME: We can't add that supply for now since it would
> > +	 * create a circular dependency between pinctrl, the regulator
> > +	 * and the RSB Bus.
> > +	 *
> > +	 * vcc-pl-supply = <&reg_aldo2>;
> > +	 */
> > +};
> > +
> > +&r_rsb {
> > +	status = "okay";
> > +
> > +	axp803: pmic@3a3 {
> > +		compatible = "x-powers,axp803";
> > +		reg = <0x3a3>;
> > +		interrupt-parent = <&r_intc>;
> > +		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
> > +	};
> > +};
> > +
> > +#include "axp803.dtsi"
> > +
> > +&ac_power_supply {
> > +	status = "okay";
> > +};
> > +
> > +&battery_power_supply {
> > +	status = "okay";
> > +};
> > +
> > +&reg_aldo1 {
> > +	regulator-min-microvolt = <1800000>;
> > +	regulator-max-microvolt = <1800000>;
> > +	regulator-name = "dovdd-csi";
> > +};
> > +
> > +&reg_aldo2 {
> > +	regulator-always-on;
> > +	regulator-min-microvolt = <1800000>;
> > +	regulator-max-microvolt = <1800000>;
> > +	regulator-name = "vcc-pl";
> > +};
> > +
> > +&reg_aldo3 {
> > +	regulator-always-on;
> > +	regulator-min-microvolt = <2700000>;
> > +	regulator-max-microvolt = <3300000>;
> > +	regulator-name = "vcc-pll-avcc";
> > +};
> > +
> > +&reg_dcdc1 {
> > +	regulator-always-on;
> > +	regulator-min-microvolt = <3300000>;
> > +	regulator-max-microvolt = <3300000>;
> > +	regulator-name = "vcc-3v3";
> > +};
> > +
> > +&reg_dcdc2 {
> > +	regulator-always-on;
> > +	regulator-min-microvolt = <1000000>;
> > +	regulator-max-microvolt = <1300000>;
> > +	regulator-name = "vdd-cpux";
> > +};
> > +
> > +/* DCDC3 is polyphased with DCDC2 */
> > +
> > +&reg_dcdc5 {
> > +	regulator-always-on;
> > +	regulator-min-microvolt = <1200000>;
> > +	regulator-max-microvolt = <1200000>;
> > +	regulator-name = "vcc-dram";
> > +};
> > +
> > +&reg_dcdc6 {
> > +	regulator-always-on;
> > +	regulator-min-microvolt = <1100000>;
> > +	regulator-max-microvolt = <1100000>;
> > +	regulator-name = "vdd-sys";
> > +};
> > +
> > +&reg_dldo1 {
> > +	regulator-min-microvolt = <3300000>;
> > +	regulator-max-microvolt = <3300000>;
> > +	regulator-name = "vcc-dsi-sensor";
> > +};
> > +
> > +&reg_dldo2 {
> > +	regulator-min-microvolt = <1800000>;
> > +	regulator-max-microvolt = <1800000>;
> > +	regulator-name = "vcc-mipi-io";
> > +};
> > +
> > +&reg_dldo3 {
> > +	regulator-min-microvolt = <2800000>;
> > +	regulator-max-microvolt = <2800000>;
> > +	regulator-name = "avdd-csi";
> > +};
> > +
> > +&reg_dldo4 {
> > +	regulator-min-microvolt = <1800000>;
> > +	regulator-max-microvolt = <3300000>;
> > +	regulator-name = "vcc-wifi-io";
> > +};
> > +
> > +&reg_eldo1 {
> > +	regulator-always-on;
> > +	regulator-min-microvolt = <1800000>;
> > +	regulator-max-microvolt = <1800000>;
> > +	regulator-name = "vcc-lpddr";
> > +};
> > +
> > +&reg_eldo3 {
> > +	regulator-min-microvolt = <1800000>;
> > +	regulator-max-microvolt = <1800000>;
> > +	regulator-name = "dvdd-1v8-csi";
> > +};
> > +
> > +&reg_fldo1 {
> > +	regulator-min-microvolt = <1200000>;
> > +	regulator-max-microvolt = <1200000>;
> > +	regulator-name = "vcc-1v2-hsic";
> > +};
> > +
> > +&reg_fldo2 {
> > +	regulator-always-on;
> > +	regulator-min-microvolt = <1100000>;
> > +	regulator-max-microvolt = <1100000>;
> > +	regulator-name = "vdd-cpus";
> > +};
> > +
> > +&reg_ldo_io0 {
> > +	regulator-min-microvolt = <3300000>;
> > +	regulator-max-microvolt = <3300000>;
> > +	regulator-name = "vcc-lcd-ctp-stk";
> > +	status = "okay";
> > +};
> > +
> > +&reg_ldo_io1 {
> > +	regulator-min-microvolt = <1800000>;
> > +	regulator-max-microvolt = <1800000>;
> > +	regulator-name = "vcc-1v8-typec";
> > +	status = "okay";
> > +};
> > +
> > +&reg_rtc_ldo {
> > +	regulator-name = "vcc-rtc";
> > +};
> > +
> > +&sound {
> > +	status = "okay";
> > +	simple-audio-card,aux-devs = <&codec_analog>, <&speaker_amp>;
> > +	simple-audio-card,widgets = "Microphone", "Headset Microphone",
> > +				    "Microphone", "Internal Microphone",
> > +				    "Headphone", "Headphone Jack",
> > +				    "Speaker", "Internal Earpiece",
> > +				    "Speaker", "Internal Speaker";
> > +	simple-audio-card,routing =
> > +			"Headphone Jack", "HP",
> > +			"Internal Earpiece", "EARPIECE",
> > +			"Internal Speaker", "Speaker Amp OUTL",
> > +			"Internal Speaker", "Speaker Amp OUTR",
> > +			"Speaker Amp INL", "LINEOUT",
> > +			"Speaker Amp INR", "LINEOUT",
> > +			"Left DAC", "AIF1 Slot 0 Left",
> > +			"Right DAC", "AIF1 Slot 0 Right",
> > +			"AIF1 Slot 0 Left ADC", "Left ADC",
> > +			"AIF1 Slot 0 Right ADC", "Right ADC",
> > +			"Internal Microphone", "MBIAS",
> > +			"MIC1", "Internal Microphone",
> > +			"Headset Microphone", "HBIAS",
> > +			"MIC2", "Headset Microphone";
> > +};
> > +
> > +&uart0 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&uart0_pb_pins>;
> > +	status = "okay";
> > +};
> > +
> > +/* Connected to the modem */
> > +&uart3 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&uart3_pins>;
> 
> That's the default too, and I guess you'd need hardware flow control
> here?

Hardware flow control is routed badly on the board, and can't be used at the
moment on any of the submitted versions. It may be added in 1.2.

> > +	status = "okay";
> > +};
> > +
> > +&usb_otg {
> > +	dr_mode = "peripheral";
> > +	status = "okay";
> > +};
> > +
> > +&usb_power_supply {
> > +	status = "okay";
> > +};
> > +
> > +&usbphy {
> > +	status = "okay";
> > +};
> > --
> > 2.25.1
> >
> 
> Looks good otherwise, thanks!
> Maxime

Thank you for the review. :)

regards,
	o.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
