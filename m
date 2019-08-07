Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DC084558
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 09:10:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vxvXPNypnrNd1qejhCCxRxIlLSeuLeEIbCdo4cNxltc=; b=k3fzNtWw+GCISCYh/yCi5tKIA
	j1YArs8oWOYWZP6vfEsxkRTCPDgdIBz7fbogW8mSnw9Lmv2rRLcZfY/38lauvgL3vO/rb0pAnty0J
	0yTEw5/plng3F4HR1sBNBxn1jWNGUme050b90fDJ/PxJkhWJ2C4Hc/J+0EcVPvxs9vYeKItaf1T0n
	M3p8UvUS+5MeqfCLKm1osDqzFd6yH7NuAVwnCQOk1W86QZBz41x5d3SnoJ7FN/FMmRCkA+pJRM1mt
	IrVN/XmZCEl0Lya6ywMVn1fteEh5vvs0mEe20nLYCLyb8qr3xeyOn/yNGlLjpX5lgU0PGYbfWhCX4
	8RfsGDXwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvG5J-0008EW-7S; Wed, 07 Aug 2019 07:10:09 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvG4v-0008Dh-F9
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 07:09:47 +0000
X-Originating-IP: 86.250.200.211
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id B5CEA1BF204;
 Wed,  7 Aug 2019 07:09:32 +0000 (UTC)
Date: Wed, 7 Aug 2019 09:09:32 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
Subject: Re: [PATCH] ARM: dts: add touchkey nodes for midas
Message-ID: <20190807070932.GC7152@aptenodytes>
References: <20190806165749.29468-1-GNUtoo@cyberdimension.org>
MIME-Version: 1.0
In-Reply-To: <20190806165749.29468-1-GNUtoo@cyberdimension.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_000945_818827_6A43F1D5 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Simon Shields <simon@lineageos.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: multipart/mixed; boundary="===============1840741190809231775=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1840741190809231775==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="t0UkRYy7tHLRMCai"
Content-Disposition: inline


--t0UkRYy7tHLRMCai
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue 06 Aug 19, 18:57, Denis 'GNUtoo' Carikli wrote:
> From: Simon Shields <simon@lineageos.org>
>=20
> this patch adds the fixed VTOUCH_3.3V regulator and configures
> the touchkey node + i2c-gpio node.

Thanks for the patch, see some comments below.

