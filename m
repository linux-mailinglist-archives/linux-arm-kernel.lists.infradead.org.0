Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8791D91666
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 13:47:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ow+b7i6MohFXj3/REb7pwKoZo5lpv/O7Csctnk2Q6x4=; b=S+JLB4a7vIgE00N/Vzcef3T3o
	XyB4mRgEz0Gp8dGXrlHcScO8qCp9yVTgXJaBFsjsZCGqBAhASWokhpefIbQSdFenwA6FZULSkUIly
	3T/LhD1lRC4J8F/MiySll922XcB1P91pU9ubX+nRm74txwAcvQFS5b+bI5Lr5oBmQSVeu/wSfHwH1
	QyGKEmcXeNmIIYT4Sb0meumlajaQ6Ck5oEq4m4ButSDSV16Uz33Xj0wXEjAcaf5VKU2+HLsiR0DwR
	7MZvNL3KFNi1KRAqgBMeU/wNwRnMbN18Xh/t1jMe1M+alkzoHmNQjLnFXFBYXDaFb5+Bj3n5DXWNG
	sLgfwAy6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzJeJ-0000lX-6Z; Sun, 18 Aug 2019 11:47:03 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzJeB-0000kl-Qe
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 11:46:57 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 5EFF381381; Sun, 18 Aug 2019 13:46:39 +0200 (CEST)
Date: Sun, 18 Aug 2019 13:46:51 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Subject: Re: wifi on Motorola Droid 4 in 5.3-rc2
Message-ID: <20190818114651.GB32205@amd>
References: <20190818104629.GA27360@amd>
 <CAOf5uwnUx3mtGGHFGqKB30qcb_AMhMEhHLp2pf-4pUdhi7KP7w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOf5uwnUx3mtGGHFGqKB30qcb_AMhMEhHLp2pf-4pUdhi7KP7w@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_044656_019822_68CE4549 
X-CRM114-Status: GOOD (  11.92  )
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
Cc: mpartap@gmx.net, Tony Lindgren <tony@atomide.com>,
 Merlijn Wajer <merlijn@wizzup.org>,
 "open list:TI WILINK WIRELES..." <linux-wireless@vger.kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, Sebastian Reichel <sre@kernel.org>,
 nekit1000@gmail.com, Linux OMAP Mailing List <linux-omap@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3767269226044235490=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3767269226044235490==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="BwCQnh7xodEAoBMC"
Content-Disposition: inline


--BwCQnh7xodEAoBMC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > First, I guess I should mention that this is first time I'm attempting
> > to get wifi going on D4.
> >
> > I'm getting this:
> >
> > user@devuan:~/g/ofono$ sudo ifconfig wlan0 down
> > user@devuan:~/g/ofono$ sudo ifconfig wlan0 up
> > user@devuan:~/g/ofono$ sudo iwlist wlan0 scan
> > wlan0     Interface doesn't support scanning.
> >
>=20
> Try to use iw command. iwlist use an obsolete interface that you need
> to activate in kernel for back compatibility with old command. Can be
> your problem?

Two more reboots (with no changes in the config) and wifi now
works. Thanks!
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--BwCQnh7xodEAoBMC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1ZOqsACgkQMOfwapXb+vJeKgCgszMHogT0O+ruZtqWBP12TiL9
+ksAoKsdUdt9JhrYHrfPq4rbghETIMap
=hXX3
-----END PGP SIGNATURE-----

--BwCQnh7xodEAoBMC--


--===============3767269226044235490==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3767269226044235490==--

