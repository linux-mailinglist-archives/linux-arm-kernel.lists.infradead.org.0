Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4271FC5FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 08:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zQJ42hwy9E5zO8xr7U5//4Le2vsIL5tBmX0PmZ+FzEs=; b=LJr/518vZaTsRMbT0GGr67d3R
	lWsMYqGZichP0J3IKe0bTqa6KgSEX9uM06GV6SsGMThPnrGH1K2ZSK4zilGr6PDLwRpcg5hn1CwtZ
	DZQyt2ATARFKPngL8lH9r2VAAXJsU7vAXzWHi8d9JLZt2s19azzrVacTNXxsuLQVtrMWNBj5vrpVP
	fxqObNxXQhFsNiVNmEHJjVuDEHf0Qk7HV3wv6CUL5sBcNDF8+NMUAbx6C77OK0w29ymM9ZeGiycT+
	DxaHspBCLttPJU92REljA9k0WKHvqpL0bNCqhPjl5GSQNTUXKFEQj48Wa2O2ghQq2apfoFr+4RD+d
	4R6K9M2jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlRDC-0004vS-3G; Wed, 17 Jun 2020 06:06:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlRD2-0004ur-MD
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 06:06:06 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jlRCx-000656-0y; Wed, 17 Jun 2020 08:05:59 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jlRCv-0003VZ-Pp; Wed, 17 Jun 2020 08:05:57 +0200
Date: Wed, 17 Jun 2020 08:05:57 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] soc: imx: Kconfig: force using OF when COMPILE_TEST
Message-ID: <20200617060557.tep6yza4upypij26@taurus.defre.kleine-koenig.org>
References: <1592216485-20574-1-git-send-email-peng.fan@nxp.com>
 <20200616155944.ujespw6johpjst4g@taurus.defre.kleine-koenig.org>
 <6ca1c2a4-0dfc-ea90-b890-58094836818d@arm.com>
 <DB6PR0402MB2760A1C9863C27F020FCAE58889A0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <DB6PR0402MB2760A1C9863C27F020FCAE58889A0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_230604_727686_D7F5DF0D 
X-CRM114-Status: GOOD (  22.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4679091761737679940=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4679091761737679940==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qpwawga52vmoyrw5"
Content-Disposition: inline


--qpwawga52vmoyrw5
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 17, 2020 at 02:05:33AM +0000, Peng Fan wrote:
> > Subject: Re: [PATCH] soc: imx: Kconfig: force using OF when COMPILE_TEST
> >=20
> > On 2020-06-16 16:59, Uwe Kleine-K=F6nig wrote:
> > > On Mon, Jun 15, 2020 at 06:21:25PM +0800, peng.fan@nxp.com wrote:
> > >> From: Peng Fan <peng.fan@nxp.com>
> > >>
> > >> Fix the build warning with x86_64-randconfig
> > >>>> drivers/soc/imx/soc-imx8m.c:150:34: warning: unused variable
> > >>>> 'imx8_soc_match' [-Wunused-const-variable]
> > >> static const struct of_device_id imx8_soc_match[] =3D { ^
> > >>
> > >> Fixes: fc40200ebf82 ("soc: imx: increase build coverage for imx8m soc
> > >> driver")
> > >> Reported-by: kernel test robot <lkp@intel.com>
> > >> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > >> ---
> > >>   drivers/soc/imx/Kconfig | 2 +-
> > >>   1 file changed, 1 insertion(+), 1 deletion(-)
> > >>
> > >> diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig index
> > >> d515d2cc20ed..aadf13c9d396 100644
> > >> --- a/drivers/soc/imx/Kconfig
> > >> +++ b/drivers/soc/imx/Kconfig
> > >> @@ -19,7 +19,7 @@ config IMX_SCU_SOC
> > >>
> > >>   config SOC_IMX8M
> > >>   	bool "i.MX8M SoC family support"
> > >> -	depends on ARCH_MXC || COMPILE_TEST
> > >> +	depends on ARCH_MXC || (COMPILE_TEST && OF)
> > >
> > > A bit prettier (IMHO) would be:
> > >
> > > config SOC_IMX8M
> > >   	bool "i.MX8M SoC family support"
> > >   	depends on ARCH_MXC || COMPILE_TEST
> > > +	depends on OF
> > >   	default ARCH_MXC && ARM64
> > >   	select SOC_BUS
> > >   	help
> >=20
> > That's not just prettier, it's logically correct. If some code needs OF=
 to build
> > correctly, then it depends on OF, regardless of *why* it's being built =
at any
> > given time.
> >=20
> > That said, if the only issue in this particular case is the warning abo=
ve, then it's
> > hardly a real dependency; simply marking the of_device_id data as
> > __maybe_unused (like various other drivers do) should suffice. Limiting
> > COMPILE_TEST coverage instead of actually fixing simple issues that it
> > exposes seems a bit backwards...
>=20
> ok, I'll use __maybe_unused in v2, but it actually not make sense to comp=
ile
> this file for x86_64.

This is wrong in a subtle way. It makes sense to compile the driver on
x86_64 (and other archs) for QA reasons. It doesn't make sense to use a
kernel on an x86 machine with this driver enabled. That's why we have
COMPILE_TEST which you disable if you want to create a kernel to
actually run it.

Best regards
Uwe


--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--qpwawga52vmoyrw5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl7pssIACgkQwfwUeK3K
7AncXwf8DV/Bro94WknCch7bwt7I2khFnmMBPFC8gAxUzmV/xCz6C2Qp/o1pukhP
ai8a3ZO37M2cQQEK6sqFe3CkjVwWjVQUJA8ng7Jv9oOSyAyI+L1bfI+jNDeOU4N9
VAV7ecQD8R6vHo+Ew3h5Tx39a83FRJjrdgmQzE8UyZfznOMlyeNqKIrHJ5CjwYZX
nxkEYJBaLy9yucQJSGmU2YTS+/rMf0klr2hAAmZH2npv3/cKCJaSu0DzLdbAZ+i7
TGkpDD5qIR1Dtw3LL8coxwabcgqIU7S+UXDqlOsRomde0GTkekfWTJ+up4a3ywVM
U4RS/BzIiDZVcENFHGCl5WDOrCZSsQ==
=Fj6Q
-----END PGP SIGNATURE-----

--qpwawga52vmoyrw5--


--===============4679091761737679940==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4679091761737679940==--

