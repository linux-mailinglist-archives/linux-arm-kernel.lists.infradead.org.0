Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EE0ED74F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 02:51:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJAXCoWHSTeNDDKgPs/M/Hvmm1lvfLuxe7uOlFCndwM=; b=Gj05pdtUZuYQBv
	0WTMGy2cRgmP1fB6DV8XK4so48yJKaUdUlOaLxhhmeU3P6B0oIzjn3AXmu87+61+/aKojCKqcSs1+
	FQ1rzY3kOaSg6UYBo3B3AJGVGXqA2z02bpThAlgyjbJt+9Ddw58OGDjR/DLY9LO3DSAK5GFH4PZtc
	QfLBO/JjFvcW665PUNidawyBpfY1rMz/oXgcgpcr8KfbrOBUwqABHiy5kTbBKyetLlR7V1Dq7nT+M
	l7o4ClRMEWSD3p/sCJAShqHCkpp4+BhPx+OyweVQ29l6baVE929FGrSLvpgwXjKKwxDXKTkuvlRdH
	64PUrUUr/oLdyVTOS6Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRRWC-0000O0-Ox; Mon, 04 Nov 2019 01:50:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRRW4-0000NU-4h
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 01:50:50 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BBF15217F5;
 Mon,  4 Nov 2019 01:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572832247;
 bh=9/3y7e94U2n//cYd33VwRJrgEo/Z43DYRtJgt0vYaAI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iVkHp9LalyweinXpS0HDmqHDn2YU3GC4YufQju+cTma8/Afkm3jpPt/vtR3FFhU+x
 aPAb8ftZssALvkwvY2RBl58RV7c9489J6lu1ow/ZRjqFJ5rNWp0Q+AtKnNbTAhUkYq
 XcHcojE8wzvLC5k1Xbprb7A6I419ECtcz/Bwp0Y0=
Date: Mon, 4 Nov 2019 09:50:19 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH v4 2/3] ARM: dts: add Netronix E60K02 board common file
Message-ID: <20191104015018.GK24620@dragon>
References: <20191026195748.14562-1-andreas@kemnade.info>
 <20191026195748.14562-3-andreas@kemnade.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191026195748.14562-3-andreas@kemnade.info>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_175048_225884_4C2CA242 
