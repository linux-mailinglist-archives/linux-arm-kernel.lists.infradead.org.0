Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9E418C65
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 16:53:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yQfIi8Rgq7qj9inSpGbIQzGB1YMczUx9JLDJUOUl0NU=; b=e6AbdYxsCWNiV93eBZaEXkOtj
	D9FqljB7r2Gn7DxyyIh9Pvq3VfFOhbPD3GcIdAMTUth298I3cEEEG3fC049oWeboYuzqYUNjIPoEn
	kaMMQBTY/vipiJXdEx9gb3aaTa87wuzKHbWtm/JaZo1hrO8hvlFkZhZcr/EHeydpFogxhz+LSoeBh
	w2TSL1iISqOZDXgXWw6I6SFE/UWNyk6bq2svu18SCOvM1VZ1tCOu35STVsvCAue8LJlLWYbUvBzso
	AYgKuzVox2dz9ukbsVfy8OzHhfZOqZWqEfYwkpX5vUYZiul5HVGnEA1xP9NkAwUrOXf5JFAci+9PM
	6ckBuLWDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOkQ6-0007j3-5N; Thu, 09 May 2019 14:53:14 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOkPv-0007es-A9; Thu, 09 May 2019 14:53:05 +0000
Received: by mail-wr1-x443.google.com with SMTP id r7so2832528wrr.13;
 Thu, 09 May 2019 07:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Q+1TsGRKkwXUYYOoB2LIsila6ZhfcUv70iojfQ5/w9M=;
 b=dvO63F4GKSuh+nx1VkFNjrbeq11WPXdaaDZIDHHzeqEb0NC2LSjjRvIMFTU6xWKCAS
 NSz848cbvpQZmfWPe8Q5F4WzqTlzYFtIjQhq/iBANrIEZD29GrwhSUThKRvtqeTLxVga
 8Jnwbvwxoh0zvK8gumUsopxm8EUOq5ylrRawCp/7M9GfeiySm5Bez81iFE3VNLSEd4V9
 jvy8KDKUx8jOblvYJ49BYWvY6S1dho2EH1yeg2+zuUBZUaf+IwTxARnK76IGMxTYQJAV
 WRDGN4TEsnlJ3OnxtVJzOpnEAq9+T/h8Es3/+9cWV6POPE+EwjxLrew7SYzA1rK8IDvB
 +i9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Q+1TsGRKkwXUYYOoB2LIsila6ZhfcUv70iojfQ5/w9M=;
 b=jQBJ9Al4+OgN4vSA28L2lb/JC3R/36Yec2/7dTK4opuiLEQVOgLrTVvP0uA8veL8vt
 AguhI0uZ9WM9DADRlul+l339m7SxK+oTWABXY+hft5VYVetxb2QryXAzO/1bRcLsET9v
 Jl8CYR4QiH3Z6do5n8nUhFgd/X6Foz/lFn63+3M8/4MZPraFm74vjrsuqo2yRCRM3xJ2
 xeeT8yYLbiyYmRzr4DYtRkcKWqzsvmuXL+w7rfV07qHCJ87AbgRh04vTUWKpaM0zp3Bq
 BoSJOc2pAH0XeHtfxxE/A01A9hi0Go2JrSb4ds/cbjzQIPf4mGlMgeX5QAB8oBm17y3o
 R+fw==
X-Gm-Message-State: APjAAAW1GC1dMaEHNlz2txOJ1tqYJNyt8pe2ddI1WYdecPf8HW1/rujq
 s/2oLtnSYY82otloXg4PGRk=
X-Google-Smtp-Source: APXvYqzIxbcYRCSo8r50PrcP3rEHkfelhjH97R+hDzmn2hwZU4TaoWItIaQT7DNkBg+WqpZCTE6Naw==
X-Received: by 2002:adf:9dd0:: with SMTP id q16mr3534840wre.28.1557413581230; 
 Thu, 09 May 2019 07:53:01 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id v184sm3707659wma.6.2019.05.09.07.53.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 May 2019 07:53:00 -0700 (PDT)
