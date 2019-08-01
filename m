Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9CE7DB0D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MbyuKvrcNl1fCD65j5CfZz6nkvZk09gbhQWld1EcWG0=; b=r9XB4u7bBVBS2HSMVVcOvQuxC
	a1VzIuTL0CXCcqMI1P1GN2zsm5lk+fwvdFrMg5F1oiU5eqrbRe6WNYXU4IkWjyJJUYfAAaW6LE5ES
	7tP2aTWnlYQ4oJCbnH4w/iHVf66Mx3LHNdt9xDI+jlUzXG8i5m5aiR6ospSwoywFtVL2ocS/T3kjY
	fKLcArPe6CR2RiR8et2G9W5GPkVNZ0Mj1H7uo87eE9y5kc3padV3dvQ4/8wlVoizK/SyOwWPm1T74
	9GBJkhQao7Cm83LJufjwqqH4kg2OU8EJJjt6om/fw94zPmHaVH2iPA7O1nzDSR1idANcc/SDP6anR
	B1+ZqAcoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht9x2-0003In-Rt; Thu, 01 Aug 2019 12:12:57 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ht9sx-0006sl-JH
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:08:45 +0000
Received: from localhost (p54B333D2.dip0.t-ipconnect.de [84.179.51.210])
 by pokefinder.org (Postfix) with ESMTPSA id B05342C2817;
 Thu,  1 Aug 2019 14:08:39 +0200 (CEST)
Date: Thu, 1 Aug 2019 14:08:30 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v3 5/7] drivers: Introduce device lookup variants by
 ACPI_COMPANION device
Message-ID: <20190801120830.GA1659@ninjato>
References: <20190723221838.12024-1-suzuki.poulose@arm.com>
 <20190723221838.12024-6-suzuki.poulose@arm.com>
 <20190726202353.GA963@kunai>
 <20190801115856.GS23480@smile.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <20190801115856.GS23480@smile.fi.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_050843_836391_EB5C0903 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: rafael@kernel.org, gregkh@linuxfoundation.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-acpi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 linux-i2c@vger.kernel.org, Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: multipart/mixed; boundary="===============7151816016213223913=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7151816016213223913==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="azLHFNyN32YCQGCU"
Content-Disposition: inline


--azLHFNyN32YCQGCU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 01, 2019 at 02:58:56PM +0300, Andy Shevchenko wrote:
> On Fri, Jul 26, 2019 at 10:23:54PM +0200, Wolfram Sang wrote:
> > On Tue, Jul 23, 2019 at 11:18:36PM +0100, Suzuki K Poulose wrote:
> > > Add a generic helper to match a device by the ACPI_COMPANION device
> > > and provide wrappers for the device lookup APIs.
> > >=20
> > > Cc: Len Brown <lenb@kernel.org>
> > > Cc: linux-acpi@vger.kernel.org
> > > Cc: linux-spi@vger.kernel.org
> > > Cc: Mark Brown <broonie@kernel.org>
> > > Cc: Mika Westerberg <mika.westerberg@linux.intel.com>
> > > Cc: Wolfram Sang <wsa@the-dreams.de>
> > > Cc: linux-i2c@vger.kernel.org
> > > Cc: Mark Brown <broonie@kernel.org>
> > > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> > > Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> >=20
> > From my side, OK:
> >=20
> > Acked-by: Wolfram Sang <wsa@the-dreams.de> # I2C parts
> >=20
> > yet you missed to cc the I2C ACPI maintainers. Done so now.
>=20
> Acked-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
>=20
> Thanks, Wolfram, for notifying.

Sure. There seems to be a problem, though? Please check:

[PATCH 1/3] i2c: Revert incorrect conversion to use generic helper

which came in today.


--azLHFNyN32YCQGCU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1C1joACgkQFA3kzBSg
KbbX9w//ahSM//xepZXO66KqHlHww6eDykCIoj3oQpGcr21WoXQ5yAdv72yYXQtq
rl7XeSaJ8Iv2ssC0wmeBfJeChcltWVeiQ3pMr9j6iKLEAcqkjzEBqS3V1jbs4mkE
ozU97VeC3SqzksBRLDE3Ff4tRm4I5hH5JomEjPFX5Vbilf4XrD2BFFCT8Mq1C068
lxX4PtvnkYkmjY3OC0brXw//i5IIo5ht66ilLow4Lto63tGqyAzxvrgEQeG5HT9D
zzel4ygQxoTJLefLD9Vm1NdjIfcDSA0BUEe6zyaKfUS/P1E+tQS3oqgLuInor5zf
jXmcw6LwlYDn7S4A+8vkGrn6fhgY4zBBN5qOZz9yNOb3d83ifyiPZ1TiGnXuE5U4
ROK5OCrgCrIUB3QuDUQGNFet3j3WpUh4HObje5YOyh2Rb3snk8cx+uCMwWjg2v+d
hMgoaegs+wjORIZ5p+db7XbdIiWwpxG86N80mKvoxzQHik9wkDDBfczv2BGK2hsA
Zw8PJalgcGhHfaSZuuADyrOvr6Gg6s7pEi9BlpF7/6JrAZ+a7zTIE4+IShwsG8vu
UaDL7UBoY5JVzvgbAt98C1DKaaQolC2ccLv6HOKgeNoXuA0RLOQj7A47tkHEHuEq
O8vqYaYJOZPGdN2Kx94xvpmwsAR2hFLvGuuHqW6V9LqCBP18meY=
=wX+k
-----END PGP SIGNATURE-----

--azLHFNyN32YCQGCU--


--===============7151816016213223913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7151816016213223913==--

