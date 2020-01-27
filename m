Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B95149F9C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 09:15:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9qsqglg7YBbkbcXNT9FlQQD5D73Oo47R7ag+nYOn2zg=; b=GSD+ac2/lXthTGu/pnnTmw7nZ
	PIp6uixN4J7ONNLiTE6Fj76s41dxhJYZOgE0BxPhMB0Dv+wwB10dJCw7X3USxHev8rXHv+E/uN/41
	isNU9OtX75/IFGophK0kEdMVljwsMYvB04TNfQvRuiNS1Y3rH58zEWqFiIBDQz4AwaEw3qr/yn28t
	WsxAJxbEwhb4sWE8/n44OfVR0DKYz7eOxCY9pSVQCwPOKcpBix+OiiF1y4ZzqrtvybHbxIx21lwQ9
	UFkT5bUhUi1EQtM8Uue3lHFvenWjsyr1W1ZT0EeYkdDbKdKJKjUeuD8aL2wDqEhNwc4XJ0Z6gTMoh
	KlH8UJzoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivzYD-0008EC-Jk; Mon, 27 Jan 2020 08:15:17 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivzY2-0007oi-Ug
 for linux-arm-kernel@bombadil.infradead.org; Mon, 27 Jan 2020 08:15:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G3fcsoTdkiBCTD3GqYOsAJ4fBLKH+/7q6VR4FKQCUz0=; b=IQWiXfOeLBI29GwCr/X6ilhkM
 T2qTs5dw88H1rS2iFyyzJt0z0fApEwXcc1TuwCBj7QltOX1zVFBOvwKu5tGkyiB7/mjDIk2qj3YrK
 5j97qcl1NTaO2PxKcy+amr1W/LSWZRg1zZamJLO1Yl6C8eT1UTd59BgolBdTyj3zTdK73eGsJsAlK
 C8kEuvWvMdXKmsf/xGfg4NsnN9NQesZ7kIIHXMYMJINzYC8cF5kIxIFUjzrNSD9yf6CQwDv4FhuIL
 89/GviQXojQKilyhF8703d7fAxznuho+5Y1nWTiONqj6Nd5PaM8wN4T1qiNH7oHwMlAigK+1cCnac
 OMLP/HZDQ==;
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivzXz-0004bE-74
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 08:15:04 +0000
Received: from aptenodytes (lfbn-tou-1-1151-102.w90-76.abo.wanadoo.fr
 [90.76.211.102])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id D6AE0100016;
 Mon, 27 Jan 2020 08:14:19 +0000 (UTC)
Date: Mon, 27 Jan 2020 09:14:19 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH] Revert "drm/sun4i: drv: Allow framebuffer modifiers in
 mode config"
Message-ID: <20200127081419.GA25668@aptenodytes>
References: <20200126065937.9564-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20200126065937.9564-1-jernej.skrabec@siol.net>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, wens@csie.org, mripard@kernel.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7973062796899664321=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7973062796899664321==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zYM0uCDKw75PZbzx"
Content-Disposition: inline


--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jernej,

On Sun 26 Jan 20, 07:59, Jernej Skrabec wrote:
> This reverts commit 9db9c0cf5895e4ddde2814360cae7bea9282edd2.
>=20
> Setting mode_config.allow_fb_modifiers manually is completely
> unnecessary. It is set automatically by drm_universal_plane_init() based
> on the fact if modifier list is provided or not. Even more, it breaks
> DE2 and DE3 as they don't support any modifiers beside linear. Modifiers
> aware applications can be confused by provided empty modifier list - at
> least linear modifier should be included, but it's not for DE2 and DE3.

Makes sense and it's apparently the norm to not report any modifier blob
when only linear is supported, so let's stick to that.

Note that when the reverted patch was applied, the core didn't set
allow_fb_modifiers on its own yet. But it does now so let's rely on it inst=
ead.

Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Cheers,

Paul

> Fixes: 9db9c0cf5895 ("drm/sun4i: drv: Allow framebuffer modifiers in mode=
 config")
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/gpu/drm/sun4i/sun4i_drv.c | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/sun4i/sun4i_drv.c b/drivers/gpu/drm/sun4i/su=
n4i_drv.c
> index 5ae67d526b1d..328272ff77d8 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_drv.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_drv.c
> @@ -85,7 +85,6 @@ static int sun4i_drv_bind(struct device *dev)
>  	}
> =20
>  	drm_mode_config_init(drm);
> -	drm->mode_config.allow_fb_modifiers =3D true;
> =20
>  	ret =3D component_bind_all(drm->dev, drm);
>  	if (ret) {
> --=20
> 2.25.0
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--zYM0uCDKw75PZbzx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl4um9sACgkQ3cLmz3+f
v9GVMgf+Kc3KZDcNNctctpvlPceDVaF7D4PqnI4YqaMprQkDYXgo2FwW/lu16lNQ
NrFx8PXex2bkporLkE2jcJRIA9B1A0Wbfoy86MagAJtCtFCgCaQIXM+Y/7yGSbn6
wfDytjFPdpngw7hZrfh9AljDP6w907SmNvvugVTG6eEKH8xRtYl3NYDFDvms1Fns
2jQTT67palIJs10fIPCfTU0HJd2fN92lqVDiwzx0HReR4nCqVA4BTd6wxn5sieiQ
iI3AIXJawMv0xdUs0idpRfKavaPoRWVxolUPg4Umr1RHJmxV/HS4ERRK+T4KlJmk
EdW2EIlo4bmuFeFhog1Q8X1XURDJ1g==
=lFH+
-----END PGP SIGNATURE-----

--zYM0uCDKw75PZbzx--


--===============7973062796899664321==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7973062796899664321==--

