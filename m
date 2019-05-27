Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA56B2BA83
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 21:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ySh+X/Dvoa+ubECLI/PuAY4phZjyIpWOrzdyble5E6o=; b=QaiGDnIR+2YDIszPh+fjCGAdR
	QbIpBL74qPvgH90g3+S6eRWmwdCLt4EXCZOLcxAoNzx+rIA+SnhNIwwCmer7KRnbz5teKW564OPTB
	8SYIzwaB9Nmld58JGp+xYDWdIk51n78rOxUAxwbJg3O7mfMtMfR7niN1tOcFdB1QBLDnxmoXdUuBs
	CCBfxLaED+EC0thakyTsK+xx9IGciqL+nkjJvW/yx5s6A52Cn7NoIKFOr1JQMuP6o993IlbOM25oQ
	+tH+I7Q4ihiANIsdQKBkzOavmhDa/U9SPnwax0aQAVKlWW9ay7NXW0lubyxMbxJLVKozxqtUWyGo0
	kslcPJHUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVKwz-0004r5-Kj; Mon, 27 May 2019 19:06:25 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVKws-0004oh-MB
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 19:06:19 +0000
Received: from localhost (p5486CF59.dip0.t-ipconnect.de [84.134.207.89])
 by pokefinder.org (Postfix) with ESMTPSA id E71772C04C2;
 Mon, 27 May 2019 21:06:17 +0200 (CEST)
Date: Mon, 27 May 2019 21:06:17 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH] i2c: imx: Use __maybe_unused instead of #if CONFIG_PM
Message-ID: <20190527190617.GC8808@kunai>
References: <1557026820-29428-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1557026820-29428-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_120618_870607_2EB2BA87 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "eha@deif.com" <eha@deif.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "wsa+renesas@sang-engineering.com" <wsa+renesas@sang-engineering.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "peda@axentia.se" <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: multipart/mixed; boundary="===============5604358698712829886=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5604358698712829886==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LwW0XdcUbUexiWVK"
Content-Disposition: inline


--LwW0XdcUbUexiWVK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 05, 2019 at 03:31:55AM +0000, Anson Huang wrote:
> Use __maybe_unused for runtime PM related functions instead
> of #if CONFIG_PM to simply the code.
>=20
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied to for-next, thanks!


--LwW0XdcUbUexiWVK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAlzsNSkACgkQFA3kzBSg
KbYqkQ//bc++1BsW2mcNsRYs3x+wn7q33xEltFS/Z+l6e7RdQVqrbo6J9choQYao
8P7UHRFbYv8P/DtFXQIG4kiVtq0ERHpzQu6FAn6UX3QaKhgk86/AEoYIsq6CwLKD
w57KoElNhrBz3uLl6/jjRVwRM7xUZ2A3c2QCBu1J+J0Pe6iPDvU59EuoS71bv4Ye
w+w/1bMmL/RuZQ2zCB1rnyzTGjUHSIhNpsbQnZ8xeRXeFfmuMy5V6jE5sXE5Dbkg
jTAiEkH/l9hAOnSWLFJSSkNpWO42dRBdSRiTbEM9ToMX9DBzCpaqeZyFXRHKrfXQ
TTLbIZfn/5Eek3kg2WtaZp7y85M6sjR84eURdcKfOSmmIEGSWjubXoSoaLzZdPfM
SJReS6LxzeQDHNSZmbavdylmke1Cru8wH7E6bqShililnycrAe1TwBG9Gh/HEYu5
uSiqtPsURs+Lg8IOy1hbMoexCWFstG7y7FgzzVwLB6Pwe6WLlVRRdN1kDb1lnnYJ
tna9+IFQdpY22udjjjv/+a/L/PgT1lby1/zhVvBKu8tLhLclh6m9jm05ov9OaE49
TkM5052NAD+uDrMamDOkKXQX33dinDehP/WmVyItEbgIWbe0HvGXaH+HBVlVKvrs
Skipi7i5xJUIOINUg0kjZa9+w1BVMfXFqQJNHbP14NAcbcPzZz0=
=BAhy
-----END PGP SIGNATURE-----

--LwW0XdcUbUexiWVK--


--===============5604358698712829886==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5604358698712829886==--

