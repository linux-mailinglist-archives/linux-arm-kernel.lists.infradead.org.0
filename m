Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD8FDFF84
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 10:36:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XHTA8hO3DGNgIn7TiQvjn+un+DhcfvhwMrZB0YnlTdg=; b=og5xkqRHYpLSup
	lZXSO0TFjJhc5Hp2zn5gbkqFx46nBBDl+3Ffwtr0z1ED6Unk1Y0tWcsguCcdU0YJYWIxRCiKzVVku
	FXuGPlN0sB49E4ncZrJulQ2tlj5OZfnpqCgBh5+yzuD2NxSQLB/T+gid/r30FJy9MidoSJ7H42Gyy
	khK3uA9BrDWCEPGXM2l1EGz70vghA/lWMU+NoptRsIJKXCtYNCvqyOWG353Pdo/C2nZLQhBjktpUY
	PV6VIuyiNMDhK8t5R81A4usywtTOvkSerMKf5VMfOUvJMneVs5E2p52qfxO96Mrlxel7ODH3+ayCn
	Tpi4/QJki3FgSYmyG/Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMpeM-0001Yv-VS; Tue, 22 Oct 2019 08:36:18 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMpeB-0001Xv-Lt
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 08:36:10 +0000
X-Originating-IP: 92.137.17.54
Received: from localhost (alyon-657-1-975-54.w92-137.abo.wanadoo.fr
 [92.137.17.54]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 464B51C0006;
 Tue, 22 Oct 2019 08:35:55 +0000 (UTC)
Date: Tue, 22 Oct 2019 10:35:54 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: at91: add a dts and dtsi file for
 kizbox2 based boards
Message-ID: <20191022083554.GB3125@piout.net>
References: <20191021125804.23856-1-kamel.bouhara@bootlin.com>
 <20191021125804.23856-2-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021125804.23856-2-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_013607_992292_BFC83159 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 21/10/2019 14:58:04+0200, Kamel Bouhara wrote:
> There are several boards available depending on the PCB
> (3 antennas support and several revison). Add a dtsi file to share
> common binding between all kizbox2 boards. This patch also add support
> for the kizbox2-2 variant.
> =

> Signed-off-by: K=E9vin RAYMOND <k.raymond@overkiz.com>
> Signed-off-by: Mickael GARDET <m.gardet@overkiz.com>
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
> Changes in v2:
> 	- Replaced "_" by "-" in dts/dtsi file names
> 	- Fixed unusual C++ Style comments
> =

>  arch/arm/boot/dts/Makefile                 |   2 +-
>  arch/arm/boot/dts/at91-kizbox.dts          | 173 +++++++-------

This change should be separated in a different patch.

>  arch/arm/boot/dts/at91-kizbox2-2.dts       |  26 +++
>  arch/arm/boot/dts/at91-kizbox2-common.dtsi | 258 +++++++++++++++++++++
>  arch/arm/boot/dts/at91-kizbox2.dts         | 244 -------------------
>  5 files changed, 370 insertions(+), 333 deletions(-)
>  create mode 100644 arch/arm/boot/dts/at91-kizbox2-2.dts
>  create mode 100644 arch/arm/boot/dts/at91-kizbox2-common.dtsi
>  delete mode 100644 arch/arm/boot/dts/at91-kizbox2.dts
> =

> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 3bda216c41be..4ac053115a8e 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -45,7 +45,7 @@ dtb-$(CONFIG_SOC_AT91SAM9) +=3D \
>  	at91sam9x25ek.dtb \
>  	at91sam9x35ek.dtb
>  dtb-$(CONFIG_SOC_SAM_V7) +=3D \
> -	at91-kizbox2.dtb \
> +	at91-kizbox2-2.dtb \
>  	at91-kizbox3-hs.dtb \
>  	at91-nattis-2-natte-2.dtb \
>  	at91-sama5d27_som1_ek.dtb \
> diff --git a/arch/arm/boot/dts/at91-kizbox.dts b/arch/arm/boot/dts/at91-k=
izbox.dts
> index 90996eaf73b2..9eb1ea750159 100644
> --- a/arch/arm/boot/dts/at91-kizbox.dts
> +++ b/arch/arm/boot/dts/at91-kizbox.dts
> @@ -28,85 +28,6 @@
>  		};
>  	};
> =

