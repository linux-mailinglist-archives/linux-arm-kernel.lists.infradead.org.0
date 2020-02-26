Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5FB1700BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 15:09:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O1KzMHKJ33o3jfmG2P8SQQ0ieo6yvboL8OY/GQRe0KQ=; b=lzPojBuGSD84iLnr0i5DoYROr
	rFjMslkXbH/lXkeU/r0bMFfU/5tHveBXA2XyKUQ+s+IBB81MPHKdLlET3GI5iXBuopJV2Lx1wlWNt
	jdV/JyyluGWR01e5Qf2NLZLNQLf3k2mD3TZEzmzsnTn03iaAm8Edy7RRiKNZeCaI/0Hya77+FbdAS
	tDFFB324LlPDBouJPZZBUMbTNPRLU7PLMuTISC8xvWlF5NArkbyat0LDinxe5yWlBlyVbseV75dKR
	aMYkuidX8b0T9iakOtPrcE8/Y1iyqoUejhdC5RDF8JZ51oiKifsgBPyQkpVmSQVS/YDrOJ9aVkrjw
	kXjNZS7rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6xNB-0002fX-PT; Wed, 26 Feb 2020 14:09:13 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6xN1-0002et-Bp
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 14:09:08 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id A0F481C0411; Wed, 26 Feb 2020 15:08:54 +0100 (CET)
Date: Wed, 26 Feb 2020 15:08:54 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH 2/4] leds: axp20x: Support charger LED on AXP20x like PMICs
Message-ID: <20200226140854.GJ4080@duo.ucw.cz>
References: <20200223131435.681620-1-megous@megous.com>
 <20200223131435.681620-3-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20200223131435.681620-3-megous@megous.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_060903_559681_8881DE5F 
X-CRM114-Status: GOOD (  13.79  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, linux-leds@vger.kernel.org,
 Dan Murphy <dmurphy@ti.com>
Content-Type: multipart/mixed; boundary="===============6254446319613955925=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6254446319613955925==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="pMCBjikF2xGw87uL"
Content-Disposition: inline


--pMCBjikF2xGw87uL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> There is single LED that can be turned on and off by the user, or set to
> be controlled by the charger in 2 different modes.
>=20
> The driver initializes the LED to be controlled by the charger, but
> allows to switch it to user control, and change the mode of charging
> indication via a sysfs.

You'd need to document new "control" file.

But hold on, it is not an only driver with this "user-or-hardware"
feature, and we want to have a common solution. And that solution is
probably to have "hw-charger" trigger _just for this_ LED.

I can easily take a driver that always handles it as a "user" LED, if
you can get ACKs from device tree people on the documentation patches.=20

> +	led->regmap =3D axp20x->regmap;
> +
> +	led->cdev.name =3D "axp20x-chgarger-led";

typo.

> +static void axp20x_led_shutdown(struct platform_device *pdev)
> +{
> +	struct axp20x_led *led =3D platform_get_drvdata(pdev);
> +
> +	/* On shutdown, we want to give LED control back to the PMIC,
> +	 * so that it doesn't stay on, while the system is off.
> +	 */

Comment style.

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--pMCBjikF2xGw87uL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXlZ79gAKCRAw5/Bqldv6
8nOWAJ9NQxUKukUGwa5fNg6SxG8/V3ZUsACgmEnR1/qSwGL7JhaQyk2Eu8m93Ok=
=jl8u
-----END PGP SIGNATURE-----

--pMCBjikF2xGw87uL--


--===============6254446319613955925==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6254446319613955925==--

