Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20326C02A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 11:47:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLuSgdcCRlN3Y1S4d/r0zo0DdZInDBcDDl1JxOpw/LI=; b=bt/FSQMSbbtC2I
	rB/1EOaTtJmk6zi51zhZqhpIio0B5y8wIxYECM79dFEQO1T/db436jXLr81hgpDa4AHSI4ndvcyQ5
	owiG6SGPGPvFScWjbWQAeFSxrrk0pTEz7IdPlR+UPMRJtZsl7FWjK64a/yQwinbLu3IIE2nhavbcN
	xQaN1YXYjUUxGo/ZJQnSZJqku4ytrL8JsCNpWYx8mhtwD1JMsrFOtqu8LKiTv8VfHxgdbaHR/hO0x
	AEgOXFYpCknD4y/xT//SCs4yp0LU//fdKeccPQjcK0tI7C+DH5J38bJo21zTZrmAbYD1ontWdZnR5
	2BrUX3f84XHRXhd2Ce1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDmqp-0001Fo-B2; Fri, 27 Sep 2019 09:47:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDmqb-0001Eh-NR
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 09:47:35 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iDmqS-0005c9-1p; Fri, 27 Sep 2019 11:47:24 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iDmqP-0001Bj-7g; Fri, 27 Sep 2019 11:47:21 +0200
Date: Fri, 27 Sep 2019 11:47:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH 1/3] ARM: dts: add Netronix E60K02 board common file
Message-ID: <20190927094721.w26ggnli4f5a64uv@pengutronix.de>
References: <20190927061423.17278-1-andreas@kemnade.info>
 <20190927061423.17278-2-andreas@kemnade.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927061423.17278-2-andreas@kemnade.info>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:21:33 up 132 days, 15:39, 86 users,  load average: 0.09, 0.07,
 0.09
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_024733_921958_5042E56C 
X-CRM114-Status: GOOD (  28.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, marex@denx.de, devicetree@vger.kernel.org,
 andrew.smirnov@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 angus@akkea.ca, linux-kernel@vger.kernel.org, j.neuschaefer@gmx.net,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 manivannan.sadhasivam@linaro.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andreas,

thanks for the patch.

On 19-09-27 08:14, Andreas Kemnade wrote:
> The Netronix board E60K02 can be found some several Ebook-Readers,
> at least the Kobo Clara HD and the Tolino Shine 3. The board
> is equipped with different SoCs.
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
> backligt dependencies:
> module autoloading:
> https://patchwork.kernel.org/patch/11139987/ 
> enable-gpios property:
> https://patchwork.kernel.org/patch/11143795/
> 
> arch/arm/boot/dts/e60k02.dtsi | 339 ++++++++++++++++++++++++++++++++++
>  1 file changed, 339 insertions(+)
>  create mode 100644 arch/arm/boot/dts/e60k02.dtsi
> 
> diff --git a/arch/arm/boot/dts/e60k02.dtsi b/arch/arm/boot/dts/e60k02.dtsi
> new file mode 100644
> index 000000000000..c4fa8e314e2e
> --- /dev/null
> +++ b/arch/arm/boot/dts/e60k02.dtsi
> @@ -0,0 +1,339 @@
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
> +
> +/ {
> +
> +	memory {
> +		reg = <0x80000000 0x80000000>;
> +	};
> +
> +	chosen {
> +		stdout-path = &uart1;
> +	};
> +
> +	wifi_pwrseq: wifi_pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		post-power-on-delay-ms = <20>;
> +		reset-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;

Can you add a pinctrl-entry here please? The general rule is to mux
things where you use it.

> +	};

Please reorder the whole dt alphabetical.

> +
> +	regulators {
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <0>;

Drop the regultors { } container especially if we only have a single
regulator.

> +
> +		reg_sd3_vmmc: wifi_regulator {

Either use:
reg_sd3_vmmc: regulator-sd3-vmmc
or
reg_wifi: regulator-wifi

> +			compatible = "regulator-fixed";
> +			regulator-name = "SD3_SPWR";
> +			regulator-min-microvolt = <3000000>;
> +			regulator-max-microvolt = <3000000>;
> +
> +			gpio = <&gpio4 29 GPIO_ACTIVE_HIGH>;

Please add a pinctrl here to mux this gpio.

> +			enable-active-high;
> +
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_led>;

Please move all muxing you made here into this file or add phandles so
the dts file need to add only the muxing stuff. This applies to all
pinctrl you made here.

> +
> +		GLED {
> +			gpios = <&gpio5 7 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger = "timer";
> +		};
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio_keys>;
> +		power {
> +			label = "Power";
> +			gpios = <&gpio5 8 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_POWER>;

Add missing header: dt-bindings/input/input.h to use this.

> +			gpio-key,wakeup;
> +		};
> +		cover {
> +			label = "Cover";
> +			gpios = <&gpio5 12 GPIO_ACTIVE_LOW>;
> +			linux,code = <SW_LID>;
> +			linux,input-type = <0x05>;    /* EV_SW */

In the header above EV_SW is also specified so please use it here.

> +			gpio-key,wakeup;
> +		};
> +	};
> +
> +};
> +
> +
> +

Whitespaces

> +&audmux {
> +	pinctrl-names = "default";
> +	status = "disabled";

Why you mentioned a pinctrl-names here without the mux? Do we need the
status line here? The common case is that such devices are off by
default/the base dt.

> +};
> +
> +&snvs_rtc {
> +	status = "disabled";

Same applies here.

> +};
> +
> +&i2c1 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default","sleep";
> +	pinctrl-0 = <&pinctrl_i2c1 &pinctrl_lm3630a_bl_gpio>;

The &pinctrl_lm3630a_bl_gpio should be moved into the lm3630a node.

> +	pinctrl-1 = <&pinctrl_i2c1_sleep>;
> +	status = "okay";
> +
> +	lm3630a: lm3630a-i2c@36 {

please name it backlight@36

> +		reg = <0x36>;
> +		status = "ok";

status lines are always be the last and if it is okay you can drop it
because the default is okay.

> +
> +		compatible = "ti,lm3630a";
> +		enable-gpios = <&gpio2 10 0>;

Please use GPIO_ACTIVE_HIGH.

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
> +	};
> +};
> +
> +&i2c3 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c3 &pinctrl_ricoh_gpio>;

