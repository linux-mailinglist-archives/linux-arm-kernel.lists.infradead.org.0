Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB1C70AFE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 23:04:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dKdG1fJlVBl9eMeovPvcSWXRfeo8bJvoSe4u+0g2yDs=; b=NvMK37c3zUBDXEae2QqyAsLJc
	Zh0jF+4u4oP5KOWljcFd61rj+BFiB2P94vIuPe3dEMx+myQJKtZOt3H0jwXeO2JOPj+CLGZpzkSbe
	qQNeEuaTCJ3Gwpsv5j6O4v0NMAbKuyxljwmgaWf62iBcfHA+HLHC3rYRpUDe1CY/Z4EflCeCeESDC
	aM8pQIieG4LimmtfwArnVyc1Ik0djLXRFOREtje36CMDicKOJZxwmCuEMADqigin+YD09DtD5Oaj7
	JHFJV9m3RP4PqsorDNBqd2bfqeakm4ae2eabupN0qG+l8o+ZceR5AUbRWbzKZyYV5+qgWmzaOD/DD
	4HiYfRK5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpfUA-0001bF-79; Mon, 22 Jul 2019 21:04:42 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpfTi-0001a6-8D
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 21:04:16 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 1FA5880410; Mon, 22 Jul 2019 23:03:55 +0200 (CEST)
Date: Mon, 22 Jul 2019 23:04:07 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Subject: Re: [PATCH] Enable backlight when trigger is activated
Message-ID: <20190722210407.GA25617@amd>
References: <20190718190849.GA11409@amd>
 <22d7eca4ad8aa2e73933c4f83c92221ce6e0945a.camel@collabora.com>
 <20190722075032.GA27524@amd>
 <6fc6af89-1455-7665-47e7-0568ecd87c9c@gmail.com>
MIME-Version: 1.0
In-Reply-To: <6fc6af89-1455-7665-47e7-0568ecd87c9c@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_140414_446949_80716B26 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-fbdev@vger.kernel.org, mpartap@gmx.net, b.zolnierkie@samsung.com,
 tony@atomide.com, merlijn@wizzup.org,
 kernel list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 sre@kernel.org, nekit1000@gmail.com, linux-leds@vger.kernel.org,
 linux-omap@vger.kernel.org, Ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7486542545042602940=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7486542545042602940==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="SLDf9lqlvOQaIe6s"
Content-Disposition: inline


--SLDf9lqlvOQaIe6s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> >> This looks fishy.
> >>
> >> Maybe you should use a default-state =3D "keep" instead? (and you'll h=
ave
> >> to support it in the LED driver).
> >>
> >> That'll give you proper "don't touch the LED if it was turned on" beha=
vior,
> >> which is what you seem to want.
> >=20
> > Actually no, that's not what I want. LED should go on if the display
> > is active, as soon as trigger is activated.
> >=20
> > Unfortunately, I have see no good way to tell if the display is
> > active (and display is usually active when trigger is activated).
>=20
> default-state DT property can be also set to "on"
> (see Documentation/devicetree/bindings/leds/common.txt).

Ok, thanks for the hint, that could work. (I thought we were using
default trigger to set the LED "on").

Now...this gives me option of 0% or 100% brightness, while best would
be 10% brightness.... but I guess we can live with that ;-).

									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--SLDf9lqlvOQaIe6s
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl02JMcACgkQMOfwapXb+vI4ugCeInwKolmtAnBHOQNVsMS09AdN
Kr8AnAq4ihyjYP61ghzcLq9l2lbwoALF
=guhn
-----END PGP SIGNATURE-----

--SLDf9lqlvOQaIe6s--


--===============7486542545042602940==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7486542545042602940==--

