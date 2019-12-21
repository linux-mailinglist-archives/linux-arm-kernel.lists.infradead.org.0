Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F79128ACB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 19:21:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RlR6/wVLbRlielDd9eCjlDOwAiVa68SY1MDna6ZRgxQ=; b=Z7BmK+KZ85GoBfElKb17lF2Du
	dTIO7WkJGV1Mou0Nz8ocR3eZzwgtW/oC8xFo8hZjOVtE+bUGIJlDJtGmWM8/sakFuriCYGw8l67Ks
	pFZIugqHIRPhMkNbXCB+hxVLAzZKykKyj5m7T40FS7RNdXg2XgaNZ24iMna4IgEBjm4cciY7VUplk
	KfMGi01huW5yypZT5y+lV3V4zlMswHNjb404UnEsUJb1wTURYyHymaGln6zR3K1O6PSddP+qw5m8W
	/C/zj/2SNXWCAr1g/WhjkJBS1Ky1Z25MoYray5nsCNUF3qkDWh5yJr9I6F3vPEfjPQOlKrTpeLk5E
	a1ww3Tf6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iijNK-0002aX-Vj; Sat, 21 Dec 2019 18:21:14 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iijN7-0002Yt-A1; Sat, 21 Dec 2019 18:21:02 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 4B2391C24DF; Sat, 21 Dec 2019 19:20:58 +0100 (CET)
Date: Sat, 21 Dec 2019 19:20:57 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [RFC 00/25] arm64: realtek: Add Xnano X5 and implement
 TM1628/FD628/AiP1618 LED controllers
Message-ID: <20191221182057.GA32732@amd>
References: <20191212033952.5967-1-afaerber@suse.de>
MIME-Version: 1.0
In-Reply-To: <20191212033952.5967-1-afaerber@suse.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_102101_501941_A8BCB10F 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Roc He <hepeng@zidoo.tv>,
 csd@princeton.com.tw, linux-realtek-soc@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Dan Murphy <dmurphy@ti.com>,
 linux-leds@vger.kernel.org, zypeng@titanmec.com,
 linux-amlogic@lists.infradead.org, sales@fdhisi.com,
 linux-arm-kernel@lists.infradead.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: multipart/mixed; boundary="===============1020335302142108893=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1020335302142108893==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="opJtzjQTFsWo+cga"
Content-Disposition: inline


--opJtzjQTFsWo+cga
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> This patch series implements the LED controllers found in some RTD1295 ba=
sed
> TV set-top boxes.
>=20
> Ever since I've had mainline Linux kernels booting on my Zidoo X9S TV box,
> it's been bugging me that it kept displaying "boot" on its front display.
> A hot lead was a TM1628 chip on the front display's daughterboard, which
> English and Chinese datasheets were available for. The biggest
> hurdle

Fun :-).

> It goes on to add a "text" attribute to the driver that enables DT-config=
ured
> seven-segment displays; I was expecting to find precedence in auxdisplay
> subsystem but came up empty. So my driver currently integrates its own
> generic (but incomplete) character-to-8-segments mapping, as well as in a
> second step a combined-characters-to-8-segments mapping, which then gets
> mapped to the chipset's available output lines. Doing this as sysfs
> device

I did not investigate this in great detail; but if it is displaying
characters, auxdisplay is probably right subsystem to handle that. I
guess LEDs can still take the low-level parts...

Oh, and common dimming for many LEDs is seen on other hardware, too
(Turris routers). Not sure how to handle that, either :-(.

Best regards,
									Pavel



--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--opJtzjQTFsWo+cga
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl3+YokACgkQMOfwapXb+vJoqgCfY5/dzSIdT0c0DWaA1+WWkFdQ
6wkAoIzd/X2VTQwW3tq7WApoawbDjUdO
=xFhp
-----END PGP SIGNATURE-----

--opJtzjQTFsWo+cga--


--===============1020335302142108893==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1020335302142108893==--

