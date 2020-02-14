Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B73015D3FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 09:44:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ludKBT8A9gW5C83fZkx+u8O+Pxgy3IkTBLIjHiZ8J3M=; b=AdLzk5oPmujTql
	vlbucKnROfl2VPUbo8C1RZliB5wENYTsik2/1UCmULbi0k44hPjWUWmHv40ptQbGHBSVyX8RtAfHq
	ag+RDmvWbO8XlC+4o3qRK/heRxSV+ltGbKzy3iDcBy9fSRy8keaIHVNcoNzyGX5hnYuwHHPc0E96r
	LSYZqqB3O+ZWe0O077oeegbtgYVgOoo1gW89rreAdsO4hEQmIYQqmdam06ookdpcXcChCudFF4hH9
	Ck/qetWKXhZjnSXJU5u5Xc/Sbvw2uZCPutVDOCe6yKtf+O0wWF+XtgyfGW6fYNQXEBIOPEN9Po3OW
	FjJwdf1Bst4mjHgsj89Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2WaP-0006rU-W3; Fri, 14 Feb 2020 08:44:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Wa1-0006V1-DC
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 08:44:11 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD3E82187F;
 Fri, 14 Feb 2020 08:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581669848;
 bh=Iw3Ml8k1sQrUId5oLMwMuXtZF3l7A5X0eHLT2b4+Kxg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hO0HbIUqNHFtRroYrPOWGs8+GL4z4nAF9qXnN0QK2Zf3ySNH9fJLqz6SuxYVaa2Mu
 OqfpsaYR5I7mQnjjTViEDmwjNQFLFNkyUrI1tkrsGa6aI5UDrCxmSvi8yvTw5uFLq9
 kevuuj0ru1/liMbMh/omQVZRGB1Oscx+kgaRjdPw=
Date: Fri, 14 Feb 2020 16:44:00 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Subject: Re: [PATCH 6/6] ARM: dts: imx7-colibri: add support for Toradex
 Aster carrier board
Message-ID: <20200214084356.GD25543@dragon>
References: <20200204111151.3426090-1-oleksandr.suvorov@toradex.com>
 <20200204111151.3426090-7-oleksandr.suvorov@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204111151.3426090-7-oleksandr.suvorov@toradex.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_004409_557480_0ED935DD 
X-CRM114-Status: GOOD (  20.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 04, 2020 at 01:11:51PM +0200, Oleksandr Suvorov wrote:
> Add support for the Toradex Aster carrier board.
> 
> Follow the usual hierarchic include model, maintaining shared
> configuration imx7-colibri-aster.dtsi.
> 
> Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
> ---
> 
>  arch/arm/boot/dts/Makefile                    |   3 +
>  arch/arm/boot/dts/imx7-colibri-aster.dtsi     | 191 ++++++++++++++++++
>  arch/arm/boot/dts/imx7-colibri.dtsi           |   2 -
>  arch/arm/boot/dts/imx7d-colibri-aster.dts     |  20 ++
>  .../arm/boot/dts/imx7d-colibri-emmc-aster.dts |  20 ++
>  arch/arm/boot/dts/imx7s-colibri-aster.dts     |  15 ++
>  6 files changed, 249 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm/boot/dts/imx7-colibri-aster.dtsi
>  create mode 100644 arch/arm/boot/dts/imx7d-colibri-aster.dts
>  create mode 100644 arch/arm/boot/dts/imx7d-colibri-emmc-aster.dts
>  create mode 100644 arch/arm/boot/dts/imx7s-colibri-aster.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index e006fef77499..6165d5d3a008 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -610,6 +610,8 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
>  	imx6ulz-14x14-evk.dtb
>  dtb-$(CONFIG_SOC_IMX7D) += \
>  	imx7d-cl-som-imx7.dtb \
> +	imx7d-colibri-aster.dtb \
> +	imx7d-colibri-emmc-aster.dtb \
>  	imx7d-colibri-emmc-eval-v3.dtb \
>  	imx7d-colibri-eval-v3.dtb \
>  	imx7d-mba7.dtb \
> @@ -623,6 +625,7 @@ dtb-$(CONFIG_SOC_IMX7D) += \
>  	imx7d-sdb-sht11.dtb \
>  	imx7d-zii-rmu2.dtb \
>  	imx7d-zii-rpu2.dtb \
> +	imx7s-colibri-aster.dtb \
>  	imx7s-colibri-eval-v3.dtb \
>  	imx7s-mba7.dtb \
>  	imx7s-warp.dtb
> diff --git a/arch/arm/boot/dts/imx7-colibri-aster.dtsi b/arch/arm/boot/dts/imx7-colibri-aster.dtsi
> new file mode 100644
> index 000000000000..776dacdbbe30
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx7-colibri-aster.dtsi
> @@ -0,0 +1,191 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR X11)

