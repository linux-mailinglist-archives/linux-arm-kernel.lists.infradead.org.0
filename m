Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F5613096E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 19:32:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7bxEK6RItKxaSzLnk29LlLvqMhwXKe/gGGA91v4IDZg=; b=fx7
	c7e+la2RwWTT0hQaE4jR/h61RyGIHM6/IyCmswpCXTAhvk7+BnVwtgZBeqTsblh43oUUoV0Fd/reV
	+12gycDIMx3aO2wyHDNMRJQpkVB21NxYF7ZL9tIJNkYZbhGjyYbX/ehDkI3qKdH86LUw1IbjlWC7e
	JqpZfJsSYPaJP/ep9/hE5TiVextFiT8cVSs+NLSg8UcaiRtn1NwH69Gvz4jsLvr739kINmp4H1Wio
	lRiu+rm1F1UP+9BBwZfVMJPEJL+t8IvSULN6X/8W77kG9o1J/G9q06Tr13skj5DJDaNch7+r6Gj+t
	6yTbYEKWN2NCcv8hIaGCvyYK/bULVdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioAhC-0005qj-25; Sun, 05 Jan 2020 18:32:14 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioAh4-0005pH-Uq
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Jan 2020 18:32:09 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id AE2F01C21EA; Sun,  5 Jan 2020 19:32:02 +0100 (CET)
Date: Sun, 5 Jan 2020 19:32:02 +0100
From: Pavel Machek <pavel@ucw.cz>
To: kernel list <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-omap@vger.kernel.org, tony@atomide.com, sre@kernel.org,
 nekit1000@gmail.com, mpartap@gmx.net, merlijn@wizzup.org,
 martin_rysavy@centrum.cz, agx@sigxcpu.org, lee.jones@linaro.org,
 daniel.thompson@linaro.org, jingoohan1@gmail.com,
 dri-devel@lists.freedesktop.org
Subject: LED backlight on Droid 4 and others
Message-ID: <20200105183202.GA17784@duo.ucw.cz>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_103207_289559_C621AE72 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: jjhiblot@ti.com, daniel.thompson@linaro.org, tomi.valkeinen@ti.com
Content-Type: multipart/mixed; boundary="===============0497111767794445597=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0497111767794445597==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="pf9I7BMVVzbSWLtt"
Content-Disposition: inline


--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

It would be good to get LED backlight to work in clean way for 5.6
kernel.

As far as I can see, these are neccessary (but not enough; it does not
work for me): lm3532 changes to register LED with of node, plus device
tree changes for droid 4, and these generic changes:

commit d457d0c97d6d55fe3e62633791ac05d289a37d2e
Author: Tomi Valkeinen <tomi.valkeinen@ti.com>
Date:   Thu Oct 3 10:28:12 2019 +0200

    backlight: add led-backlight driver
   =20
    This patch adds a led-backlight driver (led_bl), which is similar to
    pwm_bl except the driver uses a LED class driver to adjust the
    brightness in the HW. Multiple LEDs can be used for a single backlight.
   =20
    Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
    Signed-off-by: Jean-Jacques Hiblot <jjhiblot@ti.com>
    Acked-by: Pavel Machek <pavel@ucw.cz>
    Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>

commit 44b7adbf0b07904e4198ae1d0a763917d1c68a23
Author: Jean-Jacques Hiblot <jjhiblot@ti.com>
Date:   Thu Oct 3 10:28:10 2019 +0200

    leds: Add managed API to get a LED from a device driver
   =20
    If the LED is acquired by a consumer device with devm_led_get(), it is
    automatically released when the device is detached.
   =20
    Signed-off-by: Jean-Jacques Hiblot <jjhiblot@ti.com>
    Acked-by: Pavel Machek <pavel@ucw.cz>
    Signed-off-by: Pavel <pavel@ucw.cz>

commit 93b98c570d7f898063ab6204e1b3950a3335dd12
Author: Tomi Valkeinen <tomi.valkeinen@ti.com>
Date:   Thu Oct 3 10:28:09 2019 +0200

    leds: Add of_led_get() and led_put()
   =20
    This patch adds basic support for a kernel driver to get a LED device.
    This will be used by the led-backlight driver.
   =20
    Only OF version is implemented for now, and the behavior is similar to
    PWM's of_pwm_get() and pwm_put().
   =20
    Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
    Signed-off-by: Jean-Jacques Hiblot <jjhiblot@ti.com>
    Acked-by: Pavel Machek <pavel@ucw.cz>
    Signed-off-by: Pavel <pavel@ucw.cz>

[If you have an idea what else is needed, it would be welcome; it
works for me in development tree but not in tree I'd like to
upstream.]

Lee, would you be willing to take "backlight: add led-backlight
driver"? Would it help if I got "leds: Add managed API to get a LED
=66rom a device driver" and "leds: Add of_led_get() and led_put()" into
for_next tree of the LED subsystem?

It is kind of important as, well, phone without screen looks pretty
much dead, and same issue hits Droid 4 and Librem 5 phones at least...

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--pf9I7BMVVzbSWLtt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXhIroQAKCRAw5/Bqldv6
8qprAJ90Q8brwIbYFi2ax/hmdk3CLdmWuwCfX3POM4PZoSAPnOvVbdh+jOO7cfI=
=sBIE
-----END PGP SIGNATURE-----

--pf9I7BMVVzbSWLtt--


--===============0497111767794445597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0497111767794445597==--

