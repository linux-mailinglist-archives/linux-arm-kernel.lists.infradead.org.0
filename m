Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E369DA66C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 09:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1TjLJPNqzbfMuCBxZBtOmk9eUQdOcf1bLyQ/q/nUrdA=; b=pGUnPZQgfzicnGI6H0uN36plM
	zWnEKcNsRPIWYZqOArK3Fykv7sAG+UD9hwOieT7xOtLjPkiKQuMBB+UMmEilPeHUQn3cy686K5jwB
	IMyk0OSlwbjm3meIvKKKgYDbUk6vUzFjjvOeMMFbpd2aUW/dBP17gtm4H97DXDRzfgnTD0wykkZ40
	wvg7crrrX/RpPDh0gcgw8h/fhVnatgXEJePlKmLeXeHMLN/Sx1SYnuruXyQIQIwwuA5wt9IkQWLv1
	sv4b1+vxho6o8Zn86vfhsqvRlFfPRXKIp8iQ5wGowN3Q6rEwqpsEuFsEGjpHx/CGpoaNUtgnjINrg
	uLERXV5XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL0Bi-0008Pm-So; Thu, 17 Oct 2019 07:27:10 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL0BX-0008OY-IW
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 07:27:01 +0000
X-Originating-IP: 86.250.200.211
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 0F2BAE0008;
 Thu, 17 Oct 2019 07:26:45 +0000 (UTC)
Date: Thu, 17 Oct 2019 09:26:45 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] staging: media: cedrus: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20191017072645.GA2778@aptenodytes>
References: <20191016085604.21076-1-yuehaibing@huawei.com>
MIME-Version: 1.0
In-Reply-To: <20191016085604.21076-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_002659_748791_6F615CEA 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5918101057242079348=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5918101057242079348==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9jxsPFA5p3P2qPhR"
Content-Disposition: inline


--9jxsPFA5p3P2qPhR
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed 16 Oct 19, 16:56, YueHaibing wrote:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.

This is still:
Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Please collect the tag in your next version, if there's a need for one.

Cheers,

Paul

> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_hw.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>=20
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/sta=
ging/media/sunxi/cedrus/cedrus_hw.c
> index a942cd9..f19b87c 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> @@ -146,7 +146,6 @@ static irqreturn_t cedrus_irq(int irq, void *data)
>  int cedrus_hw_probe(struct cedrus_dev *dev)
>  {
>  	const struct cedrus_variant *variant;
> -	struct resource *res;
>  	int irq_dec;
>  	int ret;
> =20
> @@ -225,8 +224,7 @@ int cedrus_hw_probe(struct cedrus_dev *dev)
>  		goto err_sram;
>  	}
> =20
> -	res =3D platform_get_resource(dev->pdev, IORESOURCE_MEM, 0);
> -	dev->base =3D devm_ioremap_resource(dev->dev, res);
> +	dev->base =3D devm_platform_ioremap_resource(dev->pdev, 0);
>  	if (IS_ERR(dev->base)) {
>  		dev_err(dev->dev, "Failed to map registers\n");
> =20
> --=20
> 2.7.4
>=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--9jxsPFA5p3P2qPhR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl2oF7UACgkQ3cLmz3+f
v9EItgf9GvoiVbIh3tmX/jiHYvuTXM7tm9aRYWoFX7LVixCUoe6h+o7qBdsHSBks
RxI0BSWHEEieShZlIK0Fyof7bx04lEbJc072Bp31b6xFJxdQ1w+xatMjwfh5bILZ
jcAHPnMwKntbmetL8qPB2pDcq//vDYvGOkN73ZqFPO8kCU6rYxX0+Y/Eaw0be7EB
2Duq2Rm0E7OswN9jebQ4fm4tpt4bZj4qX7h4tUkwFKGpzzt4jYyaqpr5jQ7Bw1LK
nyn5TAVJPA9P+Mo5P59R+2E4HX6DKma2jy5lRSnZddG2iR1F3kh1MbOs1qUothp4
PvvSH42W4cFR1G5Q+dbvEK4UAWOqQA==
=pqsv
-----END PGP SIGNATURE-----

--9jxsPFA5p3P2qPhR--


--===============5918101057242079348==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5918101057242079348==--

