Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1ED124223
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 09:45:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=twtGF48KfzDX8YRl/gfLYKohQhsPDC2nFpYmgCt7dg8=; b=heEFup9WtJEzbDXZB0NnkDBLJ
	UZnQcsxBJ7o21mHd76nBUWIpsL9ZoFkEqH/hyiQ5wECvuRceANz16OZej8xGtsS3nQu+zOROLa6lm
	Y57a81qOaydGGEMjy20Q7DjIlWRobgnRQm9X+Iumz7RSxPcbxfj8pIcgaQ3FKUDmILrrbV4M6z0Yk
	ClTfBZOpRT/kzYJrvk9aIoJ3TA3nHvAdzUE+Y7KIzKMkzubC7bcelRvhgLLKcTUhSM5eC7aCUy1Lr
	iKZH0zu5Y0mN6KEKvRexciI+Qgg8WCF7tlAsaEBamv3pAqlkOSN8g/bhnlfCQ3UbyvwOhGH9aJ6zA
	ZJqdIl9bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihUxc-00019G-GC; Wed, 18 Dec 2019 08:45:36 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihUw7-0006x1-02
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 08:44:07 +0000
Received: from aptenodytes (unknown [109.190.253.16])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 183C6100008;
 Wed, 18 Dec 2019 08:43:49 +0000 (UTC)
Date: Wed, 18 Dec 2019 09:43:48 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 2/2] media: cedrus: hevc: Add luma bit depth
Message-ID: <20191218084348.GB2900@aptenodytes>
References: <20191213161516.54688-1-jernej.skrabec@siol.net>
 <20191213161516.54688-3-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20191213161516.54688-3-jernej.skrabec@siol.net>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_004403_200096_0FE04559 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, hverkuil@xs4all.nl,
 wens@csie.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2541921214713549812=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2541921214713549812==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ADZbWkCsHQ7r3kzd"
Content-Disposition: inline


--ADZbWkCsHQ7r3kzd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri 13 Dec 19, 17:15, Jernej Skrabec wrote:
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Good catch, thanks!

Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Cheers,

Paul

> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_h265.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c b/drivers/s=
taging/media/sunxi/cedrus/cedrus_h265.c
> index 5a207f1e137c..13e58977309f 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> @@ -420,6 +420,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
>  	      VE_DEC_H265_DEC_SPS_HDR_LOG2_DIFF_MAX_MIN_LUMA_CODING_BLOCK_SIZE(=
sps->log2_diff_max_min_luma_coding_block_size) |
>  	      VE_DEC_H265_DEC_SPS_HDR_LOG2_MIN_LUMA_CODING_BLOCK_SIZE_MINUS3(sp=
s->log2_min_luma_coding_block_size_minus3) |
>  	      VE_DEC_H265_DEC_SPS_HDR_BIT_DEPTH_CHROMA_MINUS8(sps->bit_depth_ch=
roma_minus8) |
> +	      VE_DEC_H265_DEC_SPS_HDR_BIT_DEPTH_LUMA_MINUS8(sps->bit_depth_luma=
_minus8) |
>  	      VE_DEC_H265_DEC_SPS_HDR_CHROMA_FORMAT_IDC(sps->chroma_format_idc);
> =20
>  	reg |=3D VE_DEC_H265_FLAG(VE_DEC_H265_DEC_SPS_HDR_FLAG_STRONG_INTRA_SMO=
OTHING_ENABLE,
> --=20
> 2.24.0
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--ADZbWkCsHQ7r3kzd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl355sQACgkQ3cLmz3+f
v9ESgAgAhJTdZVtbPpT7EscqyjmkfLml6sT2cG4rlpNxp0uKIJXcKwC0V6sLcfir
KnwAgfKm9IAvL1D48uMBcw7BbDZK4NjKBzkEgCfcwhNBi4SH4opzCy37X3VvcGrX
PhSIVSDsQG0hS/z8GKinlkTuYWarUu/GS9Q1bBcnNXq2Qyg2rHGkeErOVRpuLpkI
SCIGMQslt+z9fk+cWZbvEILHZNMyWBFb60UNbO3a2cpcubNzxvZC7EH29qA8phA/
gxknBE3j4VF1zFWwW+hqcTTdnvBccJUoySmNYTuG5JulDpD7XeY4+CV0/bV1ygtP
TOjemgoIxM/rbgox4jMKfZEwH4xI3w==
=B0di
-----END PGP SIGNATURE-----

--ADZbWkCsHQ7r3kzd--


--===============2541921214713549812==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2541921214713549812==--