MIT

> +/*
> + * Copyright 2017-2020 Toradex AG
> + *
> + */
> +
> +
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/pwm/pwm.h>
> +
> +/ {
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpiokeys>;
> +
> +		power {
> +			label = "Wake-Up";
> +			gpios = <&gpio1 1 GPIO_ACTIVE_HIGH>;
> +			linux,code = <KEY_WAKEUP>;
> +			debounce-interval = <10>;
> +			wakeup-source;
> +		};
> +	};
> +
> +	panel: panel {
> +		compatible = "edt,et057090dhu";
> +		backlight = <&bl>;
> +		power-supply = <&reg_3v3>;
> +
> +		port {
> +			panel_in: endpoint {
> +				remote-endpoint = <&lcdif_out>;
> +			};
> +		};
> +	};
> +
> +	reg_3v3: regulator-3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3.3V";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +	};
> +
> +	reg_5v0: regulator-5v0 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "5V";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
> +	reg_usbh_vbus: regulator-usbh-vbus {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_usbh_reg>;
> +		regulator-name = "VCC_USB[1-4]";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&gpio4 7 GPIO_ACTIVE_LOW>;
> +		vin-supply = <&reg_5v0>;
> +	};
> +};
> +
> +&bl {
> +	brightness-levels = <0 4 8 16 32 64 128 255>;
> +	default-brightness-level = <6>;
> +	power-supply = <&reg_3v3>;
> +

Drop this newline.

> +	status = "okay";
> +};
> +
> +&adc1 {

Sort nodes alphabetically.

> +	status = "okay";
> +};
> +
> +/*
> + * ADC2 is not available on the Aster board and
> + * conflicts with AD7879 resistive touchscreen.
> + */
> +&adc2 {
> +	status = "disabled";
> +};
> +
> +&ecspi3 {
> +	cs-gpios = <
> +		&gpio4 11 GPIO_ACTIVE_HIGH
> +		&gpio4 23 GPIO_ACTIVE_HIGH
> +	>;
> +	status = "okay";
> +
> +	spidev0: spidev@0 {
> +		compatible = "toradex,evalspi";

Undocumented compatible?

> +		reg = <0>;
> +		spi-max-frequency = <23000000>;
> +	};
> +
> +	spidev1: spidev@1 {
> +		compatible = "toradex,evalspi";
> +		reg = <1>;
> +		spi-max-frequency = <23000000>;
> +	};
> +};
> +
> +&fec1 {
> +	status = "okay";
> +};
> +
> +&i2c4 {
> +	status = "okay";
> +
> +	/* Microchip/Atmel maxtouch controller */
> +	touchscreen@4a {
> +		compatible = "atmel,maxtouch";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpiotouch>;
> +		reg = <0x4a>;
> +		interrupt-parent = <&gpio2>;
> +		interrupts = <15 IRQ_TYPE_EDGE_FALLING>;	/* SODIMM 107 */
> +		reset-gpios = <&gpio2 28 GPIO_ACTIVE_HIGH>;	/* SODIMM 106 */
> +		status = "okay";

We use okay status to flip disabled device.  It's not really necessary
here, right?

> +	};
> +
> +	/* M41T0M6 real time clock on carrier board */
> +	rtc: m41t0m6@68 {
> +		compatible = "st,m41t0";
> +		reg = <0x68>;
> +	};
> +};
> +
> +&lcdif {
> +	status = "okay";
> +
> +	port {
> +		lcdif_out: endpoint {
> +			remote-endpoint = <&panel_in>;
> +		};
> +	};
> +};
> +
> +&pwm1 {
> +	status = "okay";
> +};
> +
> +&pwm2 {
> +	status = "okay";
> +};
> +
> +&pwm3 {
> +	status = "okay";
> +};
> +
> +&pwm4 {
> +	status = "okay";
> +};
> +
> +&uart1 {
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> +
> +&uart3 {
> +	status = "okay";
> +};
> +
> +&usbotg1 {
> +	status = "okay";
> +};
> +
> +&usdhc1 {
> +	keep-power-in-suspend;
> +	no-1-8-v;
> +	wakeup-source;
> +	vmmc-supply = <&reg_3v3>;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl_gpiotouch: touchgpios {
> +		fsl,pins = <
> +			MX7D_PAD_EPDC_DATA15__GPIO2_IO15        0x74
> +			MX7D_PAD_EPDC_BDR0__GPIO2_IO28          0x14
> +		>;
> +	};
> +};
> diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
> index 7b4e81412381..fc075f2465eb 100644
> --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> @@ -321,7 +321,6 @@ MX7D_PAD_LCD_RESET__GPIO3_IO4		0x14 /* SODIMM 93 */
>  			MX7D_PAD_EPDC_DATA13__GPIO2_IO13	0x14 /* SODIMM 95 */
>  			MX7D_PAD_ENET1_RGMII_TXC__GPIO7_IO11	0x14 /* SODIMM 99 */
>  			MX7D_PAD_EPDC_DATA10__GPIO2_IO10	0x74 /* SODIMM 105 */
> -			MX7D_PAD_EPDC_DATA15__GPIO2_IO15	0x74 /* SODIMM 107 */
>  			MX7D_PAD_EPDC_DATA00__GPIO2_IO0		0x14 /* SODIMM 111 */
>  			MX7D_PAD_EPDC_DATA01__GPIO2_IO1		0x14 /* SODIMM 113 */
>  			MX7D_PAD_EPDC_DATA02__GPIO2_IO2		0x14 /* SODIMM 115 */
> @@ -338,7 +337,6 @@ MX7D_PAD_SAI1_RX_BCLK__GPIO6_IO17	0x14 /* SODIMM 24 */
>  			MX7D_PAD_SD2_DATA2__GPIO5_IO16		0x14 /* SODIMM 100 */
>  			MX7D_PAD_SD2_DATA3__GPIO5_IO17		0x14 /* SODIMM 102 */
>  			MX7D_PAD_EPDC_GDSP__GPIO2_IO27		0x14 /* SODIMM 104 */
> -			MX7D_PAD_EPDC_BDR0__GPIO2_IO28		0x74 /* SODIMM 106 */
>  			MX7D_PAD_EPDC_BDR1__GPIO2_IO29		0x14 /* SODIMM 110 */
>  			MX7D_PAD_EPDC_PWR_COM__GPIO2_IO30	0x14 /* SODIMM 112 */
>  			MX7D_PAD_EPDC_SDCLK__GPIO2_IO16		0x14 /* SODIMM 114 */
> diff --git a/arch/arm/boot/dts/imx7d-colibri-aster.dts b/arch/arm/boot/dts/imx7d-colibri-aster.dts
> new file mode 100644
> index 000000000000..1e84e47a00fc
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx7d-colibri-aster.dts
> @@ -0,0 +1,20 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR X11)
> +/*
> + * Copyright 2017-2020 Toradex AG
> + *
> + */
> +
> +/dts-v1/;
> +#include "imx7d-colibri.dtsi"
> +#include "imx7-colibri-aster.dtsi"
> +
> +/ {
> +	model = "Toradex Colibri iMX7D on Colibri Aster Board";
> +	compatible = "toradex,colibri-imx7d-aster", "toradex,colibri-imx7d",

Any new compatible needs to be documented.

Shawn

> +		     "fsl,imx7d";
> +};
> +
> +&usbotg2 {
> +	vbus-supply = <&reg_usbh_vbus>;
> +	status = "okay";
> +};
> diff --git a/arch/arm/boot/dts/imx7d-colibri-emmc-aster.dts b/arch/arm/boot/dts/imx7d-colibri-emmc-aster.dts
> new file mode 100644
> index 000000000000..9caaac6ecf5c
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx7d-colibri-emmc-aster.dts
> @@ -0,0 +1,20 @@
> +// SPDX-License-Identifier: GPL-2.0 OR X11
> +/*
> + * Copyright 2017-2020 Toradex AG
> + *
> + */
> +
> +/dts-v1/;
> +#include "imx7d-colibri-emmc.dtsi"
> +#include "imx7-colibri-aster.dtsi"
> +
> +/ {
> +	model = "Toradex Colibri iMX7D 1GB (eMMC) on Colibri Aster Board";
> +	compatible = "toradex,colibri-imx7d-emmc-aster",
> +		     "toradex,colibri-imx7d-emmc", "fsl,imx7d";
> +};
> +
> +&usbotg2 {
> +	vbus-supply = <&reg_usbh_vbus>;
> +	status = "okay";
> +};
> diff --git a/arch/arm/boot/dts/imx7s-colibri-aster.dts b/arch/arm/boot/dts/imx7s-colibri-aster.dts
> new file mode 100644
> index 000000000000..6fb981f3f801
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx7s-colibri-aster.dts
> @@ -0,0 +1,15 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR X11)
> +/*
> + * Copyright 2017-2020 Toradex AG
> + *
> + */
> +
> +/dts-v1/;
> +#include "imx7s-colibri.dtsi"
> +#include "imx7-colibri-aster.dtsi"
> +
> +/ {
> +	model = "Toradex Colibri iMX7S on Colibri Aster Board";
> +	compatible = "toradex,colibri-imx7s-aster", "toradex,colibri-imx7s",
> +		     "fsl,imx7s";
> +};
> -- 
> 2.24.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
