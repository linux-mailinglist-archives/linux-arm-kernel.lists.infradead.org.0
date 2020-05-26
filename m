Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8851B3B90
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 11:38:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=khg6nbMGoNzIidX0fzkNgWhCYfAM4Z3kKIJCqNRmOpk=; b=QByLLTNZHTCu2+
	Z5mJAldYUFhq+AAiPO++6xZV+nFLPVI01z3jW5wxg8W4rKYp9bOS9VcznJks+NVRk4Hi8SOtBqCzx
	lEL3Ezu5HPwtGSkZxETUgPpBCVumpEY41M+AfYMe3SXVNEmWP8lqK2zK4IyW3+MRQW2a8cHXDiTIe
	HE8b7kYdKKYACEkY8vk+STW6wnwjak8a2ZBFm6L++qXWW06ETDys/W1QuxXDDEOyFwFUAyEE9fhSR
	SuY50nHzoPXX+BzLGfX/CKc4VxXhV82IMQNFkooTAVwtW6VLNgcpKJo+6/T2AHI+DK7t3p5hr+yzE
	qNg6RbnyjhsKmFoK10sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRBpk-0000oE-Bc; Wed, 22 Apr 2020 09:38:20 +0000
Received: from protonic.xs4all.nl ([83.163.252.89] helo=protonic.nl)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRBpZ-0000nI-TB
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 09:38:12 +0000
Received: from erd988 (erd988.prtnl [192.168.224.30])
 by sparta.prtnl (Postfix) with ESMTP id 3DC5F44A003F;
 Wed, 22 Apr 2020 11:38:03 +0200 (CEST)
Date: Wed, 22 Apr 2020 11:38:02 +0200
From: David Jander <david@protonic.nl>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v6 3/5] ARM: dts: add Protonic VT7 board
Message-ID: <20200422113802.5961d776@erd988>
In-Reply-To: <20200422070441.5hvozjvcssanqnjb@pengutronix.de>
References: <20200421124057.19238-1-o.rempel@pengutronix.de>
 <20200421124057.19238-4-o.rempel@pengutronix.de>
 <20200422070441.5hvozjvcssanqnjb@pengutronix.de>
