Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72743EDB48
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 10:09:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lEhrYu80e01Bts+7R88rLogYi7+BwA2LBZtHEcrsUas=; b=D+26m7pCn1I92ZzgBMi7opgUu
	jhDw/NDG2McNTytTgPJeNpCfsL7cIrYIUM1MAp0f/3ZotlFaDCdn+2DY2Nao42w3ToAQv52i54bYT
	2hjEOwU4juIDkn4RTBV94RnaAknu3a2Qa48BunS2donxF6GJFIUDsnGRF/P0JTsPl2Z0q1oZjBLvl
	LMU4bzHuFEELmsCLxCUTWz6xccy43YTJtJaT6X3PhwPuBdCJVxt7KJmxrYEhhFOr8EbwtlvBsOkor
	l3UKFWFXbltAQq5FP9YXQ7fT0lguRGy5tqj103+oIJcdxshVtK1W2FE8jbcb3swfWDN3i+iWFiUCO
	67AnQVsuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRYMd-0002lI-Ca; Mon, 04 Nov 2019 09:09:31 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRYMW-0002kX-9E
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 09:09:26 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id A99BA1C06C8; Mon,  4 Nov 2019 10:09:19 +0100 (CET)
Date: Mon, 4 Nov 2019 10:09:19 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH] ARM: dts: bcm2837-rpi-cm3: Avoid leds-gpio probing issue
Message-ID: <20191104090919.GC12355@duo.ucw.cz>
References: <1570964003-20227-1-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
In-Reply-To: <1570964003-20227-1-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_010924_475197_C875BDA1 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Dan Murphy <dmurphy@ti.com>, linux-leds@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7555667973624450256=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7555667973624450256==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZmUaFz6apKcXQszQ"
Content-Disposition: inline


--ZmUaFz6apKcXQszQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun 2019-10-13 12:53:23, Stefan Wahren wrote:
> bcm2835-rpi.dtsi defines the behavior of the ACT LED, which is available
> on all Raspberry Pi boards. But there is no driver for this particual
> GPIO on CM3 in mainline yet, so this node was left incomplete without
> the actual GPIO definition. Since commit 025bf37725f1 ("gpio: Fix return
> value mismatch of function gpiod_get_from_of_node()") this causing probe
> issues of the leds-gpio driver for users of the CM3 dtsi file.
>=20
>   leds-gpio: probe of leds failed with error -2
>=20
> Until we have the necessary GPIO driver hide the ACT node for CM3
> to avoid this.
>=20
> Reported-by: Fredrik Yhlen <fredrik.yhlen@endian.se>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Fixes: a54fe8a6cf66 ("ARM: dts: add Raspberry Pi Compute Module 3 and IO =
board")
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>

Acked-by: Pavel Machek <pavel@ucw.cz>

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--ZmUaFz6apKcXQszQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXb/qvwAKCRAw5/Bqldv6
8s9rAJ4yTRIe97T+lFBPRHVvathcg6ZLogCeIdAfUfoLu27bqE38/MrvOEGnIYU=
=w3/X
-----END PGP SIGNATURE-----

--ZmUaFz6apKcXQszQ--


--===============7555667973624450256==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7555667973624450256==--

