Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 572DFCF33F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 09:12:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IefuuHYelMfV7kyTe5g435335ca5WBVGAfsDWJVX8pw=; b=EI5HtCG51/84+9RBNPvQRgO/5
	8iWozW3SuBqHOfEBn8VQhNva5DHmw6AGTgQ1hzq3rC9wyezf9LjIhZiorV0In6ZYCl4DK/yCmPRGb
	FSh5MmjA5nZI+Sb+2QSpP9APURxFctyOWZKDT5iOqUv/WlUOFClsMt05kLOvpg30Q0+rJl9sVV37Z
	hUrbz7mRvygjSHAUvUm24+hwjS9tdxSPQWPFJxtkKwghxHoUuRjVzQeBRTHgr3O0YjdursZUd4WZ2
	HAK9df6FO38vTcun3uYCUo1Jry45I8H2vkdlscAX2teJ3phcskjy4G9N5eb6lQxw1BavU28m1Dmxo
	VFStJ6Eww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHjf1-0001kD-Sl; Tue, 08 Oct 2019 07:11:55 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHjev-0001jn-VV
 for linux-arm-kernel@bombadil.infradead.org; Tue, 08 Oct 2019 07:11:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gFAVC/i/TQNWC4G5sh8xA3Pto9dIxwlhQZOk5n8OGYc=; b=PdguJ5ruUMqYMRlqT99+jFiKm
 k2U391hiCpg+M2rAsVwzfaOZohMB3bpDztZl8+jJoJ/E4YgPqmt33feMrObFJwGBmiX5u1vt9M2xq
 nZm90KZ64o74JFDXwXy7Opr4BTSTYu7rCOcKyPcxZ8vty1xmSOYLDFf3L/yvFR+B/kVW5zVLla+O8
 4f9iqGODcVwAlkssA34SziC8q1ExRYWXAAqUDOVzdlGB84HT1/a8CljLCBcTSsjf9M9TPMzbkuSUS
 SJE+rguYtekmBCQcqBT9ZxO3RHT+qJAvSh4gKCP+pC5O8RLWUcQYBA0ZFcueoUtKj16sC7wsgGmng
 Qzzj3fZFA==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by casper.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHjfI-0000eS-8w
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 07:12:14 +0000
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id E05E0200002;
 Tue,  8 Oct 2019 07:11:09 +0000 (UTC)
Date: Tue, 8 Oct 2019 09:11:09 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: hariprasadKelamhariprasad.kelam@gmail.com
Subject: Re: [PATCH] staging: media: sunxi: make use of
 devm_platform_ioremap_resource
Message-ID: <20191008071109.GD23055@aptenodytes>
References: <1570517975-32648-1-git-send-email-hariprasad.kelam@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1570517975-32648-1-git-send-email-hariprasad.kelam@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_081212_325352_9411762C 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devel@driverdev.osuosl.org, Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2449200852939225321=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2449200852939225321==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GyRA7555PLgSTuth"
Content-Disposition: inline


--GyRA7555PLgSTuth
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue 08 Oct 19, 12:29, hariprasadKelamhariprasad.kelam@gmail.com wrote:
> From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
>=20
> fix below issue reported by coccicheck
> drivers/staging//media/sunxi/cedrus/cedrus_hw.c:229:1-10: WARNING: Use
> devm_platform_ioremap_resource for dev -> base

Looks good, thanks!

Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Cheers,

Paul

> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
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

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--GyRA7555PLgSTuth
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl2cNo0ACgkQ3cLmz3+f
v9H5sAf8C7Uow7w//L27ktNGLif8j95G9G9t0VsDSaxkt1+mvVKX7sTuLkN70DJ6
RBrq+VmAsmJXfqozopp8eiJ1Rtz+/mp0THke9VwyCyQgiL1VxhUqxCJXV27PG3WZ
UQpHQv4FleeFrCZ7pi2kdH2zxfd0WI/S1lKZgAe9BDwNdpIh+8T7ImHZlkinukab
oMCypnTwYMyjNPmQ2vTDtDtU4xodqPxgOLqHfW1LFdOKyPvP4IvAB95DGo4mAUpi
q5lv+lNpI4YrDrTWx0alDWgV6wYq7VBsw8T9Kns7oPThD5klAri4jjwyoYHSO3kg
urgpt39rFja0auiqwwj5Puko+mlVgA==
=l23+
-----END PGP SIGNATURE-----

--GyRA7555PLgSTuth--


--===============2449200852939225321==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2449200852939225321==--