X-CRM114-Status: GOOD (  23.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, marex@denx.de, Marco Felsch <m.felsch@pengutronix.de>,
 devicetree@vger.kernel.org, andrew.smirnov@gmail.com, s.hauer@pengutronix.de,
 angus@akkea.ca, linux-kernel@vger.kernel.org, j.neuschaefer@gmx.net,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 manivannan.sadhasivam@linaro.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 26, 2019 at 09:57:47PM +0200, Andreas Kemnade wrote:
> The Netronix board E60K02 can be found some several Ebook-Readers,
> at least the Kobo Clara HD and the Tolino Shine 3. The board
> is equipped with different SoCs requiring different pinmuxes.
> 
> For now the following peripherals are included:
> - LED
> - Power Key
> - Cover (gpio via hall sensor)
> - RC5T619 PMIC (the kernel misses support for rtc and charger
>   subdevices).
> - Backlight via lm3630a
> - Wifi sdio chip detection (mmc-powerseq and stuff)
> 
> It is based on vendor kernel but heavily reworked due to many
> changed bindings.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
> Changes in v4:
> - style cleanup, non-legacy wakeup-source
> - remove pinmux-* properties
> 
> Changes in v3:
> - better led name
> - correct memory size
> - comments about missing devices
> 
> Changes in v2:
> - reordered, was 1/3
> - moved pinmuxes to their actual users, not the parents
>   of them
> - removed some already-disabled stuff
> - minor cleanups
> 
> backligt dependencies:
> module autoloading:
> https://patchwork.kernel.org/patch/11139987/ 
> enable-gpios property (accepted and acked):
> https://patchwork.kernel.org/patch/11143795/
> 
>  arch/arm/boot/dts/e60k02.dtsi | 305 ++++++++++++++++++++++++++++++++++
>  1 file changed, 305 insertions(+)
>  create mode 100644 arch/arm/boot/dts/e60k02.dtsi
> 
> diff --git a/arch/arm/boot/dts/e60k02.dtsi b/arch/arm/boot/dts/e60k02.dtsi
> new file mode 100644
> index 000000000000..97b861042789
> --- /dev/null
> +++ b/arch/arm/boot/dts/e60k02.dtsi
> @@ -0,0 +1,305 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2019 Andreas Kemnade
> + * based on works
> + * Copyright 2016 Freescale Semiconductor, Inc.
> + * and
> + * Copyright (C) 2014 Ricoh Electronic Devices Co., Ltd
> + *
> + * Netronix E60K02 board common.
> + * This board is equipped with different SoCs and
> + * found in ebook-readers like the Kobo Clara HD (with i.MX6SLL) and
> + * the Tolino Shine 3 (with i.MX6SL)
> + */
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +
> +	chosen {
> +		stdout-path = &uart1;
> +	};
> +
> +	gpio_keys: gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		power {
> +			label = "Power";
> +			gpios = <&gpio5 8 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_POWER>;
> +			wakeup-source;
> +		};

Should have a newline here.  I fixed it up and applied the patch.

Shawn

> +		cover {
> +			label = "Cover";
> +			gpios = <&gpio5 12 GPIO_ACTIVE_LOW>;
> +			linux,code = <SW_LID>;
> +			linux,input-type = <EV_SW>;
> +			wakeup-source;
> +		};
> +	};
> +
> +	leds: leds {
> +		compatible = "gpio-leds";
> +
> +		on {
> +			label = "e60k02:white:on";
> +			gpios = <&gpio5 7 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger = "timer";
> +		};
> +	};
> +
> +	memory {
> +		reg = <0x80000000 0x20000000>;
> +	};
> +
> +	reg_wifi: regulator-wifi {
> +		compatible = "regulator-fixed";
> +		regulator-name = "SD3_SPWR";
> +		regulator-min-microvolt = <3000000>;
> +		regulator-max-microvolt = <3000000>;
> +		gpio = <&gpio4 29 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	wifi_pwrseq: wifi_pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		post-power-on-delay-ms = <20>;
> +		reset-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
> +	};
> +};
> +
> +
> +&i2c1 {
> +	clock-frequency = <100000>;
> +	status = "okay";
> +
> +	lm3630a: backlight@36 {
> +		reg = <0x36>;
> +		compatible = "ti,lm3630a";
> +		enable-gpios = <&gpio2 10 GPIO_ACTIVE_HIGH>;
> +
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		led@0 {
> +			reg = <0>;
> +			led-sources = <0>;
> +			label = "backlight_warm";
> +			default-brightness = <0>;
> +			max-brightness = <255>;
> +		};
> +
> +		led@1 {
> +			reg = <1>;
> +			led-sources = <1>;
> +			label = "backlight_cold";
> +			default-brightness = <0>;
> +			max-brightness = <255>;
> +		};
> +	};
> +};
> +
> +&i2c2 {
> +	clock-frequency = <100000>;
> +	status = "okay";
> +
> +	/* TODO: CYTTSP5 touch controller at 0x24 */
> +
> +	/* TODO: TPS65185 PMIC for E Ink at 0x68 */
> +
> +};
> +
> +&i2c3 {
> +	clock-frequency = <100000>;
> +	status = "okay";
> +
> +	ricoh619: pmic@32 {
> +		compatible = "ricoh,rc5t619";
> +		reg = <0x32>;
> +		system-power-controller;
> +
> +		regulators {
> +			dcdc1_reg: DCDC1 {
> +				regulator-name = "DCDC1";
> +				regulator-min-microvolt = <300000>;
> +				regulator-max-microvolt = <1875000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-max-microvolt = <900000>;
> +					regulator-suspend-min-microvolt = <900000>;
> +				};
> +			};
> +
> +			/* Core3_3V3 */
> +			dcdc2_reg: DCDC2 {
> +				regulator-name = "DCDC2";
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-max-microvolt = <3300000>;
> +					regulator-suspend-min-microvolt = <3300000>;
> +				};
> +			};
> +
> +			dcdc3_reg: DCDC3 {
> +				regulator-name = "DCDC3";
> +				regulator-min-microvolt = <300000>;
> +				regulator-max-microvolt = <1875000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-max-microvolt = <1140000>;
> +					regulator-suspend-min-microvolt = <1140000>;
> +				};
> +			};
> +
> +			/* Core4_1V2 */
> +			dcdc4_reg: DCDC4 {
> +				regulator-name = "DCDC4";
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <1200000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-max-microvolt = <1140000>;
> +					regulator-suspend-min-microvolt = <1140000>;
> +				};
> +			};
> +
> +			/* Core4_1V8 */
> +			dcdc5_reg: DCDC5 {
> +				regulator-name = "DCDC5";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-max-microvolt = <1700000>;
> +					regulator-suspend-min-microvolt = <1700000>;
> +				};
> +			};
> +
> +			/* IR_3V3 */
> +			ldo1_reg: LDO1  {
> +				regulator-name = "LDO1";
> +				regulator-boot-on;
> +			};
> +
> +			/* Core1_3V3 */
> +			ldo2_reg: LDO2  {
> +				regulator-name = "LDO2";
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-max-microvolt = <3000000>;
> +					regulator-suspend-min-microvolt = <3000000>;
> +				};
> +			};
> +
> +			/* Core5_1V2 */
> +			ldo3_reg: LDO3  {
> +				regulator-name = "LDO3";
> +				regulator-always-on;
> +				regulator-boot-on;
> +			};
> +
> +			ldo4_reg: LDO4 {
> +				regulator-name = "LDO4";
> +				regulator-boot-on;
> +			};
> +
> +			/* SPD_3V3 */
> +			ldo5_reg: LDO5 {
> +				regulator-name = "LDO5";
> +				regulator-always-on;
> +				regulator-boot-on;
> +			};
> +
> +			/* DDR_0V6 */
> +			ldo6_reg: LDO6 {
> +				regulator-name = "LDO6";
> +				regulator-always-on;
> +				regulator-boot-on;
> +			};
> +
> +			/* VDD_PWM */
> +			ldo7_reg: LDO7 {
> +				regulator-name = "LDO7";
> +				regulator-always-on;
> +				regulator-boot-on;
> +			};
> +
> +			/* ldo_1v8 */
> +			ldo8_reg: LDO8 {
> +				regulator-name = "LDO8";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +			};
> +
> +			ldo9_reg: LDO9 {
> +				regulator-name = "LDO9";
> +				regulator-boot-on;
> +			};
> +
> +			ldo10_reg: LDO10 {
> +				regulator-name = "LDO10";
> +				regulator-boot-on;
> +			};
> +
> +			ldortc1_reg: LDORTC1  {
> +				regulator-name = "LDORTC1";
> +				regulator-boot-on;
> +			};
> +
> +			ldortc2_reg: LDORTC2 {
> +				regulator-name = "LDORTC2";
> +				regulator-boot-on;
> +			};
> +		};
> +	};
> +};
> +
> +&snvs_rtc {
> +	/* we are using the rtc in the pmic, not disabled in imx6sll.dtsi */
> +	status = "disabled";
> +};
> +
> +&uart1 {
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&usdhc3 {
> +	vmmc-supply = <&reg_wifi>;
> +	mmc-pwrseq = <&wifi_pwrseq>;
> +	cap-power-off-card;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&usbotg1 {
> +	pinctrl-names = "default";
> +	disable-over-current;
> +	srp-disable;
> +	hnp-disable;
> +	adp-disable;
> +	status = "okay";
> +};
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