Date: Thu, 9 May 2019 16:52:59 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH 0/2] pwm: meson: two small bug-fixes
Message-ID: <20190509145259.GA8907@ulmo>
References: <20190401181817.11999-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
In-Reply-To: <20190401181817.11999-1-martin.blumenstingl@googlemail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_075303_440504_AC5C6DE9 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, narmstrong@baylibre.com,
 bichao.zheng@amlogic.com, linux-kernel@vger.kernel.org,
 u.kleine-koenig@pengutronix.de, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, jbrunet@baylibre.com
Content-Type: multipart/mixed; boundary="===============1532403426290704507=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1532403426290704507==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sdOeJE8sLwpQaOMV"
Content-Disposition: inline


--sdOeJE8sLwpQaOMV
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 01, 2019 at 08:18:15PM +0200, Martin Blumenstingl wrote:
> This series applies on top of my other fix "pwm: meson: fix scheduling
> while atomic issue" from [0]
>=20
> The first patch fixes an issue where the maximum possible pre-divider
> (128) could not be used because there was an off-by-one error in the
> code. I discovered this while testing with the longest supported period
> (349514407ns) when running from XTAL. This is verified to work on my
> Meson8b Odroid-C1 board using "pwm_b" on GPIOX_11.
>=20
> The second patch was suggested by Uwe Kleine-K=C3=B6nig but was actually
> implemented much earlier (back in mid 2018) by Bichao Zheng from
> Amlogic. This patch fixes changing the duty cycle by relying on the
> hardware to re-start the PWM output (instead of adding an artificial
> "constant LOW" of about 20ms - as measured by Bichao Zheng when
> stopping and re-starting the PWM output from within the driver). I
> tested this fix on my Meson8b Odroid-C1 board which uses a PWM driven
> CPU regulator (DVFS with all supported OPPs is still working fine for
> me, although I couldn't observe any issues before this patch).
>=20
> I also have some code-improvements queued which I'll send in the next
> days, see [1]
>=20
>=20
> [0] https://patchwork.kernel.org/cover/10880419/
> [1] https://github.com/xdarklight/linux/commits/meson-pwm-for-5.2-v1
>=20
>=20
> Bichao Zheng (1):
>   pwm: meson: don't disable pwm when setting duty repeatedly
>=20
> Martin Blumenstingl (1):
>   pwm: meson: consider 128 a valid pre-divider
>=20
>  drivers/pwm/pwm-meson.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)

Both patches applied, thanks.

Thierry

--sdOeJE8sLwpQaOMV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzUPssACgkQ3SOs138+
s6HQ2w/5AYGbx7MbLUpSUjsimmVEVGLHZMNi+Ma8lE2mK2HKzvp1nHPQvai/Pob7
2dnkyZjxB5FhHBJSuh92Wpk7rdLUMEG0mY/BJRkZG5Ne2dt94Jxyz2clVbM950kE
7YtzMBuPmCWvn8noD9aSyiVqVAeBppUfQhBBWvWaC2byjmXW5YB0ND/yyZH6o33x
ZS9gH8v6COySx2zNxzWjk3Fx7q8PjqnY2JvKZqpLSoE4rt49YJnUdafeRPDdBOoa
odBOSmVE8u4NvjLL/lbHgfpX9ITApqBGsfIX9EQZiqsGsD3DFFJff7zuxjMJJLfZ
cVsvWaTRzQhPxB2CkWQJ/yn8OI0JOPdCXKyZM1sK/apBRj3lEhD6AoYdwlslk4MW
Qn4mqSf5yWE7i8XnSo9Bb3IvE0U0F9+WSRE9Cf/IeKryeE2SwbIGNbbHrtQNqD4I
95xa0Ck4ijkwX4N3j1fL+/6VfLG/gRUs7aXUtwfMPyf4ln49hwHvAkFJfWU7fOqm
zffAQhbmqEeuiGFO9BZGHtTF5l9WzOEhs+aqtupn226xLAAUA5AUUZeypRwswNIM
x8X91p+Iy/EJdck2vcsLmFgl2CHuSo45bUepmicGOaOc1611ZZMry5fgqSgEn4iI
pVmuiNeb8uZ//O5v+GG0vdt94+lLwZAwCARg/UHfmPf55T4AMuI=
=7AFQ
-----END PGP SIGNATURE-----

--sdOeJE8sLwpQaOMV--


--===============1532403426290704507==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1532403426290704507==--

