Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA07128B85
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 21:28:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QnmsTHuEVt9hoxkQmTfeJ4vKkA119kkHYeDQkSkoXYg=; b=nnUUTPJJXwzxi+MptvSrRlHe3
	7ofuwqxi3Wzenp/SZPSKQ/iUKBA+qgVyRBG+iNV9J9Tr6QPQQudaQSMpHPyCIeLPxw7oL6B5FOie3
	/FMNR54XddnQycTkEFsWRSgAysbWlCzZoPcE1JU3JOgvoBw4ezc03F7R8w4wng8PGZIMooBw91FoM
	Ey0O2QrpaH2VNLZorQXDWoaJpEbALCA1RZ8hzPIK4vSJVmzttmurfWBXzx3QDHWqaOs1JMI+gGP71
	xDQ0CFBIzySt9KCgcFCIiPHKjDO3ryChUdlKZOCdiPuRj83BBaph5Bq0VKIjcLWK/eTMGnwmOXkmi
	KJAQhBXMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iilM9-00026k-KF; Sat, 21 Dec 2019 20:28:09 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iilLx-00026L-5X; Sat, 21 Dec 2019 20:27:58 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id ED6E61C24A9; Sat, 21 Dec 2019 21:27:55 +0100 (CET)
Date: Sat, 21 Dec 2019 21:27:55 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [RFC 22/25] leds: tm1826: Add combined glyph support
Message-ID: <20191221202755.GN32732@amd>
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-23-afaerber@suse.de>
MIME-Version: 1.0
In-Reply-To: <20191212033952.5967-23-afaerber@suse.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_122757_361270_A4CCFF70 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.255.230.98 listed in list.dnswl.org]
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
Cc: linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Dan Murphy <dmurphy@ti.com>, linux-leds@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: multipart/mixed; boundary="===============3629628816774806549=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3629628816774806549==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="SqfawxHnX56H7Ukl"
Content-Disposition: inline


--SqfawxHnX56H7Ukl
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu 2019-12-12 04:39:49, Andreas F=E4rber wrote:
> Allow to squeeze the text "HEllO" into a 4-digit display,
> as seen on MeLE V9 TV box.
>=20
> Enable this combining mode only if the text would overflow.

"HEll,nO"!

:-)

Ok, it is kind of cool, but... Can you take a look at
drivers/auxdisplay/charlcd.c ? It seems to support some kind of text
displays...

Best regards,
								Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--SqfawxHnX56H7Ukl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl3+gEsACgkQMOfwapXb+vKK3ACfVq3b4sY2SeAWp3klGsyflcuZ
Sj0AnRfKrSM5NY59RyJTDgkcQrhrSqhF
=zSWs
-----END PGP SIGNATURE-----

--SqfawxHnX56H7Ukl--


--===============3629628816774806549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3629628816774806549==--

