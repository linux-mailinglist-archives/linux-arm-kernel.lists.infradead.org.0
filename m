Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 986F21E83A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9b2f/HDr1engmXglTQGGzxkXWrcxdhL+fNFUhjJAtnw=; b=Gsl94CLnWEwWP5OQ7uSKFqRB+
	cMOAibXnwZ/YgWhyWK1Ky4MPOAcnCxdA9EA2o1/P7E3M0VQ33ZBOgb8GrAMvsIFdvwQwEMUS7uCMz
	X9HRZZI1s7kVO5w11LHS/n5v7bmzOJ3D9ClyQNVgk3o6GQ2TGMGrlz+Ha5qpD3tKaL8myFPAAnZ+g
	IgMPR6Be7jFNaY4CobMW9R1nKWNNlJC1QQGd2QkfQBG98nR+Ke1WCjdGMbgaU8nEvCvdkDbOZL8tJ
	8ijsah573ggpWcA16Ao98rDuelqIsmvDYWQMvuMMrPE5gSZRaE1x3vRemRP23fRJ2PNO4cJ6lv4vi
	CIEFiiGUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehrO-00017y-7F; Fri, 29 May 2020 16:27:54 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehrC-00017K-U0
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 16:27:44 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 7ADB11C0385; Fri, 29 May 2020 18:27:29 +0200 (CEST)
Date: Fri, 29 May 2020 18:27:28 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH v3 4/5] arm64: dts: sun50i-a64-pinephone: Enable LCD
 support on PinePhone
Message-ID: <20200529162728.GB3709@amd>
References: <20200513212451.1919013-1-megous@megous.com>
 <20200513212451.1919013-5-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20200513212451.1919013-5-megous@megous.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_092743_117309_DA8121D7 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 David Airlie <airlied@linux.ie>, Linus Walleij <linus.walleij@linaro.org>,
 Bhushan Shah <bshah@kde.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 Martijn Braam <martijn@brixit.nl>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>, Luca Weiss <luca@z3ntu.xyz>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============5412632604176053436=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5412632604176053436==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="i9LlY+UWpKt15+FH"
Content-Disposition: inline


--i9LlY+UWpKt15+FH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> PinePhone uses PWM backlight and a XBD599 LCD panel over DSI for
> display.
>=20
> Backlight levels curve was optimized by Martijn Braam using a
> lux meter.

If it was possible to preserve lux values for individual settings in
the comment somewhere... that would be nice :-).

One day, it would be nice to have brightness settings in lux, so I
could easily set matching levels on multiple devices, for example...

Best regards,

								Pavel

> +
> +&backlight {
> +	power-supply =3D <&reg_ldo_io0>;
> +	/*
> +	 * PWM backlight circuit on this PinePhone revision was changed since
> +	 * 1.0, and the lowest PWM duty cycle that doesn't lead to backlight
> +	 * being off is around 20%. Duty cycle for the lowest brightness level
> +	 * also varries quite a bit between individual boards, so the lowest
> +	 * value here was chosen as a safe default.
> +	 */
> +	brightness-levels =3D <
> +		774  793  814  842
> +		882  935  1003 1088
> +		1192 1316 1462 1633
> +		1830 2054 2309 2596
> +		2916 3271 3664 4096>;
> +	num-interpolated-steps =3D <50>;
> +	default-brightness-level =3D <400>;

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--i9LlY+UWpKt15+FH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl7RN/AACgkQMOfwapXb+vKbHQCgpslUZBfZdvt5G0n+46mybETz
vjcAnj6Q0OeuWlJccqmIncSEyhdvvZh2
=w+1i
-----END PGP SIGNATURE-----

--i9LlY+UWpKt15+FH--


--===============5412632604176053436==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5412632604176053436==--