Device mux goes into the device.

> +	status = "okay";
> +
> +	ricoh619: ricoh619-i2c@32 {

Please name it pmic@32

> +		compatible = "ricoh,rc5t619";
> +		reg = <0x32>;
> +
> +		system-power-controller;
> +		gpios = <&gpio5 11 GPIO_ACTIVE_LOW>;
> +		gpio_chg = <&gpio5 15 GPIO_ACTIVE_LOW>;
> +		gpio_bat_low = <&gpio3 28 GPIO_ACTIVE_LOW>;
> +	};
> +
> +};
> +
> +&ricoh619
> +{

Nope. The whole bunch should be moved to the place above where add the
device.

> +	compatible = "ricoh,rc5t619";
> +
> +	regulators {
> +		ricoh619_dcdc1_reg: DCDC1 {

please drop the ricoh619_ prefix.

> +			regulator-name = "DCDC1";
> +			regulator-min-microvolt = <300000>;
> +			regulator-max-microvolt = <1875000>;
> +			regulator-always-on;
> +			regulator-boot-on;
> +			regulator-state-mem {
> +				regulator-on-in-suspend;
> +				regulator-suspend-microvolt = <900000>;

regulator-suspend-microvolt is deprecated. Please use
regulator-suspend-min-microvolt and regulator-suspend-max-microvolt.

> +			};
> +		};
> +
> +		/* Core3_3V3 */
> +		ricoh619_dcdc2_reg: DCDC2 {
> +			regulator-name = "DCDC2";
> +			regulator-always-on;
> +			regulator-boot-on;
> +			regulator-state-mem {
> +				regulator-on-in-suspend;
> +				regulator-suspend-microvolt = <3300000>;
> +			};
> +		};
> +
> +		ricoh619_dcdc3_reg: DCDC3 {
> +			regulator-name = "DCDC3";
> +			regulator-min-microvolt = <300000>;
> +			regulator-max-microvolt = <1875000>;
> +			regulator-always-on;//

Remove //

> +			regulator-boot-on;
> +			regulator-state-mem {
> +				regulator-on-in-suspend;
> +				regulator-suspend-microvolt = <1140000>;
> +			};
> +		};
> +
> +		/* Core4_1V2 */
> +		ricoh619_dcdc4_reg: DCDC4 {
> +			regulator-name = "DCDC4";
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1200000>;
> +			regulator-always-on;
> +			regulator-boot-on;
> +			regulator-state-mem {
> +				regulator-on-in-suspend;
> +				regulator-suspend-microvolt = <1140000>;
> +			};
> +		};
> +
> +		/* Core4_1V8 */
> +		ricoh619_dcdc5_reg: DCDC5 {
> +			regulator-name = "DCDC5";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-always-on;
> +			regulator-boot-on;
> +			regulator-state-mem {
> +				regulator-on-in-suspend;
> +				regulator-suspend-microvolt = <1700000>;
> +			};
> +		};
> +
> +		/* IR_3V3 */
> +		ricoh619_ldo1_reg: LDO1  {
> +			regulator-name = "LDO1";
> +			//regulator-always-on;
> +			regulator-boot-on;
> +		};
> +
> +		/* Core1_3V3 */
> +		ricoh619_ldo2_reg: LDO2  {
> +			regulator-name = "LDO2";
> +			regulator-always-on;
> +			regulator-boot-on;
> +			regulator-state-mem {
> +				regulator-on-in-suspend;
> +				regulator-suspend-microvolt = <3000000>;
> +			};
> +		};
> +
> +		/* Core5_1V2 */
> +		ricoh619_ldo3_reg: LDO3  {
> +			regulator-name = "LDO3";
> +			regulator-always-on;
> +			regulator-boot-on;
> +		};
> +
> +		ricoh619_ldo4_reg: LDO4 {
> +			regulator-name = "LDO4";
> +			regulator-boot-on;
> +		};
> +
> +		/* SPD_3V3 */
> +		ricoh619_ldo5_reg: LDO5 {
> +			regulator-name = "LDO5";
> +			regulator-always-on;
> +			regulator-boot-on;
> +		};
> +
> +		/* DDR_0V6 */
> +		ricoh619_ldo6_reg: LDO6 {
> +			regulator-name = "LDO6";
> +			regulator-always-on;
> +			regulator-boot-on;
> +		};
> +
> +		/* VDD_PWM */
> +		ricoh619_ldo7_reg: LDO7 {
> +			regulator-name = "LDO7";
> +			regulator-always-on;
> +			regulator-boot-on;
> +		};
> +
> +		/* ldo_1v8 */
> +		ricoh619_ldo8_reg: LDO8 {
> +			regulator-name = "LDO8";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-always-on;
> +			regulator-boot-on;
> +		};
> +
> +		ricoh619_ldo9_reg: LDO9 {
> +			regulator-name = "LDO9";
> +			regulator-boot-on;
> +		};
> +
> +		ricoh619_ldo10_reg: LDO10 {
> +			regulator-name = "LDO10";
> +			regulator-boot-on;
> +		};
> +
> +		ricoh619_ldortc1_reg: LDORTC1  {
> +			regulator-name = "LDORTC1";
> +			regulator-boot-on;
> +		};
> +
> +		ricoh619_ldortc2_reg: LDORTC2 {
> +			regulator-name = "LDORTC2";
> +			regulator-boot-on;
> +		};
> +	};
> +};
> +
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	status = "okay";
> +};
> +
> +&usdhc1 {
> +	status = "disabled";
> +};

Can be dropped

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
> +	pinctrl-0 = <&pinctrl_usdhc3>, <&pinctrl_usdhc3_pwr>;
> +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> +	pinctrl-3 = <&pinctrl_usdhc3_sleep>, <&pinctrl_usdhc3_pwr>;
> +	vmmc-supply = <&reg_sd3_vmmc>;
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
> +
> +
> +&ssi2 {
> +	status = "disabled";
> +};

Can be dropped.


Thanks for your patch.

Regards,
  Marco

> +
> -- 
> 2.20.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
