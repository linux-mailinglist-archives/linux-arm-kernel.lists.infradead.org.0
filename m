Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD702ABE9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 21:20:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HJEwUbEiwXjcPT5/oPt67Did3Q5cGBjUDXaI2rzelgQ=; b=jsCKe8NL6am/EsZK5wJznXP0y
	CLX49n+Et/+EdyAy+bbkYaGvrQQ/2TouFEsqw2+Um0LHrmwqQH41CMYsvlSCKWYlTd7D4bEBMgi3i
	zPhdGrIiNz4xQv5cxLWP1DroV6bdLe8Jqe9qoaMyIx/2m/gz9m7i1/5il/bgXvT+5iX9kMQwDLthH
	a1Yi/15/BdbYjlUJeLc5Rag6Ro+Vy1ToSti/3+cwCUEreNgT5BuzQJolbgSU699Pi0ohIj7t2zkTF
	3SivGOvNRNdfrFcMqWTOiQguJ2vqhK2YvljwUgR8u/uPsdlre4HYsIdkUTXRqM6XksDTMmi3CkNjx
	zh561QLnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUygt-0002YF-6e; Sun, 26 May 2019 19:20:19 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUygq-0002WU-AX
 for linux-arm-kernel@bombadil.infradead.org; Sun, 26 May 2019 19:20:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DNRwaee5QRvlTd6tUW/p0y0wvH4wHyLkwHA0a4Q76+Q=; b=ACYPlFEMd78i/ag0S1o4ZCg0R
 RlLN9UnePGK5Qgv5bYG5XRJpJS54WwDBHZ47oOG9fu1Kv5NXdoIBHl9eI8Qb5lPacWVLNmLl/f/kT
 v7kyXU4CgRQAuDLyfAQyfb1bHwoRVUDDpUTxs5wfX+lNRG7Uexum8fn21SSLj6UTHaxm3Io2dQ5Cq
 hhQBMoZqXcnojuo2GhWoyh9xQlIg5zz8EDtmlR0XHorwt1uYcVemmWWJBXlW2Weq/i0RIiPGR8Sfn
 pzffy5Ew9HlNSZp45zVTte5gr3kNyrnlpUo/Voj3kCM6/BsLRpH3oTV+nLtcvBBHkx0hK7CvhFRQ0
 Et7OkVHQw==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUygm-0005PO-Ox
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 19:20:13 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 0A271240003;
 Sun, 26 May 2019 19:19:40 +0000 (UTC)
Date: Sun, 26 May 2019 21:19:40 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] drm/sun4i: fix warning PTR_ERR_OR_ZERO can be used
Message-ID: <20190526191940.ddr2yd7szfidtiu2@flea>
References: <20190525072509.GA6979@hari-Inspiron-1545>
MIME-Version: 1.0
In-Reply-To: <20190525072509.GA6979@hari-Inspiron-1545>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_152012_909622_B00BBFCE 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7962353523312162417=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7962353523312162417==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wbyhtjebfo7bq6wk"
Content-Disposition: inline


--wbyhtjebfo7bq6wk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi!

On Sat, May 25, 2019 at 12:55:09PM +0530, Hariprasad Kelam wrote:
> fix below warnings reported by coccicheck
>
> ./drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c:174:1-3: WARNING:
> PTR_ERR_OR_ZERO can be used
> ./drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c:236:1-3: WARNING:
> PTR_ERR_OR_ZERO can be used
> ./drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c:285:1-3: WARNING:
> PTR_ERR_OR_ZERO can be used
> ./drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c:142:1-3: WARNING:
> PTR_ERR_OR_ZERO can be used
> ./drivers/gpu/drm/sun4i/sun4i_dotclock.c:198:1-3: WARNING:
> PTR_ERR_OR_ZERO can be used
>
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/gpu/drm/sun4i/sun4i_dotclock.c      | 4 +---
>  drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c  | 4 +---
>  drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c      | 4 +---
>  drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c | 4 +---
>  drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c  | 4 +---
>  5 files changed, 5 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/sun4i/sun4i_dotclock.c b/drivers/gpu/drm/sun4i/sun4i_dotclock.c
> index 2a15f2f..e0fd19d 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_dotclock.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_dotclock.c
> @@ -195,10 +195,8 @@ int sun4i_dclk_create(struct device *dev, struct sun4i_tcon *tcon)
>  	dclk->hw.init = &init;
>
>  	tcon->dclk = clk_register(dev, &dclk->hw);
> -	if (IS_ERR(tcon->dclk))
> -		return PTR_ERR(tcon->dclk);
>
> -	return 0;
> +	return PTR_ERR_OR_ZERO(tcon->dclk);

Unfortunately, that was on purpose. It's much easier to extend if we
ever need to change anything there.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--wbyhtjebfo7bq6wk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOrmzAAKCRDj7w1vZxhR
xYHIAQCHJXC7nn+WNDI2HEnEBKzcFG+IbWIX34bHIZfhK4AnGgEAgZHJJQ6EF1xn
m34W2K3bjCbJ19Re4AH0OQy4fDUa5Ag=
=640m
-----END PGP SIGNATURE-----

--wbyhtjebfo7bq6wk--


--===============7962353523312162417==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7962353523312162417==--