Organization: Protonic Holland
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_023810_279195_74C67000 
X-CRM114-Status: GOOD (  29.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [83.163.252.89 listed in list.dnswl.org]
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
 Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
 Robin van der Gracht <robin@protonic.nl>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Oleksij Rempel <o.rempel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Marco,

Just chiming in with the answers I know most of...

On Wed, 22 Apr 2020 09:04:41 +0200
Marco Felsch <m.felsch@pengutronix.de> wrote:

> Hi Oleksij,
> 
> On 20-04-21 14:40, Oleksij Rempel wrote:
> > The Protonic VT7 is a mid-class ISObus Virtual Terminal with a 7 inch
> > touchscreen display.
> > 
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> > Signed-off-by: David Jander <david@protonic.nl>
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  arch/arm/boot/dts/Makefile          |   1 +
> >  arch/arm/boot/dts/imx6dl-prtvt7.dts | 472 ++++++++++++++++++++++++++++
> >  2 files changed, 473 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/imx6dl-prtvt7.dts
> > 
> > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > index 8ce744f1cbfc9..66ee89e7929f9 100644
> > --- a/arch/arm/boot/dts/Makefile
> > +++ b/arch/arm/boot/dts/Makefile
> > @@ -450,6 +450,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
> >  	imx6dl-pico-hobbit.dtb \
> >  	imx6dl-pico-nymph.dtb \
> >  	imx6dl-pico-pi.dtb \
> > +	imx6dl-prtvt7.dtb \
> >  	imx6dl-rex-basic.dtb \
> >  	imx6dl-riotboard.dtb \
> >  	imx6dl-sabreauto.dtb \
> > diff --git a/arch/arm/boot/dts/imx6dl-prtvt7.dts b/arch/arm/boot/dts/imx6dl-prtvt7.dts
> > new file mode 100644
> > index 0000000000000..a948c7c6eb3ce
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/imx6dl-prtvt7.dts
> > @@ -0,0 +1,472 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> > +/*
> > + * Copyright (c) 2016 Protonic Holland
> > + */
> > +
> > +/dts-v1/;
> > +#include "imx6dl.dtsi"
> > +#include "imx6qdl-prti6q.dtsi"  
> 
> Should we name it "imx6qdl-prt-common.dtsi"? Still don't like that this
> dtsi comes from the 1st commit rather then having a single commit adding
> the .dtsi but that is only my opinion.

Isn't the extension ".dtsi" implying "common" already?
This file is strictly common to the "prti6q" family of products, not to all
Protonic products, so the name you suggest would be potentially misleading I
guess. Maybe we can just leave it like this?

> > +#include <dt-bindings/input/input.h>
> > +#include <dt-bindings/leds/common.h>
> > +#include <dt-bindings/sound/fsl-imx-audmux.h>
> > +
> > +/ {
> > +	model = "Protonic VT7";
> > +	compatible = "prt,prtvt7", "fsl,imx6dl";
> > +
> > +	memory@10000000 {
> > +		device_type = "memory";
> > +		reg = <0x10000000 0x20000000>;
> > +	};
> > +
> > +	backlight_lcd: backlight-lcd {
> > +		compatible = "pwm-backlight";
> > +		pwms = <&pwm1 0 500000>;
> > +		brightness-levels = <0 20 81 248 1000>;
> > +		default-brightness-level = <20>;
> > +		num-interpolated-steps = <21>;  
> 
> Do you need this fine granularity here? Just asking ;)

Yes. These amount of steps are needed.

> > +		power-supply = <&reg_12v_bl>;
> > +		enable-gpios = <&gpio4 28 GPIO_ACTIVE_HIGH>;  
> 
> Where gets this gpio muxed?

In imx6qdl-prti6q.dtsi

> > +	};
> > +
> > +	display {
> > +		compatible = "fsl,imx-parallel-display";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_ipu1_disp>;
> > +		#address-cells = <1>;
> > +		#size-cells = <0>;
> > +		interface-pix-fmt = "rgb24";
> > +		status = "okay";  
> 
> Status not needed here.

Ack.

> > +
> > +		port@0 {
> > +			reg = <0>;
> > +
> > +			display_in: endpoint {
> > +				remote-endpoint = <&ipu1_di0_disp0>;
> > +			};
> > +		};
> > +
> > +		port@1 {
> > +			reg = <1>;
> > +
> > +			display_out: endpoint {
> > +				remote-endpoint = <&panel_in>;
> > +			};
> > +		};
> > +	};
> > +
> > +	keys {
> > +		compatible = "gpio-keys";
> > +		autorepeat;
> > +
> > +		esc {
> > +			label = "GPIO Key ESC";
> > +			linux,code = <KEY_ESC>;
> > +			gpios = <&gpio_pca 0 GPIO_ACTIVE_LOW>;
> > +		};
> > +
> > +		up {
> > +			label = "GPIO Key UP";
> > +			linux,code = <KEY_UP>;
> > +			gpios = <&gpio_pca 1 GPIO_ACTIVE_LOW>;
> > +		};
> > +
> > +		down {
> > +			label = "GPIO Key DOWN";
> > +			linux,code = <KEY_DOWN>;
> > +			gpios = <&gpio_pca 4 GPIO_ACTIVE_LOW>;
> > +		};
> > +
> > +		enter {
> > +			label = "GPIO Key Enter";
> > +			linux,code = <KEY_ENTER>;
> > +			gpios = <&gpio_pca 3 GPIO_ACTIVE_LOW>;
> > +		};
> > +
> > +		cycle {
> > +			label = "GPIO Key CYCLE";
> > +			linux,code = <KEY_CYCLEWINDOWS>;
> > +			gpios = <&gpio_pca 2 GPIO_ACTIVE_LOW>;
> > +		};
> > +
> > +		f1 {
> > +			label = "GPIO Key F1";
> > +			linux,code = <KEY_F1>;
> > +			gpios = <&gpio_pca 14 GPIO_ACTIVE_LOW>;
> > +		};
> > +
> > +		f2 {
> > +			label = "GPIO Key F2";
> > +			linux,code = <KEY_F2>;
> > +			gpios = <&gpio_pca 13 GPIO_ACTIVE_LOW>;
> > +		};
> > +
> > +		f3 {
> > +			label = "GPIO Key F3";
> > +			linux,code = <KEY_F3>;
> > +			gpios = <&gpio_pca 12 GPIO_ACTIVE_LOW>;
> > +		};
> > +
> > +		f4 {
> > +			label = "GPIO Key F4";
> > +			linux,code = <KEY_F4>;
> > +			gpios = <&gpio_pca 11 GPIO_ACTIVE_LOW>;
> > +		};
> > +
> > +		f5 {
> > +			label = "GPIO Key F5";
> > +			linux,code = <KEY_F5>;
> > +			gpios = <&gpio_pca 10 GPIO_ACTIVE_LOW>;
> > +		};
> > +
> > +		f6 {
> > +			label = "GPIO Key F6";
> > +			linux,code = <KEY_F6>;
> > +			gpios = <&gpio_pca 5 GPIO_ACTIVE_LOW>;
> > +		};
> > +
> > +		f7 {
> > +			label = "GPIO Key F7";
> > +			linux,code = <KEY_F7>;
> > +			gpios = <&gpio_pca 6 GPIO_ACTIVE_LOW>;
> > +		};
> > +
> > +		f8 {
> > +			label = "GPIO Key F8";
> > +			linux,code = <KEY_F8>;
> > +			gpios = <&gpio_pca 7 GPIO_ACTIVE_LOW>;
> > +		};
> > +
> > +		f9 {
> > +			label = "GPIO Key F9";
> > +			linux,code = <KEY_F9>;
> > +			gpios = <&gpio_pca 8 GPIO_ACTIVE_LOW>;
> > +		};
> > +
> > +		f10 {
> > +			label = "GPIO Key F10";
> > +			linux,code = <KEY_F10>;
> > +			gpios = <&gpio_pca 9 GPIO_ACTIVE_LOW>;
> > +		};  
> 
> Don't know if there is a common rule if the gpio key should be sorted
> alphabetical too.
> 
> > +	};
> > +
> > +	leds {
> > +		compatible = "gpio-leds";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_leds>;
> > +
> > +		led-debug0 {
> > +			function = LED_FUNCTION_STATUS;
> > +			gpios = <&gpio1 8 GPIO_ACTIVE_HIGH>;
> > +			linux,default-trigger = "heartbeat";
> > +		};
> > +	};
> > +
> > +	panel {
> > +		compatible = "innolux,g070y2t0ec";  
> 
> Did you send a patch for this panel?

Good catch. Yes, there is a patch for this panel. Maybe that patch should come
first, Oleksij?

> > +		backlight = <&backlight_lcd>;
> > +
> > +		port {
> > +			panel_in: endpoint {
> > +				remote-endpoint = <&display_out>;
> > +			};
> > +		};
> > +	};
> > +
> > +	reg_12v_bl: regulator-bl-12v {  
> 
> Nit, it's common to allign the pahndle and the name, so either:
> 
> reg_12v_bl -> regulator-12v-bl
> 
> or
> 
> reg_bl_12v -> regulator-bl-12v
> 
> also it would be cool to keep the first digit after the point like you
> did it for the 1.8 regulator. So the result would be:
> 
> reg_12v0_bl -> regulator-12v0-bl
> 
> or
> 
> reg_bl_12v0 -> regulator-bl-12v0

I'm not strictly against it, but isn't the implicit rule "All significant
digits, with a minimum of 2" even better here? Just saying... 12000v0 would
look a bit awkward ;-)

> > +		compatible = "regulator-fixed";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_reg_12v_bl>;
> > +		regulator-name = "12v-bl";
> > +		regulator-min-microvolt = <12000000>;
> > +		regulator-max-microvolt = <12000000>;
> > +		gpio = <&gpio1 7 GPIO_ACTIVE_HIGH>;
> > +		enable-active-high;
> > +	};
> > +
> > +	reg_1v8: regulator-1v8 {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "1v8";
> > +		regulator-min-microvolt = <1800000>;
> > +		regulator-max-microvolt = <1800000>;
> > +		regulator-always-on;
> > +	};
> > +
> > +	sound {
> > +		compatible = "simple-audio-card";
> > +		simple-audio-card,name = "prti6q-sgtl5000";
> > +		simple-audio-card,format = "i2s";
> > +		simple-audio-card,widgets =
> > +			"Microphone", "Microphone Jack",
> > +			"Line", "Line In Jack",
> > +			"Headphone", "Headphone Jack",
> > +			"Speaker", "External Speaker";
> > +		simple-audio-card,routing =
> > +			"MIC_IN", "Microphone Jack",
> > +			"LINE_IN", "Line In Jack",
> > +			"Headphone Jack", "HP_OUT",
> > +			"External Speaker", "LINE_OUT";
> > +
> > +		simple-audio-card,cpu {
> > +			sound-dai = <&ssi1>;
> > +			system-clock-frequency = <0>;
> > +		};
> > +
> > +		simple-audio-card,codec {
> > +			sound-dai = <&sgtl5000>;
> > +			bitclock-master;
> > +			frame-master;
> > +		};
> > +	};
> > +};
> > +
> > +&clks {
> > +	assigned-clocks = <&clks IMX6QDL_CLK_LDB_DI0_SEL>;
> > +	assigned-clock-parents = <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>;
> > +};
> > +
> > +&ecspi2 {
> > +	cs-gpios = <&gpio2 26 GPIO_ACTIVE_HIGH>;
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_ecspi2>;
> > +	status = "okay";
> > +
> > +	tsc@0 {
> > +		compatible = "ti,tsc2046";
> > +		reg = <0>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_tsc>;
> > +		spi-max-frequency = <100000>;
> > +		interrupts-extended = <&gpio3 20 IRQ_TYPE_EDGE_FALLING>;  
> 
> The this should be listed within the binding doc.
> 
> > +		pendown-gpio = <&gpio3 20 GPIO_ACTIVE_HIGH>;  
> 
> IRQ and the GPIO are the same gpio line?

Yes, this driver uses the same GPIO as interrupt and also as a GPIO. A bit
strange, I agree. It is the same pin on the TS controller.

> > +		vcc-supply = <&reg_3v3>;
> > +
> > +		ti,vref-delay-usecs = /bits/ 16 <100>;
> > +
> > +		ti,x-min = /bits/ 16 <0>;
> > +		ti,x-max = /bits/ 16 <8000>;
> > +		ti,y-min = /bits/ 16 <0>;
> > +		ti,y-max = /bits/ 16 <4800>;
> > +		ti,x-plate-ohms = /bits/ 16 <800>;
> > +		ti,y-plate-ohms = /bits/ 16 <300>;
> > +		ti,pressure-max = /bits/ 16 <4095>;
> > +
> > +		ti,skip-samples = <2>;
> > +		ti,sample-period-msecs = <10>;
> > +		ti,report-period-msecs = <30>;
> > +
> > +		ti,filter-tolerance = <80>;
> > +		ti,touch-resistance-threshold = <3500>;

Now that I see this, this DT node corresponds to a rewritten version of the
ads7846 touchscreen driver, which probably also should precede this patch?
The original driver is horribly buggy, and I have submitted patches twice
already long ago to input mailing list, but unfortunately it got completely
ignored both times.

> > +	};
> > +};
> > +
> > +&audmux {  
> 
> Pls, sort it alphabetical.
> 
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_audmux>;
> > +	status = "okay";
> > +
> > +	mux_ssi1 {
> > +		fsl,audmux-port = <0>;
> > +		fsl,port-config = <
> > +			IMX_AUDMUX_V2_PTCR_SYN 		0
> > +			IMX_AUDMUX_V2_PTCR_TFSEL(2) 	0
> > +			IMX_AUDMUX_V2_PTCR_TCSEL(2) 	0
> > +			IMX_AUDMUX_V2_PTCR_TFSDIR 	0
> > +			IMX_AUDMUX_V2_PTCR_TCLKDIR IMX_AUDMUX_V2_PDCR_RXDSEL(2)
> > +		>;
> > +	};
> > +
> > +	mux_pins3 {
> > +		fsl,audmux-port = <2>;
> > +		fsl,port-config = <
> > +			IMX_AUDMUX_V2_PTCR_SYN IMX_AUDMUX_V2_PDCR_RXDSEL(0)
> > +			0		       IMX_AUDMUX_V2_PDCR_TXRXEN
> > +		>;
> > +	};
> > +};
> > +
> > +&can1 {  
> 
> This here too.
> 
> > +	pinctrl-0 = <&pinctrl_can1 &pinctrl_can1phy>;
> > +};
> > +
> > +&i2c1 {
> > +	sgtl5000: codec@a {
> > +		compatible = "fsl,sgtl5000";
> > +		reg = <0xa>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_codec>;
> > +		#sound-dai-cells = <0>;
> > +		clocks = <&clks 201>;
> > +		VDDA-supply = <&reg_3v3>;
> > +		VDDIO-supply = <&reg_3v3>;
> > +		VDDD-supply = <&reg_1v8>;
> > +	};
> > +};
> > +
> > +&i2c3 {
> > +	rtc@51 {
> > +		compatible = "nxp,pcf8563";
> > +		reg = <0x51>;
> > +	};
> > +
> > +	gpio_pca: gpio@74 {
> > +		compatible = "nxp,pca9539";
> > +		reg = <0x74>;
> > +		interrupts-extended = <&gpio4 5 IRQ_TYPE_LEVEL_LOW>;
> > +		#gpio-cells = <2>;
> > +		gpio-controller;
> > +	};
> > +};
> > +
> > +&ipu1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_ipu1_csi0>;
> > +	status = "okay";
> > +};
> > +
> > +&ipu1_di0_disp0 {
> > +	remote-endpoint = <&display_in>;
> > +};
> > +
> > +&pwm1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_pwm1>;
> > +	status = "okay";
> > +};
> > +
> > +&snvs_poweroff {
> > +	status = "okay";
> > +};
> > +
> > +&snvs_pwrkey {
> > +	status = "okay";
> > +};
> > +
> > +&ssi1 {
> > +	#sound-dai-cells = <0>;
> > +	fsl,mode = "i2s-slave";
> > +	status = "okay";
> > +};
> > +
> > +&usbh1 {
> > +	status = "disabled";
> > +};
> > +
> > +&vpu {
> > +	status = "disabled";
> > +};  
> 
> Why do you disable this nodes? You should drop it from the common .dtsi
> if you disable them more than once.

