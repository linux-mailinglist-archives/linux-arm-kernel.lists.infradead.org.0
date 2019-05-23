Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EE9278E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 11:09:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2bH6sLzkkXgOJhZGBOjf+ewf/+qYMJnuFpF/u5fa9yI=; b=L9T
	WbBbSfbD+0UZjzfRokJNh5sMrcd7IW8jAzR4hkKtgWBKgHJ9v6VJfsrCqk8lZKF20x2Z+gZKcYJ9I
	rY8H2etf/gyPmohvyF/MeLjOCHC8HDr0m3vD0wM8kXiCPQzvOH6Fa0bqAJfLkRBANkQwza3g4taWu
	wyJB5COuy2ndEW8saiRD6ABBZhKzg/Hu8z6VaZWYDF/zOgGhONueq37aZqSN35vXUfRyxoY/+sr27
	3vbxT9C462g805zNnq8N0PXv7w1ng5L4XjSfXxvOThRNffy7nPFxw3A1PvLWGkUk7qRgrz0B6LaXu
	ObIY5HlODcUKRh+cLXH6BtrlSw0Kfmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjjM-0005Yh-47; Thu, 23 May 2019 09:09:44 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjjE-0005Tf-Gt
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 09:09:38 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 74E3E80311; Thu, 23 May 2019 11:09:17 +0200 (CEST)
Date: Thu, 23 May 2019 11:09:26 +0200
From: Pavel Machek <pavel@ucw.cz>
To: kernel list <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-omap@vger.kernel.org, tony@atomide.com, sre@kernel.org,
 nekit1000@gmail.com, mpartap@gmx.net, merlijn@wizzup.org
Subject: 5.2-rc1 on droid4: spi crash
Message-ID: <20190523090926.GA9106@amd>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_020936_710958_36BE0916 
X-CRM114-Status: UNSURE (   8.56  )
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
Content-Type: multipart/mixed; boundary="===============3641937143509993580=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3641937143509993580==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="6c2NcOVqGQ03X4Wi"
Content-Disposition: inline


--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

This was greeting me overnight... I don't yet know how reproducible it
is, it happened once so far.

Best regards,
								Pavel

root@devuan:/sys/class/leds#
Message from syslogd@devuan at May 23 00:11:31 ...
 kernel:[14889.641143] Internal error: Oops: 5 [#1] SMP ARM

Message from syslogd@devuan at May 23 00:11:51 ...
 kernel:[14909.638275] Process spi0 (pid: 100, stack limit =3D
 0x97305d31)

Message from syslogd@devuan at May 23 00:11:51 ...
 kernel:[14909.650238] Stack: (0xedee7ed0 to 0xedee8000)

Message from syslogd@devuan at May 23 00:11:51 ...
 kernel:[14909.652069] 7ec0:
 00000000 00000000 eba35c14 eba35c50

Message from syslogd@devuan at May 23 00:11:51 ...
 kernel:[14909.662841] 7ee0: edd93000 edd93360 ede3da50 c052683c
 ffffffff edadcc10 edadcc9c 00000004

Message from syslogd@devuan at May 23 00:11:51 ...
 kernel:[14909.671051] 7f00: 00000000 ede3d800 600f0013 edd93000
 eba35c14 eba35c50 edadcc10 edadcc10

Message from syslogd@devuan at May 23 00:11:51 ...
 kernel:[14909.679260] 7f20: 00000002 00000001 edd9322c c0526cb4
 edd932a4 edb34600 edd932a0 edd932a4

Message from syslogd@devuan at May 23 00:11:51 ...
 kernel:[14909.687499] 7f40: 00000000 edd932d0 edd932a0 edd932a4
 00000000 00000001 c0e82d14 edd932b4

Message from syslogd@devuan at May 23 00:11:51 ...
 kernel:[14909.695709] 7f60: c0e82d14 c0148f40 00000000 edca5580
 00000000 ede39400 edca55a8 edd932a0

Message from syslogd@devuan at May 23 00:11:51 ...
 kernel:[14909.703918] 7f80: ed88dd48 c0148e74 00000000 c01491ec
 ede39400 c01490dc 00000000 00000000

Message from syslogd@devuan at May 23 00:11:51 ...
 kernel:[14909.708251] 7fa0: 00000000 00000000 00000000 c01010e8
 00000000 00000000 00000000 00000000

Message from syslogd@devuan at May 23 00:11:51 ...
 kernel:[14909.720367] 7fc0: 00000000 00000000 00000000 00000000
 00000000 00000000 00000000 00000000

Message from syslogd@devuan at May 23 00:11:51 ...
 kernel:[14909.724334] 7fe0: 00000000 00000000 00000000 00000000
 00000013 00000000 00000000 00000000

Message from syslogd@devuan at May 23 00:11:51 ...
 kernel:[14909.807312] Code: e3a08c02 e5954034 e1a01005 e1a00007
 (e5943008)
 Write failed: Broken pipe
 pavel@duo:/data/l/k$
=20
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--6c2NcOVqGQ03X4Wi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzmY0YACgkQMOfwapXb+vImbACglBJwmJksJUdy7p/yaXHVJm2I
OzEAoLOmo07dE0Zan5Wn0qs3XGq3xV55
=vTr7
-----END PGP SIGNATURE-----

--6c2NcOVqGQ03X4Wi--


--===============3641937143509993580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3641937143509993580==--

