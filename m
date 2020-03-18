Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA285189BF6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 13:28:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ap9eM0bKfJ3fmpxlwjhUeRXtDWA+Q0d8/i8sN9bvtVA=; b=r72cIBNKCX/pxIZUcsZS7wFKS
	/Gaz8tGtIMEpVM8rDXzRr4Q/P4sRS5iS+5UG5s1IgUZK/adxPrC5jKQvijjggyIKR2Dta5XqRlSsv
	+sKCRKuatiVxZH8FtDdMTfnN4cDndjQKIfhYWl5orFew84LYNeSE2d+k506M4e72C65uGa+UmclaG
	Y11PVU2UBTEieGCBhdkL+H7Yynj27Mnnrslx/17608DsJTkT7l2WjGgJOmHBhAEUa2N9amX1xpi9N
	kP3UHJH46nvSRtg+LJS497mipYjtieoaOg7QB9ho9hYXEkRg4eSm5M65R74P2tJQaupoVXJMemx39
	CGhU8EYlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEXnx-0007a7-8v; Wed, 18 Mar 2020 12:28:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEXno-0007Yb-53
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 12:28:05 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jEXnh-0004BV-N8; Wed, 18 Mar 2020 13:27:57 +0100
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1jEXng-0005YE-UQ; Wed, 18 Mar 2020 13:27:56 +0100
Date: Wed, 18 Mar 2020 13:27:56 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v1 6/6] m arch/arm/boot/dts/imx6q-prti6q.dts
Message-ID: <20200318122756.sfoyydaggn2vcbk6@pengutronix.de>
References: <20200318120354.4989-1-o.rempel@pengutronix.de>
 <20200318120354.4989-6-o.rempel@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200318120354.4989-6-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:26:51 up 124 days,  3:45, 155 users,  load average: 0.31, 0.10,
 0.03
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_052804_200613_97030821 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4477493566022301073=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4477493566022301073==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sl7c7igma5v47h5x"
Content-Disposition: inline


--sl7c7igma5v47h5x
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

oops,
forgot to squash this one. Will be done in v2

On Wed, Mar 18, 2020 at 01:03:54PM +0100, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boot/dts/imx6q-prti6q.dts | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
>=20
> diff --git a/arch/arm/boot/dts/imx6q-prti6q.dts b/arch/arm/boot/dts/imx6q=
-prti6q.dts
> index a6fd4eb2e78b..8880d56c59ac 100644
> --- a/arch/arm/boot/dts/imx6q-prti6q.dts
> +++ b/arch/arm/boot/dts/imx6q-prti6q.dts
> @@ -229,8 +229,23 @@ &sata {
>  &fec {
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&pinctrl_enet>;
> -	phy-mode =3D "rgmii";
> +	phy-mode =3D "rgmii-id";
> +	phy-handle =3D <&rgmii_phy>;
>  	status =3D "okay";
> +
> +	mdio {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		/* Microchip KSZ9031RNX PHY */
> +		rgmii_phy: ethernet-phy@0 {
> +			reg =3D <0>;
> +			interrupts-extended =3D <&gpio1 28 IRQ_TYPE_LEVEL_LOW>;
> +			reset-gpios =3D <&gpio1 25 GPIO_ACTIVE_LOW>;
> +			reset-assert-us =3D <10000>;
> +			reset-deassert-us =3D <300>;
> +		};
> +	};
>  };
> =20
>  &ldb {
> --=20
> 2.25.1
>=20
>=20
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--sl7c7igma5v47h5x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl5yE8gACgkQ4omh9DUa
UbNQiQ/9HK7bWAZI/ksEU1RVowMwf0bgmVkrH7ip/x4alfJ4447+CdHRfKp9KrLP
Pdy/cadbJyzViEmLqwM0pKoKE14q6yD8j9OJUHWk3ZqXPzMHhfgyETCe4sVYF2dN
v+Yf1LY3lutnRWHvyeZz9YKKkyf8HqYT783NzMJyxt1j4I74gmyBqUAFt44wFhbd
KPZ50tL9hS9nxzkZ0dk5RBcMvuv0Y0l+vOlcnndA+Ztxf9pHqaUwoBtWZ9Y7CmI4
SRQjZKUQUZ7oQCucHlKzScPzcZeV8oHGGGyKS9aYvhlZ2bAuXY9q4TUaz1UuXf85
RJ1BvRuQoy5xSHPJ4XmiGts2t088C94kqisDKugDs9ae36gY7mTqlsvVfH7dBThg
Jhz84deyp8HOCLYjQf3NyAj+vvl0QoEWZ2cv2jblGKQffUIsdIhJBDASIqsi1B0I
qHd5t3lIfLrWhNL/ZE4AL41NmT6IYFOqp7mgdQrQkB04/ievEGgvetsdCt1Mcq0H
DTZZGPUXMXyVuWl6YaIf+NPaT26KyNoYhLPdZBC0PRr7HHa7KrodCLzRSQ4t3CgM
U0gTVhyPdMWug/5RjqEnHA2wt63Yc86VleAjzkUZcmPx5xtuQ77fKQfkk24bMu9D
j4z7Iw827kZ31sk4lsyvOsDXKmgNCrlCPbHV3xGu4GEDgIK+cRY=
=9LEv
-----END PGP SIGNATURE-----

--sl7c7igma5v47h5x--


--===============4477493566022301073==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4477493566022301073==--

