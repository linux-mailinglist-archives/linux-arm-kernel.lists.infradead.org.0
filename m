Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 403BEEC0BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 10:45:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OsXDqxqWYmS3P9GLdKpJdDGT0ftZLm368m3smS/SkSo=; b=j4s7T2SxGPRt00oi8051CgHYL
	8JsD5KR2Udd+SGheqXX74E4ACo/myi0DDlhYX0SgkF4cf9KL8ztwkXxD2lhJ3I+JjzSl5LV3io3eq
	kdjsXKkeWhuMlTd7mrAGwAGYiE9Vh8A+e1X56H/UtEDiKPED6frbJcvV8poH9C5pOjiSv0UCmgD5v
	U+KMrPgkvXUp31eJAfD52XpRAnv2Hnnnv/w/DWPf0q0O1YHz9b0Ya5FjTqVP1yFN3Hw6tAT42ywGw
	9W/cxyuHIUwEbuWfpuRz+EP2xYgS3qypBddbP83BwcgQpUTsaGkSBFtwKth+/3gJBfJDL/6YjqN6A
	I1KSvYJ9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQTUD-00015o-9e; Fri, 01 Nov 2019 09:44:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQTU3-000159-3M
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 09:44:44 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D26F217D9;
 Fri,  1 Nov 2019 09:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572601482;
 bh=rCQ6d1QymEkAWTGHm97xpYJ6iBB6fGvwlUVc4yCNFBA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CMihrINSGxGduiBOF0rvqoDCKnbS1TsmSq6zdzR3RZdRem5IuD8NoVWP4TxSplM0V
 Q5kRAFhiwPRkQ00CQ3kPaJtVEQNrXE8gm6TOeHzicbAJGzw+1t1UoIP7xxXKDIn/aM
 GLKz81k9dBh38BWy0PPZpq2gClwfqflpk4nO0BSc=
