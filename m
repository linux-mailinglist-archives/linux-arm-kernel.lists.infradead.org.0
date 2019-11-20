Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7235E104493
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 20:50:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qW7jtE/+DdmunkrlxuzIyi97+9F2YaqUCq2OS7qB6Aw=; b=YCoixVoQHeIc+evBhF3OepeHe
	aAwDGzxYIMYxHEZJw1FcjS4KPevOI2Oln3r4OHaNLKoLAoJmlAnGZPGRTn8N7NNylISUTUgSpB1R/
	4UdUa1omHCDGNzUyD4qhA6P3/57iytE/oOq3aYs+ZYw1H0k3pXIrQ+MuIzDSfQu1N0ji7oF61nNt3
	G2bMovdc/6FQayamsX+Lgdju2iskEaEStXx5irqZ0qbXXAMhKTr1rqvp+yE74vWswnJhEvNsQSIZu
	JL00YoNB+uBfDP727SzbgDljYeVYiTuYwr9UcM5xOXf3OrAM0Lk9cOfVXJKwbURF8r2Bm6/WETrTC
	U1rWdCCZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXVze-0004py-LY; Wed, 20 Nov 2019 19:50:26 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXVzV-0004p8-K1; Wed, 20 Nov 2019 19:50:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 29ACDB14A;
 Wed, 20 Nov 2019 19:50:16 +0000 (UTC)
Message-ID: <6aaa37d2cbe91c177b7be2d7f8aa3846efe3dc34.camel@suse.de>
Subject: Re: [PATCH v3 0/4] Raspberry Pi 4 HWRNG Support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>, Stephen Brennan <stephen@brennan.io>
Date: Wed, 20 Nov 2019 20:50:14 +0100
In-Reply-To: <99554159-6abb-6ea5-aebb-57a148a59b78@gmx.net>
References: <20191120031622.88949-1-stephen@brennan.io>
 <99554159-6abb-6ea5-aebb-57a148a59b78@gmx.net>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_115017_808167_164BFEC4 
X-CRM114-Status: GOOD (  14.24  )
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-crypto@vger.kernel.org, Matt Mackall <mpm@selenic.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9091469692085728190=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9091469692085728190==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-iQqSDeLkAUWuKqj/9yXJ"


--=-iQqSDeLkAUWuKqj/9yXJ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-11-20 at 17:16 +0100, Stefan Wahren wrote:
> Hi Stephen,
>=20
> Am 20.11.19 um 04:16 schrieb Stephen Brennan:
> > This patch series enables support for the HWRNG included on the Raspber=
ry
> > Pi 4.  It is simply a rebase of Stefan's branch [1]. I went ahead and
> > tested this out on a Pi 4.  Prior to this patch series, attempting to u=
se
> > the hwrng gives:
> >=20
> >     $ head -c 2 /dev/hwrng
> >     head: /dev/hwrng: Input/output error
> >=20
> > After this series, the same command gives two random bytes.
>=20
> just a note: a more expressive test would be running rngtest (package
> rng-tools) on this device.

Just had a go at it,

root@rpi4:~# rngtest -c 1000 < /dev/hwrng
rngtest 2-unofficial-mt.14
Copyright (c) 2004 by Henrique de Moraes Holschuh
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

rngtest: starting FIPS tests...
rngtest: bits received from input: 20000032
rngtest: FIPS 140-2 successes: 998
rngtest: FIPS 140-2 failures: 2
rngtest: FIPS 140-2(2001-10-10) Monobit: 0
rngtest: FIPS 140-2(2001-10-10) Poker: 1
rngtest: FIPS 140-2(2001-10-10) Runs: 0
rngtest: FIPS 140-2(2001-10-10) Long run: 1
rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
rngtest: input channel speed: (min=3D1.284; avg=3D113.786; max=3D126.213)Ki=
bits/s
rngtest: FIPS tests speed: (min=3D17.122; avg=3D28.268; max=3D28.812)Mibits=
/s
rngtest: Program run time: 172323761 microseconds

AFAIR (Arch wiki) some small failures are acceptable.

Regards,
Nicolas


--=-iQqSDeLkAUWuKqj/9yXJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3VmPYACgkQlfZmHno8
x/747ggAscLDM0fF7tOoTWdcO+lp+zKBM4o38uVkOwes/laW6msQMiAvB0qW7j4V
8FRmDLDFt34e1Ta9NKZW3GloAUkVkrS/iPX9msSCy7qlodRjRYdkgF5rbSH4YSIK
K/9p8MXknOsXsJ9kQCiexooNiiKspt2XLl1lwtLuhHVdtNEVVw1phdlPhfU37BAW
tV1n45JjdagGkNS8JrjvXNPbCRkSk8SStb/IjldltTO1Rvp//I5Whj0CWXnNzM0t
HDhXrZiO7+5NB30WU9gP+o3NU8b0KiyAdoe5RgRzTCqlnZsK2rdhJ4eDQKzVpvWR
/Ra8OIJmgCp4aezFVms92D0KO2dB6w==
=VuSq
-----END PGP SIGNATURE-----

--=-iQqSDeLkAUWuKqj/9yXJ--



--===============9091469692085728190==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9091469692085728190==--


