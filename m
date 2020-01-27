Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC6D14A051
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 09:58:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QXqMN1ijYAZsvksvRW24Vq/0TzQzrTUDgqyLqUpHbNs=; b=DfSCV2sb1/NxCY
	Eq3xD1seBm/1uuLgjKKba7oL1VaHboORz4q1fwR0rL7IHCoRzhF4WuwknZh5ysBxg2Yq1snSpU2D9
	1/GwwNEP1EyWTfAIm8p8KAtYfDl7nzITCJ/UjeUsBD+Ilo6n2H96glMaqdlfYNlzztz93pq5GUqps
	aws/N6NMoRNOCX6ziBwKsxzY/A9TnnzOfYMz2THDLxE7IHWdK17DLZeq8RoFTcaaWWSAHYSziNmlC
	tKGeXxWVw+VXgMF3RFaOk8J4g2dCttv1YuxetMvXr7TwvqEwnWukSIw4wSxLnnM/IAHfYXaQ0oRoc
	ndpG/CeV5zyUHFF+XzbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw0DS-0007GQ-Vz; Mon, 27 Jan 2020 08:57:55 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw0DD-0007DR-71
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 08:57:42 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: K2HpuAX1lJwLcZZ1nQENPHKYQRDC8e57kLJv7crngMecfqh0ely0hk5xhGRw4S6/CoSL/M11Ks
 Av/AC9Eh3CkCMowfPYqF6S2bWa7tLzQE75xLxM9dESFLZsC8AZtyPwmX1A6izU9I/H7pJNXxyc
 imLCVIgSuWX1D9Otfx+bYrNTUOG9/I6vBHq313ZY0I0RRTOjShZIRsiJlhVO6k05c/IfSzsZKK
 Qc0mvmMCb0ABPmGa0ez9vU5981tM9knbAJJDPzG1qibH9WNApyZYcBvc6bO7A3lk/f5Q7+iGSX
 nBs=
X-IronPort-AV: E=Sophos;i="5.70,369,1574146800"; d="scan'208";a="64593857"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Jan 2020 01:57:38 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 27 Jan 2020 01:57:38 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 27 Jan 2020 01:57:39 -0700
Date: Mon, 27 Jan 2020 09:57:13 +0100
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH v3 6/6] ARM: at91/dt: sama5d2: add i2c gpio pinctrl
Message-ID: <20200127085713.ykinu5owrxaoly3y@M43218.corp.atmel.com>
Mail-Followup-To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kamel.bouhara@bootlin.com, wsa@the-dreams.de,
 Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
 robh@kernel.org, peda@axentia.se, linux@armlinux.org.uk
References: <20200115115422.17097-1-codrin.ciubotariu@microchip.com>
 <20200115115422.17097-7-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115115422.17097-7-codrin.ciubotariu@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_005739_303991_7ECF3932 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 kamel.bouhara@bootlin.com, wsa@the-dreams.de, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, peda@axentia.se, linux@armlinux.org.uk,
 robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 01:54:22PM +0200, Codrin Ciubotariu wrote:
> From: Kamel Bouhara <kamel.bouhara@bootlin.com>
> 
> Add the i2c gpio pinctrls to support the i2c bus recovery
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> [codrin.ciubotariu@microchip.com: removed gpio pull-ups]
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

