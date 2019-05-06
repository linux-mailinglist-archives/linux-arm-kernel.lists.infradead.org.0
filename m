Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A522114806
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 12:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zapn1Hw4QN2TPqhTHpIfKgbbDPVsu0xL512DA9p/NHw=; b=EyFtR5/3aFHfBP
	3N2+KVgXSrXFvPTnJyJ9u6pZpahFlFXz2EKA8WqR8GjAfHIzKcDTdTTMyDD+zNCgRzgEF/JzdcRjj
	5EWm37jrL5Hi4F+JllmNFZmGm10QZ4J1Zndpx88ImK4e1SG9gzn2FpB44z/i0+zb9XJY5SuT3i/p6
	lb2ABMjMogeQIiUPBIvghKE1Bix5Crqxl4MuJcSsj7c9DsoRIYPycqkdT0b+aXsR05GB85+04sBJ1
	a1fqsacRjQGtUU7OyQZC82OYMjYVikYhx6uGTAox9uUX5odTTLx3MvPpjvVaT8/1pqC1VqWN8U9DT
	hpT3+O4z4re4Xtd5JxLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNaQg-0004vT-Nt; Mon, 06 May 2019 10:01:02 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNaQU-0004v0-PK
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 10:00:52 +0000
Received: by mail-pg1-x544.google.com with SMTP id z16so6201869pgv.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 03:00:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=hBDl7NnVQt4qmeDKNuZ2UFclnyvvaBtqOvFKPVP/fjY=;
 b=YJ9nJH6saLyMDqEiAIulG/3IBXgJ092UdbUeoaJQFuFFdkOn76AJN7PRI+eX0IpQ8i
 26wn84LyC5SDuKlrPFztni2Af3Vff9tt3u6VfEC0Kvfbh1k/cUxnsyWa7Z0Up7yBHRyt
 f2U83IgdSWcjE3mskkrSkxIPIB968EnlafTIMNPqkpUw1jqc81roPAG2FIfBHK5h8OC7
 hFVsMVW4WDSE5IvvS3PJvMTXkFVB+udYQXzdIHBDn/EVeTUzvncTqyimH9/08ye2fK9l
 w7hkkTWTUCxYf6NOGjw5CPSPaKmkKjjRHVn3U1S5Bbi1KFKfHQJMW/ZOk/mmrzH2i+C7
 7tDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=hBDl7NnVQt4qmeDKNuZ2UFclnyvvaBtqOvFKPVP/fjY=;
 b=XHsXZyJjY+krXCwDJiYhUdmAh5cimoyIAV7vFQ7fI5xkJUENgYTPklu7VIxKwSFmTN
 9BTRVRO+oBgq1xttPDCMY5U4d4X5Ksyb+hhIP5blS4xm6HKfVwbGULPyNRWcBoxhOkfn
 /B51pOH7bdmnKwIT87YvakptsGbxyFIzF13eEvSQscW6KuZcXftFssO1BkUWzv5mUvwG
 OQtYFwsIPhW0hmk6Gzu74GrFXJXsrgwXWo4hR88KRREAC6FxcUAIWqT37PNv6t+WHSt3
 MBIs9tbWkPu0ipw7ZaHx60WCBkSej+JpNFgqZoiMbR+D01Acj2PalwzPJCcveSU+Zj2l
 kCRg==
X-Gm-Message-State: APjAAAW2IY6m7aX+UgtLQ7aupaBgDbIvocxZz3T6H6nEsIeLOSEORUiT
 iuqvwwmOMyW995SJh+MQv2R+
X-Google-Smtp-Source: APXvYqzkWRVd3FAN0KUEm94DFGc456oh9LhLqJPm8/VZmPuwHXy1G1V1anSL/PBxcV5ORadwymc3Zg==
X-Received: by 2002:a62:4281:: with SMTP id h1mr31998044pfd.162.1557136849576; 
 Mon, 06 May 2019 03:00:49 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:611b:55a4:e119:3b84:2d86:5b07])
 by smtp.gmail.com with ESMTPSA id j5sm12467442pfe.15.2019.05.06.03.00.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 May 2019 03:00:48 -0700 (PDT)
