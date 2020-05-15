Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 534351D47F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 10:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p8beP4MRNrdZvlcp+hB8nCgkPRbDQ2MIVbZze/Rg4v8=; b=IlPuCGHAXposep9Cxb3XP04gt
	RnpJ5ZIr10+hQA77VJcy+01S2h4O/ySRvZjJO5kwYLKPZqrIRZJuplNq8IzEwQTfVPpHxL8UxV304
	mWmrVzrxOci2RsxrhrjtqVSKnxNEO/uujK+9Upg4bSVtp8hiMk1zreb823URkRIu7oITrQN+acwZl
	lI+5kCjYBvubPGdd9v4E+ngJ9j1KEGWij0OLTbDqQufBEzsYTm5xwIHf6WgD1WOY4Ror246PFM9I/
	sVIccI4eaFsNljjmHRqzES7l4a5fOJtthWu4U24yuXfc7v20rbgeBoxNyq8Y5/wdTjbRYyIh5pc9D
	tv4XW3crQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZVVY-0005rn-Uk; Fri, 15 May 2020 08:15:52 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZVVN-0005qD-BU
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 08:15:45 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 6C5C51BF208;
 Fri, 15 May 2020 08:15:34 +0000 (UTC)
Date: Fri, 15 May 2020 10:15:33 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v4 5/5] drm/sun4i: mixer: Call of_dma_configure if
 there's an IOMMU
Message-ID: <20200515081533.GA2486@aptenodytes>
References: <cover.b27dedd61e008ffcf55a028ccddda3bb4d21dfc8.1589378833.git-series.maxime@cerno.tech>
 <9a4daf438dd3f2fe07afb23688bfb793a0613d7d.1589378833.git-series.maxime@cerno.tech>
MIME-Version: 1.0
In-Reply-To: <9a4daf438dd3f2fe07afb23688bfb793a0613d7d.1589378833.git-series.maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_011541_663842_9ED177D6 
X-CRM114-Status: GOOD (  23.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8420256088724057235=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8420256088724057235==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vkogqOf2sHV7VnPd"
Content-Disposition: inline


--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed 13 May 20, 16:07, Maxime Ripard wrote:
> The main DRM device is actually a virtual device so it doesn't have the
> iommus property, which is instead on the DMA masters, in this case the
> mixers.
>=20
> Add a call to of_dma_configure with the mixers DT node but on the DRM
> virtual device to configure it in the same way than the mixers.

Although I'm not very familiar with the DMA API, this looks legit to me and
matches what's already done in sun4i_backend for the interconnect. So:

Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Cheers,

Paul

> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/gpu/drm/sun4i/sun8i_mixer.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/=
sun8i_mixer.c
> index 56cc037fd312..cc4fb916318f 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
> @@ -363,6 +363,19 @@ static int sun8i_mixer_bind(struct device *dev, stru=
ct device *master,
>  	mixer->engine.ops =3D &sun8i_engine_ops;
>  	mixer->engine.node =3D dev->of_node;
> =20
> +	if (of_find_property(dev->of_node, "iommus", NULL)) {
> +		/*
> +		 * This assume we have the same DMA constraints for
> +		 * all our the mixers in our pipeline. This sounds
> +		 * bad, but it has always been the case for us, and
> +		 * DRM doesn't do per-device allocation either, so we
> +		 * would need to fix DRM first...
> +		 */
> +		ret =3D of_dma_configure(drm->dev, dev->of_node, true);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	/*
>  	 * While this function can fail, we shouldn't do anything
>  	 * if this happens. Some early DE2 DT entries don't provide
> --=20
> git-series 0.9.1
>=20
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--vkogqOf2sHV7VnPd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl6+T6UACgkQ3cLmz3+f
v9H/UAgAkvadU2hkk0g8AzqD7A8wD9HZa1w2iDr5XqyJebfprIsxG8x5MpZWf9BQ
RTe1YsTxBBAeX49KifKGTI+TxipHj2A0Ebt9nIDUpP6vXQ7q/t24R8VhOeRiFLLM
Ke2pNX4F6XaV0CHM5YeQOp1OndJgZ1ioWlfqp+296kTRC1+8L7l6BPI1HkT8WVOi
mi8+8iBF3szadtkUm+h33BwKNxAnkWsybWK06pg+VNUT4dcld6RUH/c+XCFOr39j
2c617QVi3poan+h3psdcEFwnrbKwGyR8YsqHyBOwAZkW/2l4ItTUE3A6SFLKguca
BeSlxCAarYm3YuaLzCm6TgeX+7u68w==
=r6Qc
-----END PGP SIGNATURE-----

--vkogqOf2sHV7VnPd--


--===============8420256088724057235==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8420256088724057235==--

