Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 942268D01C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:54:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K2dsi+IWSNGe/XMRArmYLX9iN7fYsRap3MBmzx6hm1A=; b=ZLkD24bHs0z5xr/fCLS22VajR
	feJ8r3GtzIe8fshuDUKOG0bhrO2sgaXhIwbnua9i667e+dVP84Gn6+JvCGfLjt4JebyeVHBSPKSRc
	sKqz/VHQJ19bRaoO8R/Fpd8WUQhY3NewAtKYNgOT5iq3IsDEcyzpAc69VX8UNYOAYB/hIcA7Q2VdH
	GWjtOo+7ECmrTToTGjYWhQWK1enIB2yIfi/+wUmXZ6YZBYZTtVZjJLhjRYkmpJ1oIfRCB+sYWPa/H
	LYAAUIMnpDwZZWeQBG0wJl+Umg2jpocjki+DsLEfMWETMccjARpErt269Uwp0xkSynq112ZXeKsTe
	4GZfxxurw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpzO-0006sQ-FN; Wed, 14 Aug 2019 09:54:42 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpzB-0006rt-6b
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:54:31 +0000
Received: from localhost (p54B33326.dip0.t-ipconnect.de [84.179.51.38])
 by pokefinder.org (Postfix) with ESMTPSA id 93FCC2C311C;
 Wed, 14 Aug 2019 11:54:25 +0200 (CEST)
Date: Wed, 14 Aug 2019 11:54:25 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v1] MAINTAINERS: i2c-imx: take over maintainership
Message-ID: <20190814095425.GD1511@ninjato>
References: <20190812050817.23279-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20190812050817.23279-1-o.rempel@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_025429_392485_100720F6 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-i2c@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Chris Healy <cphealy@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: multipart/mixed; boundary="===============1594814272962686627=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1594814272962686627==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qGV0fN9tzfkG3CxV"
Content-Disposition: inline


--qGV0fN9tzfkG3CxV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 12, 2019 at 07:08:17AM +0200, Oleksij Rempel wrote:
> I would like to maintain the i2c-imx driver. Since I work with
> different i.MX variants and have access to the hardware, I can spend
> some time on the reviewing of this driver.
>=20
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Applied to for-current, thanks a lot!


--qGV0fN9tzfkG3CxV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1T2lEACgkQFA3kzBSg
KbbrhRAAneGKR0f3Txpqt75JZfm8+UF8/uBefRK+GlL/0soGoOY6PewgZ1U30saG
Ikd3B3OKt+30GHob2SkB52Y5j1ABWdk8xYvZYrHnZYGeaQZMWUawbfGNOo00ZE8r
znSeAvWRHUswoV+UhyhjxlElkSa9KrOKZVMDlaGFA1lAVuY5uW7DPRE4ZWfGwW+y
U8oSHeeOZLcAENtbx+qqThwtcED3JTsw+LHg+zRAInVRBChLvL6EQ+FvF3W2fNir
dXP2i7hr+hUCL5hL49w1tNt99bQeC5khfHaq4EEEH+fvaGTrtRklBbQv57PeVDoy
wgncQpNUlMuoRoFBI9gSD3nQNnanDnIT7uDnl+8x6FokTFLlHNlDXitVXVaES5BO
LXa3GRO+UE4SJzRcR0ykKFQOyF0OYLRVj8MMqE+n+TAR38DDDujQyBRHP2n4BMSK
RVZBsftCiykNVWXKxiSCqhbk7brk7juTwBDjpcxYYR43VYxwQJegvD7P1TgCT4es
fxQ6gkD4Mfpd0Bu+87rWGC++tC5eoQPcoSraImfCs8ybIDmW4pXQDAzipB3r1Wux
nth4OPyelsWkXaE8AqtdD9vdJUf5yn0QeXqD7KuTnWWXCeV4kjH4ZsX5S4C5JPAe
t6J4VBlMS/RtuFLFOvI+A/IerBJptsOoQvLwdlGjKzXfErva/N0=
=61CS
-----END PGP SIGNATURE-----

--qGV0fN9tzfkG3CxV--


--===============1594814272962686627==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1594814272962686627==--

