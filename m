Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 046DB12A54
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 11:19:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PIuyvnb+TG3l2ZUDLRcAV4Ar66C3JIuB07SX6ivYAI8=; b=buY4N9AcbGX7SJN6s3E+DADd0
	vwVIJsFS8M1jgjiogFej69U5oEq2bnluTcrubtPixuEH9j4bDiQKO9RlmVMHES+ThUbw7B4xqJDbF
	txnAAtO84tVscq02kQd9Mh6yeTqxn3EvSKFs3BvwxsBgC2grZd2W/iTblLns0jjhT3J1QFtVLEt1/
	SiiJmfcKvBZCchwQcPYDHfmEtWXDIbHYFpx0/cUIgbG67ICG3/VzV/2LlvrtplUenfX9O9+TxBGVR
	KWYl31FcYmArS2cKJiXQzLtuDr7gMe2Ch75ciYdGWWWHAab0/RR7Fwrf7oFcBiBqh3ZgrgENxKvKl
	p7A4iYIHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMULL-0005KB-AF; Fri, 03 May 2019 09:18:59 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMULE-0005JI-0c
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 09:18:53 +0000
X-Originating-IP: 90.88.149.145
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id A592060014;
 Fri,  3 May 2019 09:18:35 +0000 (UTC)
Date: Fri, 3 May 2019 11:18:35 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 7/7] iio: adc: sun4i-gpadc-iio convert to SPDX license tags
Message-ID: <20190503091835.jx2fosyygkhy67aw@flea>
References: <20190503072813.2719-1-tiny.windzz@gmail.com>
 <20190503072813.2719-8-tiny.windzz@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190503072813.2719-8-tiny.windzz@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_021852_381479_A9855AA5 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, lee.jones@linaro.org, jic23@kernel.org
Content-Type: multipart/mixed; boundary="===============2927118463417415147=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2927118463417415147==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ddeoccdv6vp3wp6d"
Content-Disposition: inline


--ddeoccdv6vp3wp6d
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 03, 2019 at 03:28:13AM -0400, Yangtao Li wrote:
> Updates license to use SPDX-License-Identifier.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/iio/adc/sun4i-gpadc-iio.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/iio/adc/sun4i-gpadc-iio.c b/drivers/iio/adc/sun4i-gpadc-iio.c
> index 9b6fc592f54c..cf2bf3ab3342 100644
> --- a/drivers/iio/adc/sun4i-gpadc-iio.c
> +++ b/drivers/iio/adc/sun4i-gpadc-iio.c
> @@ -1,11 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0+
>  /* ADC driver for sunxi platforms' (A10, A13 and A31) GPADC
>   *
>   * Copyright (c) 2016 Quentin Schulz <quentin.schulz@free-electrons.com>
>   *
> - * This program is free software; you can redistribute it and/or modify it under
> - * the terms of the GNU General Public License version 2 as published by the
> - * Free Software Foundation.
> - *

The license here is GPL2 only, not GPL2 or later.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ddeoccdv6vp3wp6d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXMwHawAKCRDj7w1vZxhR
xR/3AP9LxurFTEoLfKKf5UUVWYtYBc+a5fX72/5UF72Jinp4/gEAjdVi2+M2F4Tw
jC8P95k9Tn48jKQZ3GKADIypTMkcMQ8=
=LsGW
-----END PGP SIGNATURE-----

--ddeoccdv6vp3wp6d--


--===============2927118463417415147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2927118463417415147==--