> -	ahb {
> -		apb {
> -			tcb0: timer@fffa0000 {
> -				timer@0 {
> -					compatible =3D "atmel,tcb-timer";
> -					reg =3D <0>, <1>;
> -				};
> -
> -				timer@2 {
> -					compatible =3D "atmel,tcb-timer";
> -					reg =3D <2>;
> -				};
> -			};
> -
> -			macb0: ethernet@fffc4000 {
> -				phy-mode =3D "mii";
> -				pinctrl-0 =3D <&pinctrl_macb_rmii
> -				             &pinctrl_macb_rmii_mii_alt>;
> -				status =3D "okay";
> -			};
> -
> -			usart3: serial@fffd0000 {
> -				status =3D "okay";
> -			};
> -
> -			dbgu: serial@fffff200 {
> -				status =3D "okay";
> -			};
> -
> -			watchdog@fffffd40 {
> -				timeout-sec =3D <15>;
> -				atmel,max-heartbeat-sec =3D <16>;
> -				atmel,min-heartbeat-sec =3D <0>;
> -				status =3D "okay";
> -			};
> -		};
> -
> -		usb0: ohci@500000 {
> -			num-ports =3D <1>;
> -			status =3D "okay";
> -		};
> -
> -		ebi: ebi@10000000 {
> -			status =3D "okay";
> -
> -			nand_controller: nand-controller {
> -				status =3D "okay";
> -				pinctrl-0 =3D <&pinctrl_nand_cs &pinctrl_nand_rb>;
> -				pinctrl-names =3D "default";
> -
> -				nand@3 {
> -					reg =3D <0x3 0x0 0x800000>;
> -					rb-gpios =3D <&pioC 13 GPIO_ACTIVE_HIGH>;
> -					cs-gpios =3D <&pioC 14 GPIO_ACTIVE_HIGH>;
> -					nand-bus-width =3D <8>;
> -					nand-ecc-mode =3D "soft";
> -					nand-on-flash-bbt;
> -					label =3D "atmel_nand";
> -
> -					partitions {
> -						compatible =3D "fixed-partitions";
> -						#address-cells =3D <1>;
> -						#size-cells =3D <1>;
> -
> -						bootstrap@0 {
> -							label =3D "bootstrap";
> -							reg =3D <0x0 0x20000>;
> -						};
> -
> -						ubi@20000 {
> -							label =3D "ubi";
> -							reg =3D <0x20000 0x7fe0000>;
> -						};
> -					};
> -				};
> -			};
> -		};
> -	};
> -
>  	gpio_keys {
>  		compatible =3D "gpio-keys";
>  		#address-cells =3D <1>;
> @@ -127,15 +48,6 @@
>  		};
>  	};
> =

