Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 324E815D089
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 04:30:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oGwkxQdrI0qQ/WrstE7vk/yL8/sz7DQCYlgHHh3TjZo=; b=a2zriMhePmGy/a
	km0Kwlzg9hZLBIvhh9dxg6h2TcmgWXGb4MIHDWmHJFxN1Q6Z1DxmqnuOeeLrPEaKTLcQ2lnL1+lvI
	5j+dt8F2vNg4Mxpien4xpo1BCDaugi8NVeST1BhABFuU4LQlgT5nWCukQRuPr77EIk+e0ZQH1p9x4
	H8qrGD8i0lXouTo66EiBGuhs9HrAzo8hR799V7nt+WXqbCy0xP6aus/ext1QRmV1aXnBwie6159+5
	7GXisB+TGe6LnCGZcdMqqQbmSq+CYlqtO3T8zDkM9YF2EqLWPBiKcGEcYdQ1m5cum4YbzaOJ/Ngxx
	C/9BnGiAG9QT96+PLIXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Rgl-0005M8-8q; Fri, 14 Feb 2020 03:30:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Rge-0005Lj-4A
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 03:30:42 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 388E0217F4;
 Fri, 14 Feb 2020 03:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581651039;
 bh=cFymu8WHwzOuB2faV3iSaCil+S4/VFHZmiQjjhggf/c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vS7e75lbp8XciOJBp9sW6LWZAZT89snsi8eCasoMxvtvX5jwgvgWwpoHegvvx4M+9
 NUOegkb9XK9tzpo9iqlw9RMAbROCoSF5kKDqNyRvT7tm4L+P9yUtHsBEFrqNXkHqjR
 KMR5NzRIqH1poVYmaCGWqkmCfNniyLihRRSHr99E=
Date: Fri, 14 Feb 2020 11:30:31 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Subject: Re: [PATCH v3 12/12] ARM: dts: imx7d: sbc-iot-imx7: add basic board
 support
Message-ID: <20200214033030.GO22842@dragon>
References: <20200131083638.6118-1-git@andred.net>
 <20200131083638.6118-12-git@andred.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200131083638.6118-12-git@andred.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_193040_204568_841AF1B4 
