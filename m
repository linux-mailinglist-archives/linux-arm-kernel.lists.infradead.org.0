Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7C0130AD1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 00:56:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0foql6zNisAsJvQGZ0TuTb+iyKUmXgVKbJcb4H+zzbw=; b=mvrQ38dOPy4/s7RklV0mIAj/P
	URnWtHx+Ihpi9n+9aVffAM9T6UDm00vJ/ElZ64uRfKaBlk+mB1N/wM7keBDTFtjj7/g2v/72fGAb0
	6Q7GT9Wyn30pXA+vSZ00NYati/xVu1VCt0vkTUKPHZtF+fQIBUbR4ldqVsfqxd367QWIN1YWVolPi
	JZYkQlNpLYo7Rgv8vW98tN8Q+9KLgqsmFQNJY4tPHJJ5+KUBXIm15RIEaIxUB7H3H6L8jnaFVOK52
	0tC8wQs3uTvBHCd2LKJimMzIjgXAM7hi/bYU6YwNRlZZJPNKk/74PLRvoXa+4eAodCQaju8wxgZmB
	0MRqiz0tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioFkY-0007VS-NE; Sun, 05 Jan 2020 23:56:02 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioFkS-0007UC-G0
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Jan 2020 23:55:58 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 4A0E11C2453; Mon,  6 Jan 2020 00:55:52 +0100 (CET)
Date: Mon, 6 Jan 2020 00:55:51 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Tony Lindgren <tony@atomide.com>, linux-leds@vger.kernel.org
Subject: Re: LED backlight on Droid 4 and others
Message-ID: <20200105235551.GB7598@amd>
References: <20200105183202.GA17784@duo.ucw.cz>
 <20200105202449.GC5885@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20200105202449.GC5885@atomide.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_155556_685269_006EF8C0 
X-CRM114-Status: GOOD (  17.44  )
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
Cc: daniel.thompson@linaro.org, mpartap@gmx.net, jingoohan1@gmail.com,
 merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 sre@kernel.org, nekit1000@gmail.com, tomi.valkeinen@ti.com, jjhiblot@ti.com,
 linux-omap@vger.kernel.org, lee.jones@linaro.org, agx@sigxcpu.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4047658726072587278=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4047658726072587278==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="s2ZSL+KKDSLx8OML"
Content-Disposition: inline


--s2ZSL+KKDSLx8OML
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > It would be good to get LED backlight to work in clean way for 5.6
> > kernel.
>=20
> I agree, this is badly needed for many devices.
>=20
> > [If you have an idea what else is needed, it would be welcome; it
> > works for me in development tree but not in tree I'd like to
> > upstream.]
>=20
> I have some version of these patches working with modified dts in my
> droid4-pending-v5.4 branch git branch, maybe try to diff against that.

So.. backlight now works for me, and I put the LED parts of the
patches to

gitolite.kernel.org:pub/scm/linux/kernel/git/pavel/linux-leds.git for-next

tree. [I guess I could try to sneak them into 5.5 if that helps.]

Could we somehow get this to the backlight tree?

commit d457d0c97d6d55fe3e62633791ac05d289a37d2e
Author: Tomi Valkeinen <tomi.valkeinen@ti.com>
Date:   Thu Oct 3 10:28:12 2019 +0200

    backlight: add led-backlight driver

    This patch adds a led-backlight driver (led_bl), which is similar
    to pwm_bl except the driver uses a LED class driver to adjust the
    brightness in the HW. Multiple LEDs can be used for a single
    backlight.

 Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
 Signed-off-by: Jean-Jacques Hiblot <jjhiblot@ti.com>
 Acked-by: Pavel Machek <pavel@ucw.cz>
 Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>

Best regards,
								Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--s2ZSL+KKDSLx8OML
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl4Sd4cACgkQMOfwapXb+vKtigCcD7s9rcf8yUC1oR22yqA5RyON
RW4AmgOniJ4uj2z21/PEdlR5LnqhdCB/
=7Rz5
-----END PGP SIGNATURE-----

--s2ZSL+KKDSLx8OML--


--===============4047658726072587278==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4047658726072587278==--