> Signed-off-by: Simon Shields <simon@lineageos.org>
> GNUtoo@cyberdimension.org: Fixed keycodes.
> Signed-off-by: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
> ---
>  arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi |  4 +++
>  arch/arm/boot/dts/exynos4412-midas.dtsi     | 29 +++++++++++++++++++++
>  arch/arm/boot/dts/exynos4412-n710x.dts      |  4 +++
>  3 files changed, 37 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi b/arch/arm/boot/=
dts/exynos4412-galaxy-s3.dtsi
> index ce87d2ff27aa..e71f103ab940 100644
> --- a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
> +++ b/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
> @@ -166,5 +166,9 @@
>  &s5c73m3 {
>  	standby-gpios =3D <&gpm0 1 GPIO_ACTIVE_LOW>;   /* ISP_STANDBY */
>  	vdda-supply =3D <&ldo17_reg>;
> +};
> +
> +&touchkey_reg {
> +	gpio =3D <&gpm0 0 GPIO_ACTIVE_HIGH>;
>  	status =3D "okay";

It looks like status =3D "okay" was initially found on the s5c73m3 node. Wi=
th this
change, it's no longer the case so the camera node will remain disabled.

So you probably need to duplicate status =3D "okay", so that it's both on
touchkey_reg and s5c73m3.

>  };
> diff --git a/arch/arm/boot/dts/exynos4412-midas.dtsi b/arch/arm/boot/dts/=
exynos4412-midas.dtsi
> index 83be3a797411..797e8de40580 100644
> --- a/arch/arm/boot/dts/exynos4412-midas.dtsi
> +++ b/arch/arm/boot/dts/exynos4412-midas.dtsi
> @@ -13,6 +13,7 @@
>  #include "exynos4412.dtsi"
>  #include "exynos4412-ppmu-common.dtsi"
>  #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/clock/maxim,max77686.h>
>  #include <dt-bindings/pinctrl/samsung.h>
> @@ -92,6 +93,15 @@
>  		enable-active-high;
>  	};
> =20
> +	touchkey_reg: voltage-regulator-4 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "VTOUCH_3.3V";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		enable-active-high;
> +		status =3D "disabled";
> +	};
> +
>  	gpio-keys {
>  		compatible =3D "gpio-keys";
>  		pinctrl-names =3D "default";
> @@ -197,6 +207,25 @@
>  		};
>  	};
> =20
> +	i2c_touchkey: i2c-gpio-4 {

Any reason why this node is not marked as disabled here although the regula=
tor
it depends on is?

> +		compatible =3D "i2c-gpio";
> +		sda-gpios =3D <&gpl0 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +		scl-gpios =3D <&gpl0 1 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +		i2c-gpio,delay-us =3D <2>;
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		touchkey@20 {
> +			compatible =3D "cypress,midas-touchkey";
> +			reg =3D <0x20>;
> +			vdd-supply =3D <&touchkey_reg>;
> +			vcc-supply =3D <&ldo5_reg>;
> +			interrupt-parent =3D <&gpj0>;
> +			interrupts =3D <3 IRQ_TYPE_EDGE_FALLING>;
> +			linux,keycodes =3D <KEY_BACK KEY_MENU>;
> +		};
> +	};
> +
>  	i2c-mhl {
>  		compatible =3D "i2c-gpio";
>  		gpios =3D <&gpf0 4 GPIO_ACTIVE_HIGH>, <&gpf0 6 GPIO_ACTIVE_HIGH>;
> diff --git a/arch/arm/boot/dts/exynos4412-n710x.dts b/arch/arm/boot/dts/e=
xynos4412-n710x.dts
> index fe2bfd76cc4e..6acb19d2bae2 100644
> --- a/arch/arm/boot/dts/exynos4412-n710x.dts
> +++ b/arch/arm/boot/dts/exynos4412-n710x.dts
> @@ -71,5 +71,9 @@
>  &s5c73m3 {
>  	standby-gpios =3D <&gpm0 6 GPIO_ACTIVE_LOW>;   /* ISP_STANDBY */
>  	vdda-supply =3D <&cam_vdda_reg>;
> +};
> +
> +&touchkey_reg {
> +	gpio =3D <&gpm0 5 GPIO_ACTIVE_HIGH>;
>  	status =3D "okay";

And ditto about duplicating status.

Cheers,

Paul

>  };
> --=20
> 2.22.0
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--t0UkRYy7tHLRMCai
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl1KeSwACgkQ3cLmz3+f
v9EIGggAiIX6+1tZJUS7FyqFFeHTWWGuR5DVwcqikzX+dAFJH/gMFWhc0UQWPfA0
qcBs/2r6K2AzKfVlf0AcnBuAqZSD5GOhLJo0TzHG7MtWa067bHvn6D+AVbHA6JKW
ZlDOfGUe7iMFjtS6Cxe/Ul0lZTMnQbxwemWwsnNwYJD9tfvMsJX0xTBIJf+9J43F
+Ge2lk1BTEKNK7V9zkSUi3V03C4yD1Vi+UKx06BCumAQgQI0RmfHdHEWRSbu1XgI
N9v9ydgDXt4Zo81YpHyvNVna3vw1+N259kIr31V0rp4J+thakDxr8zNmZHf1csj3
UqUDMn60YNORCMMpil0UEb/sXq1Ccg==
=mwV3
-----END PGP SIGNATURE-----

--t0UkRYy7tHLRMCai--


--===============1840741190809231775==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1840741190809231775==--

