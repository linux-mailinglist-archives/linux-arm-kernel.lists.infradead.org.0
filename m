Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3A61BDD4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 15:14:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=01bKbT4VhkyWc2/GWInsB1+H4th13Me32Mxv6q+zTsA=; b=JUDnYPoBIDiT0LUeJ5/sVXUCm
	hwwSKOnI/ZbfYH9ot1xm7avPG5lw/P5gvexJPy4xkSAJU94hb+x3YolbCa18AohxaIQix8S9Knz/U
	DB58KJ/BiTum1dAHgrStH+yMSFWZl3cNLISVzbRNPvIzVGdUkoyx7YaRCQQ/EbUyJMn6n4Cl/n8+V
	WHgdNhZei7sX2F9JO8lSnH0TFJ2reZHmlUzqtA9p4jKiGpUdMGKaenXns7z8ktJZDovRsEZGayEet
	tq9oDblSmHsKFXp4H0WsPuHLIZQlQGSig6F9/wr0+CUIybrGGjjAusuYvPDF02pdndqHWFQT6oTqU
	W7PgnJoqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTmXf-0000XA-KJ; Wed, 29 Apr 2020 13:14:23 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmXU-0000VF-PA
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 13:14:14 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id F36E26000C;
 Wed, 29 Apr 2020 13:13:59 +0000 (UTC)
Date: Wed, 29 Apr 2020 15:13:59 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] sun6i: dsi: fix gcc-4.8
Message-ID: <20200429131359.GJ610776@aptenodytes>
References: <20200428215105.3928459-1-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20200428215105.3928459-1-arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_061412_948832_554CE550 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Samuel Holland <samuel@sholland.org>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============3821731134249398016=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3821731134249398016==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yr/DzoowOgTDcSCF"
Content-Disposition: inline


--yr/DzoowOgTDcSCF
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue 28 Apr 20, 23:50, Arnd Bergmann wrote:
> Older compilers warn about initializers with incorrect curly
> braces:
>=20
> drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c: In function 'sun6i_dsi_encoder_en=
able':
> drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:720:8: error: missing braces aroun=
d initializer [-Werror=3Dmissing-braces]
>   union phy_configure_opts opts =3D { 0 };
>         ^
> drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:720:8: error: (near initialization=
 for 'opts.mipi_dphy') [-Werror=3Dmissing-braces]
>=20
> Use the GNU empty initializer extension to avoid this.

Looks good to me:
Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

But maybe use the drm/sun4i: dsi: prefix instead (granted, it wasn't used in
the commit being fixed).

Cheers,

Paul

> Fixes: bb3b6fcb6849 ("sun6i: dsi: Convert to generic phy handling")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun=
4i/sun6i_mipi_dsi.c
> index f6c67dd87a05..aa67cb037e9d 100644
> --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> @@ -718,7 +718,7 @@ static void sun6i_dsi_encoder_enable(struct drm_encod=
er *encoder)
>  	struct drm_display_mode *mode =3D &encoder->crtc->state->adjusted_mode;
>  	struct sun6i_dsi *dsi =3D encoder_to_sun6i_dsi(encoder);
>  	struct mipi_dsi_device *device =3D dsi->device;
> -	union phy_configure_opts opts =3D { 0 };
> +	union phy_configure_opts opts =3D { };
>  	struct phy_configure_opts_mipi_dphy *cfg =3D &opts.mipi_dphy;
>  	u16 delay;
>  	int err;
> --=20
> 2.26.0
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--yr/DzoowOgTDcSCF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl6pfZcACgkQ3cLmz3+f
v9EZuwf/c+11FwGVP8LmF3ZNopR32d3cDoA0mLr1vizGfseJVldesiJUy/VuZI7I
ppIjTfjte/iBHuyGcv8oAc0GQfkJaCvLFlcSkDUGgH5UfPEqxCTGvPLvV0doT77g
MAUZw1EnVM2zHZ9IvjLmmes2/nvRMs/knC4qf8H8VW2LcFbDqUt+P9SioDHMEOzz
ZpKNqa7C6Ll/KK7RljKfhk/i1bzakwyEw5Mv31bMBjJ5QeiP+OnLBDBD6ltBfjM7
f4ODxc85UpxYB9uoRfgQoE2Dk2aN2h2OMTGt7USnEA3HesH1oxRpP7xWpefwHGfY
oHhO7JHJ8TOwoWS/iIN+wsbHxbDpWw==
=QQXf
-----END PGP SIGNATURE-----

--yr/DzoowOgTDcSCF--


--===============3821731134249398016==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3821731134249398016==--

