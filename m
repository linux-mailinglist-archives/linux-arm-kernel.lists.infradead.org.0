Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DA810049F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:45:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HaOXok/X34qy8CcqQkS635ndUwjRnOd15eTI4WWts0M=; b=eOkOkjZW6mJHPzM5fRAbE2rcW
	K2fOfZwqyzS9i+9jZtEhoAlIZwLizUvrWw0p4VsEH3rku8kWXltMkM/IwWXhsoVc+2xFW9UK1/gUZ
	cofVWulJS5SnBvaw82OnYlbSoinM6LOJFatJvTPHvBPphoQLQ0o6EkZ97od8d2Pm+JWBbnEcB7IaQ
	cDvI1mJDsNi5vfMKRyFszLx5SMwbssyb1PYJuNIhSWos/lMCZjtFCy/pqSW7+Vl4HmqdA3/i2QFdP
	akC+RLvLaDMO7vopEfEsjozBDWWN9GLYAZEhMf35to45W/tJ3k11aXOHQbFz5uWROvPT8aANgntnw
	NRpWTkleg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfTF-0005fc-IV; Mon, 18 Nov 2019 11:45:29 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWfSs-0004MC-1B; Mon, 18 Nov 2019 11:45:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D2085AD88;
 Mon, 18 Nov 2019 11:45:02 +0000 (UTC)
Message-ID: <3209f601ad0537a7ef01e2a752f022ccf8816210.camel@suse.de>
Subject: Re: [PATCH 3/3] ARM: dts: bcm2711: Enable HWRNG support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stephen Brennan <stephen@brennan.io>
Date: Mon, 18 Nov 2019 12:44:59 +0100
In-Reply-To: <20191118075807.165126-4-stephen@brennan.io>
References: <20191118075807.165126-1-stephen@brennan.io>
 <20191118075807.165126-4-stephen@brennan.io>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_034506_246946_E32F438F 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-crypto@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: multipart/mixed; boundary="===============8409201856105092402=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8409201856105092402==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-BrzURT1nntfCQobYCsCl"


--=-BrzURT1nntfCQobYCsCl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stephen,

On Sun, 2019-11-17 at 23:58 -0800, Stephen Brennan wrote:
> From: Stefan Wahren <wahrenst@gmx.net>
>=20
> This enables hardware random number generator support for the BCM2711
> on the Raspberry Pi 4 board.
>=20
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Signed-off-by: Stephen Brennan <stephen@brennan.io>
> ---
>  arch/arm/boot/dts/bcm2711.dtsi | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.d=
tsi
> index ac83dac2e6ba..2c19e5de284a 100644
> --- a/arch/arm/boot/dts/bcm2711.dtsi
> +++ b/arch/arm/boot/dts/bcm2711.dtsi
> @@ -92,10 +92,9 @@ pm: watchdog@7e100000 {
>  		};
> =20
>  		rng@7e104000 {
> +			compatible =3D "brcm,bcm2711-rng200";
>  			interrupts =3D <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
> -
> -			/* RNG is incompatible with brcm,bcm2835-rng */
> -			status =3D "disabled";
> +			status =3D "okay";
>  		};
> =20
>  		uart2: serial@7e201400 {

We inherit the reg property from bcm283x.dtsi, on which we only define a si=
ze
of 0x10 bytes. I gather from the driver that iproc-rng200's register space =
is
at least 0x28 bytes big. We should also update the 'reg' property to:

	reg =3D <0x7e104000 0x28>;

Regards,
Nicolas


--=-BrzURT1nntfCQobYCsCl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3ShDsACgkQlfZmHno8
x/42dQgAiWoADYCp4IVFQLfny8DRGulI2ckkAswc80iZXIZSayMSqYsAogWqMDq1
IqOc4PUpzunlVDayHHLM4gxhvPZ+vVPbyQocAITnMo+kYw+CMdRKiwVSYw1ISuMx
idBzkpcpDNHRh84KoSxR+hCwFjZEKqG72OdwwMEuDQQ14V6MSUFoj0OTCfYBAWJF
KKYSn+GccciW0VwPzqXMNYDALxv6J3vhdDeOBskGwP4XCGdPu6VX5SBlFF2opS70
x7wIyX5Trf2w36VOihV2klVNf8QovaqpNzGpL73+3TjdwJV/zfuDRzTPrbRQdpj9
nQRFpEalCmqp7XUN1DxQFZ+yR9XAfw==
=OhCk
-----END PGP SIGNATURE-----

--=-BrzURT1nntfCQobYCsCl--



--===============8409201856105092402==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8409201856105092402==--


