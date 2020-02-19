Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F7F165337
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 00:55:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GfZr8bZ9f+/c6IGntVVEVuDXZ2WdZsidpAyGnNhc9FA=; b=F+YVTNIYjwTcR+4XCGPizLvk3
	iyD/lesMACqma5lFJrbT573Bj+EQ/Z2yMbMvvKANxALDb66ImXiKmKmQwxXs5E20NhGFOqiuur6Rg
	faT723z3Gc7dp1VEezv97IKsf4rjiBgLrzQLsZCcCyBBmzDOJ6VNkcvL/8gfM+Bd6dVFDPgk3PL5/
	yD+z86KIY4OfvsF9a8f2ybNy5+B7Vwu6XgIWzaMkTVOR/QWkKI2T4IW6NtUKS3yyeOPUlF6jHCc90
	GwZ8++t43jPvR04R3N6n9j+J8jq7tPudHSlPR4cBto9ZPt67OhnkEQG4c/LactRLevkeTun0FPKH1
	hyiBVc85g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ZBD-00038F-Ot; Wed, 19 Feb 2020 23:54:59 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ZB5-00037u-3m
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 23:54:53 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 88D151C013D; Thu, 20 Feb 2020 00:54:40 +0100 (CET)
Date: Thu, 20 Feb 2020 00:54:40 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH] backlight: add led-backlight driver
Message-ID: <20200219235440.GA25196@amd>
References: <20200219191412.GA15905@amd> <20200219194540.GD37466@atomide.com>
 <20200219205322.GA1227@duo.ucw.cz>
 <20200219211513.GE37466@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20200219211513.GE37466@atomide.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_155451_306450_F4C8C4FF 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.255.230.98 listed in list.dnswl.org]
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
Cc: daniel.thompson@linaro.org, mpartap@gmx.net, jingoohan1@gmail.com,
 merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 sre@kernel.org, nekit1000@gmail.com, tomi.valkeinen@ti.com, jjhiblot@ti.com,
 linux-omap@vger.kernel.org, Lee Jones <lee.jones@linaro.org>, agx@sigxcpu.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1191207725374678504=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1191207725374678504==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="AhhlLboLdkugWU4S"
Content-Disposition: inline


--AhhlLboLdkugWU4S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > > If you guys instead want me to pick these both into my fixes
> > > branch, just let me know and I'll do the explaining why these
> > > are needed as fixes. Basically we no longer have a way to enable
> > > the LCD backlight for droid4 manually starting with v5.6-rc1
> > > unlike earlier.
> >=20
> > If you are willing to do that, it looks like good solution from my
> > point of view.
>=20
> OK. I'll apply them but won't push out yet in case Lee is already
> applying the driver change..
>=20
> Pavel, care to ack the dts patch?

It looks okay to me (but did not test it yet).

Acked-by: Pavel Machek <pavel@ucw.cz>

Thanks,
									Pavel

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--AhhlLboLdkugWU4S
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl5NysAACgkQMOfwapXb+vKgwQCfSG1WQ+wP9YnFU9eAwSt70YBM
p5IAn3MbCGg5s3cuMBDzM1Q7mLOb3XWJ
=1Ygd
-----END PGP SIGNATURE-----

--AhhlLboLdkugWU4S--


--===============1191207725374678504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1191207725374678504==--