We should have to count the enables and disables, and decide which solution
ends up with less lines of code overall, I suppose.
Our boards DT's are built in a kind of class hierarchy. There are a total of
16+ different i.MX6 boards. Almost all of them inherit from PRTI6Q, and some
have other, higher-order ancestors. Oleksij is busy with the first few of them
right now.
We can optimize all inheritances for the few boards that are being submitted
now, but if the rest will follow, the end result might either be less than
optimal, or this will need to change again.

> > +&iomuxc {
> > +	pinctrl_audmux: audmuxgrp {
> > +		fsl,pins = <
> > +			MX6QDL_PAD_CSI0_MCLK__CCM_CLKO1		0x030b0
> > +			MX6QDL_PAD_CSI0_DAT7__AUD3_RXD		0x130b0
> > +			MX6QDL_PAD_CSI0_DAT4__AUD3_TXC		0x130b0
> > +			MX6QDL_PAD_CSI0_DAT5__AUD3_TXD		0x110b0
> > +			MX6QDL_PAD_CSI0_DAT6__AUD3_TXFS		0x130b0
> > +		>;
> > +	};
> > +
> > +	pinctrl_can1phy: can1phy {
> > +		fsl,pins = <
> > +			/* CAN1_SR */
> > +			MX6QDL_PAD_KEY_COL3__GPIO4_IO12		0x13070
> > +			/* CAN1_TERM */
> > +			MX6QDL_PAD_GPIO_0__GPIO1_IO00		0x1b0b0
> > +		>;
> > +	};
> > +
> > +	pinctrl_codec: codecgrp {
> > +		fsl,pins = <
> > +			/* AUDIO_nRESET */
> > +			MX6QDL_PAD_CSI0_VSYNC__GPIO5_IO21	0x1f0b0
> > +		>;
> > +	};
> > +
> > +	pinctrl_ecspi2: ecspi2grp {
> > +		fsl,pins = <
> > +			MX6QDL_PAD_EIM_OE__ECSPI2_MISO		0x100b1
> > +			MX6QDL_PAD_EIM_CS0__ECSPI2_SCLK		0x100b1
> > +			MX6QDL_PAD_EIM_CS1__ECSPI2_MOSI		0x100b1
> > +			MX6QDL_PAD_EIM_RW__GPIO2_IO26		0x000b1
> > +		>;
> > +	};
> > +
> > +	pinctrl_ipu1_csi0: ipu1csi0grp {
> > +		fsl,pins = <
> > +			MX6QDL_PAD_CSI0_DAT12__IPU1_CSI0_DATA12	0x1b0b0
> > +			MX6QDL_PAD_CSI0_DAT13__IPU1_CSI0_DATA13	0x1b0b0
> > +			MX6QDL_PAD_CSI0_DAT14__IPU1_CSI0_DATA14	0x1b0b0
> > +			MX6QDL_PAD_CSI0_DAT15__IPU1_CSI0_DATA15	0x1b0b0
> > +			MX6QDL_PAD_CSI0_DAT16__IPU1_CSI0_DATA16	0x1b0b0
> > +			MX6QDL_PAD_CSI0_DAT17__IPU1_CSI0_DATA17	0x1b0b0
> > +			MX6QDL_PAD_CSI0_DAT18__IPU1_CSI0_DATA18	0x1b0b0
> > +			MX6QDL_PAD_CSI0_DAT19__IPU1_CSI0_DATA19	0x1b0b0
> > +			MX6QDL_PAD_CSI0_PIXCLK__IPU1_CSI0_PIXCLK 0x1b0b0
> > +			/* ITU656_nRESET */
> > +			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b0
> > +			/* ITU656_nPDN */
> > +			MX6QDL_PAD_CSI0_DATA_EN__GPIO5_IO20	0x1b0b0
> > +		>;
> > +	};  
> 
> Why do you mux the the camera interface and have no camera device within
> this dt.

Because the camera requires more patches that are on the way to mainline, but
not there yet. Maybe for now these should be removed?

> > +	pinctrl_ipu1_disp: ipudisp1grp {
> > +		fsl,pins = <
> > +			MX6QDL_PAD_DI0_DISP_CLK__IPU1_DI0_DISP_CLK 0xb0
> > +			MX6QDL_PAD_DI0_PIN15__IPU1_DI0_PIN15	   0xb0
> > +
> > +			MX6QDL_PAD_DISP0_DAT0__IPU1_DISP0_DATA00 0xb0
> > +			MX6QDL_PAD_DISP0_DAT1__IPU1_DISP0_DATA01 0xb0
> > +			MX6QDL_PAD_DISP0_DAT2__IPU1_DISP0_DATA02 0xb0
> > +			MX6QDL_PAD_DISP0_DAT3__IPU1_DISP0_DATA03 0xb0
> > +			MX6QDL_PAD_DISP0_DAT4__IPU1_DISP0_DATA04 0xb0
> > +			MX6QDL_PAD_DISP0_DAT5__IPU1_DISP0_DATA05 0xb0
> > +			MX6QDL_PAD_DISP0_DAT6__IPU1_DISP0_DATA06 0xb0
> > +			MX6QDL_PAD_DISP0_DAT7__IPU1_DISP0_DATA07 0xb0
> > +
> > +			MX6QDL_PAD_DISP0_DAT8__IPU1_DISP0_DATA08 0xb0
> > +			MX6QDL_PAD_DISP0_DAT9__IPU1_DISP0_DATA09 0xb0
> > +			MX6QDL_PAD_DISP0_DAT10__IPU1_DISP0_DATA10 0xb0
> > +			MX6QDL_PAD_DISP0_DAT11__IPU1_DISP0_DATA11 0xb0
> > +			MX6QDL_PAD_DISP0_DAT12__IPU1_DISP0_DATA12 0xb0
> > +			MX6QDL_PAD_DISP0_DAT13__IPU1_DISP0_DATA13 0xb0
> > +			MX6QDL_PAD_DISP0_DAT14__IPU1_DISP0_DATA14 0xb0
> > +			MX6QDL_PAD_DISP0_DAT15__IPU1_DISP0_DATA15 0xb0
> > +
> > +			MX6QDL_PAD_DISP0_DAT16__IPU1_DISP0_DATA16 0xb0
> > +			MX6QDL_PAD_DISP0_DAT17__IPU1_DISP0_DATA17 0xb0
> > +			MX6QDL_PAD_DISP0_DAT18__IPU1_DISP0_DATA18 0xb0
> > +			MX6QDL_PAD_DISP0_DAT19__IPU1_DISP0_DATA19 0xb0
> > +			MX6QDL_PAD_DISP0_DAT20__IPU1_DISP0_DATA20 0xb0
> > +			MX6QDL_PAD_DISP0_DAT21__IPU1_DISP0_DATA21 0xb0
> > +			MX6QDL_PAD_DISP0_DAT22__IPU1_DISP0_DATA22 0xb0
> > +			MX6QDL_PAD_DISP0_DAT23__IPU1_DISP0_DATA23 0xb0
> > +		>;
> > +	};
> > +
> > +	pinctrl_leds: ledsgrp {
> > +		fsl,pins = <
> > +			MX6QDL_PAD_GPIO_8__GPIO1_IO08		0x1b0b0
> > +		>;
> > +	};
> > +
> > +	pinctrl_pwm1: pwm1grp {
> > +		fsl,pins = <
> > +			MX6QDL_PAD_GPIO_9__PWM1_OUT		0x1b0b0
> > +		>;
> > +	};
> > +
> > +	pinctrl_reg_12v_bl: 12blgrp {  
> 
> Pls, keep the name scheme like the others.
> 
> Regards,
>   Marco
> 
> > +		fsl,pins = <
> > +			MX6QDL_PAD_GPIO_7__GPIO1_IO07		0x1b0b0
> > +		>;
> > +	};
> > +
> > +	pinctrl_tsc: tscgrp {
> > +
> > +		fsl,pins = <
> > +			MX6QDL_PAD_EIM_D20__GPIO3_IO20		0x1b0b0
> > +			MX6QDL_PAD_EIM_EB2__GPIO2_IO30		0x1b0b0
> > +		>;
> > +	};
> > +};  

Best regards,

-- 
David Jander
Protonic Holland.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
