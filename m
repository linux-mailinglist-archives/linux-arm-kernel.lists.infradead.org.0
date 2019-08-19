Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0257091FFE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 11:21:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qQn+i66sHRGtqUr8kKJT2sv/uDCR8UwYBLFBAb7fYDw=; b=oOTtZnxtLdqbEsQb9RFVxhlU0
	enZyPY/SpET6GE/kLKh6UanFFFFi+l/oOaPtp2SWLiTFRAYXnxV3YrPf+0H0Wf6B07cZ1oTeP1+8z
	mFKlziw6DCsjCxHSveD23jymyu7B3ttUmgbKNGCX5H4tEiy0G3k6thrSmOAUwRL44sAXOhT76VQVR
	rUHjdbzshoekWERzdE6SmvT5JL3cazm3125u43WuJzXE5S2r1NuqhpfT3JimrbOxdORZlAzmw0ngE
	Z74vF2NHd5IY/0H6R0rSdMorW3mn66LCMrFR1mhrwRSI49t3TrVHw2q05U3tAsozun4/eklKZiHhv
	ol122ibZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdrH-0004eH-5c; Mon, 19 Aug 2019 09:21:47 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdpQ-0002VY-Bv
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 09:19:55 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id BF9CA815D4; Mon, 19 Aug 2019 11:19:28 +0200 (CEST)
Date: Mon, 19 Aug 2019 11:19:41 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: wifi on Motorola Droid 4 in 5.3-rc2
Message-ID: <20190819091941.GA21072@amd>
References: <20190818104629.GA27360@amd>
 <CAOf5uwnUx3mtGGHFGqKB30qcb_AMhMEhHLp2pf-4pUdhi7KP7w@mail.gmail.com>
 <20190818114332.GA32205@amd> <87h86elgaa.fsf@tynnyri.adurom.net>
MIME-Version: 1.0
In-Reply-To: <87h86elgaa.fsf@tynnyri.adurom.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_021952_864630_FE9342B1 
X-CRM114-Status: GOOD (  17.83  )
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
Cc: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>, mpartap@gmx.net,
 Tony Lindgren <tony@atomide.com>, Merlijn Wajer <merlijn@wizzup.org>,
 "open list:TI WILINK WIRELES..." <linux-wireless@vger.kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, Sebastian Reichel <sre@kernel.org>,
 nekit1000@gmail.com, Linux OMAP Mailing List <linux-omap@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8197458834559542731=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8197458834559542731==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="zhXaljGHf11kAtnf"
Content-Disposition: inline


--zhXaljGHf11kAtnf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun 2019-08-18 17:06:05, Kalle Valo wrote:
> Pavel Machek <pavel@ucw.cz> writes:
>=20
> > On Sun 2019-08-18 12:53:01, Michael Nazzareno Trimarchi wrote:
> >> Hi
> >>=20
> >> On Sun, Aug 18, 2019 at 12:46 PM Pavel Machek <pavel@ucw.cz> wrote:
> >> >
> >> > Hi!
> >> >
> >> > First, I guess I should mention that this is first time I'm attempti=
ng
> >> > to get wifi going on D4.
> >> >
> >> > I'm getting this:
> >> >
> >> > user@devuan:~/g/ofono$ sudo ifconfig wlan0 down
> >> > user@devuan:~/g/ofono$ sudo ifconfig wlan0 up
> >> > user@devuan:~/g/ofono$ sudo iwlist wlan0 scan
> >> > wlan0     Interface doesn't support scanning.
> >> >
> >>=20
> >> Try to use iw command. iwlist use an obsolete interface that you need
> >> to activate in kernel for back compatibility with old command. Can be
> >> your problem?
> >
> > Let me see ... CONFIG_CFG80211_WEXT was not set.
> >
> > Tried enabling it, and now I got. I remember getting it before,
> > too... let me try few more boots, perhaps it is random.
>=20
> >From developers' point of view WEXT is ancient and untested, everybody
> should switch to nl80211. So I strongly using iw (which uses nl80211).
> Of course this nothing to do with the wlcore warning you saw, just
> wanted to make you aware the state of wireless extensions.

You may want to add this to Kconfig test... and maybe it would be good
to mention iwconfig there, for easier grepping.

I'm using rather old distro; I'll update, but kernel is expected to be
back-compatible.. and tested :-).

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--zhXaljGHf11kAtnf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1aaa0ACgkQMOfwapXb+vLfxgCgwnUj/6zNjDP8mVxxlrKZK1lM
pPoAnRZSZcbtXRDj7ieMQtZo77crQdVF
=S9kP
-----END PGP SIGNATURE-----

--zhXaljGHf11kAtnf--


--===============8197458834559542731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8197458834559542731==--

