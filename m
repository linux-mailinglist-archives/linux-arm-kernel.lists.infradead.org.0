Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 508AC86DF9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 01:40:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ectKVbblJ1IJydRkOIqz0T4cQZVwus+V5qboccq6cjQ=; b=JCY7aoOFbhDSLPTLfKsyJWtEw
	SAfLo+RzVQaozHrrIWDmD0/xNnJBco+RgGpTYFrpcqsC0fDTltGSM2+TxjeOPj25I3yVptLg5mXG3
	+X36qVM6S0dCMlF9Z6b/4pxu/hY6Vk+Hj/3qlqIg3+x6/WU19MHTXFJ8KfVHyav6UnVScSB0aznAQ
	r0bY++2Xem3XeWU+nJ+kHeAhG87teTtd11plDaQvJbd7aoQfq+u/vSEknpV8YAUvxW5fiVHm1py9d
	SpFRJVs64TNZWvWJxh4Y1gmZPChHTkfJRjzVH4za8Zfcp+o+2QBQ90Vvth4D9DSgZGC61/7zSxHfY
	6zOAScGtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvs0e-0005Jy-BF; Thu, 08 Aug 2019 23:39:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvs0X-0005JZ-3E
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 23:39:46 +0000
Received: from earth.universe (unknown [185.62.205.103])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E81492173E;
 Thu,  8 Aug 2019 23:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565307584;
 bh=hLWsFUdUcKRF0BwHo3bvjZSVzrjv6mmq4xPi05kJJ/4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MNHo0Mqax8BfZY/2I5nzeHuwwEznk/RUpCQqzDq5omoeaheqwojMryMSScBtB/j6i
 ZkP/qKLkKnKBH1AUuMgnk+/eja3bpIvXgmrJUBDlXR7ntXrtowug2350E3I2okc6Pj
 OcfXU/hIqST1Lafe5ba18WaxT4KTNKp1GRy5/J/Y=
Received: by earth.universe (Postfix, from userid 1000)
 id 68EEC3C0944; Fri,  9 Aug 2019 01:39:41 +0200 (CEST)
Date: Fri, 9 Aug 2019 01:39:41 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [PATCH 13/22] input: omap: void using mach/*.h headers
Message-ID: <20190808233941.v6elo2mdji5awylu@earth.universe>
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808212234.2213262-14-arnd@arndb.de>
 <20190808214257.GF178933@dtor-ws>
 <CAK8P3a2TOcjxwCBGkZAhMAf9HuTL=FAB1e0=FAg+oHB0U1nJ0A@mail.gmail.com>
 <20190808221950.GG178933@dtor-ws>
MIME-Version: 1.0
In-Reply-To: <20190808221950.GG178933@dtor-ws>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_163945_216062_D11F2531 
X-CRM114-Status: GOOD (  20.57  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
 linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============0618573685573026968=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0618573685573026968==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4tjmcfjvugwwn6md"
Content-Disposition: inline


--4tjmcfjvugwwn6md
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Aug 08, 2019 at 03:19:50PM -0700, Dmitry Torokhov wrote:
> On Thu, Aug 08, 2019 at 11:46:45PM +0200, Arnd Bergmann wrote:
> > On Thu, Aug 8, 2019 at 11:43 PM Dmitry Torokhov wrote:
> > > On Thu, Aug 08, 2019 at 11:22:22PM +0200, Arnd Bergmann wrote:
> > > > By using the new linux/soc/ti/omap1-io.h header instead,
> > > > compile-testing can be enabled, and a CONFIG_ARCH_MULTIPLATFORM
> > > > conversion of omap1 may eventually be possible.
> > > >
> > > > The warning in the header file gets removed in order to
> > > > allow CONFIG_COMPILE_TEST.
> > >
> > > Given that we want to migrate people off this driver everywhere but
> > > OMAP1 I wonder why we would want to improve compile coverage of it.
> >=20
> > Mainly for consistency: I'm converting all omap1 drivers in this series=
 to
> > not rely on mach/* headers and to let them be compiled standalone.
> > The other drivers don't have a replacement, so I could treat this diffe=
rent
> > from the rest and skip the Kconfig and platform_data changes if you
> > prefer.
>=20
> Yes, because at least with the version you posted we are losing the
> #warning telling people to move to matrix_keypad. We could do:
>=20
> #ifndef CONFIG_COMPILE_TEST
> #warning ...
> #endif
>=20
> if you really want to allow compiling standalone for testing.

FWIW the driver depends on ARCH_OMAP1 and the warning is
only printed for !ARCH_OMAP1. In other words: The warning
is never printed at the moment. All OMAP2+ boards moved to
matrix-keypad long time ago and the driver does not support
OMAP2+ anymore since f799a3d8fe170 from 2012.

-- Sebastian

--4tjmcfjvugwwn6md
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl1MsroACgkQ2O7X88g7
+poQJBAAnjfNcZ21PrPoH/EmfeeRe4fGSZaNSCLXNqf+HuY+WIUD72F8q4ywHwvn
Fkm85facQO3vu6RCVoapSh5nZVHkL/WyM6fqDhJDuBZvqleHE68sgmBY9KIgg7ur
qeYMF4ul4BhvC218JY0dM/xwV0uwp61g3T+4vgUPvT3YsnB5uoYa7wT2D71lilr8
Q+S/Az/rTrrn7uI1vKXZjfUKsm/cWuWyAHbzgH7Ax8f/gxcLUoHS1IUTiwyCFzKJ
BxAGPsZziw7Un8d3LPwcSzqB9VslryGs4hiuiaSAYaYN6+NrjjlCI7wka+HFfKGO
0OumM77eQCkVNgCSafoTxJWZZo9HsTAeKkJy1iDGWVeiSWqHKPUj/YDj6ityxuba
5LKhZan4Gx1JoihDEw69N/a0ZxNvYJzHPBffqHbSLOc7QkWeveoSUMGgJjLLNl/f
UD7U1rC1ugAz3jqmgS5it+35pCA17glrVtIPzDsTPx90lGK0lxe+krbPClVkeckP
IIkuf4xyJtsep5fQQDGxtCape8V52GtQYre1BjBxQU/k7KUGR+08gkiRmc3x8qvK
v05wmqSeIyGXox8WrvB/hARab8/2nTA6hf+LedV+ofvNzRGBKM8hrgdpfveXlwhF
HEJ74R2g3SOIxtXz/CuFWgUwsHEEF1NlaBOAaNa+1H9tFMMRgIo=
=sia4
-----END PGP SIGNATURE-----

--4tjmcfjvugwwn6md--


--===============0618573685573026968==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0618573685573026968==--

