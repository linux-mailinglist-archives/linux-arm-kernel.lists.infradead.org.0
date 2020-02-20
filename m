Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FE6166B18
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 00:42:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Uot8qkWvBYWfAYav+ig+I83KDs10VvK4Zkx+DTVcrxQ=; b=EZTPFwYSlyz9JEJR6NjweJMG/
	/x6QhK+1U4sHU5jW+XIIJ7PsFAaNua/8+xazwn5SiROMwv1AEW9kyMJ/ut6++oNFscdfIWdk+UR9D
	s6nyTAaBgttk4A1jh76bRnQZ1j1f+5RQ0lmM7W4sqCV0oLE4uyR8iUwaA1nH2Rfs5dMJM+1I1rSyc
	Hdv1jmIbX6pZu5UngR9WGeUhkkW87mVVzufqPtjqw4qR6SDcTCAI21rDuA6gLE0qNbM3gXAAbylJo
	o/BIlEEuAYA5lsW/+upEkgYfINiokNFe94jBSrTqhQeMp5iBIdC451c6ncHN829M3A0Vg4PHw7UTi
	YNjypkV8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4vSO-0005W1-QT; Thu, 20 Feb 2020 23:42:12 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4vSG-0005VU-MD
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 23:42:06 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 5FD9B1C0141; Fri, 21 Feb 2020 00:41:51 +0100 (CET)
Date: Fri, 21 Feb 2020 00:41:51 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Camera LED on Librem 5 was Re: [PATCH] backlight: add led-backlight
 driver
Message-ID: <20200220234151.GB1544@amd>
References: <20200219191412.GA15905@amd>
 <20200220082956.GA3383@bogon.m.sigxcpu.org>
MIME-Version: 1.0
In-Reply-To: <20200220082956.GA3383@bogon.m.sigxcpu.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_154204_876419_DCF4DFDD 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.255.230.98 listed in list.dnswl.org]
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
Cc: kernel list <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7316409298698018817=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7316409298698018817==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cmJC7u66zC7hs+87"
Content-Disposition: inline


--cmJC7u66zC7hs+87
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > This patch adds a led-backlight driver (led_bl), which is similar to
> > pwm_bl except the driver uses a LED class driver to adjust the
> > brightness in the HW. Multiple LEDs can be used for a single backlight.
>=20
> Tested-by: Guido G=FCnther <agx@sigxcpu.org>

Thanks for testing!

I noticed blog post about using Librem 5 torch. Unfortunately, it used
very strange/non-standard interface, first using LED as a GPIO to
enable LED controller, then direct i2c access. That is not acceptable
interface for mainline, and it would be better not to advertise such
code, as it will likely become broken in future.

https://puri.sm/posts/easy-librem-5-app-development-flashlight/

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--cmJC7u66zC7hs+87
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEUEARECAAYFAl5PGT8ACgkQMOfwapXb+vKXXACgieHtSmG/OaQuYS/IMFe6SvbQ
kJgAmL4xWRvXq6Hjsr2Tnlx3h5AuUig=
=Poch
-----END PGP SIGNATURE-----

--cmJC7u66zC7hs+87--


--===============7316409298698018817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7316409298698018817==--

