Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AA615B1A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 21:16:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=618lKBF2E/ghukTlX098UO0AbOFIytUh/Igc9sn8fL4=; b=Ocglr/CYq/CqFCSNZvXeWdHrr
	pHdIysFXALwWWvgsoJIHFb9RCk0zXLV+BKoa7eoMWYAy7uTgROA0ALMYNDq1y08s1zUcPFVqc6B3g
	Jqpv/vUIT5UlJJDB0YIQOBc6oeYfjdmt3Nh8M7YO/nVEZG1j9Ypw7qJvRE4AyXWiHytxpOvDm/ofI
	RKXArJkdN46/vJ/xPIYcYAEkpG8VUrdjUWEhcrWRpc4UVysh2EGwasy/wd9pGJkX14149zqhTLCVt
	0JqSvH4QUs+1hDVHc5/97JUeD5GfERGYCXey54O9hr7wxgGA+X2rsK82XqAFS98QCkF2qEbjKGcI1
	JovZ2K3NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1yRL-0004dW-Cn; Wed, 12 Feb 2020 20:16:55 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1yRC-0004bW-R8
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 20:16:48 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id CF1E11C0370; Wed, 12 Feb 2020 21:16:38 +0100 (CET)
Date: Wed, 12 Feb 2020 21:16:38 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: LED backlight on Droid 4 and others
Message-ID: <20200212201638.GB20085@amd>
References: <20200105183202.GA17784@duo.ucw.cz> <20200106084549.GA14821@dell>
 <20200211172900.GH64767@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20200211172900.GH64767@atomide.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_121647_032635_95ABA030 
X-CRM114-Status: GOOD (  23.93  )
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
Cc: daniel.thompson@linaro.org, mpartap@gmx.net, tony@atomide.com,
 jingoohan1@gmail.com, merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 sre@kernel.org, nekit1000@gmail.com, tomi.valkeinen@ti.com, jjhiblot@ti.com,
 linux-omap@vger.kernel.org, Lee Jones <lee.jones@linaro.org>, agx@sigxcpu.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============0498089880294350585=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0498089880294350585==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="QKdGvSO+nmPlgiQ/"
Content-Disposition: inline


--QKdGvSO+nmPlgiQ/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > > It would be good to get LED backlight to work in clean way for 5.6
> > > kernel.
> ...
> > > [If you have an idea what else is needed, it would be welcome; it
> > > works for me in development tree but not in tree I'd like to
> > > upstream.]
> > >=20
> > > Lee, would you be willing to take "backlight: add led-backlight
> > > driver"? Would it help if I got "leds: Add managed API to get a LED
> > > from a device driver" and "leds: Add of_led_get() and led_put()" into
> > > for_next tree of the LED subsystem?
> >=20
> > It looks like you have an open question from Tony on v10.
> >=20
> > Is that patch orthogonal, or are there depend{ants,encies}?
>=20
> Uhh looks like we messed up a bit with integration. Now droid4
> LCD backlight can no longer be enabled at all manually in v5.6-rc1
> without the "add led-backlight driver" patch.. Should we just
> merge it to fix it rather than start scrambling with other
> temporary hacks?

We should just merge the "add led-backlight driver". Everything should
be ready for it. I'm sorry if I broke something working, I was not
aware it worked at all.

Unfortunately, this is backlight code, not LED, so I can't just merge it.

> I don't care if we use "default-brightness", or if we use
> "default-brightness-level". The binding merged says now
> "default-brightness", so let's go with that one. That's what
> other LED drivers are using too.

No opinion on that.

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--QKdGvSO+nmPlgiQ/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl5EXSYACgkQMOfwapXb+vICqQCfdtyPBlJKQO90lCtkFWlVhCoQ
XaAAoILSfdQrM5bUUqiTeghX0xqVkkHp
=vMQC
-----END PGP SIGNATURE-----

--QKdGvSO+nmPlgiQ/--


--===============0498089880294350585==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0498089880294350585==--