X-CRM114-Status: GOOD (  25.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Igor Grinberg <grinberg@compulab.co.il>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Ilya Ledvich <ilya@compulab.co.il>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 31, 2020 at 08:36:38AM +0000, Andr=E9 Draszik wrote:
> This is a forward-port of Compulab's downstream commit
> against linux 4.9.11, including updates to work with
> more recent kernels.
> =

> Original commit message:
>     The SB-IOT-iMX7 base board together with CL-SOM-iMX7
>     SoM forms SBC-IOT-iMX7 single board computer.
>     SBC-IOT-iMX7 is a single board computer optimized for
>     industrial control and monitoring, extensive wireless
>     and wired connectivity, ideal solution for
>     cost-sensitive systems. It is based on the Freescale
>     i.MX7 system-on-chip. SBC-IOT-iMX7 is implemented with
>     the CL-SOM-iMX7 System-on-Module providing most of the
>     functions,and SB-IOT-iMX7 carrier board providing
>     additional peripheral functions and connectors.
> =

>     https://www.compulab.com/products/computer-on-modules/cl-som-imx7-fre=
escale-i-mx-7-system-on-module/
>     https://www.compulab.com/products/sbcs/sbc-iot-imx7-nxp-i-mx-7-intern=
et-of-things-single-board-computer/
> =

> This commit adds basic board support, including:
> * SD-card (note that write-protect is not connected
>   on this carrier board)
> * SPI (available on expansion header)
> * i2c3 & i2c4 (including bus recovery information)
> * additional UARTs
> * all USB ports
> * SNVS powerkey
> =

> Compared to the downtream commit, this commit doesn't
> add / enable the PCIe and LCD interface, as PCIe
> support needs an additional patch to the PCI controller
> first, and I can't test the LCD.
> =

> Signed-off-by: Andr=E9 Draszik <git@andred.net>
> Cc: Ilya Ledvich <ilya@compulab.co.il>
> Cc: Igor Grinberg <grinberg@compulab.co.il>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> =

> ---
> v3:
> * enable snvs_pwrkey node
> =

> v2:
> * use standard uart-has-rtscts instead of fsl,uart-has-rtscts
> =

> ARM: dts: imx7d: sbc-iot-imx7: has a power key
> =

> Signed-off-by: Andr=E9 Draszik <git@andred.net>
> ---
>  arch/arm/boot/dts/Makefile               |   1 +
>  arch/arm/boot/dts/imx7d-sbc-iot-imx7.dts | 202 +++++++++++++++++++++++
>  2 files changed, 203 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx7d-sbc-iot-imx7.dts
> =

> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 08011dc8c7a6..6efbfa613366 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -603,6 +603,7 @@ dtb-$(CONFIG_SOC_IMX7D) +=3D \
>  	imx7d-pico-hobbit.dtb \
>  	imx7d-pico-pi.dtb \
>  	imx7d-sbc-imx7.dtb \
> +	imx7d-sbc-iot-imx7.dtb \
>  	imx7d-sdb.dtb \
>  	imx7d-sdb-reva.dtb \
>  	imx7d-sdb-sht11.dtb \
> diff --git a/arch/arm/boot/dts/imx7d-sbc-iot-imx7.dts b/arch/arm/boot/dts=
/imx7d-sbc-iot-imx7.dts
> new file mode 100644
> index 000000000000..4ffa67f2e530
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx7d-sbc-iot-imx7.dts
> @@ -0,0 +1,202 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
> +//
> +// Copyright 2017 CompuLab Ltd. - http://www.compulab.co.il/
> +/*
> + * Support for CompuLab SBC-IOT-iMX7 Single Board Computer
> + */
> +
> +#include "imx7d-cl-som-imx7.dts"
> +
> +/ {
> +	model =3D "CompuLab,SBC-IOT-iMX7";
> +	compatible =3D "compulab,sbc-iot-imx7", "compulab,cl-som-imx7", "fsl,im=
x7d";

Any new compatibles need to be documented.

> +
> +	reg_usb_vbus: regulator-usb-vbus {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "usb_vbus";
> +		regulator-min-microvolt =3D <5000000>;
> +		regulator-max-microvolt =3D <5000000>;
> +		regulator-always-on;
> +	};
> +};
> +
> +&ecspi3 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_ecspi3 &pinctrl_ecspi3_cs>;
> +	cs-gpios =3D <&gpio4 11 GPIO_ACTIVE_HIGH>;
> +	status =3D "okay";
> +};
> +
> +&i2c3 {
> +	clock-frequency =3D <100000>;
> +	pinctrl-names =3D "default", "gpio";
> +	pinctrl-0 =3D <&pinctrl_i2c3>;
> +	pinctrl-1 =3D <&pinctrl_i2c3_recovery>;
> +	sda-gpios =3D <&gpio1 9 GPIO_ACTIVE_HIGH>;
> +	scl-gpios =3D <&gpio1 8 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	status =3D "okay";
> +};
> +
> +&i2c4 {
> +	clock-frequency =3D <100000>;
> +	pinctrl-names =3D "default", "gpio";
> +	pinctrl-0 =3D <&pinctrl_i2c4>;
> +	pinctrl-1 =3D <&pinctrl_i2c4_recovery>;
> +	sda-gpios =3D <&gpio1 11 GPIO_ACTIVE_HIGH>;
> +	scl-gpios =3D <&gpio1 10 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	status =3D "okay";
> +
> +	eeprom_iot@54 {

The '_iot' in the node name doesn't make a lot sense.

> +		compatible =3D "atmel,24c08";
> +		reg =3D <0x54>;
> +		pagesize =3D <16>;
> +	};
> +};
> +
> +&snvs_pwrkey {

Keep the node sort alphabetically.

Shawn

> +	status =3D "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl-1 =3D <&pinctrl_xpen>;
> +
> +	/* SB-IOT-iMX7 Xpension Header P7 */
> +	pinctrl_xpen: xpengrp {
> +		fsl,pins =3D <
> +			MX7D_PAD_LCD_DATA13__GPIO3_IO18		0x34 /* P7-4 - gpio82 */
> +			MX7D_PAD_LCD_DATA12__GPIO3_IO17		0x34 /* P7-5 - gpio81 */
> +		>;
> +	};
> +
> +	pinctrl_ecspi3: ecspi3grp {
> +		fsl,pins =3D <
> +			MX7D_PAD_I2C1_SDA__ECSPI3_MOSI		0xf /* P7-7 */
> +			MX7D_PAD_I2C1_SCL__ECSPI3_MISO		0xf /* P7-8 */
> +			MX7D_PAD_I2C2_SCL__ECSPI3_SCLK		0xf /* P7-6 */
> +		>;
> +	};
> +
> +	pinctrl_ecspi3_cs: ecspi3_cs_grp {
> +		fsl,pins =3D <
> +			MX7D_PAD_I2C2_SDA__GPIO4_IO11		0x34 /* P7-9 */
> +		>;
> +	};
> +
> +	pinctrl_i2c3: i2c3grp {
> +		fsl,pins =3D <
> +			MX7D_PAD_GPIO1_IO09__I2C3_SDA		0x4000000f /* P7-3 */
> +			MX7D_PAD_GPIO1_IO08__I2C3_SCL		0x4000000f /* P7-2 */
> +		>;
> +	};
> +
> +	pinctrl_i2c3_recovery: i2c3recoverygrp {
> +		fsl,pins =3D <
> +			MX7D_PAD_GPIO1_IO09__GPIO1_IO9		0x4000000f /* P7-3 */
> +			MX7D_PAD_GPIO1_IO08__GPIO1_IO8		0x4000000f /* P7-2 */
> +		>;
> +	};
> +
> +	pinctrl_i2c4: i2c4grp {
> +		fsl,pins =3D <
> +			MX7D_PAD_GPIO1_IO11__I2C4_SDA		0x4000000f
> +			MX7D_PAD_GPIO1_IO10__I2C4_SCL		0x4000000f
> +		>;
> +	};
> +
> +	pinctrl_i2c4_recovery: i2c4recoverygrp {
> +		fsl,pins =3D <
> +			MX7D_PAD_GPIO1_IO11__GPIO1_IO11		0x4000000f
> +			MX7D_PAD_GPIO1_IO10__GPIO1_IO10		0x4000000f
> +		>;
> +	};
> +
> +	pinctrl_uart2: uart2grp {
> +		fsl,pins =3D <
> +			MX7D_PAD_LCD_ENABLE__UART2_DCE_TX	0x79 /* P7-12 */
> +			MX7D_PAD_LCD_CLK__UART2_DCE_RX		0x79 /* P7-13 */
> +			MX7D_PAD_LCD_VSYNC__UART2_DCE_CTS	0x79 /* P7-11 */
> +			MX7D_PAD_LCD_HSYNC__UART2_DCE_RTS	0x79 /* P7-10 */
> +		>;
> +	};
> +
> +	pinctrl_uart5: uart5grp {
> +		fsl,pins =3D <
> +			MX7D_PAD_I2C4_SDA__UART5_DCE_TX		0x79 /* RS232-TX */
> +			MX7D_PAD_I2C4_SCL__UART5_DCE_RX		0x79 /* RS232-RX */
> +			MX7D_PAD_I2C3_SDA__UART5_DCE_RTS	0x79 /* RS232-RTS */
> +			MX7D_PAD_I2C3_SCL__UART5_DCE_CTS	0x79 /* RS232-CTS */
> +		>;
> +	};
> +
> +	pinctrl_uart7: uart7grp {
> +		fsl,pins =3D <
> +			MX7D_PAD_ECSPI2_MOSI__UART7_DCE_TX	0x79 /* R485-TX */
> +			MX7D_PAD_ECSPI2_SCLK__UART7_DCE_RX	0x79 /* R485-RX */
> +			MX7D_PAD_ECSPI2_SS0__UART7_DCE_CTS	0x79 /* R485-CTS */
> +			MX7D_PAD_ECSPI2_MISO__UART7_DCE_RTS	0x79 /* R485-TTS */
> +		>;
> +	};
> +
> +	pinctrl_usdhc1: usdhc1grp {
> +		fsl,pins =3D <
> +			MX7D_PAD_SD1_CMD__SD1_CMD		0x59
> +			MX7D_PAD_SD1_CLK__SD1_CLK		0x19
> +			MX7D_PAD_SD1_DATA0__SD1_DATA0		0x59
> +			MX7D_PAD_SD1_DATA1__SD1_DATA1		0x59
> +			MX7D_PAD_SD1_DATA2__SD1_DATA2		0x59
> +			MX7D_PAD_SD1_DATA3__SD1_DATA3		0x59
> +			MX7D_PAD_SD1_CD_B__GPIO5_IO0		0x59 /* CD */
> +		>;
> +	};
> +};
> +
> +&uart2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart2>;
> +	assigned-clocks =3D <&clks IMX7D_UART2_ROOT_SRC>;
> +	assigned-clock-parents =3D <&clks IMX7D_OSC_24M_CLK>;
> +	uart-has-rtscts;
> +	status =3D "okay";
> +};
> +
> +&uart5 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart5>;
> +	assigned-clocks =3D <&clks IMX7D_UART5_ROOT_SRC>;
> +	assigned-clock-parents =3D <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
> +	uart-has-rtscts;
> +	status =3D "okay";
> +};
> +
> +&uart7 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart7>;
> +	assigned-clocks =3D <&clks IMX7D_UART7_ROOT_SRC>;
> +	assigned-clock-parents =3D <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
> +	uart-has-rtscts;
> +	status =3D "okay";
> +};
> +
> +&usbotg1 {
> +	vbus-supply =3D <&reg_usb_vbus>;
> +	status =3D "okay";
> +};
> +
> +&usbotg2 {
> +	dr_mode =3D "host";
> +	vbus-supply =3D <&reg_usb_vbus>;
> +	status =3D "okay";
> +};
> +
> +&usbh {
> +	vbus-supply =3D <&reg_usb_vbus>;
> +	status =3D "okay";
> +};
> +
> +&usdhc1 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_usdhc1>;
> +	cd-gpios =3D <&gpio5 0 GPIO_ACTIVE_LOW>;
> +	wakeup-source;
> +	status =3D "okay";
> +};
> -- =

> 2.23.0.rc1
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
