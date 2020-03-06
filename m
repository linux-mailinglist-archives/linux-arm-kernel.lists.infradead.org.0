Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EACF17C518
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 19:13:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGMf8jsJiHUKRqRizRLVMKj0xpfDKRiAP3oEoH49htc=; b=HauUJUrK2psGM6
	QyNiEZlckk8PL4JbsBNUkBnG/x9mtokzn9wlEwBo1SebFdLdjUwctiD/SALXUJ+hHfjIiYqmIFByF
	QkRMJIjLjOmuLFrcUpxf1d2ZBRAKbewQZZPeKIzFchfz+TBZ3Skgizv7trcb0RonW21qI7QA2Cz+a
	lp9pP7jFv96mIq1Nu9Kb02TLvtF11xUl3pIY3z/umThJ/8UPQ4Jt0/rsPQyeyiEPgMNPNavg6Ncga
	KgFsfP+1Yzpx1bT5j9baGgTEIrV/uUSVHy90GNM+OlW1cFeQ5NskJkZfh77gAIp7+ZAioIcrSCxI8
	2SMwBKuPpZoHZIjIj5eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAHTo-0006OY-SH; Fri, 06 Mar 2020 18:13:48 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAHTd-0006Nt-43
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 18:13:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1583518409;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=Ad86sp/X3OIdN4riwRrb4P7ZK22nC4NQgezlFVU5iv0=;
 b=MtOYyP1Wi17AiBH6hbMRmlBqUJP0MTjoaskcNLLkGYMxIWoSAB1LWaLcdvRAi40cCO
 4nG8I7vIjj2njJbgwo+LpOAKoeTJOvOAN9c5zikl2PM7of7a3pPe7kTb0WgqMLjCqKjs
 Xz6+8OMIcFTSps8TIrT6jYhgpvKzhOxT+CqRaldT1oudbNmNRx9R9syFmicWTNRGJBk9
 gk3KdpFsrjSSu/W7PwliNNEootVaGhNPB1lBx4kCBgVr/7B19cE5oaF5nbtNsSZRraum
 U+VJ4rP/YHzv2b/dr6EQKLlySKJ50St36m1NdZ+zlWxWRTRKRvOLKpL0uYNw5dCS353M
 pyHQ==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u266EZF6ORJFB3ztdAbB"
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 46.2.0 DYNA|AUTH)
 with ESMTPSA id c04535w26IDTesP
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Fri, 6 Mar 2020 19:13:29 +0100 (CET)
Date: Fri, 6 Mar 2020 19:13:22 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] ARM: dts: Add devicetree for Samsung GT-S7710
Message-ID: <20200306181322.GA3724@gerhold.net>
References: <20200302194955.30421-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302194955.30421-1-linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_101337_901495_999525F5 
X-CRM114-Status: GOOD (  30.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5300:0:0:6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Thanks for working on this! A few comments below (mostly minor):

On Mon, Mar 02, 2020 at 08:49:55PM +0100, Linus Walleij wrote:
> The Samsung GT-S7710 also known as XCover 2 is a Ux500-based
> mobile phone. In the source code release from Samsung's open
> source site it is referred to as "Skomer".
> 
> Cc: Stephan Gerhold <stephan@gerhold.net>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  arch/arm/boot/dts/Makefile                    |   3 +-
>  .../arm/boot/dts/ste-ux500-samsung-skomer.dts | 791 ++++++++++++++++++
>  2 files changed, 793 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boot/dts/ste-ux500-samsung-skomer.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index d6546d2676b9..a7671831ecf6 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1202,7 +1202,8 @@ dtb-$(CONFIG_ARCH_U8500) += \
>  	ste-hrefv60plus-stuib.dtb \
>  	ste-hrefv60plus-tvk.dtb \
>  	ste-href520-tvk.dtb \
> -	ste-ux500-samsung-golden.dtb
> +	ste-ux500-samsung-golden.dtb \
> +	ste-ux500-samsung-skomer.dtb
>  dtb-$(CONFIG_ARCH_UNIPHIER) += \
>  	uniphier-ld4-ref.dtb \
>  	uniphier-ld6b-ref.dtb \
> diff --git a/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts b/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts
> new file mode 100644
> index 000000000000..bcbabff50d4f
> --- /dev/null
> +++ b/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts
> @@ -0,0 +1,791 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Devicetree for the Samsung XCover 2 GT-S7710 also known as Skomer.
> + */
> +
> +/dts-v1/;
> +#include "ste-db8500.dtsi"
> +#include "ste-ab8505.dtsi"
> +#include "ste-dbx5x0-pinctrl.dtsi"
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +
> +/ {
> +	model = "Samsung XCover 2 (GT-S7710)";
> +	compatible = "samsung,skomer", "st-ericsson,u8500";
> +
> +	chosen {
> +		stdout-path = &serial2;
> +	};
> +
> +	/* TI TXS0206 level translator for 1.8/2.9 V */
> +	vmmci: regulator-gpio {
> +		compatible = "regulator-gpio";
> +
> +		/* GPIO87 EN */
> +		gpios = <&gpio2 23 GPIO_ACTIVE_HIGH>;
> +
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <2900000>;
> +		regulator-name = "mmci-reg";
> +		regulator-type = "voltage";
> +
> +		startup-delay-us = <100>;
> +
> +		states = <1800000 0x0
> +			  2900000 0x1>;
> +	};

This looks like the same level translator used in samsung,golden.

Unfortunately it can only translate to 2.9V or disconnect the DATA lines
entirely, it cannot pass through the 1.8V for the UHS modes.

From the datasheet (https://www.ti.com/lit/ds/symlink/txs0206.pdf):

  EN: Enable/disable control. Pull EN low to place all outputs in
      Hi-Z state. (page 5)

So unfortunately this is really a fixed-regulator (with just 2.9V).
See ste-ux500-samsung-golden.dts. :(

> +
> +	/* External LDO for eMMC */
> +	ldo_1v8_reg: regulator-gpio-ldo-1v8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "en-1v8-fixed-supply";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;

This seems to be a MIC5366-3.3YMT, which is 3.3V.

> +		gpio = <&gpio6 31 GPIO_ACTIVE_HIGH>;
> +		startup-delay-us = <5000>;
> +		enable-active-high;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&emmc_ldo_en_default_mode>;
> +	};
> +
> +	wlan_en: regulator-gpio-wlan-en {
> +		compatible = "regulator-fixed";
> +		regulator-name = "wl-reg-on";
> +		regulator-min-microvolt = <3000000>;
> +		regulator-max-microvolt = <3000000>;
> +		startup-delay-us = <200000>;
> +		/* GPIO215 WLAN_EN */
> +		gpio = <&gpio6 23 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wlan_en_default_mode>;
> +	};
> +
> +	vibrator {
> +		compatible = "gpio-vibrator";
> +		enable-gpios = <&gpio6 3 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vibrator_default>;
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&gpio_keys_default_mode>;
> +
> +		button-home {
> +			linux,code = <KEY_HOME>;
> +			label = "HOME";
> +			/* GPIO91 */
> +			gpios = <&gpio2 27 GPIO_ACTIVE_LOW>;
> +		};
> +		button-volup {
> +			linux,code = <KEY_VOLUMEUP>;
> +			label = "VOL+";
> +			/* GPIO67 */
> +			gpios = <&gpio2 3 GPIO_ACTIVE_LOW>;
> +		};
> +		button-voldown {
> +			linux,code = <KEY_VOLUMEDOWN>;
> +			label = "VOL-";
> +			/* GPIO92 */
> +			gpios = <&gpio2 28 GPIO_ACTIVE_LOW>;
> +		};
> +		button-menu {
> +			linux,code = <KEY_MENU>;
> +			label = "MENU";
> +			/* GPIO204 */
> +			gpios = <&gpio6 12 GPIO_ACTIVE_LOW>;
> +		};
> +		button-back {
> +			linux,code = <KEY_BACK>;
> +			label = "BACK";
> +			/* GPIO205 */
> +			gpios = <&gpio6 13 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +
> +	/*
> +	 * FIXME: this is not quite GPIO backlight. This is a
> +	 * KTD253 one-wire GPIO-controlled backlight. It can
> +	 * work as a GPIO backlight.
> +	 */
> +	gpio_bl: backlight {
> +		compatible = "gpio-backlight";
> +		/* GPIO 69 */
> +		gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&gpio_backlight_default_mode>;
> +	};
> +
> +	i2c-gpio-0 {
> +		compatible = "i2c-gpio";
> +		sda-gpios = <&gpio0 10 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
> +		scl-gpios = <&gpio0 11 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;

I think we discussed this before but I'm not sure I remember the result:

There is also a proper I2C bus on GPIO10/11 (i2c2), I wonder if it would
be preferable over the bit-banged i2c-gpio?

Samsung does this in a lot of devices and I'm not sure why.
So far the proper I2C bus has always worked fine for me.

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&i2c_gpio_0_default>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		ststus = "disabled";

Typo? :)

> +
> +		accel@18 {
> +			compatible = "bosch,bma254";
> +			clock-frequency = <400000>;
> +			reg = <0x18>;
> +
> +			/* GPIO224 used as "smart alert" interrupt */
> +			interrupt-parent = <&gpio7>;
> +			interrupts = <0 IRQ_TYPE_EDGE_RISING>;
> +
> +			mount-matrix = "0", "1", "0",
> +				      "-1", "0", "0",
> +				       "0", "0", "1";
> +			vdd-supply = <&ab8500_ldo_aux1_reg>;
> +			vddio-supply = <&ab8500_ldo_aux8_reg>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&bma254_skomer_default>;
> +		};
> +	};
> +
> +	i2c-gpio-2 {
> +		compatible = "i2c-gpio";
> +		sda-gpios = <&gpio7 5 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
> +		scl-gpios = <&gpio7 6 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;

Similar to the above, this would be i2c3.

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&i2c_gpio_2_default>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		/* TODO: this should be used by the Cypress TMA140 touchscreen */
> +	};
> +
> +	i2c-gpio-3 {
> +		compatible = "i2c-gpio";
> +		sda-gpios = <&gpio4 16 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
> +		scl-gpios = <&gpio4 15 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&i2c_gpio_3_default>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		/* TODO: this should be used by the NCP6914 Camera power management unit */
> +	};
> +
> +	i2c-gpio-4 {
> +		compatible = "i2c-gpio";
> +		sda-gpios = <&gpio4 24 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
> +		scl-gpios = <&gpio4 23 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&i2c_gpio_4_default>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		/* TODO: this should be used by the ALPS HSCDTD008A compass sensor */
> +	};
> +
> +	soc {
> +		// External Micro SD slot
> +		sdi0_per1@80126000 {
> +			arm,primecell-periphid = <0x10480180>;
> +			max-frequency = <100000000>;
> +			bus-width = <4>;
> +			cap-sd-highspeed;
> +			cap-mmc-highspeed;
> +			sd-uhs-sdr12;
> +			sd-uhs-sdr25;

Because of the problem with the level translator, I don't think the UHS
modes will work correctly :(

> +			/* All direction control is used */
> +			st,sig-dir-cmd;
> +			st,sig-dir-dat0;
> +			st,sig-dir-dat2;
> +			st,sig-dir-dat31;
> +			st,sig-pin-fbclk;
> +			full-pwr-cycle;
> +			vmmc-supply = <&ab8500_ldo_aux3_reg>;
> +			vqmmc-supply = <&vmmci>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&sdi0_default_mode>;
> +			status = "okay";
> +		};
> +
> +		// WLAN SDIO channel
> +		sdi1_per2@80118000 {
> +			arm,primecell-periphid = <0x10480180>;
> +			max-frequency = <50000000>;
> +			bus-width = <4>;
> +			non-removable;
> +			cap-sd-highspeed;
> +			vmmc-supply = <&wlan_en>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&sdi1_default_mode>;
> +			status = "okay";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			wifi@1 {
> +				compatible = "brcm,bcm4329-fmac";
> +				reg = <1>;
> +				/* GPIO216 WL_HOST_WAKE */
> +				interrupt-parent = <&gpio6>;
> +				interrupts = <24 IRQ_TYPE_EDGE_FALLING>;
> +				interrupt-names = "host-wake";
> +				pinctrl-names = "default";
> +				pinctrl-0 = <&wlan_default_mode>;
> +			};
> +		};
> +
> +		// eMMC
> +		sdi2_per3@80005000 {
> +			arm,primecell-periphid = <0x10480180>;
> +		        max-frequency = <100000000>;
> +			bus-width = <8>;
> +			cap-mmc-highspeed;

The vendor kernel seems to configure 1.8V DDR here, so you could try
if that is working fine using "mmc-ddr-1_8v;"

> +			vmmc-supply = <&ldo_1v8_reg>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&sdi2_default_mode>;
> +
> +			status = "okay";
> +		};
> +
> +		/* GBF (Bluetooth) UART */
> +		uart@80120000 {
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&uart0_default_mode>;
> +			status = "okay";
> +
> +			/* FIXME: not quite working yet, probably needs regulators */
> +			bluetooth {
> +				compatible = "brcm,bcm4330-bt";
> +				shutdown-gpios = <&gpio6 30 GPIO_ACTIVE_HIGH>;
> +				device-wakeup-gpios = <&gpio6 7 GPIO_ACTIVE_HIGH>;
> +				host-wakeup-gpios = <&gpio3 1 GPIO_ACTIVE_HIGH>;
> +				pinctrl-names = "default";
> +				pinctrl-0 = <&bluetooth_default_mode>;
> +			};
> +		};
> +
> +		/* GPS UART on some models */
> +		uart@80121000 {
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&uart1_default_mode>;
> +			status = "okay";
> +		};
> +
> +		/* Debugging console UART connected to AB8505 USB */
> +		uart@80007000 {
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&uart2_default_mode>;
> +			status = "okay";
> +		};
> +
> +		prcmu@80157000 {
> +			ab8505 {
> +				ab8500_usb {
> +					pinctrl-names = "default", "sleep";
> +					pinctrl-0 = <&usb_a_1_default>;
> +					pinctrl-1 = <&usb_a_1_sleep>;
> +				};
> +
> +				ab8505-regulators {
> +					ab8500_ldo_aux1 {
> +						/* Used for VDD for sensors */
> +						regulator-name = "AUX1";
> +						regulator-min-microvolt = <3000000>;
> +						regulator-max-microvolt = <3300000>;
> +					};
> +
> +					ab8500_ldo_aux2 {
> +						/* Supplies the Cypress TMA140 touchscreen only with 3.3V */
> +						regulator-name = "AUX2";
> +						regulator-min-microvolt = <3300000>;
> +						regulator-max-microvolt = <3300000>;
> +					};
> +
> +					ab8500_ldo_aux3 {
> +						/* Used for voltage for external MMC/SD card */
> +						regulator-name = "AUX3";
> +						regulator-min-microvolt = <1100000>;
> +						regulator-max-microvolt = <3300000>;
> +					};
> +
> +					ab8500_ldo_aux4 {
> +						regulator-name = "AUX4";
> +						/* Hammer to 3.0V for the display */
> +						regulator-min-microvolt = <3000000>;
> +						regulator-max-microvolt = <3000000>;
> +					};
> +
> +					ab8500_ldo_aux5 {
> +						regulator-name = "AUX5";
> +						regulator-min-microvolt = <1050000>;
> +						regulator-max-microvolt = <2790000>;
> +						regulator-always-on;
> +					};
> +
> +					ab8500_ldo_aux6 {
> +						regulator-name = "AUX6";
> +						/* Hammer to 1.8V for the display */
> +						regulator-min-microvolt = <1800000>;
> +						regulator-max-microvolt = <1800000>;
> +					};
> +
> +					ab8500_ldo_aux8 {
> +						/* Mostly VIO for sensors */
> +						regulator-name = "AUX8";
> +					};
> +				};
> +			};
> +		};
> +
> +		i2c0: i2c@80004000 {
> +			status = "okay";
> +
> +			pinctrl-names = "default", "sleep";
> +			pinctrl-0 = <&i2c0_a_1_default>;
> +			pinctrl-1 = <&i2c0_a_1_sleep>;
> +
> +			proximity@44 {
> +				compatible = "sharp,gp2ap002s00f";
> +				clock-frequency = <400000>;
> +				reg = <0x44>;
> +
> +				interrupt-parent = <&gpio4>;
> +				interrupts = <18 IRQ_TYPE_EDGE_FALLING>;
> +				vdd-supply = <&ab8500_ldo_aux1_reg>;
> +				vio-supply = <&ab8500_ldo_aux8_reg>;
> +				pinctrl-names = "default";
> +				pinctrl-0 = <&gp2ap002_skomer_default>;
> +				sharp,proximity-far-hysteresis = /bits/ 8 <0x2f>;
> +				sharp,proximity-close-hysteresis = /bits/ 8 <0x0f>;
> +			};
> +		};
> +
> +		usb_per5@a03e0000 {
> +			status = "disabled";
> +		};

Not sure if we really want to disable USB :)
Is this still needed?

> +
> +		mcde@a0350000 {
> +			status = "okay";
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&dsi_default_mode>;
> +
> +			dsi@a0351000 {
> +				panel {
> +					/* NT35510-based Hydis HVA40WV1 */
> +					compatible = "hydis,hva40wv1", "novatek,nt35510";
> +					reg = <0>;
> +					/* v_lcd_3v0 2.3-4.8V */
> +					vdd-supply = <&ab8500_ldo_aux4_reg>;
> +					/* v_lcd_1v8 1.65-3.3V */
> +					vddi-supply = <&ab8500_ldo_aux6_reg>;
> +					/* GPIO 139 */
> +					reset-gpios = <&gpio4 11 GPIO_ACTIVE_LOW>;
> +					pinctrl-names = "default";
> +					pinctrl-0 = <&display_default_mode>;
> +					backlight = <&gpio_bl>;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&pinctrl {
> +	/* Settings for all UART default and sleep states */
> +	uart0 {
> +		uart0_default_mode: uart0_default {
> +			skomer_mux {
> +				function = "u0";
> +				groups = "u0_a_1";
> +			};
> +			skomer_cfg1 {
> +				pins = "GPIO0_AJ5", "GPIO2_AH4"; /* CTS+RXD */
> +				ste,config = <&in_pu>;
> +			};
> +			skomer_cfg2 {
> +				pins = "GPIO1_AJ3", "GPIO3_AH3"; /* RTS+TXD */
> +				ste,config = <&out_hi>;
> +			};
> +		};
> +	};

This seems to be the same as u0_a_1_default
(in ste-dbx5x0-pinctrl.dtsi).

> +
> +	uart1 {
> +		/* This UART is unused to input and pull all down */
> +		uart1_default_mode: uart1_default {
> +			skomer_mux {
> +				function = "u1";
> +				groups = "u1rxtx_a_1";
> +			};
> +			skomer_cfg1 {
> +				pins = "GPIO4_AH6", /* RXD */
> +					"GPIO5_AG6", /* TXD */
> +					"GPIO6_AF6", /* RTS */
> +					"GPIO7_AG5"; /* CTS */
> +				ste,config = <&in_pd>;
> +			};
> +		};
> +	};
> +
> +	uart2 {
> +		uart2_default_mode: uart2_default {
> +			skomer_mux {
> +				function = "u2";
> +				groups = "u2rxtx_c_1";
> +			};
> +			skomer_cfg1 {
> +				pins = "GPIO29_W2"; /* RXD */
> +				ste,config = <&in_pu>;
> +			};
> +			skomer_cfg2 {
> +				pins = "GPIO30_W3"; /* TXD */
> +				ste,config = <&out_hi>;
> +			};
> +			skomer_cfg3 {
> +				pins = "GPIO31_V3", "GPIO32_V2"; /* N/A */
> +				ste,config = <&in_pd>;
> +			};
> +		};
> +	};

This is mostly the same as u2rxtx_c_1_default.
The N/A pins are not included, might need to keep that as extra
skomer_cfg. Not sure if configuring them is really needed?

> +
> +	i2c1 {
> +		i2c1_default_mode: i2c_default {
> +			default_mux {
> +				function = "i2c1";
> +				groups = "i2c1_b_2";
> +			};
> +			default_cfg1 {
> +				pins = "GPIO16_AD3", "GPIO17_AD4"; /* SDA/SCL */
> +				ste,config = <&in_pu>;
> +			};
> +		};
> +
> +		i2c1_sleep_mode: i2c_sleep {
> +			sleep_cfg1 {
> +				pins = "GPIO16_AD3", "GPIO17_AD4"; /* SDA/SCL */
> +				ste,config = <&slpm_in_wkup_pdis>;
> +			};
> +		};
> +	};

This is i2c1_b_2_default, except that we stopped configuring
pull up in 27e7c033d3b ("ARM: dts: ux500: Drop pulls on I2C buses").

> +
> +	i2c2 {
> +		i2c2_default_mode: i2c_default {
> +			default_mux {
> +				function = "i2c2";
> +				groups = "i2c2_b_2";
> +			};
> +			/* No pull-up, so we assume we have external pull-ups then */
> +			default_cfg1 {
> +				pins = "GPIO10_AF5", "GPIO11_AG4"; /* SDA/SCL */
> +				ste,config = <&in_nopull>;
> +			};
> +		};
> +
> +		i2c2_sleep_mode: i2c_sleep {
> +			sleep_cfg1 {
> +				pins = "GPIO10_AF5", "GPIO11_AG4"; /* SDA/SCL */
> +				ste,config = <&slpm_in_wkup_pdis>;
> +			};
> +		};
> +	};

This is i2c2_b_2_default.

> +
> +	sdi0 {
> +		sdi0_default_mode: sdi0_default {
> +			default_mux {
> +				function = "mc0";
> +				/* Add the DAT31 pin even if it is not really used */
> +				groups = "mc0_a_1", "mc0dat31dir_a_1";
> +			};
> +			default_cfg1 {
> +				pins =
> +				"GPIO18_AC2", /* CMDDIR */
> +				"GPIO19_AC1", /* DAT0DIR */
> +				"GPIO20_AB4"; /* DAT2DIR */
> +				ste,config = <&out_hi>;
> +			};
> +			default_cfg2 {
> +				pins = "GPIO22_AA3"; /* FBCLK */
> +				ste,config = <&in_nopull>;
> +			};
> +			default_cfg3 {
> +				pins = "GPIO23_AA4"; /* CLK */
> +				ste,config = <&out_lo>;
> +			};
> +			default_cfg4 {
> +				pins =
> +				"GPIO24_AB2", /* CMD */
> +				"GPIO25_Y4", /* DAT0 */
> +				"GPIO26_Y2", /* DAT1 */
> +				"GPIO27_AA2", /* DAT2 */
> +				"GPIO28_AA1"; /* DAT3 */
> +				ste,config = <&in_pu>;
> +			};
> +			skomer_cfg5 {
> +				pins = "GPIO21_AB3"; /* DAT31DIR */
> +				ste,config = <&out_hi>;
> +			};
> +			/* level shifter on GPIO87 */
> +			skomer_cfg6 {
> +				pins = "GPIO87_B3";
> +				ste,config = <&gpio_out_hi>;
> +			};
> +		};
> +	};

This is mostly mc0_a_1_default. Do we really need to configure DAT31DIR?
The vendor kernel does not seem to do that.

> +
> +	sdi1 {
> +		/* This is the WLAN SDIO 4 bits wide */
> +		sdi1_default_mode: sdi1_default {
> +			default_mux {
> +				function = "mc1";
> +				groups = "mc1_a_1";
> +			};
> +			default_cfg1 {
> +				pins = "GPIO208_AH16"; /* CLK */
> +				ste,config = <&out_lo>;
> +			};
> +			/* GPIO209 reused as GBF_RESET */
> +			default_cfg3 {
> +				pins =
> +				"GPIO210_AJ15", /* CMD */
> +				"GPIO211_AG14", /* DAT0 */
> +				"GPIO212_AF13", /* DAT1 */
> +				"GPIO213_AG13", /* DAT2 */
> +				"GPIO214_AH15"; /* DAT3 */
> +				ste,config = <&in_pu>;
> +			};
> +		};
> +	};

I think this is mc1_a_2_default, except that you use the "mc1_a_1"
and therefore also configure GPIO209 (GPF_RESET) to the "mc1" function
instead of gpio. Does that even work? :)

> +
> +	sdi2 {
> +		sdi2_default_mode: sdi2_default {
> +			default_mux {
> +				function = "mc2";
> +				groups = "mc2_a_1";
> +			};
> +			default_cfg1 {
> +				pins = "GPIO128_A5"; /* CLK */
> +				ste,config = <&out_lo>;
> +			};
> +			default_cfg2 {
> +				pins = "GPIO130_C8"; /* FBCLK */
> +				ste,config = <&in_nopull>;
> +			};
> +			default_cfg3 {
> +				pins =
> +				"GPIO129_B4", /* CMD */
> +				"GPIO131_A12", /* DAT0 */
> +				"GPIO132_C10", /* DAT1 */
> +				"GPIO133_B10", /* DAT2 */
> +				"GPIO134_B9", /* DAT3 */
> +				"GPIO135_A9", /* DAT4 */
> +				"GPIO136_C7", /* DAT5 */
> +				"GPIO137_A7", /* DAT6 */
> +				"GPIO138_C5"; /* DAT7 */
> +				ste,config = <&in_pu>;
> +			};
> +		};
> +	};

This is mc2_a_1_default.

> +
> +	musb {
> +		musb_default_mode: musb_default {
> +			default_mux {
> +				function = "usb";
> +				groups = "usb_a_1";
> +			};
> +			default_cfg1 {
> +				pins =
> +				"GPIO256_AF28", /* NXT */
> +				"GPIO258_AD29", /* XCLK */
> +				"GPIO259_AC29", /* DIR */
> +				"GPIO260_AD28", /* DAT7 */
> +				"GPIO261_AD26", /* DAT6 */
> +				"GPIO262_AE26", /* DAT5 */
> +				"GPIO263_AG29", /* DAT4 */
> +				"GPIO264_AE27", /* DAT3 */
> +				"GPIO265_AD27", /* DAT2 */
> +				"GPIO266_AC28", /* DAT1 */
> +				"GPIO267_AC27"; /* DAT0 */
> +				ste,config = <&in_nopull>;
> +			};
> +			default_cfg2 {
> +				pins = "GPIO257_AE29"; /* STP */
> +				ste,config = <&out_hi>;
> +			};
> +		};
> +	};

And this looks like usb_a_1_default. :)

> +
> +	mcde {
> +		dsi_default_mode: dsi_default {
> +			default_mux1 {
> +				/* Mux in VSI0 used for DSI TE */
> +				function = "lcd";
> +				groups =
> +				"lcdvsi0_a_1"; /* VSI0 for LCD */
> +			};
> +			default_cfg1 {
> +				pins =
> +				"GPIO68_E1"; /* VSI0 */
> +				ste,config = <&in_nopull>;
> +			};
> +		};
> +	};
> +
> +	/* Two GPIO lines used by the display */
> +	display {
> +		display_default_mode: display_default {
> +			skomer_cfg1 {
> +				/*
> +				 * OLED DETECT or check_pba, this appears to be high
> +				 * on "PBA" which I guess is "prototype board A".
> +				 */
> +				pins = "GPIO93_B7";
> +				ste,config = <&gpio_in_nopull>;
> +			};
> +			skomer_cfg2 {
> +				pins = "GPIO139_C9";
> +				/*
> +				 * MIPI_DSI0_RESET_N resets the display, leave high
> +				 * (de-asserted) so we only assert reset explicitly
> +				 * from the display driver.
> +				 */
> +				ste,config = <&gpio_out_hi>;
> +			};
> +		};
> +	};
> +	backlight {
> +		gpio_backlight_default_mode: backlight_default {
> +			skomer_cfg1 {
> +				pins = "GPIO69_E2"; /* LCD_BL_CTRL */
> +				ste,config = <&gpio_out_lo>;
> +			};
> +		};
> +	};
> +	/* GPIO that enables the LDO regulator for the eMMC */
> +	emmc-ldo {
> +		emmc_ldo_en_default_mode: emmc_ldo_default {
> +			/* LDO enable on GPIO223 */
> +			skomer_cfg4 {
> +				pins = "GPIO223_AH9";
> +				ste,config = <&gpio_out_hi>;
> +			};
> +		};
> +	};
> +	/* GPIO keys */
> +	gpio-keys {
> +		gpio_keys_default_mode: gpio_keys_default {
> +			skomer_cfg1 {
> +				pins = "GPIO67_G2", /* VOL UP */
> +				       "GPIO91_B6", /* HOME */
> +				       "GPIO92_D6", /* VOL DOWN */
> +				       "GPIO204_AF23", /* MENU */
> +				       "GPIO205_AG23"; /* BACK */
> +					ste,config = <&gpio_in_pu>;
> +			};
> +		};
> +	};
> +	/* GPIO-based I2C bus for BMA254 */
> +	i2c-gpio-0 {
> +		i2c_gpio_0_default: i2c_gpio_0 {
> +			skomer_cfg1 {
> +				pins = "GPIO10_AF5", "GPIO11_AG4";
> +				ste,config = <&gpio_in_nopull>;
> +			};
> +		};
> +	};
> +	/* Interrupt line for BMA254 */
> +	bma254 {
> +		bma254_skomer_default: bma254_skomer {
> +			skomer_cfg1 {
> +				pins = "GPIO224_AG9";
> +				ste,config = <&gpio_in_pd>;
> +			};
> +		};
> +	};
> +	/* Interrupt line for light/proximity sensor GP2AP002 */
> +	gp2ap002 {
> +		gp2ap002_skomer_default: gp2ap002_skomer {
> +			skomer_cfg1 {
> +				pins = "GPIO146_D13";
> +				ste,config = <&gpio_in_nopull>;
> +			};
> +		};
> +	};
> +	/* GPIO-based I2C bus for Cypress TMA140 */
> +	i2c-gpio-2 {
> +		i2c_gpio_2_default: i2c_gpio_2 {
> +			skomer_cfg1 {
> +				pins = "GPIO229_AG7", "GPIO230_AF7";
> +				ste,config = <&gpio_in_nopull>;
> +			};
> +		};
> +	};
> +	/* GPIO-based I2C bus for NCP6914 */
> +	i2c-gpio-3 {
> +		i2c_gpio_3_default: i2c_gpio_3 {
> +			skomer_cfg1 {
> +				pins = "GPIO143_D12", "GPIO144_B13";
> +				ste,config = <&gpio_in_nopull>;
> +			};
> +		};
> +	};
> +	/* GPIO-based I2C bus for ALPS HSCD compass */
> +	i2c-gpio-4 {
> +		i2c_gpio_4_default: i2c_gpio_4 {
> +			skomer_cfg1 {
> +				pins = "GPIO151_B17", "GPIO152_D16";
> +				ste,config = <&gpio_in_nopull>;
> +			};
> +		};
> +	};
> +	wlan {
> +		wlan_default_mode: wlan_default {
> +			skomer_cfg1 {
> +				pins = "GPIO216_AG12";
> +				ste,config = <&gpio_in_pd>;
> +			};
> +		};
> +		wlan_en_default_mode: wlan_en_default {
> +			skomer_cfg2 {
> +				pins = "GPIO215_AH13";
> +				ste,config = <&gpio_out_lo>;
> +			};
> +		};
> +	};
> +	bluetooth {
> +		bluetooth_default_mode: bluetooth_default {
> +			skomer_cfg1 {
> +				pins = "GPIO199_AH23", "GPIO222_AJ9";
> +				ste,config = <&gpio_out_lo>;
> +			};
> +			skomer_cfg2 {
> +				pins = "GPIO97_D9";
> +				ste,config = <&gpio_in_nopull>;
> +			};
> +		};
> +	};
> +	vibrator {
> +		vibrator_default: vibrator_default {
> +			skomer_cfg1 {
> +				pins = "GPIO195_AG28";	/* MOT_EN */
> +				ste,config = <&gpio_out_lo>;
> +			};
> +		};
> +	};
> +};
> +
> +&ab8505_gpio {
> +	/* Hog a few default settings */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gpio_default>;
> +
> +	gpio {
> +		gpio_default: gpio_default {
> +			skomer_mux {
> +				/* Change unused pins to GPIO mode */
> +				function = "gpio";
> +				groups = "gpio3_a_1",	/* default: SysClkReq4 */
> +					 "gpio14_a_1";	/* default: PWMOut1 */
> +			};
> +			skomer_cfg1 {
> +				pins = "GPIO11_B17", "GPIO13_D17", "GPIO50_L4";
> +				bias-disable;
> +			};
> +		};
> +	};
> +};
> -- 
> 2.21.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
