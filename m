Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E794DC940E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 00:07:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qjBwQs4kLduSYAsxv0doxUGlBLoUWdSdOXs30ITWVPw=; b=C2mNzVsq+VvqkqfAaRYTSeQd0
	/8VAX+c4T7hMvLPR5Pmg841ZRIieTPDzFJ5voI1sMkeTSjZIA9lfHziPyDHI9ZHeMVh8YUQ2eX+cA
	nuOjnoOxFhVlNJiu4gEhHM/Tqc+czJgSxAIZqlARgilSv1tJ7xvKBRw/QDS8Bk9TpgMLVYVcuXYey
	Vnmt5krfRtLdcMlgMKr18+hDbCbQqgK4FJIJE1UsFbUI9Jb01Ec203OiVxdTHluVCGk6/dYTD+cKe
	kgOI2zp1zsENmNiIL7pVAI6G9RK0O3jY+lozLofjODfnWfbUWQ/Sb6encJSmEhf1qCtEEtozklZkc
	00c3W7GEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFmmE-0000G1-7i; Wed, 02 Oct 2019 22:07:18 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFmm5-0000FL-Ds
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 22:07:11 +0000
X-Originating-IP: 132.205.230.6
Received: from aptenodytes (unknown [132.205.230.6])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id F414BC0004;
 Wed,  2 Oct 2019 22:06:52 +0000 (UTC)
Date: Wed, 2 Oct 2019 18:06:50 -0400
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 2/3] media: cedrus: Fix H264 default reference index
 count
Message-ID: <20191002220650.GB24151@aptenodytes>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
 <20191002193553.1633467-3-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20191002193553.1633467-3-jernej.skrabec@siol.net>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_150709_619786_1909EEE8 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4301346268330036042=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4301346268330036042==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MW5yreqqjyrRcusr"
Content-Disposition: inline


--MW5yreqqjyrRcusr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed 02 Oct 19, 21:35, Jernej Skrabec wrote:
> Reference index count in VE_H264_PPS should come from PPS control.
> However, this is not really important, because reference index count is
> in our case always overridden by that from slice header.

Thanks for the fixup!

Our libva userspace and v4l2-request testing tool currently don't provide t=
his,
but I have a pending merge request adding it for the hantro so it's good to=
 go.

Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Cheers,

Paul

> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/s=
taging/media/sunxi/cedrus/cedrus_h264.c
> index bd848146eada..4a0e69855c7f 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> @@ -364,12 +364,8 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
> =20
>  	// picture parameters
>  	reg =3D 0;
> -	/*
> -	 * FIXME: the kernel headers are allowing the default value to
> -	 * be passed, but the libva doesn't give us that.
> -	 */
> -	reg |=3D (slice->num_ref_idx_l0_active_minus1 & 0x1f) << 10;
> -	reg |=3D (slice->num_ref_idx_l1_active_minus1 & 0x1f) << 5;
> +	reg |=3D (pps->num_ref_idx_l0_default_active_minus1 & 0x1f) << 10;
> +	reg |=3D (pps->num_ref_idx_l1_default_active_minus1 & 0x1f) << 5;
>  	reg |=3D (pps->weighted_bipred_idc & 0x3) << 2;
>  	if (pps->flags & V4L2_H264_PPS_FLAG_ENTROPY_CODING_MODE)
>  		reg |=3D VE_H264_PPS_ENTROPY_CODING_MODE;
> --=20
> 2.23.0
>=20

--MW5yreqqjyrRcusr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl2VH3oACgkQ3cLmz3+f
v9HfnQf+Piqc+/r5jjib8Rh52MjgYahIkSTSbp4ZIe3lc/Uwyc/W/O5u2tCNC+KV
+VJ+3ws7rbRkWfU1nfV6WKp8jxp+/a73DEsx1AePm4vOrzh9qitnXtwPpjXkXzJB
qtuDNoaRlvzRI6KN98hICCfiYT6LKKDcIURUx5sGZi5vbSpQvsdIEofwZmxPuZDl
C0+RXEwUPLIhM6E2FKj+6Tt6DdX+Tc4UtzP4wBLvFfYO2Magxdtp0w/SerqphDhX
3KtP9S3N+M5vDMD3FzM56DLRqqDpd4e3+5YV0/dmJrKmpBsm885B8bgNUwSsto+D
e0opfIfHkZ4GSg2vZ1Mp58+lbZ0rag==
=DONI
-----END PGP SIGNATURE-----

--MW5yreqqjyrRcusr--


--===============4301346268330036042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4301346268330036042==--

