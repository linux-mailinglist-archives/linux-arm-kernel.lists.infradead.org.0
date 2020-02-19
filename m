Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD20616504B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 21:53:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1FlyETt/EagAZtO5kW01zR9H06ruzPO7aIjT7SU/u2M=; b=Hf/osu9C6tpNI9TWjk3s41K97
	D4KmIw5DH48PIU5FoBFb2wDW/AcRjnCKfAk5UC1H7VREN/BQlGKZ0vINqsE6ho0a5W1oNqGZX9/4G
	MYfOo1ftw1EFd9CrNNoNwSvu68pv5P22BljNRz9WQqAFPnpb2+xmo5rYMCZc/FLIzHulHm6x+1jdO
	eUc1AOj8x4jH5bdVAsjaYJwp6iFj4Dj13DS9f9MgnK8QWqMqeEmjI6B4RVmPRr3Gcc2Uyu+D12W98
	ewtvmqVKPHoClFfmPjMzbnBHEj/StHvigZufhyqzHZsZpZqotqN+ToW4fDd9hGCVFMq5/X7E0LYsq
	hRpSg8E9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4WLh-0002nT-4s; Wed, 19 Feb 2020 20:53:37 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4WLW-0002kt-Gc
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 20:53:28 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 804FC1C013C; Wed, 19 Feb 2020 21:53:23 +0100 (CET)
Date: Wed, 19 Feb 2020 21:53:23 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH] backlight: add led-backlight driver
Message-ID: <20200219205322.GA1227@duo.ucw.cz>
References: <20200219191412.GA15905@amd> <20200219194540.GD37466@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20200219194540.GD37466@atomide.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_125326_704117_A586BC82 
X-CRM114-Status: GOOD (  22.34  )
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
Content-Type: multipart/mixed; boundary="===============1104309928646987686=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1104309928646987686==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="UugvWAfsgieZRqgk"
Content-Disposition: inline


--UugvWAfsgieZRqgk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > This patch adds a led-backlight driver (led_bl), which is similar to
> > pwm_bl except the driver uses a LED class driver to adjust the
> > brightness in the HW. Multiple LEDs can be used for a single backlight.
> >=20
> > Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> > Signed-off-by: Jean-Jacques Hiblot <jjhiblot@ti.com>
> > Acked-by: Pavel Machek <pavel@ucw.cz>
> > Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
> > Acked-by: Lee Jones <lee.jones@linaro.org>
> > Acked-by: Tony Lindgren <tony@atomide.com>
> > Tested-by: Tony Lindgren <tony@atomide.com>
> > Signed-off-by: Pavel Machek <pavel@ucw.cz>
> > ---
> >  drivers/video/backlight/Kconfig  |   7 ++
> >  drivers/video/backlight/Makefile |   1 +
> >  drivers/video/backlight/led_bl.c | 260 +++++++++++++++++++++++++++++++=
++++++++
> >  3 files changed, 268 insertions(+)
> >  create mode 100644 drivers/video/backlight/led_bl.c

> > Here's the version of the driver I have. AFAICT
> > default-brightness-level handling is ok, so does not need to be
> > changed.
> >=20
> > Lee, it would be easiest for me if you could apply it to your tree and
> > push, but given enough time I can push it to Linus, too.
>=20
> Oh you're using quoted-printable for patches.. Got it applied now,
> and it still works. Below is also the related dts change that
> I tested with.
>=20
> Feel free to pick the dts change too, naturally that should
> not be applied before the driver.
>=20
> If you guys instead want me to pick these both into my fixes
> branch, just let me know and I'll do the explaining why these
> are needed as fixes. Basically we no longer have a way to enable
> the LCD backlight for droid4 manually starting with v5.6-rc1
> unlike earlier.

If you are willing to do that, it looks like good solution from my
point of view.

Thanks,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--UugvWAfsgieZRqgk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXk2gQgAKCRAw5/Bqldv6
8r5AAKC+AwUw3ENNYRcBhsb1uvxfuPaG+QCeOluKPDkiJcP+0psjlCyM4oMe06k=
=iDlU
-----END PGP SIGNATURE-----

--UugvWAfsgieZRqgk--


--===============1104309928646987686==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1104309928646987686==--

