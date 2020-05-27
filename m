Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F8A1E3DB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 11:36:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8mcbwrZ7d75PIja7u92PT0/WByMkC1Q5Y0G/N/UtKE=; b=a5FsmBRYsfRnhG
	9t7qTA5qqicSEvjUB2O2369k0HLCIxgqB6TCO+C0npnZFKUNdO87s6VgwqmjGpanoQ0v6m94Yy61B
	Q9trEuGPHZ0TT2ekDfw/Ry5oDmzAOR3oBX8OF637Gs6ARYbTv0ATUQwH/Ph5RZ/Z5WomX/5ivKZAr
	UB0pOpr1K7NSfFQ0H5oYUvqEdZlt5ud4QiPdcAgx7dcdxdL3N5fgCgO+zAc8GiJKqIBuYLKpDzJyX
	oa8A51It5cy+DNiUhE0cfLUWHFeqpUvppO8NOmz0IW78/ZdV1VIOMFtvAJGYbuy58KLYD8MYDPM0S
	XtL5mHqKWvL9JE34gZQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdsTq-0005bT-Op; Wed, 27 May 2020 09:36:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdsTd-0005aP-73
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 09:36:00 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jdsTN-0005OD-LK; Wed, 27 May 2020 11:35:41 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1jdsTK-0000HT-TK; Wed, 27 May 2020 11:35:38 +0200
Date: Wed, 27 May 2020 11:35:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH 1/2] arm64: dts: Add a device tree for the Librem5 phone
Message-ID: <20200527093538.xqtdoybl5hx27ccv@pengutronix.de>
References: <20200514155737.12160-1-martin.kepplinger@puri.sm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514155737.12160-1-martin.kepplinger@puri.sm>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:24:11 up 193 days,  5:42, 196 users,  load average: 0.51, 0.92,
 1.06
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_023557_620040_F4CEBFF8 
X-CRM114-Status: GOOD (  21.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: robh@kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 devicetree@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 angus@akkea.ca, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, mchehab@kernel.org, festevam@gmail.com, agx@sigxcpu.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

On 20-05-14 17:57, Martin Kepplinger wrote:
> From: "Angus Ainslie (Purism)" <angus@akkea.ca>
> =

> Add a devicetree description for the Librem 5 phone. The early batches
> that have been sold are supported as well as the mass-produced device
> available later this year, see https://puri.sm/products/librem-5/
> =

> This boots to a working console with working WWAN modem, wifi usdhc,
> IMU sensor device, proximity sensor, haptic motor, gpio keys, GNSS and LE=
Ds.
> =

> Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
> Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |    1 +
>  .../boot/dts/freescale/imx8mq-librem5.dts     | 1174 +++++++++++++++++
>  2 files changed, 1175 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-librem5.dts
> =

> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts=
/freescale/Makefile
> index cd38d04da5a7..342579121f98 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -34,6 +34,7 @@ dtb-$(CONFIG_ARCH_MXC) +=3D imx8mn-ddr4-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mp-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mq-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mq-hummingboard-pulse.dtb
> +dtb-$(CONFIG_ARCH_MXC) +=3D imx8mq-librem5.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mq-librem5-devkit.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mq-nitrogen.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mq-phanbell.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5.dts b/arch/arm6=
4/boot/dts/freescale/imx8mq-librem5.dts
> new file mode 100644
> index 000000000000..95c105b4c120
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5.dts
> @@ -0,0 +1,1174 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2018-2020 Purism SPC
> + */
> +
> +/dts-v1/;
> +
> +#include "dt-bindings/input/input.h"
> +#include "dt-bindings/pwm/pwm.h"
> +#include "dt-bindings/usb/pd.h"
> +#include "imx8mq.dtsi"
> +
> +/ {
> +	model =3D "Purism Librem 5";
> +	compatible =3D "purism,librem5", "fsl,imx8mq";
> +
> +	backlight_dsi: backlight-dsi {
> +		compatible =3D "led-backlight";
> +		leds =3D <&led_backlight>;
> +		brightness-levels =3D <255>;
> +		default-brightness-level =3D <100>;
> +	};
> +
> +	bm818_codec: sound-wwan-codec {
> +		compatible =3D "broadmobi,bm818", "option,gtm601";
> +		#sound-dai-cells =3D <0>;
> +	};

Please sort the node names alpabetical.

> +
> +	chosen {
> +		stdout-path =3D &uart1;
> +	};
> +
> +	gpio-keys {
> +		compatible =3D "gpio-keys";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_keys>, <&pinctrl_hp>;
> +
> +		hp-det {
> +			label =3D "HP_DET";
> +			gpios =3D <&gpio3 9 GPIO_ACTIVE_HIGH>;
> +			wakeup-source;
> +			linux,code =3D <KEY_HP>;

Nit: I would add the wakeup-source behind the linux,code.

> +		};
> +
> +		vol-down {
> +			label =3D "VOL_DOWN";
> +			gpios =3D <&gpio1 17 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <KEY_VOLUMEDOWN>;
> +		};
> +
> +		vol-up {
> +			label =3D "VOL_UP";
> +			gpios =3D <&gpio1 16 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <KEY_VOLUMEUP>;
> +		};
> +	};
> +
> +	pwmleds {
> +		compatible =3D "pwm-leds";
> +
> +		blue {
> +			label =3D "phone:blue:front";
> +			max-brightness =3D <248>;
> +			pwms =3D <&pwm2 0 50000>;
> +		};
> +
> +		green {
> +			label =3D "phone:green:front";
> +			max-brightness =3D <248>;
> +			pwms =3D <&pwm4 0 50000>;
> +		};
> +
> +		red {
> +			label =3D "phone:red:front";
> +			max-brightness =3D <248>;
> +			pwms =3D <&pwm3 0 50000>;
> +		};
> +	};
> +
> +	pmic_osc: clock-pmic {
> +		compatible =3D "fixed-clock";
> +		#clock-cells =3D <0>;
> +		clock-frequency =3D <32768>;
> +		clock-output-names =3D "pmic_osc";
> +	};

Please sort nodes alphabetical.

> +
> +	reg_audio_pwr_en: regulator-audio-pwr-en {
> +		compatible =3D "regulator-fixed";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_audiopwr>;
> +		regulator-name =3D "AUDIO_PWR_EN";
> +		regulator-min-microvolt =3D <1800000>;
> +		regulator-max-microvolt =3D <1800000>;
> +		gpio =3D <&gpio1 4 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-always-on;

Why should this regulator be always on? The wm8962.c driver can handle
the regualtor enable/disable.

> +	};
> +
> +	reg_aud_1v8: regulator-audio-v1v8 {
				^
		     regulator-audio-1v8?

> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "aud_1v8";

Is it intended to use capitalized and no-capitalized regulator-name's?

> +		regulator-min-microvolt =3D <1800000>;
> +		regulator-max-microvolt =3D <1800000>;
> +		vin-supply =3D <&reg_audio_pwr_en>;
> +	};

Can we squash regulator-audio-pwr-en and regulator-audio-v1v8?

> +
> +	reg_gnss: regulator-gnss {
> +		compatible =3D "regulator-fixed";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_gnsspwr>;
> +		regulator-name =3D "GNSS";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		gpio =3D <&gpio3 12 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	reg_hub: regulator-hub {
> +		compatible =3D "regulator-fixed";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_hub_pwr>;
> +		regulator-name =3D "HUB";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		gpio =3D <&gpio1 14 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	reg_lcd_1v8: regulator-lcd-1v8 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "lcd_1v8";
> +		regulator-min-microvolt =3D <1800000>;
> +		regulator-max-microvolt =3D <1800000>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_dsien>;
> +		vin-supply =3D <&reg_vdd_1v8>;
> +		enable-active-high;
> +		gpio =3D <&gpio1 5 GPIO_ACTIVE_HIGH>;
> +	};

This regulator is never used.

> +
> +	reg_lcd_3v4: regulator-lcd-3v4 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "lcd_3v4";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_dsibiasen>;
> +		vin-supply =3D <&reg_vsys_3v4>;
> +		enable-active-high;
> +		gpio =3D <&gpio1 20 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	reg_vdd_sen: regulator-vdd-sen {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "vdd_sen";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +	};
> +
> +	reg_vdd_3v3: regulator-vdd-3v3 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "vdd_3v3";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +	};
> +
> +	reg_vdd_1v8: regulator-vdd-1v8 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "vdd_1v8";
> +		regulator-min-microvolt =3D <1800000>;
> +		regulator-max-microvolt =3D <1800000>;
> +	};
> +
> +	reg_vsys_3v4: regulator-vsys-3v4 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "vsys_3v4";
> +		regulator-min-microvolt =3D <3400000>;
> +		regulator-max-microvolt =3D <3400000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_3v3_wifi: regulator-3v3-wifi {
			^
	reg_wifi_3v3: regulator-wifi-3v3?

> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "3v3_wifi";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +	};
> +
> +	sound {
> +		compatible =3D "simple-audio-card";
> +		simple-audio-card,name =3D "wm8962";
> +		simple-audio-card,format =3D "i2s";
> +		simple-audio-card,widgets =3D
> +			"Headphone", "Headphone",
> +			"Microphone", "Headset Mic",
> +			"Microphone", "Digital Mic",
> +			"Speaker", "Speaker";
> +		simple-audio-card,routing =3D
> +			"Headphone", "HPOUTL",
> +			"Headphone", "HPOUTR",
> +			"Speaker", "SPKOUTL",
> +			"Speaker", "SPKOUTR",
> +			"Headset Mic", "MICBIAS",
> +			"IN3R", "Headset Mic",
> +			"DMICDAT", "Digital Mic";
> +		simple-audio-card,cpu {
> +			sound-dai =3D <&sai2>;
> +		};
> +		simple-audio-card,codec {
> +			sound-dai =3D <&codec>;
> +			clocks =3D <&clk IMX8MQ_CLK_SAI2_ROOT>;
> +			frame-master;
> +			bitclock-master;
> +		};
> +	};
> +
> +	sound-wwan {
> +		compatible =3D "simple-audio-card";
> +		simple-audio-card,name =3D "MODEM";
> +		simple-audio-card,format =3D "i2s";
> +
> +		simple-audio-card,cpu {
> +			sound-dai =3D <&sai6>;
> +			frame-inversion;
> +		};
> +
> +		telephony_link_master: simple-audio-card,codec {
			^
		useless phandle?
> +			sound-dai =3D <&bm818_codec>;
> +			frame-master;
> +			bitclock-master;
> +		};
> +	};
> +
> +	vibrator {
> +		compatible =3D "pwm-vibrator";
> +		pwms =3D <&pwm1 0 1000000000 0>;
> +		pwm-names =3D "enable";
> +		vcc-supply =3D <&reg_vdd_3v3>;
> +	};
> +};
> +
> +&A53_0 {
> +	cpu-supply =3D <&buck2_reg>;
> +};
> +
> +&A53_1 {
> +	cpu-supply =3D <&buck2_reg>;
> +};
> +
> +&A53_2 {
> +	cpu-supply =3D <&buck2_reg>;
> +};
> +
> +&A53_3 {
> +	cpu-supply =3D <&buck2_reg>;
> +};
> +
> +&clk {
> +	assigned-clocks =3D <&clk IMX8MQ_AUDIO_PLL1>, <&clk IMX8MQ_AUDIO_PLL2>;
> +	assigned-clock-rates =3D <786432000>, <722534400>;
> +};