Date: Mon, 6 May 2019 15:30:42 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [PATCH 3/3] ARM: dts: Add Avenger96 devicetree support based on
 STM32MP157A
Message-ID: <20190506100042.GB23734@Mani-XPS-13-9360>
References: <20190503053123.6828-1-manivannan.sadhasivam@linaro.org>
 <20190503053123.6828-4-manivannan.sadhasivam@linaro.org>
 <7e693155-d1d4-b12d-74fd-0236d9d52257@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7e693155-d1d4-b12d-74fd-0236d9d52257@st.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_030050_822156_71A1F7BE 
X-CRM114-Status: GOOD (  21.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, loic.pallardy@st.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alex,

On Fri, May 03, 2019 at 11:01:00AM +0200, Alexandre Torgue wrote:
> Hi Mani
> =

> On 5/3/19 7:31 AM, Manivannan Sadhasivam wrote:
> > Add devicetree support for Avenger96 board based on STM32MP157A MPU
> > from ST Micro. This board is one of the 96Boards Consumer Edition board
> > from Arrow Electronics and has the following features:
> > =

> > SoC: STM32MP157AAC
> > PMIC: STPMIC1A
> > RAM: 1024 Mbyte @ 533MHz
> > Storage: eMMC v4.51: 8 Gbyte
> >           microSD Socket: UHS-1 v3.01
> > Ethernet Port: 10/100/1000 Mbit/s, IEEE 802.3 Compliant
> > Wireless: WiFi 5 GHz & 2.4GHz IEEE 802.11a/b/g/n/ac
> >            Bluetooth=AEv4.2 (BR/EDR/BLE)
> > USB: 2x Type A (USB 2.0) Host and 1x Micro B (USB 2.0) OTG
> > Display: HDMI: WXGA (1366x768)@ 60 fps, HDMI 1.4
> > LED: 4x User LED, 1x WiFi LED, 1x BT LED
> > =

> > More information about this board can be found in 96Boards website:
> > https://www.96boards.org/product/avenger96/
> > =

> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >   arch/arm/boot/dts/Makefile                  |   1 +
> >   arch/arm/boot/dts/stm32mp157a-avenger96.dts | 320 ++++++++++++++++++++
> >   2 files changed, 321 insertions(+)
> >   create mode 100644 arch/arm/boot/dts/stm32mp157a-avenger96.dts
> > =

> > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > index 8a1d0b3f55dd..f1d2f0bfa7c2 100644
> > --- a/arch/arm/boot/dts/Makefile
> > +++ b/arch/arm/boot/dts/Makefile
> > @@ -965,6 +965,7 @@ dtb-$(CONFIG_ARCH_STM32) +=3D \
> >   	stm32h743i-eval.dtb \
> >   	stm32h743i-disco.dtb \
> >   	stm32mp157a-dk1.dtb \
> > +	stm32mp157a-avenger96.dtb \
> =

> follow alphabetic order please.
>

Ack

> >   	stm32mp157c-dk2.dtb \
> >   	stm32mp157c-ed1.dtb \
> >   	stm32mp157c-ev1.dtb
> > diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boo=
t/dts/stm32mp157a-avenger96.dts
> > new file mode 100644
> > index 000000000000..a3b8af82ac70
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> > @@ -0,0 +1,320 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
> > +/*
> > + * Copyright (C) Linaro Ltd 2019 - All Rights Reserved
> > + * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "stm32mp157c.dtsi"
> > +#include "stm32mp157-pinctrl.dtsi"
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/mfd/st,stpmic1.h>
> > +
> > +/ {
> > +	model =3D "Arrow Electronics STM32MP157A Avenger96 board";
> > +	compatible =3D "arrow,stm32mp157a-avenger96", "st,stm32mp157";
> > +
> > +	aliases {
> > +		ethernet0 =3D &ethernet0;
> > +		mmc0 =3D &sdmmc1;
> > +		serial0 =3D &uart4;
> > +		serial1 =3D &uart7;
> > +	};
> > +
> > +	chosen {
> > +		stdout-path =3D "serial0:115200n8";
> > +	};
> > +
> > +	memory@c0000000 {
> > +		reg =3D <0xc0000000 0x40000000>;
> =

> you could add device_type =3D "memory";
>

Ack.

Thanks,
Mani
 =

> > +	};
> > +
> > +	led {
> > +		compatible =3D "gpio-leds";
> > +		led1 {
> > +			label =3D "green:user1";
> > +			gpios =3D <&gpioz 7 GPIO_ACTIVE_HIGH>;
> > +			linux,default-trigger =3D "heartbeat";
> > +			default-state =3D "off";
> > +		};
> > +
> > +		led2 {
> > +			label =3D "green:user2";
> > +			gpios =3D <&gpiof 3 GPIO_ACTIVE_HIGH>;
> > +			linux,default-trigger =3D "mmc0";
> > +			default-state =3D "off";
> > +		};
> > +
> > +		led3 {
> > +			label =3D "green:user3";
> > +			gpios =3D <&gpiog 0 GPIO_ACTIVE_HIGH>;
> > +			linux,default-trigger =3D "mmc1";
> > +			default-state =3D "off";
> > +		};
> > +
> > +		led4 {
> > +			label =3D "green:user3";
> > +			gpios =3D <&gpiog 1 GPIO_ACTIVE_HIGH>;
> > +			linux,default-trigger =3D "none";
> > +			default-state =3D "off";
> > +			panic-indicator;
> > +		};
> > +
> > +		led5 {
> > +			label =3D "yellow:wifi";
> > +			gpios =3D <&gpioz 3 GPIO_ACTIVE_HIGH>;
> > +			linux,default-trigger =3D "phy0tx";
> > +			default-state =3D "off";
> > +		};
> > +
> > +		led6 {
> > +			label =3D "blue:bt";
> > +			gpios =3D <&gpioz 6 GPIO_ACTIVE_HIGH>;
> > +			linux,default-trigger =3D "bluetooth-power";
> > +			default-state =3D "off";
> > +		};
> > +	};
> > +};
> > +
> > +&ethernet0 {
> > +	status =3D "okay";
> > +	pinctrl-0 =3D <&ethernet0_rgmii_pins_a>;
> > +	pinctrl-1 =3D <&ethernet0_rgmii_pins_sleep_a>;
> > +	pinctrl-names =3D "default", "sleep";
> > +	phy-mode =3D "rgmii";
> > +	max-speed =3D <1000>;
> > +	phy-handle =3D <&phy0>;
> > +
> > +	mdio0 {
> > +		#address-cells =3D <1>;
> > +		#size-cells =3D <0>;
> > +		compatible =3D "snps,dwmac-mdio";
> > +		phy0: ethernet-phy@7 {
> > +			reg =3D <7>;
> > +		};
> > +	};
> > +};
> > +
> > +&i2c1 {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&i2c1_pins_b>;
> > +	i2c-scl-rising-time-ns =3D <185>;
> > +	i2c-scl-falling-time-ns =3D <20>;
> > +	status =3D "okay";
> > +	/delete-property/dmas;
> > +	/delete-property/dma-names;
> > +};
> > +
> > +&i2c2 {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&i2c2_pins_b>;
> > +	i2c-scl-rising-time-ns =3D <185>;
> > +	i2c-scl-falling-time-ns =3D <20>;
> > +	status =3D "okay";
> > +	/delete-property/dmas;
> > +	/delete-property/dma-names;
> > +};
> > +
> > +&i2c4 {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&i2c4_pins_a>;
> > +	i2c-scl-rising-time-ns =3D <185>;
> > +	i2c-scl-falling-time-ns =3D <20>;
> > +	status =3D "okay";
> > +	/delete-property/dmas;
> > +	/delete-property/dma-names;
> > +
> > +	pmic: stpmic@33 {
> > +		compatible =3D "st,stpmic1";
> > +		reg =3D <0x33>;
> > +		interrupts-extended =3D <&exti 55 IRQ_TYPE_EDGE_FALLING>;
> > +		interrupt-controller;
> > +		#interrupt-cells =3D <2>;
> > +		status =3D "okay";
> > +
> > +		st,main-control-register =3D <0x04>;
> > +		st,vin-control-register =3D <0xc0>;
> > +		st,usb-control-register =3D <0x30>;
> > +
> > +		regulators {
> > +			compatible =3D "st,stpmic1-regulators";
> > +
> > +			ldo1-supply =3D <&v3v3>;
> > +			ldo2-supply =3D <&v3v3>;
> > +			ldo3-supply =3D <&vdd_ddr>;
> > +			ldo5-supply =3D <&v3v3>;
> > +			ldo6-supply =3D <&v3v3>;
> > +			pwr_sw1-supply =3D <&bst_out>;
> > +			pwr_sw2-supply =3D <&bst_out>;
> > +
> > +			vddcore: buck1 {
> > +				regulator-name =3D "vddcore";
> > +				regulator-min-microvolt =3D <1200000>;
> > +				regulator-max-microvolt =3D <1350000>;
> > +				regulator-always-on;
> > +				regulator-initial-mode =3D <0>;
> > +				regulator-over-current-protection;
> > +			};
> > +
> > +			vdd_ddr: buck2 {
> > +				regulator-name =3D "vdd_ddr";
> > +				regulator-min-microvolt =3D <1350000>;
> > +				regulator-max-microvolt =3D <1350000>;
> > +				regulator-always-on;
> > +				regulator-initial-mode =3D <0>;
> > +				regulator-over-current-protection;
> > +			};
> > +
> > +			vdd: buck3 {
> > +				regulator-name =3D "vdd";
> > +				regulator-min-microvolt =3D <3300000>;
> > +				regulator-max-microvolt =3D <3300000>;
> > +				regulator-always-on;
> > +				st,mask_reset;
> > +				regulator-initial-mode =3D <0>;
> > +				regulator-over-current-protection;
> > +			};
> > +
> > +			v3v3: buck4 {
> > +				regulator-name =3D "v3v3";
> > +				regulator-min-microvolt =3D <3300000>;
> > +				regulator-max-microvolt =3D <3300000>;
> > +				regulator-always-on;
> > +				regulator-over-current-protection;
> > +				regulator-initial-mode =3D <0>;
> > +			};
> > +
> > +			vdda: ldo1 {
> > +				regulator-name =3D "vdda";
> > +				regulator-min-microvolt =3D <2900000>;
> > +				regulator-max-microvolt =3D <2900000>;
> > +				interrupts =3D <IT_CURLIM_LDO1 0>;
> > +				interrupt-parent =3D <&pmic>;
> > +			};
> > +
> > +			v2v8: ldo2 {
> > +				regulator-name =3D "v2v8";
> > +				regulator-min-microvolt =3D <2800000>;
> > +				regulator-max-microvolt =3D <2800000>;
> > +				interrupts =3D <IT_CURLIM_LDO2 0>;
> > +				interrupt-parent =3D <&pmic>;
> > +			};
> > +
> > +			vtt_ddr: ldo3 {
> > +				regulator-name =3D "vtt_ddr";
> > +				regulator-min-microvolt =3D <500000>;
> > +				regulator-max-microvolt =3D <750000>;
> > +				regulator-always-on;
> > +				regulator-over-current-protection;
> > +			};
> > +
> > +			vdd_usb: ldo4 {
> > +				regulator-name =3D "vdd_usb";
> > +				regulator-min-microvolt =3D <3300000>;
> > +				regulator-max-microvolt =3D <3300000>;
> > +				interrupts =3D <IT_CURLIM_LDO4 0>;
> > +				interrupt-parent =3D <&pmic>;
> > +			};
> > +
> > +			vdd_sd: ldo5 {
> > +				regulator-name =3D "vdd_sd";
> > +				regulator-min-microvolt =3D <2900000>;
> > +				regulator-max-microvolt =3D <2900000>;
> > +				interrupts =3D <IT_CURLIM_LDO5 0>;
> > +				interrupt-parent =3D <&pmic>;
> > +				regulator-boot-on;
> > +			};
> > +
> > +			v1v8: ldo6 {
> > +				regulator-name =3D "v1v8";
> > +				regulator-min-microvolt =3D <1800000>;
> > +				regulator-max-microvolt =3D <1800000>;
> > +				interrupts =3D <IT_CURLIM_LDO6 0>;
> > +				interrupt-parent =3D <&pmic>;
> > +				regulator-enable-ramp-delay =3D <300000>;
> > +			};
> > +
> > +			vref_ddr: vref_ddr {
> > +				regulator-name =3D "vref_ddr";
> > +				regulator-always-on;
> > +				regulator-over-current-protection;
> > +			};
> > +
> > +			bst_out: boost {
> > +				regulator-name =3D "bst_out";
> > +				interrupts =3D <IT_OCP_BOOST 0>;
> > +				interrupt-parent =3D <&pmic>;
> > +			};
> > +
> > +			vbus_otg: pwr_sw1 {
> > +				regulator-name =3D "vbus_otg";
> > +				interrupts =3D <IT_OCP_OTG 0>;
> > +				interrupt-parent =3D <&pmic>;
> > +				regulator-active-discharge;
> > +			};
> > +
> > +			vbus_sw: pwr_sw2 {
> > +				regulator-name =3D "vbus_sw";
> > +				interrupts =3D <IT_OCP_SWOUT 0>;
> > +				interrupt-parent =3D <&pmic>;
> > +				regulator-active-discharge;
> > +			};
> > +		};
> > +
> > +		onkey {
> > +			compatible =3D "st,stpmic1-onkey";
> > +			interrupts =3D <IT_PONKEY_F 0>, <IT_PONKEY_R 1>;
> > +			interrupt-names =3D "onkey-falling", "onkey-rising";
> > +			status =3D "okay";
> > +		};
> > +
> > +		watchdog {
> > +			compatible =3D "st,stpmic1-wdt";
> > +			status =3D "disabled";
> > +		};
> > +	};
> > +};
> > +
> > +&iwdg2 {
> > +	timeout-sec =3D <32>;
> > +	status =3D "okay";
> > +};
> > +
> > +&rng1 {
> > +	status =3D "okay";
> > +};
> > +
> > +&rtc {
> > +	status =3D "okay";
> > +};
> > +
> > +&sdmmc1 {
> > +	pinctrl-names =3D "default", "opendrain", "sleep";
> > +	pinctrl-0 =3D <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_a>;
> > +	pinctrl-1 =3D <&sdmmc1_b4_od_pins_a>;
> > +	pinctrl-2 =3D <&sdmmc1_b4_sleep_pins_a>;
> > +	broken-cd;
> > +	st,sig-dir;
> > +	st,neg-edge;
> > +	st,use-ckin;
> > +	bus-width =3D <4>;
> > +	vmmc-supply =3D <&vdd_sd>;
> > +	status =3D "okay";
> > +};
> > +
> > +&uart4 {
> > +	/* On Low speed expansion header */
> > +	label =3D "LS-UART1";
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&uart4_pins_b>;
> > +	status =3D "okay";
> > +};
> > +
> > +&uart7 {
> > +	/* On Low speed expansion header */
> > +	label =3D "LS-UART0";
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&uart7_pins_a>;
> > +	status =3D "okay";
> > +};
> > =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
