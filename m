Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 059CA1FEC27
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 09:17:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOXwQBdBUJ3KSxOyi68wmKeuTB8lpPodSzYoIvosNH0=; b=kqM/zVT3wCd45v
	5oEdjEwW3UhaDPFfZV9WkXeq/YFk0+qlIgedV6K3AEUjHs+CjJ7/LBe6npauB/tkCNZhkbnMvBoRF
	Gcwcu6TB2Z/wOFwZAL9CDElJSm9l8kvRN4LvykOm28y2IADgiL54gclYqRM+C07vkxOcgTBlB0hsK
	odIXtU+0qqA8aWqjklC/G0Nh2+mvGz/JVKziPRhWqrXwgPdvFJgUiD1Ixhc3cmiv/Ch5SGUbFW1rF
	TwIq3OV5A7i+bK8pRyKxevcdJNAEVlX1zcs4NqUUcSXuDeLy8/4sUv4SEJOQcW0KCRoWj31Iz1Mep
	HKxz4gruG3JEj+SbYPGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlony-00064W-4f; Thu, 18 Jun 2020 07:17:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlonj-00061j-GK
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 07:17:35 +0000
Received: from dragon (unknown [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 80F8C21532;
 Thu, 18 Jun 2020 07:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592464651;
 bh=dbIbfdfRndJlV5rB6rXL0VfetlFKbwpHCRmt2dwbwKA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LsfmyOQ/+QouJUBGt+MREynQTbzThJ/AlRC/iAUK2ZmQrtpOVtiBvWHGuBj2iL5sW
 JU5qaq8x2AtGairknz/3TBSVBBA45T4/9StUhrrLNPNA7mSVIk79RmVYDvkjECc/eL
 +4WCE2Xzg1FCqe5eE2hpnbH4oOX/5snJxvNc4h1g=
Date: Thu, 18 Jun 2020 15:17:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Tim Harvey <tharvey@gateworks.com>
Subject: Re: [PATCH] ARM: dts: imx: imx6qdl-gw: add Gateworks System Controller
Message-ID: <20200618071715.GD30139@dragon>
References: <1589985459-4874-1-git-send-email-tharvey@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589985459-4874-1-git-send-email-tharvey@gateworks.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_001731_621572_4BE53D32 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 07:37:39AM -0700, Tim Harvey wrote:
> Add Gateworks System Controller support to Gateworks Ventana boards:
> - add dt bindings for GSC mfd driver and hwmon driver for ADC's and
>   fan controllers.
> - add dt bindings for gpio-keys driver for push-button and interrupt events
>   from the GSC.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  arch/arm/boot/dts/imx6qdl-gw51xx.dtsi | 152 +++++++++++++++++++++++++++++--
>  arch/arm/boot/dts/imx6qdl-gw52xx.dtsi | 158 ++++++++++++++++++++++++++++++--
>  arch/arm/boot/dts/imx6qdl-gw53xx.dtsi | 164 +++++++++++++++++++++++++++++++--
>  arch/arm/boot/dts/imx6qdl-gw54xx.dtsi | 166 ++++++++++++++++++++++++++++++++--
>  arch/arm/boot/dts/imx6qdl-gw551x.dtsi | 146 ++++++++++++++++++++++++++++--
>  arch/arm/boot/dts/imx6qdl-gw552x.dtsi | 152 +++++++++++++++++++++++++++++--
>  arch/arm/boot/dts/imx6qdl-gw553x.dtsi | 140 +++++++++++++++++++++++++++-
>  arch/arm/boot/dts/imx6qdl-gw560x.dtsi | 164 +++++++++++++++++++++++++++++++--
>  arch/arm/boot/dts/imx6qdl-gw5903.dtsi | 139 +++++++++++++++++++++++++++-
>  arch/arm/boot/dts/imx6qdl-gw5904.dtsi | 140 +++++++++++++++++++++++++++-
>  arch/arm/boot/dts/imx6qdl-gw5907.dtsi | 141 ++++++++++++++++++++++++++++-
>  arch/arm/boot/dts/imx6qdl-gw5910.dtsi | 159 +++++++++++++++++++++++++++++++-
>  arch/arm/boot/dts/imx6qdl-gw5912.dtsi | 146 +++++++++++++++++++++++++++++-
>  arch/arm/boot/dts/imx6qdl-gw5913.dtsi | 152 ++++++++++++++++++++++++++++++-
>  14 files changed, 2062 insertions(+), 57 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-gw51xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw51xx.dtsi
> index 419a7cd..5fbf7d1 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw51xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw51xx.dtsi
> @@ -19,6 +19,53 @@
>  		bootargs = "console=ttymxc1,115200";
>  	};
>  
> +	gpio_keys {
> +		compatible = "gpio-keys";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		user_pb {

We recommend to use hyphen than underscore in name name.

> +			label = "user_pb";
> +			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
> +			linux,code = <256>; /* BTN_0 */

Use defines from include/dt-bindings/input/linux-event-codes.h, you can
drop the comments then.

Shawn

> +		};
> +
> +		user_pb1x {
> +			label = "user_pb1x";
> +			linux,code = <257>; /* BTN_1 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <0>;
> +		};
> +
> +		key_erased {
> +			label = "key-erased";
> +			linux,code = <258>; /* BTN_2 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <1>;
> +		};
> +
> +		eeprom_wp {
> +			label = "eeprom_wp";
> +			linux,code = <259>; /* BTN_3 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <2>;
> +		};
> +
> +		tamper {
> +			label = "tamper";
> +			linux,code = <260>; /* BTN_4 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <5>;
> +		};
> +
> +		switch_hold {
> +			label = "switch_hold";
> +			linux,code = <261>; /* BTN_5 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <7>;
> +		};
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  		pinctrl-names = "default";
> @@ -102,6 +149,103 @@
>  	pinctrl-0 = <&pinctrl_i2c1>;
>  	status = "okay";
>  
> +	gsc: gsc@20 {
> +		compatible = "gw,gsc";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +		#size-cells = <0>;
> +
> +		adc {
> +			compatible = "gw,gsc-adc";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			channel@0 {
> +				gw,mode = <0>;
> +				reg = <0x00>;
> +				label = "temp";
> +			};
> +
> +			channel@2 {
> +				gw,mode = <1>;
> +				reg = <0x02>;
> +				label = "vdd_vin";
> +			};
> +
> +			channel@5 {
> +				gw,mode = <1>;
> +				reg = <0x05>;
> +				label = "vdd_3p3";
> +			};
> +
> +			channel@8 {
> +				gw,mode = <1>;
> +				reg = <0x08>;
> +				label = "vdd_bat";
> +			};
> +
> +			channel@b {
> +				gw,mode = <1>;
> +				reg = <0x0b>;
> +				label = "vdd_5p0";
> +			};
> +
> +			channel@e {
> +				gw,mode = <1>;
> +				reg = <0xe>;
> +				label = "vdd_arm";
> +			};
> +
> +			channel@11 {
> +				gw,mode = <1>;
> +				reg = <0x11>;
> +				label = "vdd_soc";
> +			};
> +
> +			channel@14 {
> +				gw,mode = <1>;
> +				reg = <0x14>;
> +				label = "vdd_3p0";
> +			};
> +
> +			channel@17 {
> +				gw,mode = <1>;
> +				reg = <0x17>;
> +				label = "vdd_1p5";
> +			};
> +
> +			channel@1d {
> +				gw,mode = <1>;
> +				reg = <0x1d>;
> +				label = "vdd_1p8";
> +			};
> +
> +			channel@20 {
> +				gw,mode = <1>;
> +				reg = <0x20>;
> +				label = "vdd_an1";
> +			};
> +
> +			channel@23 {
> +				gw,mode = <1>;
> +				reg = <0x23>;
> +				label = "vdd_2p5";
> +			};
> +		};
> +	};
> +
> +	gsc_gpio: pca9555@23 {
> +		compatible = "nxp,pca9555";
> +		reg = <0x23>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-parent = <&gsc>;
> +		interrupts = <4>;
> +	};
> +
>  	eeprom1: eeprom@50 {
>  		compatible = "atmel,24c02";
>  		reg = <0x50>;
> @@ -126,13 +270,6 @@
>  		pagesize = <16>;
>  	};
>  
> -	gpio: pca9555@23 {
> -		compatible = "nxp,pca9555";
> -		reg = <0x23>;
> -		gpio-controller;
> -		#gpio-cells = <2>;
> -	};
> -
>  	rtc: ds1672@68 {
>  		compatible = "dallas,ds1672";
>  		reg = <0x68>;
> @@ -387,6 +524,7 @@
>  		fsl,pins = <
>  			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
>  			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
> +			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x0001b0b0 /* GSC_IRQ# */
>  		>;
>  	};
>  
> diff --git a/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
> index 60563ff..9f7436d 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
> @@ -28,6 +28,53 @@
>  		default-brightness-level = <7>;
>  	};
>  
> +	gpio_keys {
> +		compatible = "gpio-keys";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		user_pb {
> +			label = "user_pb";
> +			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
> +			linux,code = <256>; /* BTN_0 */
> +		};
> +
> +		user_pb1x {
> +			label = "user_pb1x";
> +			linux,code = <257>; /* BTN_1 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <0>;
> +		};
> +
> +		key_erased {
> +			label = "key-erased";
> +			linux,code = <258>; /* BTN_2 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <1>;
> +		};
> +
> +		eeprom_wp {
> +			label = "eeprom_wp";
> +			linux,code = <259>; /* BTN_3 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <2>;
> +		};
> +
> +		tamper {
> +			label = "tamper";
> +			linux,code = <260>; /* BTN_4 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <5>;
> +		};
> +
> +		switch_hold {
> +			label = "switch_hold";
> +			linux,code = <261>; /* BTN_5 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <7>;
> +		};
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  		pinctrl-names = "default";
> @@ -165,6 +212,109 @@
>  	pinctrl-0 = <&pinctrl_i2c1>;
>  	status = "okay";
>  
> +	gsc: gsc@20 {
> +		compatible = "gw,gsc";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +		#size-cells = <0>;
> +
> +		adc {
> +			compatible = "gw,gsc-adc";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			channel@0 {
> +				gw,mode = <0>;
> +				reg = <0x00>;
> +				label = "temp";
> +			};
> +
> +			channel@2 {
> +				gw,mode = <1>;
> +				reg = <0x02>;
> +				label = "vdd_vin";
> +			};
> +
> +			channel@5 {
> +				gw,mode = <1>;
> +				reg = <0x05>;
> +				label = "vdd_3p3";
> +			};
> +
> +			channel@8 {
> +				gw,mode = <1>;
> +				reg = <0x08>;
> +				label = "vdd_bat";
> +			};
> +
> +			channel@b {
> +				gw,mode = <1>;
> +				reg = <0x0b>;
> +				label = "vdd_5p0";
> +			};
> +
> +			channel@e {
> +				gw,mode = <1>;
> +				reg = <0xe>;
> +				label = "vdd_arm";
> +			};
> +
> +			channel@11 {
> +				gw,mode = <1>;
> +				reg = <0x11>;
> +				label = "vdd_soc";
> +			};
> +
> +			channel@14 {
> +				gw,mode = <1>;
> +				reg = <0x14>;
> +				label = "vdd_3p0";
> +			};
> +
> +			channel@17 {
> +				gw,mode = <1>;
> +				reg = <0x17>;
> +				label = "vdd_1p5";
> +			};
> +
> +			channel@1d {
> +				gw,mode = <1>;
> +				reg = <0x1d>;
> +				label = "vdd_1p8";
> +			};
> +
> +			channel@20 {
> +				gw,mode = <1>;
> +				reg = <0x20>;
> +				label = "vdd_1p0";
> +			};
> +
> +			channel@23 {
> +				gw,mode = <1>;
> +				reg = <0x23>;
> +				label = "vdd_2p5";
> +			};
> +
> +			channel@29 {
> +				gw,mode = <1>;
> +				reg = <0x29>;
> +				label = "vdd_an1";
> +			};
> +		};
> +	};
> +
> +	gsc_gpio: pca9555@23 {
> +		compatible = "nxp,pca9555";
> +		reg = <0x23>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-parent = <&gsc>;
> +		interrupts = <4>;
> +	};
> +
>  	eeprom1: eeprom@50 {
>  		compatible = "atmel,24c02";
>  		reg = <0x50>;
> @@ -189,13 +339,6 @@
>  		pagesize = <16>;
>  	};
>  
> -	gpio: pca9555@23 {
> -		compatible = "nxp,pca9555";
> -		reg = <0x23>;
> -		gpio-controller;
> -		#gpio-cells = <2>;
> -	};
> -
>  	rtc: ds1672@68 {
>  		compatible = "dallas,ds1672";
>  		reg = <0x68>;
> @@ -504,6 +647,7 @@
>  		fsl,pins = <
>  			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
>  			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
> +			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0xb0b1
>  		>;
>  	};
>  
> diff --git a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
> index 8942bec..2a5f484 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
> @@ -28,6 +28,53 @@
>  		default-brightness-level = <7>;
>  	};
>  
> +	gpio_keys {
> +		compatible = "gpio-keys";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		user_pb {
> +			label = "user_pb";
> +			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
> +			linux,code = <256>; /* BTN_0 */
> +		};
> +
> +		user_pb1x {
> +			label = "user_pb1x";
> +			linux,code = <257>; /* BTN_1 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <0>;
> +		};
> +
> +		key_erased {
> +			label = "key-erased";
> +			linux,code = <258>; /* BTN_2 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <1>;
> +		};
> +
> +		eeprom_wp {
> +			label = "eeprom_wp";
> +			linux,code = <259>; /* BTN_3 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <2>;
> +		};
> +
> +		tamper {
> +			label = "tamper";
> +			linux,code = <260>; /* BTN_4 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <5>;
> +		};
> +
> +		switch_hold {
> +			label = "switch_hold";
> +			linux,code = <261>; /* BTN_5 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <7>;
> +		};
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  		pinctrl-names = "default";
> @@ -158,6 +205,115 @@
>  	pinctrl-0 = <&pinctrl_i2c1>;
>  	status = "okay";
>  
> +	gsc: gsc@20 {
> +		compatible = "gw,gsc";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +		#size-cells = <0>;
> +
> +		adc {
> +			compatible = "gw,gsc-adc";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			channel@0 {
> +				gw,mode = <0>;
> +				reg = <0x00>;
> +				label = "temp";
> +			};
> +
> +			channel@2 {
> +				gw,mode = <1>;
> +				reg = <0x02>;
> +				label = "vdd_vin";
> +			};
> +
> +			channel@5 {
> +				gw,mode = <1>;
> +				reg = <0x05>;
> +				label = "vdd_3p3";
> +			};
> +
> +			channel@8 {
> +				gw,mode = <1>;
> +				reg = <0x08>;
> +				label = "vdd_bat";
> +			};
> +
> +			channel@b {
> +				gw,mode = <1>;
> +				reg = <0x0b>;
> +				label = "vdd_5p0";
> +			};
> +
> +			channel@e {
> +				gw,mode = <1>;
> +				reg = <0xe>;
> +				label = "vdd_arm";
> +			};
> +
> +			channel@11 {
> +				gw,mode = <1>;
> +				reg = <0x11>;
> +				label = "vdd_soc";
> +			};
> +
> +			channel@14 {
> +				gw,mode = <1>;
> +				reg = <0x14>;
> +				label = "vdd_3p0";
> +			};
> +
> +			channel@17 {
> +				gw,mode = <1>;
> +				reg = <0x17>;
> +				label = "vdd_1p5";
> +			};
> +
> +			channel@1d {
> +				gw,mode = <1>;
> +				reg = <0x1d>;
> +				label = "vdd_1p8";
> +			};
> +
> +			channel@20 {
> +				gw,mode = <1>;
> +				reg = <0x20>;
> +				label = "vdd_1p0";
> +			};
> +
> +			channel@23 {
> +				gw,mode = <1>;
> +				reg = <0x23>;
> +				label = "vdd_2p5";
> +			};
> +
> +			channel@26 {
> +				gw,mode = <1>;
> +				reg = <0x26>;
> +				label = "vdd_gps";
> +			};
> +
> +			channel@29 {
> +				gw,mode = <1>;
> +				reg = <0x29>;
> +				label = "vdd_an1";
> +			};
> +		};
> +	};
> +
> +	gsc_gpio: pca9555@23 {
> +		compatible = "nxp,pca9555";
> +		reg = <0x23>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-parent = <&gsc>;
> +		interrupts = <4>;
> +	};
> +
>  	eeprom1: eeprom@50 {
>  		compatible = "atmel,24c02";
>  		reg = <0x50>;
> @@ -182,13 +338,6 @@
>  		pagesize = <16>;
>  	};
>  
> -	gpio: pca9555@23 {
> -		compatible = "nxp,pca9555";
> -		reg = <0x23>;
> -		gpio-controller;
> -		#gpio-cells = <2>;
> -	};
> -
>  	rtc: ds1672@68 {
>  		compatible = "dallas,ds1672";
>  		reg = <0x68>;
> @@ -486,6 +635,7 @@
>  		fsl,pins = <
>  			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
>  			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
> +			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0xb0b1
>  		>;
>  	};
>  
> diff --git a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
> index c40583d..d25d73d 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
> @@ -29,6 +29,53 @@
>  		default-brightness-level = <7>;
>  	};
>  
> +	gpio_keys {
> +		compatible = "gpio-keys";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		user_pb {
> +			label = "user_pb";
> +			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
> +			linux,code = <256>; /* BTN_0 */
> +		};
> +
> +		user_pb1x {
> +			label = "user_pb1x";
> +			linux,code = <257>; /* BTN_1 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <0>;
> +		};
> +
> +		key_erased {
> +			label = "key-erased";
> +			linux,code = <258>; /* BTN_2 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <1>;
> +		};
> +
> +		eeprom_wp {
> +			label = "eeprom_wp";
> +			linux,code = <259>; /* BTN_3 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <2>;
> +		};
> +
> +		tamper {
> +			label = "tamper";
> +			linux,code = <260>; /* BTN_4 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <5>;
> +		};
> +
> +		switch_hold {
> +			label = "switch_hold";
> +			linux,code = <261>; /* BTN_5 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <7>;
> +		};
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  		pinctrl-names = "default";
> @@ -195,6 +242,117 @@
>  	pinctrl-0 = <&pinctrl_i2c1>;
>  	status = "okay";
>  
> +	gsc: gsc@20 {
> +		compatible = "gw,gsc";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		adc {
> +			compatible = "gw,gsc-adc";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			channel@0 {
> +				gw,mode = <0>;
> +				reg = <0x00>;
> +				label = "temp";
> +			};
> +
> +			channel@2 {
> +				gw,mode = <1>;
> +				reg = <0x02>;
> +				label = "vdd_vin";
> +			};
> +
> +			channel@5 {
> +				gw,mode = <1>;
> +				reg = <0x05>;
> +				label = "vdd_3p3";
> +			};
> +
> +			channel@8 {
> +				gw,mode = <1>;
> +				reg = <0x08>;
> +				label = "vdd_bat";
> +			};
> +
> +			channel@b {
> +				gw,mode = <1>;
> +				reg = <0x0b>;
> +				label = "vdd_5p0";
> +			};
> +
> +			channel@e {
> +				gw,mode = <1>;
> +				reg = <0xe>;
> +				label = "vdd_arm";
> +			};
> +
> +			channel@11 {
> +				gw,mode = <1>;
> +				reg = <0x11>;
> +				label = "vdd_soc";
> +			};
> +
> +			channel@14 {
> +				gw,mode = <1>;
> +				reg = <0x14>;
> +				label = "vdd_3p0";
> +			};
> +
> +			channel@17 {
> +				gw,mode = <1>;
> +				reg = <0x17>;
> +				label = "vdd_1p5";
> +			};
> +
> +			channel@1d {
> +				gw,mode = <1>;
> +				reg = <0x1d>;
> +				label = "vdd_1p8";
> +			};
> +
> +			channel@20 {
> +				gw,mode = <1>;
> +				reg = <0x20>;
> +				label = "vdd_1p0";
> +			};
> +
> +			channel@23 {
> +				gw,mode = <1>;
> +				reg = <0x23>;
> +				label = "vdd_2p5";
> +			};
> +
> +			channel@26 {
> +				gw,mode = <1>;
> +				reg = <0x26>;
> +				label = "vdd_gps";
> +			};
> +		};
> +
> +		fan-controller@2c {
> +			compatible = "gw,gsc-fan";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x2c>;
> +		};
> +	};
> +
> +	gsc_gpio: pca9555@23 {
> +		compatible = "nxp,pca9555";
> +		reg = <0x23>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-parent = <&gsc>;
> +		interrupts = <4>;
> +	};
> +
>  	eeprom1: eeprom@50 {
>  		compatible = "atmel,24c02";
>  		reg = <0x50>;
> @@ -219,13 +377,6 @@
>  		pagesize = <16>;
>  	};
>  
> -	gpio: pca9555@23 {
> -		compatible = "nxp,pca9555";
> -		reg = <0x23>;
> -		gpio-controller;
> -		#gpio-cells = <2>;
> -	};
> -
>  	rtc: ds1672@68 {
>  		compatible = "dallas,ds1672";
>  		reg = <0x68>;
> @@ -571,6 +722,7 @@
>  		fsl,pins = <
>  			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
>  			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
> +			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0xb0b1
>  		>;
>  	};
>  
> diff --git a/arch/arm/boot/dts/imx6qdl-gw551x.dtsi b/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
> index c38e86e..90c6d0d 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
> @@ -63,6 +63,53 @@
>  		bootargs = "console=ttymxc1,115200";
>  	};
>  
> +	gpio_keys {
> +		compatible = "gpio-keys";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		user_pb {
> +			label = "user_pb";
> +			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
> +			linux,code = <256>; /* BTN_0 */
> +		};
> +
> +		user_pb1x {
> +			label = "user_pb1x";
> +			linux,code = <257>; /* BTN_1 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <0>;
> +		};
> +
> +		key_erased {
> +			label = "key-erased";
> +			linux,code = <258>; /* BTN_2 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <1>;
> +		};
> +
> +		eeprom_wp {
> +			label = "eeprom_wp";
> +			linux,code = <259>; /* BTN_3 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <2>;
> +		};
> +
> +		tamper {
> +			label = "tamper";
> +			linux,code = <260>; /* BTN_4 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <5>;
> +		};
> +
> +		switch_hold {
> +			label = "switch_hold";
> +			linux,code = <261>; /* BTN_5 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <7>;
> +		};
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  		pinctrl-names = "default";
> @@ -167,6 +214,97 @@
>  	pinctrl-0 = <&pinctrl_i2c1>;
>  	status = "okay";
>  
> +	gsc: gsc@20 {
> +		compatible = "gw,gsc";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +		#size-cells = <0>;
> +
> +		adc {
> +			compatible = "gw,gsc-adc";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			channel@0 {
> +				gw,mode = <0>;
> +				reg = <0x00>;
> +				label = "temp";
> +			};
> +
> +			channel@2 {
> +				gw,mode = <1>;
> +				reg = <0x02>;
> +				label = "vdd_vin";
> +			};
> +
> +			channel@5 {
> +				gw,mode = <1>;
> +				reg = <0x05>;
> +				label = "vdd_3p3";
> +			};
> +
> +			channel@8 {
> +				gw,mode = <1>;
> +				reg = <0x08>;
> +				label = "vdd_bat";
> +			};
> +
> +			channel@b {
> +				gw,mode = <1>;
> +				reg = <0x0b>;
> +				label = "vdd_5p0";
> +			};
> +
> +			channel@e {
> +				gw,mode = <1>;
> +				reg = <0xe>;
> +				label = "vdd_arm";
> +			};
> +
> +			channel@11 {
> +				gw,mode = <1>;
> +				reg = <0x11>;
> +				label = "vdd_soc";
> +			};
> +
> +			channel@14 {
> +				gw,mode = <1>;
> +				reg = <0x14>;
> +				label = "vdd_3p0";
> +			};
> +
> +			channel@17 {
> +				gw,mode = <1>;
> +				reg = <0x17>;
> +				label = "vdd_1p5";
> +			};
> +
> +			channel@1d {
> +				gw,mode = <1>;
> +				reg = <0x1d>;
> +				label = "vdd_1p8a";
> +			};
> +
> +			channel@20 {
> +				gw,mode = <1>;
> +				reg = <0x20>;
> +				label = "vdd_1p0b";
> +			};
> +		};
> +	};
> +
> +	gsc_gpio: pca9555@23 {
> +		compatible = "nxp,pca9555";
> +		reg = <0x23>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-parent = <&gsc>;
> +		interrupts = <4>;
> +	};
> +
>  	eeprom1: eeprom@50 {
>  		compatible = "atmel,24c02";
>  		reg = <0x50>;
> @@ -191,13 +329,6 @@
>  		pagesize = <16>;
>  	};
>  
> -	gpio: pca9555@23 {
> -		compatible = "nxp,pca9555";
> -		reg = <0x23>;
> -		gpio-controller;
> -		#gpio-cells = <2>;
> -	};
> -
>  	rtc: ds1672@68 {
>  		compatible = "dallas,ds1672";
>  		reg = <0x68>;
> @@ -464,6 +595,7 @@
>  		fsl,pins = <
>  			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
>  			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
> +			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0xb0b1
>  		>;
>  	};
>  
> diff --git a/arch/arm/boot/dts/imx6qdl-gw552x.dtsi b/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
> index bb35971..0d563be 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
> @@ -20,6 +20,53 @@
>  		bootargs = "console=ttymxc1,115200";
>  	};
>  
> +	gpio_keys {
> +		compatible = "gpio-keys";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		user_pb {
> +			label = "user_pb";
> +			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
> +			linux,code = <256>; /* BTN_0 */
> +		};
> +
> +		user_pb1x {
> +			label = "user_pb1x";
> +			linux,code = <257>; /* BTN_1 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <0>;
> +		};
> +
> +		key_erased {
> +			label = "key-erased";
> +			linux,code = <258>; /* BTN_2 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <1>;
> +		};
> +
> +		eeprom_wp {
> +			label = "eeprom_wp";
> +			linux,code = <259>; /* BTN_3 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <2>;
> +		};
> +
> +		tamper {
> +			label = "tamper";
> +			linux,code = <260>; /* BTN_4 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <5>;
> +		};
> +
> +		switch_hold {
> +			label = "switch_hold";
> +			linux,code = <261>; /* BTN_5 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <7>;
> +		};
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  		pinctrl-names = "default";
> @@ -92,6 +139,103 @@
>  	pinctrl-0 = <&pinctrl_i2c1>;
>  	status = "okay";
>  
> +	gsc: gsc@20 {
> +		compatible = "gw,gsc";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +		#size-cells = <0>;
> +
> +		adc {
> +			compatible = "gw,gsc-adc";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			channel@0 {
> +				gw,mode = <0>;
> +				reg = <0x00>;
> +				label = "temp";
> +			};
> +
> +			channel@2 {
> +				gw,mode = <1>;
> +				reg = <0x02>;
> +				label = "vdd_vin";
> +			};
> +
> +			channel@5 {
> +				gw,mode = <1>;
> +				reg = <0x05>;
> +				label = "vdd_3p3";
> +			};
> +
> +			channel@8 {
> +				gw,mode = <1>;
> +				reg = <0x08>;
> +				label = "vdd_bat";
> +			};
> +
> +			channel@b {
> +				gw,mode = <1>;
> +				reg = <0x0b>;
> +				label = "vdd_5p0";
> +			};
> +
> +			channel@e {
> +				gw,mode = <1>;
> +				reg = <0xe>;
> +				label = "vdd_arm";
> +			};
> +
> +			channel@11 {
> +				gw,mode = <1>;
> +				reg = <0x11>;
> +				label = "vdd_soc";
> +			};
> +
> +			channel@14 {
> +				gw,mode = <1>;
> +				reg = <0x14>;
> +				label = "vdd_3p0";
> +			};
> +
> +			channel@17 {
> +				gw,mode = <1>;
> +				reg = <0x17>;
> +				label = "vdd_1p5";
> +			};
> +
> +			channel@1d {
> +				gw,mode = <1>;
> +				reg = <0x1d>;
> +				label = "vdd_1p8";
> +			};
> +
> +			channel@20 {
> +				gw,mode = <1>;
> +				reg = <0x20>;
> +				label = "vdd_1p0";
> +			};
> +
> +			channel@23 {
> +				gw,mode = <1>;
> +				reg = <0x23>;
> +				label = "vdd_2p5";
> +			};
> +		};
> +	};
> +
> +	gsc_gpio: pca9555@23 {
> +		compatible = "nxp,pca9555";
> +		reg = <0x23>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-parent = <&gsc>;
> +		interrupts = <4>;
> +	};
> +
>  	eeprom1: eeprom@50 {
>  		compatible = "atmel,24c02";
>  		reg = <0x50>;
> @@ -116,13 +260,6 @@
>  		pagesize = <16>;
>  	};
>  
> -	gpio: pca9555@23 {
> -		compatible = "nxp,pca9555";
> -		reg = <0x23>;
> -		gpio-controller;
> -		#gpio-cells = <2>;
> -	};
> -
>  	rtc: ds1672@68 {
>  		compatible = "dallas,ds1672";
>  		reg = <0x68>;
> @@ -305,6 +442,7 @@
>  		fsl,pins = <
>  			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
>  			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
> +			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0xb0b1
>  		>;
>  	};
>  
> diff --git a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> index ee85031..7f67180 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> @@ -61,6 +61,53 @@
>  		stdout-path = &uart2;
>  	};
>  
> +	gpio_keys {
> +		compatible = "gpio-keys";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		user_pb {
> +			label = "user_pb";
> +			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
> +			linux,code = <256>; /* BTN_0 */
> +		};
> +
> +		user_pb1x {
> +			label = "user_pb1x";
> +			linux,code = <257>; /* BTN_1 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <0>;
> +		};
> +
> +		key_erased {
> +			label = "key-erased";
> +			linux,code = <258>; /* BTN_2 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <1>;
> +		};
> +
> +		eeprom_wp {
> +			label = "eeprom_wp";
> +			linux,code = <259>; /* BTN_3 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <2>;
> +		};
> +
> +		tamper {
> +			label = "tamper";
> +			linux,code = <260>; /* BTN_4 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <5>;
> +		};
> +
> +		switch_hold {
> +			label = "switch_hold";
> +			linux,code = <261>; /* BTN_5 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <7>;
> +		};
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  		pinctrl-names = "default";
> @@ -130,11 +177,101 @@
>  	pinctrl-0 = <&pinctrl_i2c1>;
>  	status = "okay";
>  
> -	gpio: pca9555@23 {
> +	gsc: gsc@20 {
> +		compatible = "gw,gsc";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +		#size-cells = <0>;
> +
> +		adc {
> +			compatible = "gw,gsc-adc";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			channel@0 {
> +				gw,mode = <0>;
> +				reg = <0x00>;
> +				label = "temp";
> +			};
> +
> +			channel@2 {
> +				gw,mode = <1>;
> +				reg = <0x02>;
> +				label = "vdd_vin";
> +			};
> +
> +			channel@5 {
> +				gw,mode = <1>;
> +				reg = <0x05>;
> +				label = "vdd_3p3";
> +			};
> +
> +			channel@8 {
> +				gw,mode = <1>;
> +				reg = <0x08>;
> +				label = "vdd_bat";
> +			};
> +
> +			channel@b {
> +				gw,mode = <1>;
> +				reg = <0x0b>;
> +				label = "vdd_5p0";
> +			};
> +
> +			channel@e {
> +				gw,mode = <1>;
> +				reg = <0xe>;
> +				label = "vdd_arm";
> +			};
> +
> +			channel@11 {
> +				gw,mode = <1>;
> +				reg = <0x11>;
> +				label = "vdd_soc";
> +			};
> +
> +			channel@14 {
> +				gw,mode = <1>;
> +				reg = <0x14>;
> +				label = "vdd_3p0";
> +			};
> +
> +			channel@17 {
> +				gw,mode = <1>;
> +				reg = <0x17>;
> +				label = "vdd_1p5";
> +			};
> +
> +			channel@1d {
> +				gw,mode = <1>;
> +				reg = <0x1d>;
> +				label = "vdd_1p8a";
> +			};
> +
> +			channel@20 {
> +				gw,mode = <1>;
> +				reg = <0x20>;
> +				label = "vdd_1p0b";
> +			};
> +
> +			channel@26 {
> +				gw,mode = <1>;
> +				reg = <0x26>;
> +				label = "vdd_an1";
> +			};
> +		};
> +	};
> +
> +	gsc_gpio: pca9555@23 {
>  		compatible = "nxp,pca9555";
>  		reg = <0x23>;
>  		gpio-controller;
>  		#gpio-cells = <2>;
> +		interrupt-parent = <&gsc>;
> +		interrupts = <4>;
>  	};
>  
>  	eeprom1: eeprom@50 {
> @@ -428,6 +565,7 @@
>  		fsl,pins = <
>  			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
>  			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
> +			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0xb0b1
>  		>;
>  	};
>  
> diff --git a/arch/arm/boot/dts/imx6qdl-gw560x.dtsi b/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
> index 69ca70d..cb20301 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
> @@ -88,6 +88,53 @@
>  		default-on;
>  	};
>  
> +	gpio_keys {
> +		compatible = "gpio-keys";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		user_pb {
> +			label = "user_pb";
> +			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
> +			linux,code = <256>; /* BTN_0 */
> +		};
> +
> +		user_pb1x {
> +			label = "user_pb1x";
> +			linux,code = <257>; /* BTN_1 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <0>;
> +		};
> +
> +		key_erased {
> +			label = "key-erased";
> +			linux,code = <258>; /* BTN_2 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <1>;
> +		};
> +
> +		eeprom_wp {
> +			label = "eeprom_wp";
> +			linux,code = <259>; /* BTN_3 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <2>;
> +		};
> +
> +		tamper {
> +			label = "tamper";
> +			linux,code = <260>; /* BTN_4 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <5>;
> +		};
> +
> +		switch_hold {
> +			label = "switch_hold";
> +			linux,code = <261>; /* BTN_5 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <7>;
> +		};
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  		pinctrl-names = "default";
> @@ -243,6 +290,115 @@
>  	pinctrl-0 = <&pinctrl_i2c1>;
>  	status = "okay";
>  
> +	gsc: gsc@20 {
> +		compatible = "gw,gsc";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +		#size-cells = <0>;
> +
> +		adc {
> +			compatible = "gw,gsc-adc";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			channel@0 {
> +				gw,mode = <0>;
> +				reg = <0x00>;
> +				label = "temp";
> +			};
> +
> +			channel@2 {
> +				gw,mode = <1>;
> +				reg = <0x02>;
> +				label = "vdd_vin";
> +			};
> +
> +			channel@5 {
> +				gw,mode = <1>;
> +				reg = <0x05>;
> +				label = "vdd_3p3";
> +			};
> +
> +			channel@8 {
> +				gw,mode = <1>;
> +				reg = <0x08>;
> +				label = "vdd_bat";
> +			};
> +
> +			channel@b {
> +				gw,mode = <1>;
> +				reg = <0x0b>;
> +				label = "vdd_5p0";
> +			};
> +
> +			channel@e {
> +				gw,mode = <1>;
> +				reg = <0xe>;
> +				label = "vdd_arm";
> +			};
> +
> +			channel@11 {
> +				gw,mode = <1>;
> +				reg = <0x11>;
> +				label = "vdd_soc";
> +			};
> +
> +			channel@14 {
> +				gw,mode = <1>;
> +				reg = <0x14>;
> +				label = "vdd_3p0";
> +			};
> +
> +			channel@17 {
> +				gw,mode = <1>;
> +				reg = <0x17>;
> +				label = "vdd_1p5";
> +			};
> +
> +			channel@1d {
> +				gw,mode = <1>;
> +				reg = <0x1d>;
> +				label = "vdd_1p8";
> +			};
> +
> +			channel@20 {
> +				gw,mode = <1>;
> +				reg = <0x20>;
> +				label = "vdd_an1";
> +			};
> +
> +			channel@23 {
> +				gw,mode = <1>;
> +				reg = <0x23>;
> +				label = "vdd_2p5";
> +			};
> +
> +			channel@26 {
> +				gw,mode = <1>;
> +				reg = <0x26>;
> +				label = "vdd_gps";
> +			};
> +
> +			channel@29 {
> +				gw,mode = <1>;
> +				reg = <0x29>;
> +				label = "vdd_an2";
> +			};
> +		};
> +	};
> +
> +	gsc_gpio: pca9555@23 {
> +		compatible = "nxp,pca9555";
> +		reg = <0x23>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-parent = <&gsc>;
> +		interrupts = <4>;
> +	};
> +
>  	eeprom1: eeprom@50 {
>  		compatible = "atmel,24c02";
>  		reg = <0x50>;
> @@ -267,13 +423,6 @@
>  		pagesize = <16>;
>  	};
>  
> -	pca9555: gpio@23 {
> -		compatible = "nxp,pca9555";
> -		reg = <0x23>;
> -		gpio-controller;
> -		#gpio-cells = <2>;
> -	};
> -
>  	ds1672: rtc@68 {
>  		compatible = "dallas,ds1672";
>  		reg = <0x68>;
> @@ -608,6 +757,7 @@
>  		fsl,pins = <
>  			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
>  			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
> +			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0xb0b1
>  		>;
>  	};
>  
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5903.dtsi b/arch/arm/boot/dts/imx6qdl-gw5903.dtsi
> index aee9221..e1bf19e 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5903.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5903.dtsi
> @@ -71,6 +71,53 @@
>  		default-brightness-level = <100>;
>  	};
>  
> +	gpio_keys {
> +		compatible = "gpio-keys";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		user_pb {
> +			label = "user_pb";
> +			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
> +			linux,code = <256>; /* BTN_0 */
> +		};
> +
> +		user_pb1x {
> +			label = "user_pb1x";
> +			linux,code = <257>; /* BTN_1 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <0>;
> +		};
> +
> +		key_erased {
> +			label = "key-erased";
> +			linux,code = <258>; /* BTN_2 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <1>;
> +		};
> +
> +		eeprom_wp {
> +			label = "eeprom_wp";
> +			linux,code = <259>; /* BTN_3 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <2>;
> +		};
> +
> +		tamper {
> +			label = "tamper";
> +			linux,code = <260>; /* BTN_4 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <5>;
> +		};
> +
> +		switch_hold {
> +			label = "switch_hold";
> +			linux,code = <261>; /* BTN_5 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <7>;
> +		};
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  		pinctrl-names = "default";
> @@ -183,11 +230,101 @@
>  	pinctrl-0 = <&pinctrl_i2c1>;
>  	status = "okay";
>  
> -	pca9555: gpio@23 {
> +	gsc: gsc@20 {
> +		compatible = "gw,gsc";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +		#size-cells = <0>;
> +
> +		adc {
> +			compatible = "gw,gsc-adc";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			channel@0 {
> +				gw,mode = <0>;
> +				reg = <0x00>;
> +				label = "temp";
> +			};
> +
> +			channel@2 {
> +				gw,mode = <1>;
> +				reg = <0x02>;
> +				label = "vdd_vin";
> +			};
> +
> +			channel@5 {
> +				gw,mode = <1>;
> +				reg = <0x05>;
> +				label = "vdd_3p3";
> +			};
> +
> +			channel@8 {
> +				gw,mode = <1>;
> +				reg = <0x08>;
> +				label = "vdd_bat";
> +			};
> +
> +			channel@b {
> +				gw,mode = <1>;
> +				reg = <0x0b>;
> +				label = "vdd_5p0";
> +			};
> +
> +			channel@e {
> +				gw,mode = <1>;
> +				reg = <0xe>;
> +				label = "vdd_arm";
> +			};
> +
> +			channel@11 {
> +				gw,mode = <1>;
> +				reg = <0x11>;
> +				label = "vdd_soc";
> +			};
> +
> +			channel@14 {
> +				gw,mode = <1>;
> +				reg = <0x14>;
> +				label = "vdd_3p0";
> +			};
> +
> +			channel@17 {
> +				gw,mode = <1>;
> +				reg = <0x17>;
> +				label = "vdd_1p5";
> +			};
> +
> +			channel@1d {
> +				gw,mode = <1>;
> +				reg = <0x1d>;
> +				label = "vdd_1p8";
> +			};
> +
> +			channel@20 {
> +				gw,mode = <1>;
> +				reg = <0x20>;
> +				label = "vdd_an1";
> +			};
> +
> +			channel@23 {
> +				gw,mode = <1>;
> +				reg = <0x23>;
> +				label = "vdd_2p5";
> +			};
> +		};
> +	};
> +
> +	gsc_gpio: pca9555@23 {
>  		compatible = "nxp,pca9555";
>  		reg = <0x23>;
>  		gpio-controller;
>  		#gpio-cells = <2>;
> +		interrupt-parent = <&gsc>;
> +		interrupts = <4>;
>  	};
>  
>  	eeprom1: eeprom@50 {
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5904.dtsi b/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
> index 76d6cf5..1535ef6 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
> @@ -68,6 +68,53 @@
>  		default-brightness-level = <7>;
>  	};
>  
> +	gpio_keys {
> +		compatible = "gpio-keys";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		user_pb {
> +			label = "user_pb";
> +			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
> +			linux,code = <256>; /* BTN_0 */
> +		};
> +
> +		user_pb1x {
> +			label = "user_pb1x";
> +			linux,code = <257>; /* BTN_1 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <0>;
> +		};
> +
> +		key_erased {
> +			label = "key-erased";
> +			linux,code = <258>; /* BTN_2 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <1>;
> +		};
> +
> +		eeprom_wp {
> +			label = "eeprom_wp";
> +			linux,code = <259>; /* BTN_3 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <2>;
> +		};
> +
> +		tamper {
> +			label = "tamper";
> +			linux,code = <260>; /* BTN_4 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <5>;
> +		};
> +
> +		switch_hold {
> +			label = "switch_hold";
> +			linux,code = <261>; /* BTN_5 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <7>;
> +		};
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  		pinctrl-names = "default";
> @@ -205,11 +252,101 @@
>  	pinctrl-0 = <&pinctrl_i2c1>;
>  	status = "okay";
>  
> -	pca9555: gpio@23 {
> +	gsc: gsc@20 {
> +		compatible = "gw,gsc";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +		#size-cells = <0>;
> +
> +		adc {
> +			compatible = "gw,gsc-adc";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			channel@0 {
> +				gw,mode = <0>;
> +				reg = <0x00>;
> +				label = "temp";
> +			};
> +
> +			channel@2 {
> +				gw,mode = <1>;
> +				reg = <0x02>;
> +				label = "vdd_vin";
> +			};
> +
> +			channel@5 {
> +				gw,mode = <1>;
> +				reg = <0x05>;
> +				label = "vdd_3p3";
> +			};
> +
> +			channel@8 {
> +				gw,mode = <1>;
> +				reg = <0x08>;
> +				label = "vdd_bat";
> +			};
> +
> +			channel@b {
> +				gw,mode = <1>;
> +				reg = <0x0b>;
> +				label = "vdd_5p0";
> +			};
> +
> +			channel@e {
> +				gw,mode = <1>;
> +				reg = <0xe>;
> +				label = "vdd_arm";
> +			};
> +
> +			channel@11 {
> +				gw,mode = <1>;
> +				reg = <0x11>;
> +				label = "vdd_soc";
> +			};
> +
> +			channel@14 {
> +				gw,mode = <1>;
> +				reg = <0x14>;
> +				label = "vdd_3p0";
> +			};
> +
> +			channel@17 {
> +				gw,mode = <1>;
> +				reg = <0x17>;
> +				label = "vdd_1p5";
> +			};
> +
> +			channel@1d {
> +				gw,mode = <1>;
> +				reg = <0x1d>;
> +				label = "vdd_1p8";
> +			};
> +
> +			channel@20 {
> +				gw,mode = <1>;
> +				reg = <0x20>;
> +				label = "vdd_an1";
> +			};
> +
> +			channel@23 {
> +				gw,mode = <1>;
> +				reg = <0x23>;
> +				label = "vdd_2p5";
> +			};
> +		};
> +	};
> +
> +	gsc_gpio: pca9555@23 {
>  		compatible = "nxp,pca9555";
>  		reg = <0x23>;
>  		gpio-controller;
>  		#gpio-cells = <2>;
> +		interrupt-parent = <&gsc>;
> +		interrupts = <4>;
>  	};
>  
>  	eeprom1: eeprom@50 {
> @@ -503,6 +640,7 @@
>  		fsl,pins = <
>  			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
>  			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
> +			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x0001b0b0 /* GSC_IRQ# */
>  		>;
>  	};
>  
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5907.dtsi b/arch/arm/boot/dts/imx6qdl-gw5907.dtsi
> index 0bdebdd..81853b5 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5907.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5907.dtsi
> @@ -19,6 +19,53 @@
>  		stdout-path = &uart2;
>  	};
>  
> +	gpio_keys {
> +		compatible = "gpio-keys";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		user_pb {
> +			label = "user_pb";
> +			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
> +			linux,code = <256>; /* BTN_0 */
> +		};
> +
> +		user_pb1x {
> +			label = "user_pb1x";
> +			linux,code = <257>; /* BTN_1 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <0>;
> +		};
> +
> +		key_erased {
> +			label = "key-erased";
> +			linux,code = <258>; /* BTN_2 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <1>;
> +		};
> +
> +		eeprom_wp {
> +			label = "eeprom_wp";
> +			linux,code = <259>; /* BTN_3 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <2>;
> +		};
> +
> +		tamper {
> +			label = "tamper";
> +			linux,code = <260>; /* BTN_4 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <5>;
> +		};
> +
> +		switch_hold {
> +			label = "switch_hold";
> +			linux,code = <261>; /* BTN_5 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <7>;
> +		};
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  		pinctrl-names = "default";
> @@ -102,11 +149,101 @@
>  	pinctrl-0 = <&pinctrl_i2c1>;
>  	status = "okay";
>  
> -	gpio@23 {
> +	gsc: gsc@20 {
> +		compatible = "gw,gsc";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +		#size-cells = <0>;
> +
> +		adc {
> +			compatible = "gw,gsc-adc";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			channel@0 {
> +				gw,mode = <0>;
> +				reg = <0x00>;
> +				label = "temp";
> +			};
> +
> +			channel@2 {
> +				gw,mode = <1>;
> +				reg = <0x02>;
> +				label = "vdd_vin";
> +			};
> +
> +			channel@5 {
> +				gw,mode = <1>;
> +				reg = <0x05>;
> +				label = "vdd_3p3";
> +			};
> +
> +			channel@8 {
> +				gw,mode = <1>;
> +				reg = <0x08>;
> +				label = "vdd_bat";
> +			};
> +
> +			channel@b {
> +				gw,mode = <1>;
> +				reg = <0x0b>;
> +				label = "vdd_5p0";
> +			};
> +
> +			channel@e {
> +				gw,mode = <1>;
> +				reg = <0xe>;
> +				label = "vdd_arm";
> +			};
> +
> +			channel@11 {
> +				gw,mode = <1>;
> +				reg = <0x11>;
> +				label = "vdd_soc";
> +			};
> +
> +			channel@14 {
> +				gw,mode = <1>;
> +				reg = <0x14>;
> +				label = "vdd_3p0";
> +			};
> +
> +			channel@17 {
> +				gw,mode = <1>;
> +				reg = <0x17>;
> +				label = "vdd_1p5";
> +			};
> +
> +			channel@1d {
> +				gw,mode = <1>;
> +				reg = <0x1d>;
> +				label = "vdd_1p8";
> +			};
> +
> +			channel@20 {
> +				gw,mode = <1>;
> +				reg = <0x20>;
> +				label = "vdd_an1";
> +			};
> +
> +			channel@23 {
> +				gw,mode = <1>;
> +				reg = <0x23>;
> +				label = "vdd_2p5";
> +			};
> +		};
> +	};
> +
> +	gsc_gpio: pca9555@23 {
>  		compatible = "nxp,pca9555";
>  		reg = <0x23>;
>  		gpio-controller;
>  		#gpio-cells = <2>;
> +		interrupt-parent = <&gsc>;
> +		interrupts = <4>;
>  	};
>  
>  	eeprom@50 {
> @@ -133,7 +270,7 @@
>  		pagesize = <16>;
>  	};
>  
> -	rtc@68 {
> +	ds1672@68 {
>  		compatible = "dallas,ds1672";
>  		reg = <0x68>;
>  	};
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
> index 0857de5..2f34623 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
> @@ -22,6 +22,53 @@
>  		reg = <0x10000000 0x20000000>;
>  	};
>  
> +	gpio_keys {
> +		compatible = "gpio-keys";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		user_pb {
> +			label = "user_pb";
> +			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
> +			linux,code = <256>; /* BTN_0 */
> +		};
> +
> +		user_pb1x {
> +			label = "user_pb1x";
> +			linux,code = <257>; /* BTN_1 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <0>;
> +		};
> +
> +		key_erased {
> +			label = "key-erased";
> +			linux,code = <258>; /* BTN_2 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <1>;
> +		};
> +
> +		eeprom_wp {
> +			label = "eeprom_wp";
> +			linux,code = <259>; /* BTN_3 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <2>;
> +		};
> +
> +		tamper {
> +			label = "tamper";
> +			linux,code = <260>; /* BTN_4 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <5>;
> +		};
> +
> +		switch_hold {
> +			label = "switch_hold";
> +			linux,code = <261>; /* BTN_5 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <7>;
> +		};
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  		pinctrl-names = "default";
> @@ -111,11 +158,121 @@
>  	pinctrl-0 = <&pinctrl_i2c1>;
>  	status = "okay";
>  
> -	gpio@23 {
> +	gsc: gsc@20 {
> +		compatible = "gw,gsc";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +		#size-cells = <0>;
> +
> +		adc {
> +			compatible = "gw,gsc-adc";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			channel@6 {
> +				gw,mode = <0>;
> +				reg = <0x06>;
> +				label = "temp";
> +			};
> +
> +			channel@8 {
> +				gw,mode = <1>;
> +				reg = <0x08>;
> +				label = "vdd_bat";
> +			};
> +
> +			channel@82 {
> +				gw,mode = <2>;
> +				reg = <0x82>;
> +				label = "vdd_vin";
> +				gw,voltage-divider-ohms = <22100 1000>;
> +				gw,voltage-offset-microvolt = <800000>;
> +			};
> +
> +			channel@84 {
> +				gw,mode = <2>;
> +				reg = <0x84>;
> +				label = "vdd_5p0";
> +				gw,voltage-divider-ohms = <22100 10000>;
> +			};
> +
> +			channel@86 {
> +				gw,mode = <2>;
> +				reg = <0x86>;
> +				label = "vdd_3p3";
> +				gw,voltage-divider-ohms = <10000 10000>;
> +			};
> +
> +			channel@88 {
> +				gw,mode = <2>;
> +				reg = <0x88>;
> +				label = "vdd_2p5";
> +				gw,voltage-divider-ohms = <10000 10000>;
> +			};
> +
> +			channel@8c {
> +				gw,mode = <2>;
> +				reg = <0x8c>;
> +				label = "vdd_3p0";
> +			};
> +
> +			channel@8e {
> +				gw,mode = <2>;
> +				reg = <0x8e>;
> +				label = "vdd_arm";
> +			};
> +
> +			channel@90 {
> +				gw,mode = <2>;
> +				reg = <0x90>;
> +				label = "vdd_soc";
> +			};
> +
> +			channel@92 {
> +				gw,mode = <2>;
> +				reg = <0x92>;
> +				label = "vdd_1p5";
> +			};
> +
> +			channel@98 {
> +				gw,mode = <2>;
> +				reg = <0x98>;
> +				label = "vdd_1p8";
> +			};
> +
> +			channel@9a {
> +				gw,mode = <2>;
> +				reg = <0x9a>;
> +				label = "vdd_1p0";
> +				gw,voltage-divider-ohms = <10000 10000>;
> +			};
> +
> +			channel@9c {
> +				gw,mode = <2>;
> +				reg = <0x9c>;
> +				label = "vdd_an1";
> +				gw,voltage-divider-ohms = <10000 10000>;
> +			};
> +
> +			channel@a2 {
> +				gw,mode = <2>;
> +				reg = <0xa2>;
> +				label = "vdd_gsc";
> +				gw,voltage-divider-ohms = <10000 10000>;
> +			};
> +		};
> +	};
> +
> +	gsc_gpio: pca9555@23 {
>  		compatible = "nxp,pca9555";
>  		reg = <0x23>;
>  		gpio-controller;
>  		#gpio-cells = <2>;
> +		interrupt-parent = <&gsc>;
> +		interrupts = <4>;
>  	};
>  
>  	eeprom@50 {
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5912.dtsi b/arch/arm/boot/dts/imx6qdl-gw5912.dtsi
> index 8c57fd2..0e2dbc8 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5912.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5912.dtsi
> @@ -20,6 +20,53 @@
>  		stdout-path = &uart2;
>  	};
>  
> +	gpio_keys {
> +		compatible = "gpio-keys";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		user_pb {
> +			label = "user_pb";
> +			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
> +			linux,code = <256>; /* BTN_0 */
> +		};
> +
> +		user_pb1x {
> +			label = "user_pb1x";
> +			linux,code = <257>; /* BTN_1 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <0>;
> +		};
> +
> +		key_erased {
> +			label = "key-erased";
> +			linux,code = <258>; /* BTN_2 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <1>;
> +		};
> +
> +		eeprom_wp {
> +			label = "eeprom_wp";
> +			linux,code = <259>; /* BTN_3 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <2>;
> +		};
> +
> +		tamper {
> +			label = "tamper";
> +			linux,code = <260>; /* BTN_4 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <5>;
> +		};
> +
> +		switch_hold {
> +			label = "switch_hold";
> +			linux,code = <261>; /* BTN_5 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <7>;
> +		};
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  		pinctrl-names = "default";
> @@ -106,11 +153,108 @@
>  	pinctrl-0 = <&pinctrl_i2c1>;
>  	status = "okay";
>  
> -	gpio@23 {
> +	gsc: gsc@20 {
> +		compatible = "gw,gsc";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +		#size-cells = <0>;
> +
> +		adc {
> +			compatible = "gw,gsc-adc";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			channel@0 {
> +				gw,mode = <0>;
> +				reg = <0x00>;
> +				label = "temp";
> +			};
> +
> +			channel@2 {
> +				gw,mode = <1>;
> +				reg = <0x02>;
> +				label = "vdd_vin";
> +			};
> +
> +			channel@5 {
> +				gw,mode = <1>;
> +				reg = <0x05>;
> +				label = "vdd_3p3";
> +			};
> +
> +			channel@8 {
> +				gw,mode = <1>;
> +				reg = <0x08>;
> +				label = "vdd_bat";
> +			};
> +
> +			channel@b {
> +				gw,mode = <1>;
> +				reg = <0x0b>;
> +				label = "vdd_5p0";
> +			};
> +
> +			channel@e {
> +				gw,mode = <1>;
> +				reg = <0xe>;
> +				label = "vdd_arm";
> +			};
> +
> +			channel@11 {
> +				gw,mode = <1>;
> +				reg = <0x11>;
> +				label = "vdd_soc";
> +			};
> +
> +			channel@14 {
> +				gw,mode = <1>;
> +				reg = <0x14>;
> +				label = "vdd_3p0";
> +			};
> +
> +			channel@17 {
> +				gw,mode = <1>;
> +				reg = <0x17>;
> +				label = "vdd_1p5";
> +			};
> +
> +			channel@1d {
> +				gw,mode = <1>;
> +				reg = <0x1d>;
> +				label = "vdd_1p8";
> +			};
> +
> +			channel@20 {
> +				gw,mode = <1>;
> +				reg = <0x20>;
> +				label = "vdd_1p0";
> +			};
> +
> +			channel@23 {
> +				gw,mode = <1>;
> +				reg = <0x23>;
> +				label = "vdd_2p5";
> +			};
> +		};
> +
> +		fan-controller@a {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			compatible = "gw,gsc-fan";
> +			reg = <0x0a>;
> +		};
> +	};
> +
> +	gsc_gpio: pca9555@23 {
>  		compatible = "nxp,pca9555";
>  		reg = <0x23>;
>  		gpio-controller;
>  		#gpio-cells = <2>;
> +		interrupt-parent = <&gsc>;
> +		interrupts = <4>;
>  	};
>  
>  	eeprom@50 {
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5913.dtsi b/arch/arm/boot/dts/imx6qdl-gw5913.dtsi
> index 635c203..5fa79c9 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5913.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5913.dtsi
> @@ -19,6 +19,53 @@
>  		stdout-path = &uart2;
>  	};
>  
> +	gpio_keys {
> +		compatible = "gpio-keys";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		user_pb {
> +			label = "user_pb";
> +			gpios = <&gsc_gpio 0 GPIO_ACTIVE_LOW>;
> +			linux,code = <256>; /* BTN_0 */
> +		};
> +
> +		user_pb1x {
> +			label = "user_pb1x";
> +			linux,code = <257>; /* BTN_1 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <0>;
> +		};
> +
> +		key_erased {
> +			label = "key-erased";
> +			linux,code = <258>; /* BTN_2 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <1>;
> +		};
> +
> +		eeprom_wp {
> +			label = "eeprom_wp";
> +			linux,code = <259>; /* BTN_3 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <2>;
> +		};
> +
> +		tamper {
> +			label = "tamper";
> +			linux,code = <260>; /* BTN_4 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <5>;
> +		};
> +
> +		switch_hold {
> +			label = "switch_hold";
> +			linux,code = <261>; /* BTN_5 */
> +			interrupt-parent = <&gsc>;
> +			interrupts = <7>;
> +		};
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  		pinctrl-names = "default";
> @@ -87,11 +134,114 @@
>  	pinctrl-0 = <&pinctrl_i2c1>;
>  	status = "okay";
>  
> -	gpio@23 {
> +	gsc: gsc@20 {
> +		compatible = "gw,gsc";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +		#size-cells = <0>;
> +
> +		adc {
> +			compatible = "gw,gsc-adc";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			channel@6 {
> +				gw,mode = <0>;
> +				reg = <0x06>;
> +				label = "temp";
> +			};
> +
> +			channel@8 {
> +				gw,mode = <1>;
> +				reg = <0x08>;
> +				label = "vdd_bat";
> +			};
> +
> +			channel@82 {
> +				gw,mode = <2>;
> +				reg = <0x82>;
> +				label = "vdd_vin";
> +				gw,voltage-divider-ohms = <22100 1000>;
> +				gw,voltage-offset-microvolt = <800000>;
> +			};
> +
> +			channel@84 {
> +				gw,mode = <2>;
> +				reg = <0x84>;
> +				label = "vdd_5p0";
> +				gw,voltage-divider-ohms = <22100 10000>;
> +			};
> +
> +			channel@86 {
> +				gw,mode = <2>;
> +				reg = <0x86>;
> +				label = "vdd_3p3";
> +				gw,voltage-divider-ohms = <10000 10000>;
> +			};
> +
> +			channel@88 {
> +				gw,mode = <2>;
> +				reg = <0x88>;
> +				label = "vdd_2p5";
> +				gw,voltage-divider-ohms = <10000 10000>;
> +			};
> +
> +			channel@8c {
> +				gw,mode = <2>;
> +				reg = <0x8c>;
> +				label = "vdd_arm";
> +			};
> +
> +			channel@8e {
> +				gw,mode = <2>;
> +				reg = <0x8e>;
> +				label = "vdd_soc";
> +			};
> +
> +			channel@90 {
> +				gw,mode = <2>;
> +				reg = <0x90>;
> +				label = "vdd_1p5";
> +			};
> +
> +			channel@92 {
> +				gw,mode = <2>;
> +				reg = <0x92>;
> +				label = "vdd_1p0";
> +			};
> +
> +			channel@98 {
> +				gw,mode = <2>;
> +				reg = <0x98>;
> +				label = "vdd_3p0";
> +			};
> +
> +			channel@9a {
> +				gw,mode = <2>;
> +				reg = <0x9a>;
> +				label = "vdd_an1";
> +				gw,voltage-divider-ohms = <10000 10000>;
> +			};
> +
> +			channel@a2 {
> +				gw,mode = <2>;
> +				reg = <0xa2>;
> +				label = "vdd_gsc";
> +				gw,voltage-divider-ohms = <10000 10000>;
> +			};
> +		};
> +	};
> +
> +	gsc_gpio: pca9555@23 {
>  		compatible = "nxp,pca9555";
>  		reg = <0x23>;
>  		gpio-controller;
>  		#gpio-cells = <2>;
> +		interrupt-parent = <&gsc>;
> +		interrupts = <4>;
>  	};
>  
>  	eeprom@50 {
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
