Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9329DB1777
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 05:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hHQxYtyzt+UWmvR8FfA4GNWNIJgyHyFAyolO8moqVA4=; b=JJU6Ju6iBf7Jd0
	P7zwcG9jSOBCJdgPwt9OfCXT8VJ2oH93rPGQOyPRLFYZhH15FQQUxgnREsaucdPfCxErIlU7743h0
	rQfqlNqxwjYraeY4GznHEs6e2q3YaSM8et3bJIlfGG7yyWaQ7xjn9xiZrSpnBV1Im8cdbty/nw6vz
	oMfrXmnFzgdLe0hFYQl7rCZxGUk4EC0ZGVfjQqbofXnxa4b8aQw8KdkfABtzrVScMI+EpF1Ez4WT1
	JuO18ua/ZXEgqkC+9aI9teUCS75ofx55YXyckafM+3i0TxvgtQyL7LM14rA+fpUY4NH8uREUlkzwR
	vYdjlVnNDdRHUIG72q/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8cJc-0000Lj-UY; Fri, 13 Sep 2019 03:32:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8cJP-0000Kw-RJ
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 03:31:57 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B7E62084D;
 Fri, 13 Sep 2019 03:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568345515;
 bh=xe/JQYqK2joRWmcoEKC69faO00pRfkUSxLsZFzljHx8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oOgasMqDODc+/kPGQTMrlSa8enwJYrsd2Ov9O9jP0QnVdULOh56TqcyOuZ8hTfVaV
 Uzjj1aeO59WeNJtEkBmwa9FzGw8T8qXW1sSlEHtScKu8WvdSpwfYfag2sgnjk9lcOI
 io9N4+DGPlePxXUyAFnEvjFHLvdCBC0pRusMovM8=
Date: Fri, 13 Sep 2019 11:31:46 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Subject: Re: [PATCH 01/12] ARM: dts: imx7d: cl-som-imx7 imx7d-sbc-imx7: move
 USB
Message-ID: <20190913033145.GG17142@dragon>
References: <20190826153800.35400-1-git@andred.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826153800.35400-1-git@andred.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_203155_926797_B6BCCA6F 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Mon, Aug 26, 2019 at 04:37:49PM +0100, Andr=E9 Draszik wrote:
> Whether and which USB port is enabled and how they
> are powered is a function of the carrier board, not
> of the SoM. Different carrier boards can have different
> ports enabled / wired up, and power them differently;
> so this should really move into the respective DTS.
> =

> Do so and update the USB power supply to reflect
> the actual situation on the sbc-imx7 carrier board.
> =

> Signed-off-by: Andr=E9 Draszik <git@andred.net>
> Cc: Ilya Ledvich <ilya@compulab.co.il>
> Cc: Igor Grinberg <grinberg@compulab.co.il>

Ilya, Igor, can you have a look at the series?

Shawn

> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm/boot/dts/imx7d-cl-som-imx7.dts | 24 ------------------------
>  arch/arm/boot/dts/imx7d-sbc-imx7.dts    | 13 +++++++++++++
>  2 files changed, 13 insertions(+), 24 deletions(-)
> =

> diff --git a/arch/arm/boot/dts/imx7d-cl-som-imx7.dts b/arch/arm/boot/dts/=
imx7d-cl-som-imx7.dts
> index 62d5e9a4a781..6f7e85cf0c28 100644
> --- a/arch/arm/boot/dts/imx7d-cl-som-imx7.dts
> +++ b/arch/arm/boot/dts/imx7d-cl-som-imx7.dts
> @@ -22,15 +22,6 @@
>  		device_type =3D "memory";
>  		reg =3D <0x80000000 0x10000000>; /* 256 MB - minimal configuration */
>  	};
> -
> -	reg_usb_otg1_vbus: regulator-vbus {
> -		compatible =3D "regulator-fixed";
> -		regulator-name =3D "usb_otg1_vbus";
> -		regulator-min-microvolt =3D <5000000>;
> -		regulator-max-microvolt =3D <5000000>;
> -		gpio =3D <&gpio1 5 GPIO_ACTIVE_HIGH>;
> -		enable-active-high;
> -	};
>  };
>  =

>  &cpu0 {
> @@ -193,13 +184,6 @@
>  	status =3D "okay";
>  };
>  =

> -&usbotg1 {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_usbotg1>;
> -	vbus-supply =3D <&reg_usb_otg1_vbus>;
> -	status =3D "okay";
> -};
> -
>  &usdhc3 {
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&pinctrl_usdhc3>;
> @@ -278,11 +262,3 @@
>  		>;
>  	};
>  };
> -
> -&iomuxc_lpsr {
> -	pinctrl_usbotg1: usbotg1grp {
> -		fsl,pins =3D <
> -			MX7D_PAD_LPSR_GPIO1_IO05__GPIO1_IO5	0x14 /* OTG PWREN */
> -		>;
> -	};
> -};
> diff --git a/arch/arm/boot/dts/imx7d-sbc-imx7.dts b/arch/arm/boot/dts/imx=
7d-sbc-imx7.dts
> index f8a868552707..aab646903de3 100644
> --- a/arch/arm/boot/dts/imx7d-sbc-imx7.dts
> +++ b/arch/arm/boot/dts/imx7d-sbc-imx7.dts
> @@ -15,6 +15,14 @@
>  / {
>  	model =3D "CompuLab SBC-iMX7";
>  	compatible =3D "compulab,sbc-imx7", "compulab,cl-som-imx7", "fsl,imx7d";
> +
> +	reg_usb_vbus: regulator-usb-vbus {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "usb_vbus";
> +		regulator-min-microvolt =3D <5000000>;
> +		regulator-max-microvolt =3D <5000000>;
> +		regulator-always-on;
> +	};
>  };
>  =

>  &usdhc1 {
> @@ -26,6 +34,11 @@
>  	status =3D "okay";
>  };
>  =

> +&&usbotg1 {
> +	vbus-supply =3D <&reg_usb_vbus>;
> +	status =3D "okay";
> +};
> +
>  &iomuxc {
>  	pinctrl_usdhc1: usdhc1grp {
>  		fsl,pins =3D <
> -- =

> 2.23.0.rc1
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
