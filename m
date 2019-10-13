Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9384D5691
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 17:08:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d7ZOn/dAf73tPg98buNruudAvs4vrDabn7ykG73V04g=; b=LSW7MWm/iy/V8NQCkRQ9e8tIB
	+pQJIbfGiPBD6bXIPe0f3ceqYRdo1GEVBRUHXJlYm7AvICoPkiuZMCCAOXxIeirePvhWZ5SjFSz4w
	CKoO7gKgI3C8CeTk/wEzCjO7vOxYckDSDRHhFZ/fqJmXJMNtXBw+oCesIquJZKL8GKHDIaVnrT3FN
	Z6O28HzeWcA04hnD04ESUE8Pj2+je7VX9noLANtp+ld+/rBmOy7oAD518aQwfpJQxGMhkeKgVrbh3
	ROqPXhM/N2guHnACL5iC3yFSvPTxz+7azQaL0T3Wr7UhXzbTXSnfJwHcESUULYz4jXjroE4OPIICl
	rK8BaGf8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJfU9-0004Jr-Fg; Sun, 13 Oct 2019 15:08:41 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJfTo-0004Ac-MR
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 15:08:22 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id D044680238; Sun, 13 Oct 2019 17:08:03 +0200 (CEST)
Date: Sun, 13 Oct 2019 17:08:15 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH 8/8] ARM: OMAP2+: Initialize voltage controller for omap4
Message-ID: <20191013150815.GF13278@amd>
References: <20191010001224.41826-1-tony@atomide.com>
 <20191010001224.41826-9-tony@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20191010001224.41826-9-tony@atomide.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_080820_974440_B607E0F1 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Merlijn Wajer <merlijn@wizzup.org>, linux-omap@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2479985975132430250=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2479985975132430250==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="TeJTyD9hb8KJN2Jy"
Content-Disposition: inline


--TeJTyD9hb8KJN2Jy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed 2019-10-09 17:12:24, Tony Lindgren wrote:
> We're missing initializing the PRM_VOLTCTRL register for voltage
> controller. Let's add omap4_vc_init_pmic_signaling() similar to what we
> have for omap3 and enable voltage control for retention.
>=20
> This brings down droid4 power consumption with mainline kernel to somewhe=
re
> between 40 and 50mW from about 70 to 80 mW for the whole device when runn=
ing
> idle with LCD and backlight off, WLAN connected, and USB and modem modules
> unloaded.
>=20
> Mostly just rmmod of omap2430, ohci-platform and phy-mapphone-mdm6600 are
> needed to idle USB and shut down the modem. And after that measuring idle
> power consumption can be done with reading sysfs entry every ten seconds =
for
> /sys/class/power_supply/battery/power_avg. Then rmmod of phy-cpcap-usb wi=
ll
> save few more mW, but will disable the debug UART.
>=20
> Note that sometimes CM_L4PER_UART1_CLKCTRL at 0x4a009540 does not idle
> properly after unloading of phy-mapphone-mdm6600.

Acked-by: Pavel Machek <pavel@ucw.cz>
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--TeJTyD9hb8KJN2Jy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl2jPd8ACgkQMOfwapXb+vKc6QCfTInHiCOojLoYl+MSblD5nQ+O
DR4AoKLHNZ8Zwjp6K/Te03yOdXiHsdQx
=5UcY
-----END PGP SIGNATURE-----

--TeJTyD9hb8KJN2Jy--


--===============2479985975132430250==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2479985975132430250==--

