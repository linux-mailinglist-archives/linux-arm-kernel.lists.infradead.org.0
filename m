Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 129AC17D5A6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 19:55:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G6iQcSFkX6baSnLuAUomZdkXuwK9Rin2K91urpCS79c=; b=cXPOHyy6o3qiRo3RbttYLgZoy
	feeUDpMHK7AwbANvMKyDnq9iVfbICVtYlZsnhv9WuKlhsAuLZH340DIm29gJj6qROjQVYSzm4dydC
	bnzew+X7QgrJXiMaO+1ZsJOBo6ydtTIi17RfxAtC8+XCOv+P5/bQS48dt+ySEgg406sKRf+OoYPJ3
	RDnYK+Jyr9Xce7iI1rwKVvlTn0AOukWkC10xMFr8SI+UEieFxBIIrhQtmnP0RYe5rU06zhvjIrt8M
	qt22T/xrdupwqxh6UljkwOH+GO1h55HUavKTPgXcdfhifB1hLkIYSYVS9fBII1F9SRGY213UT5u8S
	m+5Z3hKrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB14j-0004lK-5m; Sun, 08 Mar 2020 18:54:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB14Z-0004kx-Mg
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 18:54:49 +0000
Received: from earth.universe (unknown [185.62.205.105])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C576E20663;
 Sun,  8 Mar 2020 18:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583693687;
 bh=Q+kfL4mkXLvM4nEGnLgXVk4GKzZ0+K/A2ern3w+0xSU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GL42HVY51ZG+Fp9Jnf0GgKOU1R/rQc66l7JTQISLGNJHbMqKeLW+DTThTwAEk5JxL
 zselZ4tkuwqc/tZOcqiKK1DhPGWmmEuB/ySZGmCypYcBkhrH0THm2TLNewIn4GaJWd
 62mbeKY+pBVqH/rdXrd91X1p6Qo7HdhfgIZXDCT8=
Received: by earth.universe (Postfix, from userid 1000)
 id 5DAAB3C0C82; Sun,  8 Mar 2020 19:54:44 +0100 (CET)
Date: Sun, 8 Mar 2020 19:54:44 +0100
From: Sebastian Reichel <sre@kernel.org>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH 00/15] rework at91-reset driver
Message-ID: <20200308185444.lpkpumgxhya7n356@earth.universe>
References: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
In-Reply-To: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_115447_782400_06CDBFB5 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alexandre.belloni@bootlin.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3303032597601007552=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3303032597601007552==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kc3gxuytlvcwlxwg"
Content-Disposition: inline


--kc3gxuytlvcwlxwg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jan 21, 2020 at 10:03:29AM +0000, Claudiu.Beznea@microchip.com wrot=
e:
> The following patches rework the at91-reset driver and solves
> the SAM9X60 VDDCORE fast drop in the first 100us after power down.

Thanks, queued to power-supply's for-next branch.

-- Sebastian

> Claudiu Beznea (15):
>   power: reset: at91-reset: introduce struct at91_reset
>   power: reset: at91-reset: add ramc_base[] to struct at91_reset
>   power: reset: at91-reset: add sclk to struct at91_reset
>   power: reset: at91-reset: add notifier block to struct at91_reset
>   power: reset: at91-reset: convert reset in pointer to struct
>     at91_reset
>   power: reset: at91-reset: pass rstc base address to
>     at91_reset_status()
>   power: reset: at91-reset: devm_kzalloc() for at91_reset data structure
>   power: reset: at91-reset: introduce struct at91_reset_data
>   power: reset: at91-reset: introduce args member in at91_reset_data
>   power: reset: at91-reset: use r4 as tmp argument
>   power: reset: at91-reset: introduce ramc_lpr to struct at91_reset
>   power: reset: at91-reset: make at91sam9g45_restart() generic
>   power: reset: at91-reset: keep only one reset function
>   power: reset: at91-reset: get rid of at91_reset_data
>   power: reset: at91-reset: handle nrst async for sam9x60
>=20
>  drivers/power/reset/at91-reset.c | 190 +++++++++++++++++++--------------=
------
>  1 file changed, 94 insertions(+), 96 deletions(-)
>=20
> --=20
> 2.7.4

--kc3gxuytlvcwlxwg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl5lP20ACgkQ2O7X88g7
+prHbg/+O0XOtdVGtEj+dgQdKkxCtRq/tHyIWB/3PAUQ3fAEGtBmQVdDZS6EHi9A
xvKRTAIPw4NL4LvX3KLx90iyJdwokAU61/MX6aGcWUe7v5jgOGHsdXlfEIVlMzEo
U7UEexjUAMEAgA2aG1Dl38GNY6q/Df1QKRg63D2x1n6wRD72lzgLTYpVxQVmeEoL
FP6wYdjvYgBrvjHd0VVoUdrk218eQtzFBA/BsEyJ3Vh3RNiqTNJWamaxe83p10vb
XMVfSkdyqc/hqBDx95+QkwFcsZM6y/B1iTfjaoc08uEh3GI3k0ggpRoZDm+S3aVr
Y2n1CDekjlVisufZhwvTkDYijwyWelH4aXlUbyAK/TBJ0zOeESq7mJxHry5az5u2
+161MxZZivVZvklCh0QUgpgP0DOv1vWA4sX7thw7EXLz5HHIJacstKAQGnrUtZNL
ohIZLEU4awX3xplOltncY0PqKztbv+BTfE9RN8K6EWFjqo76pkMgHoXE+J1VtZA7
eSQiRvByrAWiWdftZGwoSjTgcO5BlqxAvzFK7nuyvAgrTkip28i+5QGs4ihgpLbz
s6DWLgts47zHLA03Ymr0Cqw9Ej+2mSeZNhzR4yJAG/fmzoICs4kvfSin9uHJDHyZ
wubsG9S0HGzZJoGQkm8458zN2GFus96QrGOwx4TLebvipvS69GU=
=ox0n
-----END PGP SIGNATURE-----

--kc3gxuytlvcwlxwg--


--===============3303032597601007552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3303032597601007552==--