> -	i2c-gpio-0 {
> -		status =3D "okay";
> -
> -		rtc: pcf8563@51 {
> -			compatible =3D "nxp,pcf8563";
> -			reg =3D <0x51>;
> -		};
> -	};
> -
>  	pwm_leds {
>  		compatible =3D "pwm-leds";
> =

> @@ -179,3 +91,88 @@
>  			     &pinctrl_tcb1_tiob0>;
>  	};
>  };
> +
> +&tcb0 {
> +	timer@0 {
> +		compatible =3D "atmel,tcb-timer";
> +		reg =3D <0>, <1>;
> +	};
> +
> +	timer@2 {
> +		compatible =3D "atmel,tcb-timer";
> +		reg =3D <2>;
> +	};
> +};
> +
> +&ebi {
> +	status =3D "okay";
> +};
> +
> +&nand_controller {
> +	status =3D "okay";
> +	pinctrl-0 =3D <&pinctrl_nand_cs &pinctrl_nand_rb>;
> +	pinctrl-names =3D "default";
> +
> +	nand@3 {
> +		reg =3D <0x3 0x0 0x800000>;
> +		rb-gpios =3D <&pioC 13 GPIO_ACTIVE_HIGH>;
> +		cs-gpios =3D <&pioC 14 GPIO_ACTIVE_HIGH>;
> +		nand-bus-width =3D <8>;
> +		nand-ecc-mode =3D "soft";
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
> +&macb0 {
> +	phy-mode =3D "mii";
> +	pinctrl-0 =3D <&pinctrl_macb_rmii
> +		     &pinctrl_macb_rmii_mii_alt>;
> +	status =3D "okay";
> +};
> +
> +&usart3 {
> +	status =3D "okay";
> +};
> +
> +&dbgu {
> +	status =3D "okay";
> +};
> +
> +&watchdog {
> +	timeout-sec =3D <15>;
> +	atmel,max-heartbeat-sec =3D <16>;
> +	atmel,min-heartbeat-sec =3D <0>;
> +	status =3D "okay";
> +};
> +
> +&usb0 {
> +	num-ports =3D <1>;
> +	status =3D "okay";
> +};
> +
> +&i2c-gpio-0 {
> +	status =3D "okay";
> +
> +	rtc: pcf8563@51 {
> +		compatible =3D "nxp,pcf8563";
> +		reg =3D <0x51>;
> +	};
> +};
> +
> diff --git a/arch/arm/boot/dts/at91-kizbox2-2.dts b/arch/arm/boot/dts/at9=
1-kizbox2-2.dts
> new file mode 100644
> index 000000000000..cab8b3579efa
> --- /dev/null
> +++ b/arch/arm/boot/dts/at91-kizbox2-2.dts
> @@ -0,0 +1,26 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * at91-kizbox2-2.dts - Device Tree file for the Kizbox2 with
> + * two head board
> + *
> + * Copyright (C) 2015 Overkiz SAS
> + *
> + * Authors: Antoine Aubert <a.aubert@overkiz.com>
> + *	    K=E9vin Raymond <k.raymond@overkiz.com>
> + */
> +/dts-v1/;
> +#include "at91-kizbox2-common.dtsi"
> +
> +/ {
> +	model =3D "Overkiz Kizbox 2 with two heads";
> +	compatible =3D "overkiz,kizbox2-2", "atmel,sama5d31",
> +		     "atmel,sama5d3", "atmel,sama5";
> +};
> +
> +&usart1 {
> +	status =3D "okay";
> +};
> +
> +&usart2 {
> +	status =3D "okay";
> +};
> diff --git a/arch/arm/boot/dts/at91-kizbox2-common.dtsi b/arch/arm/boot/d=
ts/at91-kizbox2-common.dtsi
> new file mode 100644
> index 000000000000..af38253a6e7a
> --- /dev/null
> +++ b/arch/arm/boot/dts/at91-kizbox2-common.dtsi
> @@ -0,0 +1,258 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * at91-kizbox2_common.dtsi - Device Tree Include file for
> + * Overkiz Kizbox 2 family SoC
> + *
> + * Copyright (C) 2014-2018 Overkiz SAS
> + *
> + * Authors: Antoine Aubert <a.aubert@overkiz.com>
> + *          Ga=EBl Portay <g.portay@overkiz.com>
> + *          K=E9vin Raymond <k.raymond@overkiz.com>
> + */
> +#include "sama5d31.dtsi"
> +
> +/ {
> +	chosen {
> +		bootargs =3D "ubi.mtd=3Dubi";
> +		stdout-path =3D &dbgu;
> +	};
> +
> +	memory {
> +		reg =3D <0x20000000 0x10000000>;
> +	};
> +
> +	clocks {
> +		slow_xtal {
> +			clock-frequency =3D <32768>;
> +		};
> +
> +		main_xtal {
> +			clock-frequency =3D <12000000>;
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
> +			gpios =3D <&pioE 27 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <0x102>;
> +			wakeup-source;
> +		};
> +
> +		reset {
> +			label =3D "PB_RST";
> +			gpios =3D <&pioE 29 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <0x100>;
> +			wakeup-source;
> +		};
> +
> +		user {
> +			label =3D "PB_USER";
> +			gpios =3D <&pioE 31 GPIO_ACTIVE_HIGH>;
> +			linux,code =3D <0x101>;
> +			wakeup-source;
> +		};
> +	};
> +
> +	pwm_leds {
> +		compatible =3D "pwm-leds";
> +
> +		blue {
> +			label =3D "pwm:blue:user";
> +			pwms =3D <&pwm0 2 10000000 0>;
> +			max-brightness =3D <255>;
> +			linux,default-trigger =3D "none";
> +		};
> +
> +		green {
> +			label =3D "pwm:green:user";
> +			pwms =3D <&pwm0 1 10000000 0>;
> +			max-brightness =3D <255>;
> +			linux,default-trigger =3D "default-on";
> +		};
> +
> +		red {
> +			label =3D "pwm:red:user";
> +			pwms =3D <&pwm0 0 10000000 0>;
> +			max-brightness =3D <255>;
> +			linux,default-trigger =3D "default-on";
> +		};
> +	};
> +};
> +
> +&i2c1 {
> +	status =3D "okay";
> +
> +	pmic: act8865@5b {
> +		compatible =3D "active-semi,act8865";
> +		reg =3D <0x5b>;
> +		status =3D "okay";
> +
> +		regulators {
> +			vcc_1v8_reg: DCDC_REG1 {
> +				regulator-name =3D "VCC_1V8";
> +				regulator-min-microvolt =3D <1800000>;
> +				regulator-max-microvolt =3D <1800000>;
> +				regulator-always-on;
> +			};
> +
> +			vcc_1v2_reg: DCDC_REG2 {
> +				regulator-name =3D "VCC_1V2";
> +				regulator-min-microvolt =3D <1200000>;
> +				regulator-max-microvolt =3D <1200000>;
> +				regulator-always-on;
> +			};
> +
> +			vcc_3v3_reg: DCDC_REG3 {
> +				regulator-name =3D "VCC_3V3";
> +				regulator-min-microvolt =3D <3300000>;
> +				regulator-max-microvolt =3D <3300000>;
> +				regulator-always-on;
> +			};
> +
> +			vddfuse_reg: LDO_REG1 {
> +				regulator-name =3D "FUSE_2V5";
> +				regulator-min-microvolt =3D <2500000>;
> +				regulator-max-microvolt =3D <2500000>;
> +			};
> +
> +			vddana_reg: LDO_REG2 {
> +				regulator-name =3D "VDDANA";
> +				regulator-min-microvolt =3D <3300000>;
> +				regulator-max-microvolt =3D <3300000>;
> +				regulator-always-on;
> +			};
> +
> +			vled_reg: LDO_REG3 {
> +				regulator-name =3D "VLED";
> +				regulator-min-microvolt =3D <3300000>;
> +				regulator-max-microvolt =3D <3300000>;
> +				regulator-always-on;
> +			};
> +
> +			v3v8_rf_reg: LDO_REG4 {
> +				regulator-name =3D "V3V8_RF";
> +				regulator-min-microvolt =3D <3800000>;
> +				regulator-max-microvolt =3D <3800000>;
> +				regulator-always-on;
> +			};
> +		};
> +	};
> +};
> +
> +&usart0 {
> +	atmel,use-dma-rx;
> +	atmel,use-dma-tx;
> +	status =3D "disabled";
> +};
> +
> +&usart1 {
> +	atmel,use-dma-rx;
> +	atmel,use-dma-tx;
> +	status =3D "disabled";
> +};
> +
> +&usart2 {
> +	atmel,use-dma-rx;
> +	atmel,use-dma-tx;
> +	status =3D "disabled";
> +};
> +
> +&pwm0 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_pwm0_pwmh0_1
> +		     &pinctrl_pwm0_pwmh1_1
> +		     &pinctrl_pwm0_pwmh2_0>;
> +	status =3D "okay";
> +};
> +
> +&adc0 {
> +	atmel,adc-vref =3D <3333>;
> +	status =3D "okay";
> +};
> +
> +&macb1 {
> +	phy-mode =3D "rmii";
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
> +&ebi {
> +	pinctrl-0 =3D <&pinctrl_ebi_nand_addr>;
> +	pinctrl-names =3D "default";
> +	status =3D "okay";
> +};
> +
> +&nand_controller {
> +	status =3D "okay";
> +
> +	nand@3 {
> +		reg =3D <0x3 0x0 0x2>;
> +		atmel,rb =3D <0>;
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
> +&usb1 {
> +	status =3D "okay";
> +};
> +
> +&usb2 {
> +	status =3D "okay";
> +};
> +
> +/* WMBUS (inverted with IO in the latest schematic) */
> +&pinctrl_usart0 {
> +	atmel,pins =3D
> +		<AT91_PIOD 17 AT91_PERIPH_A AT91_PINCTRL_NONE
> +		 AT91_PIOD 18 AT91_PERIPH_A AT91_PINCTRL_PULL_UP
> +		 AT91_PIOE 2 AT91_PERIPH_GPIO AT91_PINCTRL_MULTI_DRIVE>;
> +};
> +
> +/* RTS */
> +&pinctrl_usart1 {
> +	atmel,pins =3D
> +		<AT91_PIOB 28 AT91_PERIPH_A AT91_PINCTRL_NONE
> +		 AT91_PIOB 29 AT91_PERIPH_A AT91_PINCTRL_PULL_UP
> +		 AT91_PIOE 7 AT91_PERIPH_GPIO AT91_PINCTRL_MULTI_DRIVE>;
> +};
> +
> +/* IO (inverted with WMBUS in the latest schematic) */
> +&pinctrl_usart2 {
> +	atmel,pins =3D
> +		<AT91_PIOE 25 AT91_PERIPH_B AT91_PINCTRL_NONE
> +		 AT91_PIOE 26 AT91_PERIPH_B AT91_PINCTRL_PULL_UP
> +		 AT91_PIOE 8 AT91_PERIPH_GPIO AT91_PINCTRL_MULTI_DRIVE>;
> +};
> diff --git a/arch/arm/boot/dts/at91-kizbox2.dts b/arch/arm/boot/dts/at91-=
kizbox2.dts
> deleted file mode 100644
> index 86d821884bd4..000000000000
> --- a/arch/arm/boot/dts/at91-kizbox2.dts
> +++ /dev/null
> @@ -1,244 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0-or-later
> -/*
> - * at91-kizbox2.dts - Device Tree file for Overkiz Kizbox 2 board
> - *
> - * Copyright (C) 2014 Ga=EBl PORTAY <g.portay@overkiz.com>
> - */
> -/dts-v1/;
> -#include "sama5d31.dtsi"
> -#include <dt-bindings/pwm/pwm.h>
> -
> -/ {
> -	model =3D "Overkiz Kizbox 2";
> -	compatible =3D "overkiz,kizbox2", "atmel,sama5d31", "atmel,sama5d3", "a=
tmel,sama5";
> -
> -	chosen {
> -		bootargs =3D "ubi.mtd=3Dubi";
> -		stdout-path =3D &dbgu;
> -	};
> -
> -	memory {
> -		reg =3D <0x20000000 0x10000000>;
> -	};
> -
> -	clocks {
> -		slow_xtal {
> -			clock-frequency =3D <32768>;
> -		};
> -
> -		main_xtal {
> -			clock-frequency =3D <12000000>;
> -		};
> -	};
> -
> -	ahb {
> -		apb {
> -			i2c1: i2c@f0018000 {
> -				status =3D "okay";
> -
> -				pmic: act8865@5b {
> -					compatible =3D "active-semi,act8865";
> -					reg =3D <0x5b>;
> -					status =3D "okay";
> -
> -					regulators {
> -						vcc_1v8_reg: DCDC_REG1 {
> -							regulator-name =3D "VCC_1V8";
> -							regulator-min-microvolt =3D <1800000>;
> -							regulator-max-microvolt =3D <1800000>;
> -							regulator-always-on;
> -						};
> -
> -						vcc_1v2_reg: DCDC_REG2 {
> -							regulator-name =3D "VCC_1V2";
> -							regulator-min-microvolt =3D <1200000>;
> -							regulator-max-microvolt =3D <1200000>;
> -							regulator-always-on;
> -						};
> -
> -						vcc_3v3_reg: DCDC_REG3 {
> -							regulator-name =3D "VCC_3V3";
> -							regulator-min-microvolt =3D <3300000>;
> -							regulator-max-microvolt =3D <3300000>;
> -							regulator-always-on;
> -						};
> -
> -						vddfuse_reg: LDO_REG1 {
> -							regulator-name =3D "FUSE_2V5";
> -							regulator-min-microvolt =3D <2500000>;
> -							regulator-max-microvolt =3D <2500000>;
> -						};
> -
> -						vddana_reg: LDO_REG2 {
> -							regulator-name =3D "VDDANA";
> -							regulator-min-microvolt =3D <3300000>;
> -							regulator-max-microvolt =3D <3300000>;
> -							regulator-always-on;
> -						};
> -
> -						vled_reg: LDO_REG3 {
> -							regulator-name =3D "VLED";
> -							regulator-min-microvolt =3D <3300000>;
> -							regulator-max-microvolt =3D <3300000>;
> -							regulator-always-on;
> -						};
> -
> -						v3v8_rf_reg: LDO_REG4 {
> -							regulator-name =3D "V3V8_RF";
> -							regulator-min-microvolt =3D <3800000>;
> -							regulator-max-microvolt =3D <3800000>;
> -							regulator-always-on;
> -						};
> -					};
> -				};
> -			};
> -
> -			tcb0: timer@f0010000 {
> -				timer@0 {
> -					compatible =3D "atmel,tcb-timer";
> -					reg =3D <0>;
> -				};
> -
> -				timer@1 {
> -					compatible =3D "atmel,tcb-timer";
> -					reg =3D <1>;
> -				};
> -			};
> -
> -			usart0: serial@f001c000 {
> -				status =3D "okay";
> -			};
> -
> -			usart1: serial@f0020000 {
> -				status =3D "okay";
> -			};
> -
> -			pwm0: pwm@f002c000 {
> -				pinctrl-names =3D "default";
> -				pinctrl-0 =3D <&pinctrl_pwm0_pwmh0_1
> -					     &pinctrl_pwm0_pwmh1_1
> -					     &pinctrl_pwm0_pwmh2_0>;
> -				status =3D "okay";
> -			};
> -
> -			adc0: adc@f8018000 {
> -				atmel,adc-vref =3D <3333>;
> -				status =3D "okay";
> -			};
> -
> -			usart2: serial@f8020000 {
> -				status =3D "okay";
> -			};
> -
> -			macb1: ethernet@f802c000 {
> -				phy-mode =3D "rmii";
> -				status =3D "okay";
> -			};
> -
> -			dbgu: serial@ffffee00 {
> -				status =3D "okay";
> -			};
> -
> -			watchdog@fffffe40 {
> -				status =3D "okay";
> -			};
> -		};
> -
> -		usb1: ohci@600000 {
> -			status =3D "okay";
> -		};
> -
> -		usb2: ehci@700000 {
> -			status =3D "okay";
> -		};
> -
> -		ebi: ebi@10000000 {
> -			pinctrl-0 =3D <&pinctrl_ebi_nand_addr>;
> -			pinctrl-names =3D "default";
> -			status =3D "okay";
> -
> -			nand_controller: nand-controller {
> -				status =3D "okay";
> -
> -				nand@3 {
> -					reg =3D <0x3 0x0 0x2>;
> -					atmel,rb =3D <0>;
> -					nand-bus-width =3D <8>;
> -					nand-ecc-mode =3D "hw";
> -					nand-ecc-strength =3D <4>;
> -					nand-ecc-step-size =3D <512>;
> -					nand-on-flash-bbt;
> -					label =3D "atmel_nand";
> -
> -					partitions {
> -						compatible =3D "fixed-partitions";
> -						#address-cells =3D <1>;
> -						#size-cells =3D <1>;
> -
> -						bootstrap@0 {
> -							label =3D "bootstrap";
> -							reg =3D <0x0 0x20000>;
> -						};
> -
> -						ubi@20000 {
> -							label =3D "ubi";
> -							reg =3D <0x20000 0x7fe0000>;
> -						};
> -					};
> -				};
> -			};
> -		};
> -	};
> -
> -	gpio_keys {
> -		compatible =3D "gpio-keys";
> -		#address-cells =3D <1>;
> -		#size-cells =3D <0>;
> -
> -		prog {
> -			label =3D "PB_PROG";
> -			gpios =3D <&pioE 27 GPIO_ACTIVE_LOW>;
> -			linux,code =3D <0x102>;
> -			wakeup-source;
> -		};
> -
> -		reset {
> -			label =3D "PB_RST";
> -			gpios =3D <&pioE 29 GPIO_ACTIVE_LOW>;
> -			linux,code =3D <0x100>;
> -			wakeup-source;
> -		};
> -
> -		user {
> -			label =3D "PB_USER";
> -			gpios =3D <&pioE 31 GPIO_ACTIVE_HIGH>;
> -			linux,code =3D <0x101>;
> -			wakeup-source;
> -		};
> -	};
> -
> -	pwm_leds {
> -		compatible =3D "pwm-leds";
> -
> -		blue {
> -			label =3D "pwm:blue:user";
> -			pwms =3D <&pwm0 2 10000000 0>;
> -			max-brightness =3D <255>;
> -			linux,default-trigger =3D "default-on";
> -		};
> -
> -		green {
> -			label =3D "pwm:green:user";
> -			pwms =3D <&pwm0 1 10000000 0>;
> -			max-brightness =3D <255>;
> -			linux,default-trigger =3D "default-on";
> -		};
> -
> -		red {
> -			label =3D "pwm:red:user";
> -			pwms =3D <&pwm0 0 10000000 0>;
> -			max-brightness =3D <255>;
> -			linux,default-trigger =3D "default-on";
> -		};
> -	};
> -};
> --
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
