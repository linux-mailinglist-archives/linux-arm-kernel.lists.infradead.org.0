Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F83151799
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 10:18:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LFa4rrR1qcUmngv662Q9LsEfgxuuQMx4TY4TFOVcgDE=; b=IzMBJVl+HpoYMMjOJc+FrV5kw
	RUYedgU8R1fT3VN/MJZCSM6/D6fpBgMEhzOS50ds0lG3xv/EpeLIXVAmm6hs1tBycr4Wmv/fT+ZX0
	89lGAKP/ERtjaAJGzbJ/5cmTA3G3FtypwZg3Bd8vxBOSEys9Hc0YdxMlbbaR1Db/WPv6glk6ZPhyR
	CZOMluWPsqQ1xCZKsjJ9FVzbk+eRZh6xJ/p2MbH0JyaTHcu8E+cThWAdM8D5wETS9xi65ScNG+YA3
	DQWhE+rhbzhIo3xlGvq0OuLKbr+pz6v0edeI2CFiDJt+ynmz+JWTz/UTNsbDcoGXDf6+z65dc42IR
	G2S6AgMNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyuLD-0005wD-7K; Tue, 04 Feb 2020 09:17:55 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyuL6-0005vb-Bd; Tue, 04 Feb 2020 09:17:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9DE97AC65;
 Tue,  4 Feb 2020 09:17:46 +0000 (UTC)
Message-ID: <08e2b640f0a7713d905295fc4f75df49617be6c1.camel@suse.de>
Subject: Re: [PATCH] pwm: bcm2835: Dynamically allocate base
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org
Date: Tue, 04 Feb 2020 10:17:43 +0100
In-Reply-To: <20200203213536.32226-1-f.fainelli@gmail.com>
References: <20200203213536.32226-1-f.fainelli@gmail.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_011748_551984_FF0CAC2B 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "open list:PWM SUBSYSTEM" <linux-pwm@vger.kernel.org>,
 Bart Tanghe <bart.tanghe@thomasmore.be>, Scott Branden <sbranden@broadcom.com>,
 Stephen Warren <swarren@wwwdotorg.org>, Ray Jui <rjui@broadcom.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>, "moderated list:BROADCOM
 BCM2711/BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>,
 Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8037234980299450018=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8037234980299450018==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-EbQc4kroDO+Hs5CLjdIl"


--=-EbQc4kroDO+Hs5CLjdIl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-02-03 at 13:35 -0800, Florian Fainelli wrote:
> The newer 2711 and 7211 chips have two PWM controllers and failure to
> dynamically allocate the PWM base would prevent the second PWM
> controller instance being probed for succeeding with an -EEXIST error
> from alloc_pwms().
>=20
> Fixes: e5a06dc5ac1f ("pwm: Add BCM2835 PWM driver")
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

>  drivers/pwm/pwm-bcm2835.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/pwm/pwm-bcm2835.c b/drivers/pwm/pwm-bcm2835.c
> index 91e24f01b54e..d78f86f8e462 100644
> --- a/drivers/pwm/pwm-bcm2835.c
> +++ b/drivers/pwm/pwm-bcm2835.c
> @@ -166,6 +166,7 @@ static int bcm2835_pwm_probe(struct platform_device *=
pdev)
> =20
>  	pc->chip.dev =3D &pdev->dev;
>  	pc->chip.ops =3D &bcm2835_pwm_ops;
> +	pc->chip.base =3D -1;
>  	pc->chip.npwm =3D 2;
>  	pc->chip.of_xlate =3D of_pwm_xlate_with_flags;
>  	pc->chip.of_pwm_n_cells =3D 3;


--=-EbQc4kroDO+Hs5CLjdIl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl45NrcACgkQlfZmHno8
x/6nWwf/bExOZqkMvtRTNZmYHlMDm/EcuWxY09oRB9bF+sIaJZVAbkj1+gTil1cr
ATdzExmfH0rifiRTbUNV8FaRVhVVYgy0NW+uSmz/+z/pCJ6utDfhPXrkc9nR0tCk
5QrrBVZBPwxQB6VY1nFPSXYQlhR0F7AitIjoCH+ITRPIbCC8fCzamU+COu9vxDuw
QWVA/tYIwTqAV9DKFg31H1SJqhphepSjZ4OTUTO3Yq1H+abKiYUGtS9QYO0I8JI6
23yFymYMBAW53C68ZX9rsg4A//bg/vwDEwP2MgKOXcrmicLZs4s4vx1CyZu6VrGn
2YmNKpAeZ0qy2PRhqdluWH6RM5JNQA==
=tBu+
-----END PGP SIGNATURE-----

--=-EbQc4kroDO+Hs5CLjdIl--



--===============8037234980299450018==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8037234980299450018==--


