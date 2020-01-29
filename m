Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 582B214CBEF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 14:56:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yOuG+5NQ+fq88TaD7ypkXBdb3Jq65+ohMhjk1TwpjjI=; b=tE+ocad45hTXq09sC83K+/rRv
	JKkqVa4DqW9L+A6U0xXD5ZorVDt6Tw8oXMjOwAUOAiiCKUVF6Ctxd443iE+vjBHMb+c+UBbxG75hv
	OWFrUUL4+BKsuZXWc54mbc1TP56Zn7j2ZOzXCtfDXxnB1YhbT92e6XIxgITfXpRLDmcVqSexpqH3e
	1xqCwFN7UFL/ZQuMfyLcZexJ7dqR5C/qfYc9Vk5R+DrH9cyfVLFYCVgiVhD/mu4MAWFEak09wbNrU
	nhTojKOoiIaaFb+UsQ1W7tlUIqXMZRf7tOJkkZwF+xDKnGkMn9zH2SnSWXfeR43pKrVoCck9FoUtb
	Y3gAflHIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwnpT-0002Hl-84; Wed, 29 Jan 2020 13:56:27 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwnpJ-0002HI-Du
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 13:56:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 29963AD85;
 Wed, 29 Jan 2020 13:56:16 +0000 (UTC)
Message-ID: <1aca11e7f66c0ebfc9499097d7c40a1835a80224.camel@suse.de>
Subject: Re: [RFC PATCH 0/4] pinctrl: bcm2835: Add support for all BCM2711
 GPIOs
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Florian Fainelli
 <f.fainelli@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, Ray Jui
 <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Date: Wed, 29 Jan 2020 14:56:14 +0100
In-Reply-To: <1580148908-4863-1-git-send-email-stefan.wahren@i2se.com>
References: <1580148908-4863-1-git-send-email-stefan.wahren@i2se.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_055617_615105_39F9ABE3 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-gpio@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2504538041681947041=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2504538041681947041==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-paFAbKmIJx8fhqD6d+ZI"


--=-paFAbKmIJx8fhqD6d+ZI
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-01-27 at 19:15 +0100, Stefan Wahren wrote:
> The BCM2711 supports 58 GPIOs [1] by using the existing BCM2835 GPIO regi=
sters
> completely. So there is no need to change the binding.
>=20
> Patch 1 and 2 prepare the pinctrl driver to be extended to 58 GPIOs in Pa=
tch
> 3.
> I didn't want to squash them in order to make review as easy as possible.
> The final patch 4 assigns all SoC GPIOs a label as we already did for
> the older Raspberry Pi boards.
>=20
> [1] - https://github.com/raspberrypi/linux/issues/3101#issuecomment-57309=
2294
>=20
> Stefan Wahren (4):
>   pinctrl: bcm2835: Drop unused define
>   pinctrl: bcm2835: Refactor platform data
>   pinctrl: bcm2835: Add support for all GPIOs on BCM2711
>   ARM: dts: bcm2711-rpi-4-b: Add SoC GPIO labels
>=20
>  arch/arm/boot/dts/bcm2711-rpi-4-b.dts |  74 ++++++++++++++++++++++++
>  drivers/pinctrl/bcm/pinctrl-bcm2835.c | 106 ++++++++++++++++++++++++++--=
-----
> -
>  2 files changed, 156 insertions(+), 24 deletions(-)

Overall this looks good to me (modulo the small comments). I also gave it a=
 go
on RPi4 and RPi3b without issues.

Regards,
Nicolas


--=-paFAbKmIJx8fhqD6d+ZI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4xjv4ACgkQlfZmHno8
x/7yugf5AWxKTdxdP/JzIcOGAX2fJIvWc9lWYEAIxvcQqDsO5+HAuYMj9ehOQXrc
HAI3r/UAS5EQGaotd2OuLj/UkkZRwyukoc4baF2xvARRWCyTFxbRX0XOdy0x7BOb
e4ZeMCI12sb0xZXNzsC+qlIidQ5At66CIdrn64vrDvtyrtkjR4/bYW8M3evTj+4x
CGIF+P8J9ZWVsbRyKohYnsj33Ggi6pwwHXzGAxbOgdJyToF9l10LnEW0WrmieKov
84UleM5Exg4ic23NbxSBpTdQzM83ht0d5yLW/gZf7e4gaI/Hy3yn1Wnu8nEJwnHa
xSUxIt7nyLcMLMHrwoKIi0QSvnSFqA==
=pB/z
-----END PGP SIGNATURE-----

--=-paFAbKmIJx8fhqD6d+ZI--



--===============2504538041681947041==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2504538041681947041==--