Date: Fri, 1 Nov 2019 10:08:19 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Karl Palsson <karlp@tweak.net.au>
Subject: Re: [PATCH 2/3] ARM: dts: sun8i: add FriendlyARM NanoPi Duo2
Message-ID: <20191101090819.u3v2ryfelblij6ts@hendrix>
References: <20191031231216.30903-2-karlp@tweak.net.au>
MIME-Version: 1.0
In-Reply-To: <20191031231216.30903-2-karlp@tweak.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_024443_181898_91BF6DBE 
X-CRM114-Status: GOOD (  20.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: wens@csie.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8601069844020747314=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8601069844020747314==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="synunn7434hjolrf"
Content-Disposition: inline


--synunn7434hjolrf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Oct 31, 2019 at 11:12:15PM +0000, Karl Palsson wrote:
> This is an Allwinner H3 based board, with 512MB ram, a USB OTG port,
> microsd slot, an onboard AP6212A wifi/bluetooth module, and a CSI
> connector.
>
> Full details and schematic available from vendor:
> http://wiki.friendlyarm.com/wiki/index.php/NanoPi_Duo2
>
> Signed-off-by: Karl Palsson <karlp@tweak.net.au>
> ---
>  arch/arm/boot/dts/Makefile                 |   1 +
>  arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts | 161 +++++++++++++++++++++
>  2 files changed, 162 insertions(+)
>  create mode 100644 arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts
>
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 9159fa2cea90..d8bf02abcda1 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1096,6 +1096,7 @@ dtb-$(CONFIG_MACH_SUN8I) += \
>  	sun8i-h3-beelink-x2.dtb \
>  	sun8i-h3-libretech-all-h3-cc.dtb \
>  	sun8i-h3-mapleboard-mp130.dtb \
> +	sun8i-h3-nanopi-duo2.dtb \
>  	sun8i-h3-nanopi-m1.dtb	\
>  	sun8i-h3-nanopi-m1-plus.dtb \
>  	sun8i-h3-nanopi-neo.dtb \
> diff --git a/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts b/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts
> new file mode 100644
> index 000000000000..ecfaaa0ec73e
> --- /dev/null
> +++ b/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts
> @@ -0,0 +1,161 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2019 Karl Palsson <karlp@tweak.net.au>
> + */
> +
> +/dts-v1/;
> +#include "sun8i-h3.dtsi"
> +#include "sunxi-common-regulators.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	model = "FriendlyARM NanoPi Duo2";
> +	compatible = "friendlyarm,nanopi-duo2", "allwinner,sun8i-h3";

This needs to be added to Documentation/devicetree/bindings/arm/sunxi.yaml

> +
> +	aliases {
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		status {
> +			label = "nanopi:green:status";
> +			gpios = <&pio 0 10 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +
> +		pwr {
> +			label = "nanopi:red:pwr";
> +			gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>;
> +			default-state = "on";
> +		};
> +	};
> +
> +	r_gpio_keys {
> +		compatible = "gpio-keys";
> +
> +		k1 {
> +			label = "k1";
> +			linux,code = <BTN_0>;
> +			gpios = <&r_pio 0 3 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +
> +	reg_vdd_cpux: vdd-cpux-regulator {
> +		compatible = "regulator-gpio";
> +		regulator-name = "vdd-cpux";
> +		regulator-boot-on;
> +		regulator-always-on;
> +		regulator-min-microvolt = <1100000>;
> +		regulator-max-microvolt = <1300000>;
> +		regulator-ramp-delay = <50>; /* 4ms */
> +
> +		gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
> +		enable-active-high;
> +		gpios-states = <0x1>;
> +		states = <1100000 0x0
> +			  1300000 0x1>;
> +	};
> +
> +	wifi_pwrseq: wifi_pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		reset-gpios = <&r_pio 0 7 GPIO_ACTIVE_LOW>; /* PL7 */
> +		clocks = <&rtc 1>;
> +		clock-names = "ext_clock";
> +	};
> +
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&reg_vdd_cpux>;
> +};
> +
> +&usb_otg {
> +	status = "okay";
> +	dr_mode = "otg";
> +};
> +
> +&ehci0 {
> +	status = "okay";
> +};
> +
> +&ohci0 {
> +	status = "okay";
> +};
> +
> +&reg_usb0_vbus {
> +	gpio = <&r_pio 0 2 GPIO_ACTIVE_HIGH>; /* PL2 */
> +	status = "okay";
> +};
> +
> +&usbphy {
> +	usb0_id_det-gpios = <&pio 6 12 GPIO_ACTIVE_HIGH>; /* PG12 */
> +	usb0_vbus-supply = <&reg_usb0_vbus>;
> +	status = "okay";
> +};
> +
> +&mmc0 {
> +	bus-width = <4>;
> +	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +	vmmc-supply = <&reg_vcc3v3>;
> +};

Nodes should be ordered alphabetically.

> +&mmc1 {
> +	vmmc-supply = <&reg_vcc3v3>;
> +	vqmmc-supply = <&reg_vcc3v3>;
> +	mmc-pwrseq = <&wifi_pwrseq>;
> +	bus-width = <4>;
> +	non-removable;
> +	status = "okay";
> +
> +	sdio_wifi: sdio_wifi@1 {
> +		reg = <1>;
> +		compatible = "brcm,bcm4329-fmac";
> +		interrupt-parent = <&pio>;
> +		interrupts = <6 10 IRQ_TYPE_LEVEL_LOW>; /* PG10 / EINT10 */
> +		interrupt-names = "host-wake";
> +	};
> +};
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_pa_pins>;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart2_pins>, <&uart2_rts_cts_pins>;
> +	uart-has-rtscts;
> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "brcm,bcm43438-bt";
> +		//clocks = <&osc32k 1>;
> +		clocks = <&rtc 1>; // this is what bananapi-m2-zero does, and it has same schematic...
> +		clock-names = "lpo";
> +
> +		// these are both fine..
> +		vbat-supply = <&reg_vcc3v3>;
> +		vddio-supply = <&reg_vcc3v3>;
> +		// on opi-win, device-wakup is pl6 is AP-WAKE-BT is module pin 6, bt-wake.
> +		// YES; PA8 is correct.
> +		device-wakeup-gpios = <&pio 0 8 GPIO_ACTIVE_HIGH>; /* PA8 */
> +
> +		// on opi-win, hostwakeup (pl5) is bt-wake-ap is module pin 7, bt-host-wake
> +		// YES; PA7 is correct
> +		host-wakeup-gpios = <&pio 0 7 GPIO_ACTIVE_HIGH>; /* PA7 */
> +
> +		// on opi-win, shutdown is pl4, is BT-RST-N is moduel pin 34
> +		// YES; PG13 is correct.
> +		shutdown-gpios = <&pio 6 13 GPIO_ACTIVE_HIGH>; /* PG13 */
> +	};
> +};

I'm not sure we need all these comments

Maxime

--synunn7434hjolrf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbv2AwAKCRDj7w1vZxhR
xUkOAP97R0tLjac4DxGa88NB2u1mjPxISbTRCTmeWelrsCZqPQD+NViNydqL6W2s
gZEctLqwilQdhBXgTH7TygRTO9yUcg8=
=mUlR
-----END PGP SIGNATURE-----

--synunn7434hjolrf--


--===============8601069844020747314==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8601069844020747314==--

