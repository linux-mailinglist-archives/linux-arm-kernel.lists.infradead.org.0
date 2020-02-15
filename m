Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 827AB160059
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 21:00:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+IXIKGR3D2uLGT8stDci+JV0QlIcXuWJeUkhupyxiuM=; b=A7vosUNqux7rOI110Hr1pXbvB
	ufu3fOKcHR0urkjztNZTcM6DYKTmn2kA5Owu7UwpWJ2QrUxHcnt/xQEk4IN/1U5WQuopIwTnnKa4M
	LaZCB3T4dTb6QJTBRP/aYWpZT/AWuvgss+qKA9HQaspOPZ4HMZkLKHrOqVccsg8wbEnR10Zn02Qa8
	/R9p6yxM3FCXPWk8NeQ0+rt96rx7/bhSeEOrkMAfjokuoGKPlRX7UO5geKL9n1Stn9VtD8yrBSzeI
	9fpAuW/AYenfjbpAlGInquJPuGzlxspqYpfubxGDFaDLLPlXQk3HjZNW8A/mtrZDJyIF/sKhjSOwV
	jsvOBHeDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j33bz-0000dM-1a; Sat, 15 Feb 2020 20:00:23 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j33bc-0007ni-Ow
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 20:00:02 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 8981B1C1CBB; Sat, 15 Feb 2020 20:59:50 +0100 (CET)
Date: Sat, 15 Feb 2020 20:59:49 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: 5.6-rc0.95: /dev/motmdm no longer there
Message-ID: <20200215195949.GB10344@amd>
References: <20200209213422.GA3009@amd>
 <20200209213717.GD64767@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20200209213717.GD64767@atomide.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_120000_960519_44AA246B 
X-CRM114-Status: GOOD (  13.80  )
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
Cc: mpartap@gmx.net, merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, sre@kernel.org,
 nekit1000@gmail.com, linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1825369030168343041=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1825369030168343041==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="GID0FwUMdk1T2AWN"
Content-Disposition: inline


--GID0FwUMdk1T2AWN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > 5.6-rc0.95 -- based on:
> >=20
> > commit fdfa3a6778b194974df77b384cc71eb2e503639a
> > Merge: 291abfea4746 e0a514259378
> > Author: Linus Torvalds <torvalds@linux-foundation.org>
> > Date:   Sat Feb 8 17:24:41 2020 -0800
> >=20
> >     Merge tag 'scsi-misc' of
> >     git://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi
> >=20
> >=20
> > /dev/motmdm* is not there for me. Unfortunately,
> > drivers/mfd/motorola-mdm.c is not mainline, so I can't just try with
> > the mainline....
> >=20
> > Does it work for you?
> >=20
> > I have ... rather a lot of warnings in dmesg :-(. /dev/ttyUSB4 works
> > ok for me.
> >=20
> > Can I somehow help get /dev/motmdmX upstream?
>=20
> Heh yeah actually I'm cleaning up those patches right now :)
>=20
> Meanwhile, try droid4-pending-v5.5 branch or pick the related
> patches from there.

Thanks, that branch works fine for me. I guess I should try to get my
Droid into state where it can be used as a primary phone.

Best regards,

								Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--GID0FwUMdk1T2AWN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl5ITbUACgkQMOfwapXb+vIKOACgn6mIIDmlx9TU0KIt9aeaHQ3b
TLkAniPVNkucHHFfsaAAyssKqsyoP2/Y
=E/d4
-----END PGP SIGNATURE-----

--GID0FwUMdk1T2AWN--


--===============1825369030168343041==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1825369030168343041==--

