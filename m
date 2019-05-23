Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D63EE28CD1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 00:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=A9mc+JlCdEcSCTUR/XSEhVvMaKkTIVQDzK4PiUWMcQw=; b=fKP
	8oZiWu0a/7UvFGcSbFsacv/2HQQuGON5Wv/6yInWtKNbToD4M69hO6AjFyBH6N06DKntJcWh3gyyY
	P7ICdKgCRJ/EXh47iaYyw5FuHYbXp/vDSsXBzVEyY+Fl6TWUPPVKk9mPX82J0YPzVszABGVsB8uAt
	8mv8/5+s7ndvUuY9lmjo2YDEkv3qgmOy2eta6tdJHWq5vgCdZYn2Bq6a+9aXnsE6vUqUCpXBNpcXq
	YC8f4spIY/1zV7nn9HsUMKeMRpIQCA0he8JGrGRzTHLiFc7wk0qyySyEoHh3ZUhiH8UyxY5Bo8DRa
	klO8PDjW3Pvqw/ZkxnHB4Ew+jz+lCug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTvll-0001c8-VW; Thu, 23 May 2019 22:01:01 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTvle-0001bH-4V
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 22:00:55 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 0D393803EF; Fri, 24 May 2019 00:00:37 +0200 (CEST)
Date: Fri, 24 May 2019 00:00:47 +0200
From: Pavel Machek <pavel@ucw.cz>
To: linux-leds@vger.kernel.org, linux-kernel@vger.kernel.org,
 jacek.anaszewski@gmail.com, dmurphy@ti.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-omap@vger.kernel.org, tony@atomide.com, sre@kernel.org,
 nekit1000@gmail.com, mpartap@gmx.net, merlijn@wizzup.org
Subject: Droid 4 backlight support
Message-ID: <20190523220047.GA15523@amd>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_150054_331710_4DD65F4F 
X-CRM114-Status: UNSURE (   9.52  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0790142622753395858=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0790142622753395858==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="pf9I7BMVVzbSWLtt"
Content-Disposition: inline


--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

Good news .. we have driver for backlight in mainline, AFAICT.

Bad news .. it is called "lm3532::backlight" or something like that. I
guess we should switch to ":backlight" or something? It is quite
important to do that before someone starts to use the ABI...

And now... we have the driver, but it is not connected to the
backlight subsystem. I guess we could make the LED "default on" for
now... but if there's better plan, let me know.

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--pf9I7BMVVzbSWLtt
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlznGA8ACgkQMOfwapXb+vKvEACgqh7D8W9xEk0CYM0E6JZ/nYzP
NSwAn33OnShByv5jZg7ue2kh7hB/D4jj
=5e5V
-----END PGP SIGNATURE-----

--pf9I7BMVVzbSWLtt--


--===============0790142622753395858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0790142622753395858==--

