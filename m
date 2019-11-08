Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 294A6F4215
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 09:29:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=01DOlpovK3C04O0L2nHT4KgGmCZtvAhEFVmcvFdWKXI=; b=nhE/3MddezjThfs14vaG5jSFO
	8kyN3Z8Ofoli72w7h/oOxp4w+i5LLX8bxAnvNn6NCCEWokqsMRpdnPvMzJMwwq9poIJ7RhnsiI6Uj
	Pjub47hZ8WySd1CVtz/lt3OFLk8PGUMXmSfme+/JuLgPsON73p1T/grAM2EkUhsr1l76tFkE/aFoV
	lAX6ml3iXM7lAsXIH+KgFMYKfNx0G8vARDwJbPvlU9HSsgV6ZCnOKewxJKcrpU3rxJsXsftdX1Tlt
	oBpEG6/ajpzYmix6UdFrlsWaft35rAqu71xbbnswrpf2BmNGnTfIyKl/RyvizyOgwxuMUrxYKmRTs
	LR4zxenAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSze2-0005SS-EW; Fri, 08 Nov 2019 08:29:26 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSzdt-0005RW-Tg
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 08:29:20 +0000
Received: from aptenodytes (lfbn-tou-1-421-123.w86-206.abo.wanadoo.fr
 [86.206.246.123])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 8DD8924000F;
 Fri,  8 Nov 2019 08:29:07 +0000 (UTC)
Date: Fri, 8 Nov 2019 09:29:07 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] phy: allwinner: Fix GENMASK misuse
Message-ID: <20191108082907.GA848664@aptenodytes>
References: <20191020134229.1216351-3-megous@megous.com>
 <20191107204645.13739-1-rikard.falkeborn@gmail.com>
 <20191107233914.GW25745@shell.armlinux.org.uk>
MIME-Version: 1.0
In-Reply-To: <20191107233914.GW25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_002918_092446_6E1F3316 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: megous@megous.com, mark.rutland@arm.com, arnd@arndb.de,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Rikard Falkeborn <rikard.falkeborn@gmail.com>,
 kishon@ti.com, linux-sunxi@googlegroups.com, robh+dt@kernel.org,
 mripard@kernel.org, tglx@linutronix.de, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, icenowy@aosc.io
Content-Type: multipart/mixed; boundary="===============9139196263510158391=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9139196263510158391==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vtzGhvizbBRQ85DL"
Content-Disposition: inline


--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu 07 Nov 19, 23:39, Russell King - ARM Linux admin wrote:
> On Thu, Nov 07, 2019 at 09:46:45PM +0100, Rikard Falkeborn wrote:
> > Arguments are supposed to be ordered high then low.
> >=20
> > Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
> > ---
> > Spotted while trying to add compile time checks of GENMASK arguments.
> > Patch has only been compile tested.
>=20
> My feeling, personally, is that GENMASK() really isn't worth the pain
> it causes.  Can we instead get rid of this thing and just use easier
> to understand and less error-prone hex masks please?

One advantage it has is that is matches the order in which bit fields are
usually given in datasheets, so I personally found that it makes verificati=
on
of fields much more straightforward and immediate.

My 2 cents are that it makes sense for hardware registers.

Note that I have recently introduced a SHIFT_AND_MASK_BITS macro[0] for a V=
4L2
driver, that I (and Mauro) would like to move to linux/bits.h eventually.

> I don't care what anyone else says, personally I'm going to stick with
> using hex masks as I find them way easier to get right first time than
> a problematical opaque macro - and I really don't want the effort of
> finding out that I've got the arguments wrong when I build it.  It's
> just _way_ easier and less error prone to use a hex mask straight off.

I guess it's a matter of personal habit.

[0]: https://git.linuxtv.org/media_tree.git/commit/?id=3D06eff2150d4db991ca=
236f3d05a9dc0101475aea

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--vtzGhvizbBRQ85DL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl3FJ1MACgkQ3cLmz3+f
v9HD6QgAnn9qVrsChDkN0XT8+hfqz14mCavgmtmc/ATR+52Gp7hcnN1ADnJ1lK5D
Fg3+wdQMcs3sxpVFFPvfr1mNlGy1/OCSUerruFRSXwj+oMdv3E5foi7Y5GdrS5G2
bUFCVGT9h5MS7TrwHoiLV7I8ZgRg2/j1MyPWH4sgjSpres2BwU+0vkxh8DvJc+Hm
tJx1mzGPSFsA+RoRHdfRtSAE3iDcNibJXnct/qz6s+wtZRT/lTrAeoO2Cd6683dU
FbegbM5v+j7dhZpZ7bkbgaKrCd9EAfKYpu0WP1YOUEGes00K5J4fhvk9RpA/+l9p
l6BhN4YGDy1HqSdqxIzSiN4JXUNtag==
=aPHq
-----END PGP SIGNATURE-----

--vtzGhvizbBRQ85DL--


--===============9139196263510158391==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9139196263510158391==--

