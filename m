Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C545891638
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 12:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=f8aKWNBJznl0gBnyC5JmrIS4GvpsB5ZXzpm9VkS7Db4=; b=oGK
	ia8ujVUbr97GHuTMlZoMS1fkomiYZTc5dIxt/IGsGI0qHkzWJUt4n7VXtzfC4XHizi/vbVCKu4Oz1
	Ukw24Ljrg2vlSyB7wgXPbRtG7URpfOMxaCxxgYOnIS6al2G0xl1dBektm6ZUYa4++VsulHdfRtUWe
	ecEi75FI7RF3sLMIav9CcIWmKi1MtUMyd+1eZLpKmKku63IVstfrIbeFwLfDb9U2xSUleB2nIcxTl
	CVNjNCQNe4KMntDbdpf9GVAMTG7+K6KcaAOz9uS9BVY0nDZuEmJxnluOUpvWAnAawrOTaGr4mYmmY
	2UnWI/VBzT1U9YTuYsG4GGhRZlPvnWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzIhy-0008So-0T; Sun, 18 Aug 2019 10:46:46 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzIhp-0008SB-Fy
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 10:46:39 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 911FD81221; Sun, 18 Aug 2019 12:46:17 +0200 (CEST)
Date: Sun, 18 Aug 2019 12:46:29 +0200
From: Pavel Machek <pavel@ucw.cz>
To: kernel list <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-omap@vger.kernel.org, tony@atomide.com, sre@kernel.org,
 nekit1000@gmail.com, mpartap@gmx.net, merlijn@wizzup.org
Subject: wifi on Motorola Droid 4 in 5.3-rc2
Message-ID: <20190818104629.GA27360@amd>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_034637_687440_D054D67A 
X-CRM114-Status: UNSURE (   8.72  )
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
Cc: linux-wireless@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4500960649787597431=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4500960649787597431==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="3V7upXqbjpZ4EhLz"
Content-Disposition: inline


--3V7upXqbjpZ4EhLz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

First, I guess I should mention that this is first time I'm attempting
to get wifi going on D4.

I'm getting this:

user@devuan:~/g/ofono$ sudo ifconfig wlan0 down
user@devuan:~/g/ofono$ sudo ifconfig wlan0 up
user@devuan:~/g/ofono$ sudo iwlist wlan0 scan
wlan0     Interface doesn't support scanning.

user@devuan:~/g/ofono$ sudo ifconfig wlan0 down
user@devuan:~/g/ofono$ sudo iwlist wlan0 scan
wlan0     Interface doesn't support scanning.

user@devuan:~/g/ofono$

I'm getting this warning during bootup:

[   13.733703] asoc-audio-graph-card soundcard: No GPIO consumer pa
found
[   14.279724] wlcore: WARNING Detected unconfigured mac address in
nvs, derive from fuse instead.
[   14.293273] wlcore: WARNING Your device performance is not
optimized.
[   14.304443] wlcore: WARNING Please use the calibrator tool to
configure your device.
[   14.317474] wlcore: loaded
[   16.977325] motmdm serial0-0: motmdm_dlci_send_command: AT+VERSION=3D
got MASERATIBP_N_05.25.00R,026.0R,XSAMASR01VRZNA026.0R,???

Any ideas?

Best regards,
									Pavel

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--3V7upXqbjpZ4EhLz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1ZLIUACgkQMOfwapXb+vKeEACeJJ3HEUEGDtIKmgSfesXs0VH+
NJgAoIr8AhZlKZt6EoTHuPl5lOSxfXNI
=etkx
-----END PGP SIGNATURE-----

--3V7upXqbjpZ4EhLz--


--===============4500960649787597431==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4500960649787597431==--

