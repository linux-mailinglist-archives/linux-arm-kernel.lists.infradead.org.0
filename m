Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7A672A35
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a7SkTKvpEmOOQimYa3SlP1almKhgfrLB1O8ZVneG4/w=; b=ZCsBYE2vsXO5OQWmtGa6e4QNV
	ev2s8Q47yClbNJ0P8F5WplmKnoZycqb8UlT+kDJFVwkpDOZtl3lyfY0ryWtvdrakrxUgHFFzPsFw2
	3xKOgnmgJdSRKG0pdPSIrt4mKmS2H3jOdnfEP5QjDaNfcnOU8IGy3jzSu35SL5fiYvu8wuei74rmU
	q6KLctdSLYo8UXw+db7YUDv6A/pBAkpfb0Ory92trRFKZVygR8NzZHJJZRUjxFAgNV5rcPdI7oqhf
	yOhRGvgY2+pvLYYTcpczsKqPYqfIsXjMbIbhZw6278JuOFGR8cu30lRyUFPh273MBUJHlldHPYXCb
	+MnYM8alg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqCj6-0004Ve-3G; Wed, 24 Jul 2019 08:34:20 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqCip-0004So-Qk
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:34:05 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id C6CE28028C; Wed, 24 Jul 2019 10:33:44 +0200 (CEST)
Date: Wed, 24 Jul 2019 10:33:55 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Subject: Re: [PATCH] Enable backlight when trigger is activated
Message-ID: <20190724083355.GA27716@amd>
References: <20190718190849.GA11409@amd>
 <22d7eca4ad8aa2e73933c4f83c92221ce6e0945a.camel@collabora.com>
 <20190722075032.GA27524@amd>
 <6fc6af89-1455-7665-47e7-0568ecd87c9c@gmail.com>
MIME-Version: 1.0
In-Reply-To: <6fc6af89-1455-7665-47e7-0568ecd87c9c@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_013404_016127_B77B99CB 
X-CRM114-Status: GOOD (  17.15  )
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
Cc: linux-fbdev@vger.kernel.org, mpartap@gmx.net, b.zolnierkie@samsung.com,
 tony@atomide.com, merlijn@wizzup.org,
 kernel list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 sre@kernel.org, nekit1000@gmail.com, linux-leds@vger.kernel.org,
 linux-omap@vger.kernel.org, Ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2058914855478817076=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2058914855478817076==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="5vNYLRcllDrimb99"
Content-Disposition: inline


--5vNYLRcllDrimb99
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> >>> +++ b/drivers/leds/trigger/ledtrig-backlight.c
> >>> @@ -114,6 +114,8 @@ static int bl_trig_activate(struct led_classdev *=
led)
> >>>  	n->old_status =3D UNBLANK;
> >>>  	n->notifier.notifier_call =3D fb_notifier_callback;
> >>> =20
> >>> +	led_set_brightness(led, LED_ON);
> >>> +
> >>
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

Yes, except that it does not work with all drivers :-(. In particular,
it does not work with lm3532.

We should really move more of the device tree parsing into core, so
that there's one place to fix...
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--5vNYLRcllDrimb99
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl04F/MACgkQMOfwapXb+vISagCfdaWbZQ6RjvGQ3Edw3INdzb04
i5gAoItfTEBcniDsblUC4rEvK/EzZthi
=NU1f
-----END PGP SIGNATURE-----

--5vNYLRcllDrimb99--


--===============2058914855478817076==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2058914855478817076==--

