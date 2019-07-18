Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FBB6D45E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 21:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7EeEB2Oui2adgWb5liqAJUmKYDNG4Dp4Fr89TmXppRs=; b=nfa
	DvB2Hd8K3lq0EkzdY3lQHAY3VT4B/cs9ZqXwBym22ZGtphgUPcbvIn/1BN3FYslONzKaA7iW+zky5
	F3aETAc6kogJKPqfxfqfpYPXaZTjoif+2V2irEH8Xbr7Z9d+KQc2sUB15FxcA30kjH2TP/Vh9GG6Z
	iMhqYgl1vLuPpNYM5zoaIdpeeuKkbh2nWZj6cNuTwhuxAL/OPmtOFagsUQZZKFdfS2qjHnSASyuL/
	aUclQeXZj1XVlmGnPDu3Mzu2NEC1yNAu8WO0lPaXKXwU7pYHp8CIGvbEMsc3gqFCMyo3cLPXnD6/J
	5lx8g+/Axq7oZsUzymp9BgF3Ec1DZWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoBm8-00059A-6P; Thu, 18 Jul 2019 19:09:08 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoBlw-00058F-OE
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 19:08:59 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id B0487802B0; Thu, 18 Jul 2019 21:08:38 +0200 (CEST)
Date: Thu, 18 Jul 2019 21:08:49 +0200
From: Pavel Machek <pavel@ucw.cz>
To: kernel list <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-omap@vger.kernel.org, tony@atomide.com, sre@kernel.org,
 nekit1000@gmail.com, mpartap@gmx.net, merlijn@wizzup.org,
 jacek.anaszewski@gmail.com, linux-leds@vger.kernel.org,
 b.zolnierkie@samsung.com, dri-devel@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
Subject: [PATCH] Enable backlight when trigger is activated
Message-ID: <20190718190849.GA11409@amd>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_120856_941930_34DDF1EB 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============6663820931788280044=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6663820931788280044==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="fUYQa+Pmc3FrFX/N"
Content-Disposition: inline


--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Configuring backlight trigger from dts results in backlight off during
boot. Machine looks dead upon boot, which is not good.

Fix that by enabling LED on trigger activation.

Signed-off-by: Pavel Machek <pavel@ucw.cz>

diff --git a/drivers/leds/trigger/ledtrig-backlight.c b/drivers/leds/trigge=
r/ledtrig-backlight.c
index 487577d..6e6bc78 100644
--- a/drivers/leds/trigger/ledtrig-backlight.c
+++ b/drivers/leds/trigger/ledtrig-backlight.c
@@ -114,6 +114,8 @@ static int bl_trig_activate(struct led_classdev *led)
 	n->old_status =3D UNBLANK;
 	n->notifier.notifier_call =3D fb_notifier_callback;
=20
+	led_set_brightness(led, LED_ON);
+
 	ret =3D fb_register_client(&n->notifier);
 	if (ret)
 		dev_err(led->dev, "unable to register backlight trigger\n");
@@ -126,6 +128,7 @@ static void bl_trig_deactivate(struct led_classdev *led)
 	struct bl_trig_notifier *n =3D led_get_trigger_data(led);
=20
 	fb_unregister_client(&n->notifier);
+	led_set_brightness(led, LED_OFF);
 	kfree(n);
 }
=20

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--fUYQa+Pmc3FrFX/N
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl0ww8EACgkQMOfwapXb+vI/hQCeO9FNCL2TmO9oZ8A7L2jg1y1R
jvQAn1C6VabsEY2RJJWCWLOK9CshUbyu
=aKee
-----END PGP SIGNATURE-----

--fUYQa+Pmc3FrFX/N--


--===============6663820931788280044==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6663820931788280044==--

