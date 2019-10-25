Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 066BEE4BC8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 15:07:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kSeLnE9ng9cIrW1HcWMPHvTAu5plxkpLtPh6+iiF0Nw=; b=rxGmVpzS6cnWnq
	YpFF9ZRkaTMFtVmk+Ix3XZEK6kKvjXdmZadFjCGk/XPsNL86hN3UMMAuo41VnljWVJTfh7k4/jKZt
	MJxkS4AOgVAEbmjc4lYrn5lMboZMYqy+jL9OwwndvH956phUeh6DeKb7s89vLlf0Y0G7FO3UImLXa
	vr7fd4sE7/G8cmtVylpbqdkeJ0RHI6a8FvwSeqpPWqLr9SxqWh+KulV9BlbXuR5Ll3XzMWQPQcKC3
	+gO6602DeSSQywD1+jA/gStyYfhgEJKksiETDanKo6F2bTL9Qe3+iJhxDtfRuVfxnFUJXgzUpuCnb
	4CD4T/Rfu/E0a7KGC3fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNzJ7-0004vg-NR; Fri, 25 Oct 2019 13:07:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNzIx-0004vJ-VC
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 13:07:01 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 227D720578;
 Fri, 25 Oct 2019 13:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572008819;
 bh=jse2VV9XRV68UmWGZMZXfqxHUgm0iiImI3Mq9IefhOQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1KePMc20zwUm/NvqZ2D6m3HmGc6h/dcDi+yC4VeRE33+ZGItgwZYV3JxochrEKocI
 WxsTqLFBVD3LYfUNztlE34RlGXb/kD1x79Uh4MLMgWvlzL5VedBVPI9ebcJNv6ngxK
 6EtbBR+R3/RIQJ7kmAhNXIIUFk3uPjsx9nwaZfTI=
Date: Fri, 25 Oct 2019 21:06:36 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH v3 2/3] ARM: dts: add Netronix E60K02 board common file
Message-ID: <20191025130625.GM3208@dragon>
References: <20191010192357.27884-1-andreas@kemnade.info>
 <20191010192357.27884-3-andreas@kemnade.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010192357.27884-3-andreas@kemnade.info>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_060700_047847_0730C846 
X-CRM114-Status: GOOD (  22.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, Oct 10, 2019 at 09:23:56PM +0200, Andreas Kemnade wrote:
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
>  arch/arm/boot/dts/e60k02.dtsi | 337 ++++++++++++++++++++++++++++++++++
>  1 file changed, 337 insertions(+)
>  create mode 100644 arch/arm/boot/dts/e60k02.dtsi
> 
> diff --git a/arch/arm/boot/dts/e60k02.dtsi b/arch/arm/boot/dts/e60k02.dtsi
> new file mode 100644
> index 0000000000000..84c0447b9a1bd
> --- /dev/null
> +++ b/arch/arm/boot/dts/e60k02.dtsi
> @@ -0,0 +1,337 @@
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
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio_keys>;

Please have a newline between property list and child node.

> +		power {
> +			label = "Power";
> +			gpios = <&gpio5 8 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_POWER>;
> +			gpio-key,wakeup;

Check out Documentation/devicetree/bindings/power/wakeup-source.txt

> +		};
> +		cover {
> +			label = "Cover";
> +			gpios = <&gpio5 12 GPIO_ACTIVE_LOW>;
> +			linux,code = <SW_LID>;
> +			linux,input-type = <EV_SW>;
> +			gpio-key,wakeup;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_led>;
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
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_wifi_power>;
> +		regulator-name = "SD3_SPWR";
> +		regulator-min-microvolt = <3000000>;
> +		regulator-max-microvolt = <3000000>;
> +

Drop this newline.

> +		gpio = <&gpio4 29 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +

Ditto

> +	};
> +
> +	wifi_pwrseq: wifi_pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_wifi_reset>;
> +		post-power-on-delay-ms = <20>;
> +		reset-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
> +	};
> +

Ditto

> +};
> +
> +
> +&i2c1 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default","sleep";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	pinctrl-1 = <&pinctrl_i2c1_sleep>;
> +	status = "okay";
> +
> +	lm3630a: backlight@36 {
> +		reg = <0x36>;
> +

Ditto

> +		compatible = "ti,lm3630a";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_lm3630a_bl_gpio>;
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
> +

Ditto

> +	};
> +};
> +
> +&i2c2 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default","sleep";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	pinctrl-1 = <&pinctrl_i2c2_sleep>;
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
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c3>;
> +	status = "okay";
> +
> +	ricoh619: pmic@32 {
> +		compatible = "ricoh,rc5t619";
> +		reg = <0x32>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_ricoh_gpio>;
> +		system-power-controller;
> +
> +		regulators {
> +			dcdc1_reg: DCDC1 {
> +				regulator-name = "DCDC1";
> +				regulator-min-microvolt = <300000>;
> +				regulator-max-microvolt = <1875000>;
> +				regulator-always-on;
> +				regulator-boot-on;

Have a newline between property list and child node.

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
> +

Drop the newline.

> +	};
> +

Ditto

Shawn

> +};
> +
> +&snvs_rtc {
> +	/* we are using the rtc in the pmic, not disabled imx6sll.dtsi */
> +	status = "disabled";
> +};
> +
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz","sleep";
> +	pinctrl-0 = <&pinctrl_usdhc2>;
> +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
> +	pinctrl-3 = <&pinctrl_usdhc2_sleep>;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&usdhc3 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz","sleep";
> +	pinctrl-0 = <&pinctrl_usdhc3>;
> +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> +	pinctrl-3 = <&pinctrl_usdhc3_sleep>;
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
