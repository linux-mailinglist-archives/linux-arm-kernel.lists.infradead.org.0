Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB561F3E7F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 16:42:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wWHsN80seXcDzYV5qF8MFF0mo8CLAPCAXAFRSnGJPs8=; b=oqABCLLJhDRT1zRLZmWc4FVn7
	flCmnEFkVoJpVtB5kxW5sP1EKC7BDts1coWwltmcRBiNQCYaAuU1VUANbLIYdr1leAHha/DuerxFG
	Y8/92a28D8mD7+PUIs5BlycNEqwYl6tkGN8m1EI6fox1/k1VP1pk+YcAb7cKpMk2ZTpj3ulScpHih
	hkzxf3QzoQrSs4CnuRPz+/A1BdS+4N34FGWsoXhYgvv+P3k2vVy5UMuOp6ISUPOADb0b8M3HGZfSI
	O54Q0cscDgevK4IfOZf42K6B6TJN6kxd2cDlrqzsZ96l7QkU6NcN/T/CUZytZ03KS/X0zhFELXSKF
	PUB9C09Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jifS9-00060w-9z; Tue, 09 Jun 2020 14:42:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jifS0-00060X-Hz
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 14:42:05 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1442D2072F;
 Tue,  9 Jun 2020 14:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591713723;
 bh=DBeZHLEQGulEBu3IQlBvivbxuD7CpCjdJ39fxG4UDBw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Khl7WXZjz0yf6NrpGSUGwKvt+9K9Oxrk2SI7klUKYjRZn787104XzLQeBOo1pQ6XD
 8P3ZXbXVKjAzZIirxNhWJodow3QE8tArvfWVwI7OmyATVf1vglnnzFlbQgsUhrX9os
 sLU/nPY7O2QDkwwpcjPSl5w/ov2O5k6TSsc7WPf0=
Date: Tue, 9 Jun 2020 15:42:01 +0100
From: Mark Brown <broonie@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200609144201.GK4583@sirena.org.uk>
References: <c5632bfab3956265e90fc2fb6c0b3cae@walle.cc>
 <20200606114645.GB2055@sirena.org.uk>
 <dc052a5c77171014ecc465b1da8b7ef8@walle.cc>
 <20200608082827.GB3567@dell>
 <CAHp75VdiH=J-ovCdh1RFJDW_bJM8=pbXRaHmB691GLb-5oBmYQ@mail.gmail.com>
 <7d7feb374cbf5a587dc1ce65fc3ad672@walle.cc>
 <20200608185651.GD4106@dell>
 <32231f26f7028d62aeda8fdb3364faf1@walle.cc>
 <20200609064735.GH4106@dell>
 <32287ac0488f7cbd5a7d1259c284e554@walle.cc>
MIME-Version: 1.0
In-Reply-To: <32287ac0488f7cbd5a7d1259c284e554@walle.cc>
X-Cookie: Be careful!  Is it classified?
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_074204_634831_E478D74A 
X-CRM114-Status: GOOD (  25.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 david.m.ertman@intel.com, Guenter Roeck <linux@roeck-us.net>,
 devicetree <devicetree@vger.kernel.org>, Jean Delvare <jdelvare@suse.com>,
 linux-watchdog@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, shiraz.saleem@intel.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: multipart/mixed; boundary="===============0635593101543778319=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0635593101543778319==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0FM4RQAc0jwHekq5"
Content-Disposition: inline


--0FM4RQAc0jwHekq5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 09, 2020 at 04:38:31PM +0200, Michael Walle wrote:

>   mfd-device@10 {
>     compatible =3D "simple-regmap", "simple-mfd";
>     reg =3D <10>;
>     regmap,reg-bits =3D <8>;
>     regmap,val-bits =3D <8>;
>     sub-device@0 {
>       compatible =3D "vendor,sub-device0";
>       reg =3D <0>;
>     };

A DT binding like this is not a good idea, encoding the details of the
register map into the DT binding makes it an ABI which is begging for
trouble.  I'd also suggest that any device using a generic driver like
this should have a specific compatible string for the device so we can
go back and add quirks later if we need them.

>     ...
> };
>=20
> Or if you just want the regmap:
>=20
> &soc {
>   regmap: regmap@fff0000 {
>     compatible =3D "simple-regmap";
>     reg =3D <0xfff0000>;
>     regmap,reg-bits =3D <16>;
>     regmap,val-bits =3D <32>;
>   };
>=20
>   enet-which-needs-syscon-too@1000000 {
>     vendor,ctrl-regmap =3D <&regmap>;
>   };
> };
>=20
> Similar to the current syscon (which is MMIO only..).
>=20
> -michael
>=20
> >=20
> > I can't think of any reasons why not, off the top of my head.
> >=20
> > Does Regmap only deal with shared accesses from multiple devices
> > accessing a single register map, or can it also handle multiple
> > devices communicating over a single I2C channel?
> >=20
> > One for Mark perhaps.
> >=20
> > > > The issues I wish to resolve using 'simple-mfd' are when sub-devices
> > > > register maps overlap and intertwine.
> >=20
> > [...]
> >=20
> > > > > > > What do these bits configure?
> > > > >
> > > > > - hardware strappings which have to be there before the board pow=
ers
> > > > > up,
> > > > >   like clocking mode for different SerDes settings
> > > > > - "keep-in-reset" bits for onboard peripherals if you want to save
> > > > > power
> > > > > - disable watchdog bits (there is a watchdog which is active right
> > > > > from
> > > > >   the start and supervises the bootloader start and switches to
> > > > > failsafe
> > > > >   mode if it wasn't successfully started)
> > > > > - special boot modes, like eMMC, etc.
> > > > >
> > > > > Think of it as a 16bit configuration word.
> > > >
> > > > And you wish for users to be able to view these at run-time?
> > >=20
> > > And esp. change them.
> > >=20
> > > > Can they adapt any of them on-the-fly or will the be RO?
> > >=20
> > > They are R/W but only will only affect the board behavior after a
> > > reset.
> >=20
> > I see.  Makes sense.  This is board controller territory.  Perhaps
> > suitable for inclusion into drivers/soc or drivers/platform.

--0FM4RQAc0jwHekq5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7fn7gACgkQJNaLcl1U
h9AhrQf/dpQW8gsPG9Ua7FU/Ae75V1zwG5NKx2ioZcYzal7CqZg3Q0+ciOedLwFs
WELrgzSE7WB9V18aaNAg8CpMIKlBhqU+2I4JxSAZQWfuaFQgrP550jA5iij1L69d
RIxP1xrQClXSvmJa33MBpD95uFdGEPWxMOiSB72lLy4E7jr65KwJ55P6tcOlXo7L
Ma/qDeZ0tjrcZOtH5h3dPsJhEojskfrxWJq6CJ1UjXifZxvy+O/khY6E7TTetw3+
0b8ttqNSXE4Yk9Z7TKhYlonnqWphaX3XdoDvTlbgxmBldVUrr63UJCTbiCm5pKJ1
HYxxN5ha9XcJcvRtIDLWzkq7wpRCQg==
=rwO1
-----END PGP SIGNATURE-----

--0FM4RQAc0jwHekq5--


--===============0635593101543778319==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0635593101543778319==--

