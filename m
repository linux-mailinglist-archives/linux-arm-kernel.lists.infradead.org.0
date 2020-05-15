Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E91481D497D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 11:26:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CYPT+XEuxVt0VTsorA4BTCz7Qgfai61RlkRwv5ELSO8=; b=Hyy015p2q48Mmunn1ITT4otku
	Et7/ebCIFJXtaEjraLOom9Vb1m7e11EFbUvQNe5/kcBkHhKTe2rf9xGi/vpE+cAELEiiQiSoVxYqh
	Z2J9PphZE48SlqV7PZ8Rzgkb6lDz74B1Hk3m9vhz49/EW2qyY66hZJApgVFDFOUvI62e4rKNWnOHI
	LwvK+IpI/06WGcdxO5LpbcHUNxOdr3JYl7zkuqlfToI/AU0hXLtV5M1WoeAFpjtmWXoEv/p54Fkgr
	j90ZTomu6t7dBNVooKsRHZKyfF8GDReS9ZRWDvvCPcnhBQamizdbcP7yIdybDo2gfvcu1nD0hTxwQ
	pR33C0oBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZWc8-0005iU-BO; Fri, 15 May 2020 09:26:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZWc0-0005hM-2a
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 09:26:37 +0000
Received: from localhost (p5486CC07.dip0.t-ipconnect.de [84.134.204.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 53824206F1;
 Fri, 15 May 2020 09:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589534795;
 bh=JONR1pyDiZUuVzDV4dMV5uAVGjvbIMtv5fbdNtZJQJI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KXai6YkiZMm63/30RRwO6O6lX2sos3XjZi1OeX33TJi8uY9uz5zoDHc9rxPrUpVh1
 UUd5IXcrHntKLeLmcELp+ER0FaptSqknwrifF6K/jdQHdh0/lVozMcaY5MVRF7XfVd
 pNcJBZzF1n1Qtu2AdbgBEnPjlP345J+ZOoopxIG8=
Date: Fri, 15 May 2020 11:26:31 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH] i2c: at91: Restore pinctrl state if can't get scl/sda
 gpios
Message-ID: <20200515092631.GB2077@ninjato>
References: <20200513111322.111114-1-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
In-Reply-To: <20200513111322.111114-1-codrin.ciubotariu@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_022636_139862_FBA5AFCE 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.belloni@bootlin.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, ludovic.desroches@microchip.com,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0769289428006819585=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0769289428006819585==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dc+cDN39EJAMEtIO"
Content-Disposition: inline


--dc+cDN39EJAMEtIO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 13, 2020 at 02:13:22PM +0300, Codrin Ciubotariu wrote:
> If there is a strict pinmux or if simply the scl/sda gpios are missing,
> the pins will remain in gpio mode, compromizing the I2C bus.
> Change to the default state of the pins before returning the error.
>=20
> Fixes: a53acc7ebf27 ("i2c: at91: Fix pinmux after devm_gpiod_get() for bu=
s recovery")
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>

I squashed it into the other patch and applied it to for-current,
thanks!


--dc+cDN39EJAMEtIO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6+YEcACgkQFA3kzBSg
KbZIIw//RKnTmZzSi3ZieTQnZ64Pv7lEIn6QAM9FBzNk0Pzk8s5maVdQCzWq4/Ho
CPO1Dk/R1qWQxikxvyKx9sfqVOIXVVLiNs9lYFmMkdQPoALrVvbQicwimZFyUjNO
8zE1/LXvhLLU4UeP0oM+3OsD4v+5AvQ6igq84Etx2hfHO65w463NpP+tv6ut6q8R
Zc8UVpJTRf9NGYtk8h3AvThMT+R0KNaEOe445HNLVi8bUg+3cPpDExOrdMJcwqRl
QykdNi18hi05ATx+PqWDzSQIbUnLGVeEYQ/U3X14AJkfI+mJ0lFtWzK2RkOgUSbg
+m6JCs1/knFQOXE5hIc/S8RDX8Ags8uw1ztmcEvSQ4x8gSDtznWFHWkGo2g/2XeM
ZkttSMuwfHGebvQwSSmHEJdfi4h5IHax0qgf6IjLYaygA0n9Am7FBij6SKVTecxB
tgYroBOIX0FoJRvMxpF7TtIQQaK/IEPhotPt21ayT/worPk7Fj4pbBFBSBX9sPIg
Ydf/8JvTivFgPv6vcT+KV6DxJ5KmWdyuGd3mzh8JnlvEvl5sL6powbU2z8/yPpaK
2vBF2d1bdFy7kStu5McgvKROKCN+FVZBXOnNXOiHTYURQgpck1VqXuscl5xUkbci
nzyNwMVQ48o5ptBOMmHMUSC1MTg5Mxyq+7B3x0ZipY2SmPXdk68=
=Doda
-----END PGP SIGNATURE-----

--dc+cDN39EJAMEtIO--


--===============0769289428006819585==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0769289428006819585==--

