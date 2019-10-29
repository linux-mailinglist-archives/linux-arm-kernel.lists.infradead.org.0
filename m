Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0D9E8846
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 13:34:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hoZ6xPrDzqPUQXngUYlL+ivYvTDafU0KLFgCm70Hz0U=; b=BZD4r5bu8CVF1v
	NUONJCMUl/WwUWJNEgEjCOYkxA6BxjQQSZRBpissPCDJlXFPdBbDxHLKXgYyJD06iHYq2edeRTmSY
	7ByUqKV9oWXwB1UuoWLMo43aToHmvc5eqVpAsqwsSk+o1b2WFCVjtDinuXxzZQ44GnnYYZP+wmg1V
	oDL71jIN1Kusgt+bMENZXIAj6FvxmIZlEwd/vIRe1kjGHCWzmfLhpKY+VO9GvEFVj3cJR+cGnVo8X
	9iIsyCA7g3iXeGE8qcev1i7/yxl5kNRuW/C1EZys4CQfYI1hXQh6MJgsMfZsVMZye69yyL6CC+A8u
	Qpfes1K+ripU43RbyWWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQhu-00072F-KU; Tue, 29 Oct 2019 12:34:42 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQhi-00071f-8Y
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 12:34:31 +0000
Received: by mail-oi1-f194.google.com with SMTP id g81so8743849oib.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 05:34:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=NuGvNr5d2i3rf51wx85q7m6lDMmKS60m3xzeENQ/V5I=;
 b=UFXhS/1lC6obOPnXEKHUe7n/RAzj5pI7+yKx/qJ9BAt/ekOGRKWh20V559oKiUK4dT
 MFHylbu6DgI1d07poIP68Q/9rVu0Obh/Qeqb5vSUkRao49hIno+CjBpgLAe/L5j9jQKx
 gqMWcqvtM42g7msVlmIp06v1QZUVrizZUK5BdsdxMiq1jZ4y47NGTt9vXNSm8ObYbbpk
 zkGxgtRk+ehClI2wydb6V/sI0cVU+OaaNAL1qhvaTdqR5r/zuFsm2sThybDFiEsAQL/3
 YSHsQt+qAJgMK6jzBeGyTENvr4+wxa8Jz59wz28zzloWSzC133B3AAhcgxTVY1L5fKHd
 SzFQ==
X-Gm-Message-State: APjAAAVDyplfoj+8BiMoE5ECPBHUBDOXQvx9iQ8Nk/H4CQ3kCScDB1a8
 1sDKj16Neaf6FJZlS3/fYQ==
X-Google-Smtp-Source: APXvYqyKfHHEU0+WHpt8FAZ1kGjO3iGV0VKL6cIl4PDExXqHjBfHF/9A1De9Cet/U9+IxV6W9Nx6eA==
X-Received: by 2002:aca:f046:: with SMTP id o67mr3664860oih.155.1572352468513; 
 Tue, 29 Oct 2019 05:34:28 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q5sm2691065oih.55.2019.10.29.05.34.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 05:34:27 -0700 (PDT)
Date: Tue, 29 Oct 2019 07:34:26 -0500
From: Rob Herring <robh@kernel.org>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 2/2] ARM: dts: at91: add a common kizboxmini dtsi file
Message-ID: <20191029123426.GB8412@bogus>
References: <20191018140304.31547-1-kamel.bouhara@bootlin.com>
 <20191018140304.31547-3-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018140304.31547-3-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_053430_306974_FC52EA5C 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mickael GARDET <m.gardet@overkiz.com>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 =?iso-8859-1?Q?K=E9vin?= RAYMOND <k.raymond@overkiz.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 04:03:04PM +0200, Kamel Bouhara wrote:
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
>  4 files changed, 260 insertions(+)
>  create mode 100644 arch/arm/boot/dts/at91-kizboxmini-mb.dts
>  create mode 100644 arch/arm/boot/dts/at91-kizboxmini-rd.dts
>  create mode 100644 arch/arm/boot/dts/at91-kizboxmini_common.dtsi
> =

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

Don't use '_' in node names.

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

memory@20000000

Build your dtb with W=3D12 and fix any new warnings (feel free to fix =

existing ones too :) ).

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


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