> ---
> 
> Changes in v3:
>  - removed gpio pull-ups;
> 
> Changes in v2:
>  - new patch;
> 
>  arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts   | 33 +++++++++++++++++++--
>  arch/arm/boot/dts/at91-sama5d2_xplained.dts | 33 +++++++++++++++++++--
>  2 files changed, 60 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
> index ba7f3e646c26..1c24ac8019ba 100644
> --- a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
> +++ b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
> @@ -180,8 +180,11 @@
>  
>  			i2c0: i2c@f8028000 {
>  				dmas = <0>, <0>;
> -				pinctrl-names = "default";
> +				pinctrl-names = "default", "gpio";
>  				pinctrl-0 = <&pinctrl_i2c0_default>;
> +				pinctrl-1 = <&pinctrl_i2c0_gpio>;
> +				sda-gpios = <&pioA PIN_PD21 GPIO_ACTIVE_HIGH>;
> +				scl-gpios = <&pioA PIN_PD22 GPIO_ACTIVE_HIGH>;
>  				status = "okay";
>  			};
>  
> @@ -198,8 +201,11 @@
>  					#address-cells = <1>;
>  					#size-cells = <0>;
>  					clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
> -					pinctrl-names = "default";
> +					pinctrl-names = "default", "gpio";
>  					pinctrl-0 = <&pinctrl_flx0_default>;
> +					pinctrl-1 = <&pinctrl_flx0_gpio>;
> +					sda-gpios = <&pioA PIN_PB28 GPIO_ACTIVE_HIGH>;
> +					scl-gpios = <&pioA PIN_PB29 GPIO_ACTIVE_HIGH>;
>  					atmel,fifo-size = <16>;
>  					status = "okay";
>  				};
> @@ -226,8 +232,11 @@
>  
>  			i2c1: i2c@fc028000 {
>  				dmas = <0>, <0>;
> -				pinctrl-names = "default";
> +				pinctrl-names = "default", "gpio";
>  				pinctrl-0 = <&pinctrl_i2c1_default>;
> +				pinctrl-1 = <&pinctrl_i2c1_gpio>;
> +				sda-gpios = <&pioA PIN_PC6 GPIO_ACTIVE_HIGH>;
> +				scl-gpios = <&pioA PIN_PC7 GPIO_ACTIVE_HIGH>;
>  				status = "okay";
>  
>  				at24@50 {
> @@ -244,18 +253,36 @@
>  					bias-disable;
>  				};
>  
> +				pinctrl_flx0_gpio: flx0_gpio {
> +					pinmux = <PIN_PB28__GPIO>,
> +						 <PIN_PB29__GPIO>;
> +					bias-disable;
> +				};
> +
>  				pinctrl_i2c0_default: i2c0_default {
>  					pinmux = <PIN_PD21__TWD0>,
>  						 <PIN_PD22__TWCK0>;
>  					bias-disable;
>  				};
>  
> +				pinctrl_i2c0_gpio: i2c0_gpio {
> +					pinmux = <PIN_PD21__GPIO>,
> +						 <PIN_PD22__GPIO>;
> +					bias-disable;
> +				};
> +
>  				pinctrl_i2c1_default: i2c1_default {
>  					pinmux = <PIN_PC6__TWD1>,
>  						 <PIN_PC7__TWCK1>;
>  					bias-disable;
>  				};
>  
> +				pinctrl_i2c1_gpio: i2c1_gpio {
> +					pinmux = <PIN_PC6__GPIO>,
> +						 <PIN_PC7__GPIO>;
> +					bias-disable;
> +				};
> +
>  				pinctrl_key_gpio_default: key_gpio_default {
>  					pinmux = <PIN_PA10__GPIO>;
>  					bias-pull-up;
> diff --git a/arch/arm/boot/dts/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
> index 9d0a7fbea725..055ee53e4773 100644
> --- a/arch/arm/boot/dts/at91-sama5d2_xplained.dts
> +++ b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
> @@ -129,8 +129,11 @@
>  
>  			i2c0: i2c@f8028000 {
>  				dmas = <0>, <0>;
> -				pinctrl-names = "default";
> +				pinctrl-names = "default", "gpio";
>  				pinctrl-0 = <&pinctrl_i2c0_default>;
> +				pinctrl-1 = <&pinctrl_i2c0_gpio>;
> +				sda-gpios = <&pioA PIN_PD21 GPIO_ACTIVE_HIGH>;
> +				scl-gpios = <&pioA PIN_PD22 GPIO_ACTIVE_HIGH>;
>  				i2c-sda-hold-time-ns = <350>;
>  				status = "okay";
>  
> @@ -331,8 +334,11 @@
>  					#address-cells = <1>;
>  					#size-cells = <0>;
>  					clocks = <&pmc PMC_TYPE_PERIPHERAL 23>;
> -					pinctrl-names = "default";
> +					pinctrl-names = "default", "gpio";
>  					pinctrl-0 = <&pinctrl_flx4_default>;
> +					pinctrl-1 = <&pinctrl_flx4_gpio>;
> +					sda-gpios = <&pioA PIN_PD12 GPIO_ACTIVE_HIGH>;
> +					scl-gpios = <&pioA PIN_PD13 GPIO_ACTIVE_HIGH>;
>  					atmel,fifo-size = <16>;
>  					i2c-analog-filter;
>  					i2c-digital-filter;
> @@ -343,11 +349,14 @@
>  
>  			i2c1: i2c@fc028000 {
>  				dmas = <0>, <0>;
> -				pinctrl-names = "default";
> +				pinctrl-names = "default", "gpio";
>  				pinctrl-0 = <&pinctrl_i2c1_default>;
>  				i2c-analog-filter;
>  				i2c-digital-filter;
>  				i2c-digital-filter-width-ns = <35>;
> +				pinctrl-1 = <&pinctrl_i2c1_gpio>;
> +				sda-gpios = <&pioA PIN_PD4 GPIO_ACTIVE_HIGH>;
> +				scl-gpios = <&pioA PIN_PD5 GPIO_ACTIVE_HIGH>;
>  				status = "okay";
>  
>  				at24@54 {
> @@ -441,18 +450,36 @@
>  					bias-disable;
>  				};
>  
> +				pinctrl_flx4_gpio: flx4_gpio {
> +					pinmux = <PIN_PD12__GPIO>,
> +						 <PIN_PD13__GPIO>;
> +					bias-disable;
> +				};
> +
>  				pinctrl_i2c0_default: i2c0_default {
>  					pinmux = <PIN_PD21__TWD0>,
>  						 <PIN_PD22__TWCK0>;
>  					bias-disable;
>  				};
>  
> +				pinctrl_i2c0_gpio: i2c0_gpio {
> +					pinmux = <PIN_PD21__GPIO>,
> +						 <PIN_PD22__GPIO>;
> +					bias-disable;
> +				};
> +
>  				pinctrl_i2c1_default: i2c1_default {
>  					pinmux = <PIN_PD4__TWD1>,
>  						 <PIN_PD5__TWCK1>;
>  					bias-disable;
>  				};
>  
> +				pinctrl_i2c1_gpio: i2c1_gpio {
> +					pinmux = <PIN_PD4__GPIO>,
> +						 <PIN_PD5__GPIO>;
> +					bias-disable;
> +				};
> +
>  				pinctrl_i2s0_default: i2s0_default {
>  					pinmux = <PIN_PC1__I2SC0_CK>,
>  						 <PIN_PC2__I2SC0_MCK>,
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
