Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1DBDC73E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 16:23:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cy5pa8mmZawy4MdrJvfLCeRGXGRW3M5czhRgIKEyaFY=; b=MdqKd8CEUC/Ah0
	2VcLtxyCRCiX15p8r08BVTwr8EWN74wGFqkwSO+tY1jx+6auTqESavKBsaR5N9Kp4n+XV02YiliW5
	aRFAJw/ubHwVXCWLZB3CPUUDADxQ/C+WXoVGOz3sSAk7oT5MdPAOQB6glt5tCkTg9fMSkQve7o+1P
	CoyqlC9xgQfR+uB3om2DNCIntfKeLITXbnXfqZzIDmoiOl9IEXXnNUEgcK5XIgs/tdF6JovLm5l10
	cx9mXNy4O5KWSNTwNQlST03yc0nQjhtIRZEBZqXjSkzenta/v1af4RJWocfI6XCIOOOK7DWGv52C5
	Ywou74XdKEoAgorPseNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLTAJ-0000Qs-Pd; Fri, 18 Oct 2019 14:23:39 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLTA7-0000PY-KD
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 14:23:29 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 62409200009;
 Fri, 18 Oct 2019 14:23:23 +0000 (UTC)
Date: Fri, 18 Oct 2019 16:23:23 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 2/2] ARM: dts: at91: add a common kizboxmini dtsi file
Message-ID: <20191018142323.GI3125@piout.net>
References: <20191018140304.31547-1-kamel.bouhara@bootlin.com>
 <20191018140304.31547-3-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018140304.31547-3-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_072327_932000_CA22FFBB 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Mickael GARDET <m.gardet@overkiz.com>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?iso-8859-1?Q?K=E9vin?= RAYMOND <k.raymond@overkiz.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/10/2019 16:03:04+0200, Kamel Bouhara wrote:
> Split the Kizbox Mini boards into two board configuration, the
> Kizboxmini Mother board and the Kizboxmini RailDIN board.
> =

> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> Signed-off-by: K=E9vin RAYMOND <k.raymond@overkiz.com>
> Signed-off-by: Mickael GARDET <m.gardet@overkiz.com>
> ---
>  arch/arm/boot/dts/Makefile                    |   2 +
>  arch/arm/boot/dts/at91-kizboxmini-mb.dts      |  38 ++++
>  arch/arm/boot/dts/at91-kizboxmini-rd.dts      |  54 ++++++
>  arch/arm/boot/dts/at91-kizboxmini_common.dtsi | 166 ++++++++++++++++++

This adds more than the subject says.

>  4 files changed, 260 insertions(+)
>  create mode 100644 arch/arm/boot/dts/at91-kizboxmini-mb.dts
>  create mode 100644 arch/arm/boot/dts/at91-kizboxmini-rd.dts
>  create mode 100644 arch/arm/boot/dts/at91-kizboxmini_common.dtsi
> =


Is arch/arm/boot/dts/at91-kizboxmini.dts still necessary after that?

> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index c976b72a4c94..6b3a65f3f6f8 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -38,6 +38,8 @@ dtb-$(CONFIG_SOC_AT91SAM9) +=3D \
>  	at91-ariettag25.dtb \
>  	at91-cosino_mega2560.dtb \
>  	at91-kizboxmini.dtb \
> +	at91-kizboxmini-mb.dtb \
> +	at91-kizboxmini-rd.dtb \
>  	at91-wb45n.dtb \
>  	at91sam9g15ek.dtb \
>  	at91sam9g25ek.dtb \
> diff --git a/arch/arm/boot/dts/at91-kizboxmini-mb.dts b/arch/arm/boot/dts=
/at91-kizboxmini-mb.dts
> new file mode 100644
> index 000000000000..52921f547dd6
> --- /dev/null
> +++ b/arch/arm/boot/dts/at91-kizboxmini-mb.dts
> @@ -0,0 +1,38 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2015-2018 Overkiz SAS
> + *   Author: Mickael Gardet <m.gardet@overkiz.com>
> + *           K=E9vin Raymond <k.raymond@overkiz.com>
> + */
> +/dts-v1/;
> +#include "at91-kizboxmini_common.dtsi"
> +
> +/ {
> +	model =3D "Overkiz Kizbox Mini Mother Board";
> +	compatible =3D "overkiz,kizboxmini-mb", "atmel,at91sam9g25",
> +		     "atmel,at91sam9x5", "atmel,at91sam9";
> +
> +	clocks {
> +		slow_xtal {
> +			clock-frequency =3D <32768>;
> +		};
> +	};
> +
> +	pwm_leds {
> +		blue {
> +			label =3D "pwm:blue:user";
> +			pwms =3D <&pwm0 2 10000000 0>;
> +			max-brightness =3D <255>;
> +			linux,default-trigger =3D "none";

The pwm is redefined here but is still left disabled from the common
dtsi.

> +		};
> +	};
> +};
> +
> +&usb0 {
> +	num-ports =3D <2>;
> +};
> +
> +&rtc {
> +	status =3D "okay";
> +};
> +
> diff --git a/arch/arm/boot/dts/at91-kizboxmini-rd.dts b/arch/arm/boot/dts=
/at91-kizboxmini-rd.dts
> new file mode 100644
> index 000000000000..1d2db8e16271
> --- /dev/null
> +++ b/arch/arm/boot/dts/at91-kizboxmini-rd.dts
> @@ -0,0 +1,54 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2015-2018 Overkiz SAS
> + *   Author: Mickael Gardet <m.gardet@overkiz.com>
> + *           K=E9vin Raymond <k.raymond@overkiz.com>
> + */
> +/dts-v1/;
> +#include "at91-kizboxmini_common.dtsi"
> +
> +/ {
> +	model =3D "Overkiz Kizbox Mini RailDIN";
> +	compatible =3D "overkiz,kizboxmini-rd", "atmel,at91sam9g25",
> +		     "atmel,at91sam9x5", "atmel,at91sam9";
> +
> +	clocks {
> +		slow_xtal {
> +			clock-frequency =3D <32768>;
> +		};
> +		adc_op_clk {
> +			status =3D "okay";
> +		};
> +	};
> +};
> +
> +&pinctrl {
> +	adc0 {
> +		pinctrl_adc0_ad5: adc0_ad5-0 {
> +			/* pull-up disable */
> +			atmel,pins =3D <AT91_PIOB 16 AT91_PERIPH_GPIO AT91_PINCTRL_NONE>;
> +		};
> +	};
> +};
> +
> +&usart0 {
> +	status =3D "disabled";
> +};
> +
> +&rtc {
> +	status =3D "okay";
> +};
> +
> +&leds {
> +	blue {
> +		status =3D "okay";
> +	};
> +};
> +
> +&adc0 {
> +	atmel,adc-vref =3D <2500>;
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_adc0_ad5>;
> +	atmel,adc-channels-used =3D <0x0020>;
> +	status =3D "okay";
> +};
> diff --git a/arch/arm/boot/dts/at91-kizboxmini_common.dtsi b/arch/arm/boo=
t/dts/at91-kizboxmini_common.dtsi
> new file mode 100644
> index 000000000000..2598b776a278
> --- /dev/null
> +++ b/arch/arm/boot/dts/at91-kizboxmini_common.dtsi
> @@ -0,0 +1,166 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * at91-kizboxmini.dts - Device Tree file for Overkiz Kizbox mini board
> + *
> + * Copyright (C) 2014-2018 Overkiz SAS
> + *   Author: Antoine Aubert <a.aubert@overkiz.com>
> + *           Ga=EBl Portay <g.portay@overkiz.com>
> + *           K=E9vin Raymond <k.raymond@overkiz.com>
> + *           Dorian Rocipon <d.rocipon@overkiz.com>
> + */
> +#include "at91sam9g25.dtsi"
> +
> +/ {
> +	chosen {
> +		bootargs =3D "ubi.mtd=3Dubi";
> +		stdout-path =3D &dbgu;
> +	};
> +
> +	memory {
> +		reg =3D <0x20000000 0x8000000>;
> +	};
> +
> +	clocks {
> +		main_xtal {
> +			clock-frequency =3D <12000000>;
> +		};
> +
> +		adc_op_clk {
> +			status =3D "disabled";
> +		};
> +	};
> +
> +	gpio_keys {
> +		compatible =3D "gpio-keys";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		prog {
> +			label =3D "PB_PROG";
> +			gpios =3D <&pioC 17 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <0x102>;
> +			wakeup-source;
> +		};
> +
> +		reset {
> +			label =3D "PB_RST";
> +			gpios =3D <&pioC 16 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <0x100>;
> +			wakeup-source;
> +		};
> +	};
> +
> +	leds: pwm_leds {
> +		compatible =3D "pwm-leds";
> +
> +		blue {
> +			label =3D "pwm:blue:user";
> +			pwms =3D <&pwm0 2 10000000 0>;
> +			max-brightness =3D <255>;
> +			linux,default-trigger =3D "none";
> +			status =3D "disabled";
> +		};
> +
> +		green {
> +			label =3D "pwm:green:user";
> +			pwms =3D <&pwm0 0 10000000 0>;
> +			max-brightness =3D <255>;
> +			linux,default-trigger =3D "default-on";
> +		};
> +
> +		red {
> +			label =3D "pwm:red:user";
> +			pwms =3D <&pwm0 1 10000000 0>;
> +			max-brightness =3D <255>;
> +			linux,default-trigger =3D "default-on";
> +		};
> +	};
> +};
> +
> +&usart0 {
> +	atmel,use-dma-rx;
> +	atmel,use-dma-tx;
> +	status =3D "okay";
> +};
> +
> +&macb0 {
> +	phy-mode =3D "rmii";
> +	status =3D "okay";
> +};
> +
> +&pwm0 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_pwm0_pwm0_1
> +		     &pinctrl_pwm0_pwm1_1
> +		     &pinctrl_pwm0_pwm2_1>;
> +	status =3D "okay";
> +};
> +
> +&dbgu {
> +	status =3D "okay";
> +};
> +
> +&watchdog {
> +	status =3D "okay";
> +};
> +
> +&adc0 {
> +	status =3D "disabled";
> +};
> +
> +&rtc {
> +	status =3D "disabled";
> +};
> +
> +&ebi {
> +	pinctrl-0 =3D <&pinctrl_ebi_addr_nand
> +			&pinctrl_ebi_data_0_7>;
> +	pinctrl-names =3D "default";
> +	status =3D "okay";
> +};
> +
> +&nand_controller {
> +	status =3D "okay";
> +	pinctrl-0 =3D <&pinctrl_nand_oe_we
> +		     &pinctrl_nand_cs
> +		     &pinctrl_nand_rb>;
> +	pinctrl-names =3D "default";
> +
> +	nand@3 {
> +		reg =3D <0x3 0x0 0x800000>;
> +		rb-gpios =3D <&pioD 5 GPIO_ACTIVE_HIGH>;
> +		cs-gpios =3D <&pioD 4 GPIO_ACTIVE_HIGH>;
> +		nand-bus-width =3D <8>;
> +		nand-ecc-mode =3D "hw";
> +		nand-ecc-strength =3D <4>;
> +		nand-ecc-step-size =3D <512>;
> +		nand-on-flash-bbt;
> +		label =3D "atmel_nand";
> +
> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			bootstrap@0 {
> +				label =3D "bootstrap";
> +				reg =3D <0x0 0x20000>;
> +			};
> +
> +			ubi@20000 {
> +				label =3D "ubi";
> +				reg =3D <0x20000 0x7fe0000>;
> +			};
> +		};
> +	};
> +};
> +
> +&usb0 {
> +	num-ports =3D <1>;
> +	status =3D "okay";
> +};
> +
> +&usb1 {
> +	status =3D "okay";
> +};
> +
> -- =

> 2.23.0
> =


-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
