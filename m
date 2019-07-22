Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB006FAB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 09:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sx83ltD/z/JC6Ia150U9GfGCVV+7OYtxRTAm86Z3tls=; b=MMDWbiwSjnx8zUPN56R2vIcKe
	PjgHWF1q63nq/6r6s0q2vy76EypH+7UP2t6ROMhvDZNgj7b7PA3xGx0dKJRXrTCMXjBUVe0xuOIGW
	qZ28eH7OJOjgiybgHX00HXGhExgPqKvYS0J1kGM2jKCjcnebjfaXGrDa2Gl0oReUm+QHEn25RAQRs
	nWaxRR8YucTn8xdDngOdvOw0Fs4Fk+A4dMFj8GXPnta5f0FAnO75mwDkD3Yf8QTRyouRK6Z2SQeMb
	kXG/jOlQrQ+ZnAd/zhA/yp7K67o91GPbNamGfUQPbfHnPqSk9LCNFrMKzAdSW+Cll8jAsBS4x98G0
	KF+nAXSsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpT5x-0002kA-Sk; Mon, 22 Jul 2019 07:50:54 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpT5i-0002jO-DR
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 07:50:40 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 803AE80317; Mon, 22 Jul 2019 09:50:21 +0200 (CEST)
Date: Mon, 22 Jul 2019 09:50:32 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH] Enable backlight when trigger is activated
Message-ID: <20190722075032.GA27524@amd>
References: <20190718190849.GA11409@amd>
 <22d7eca4ad8aa2e73933c4f83c92221ce6e0945a.camel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <22d7eca4ad8aa2e73933c4f83c92221ce6e0945a.camel@collabora.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_005038_600780_407F781B 
X-CRM114-Status: GOOD (  15.76  )
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
 sre@kernel.org, nekit1000@gmail.com, jacek.anaszewski@gmail.com,
 linux-leds@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7186670613113277840=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7186670613113277840==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZPt4rx8FFjLCG7dd"
Content-Disposition: inline


--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > Configuring backlight trigger from dts results in backlight off during
> > boot. Machine looks dead upon boot, which is not good.
> >=20
> > Fix that by enabling LED on trigger activation.

> > +++ b/drivers/leds/trigger/ledtrig-backlight.c
> > @@ -114,6 +114,8 @@ static int bl_trig_activate(struct led_classdev *le=
d)
> >  	n->old_status =3D UNBLANK;
> >  	n->notifier.notifier_call =3D fb_notifier_callback;
> > =20
> > +	led_set_brightness(led, LED_ON);
> > +
>=20
> This looks fishy.
>=20
> Maybe you should use a default-state =3D "keep" instead? (and you'll have
> to support it in the LED driver).
>=20
> That'll give you proper "don't touch the LED if it was turned on" behavio=
r,
> which is what you seem to want.

Actually no, that's not what I want. LED should go on if the display
is active, as soon as trigger is activated.

Unfortunately, I have see no good way to tell if the display is
active (and display is usually active when trigger is activated).

Thanks,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--ZPt4rx8FFjLCG7dd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl01asgACgkQMOfwapXb+vK9lgCbBcUNDD1pNFmswZowkerycBcz
v80AoK7Dv7JR0+GNLhozQBGFuNFWTOIt
=oVmU
-----END PGP SIGNATURE-----

--ZPt4rx8FFjLCG7dd--


--===============7186670613113277840==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7186670613113277840==--