Either I would bundle all clock settings here or within the sai nodes.

> +
> +&ddrc {
> +	operating-points-v2 =3D <&ddrc_opp_table>;
> +
> +	ddrc_opp_table: ddrc-opp-table {
> +		compatible =3D "operating-points-v2";
> +
> +		opp-25M {
> +			opp-hz =3D /bits/ 64 <25000000>;
> +		};
> +		opp-100M {
> +			opp-hz =3D /bits/ 64 <100000000>;
> +		};
> +		opp-800M {
> +			opp-hz =3D /bits/ 64 <800000000>;
> +		};
> +	};
> +};
> +
> +&dphy {
> +	status =3D "okay";
> +};
> +
> +&ecspi1 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_ecspi1>;
> +	cs-gpios =3D <&gpio5 9 GPIO_ACTIVE_HIGH>;

Missmatch with the pinctrl_ecspi1?

> +	status =3D "okay";

Status is always the last property.

> +	#address-cells =3D <1>;
> +	#size-cells =3D <0>;
> +
> +	nor_flash: flash@0 {
> +		compatible =3D "jedec,spi-nor";
> +		spi-max-frequency =3D <1000000>;
> +		reg =3D <0>;
> +	};
> +};
> +
> +&gpio1 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_pmic_5v>;
> +
> +	pmic-5v {
> +		gpio-hog;
> +		gpio =3D <&gpio1 1 GPIO_ACTIVE_HIGH>;
> +		input;
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl_audiopwr: audiopwrgrp {
> +		fsl,pins =3D <
> +			/* AUDIO_POWER_EN_3V3 */
> +			MX8MQ_IOMUXC_GPIO1_IO04_GPIO1_IO4	0x83
> +		>;
> +	};
> +
> +	pinctrl_bl: blgrp {
> +		fsl,pins =3D <
> +			/* BACKLINGE_EN */
> +			MX8MQ_IOMUXC_NAND_DQS_GPIO3_IO14	0x83
> +		>;
> +	};
> +
> +	pinctrl_charger_in: chargeringrp {
> +		fsl,pins =3D <
> +			/* CHRG_INT */
> +			MX8MQ_IOMUXC_NAND_CE2_B_GPIO3_IO3	0x80
> +			/* CHG_STATUS_B */
> +			MX8MQ_IOMUXC_NAND_ALE_GPIO3_IO0		0x80
> +		>;
> +	};
> +
> +	pinctrl_dsibiasen: dsibiasengrp {
> +		fsl,pins =3D <
> +			/* DSI_BIAS_EN */
> +			MX8MQ_IOMUXC_ENET_TD1_GPIO1_IO20	0x83
> +		>;
> +	};
> +
> +	pinctrl_dsien: dsiengrp {
> +		fsl,pins =3D <
> +			/* DSI_EN_3V3 */
> +			MX8MQ_IOMUXC_GPIO1_IO05_GPIO1_IO5	0x83
> +		>;
> +	};
> +
> +	pinctrl_ecspi1: spi1grp {
> +		fsl,pins =3D <
> +			MX8MQ_IOMUXC_ECSPI1_MOSI_ECSPI1_MOSI	0x83
> +			MX8MQ_IOMUXC_ECSPI1_MISO_ECSPI1_MISO	0x83
> +			MX8MQ_IOMUXC_ECSPI1_SS0_GPIO5_IO9	0x19
> +			MX8MQ_IOMUXC_ECSPI1_SCLK_ECSPI1_SCLK	0x83
> +			/* SPI_SS1 */
> +			MX8MQ_IOMUXC_UART4_RXD_GPIO5_IO28	0x19
> +		>;
> +	};
> +
> +	pinctrl_gauge: gaugegrp {
> +		fsl,pins =3D <
> +			/* BAT_LOW */
> +			MX8MQ_IOMUXC_SAI5_RXC_GPIO3_IO20	0x80
> +		>;
> +	};
> +
> +	pinctrl_gnsspwr: gnsspwrgrp {
> +		fsl,pins =3D <
> +			/* GPS3V3_EN */
> +			MX8MQ_IOMUXC_NAND_DATA06_GPIO3_IO12	0x83
> +		>;
> +	};
> +
> +	pinctrl_haptic: hapticgrp {
> +		fsl,pins =3D <
> +			/* MOTO */
> +			MX8MQ_IOMUXC_SPDIF_EXT_CLK_PWM1_OUT	0x83
> +		>;
> +	};
> +
> +	pinctrl_hp: hpgrp {
> +		fsl,pins =3D <
> +			/* HEADPHONE_DET_1V8 */
> +			MX8MQ_IOMUXC_NAND_DATA03_GPIO3_IO9	0x180
> +		>;
> +	};
> +
> +	pinctrl_hub_pwr: hubpwrgrp {
> +		fsl,pins =3D <
> +			/* HUB_PWR_3V3_EN */
> +			MX8MQ_IOMUXC_GPIO1_IO14_GPIO1_IO14	0x83
> +		>;
> +	};
> +
> +	pinctrl_i2c1: i2c1grp {
> +		fsl,pins =3D <
> +			MX8MQ_IOMUXC_I2C1_SCL_I2C1_SCL		0x40000026
> +			MX8MQ_IOMUXC_I2C1_SDA_I2C1_SDA		0x40000026
> +		>;
> +	};
> +
> +	pinctrl_i2c2: i2c2grp {
> +		fsl,pins =3D <
> +			MX8MQ_IOMUXC_I2C2_SCL_I2C2_SCL		0x40000026
> +			MX8MQ_IOMUXC_I2C2_SDA_I2C2_SDA		0x40000026
> +		>;
> +	};
> +
> +	pinctrl_i2c3: i2c3grp {
> +		fsl,pins =3D <
> +			MX8MQ_IOMUXC_I2C3_SCL_I2C3_SCL		0x40000026
> +			MX8MQ_IOMUXC_I2C3_SDA_I2C3_SDA		0x40000026
> +		>;
> +	};
> +
> +	pinctrl_i2c4: i2c4grp {
> +		fsl,pins =3D <
> +			MX8MQ_IOMUXC_I2C4_SCL_I2C4_SCL		0x40000026
> +			MX8MQ_IOMUXC_I2C4_SDA_I2C4_SDA		0x40000026
> +		>;
> +	};
> +
> +	pinctrl_keys: keysgrp {
> +		fsl,pins =3D <
> +			/* 4G_WAKE */
> +			MX8MQ_IOMUXC_NAND_RE_B_GPIO3_IO15	0x80
> +			/* PWR_KEY */
> +			MX8MQ_IOMUXC_NAND_CLE_GPIO3_IO5		0x01C0

gpio3 5/15 are never used was this intended?

> +			/* VOL- */
> +			MX8MQ_IOMUXC_ENET_MDIO_GPIO1_IO17	0x01C0
> +			/* VOL+ */
> +			MX8MQ_IOMUXC_ENET_MDC_GPIO1_IO16	0x01C0
> +		>;
> +	};
> +
> +	pinctrl_led_b: ledbgrp {
> +		fsl,pins =3D <
> +			/* LED_B */
> +			MX8MQ_IOMUXC_GPIO1_IO13_PWM2_OUT	0x06
> +		>;
> +	};
> +
> +	pinctrl_led_g: ledggrp {
> +		fsl,pins =3D <
> +			/* LED_G */
> +			MX8MQ_IOMUXC_SAI3_MCLK_PWM4_OUT		0x06
> +		>;
> +	};
> +
> +	pinctrl_led_r: ledrgrp {
> +		fsl,pins =3D <
> +			/* LED_R */
> +			MX8MQ_IOMUXC_SPDIF_TX_PWM3_OUT		0x06
> +		>;
> +	};
> +
> +	pinctrl_mag: maggrp {
> +		fsl,pins =3D <
> +			/* INT_MAG */
> +			MX8MQ_IOMUXC_SAI5_RXD1_GPIO3_IO22	0x80
> +		>;
> +	};
> +
> +	pinctrl_pmic: pmicgrp {
> +		fsl,pins =3D <
> +			/* PMIC_NINT */
> +			MX8MQ_IOMUXC_GPIO1_IO07_GPIO1_IO7	0x80
> +		>;
> +	};
> +
> +	pinctrl_pmic_5v: pmic5vgrp {
> +		fsl,pins =3D <
> +			/* PMIC_5V */
> +			MX8MQ_IOMUXC_GPIO1_IO01_GPIO1_IO1	0x80
> +		>;
> +	};
> +
> +	pinctrl_prox: proxgrp {
> +		fsl,pins =3D <
> +			/* INT_LIGHT */
> +			MX8MQ_IOMUXC_NAND_DATA01_GPIO3_IO7	0x80
> +		>;
> +	};
> +
> +	pinctrl_rtc: rtcgrp {
> +		fsl,pins =3D <
> +			/* RTC_INT */
> +			MX8MQ_IOMUXC_GPIO1_IO09_GPIO1_IO9	0x80
> +		>;
> +	};
> +
> +	pinctrl_sai2: sai2grp {
> +		fsl,pins =3D <
> +			MX8MQ_IOMUXC_SAI2_TXD0_SAI2_TX_DATA0	0xd6
> +			MX8MQ_IOMUXC_SAI2_TXFS_SAI2_TX_SYNC	0xd6
> +			MX8MQ_IOMUXC_SAI2_MCLK_SAI2_MCLK	0xd6
> +			MX8MQ_IOMUXC_SAI2_RXD0_SAI2_RX_DATA0	0xd6
> +			MX8MQ_IOMUXC_SAI2_TXC_SAI2_TX_BCLK	0xd6
> +		>;
> +	};
> +
> +	pinctrl_sai6: sai6grp {
> +		fsl,pins =3D <
> +			MX8MQ_IOMUXC_SAI1_RXD5_SAI6_RX_DATA0	0xd6
> +			MX8MQ_IOMUXC_SAI1_RXD6_SAI6_RX_SYNC	0xd6
> +			MX8MQ_IOMUXC_SAI1_TXD4_SAI6_RX_BCLK	0xd6
> +			MX8MQ_IOMUXC_SAI1_TXD5_SAI6_TX_DATA0	0xd6
> +		>;
> +	};
> +
> +	pinctrl_tcpc: tcpcgrp {
> +		fsl,pins =3D <
> +			/* TCPC_INT */
> +			MX8MQ_IOMUXC_GPIO1_IO10_GPIO1_IO10	0x01C0
> +		>;
> +	};
> +
> +	pinctrl_typec: typecgrp {
> +		fsl,pins =3D <
> +			/* TYPEC_MUX_EN */
> +			MX8MQ_IOMUXC_GPIO1_IO11_GPIO1_IO11	0x83
> +		>;
> +	};
> +
> +	pinctrl_uart1: uart1grp {
> +		fsl,pins =3D <
> +			MX8MQ_IOMUXC_UART1_RXD_UART1_DCE_RX	0x49
> +			MX8MQ_IOMUXC_UART1_TXD_UART1_DCE_TX	0x49
> +		>;
> +	};
> +
> +	pinctrl_uart2: uart2grp {
> +		fsl,pins =3D <
> +			MX8MQ_IOMUXC_UART2_TXD_UART2_DCE_TX	0x49
> +			MX8MQ_IOMUXC_UART2_RXD_UART2_DCE_RX	0x49
> +		>;
> +	};
> +
> +	pinctrl_uart3: uart3grp {
> +		fsl,pins =3D <
> +			MX8MQ_IOMUXC_UART3_RXD_UART3_DCE_RX	0x49
> +			MX8MQ_IOMUXC_UART3_TXD_UART3_DCE_TX	0x49
> +		>;
> +	};
> +
> +	pinctrl_uart4: uart4grp {
> +		fsl,pins =3D <
> +			MX8MQ_IOMUXC_ECSPI2_SCLK_UART4_DCE_RX		0x49
> +			MX8MQ_IOMUXC_ECSPI2_MOSI_UART4_DCE_TX		0x49
> +			MX8MQ_IOMUXC_ECSPI2_MISO_UART4_DCE_CTS_B	0x49
> +			MX8MQ_IOMUXC_ECSPI2_SS0_UART4_DCE_RTS_B		0x49
> +		>;
> +	};
> +
> +	pinctrl_usdhc1: usdhc1grp {
> +		fsl,pins =3D <
> +			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x83
> +			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xc3
> +			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xc3
> +			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE		0x83
> +			MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B		0xc1
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
> +		fsl,pins =3D <
> +			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x8d
> +			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xcd
> +			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xcd
> +			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xcd
> +			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xcd
> +			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xcd
> +			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xcd
> +			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xcd
> +			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xcd
> +			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xcd
> +			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE		0x8d
> +			MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B		0xc1
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
> +		fsl,pins =3D <
> +			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x9f
> +			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xdf
> +			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xdf
> +			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xdf
> +			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xdf
> +			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xdf
> +			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xdf
> +			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xdf
> +			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xdf
> +			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xdf
> +			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE		0x9f
> +			MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B		0xc1
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins =3D <
> +			MX8MQ_IOMUXC_SD2_CD_B_USDHC2_CD_B	0x80
> +			MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK		0x83
> +			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD		0xc3
> +			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0	0xc3
> +			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1	0xc3
> +			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2	0xc3
> +			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3	0xc3
> +			MX8MQ_IOMUXC_SD2_RESET_B_USDHC2_RESET_B 0xc1
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
> +		fsl,pins =3D <
> +			MX8MQ_IOMUXC_SD2_CD_B_USDHC2_CD_B	0x80
> +			MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK		0x8d
> +			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD		0xcd
> +			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0	0xcd
> +			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1	0xcd
> +			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2	0xcd
> +			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3	0xcd
> +			MX8MQ_IOMUXC_SD2_RESET_B_USDHC2_RESET_B 0xc1
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
> +		fsl,pins =3D <
> +			MX8MQ_IOMUXC_SD2_CD_B_USDHC2_CD_B	0x80
> +			MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK		0x9f
> +			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD		0xcf
> +			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0	0xcf
> +			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1	0xcf
> +			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2	0xcf
> +			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3	0xcf
> +			MX8MQ_IOMUXC_SD2_RESET_B_USDHC2_RESET_B 0xc1
> +		>;
> +	};
> +
> +	pinctrl_wdog: wdoggrp {
> +		fsl,pins =3D <
> +			/* nWDOG */
> +			MX8MQ_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B	0x1f
> +		>;
> +	};
> +};
> +
> +&i2c1 {
> +	clock-frequency =3D <387000>;
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_i2c1>;
> +	status =3D "okay";
> +
> +	typec_pd: usb-pd@3f {
> +		compatible =3D "ti,tps6598x";
> +		reg =3D <0x3f>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_typec>, <&pinctrl_tcpc>;
> +		interrupt-parent =3D <&gpio1>;
> +		interrupts =3D <10 IRQ_TYPE_LEVEL_LOW>;
> +
> +		connector {
> +			ports {
> +				#address-cells =3D <1>;
> +				#size-cells =3D <0>;
> +
> +				port@0 {
> +					reg =3D <0>;
> +
> +					usb_con_hs: endpoint {
> +						remote-endpoint =3D <&typec_hs>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg =3D <1>;
> +
> +					usb_con_ss: endpoint {
> +						remote-endpoint =3D <&typec_ss>;
> +					};
> +				};
> +			};
> +		};
> +	};
> +
> +	pmic: pmic@4b {
> +		compatible =3D "rohm,bd71837";
> +		reg =3D <0x4b>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_pmic>;
> +		clocks =3D <&pmic_osc>;
> +		clock-names =3D "osc";
> +		clock-output-names =3D "pmic_clk";
> +		interrupt-parent =3D <&gpio1>;
> +		interrupts =3D <7 GPIO_ACTIVE_LOW>;
> +		interrupt-names =3D "irq";
> +		rohm,reset-snvs-powered;
> +
> +		regulators {
> +			buck1_reg: BUCK1 {
> +				regulator-name =3D "buck1";
> +				regulator-min-microvolt =3D <700000>;
> +				regulator-max-microvolt =3D <1300000>;
> +				regulator-ramp-delay =3D <1250>;
> +				rohm,dvs-run-voltage =3D <900000>;
> +				rohm,dvs-idle-voltage =3D <850000>;
> +				rohm,dvs-suspend-voltage =3D <800000>;
> +				regulator-always-on;
> +			};
> +
> +			buck2_reg: BUCK2 {
> +				regulator-name =3D "buck2";
> +				regulator-min-microvolt =3D <700000>;
> +				regulator-max-microvolt =3D <1300000>;
> +				regulator-ramp-delay =3D <1250>;
> +				rohm,dvs-run-voltage =3D <1000000>;
> +				rohm,dvs-idle-voltage =3D <900000>;
> +				regulator-always-on;
> +			};
> +
> +			buck3_reg: BUCK3 {
> +				regulator-name =3D "buck3";
> +				regulator-min-microvolt =3D <700000>;
> +				regulator-max-microvolt =3D <1300000>;
> +				rohm,dvs-run-voltage =3D <900000>;
> +				regulator-always-on;
> +			};
> +
> +			buck4_reg: BUCK4 {
> +				regulator-name =3D "buck4";
> +				regulator-min-microvolt =3D <700000>;
> +				regulator-max-microvolt =3D <1300000>;
> +				rohm,dvs-run-voltage =3D <1000000>;
> +			};
> +
> +			buck5_reg: BUCK5 {
> +				regulator-name =3D "buck5";
> +				regulator-min-microvolt =3D <700000>;
> +				regulator-max-microvolt =3D <1350000>;
> +				regulator-always-on;
> +			};
> +
> +			buck6_reg: BUCK6 {
> +				regulator-name =3D "buck6";
> +				regulator-min-microvolt =3D <3000000>;
> +				regulator-max-microvolt =3D <3300000>;
> +				regulator-always-on;
> +			};
> +
> +			buck7_reg: BUCK7 {
> +				regulator-name =3D "buck7";
> +				regulator-min-microvolt =3D <1605000>;
> +				regulator-max-microvolt =3D <1995000>;
> +				regulator-always-on;
> +			};
> +
> +			buck8_reg: BUCK8 {
> +				regulator-name =3D "buck8";
> +				regulator-min-microvolt =3D <800000>;
> +				regulator-max-microvolt =3D <1400000>;
> +				regulator-always-on;
> +			};
> +
> +			ldo1_reg: LDO1 {
> +				regulator-name =3D "ldo1";
> +				regulator-min-microvolt =3D <3000000>;
> +				regulator-max-microvolt =3D <3300000>;
> +				/* leave on for snvs power button */
> +				regulator-always-on;
> +			};
> +
> +			ldo2_reg: LDO2 {
> +				regulator-name =3D "ldo2";
> +				regulator-min-microvolt =3D <900000>;
> +				regulator-max-microvolt =3D <900000>;
> +				/* leave on for snvs power button */
> +				regulator-always-on;
> +			};
> +
> +			ldo3_reg: LDO3 {
> +				regulator-name =3D "ldo3";
> +				regulator-min-microvolt =3D <1800000>;
> +				regulator-max-microvolt =3D <3300000>;
> +				regulator-always-on;
> +			};
> +
> +			ldo4_reg: LDO4 {
> +				regulator-name =3D "ldo4";
> +				regulator-min-microvolt =3D <900000>;
> +				regulator-max-microvolt =3D <1800000>;
> +				regulator-always-on;
> +			};
> +
> +			ldo5_reg: LDO5 {
> +				/* VDD_PHY_0V9 - MIPI and HDMI domains */
> +				regulator-name =3D "ldo5";
> +				regulator-min-microvolt =3D <1800000>;
> +				regulator-max-microvolt =3D <3300000>;
> +				regulator-always-on;
> +			};
> +
> +			ldo6_reg: LDO6 {
> +				/* VDD_PHY_0V9 - MIPI, HDMI and USB domains */
> +				regulator-name =3D "ldo6";
> +				regulator-min-microvolt =3D <900000>;
> +				regulator-max-microvolt =3D <1800000>;
> +				regulator-always-on;
> +			};
> +
> +			ldo7_reg: LDO7 {
> +				/* VDD_PHY_3V3 - USB domain */
> +				regulator-name =3D "ldo7";
> +				regulator-min-microvolt =3D <1800000>;
> +				regulator-max-microvolt =3D <3300000>;
> +				regulator-always-on;
> +			};

Out of curiosity, why did you marked all regulators as
regulator-always-on? I thought the librem5 is a smartphone.

> +		};
> +	};
> +
> +	rtc@68 {
> +		compatible =3D "microcrystal,rv4162";
> +		reg =3D <0x68>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_rtc>;
> +		interrupt-parent =3D <&gpio1>;
> +		interrupts =3D <9 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +};
> +
> +&i2c2 {
> +	clock-frequency =3D <387000>;
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_i2c2>;
> +	status =3D "okay";
> +
> +	magnetometer@1e	{
> +		compatible =3D "st,lsm9ds1-magn";
> +		reg =3D <0x1e>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_mag>;
> +		interrupt-parent =3D <&gpio3>;
> +		interrupts =3D <22 IRQ_TYPE_LEVEL_HIGH>;
> +		vdd-supply =3D <&reg_vdd_sen>;
> +		vddio-supply =3D <&reg_vdd_1v8>;
> +	};
> +
> +	regulator@3e {
> +		compatible =3D "tps65132";
> +		reg =3D <0x3e>;
> +		reg_lcd_avdd: outp {
> +			regulator-name =3D "lcd_avdd";
> +			vin-supply =3D <&reg_lcd_3v4>;
> +		};
> +
> +		reg_lcd_avee: outn {
> +			regulator-name =3D "lcd_avee";
> +			vin-supply =3D <&reg_lcd_3v4>;
> +		};
		both phandles are not used.
> +	};
> +
> +	flash@53 {
> +		compatible =3D "lm3560";
> +		reg =3D <0x53>;
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +		flash@0 {
> +			reg =3D <0x0>;
> +			flash-timeout-us =3D <150000>;
> +			flash-max-microamp =3D <320000>;
> +			led-max-microamp =3D <60000>;
> +			label =3D "lm3560:flash";
> +		};
> +
> +		torch@1 {
> +			reg =3D <0x1>;
> +			led-max-microamp =3D <10000>;
> +			label =3D "lm3560:torch";
> +		};
> +
> +	};
> +
> +	prox@60 {
> +		compatible =3D "vishay,vcnl4040";
> +		reg =3D <0x60>;
> +		pinctrl-0 =3D <&pinctrl_prox>;
> +		interrupt-parent =3D <&gpio3>;
> +		interrupts =3D <7 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +
> +	accel-gyro@6a	{
> +		compatible =3D "st,lsm9ds1-imu";
> +		reg =3D <0x6a>;
> +		vdd-supply =3D <&reg_vdd_sen>;
> +		vddio-supply =3D <&reg_vdd_1v8>;
> +		mount-matrix =3D  "1",  "0",  "0",
> +				"0",  "1",  "0",
> +				"0",  "0", "-1";
> +	};
> +};
> +
> +&i2c3 {
> +	clock-frequency =3D <387000>;
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_i2c3>;
> +	status =3D "okay";
> +
> +	codec: wm8962@1a {

Please use generic names.

> +		compatible =3D "wlf,wm8962";
> +		reg =3D <0x1a>; // 0x4a is the test address
> +		clocks =3D <&clk IMX8MQ_CLK_SAI2_ROOT>;
> +		assigned-clocks =3D <&clk IMX8MQ_CLK_SAI2>;
> +		assigned-clock-parents =3D <&clk IMX8MQ_AUDIO_PLL1_OUT>;
> +		assigned-clock-rates =3D <24576000>;
> +		#sound-dai-cells =3D <0>;
> +		mic-cfg =3D <0x200>;
> +		DCVDD-supply =3D <&reg_aud_1v8>;
> +		DBVDD-supply =3D <&reg_aud_1v8>;
> +		AVDD-supply =3D <&reg_aud_1v8>;
> +		CPVDD-supply =3D <&reg_aud_1v8>;
> +		MICVDD-supply =3D <&reg_aud_1v8>;
> +		PLLVDD-supply =3D <&reg_aud_1v8>;
> +		SPKVDD1-supply =3D <&reg_vsys_3v4>;
> +		SPKVDD2-supply =3D <&reg_vsys_3v4>;
> +		gpio-cfg =3D <
> +			0x0000 /* n/c */
> +			0x0001 /* gpio2, 1: default */
> +			0x0013 /* gpio3, 2: dmicclk */
> +			0x0000 /* n/c, 3: default */
> +			0x8014 /* gpio5, 4: dmic_dat */
> +			0x0000 /* gpio6, 5: default */
> +		>;
> +		status =3D "okay";

status can be dropped

> +	};
> +
> +	backlight@36 {
> +		compatible =3D "ti,lm36922";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_bl>;
> +		reg =3D <0x36>;
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		enable-gpios =3D <&gpio3 14 GPIO_ACTIVE_HIGH>;
> +		vled-supply =3D <&reg_vsys_3v4>;
> +		ti,ovp-microvolt =3D <25000000>;
> +
> +		led_backlight: led@0 {
> +			reg =3D <0>;
> +			label =3D "white:backlight_cluster";
> +			linux,default-trigger =3D "backlight";
> +			led-max-microamp =3D <20000>;
> +		};
> +	};
> +
> +	touchscreen@38 {
> +		compatible =3D "edt,edt-ft5506";
> +		reg =3D <0x38>;
> +		interrupt-parent =3D <&gpio1>;
> +		interrupts =3D <27 IRQ_TYPE_EDGE_FALLING>;

You need to mux the irq gpio.

> +		irq-gpios =3D <&gpio1 27 GPIO_ACTIVE_HIGH>;

irq-gpios is not supported by the driver. We only have a
wake/reset-gpio.

> +		touchscreen-size-x =3D <720>;
> +		touchscreen-size-y =3D <1440>;
> +	};
> +};
> +
> +&i2c4 {
> +	clock-frequency =3D <387000>;
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_i2c4>;
> +	status =3D "okay";
> +
> +	bat: fuel-gauge@36 {
> +		compatible =3D "maxim,max17055";
> +		interrupt-parent =3D <&gpio3>;
> +		interrupts =3D <20 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_gauge>;
> +		reg =3D <0x36>;

Please check that "reg" is always the 2nd property after the
"compatible".

> +		maxim,over-heat-temp =3D <700>;
> +		maxim,over-volt =3D <4500>;
> +		maxim,rsns-microohm =3D <5000>;
> +	};
> +
> +	charger@6a { /* bq25895 */
> +		compatible =3D "ti,bq25890";

The compatible should be "ti,bq25895" if it is a bq25895. So we can drop
the comment too.

> +		reg =3D <0x6a>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_charger_in>;
> +		interrupt-parent =3D <&gpio3>;
> +		interrupts =3D <3 IRQ_TYPE_EDGE_FALLING>;
> +		phys =3D <&usb3_phy0>;
> +		ti,battery-regulation-voltage =3D <4192000>; /* 4.192V */
> +		ti,charge-current =3D <1600000>; /* 1.6A */
> +		ti,termination-current =3D <66000>;  /* 66mA */
> +		ti,precharge-current =3D <130000>; /* 130mA */
> +		ti,minimum-sys-voltage =3D <3700000>; /* 3.7V */
> +		ti,boost-voltage =3D <5000000>; /* 5V */
> +		ti,boost-max-current =3D <50000>; /* 50mA */
> +		ti,use-vinmin-threshold =3D <1>; /* enable VINDPM */
> +		ti,vinmin-threshold =3D <3900000>; /* 3.9V */

I would only mention the units within a comment because comments like
this begin to divergence after you fix something.

Regards,
  Marco

> +		monitored-battery =3D <&bat>;
> +	};
> +};
> +
> +&pgc_gpu {
> +	power-supply =3D <&buck3_reg>;
> +};
> +
> +&pgc_mipi {
> +	power-supply =3D <&ldo5_reg>;
> +};
> +
> +&pgc_vpu {
> +	power-supply =3D <&buck4_reg>;
> +};
> +
> +&pwm1 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_haptic>;
> +	status =3D "okay";
> +};
> +
> +&pwm2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_led_b>;
> +	status =3D "okay";
> +};
> +
> +&pwm3 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_led_g>;
> +	status =3D "okay";
> +};
> +
> +&pwm4 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_led_r>;
> +	status =3D "okay";
> +};
> +
> +&sai2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_sai2>;
> +	assigned-clocks =3D <&clk IMX8MQ_CLK_SAI2>;
> +	assigned-clock-parents =3D <&clk IMX8MQ_AUDIO_PLL1_OUT>;
> +	assigned-clock-rates =3D <24576000>;
> +	status =3D "okay";
> +};
> +
> +&sai6 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_sai6>;
> +	assigned-clocks =3D <&clk IMX8MQ_CLK_SAI6>;
> +	assigned-clock-parents =3D <&clk IMX8MQ_AUDIO_PLL1_OUT>;
> +	assigned-clock-rates =3D <24576000>;
> +	fsl,sai-synchronous-rx;
> +	status =3D "okay";
> +};
> +
> +&snvs_pwrkey {
> +	status =3D "okay";
> +};
> +
> +&snvs_rtc {
> +	status =3D "disabled";
> +};
> +
> +&uart1 { /* console */
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart1>;
> +	status =3D "okay";
> +};
> +
> +&uart2 { /* TPS - GPS - DEBUG */
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart2>;
> +	status =3D "okay";
> +
> +	gnss {
> +		compatible =3D "globaltop,pa6h";
> +		vcc-supply =3D <&reg_gnss>;
> +		current-speed =3D <9600>;
> +	};
> +};
> +
> +&uart3 { /* SMC */
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart3>;
> +	status =3D "okay";
> +};
> +
> +&uart4 { /* BT */
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart4>;
> +	uart-has-rtscts;
> +	status =3D "okay";
> +};
> +
> +&usb3_phy0 {
> +	status =3D "okay";
> +};
> +
> +&usb3_phy1 {
> +	vbus-supply =3D <&reg_hub>;
> +	status =3D "okay";
> +};
> +
> +&usb_dwc3_0 {
> +	#address-cells =3D <1>;
> +	#size-cells =3D <0>;
> +	dr_mode =3D "otg";
> +	snps,dis_u3_susphy_quirk;
> +	status =3D "okay";
> +
> +	port@0 {
> +		reg =3D <0>;
> +
> +		typec_hs: endpoint {
> +			remote-endpoint =3D <&usb_con_hs>;
> +		};
> +	};
> +
> +	port@1 {
> +		reg =3D <1>;
> +
> +		typec_ss: endpoint {
> +			remote-endpoint =3D <&usb_con_ss>;
> +		};
> +	};
> +};
> +
> +&usb_dwc3_1 {
> +	dr_mode =3D "host";
> +	snps,dis_u2_susphy_quirk;
> +	snps,dis_u3_susphy_quirk;
> +	status =3D "okay";
> +};
> +
> +&usdhc1 {
> +	pinctrl-names =3D "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 =3D <&pinctrl_usdhc1>;
> +	pinctrl-1 =3D <&pinctrl_usdhc1_100mhz>;
> +	pinctrl-2 =3D <&pinctrl_usdhc1_200mhz>;
> +	bus-width =3D <8>;
> +	vmmc-supply =3D <&reg_vdd_3v3>;
> +	power-supply =3D <&reg_vdd_1v8>;
> +	non-removable;
> +	status =3D "okay";
> +};
> +
> +&usdhc2 {
> +	pinctrl-names =3D "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 =3D <&pinctrl_usdhc2>;
> +	pinctrl-1 =3D <&pinctrl_usdhc2_100mhz>;
> +	pinctrl-2 =3D <&pinctrl_usdhc2_200mhz>;
> +	bus-width =3D <4>;
> +	vmmc-supply =3D <&reg_3v3_wifi>;
> +	broken-cd;
> +	disable-wp;
> +	cap-sdio-irq;
> +	keep-power-in-suspend;
> +	wakeup-source;
> +	status =3D "okay";
> +};
> +
> +&wdog1 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_wdog>;
> +	fsl,ext-reset-output;
> +	status =3D "okay";
> +};
> -- =

> 2.20.1
> =

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
