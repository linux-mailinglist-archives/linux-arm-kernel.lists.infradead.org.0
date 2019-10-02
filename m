Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FC6C9430
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 00:15:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2IBkGHeg5xvsmR/+0ezKF9geQ++ZK6g79ifsR4E67KY=; b=oHkPXMphyLzoUDJjHvYc33BSd
	waIcWr5qxiJtdQMzmbrJX17PbQ0QmtkOMiu9u7ap8AukurpgnF+1XPAlrYG3VIYtnqEUITnuBI8B4
	oPkFTLUzEIW2NNumukbidH9NbHvj8zNdTkEy0GqCpytCztIK8lRzhOkhTO5C+7YX5LrjJKC3M0a8A
	vt19dFYwPF+KdEGX2WL+LGh+6By25XhmiqlDlLrRTnoH8UPAZHChmbubMEZ1yWKW1YP19RG5uoSHP
	E5tAVYPot7RJcE+Ge+JldWmQMmnS0fAH09rDP65NPN++DjK17rJ3Wu7i5wnaZOxgL5yu/rFcLxo6S
	xfeM4RTPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFmtb-0002cL-DD; Wed, 02 Oct 2019 22:14:55 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFmtT-0002bN-Ri
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 22:14:49 +0000
X-Originating-IP: 132.205.230.6
Received: from aptenodytes (unknown [132.205.230.6])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 3D79540002;
 Wed,  2 Oct 2019 22:14:33 +0000 (UTC)
Date: Wed, 2 Oct 2019 18:14:31 -0400
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 3/3] media: cedrus: Use helpers to access capture queue
Message-ID: <20191002221431.GC24151@aptenodytes>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
 <20191002193553.1633467-4-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20191002193553.1633467-4-jernej.skrabec@siol.net>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_151448_194422_5A58D56D 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============7316545959074928125=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7316545959074928125==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="E13BgyNx05feLLmH"
Content-Disposition: inline


--E13BgyNx05feLLmH
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed 02 Oct 19, 21:35, Jernej Skrabec wrote:
> Accessing capture queue structue directly is not safe. Use helpers for
> that.

Looks good to me, thanks!

Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Cheers,

Paul

> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus.h      | 8 ++++++--
>  drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 8 ++++++--
>  2 files changed, 12 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/stagin=
g/media/sunxi/cedrus/cedrus.h
> index 986e059e3202..c45fb9a7ad07 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus.h
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
> @@ -197,12 +197,16 @@ static inline dma_addr_t cedrus_buf_addr(struct vb2=
_buffer *buf,
>  static inline dma_addr_t cedrus_dst_buf_addr(struct cedrus_ctx *ctx,
>  					     int index, unsigned int plane)
>  {
> -	struct vb2_buffer *buf;
> +	struct vb2_buffer *buf =3D NULL;
> +	struct vb2_queue *vq;
> =20
>  	if (index < 0)
>  		return 0;
> =20
> -	buf =3D ctx->fh.m2m_ctx->cap_q_ctx.q.bufs[index];
> +	vq =3D v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
> +	if (vq)
> +		buf =3D vb2_get_buffer(vq, index);
> +
>  	return buf ? cedrus_buf_addr(buf, &ctx->dst_fmt, plane) : 0;
>  }
> =20
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/s=
taging/media/sunxi/cedrus/cedrus_h264.c
> index 4a0e69855c7f..4650982c69a8 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> @@ -97,7 +97,7 @@ static void cedrus_write_frame_list(struct cedrus_ctx *=
ctx,
>  	const struct v4l2_ctrl_h264_decode_params *decode =3D run->h264.decode_=
params;
>  	const struct v4l2_ctrl_h264_slice_params *slice =3D run->h264.slice_par=
ams;
>  	const struct v4l2_ctrl_h264_sps *sps =3D run->h264.sps;
> -	struct vb2_queue *cap_q =3D &ctx->fh.m2m_ctx->cap_q_ctx.q;
> +	struct vb2_queue *cap_q;
>  	struct cedrus_buffer *output_buf;
>  	struct cedrus_dev *dev =3D ctx->dev;
>  	unsigned long used_dpbs =3D 0;
> @@ -105,6 +105,8 @@ static void cedrus_write_frame_list(struct cedrus_ctx=
 *ctx,
>  	unsigned int output =3D 0;
>  	unsigned int i;
> =20
> +	cap_q =3D v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
> +
>  	memset(pic_list, 0, sizeof(pic_list));
> =20
>  	for (i =3D 0; i < ARRAY_SIZE(decode->dpb); i++) {
> @@ -168,12 +170,14 @@ static void _cedrus_write_ref_list(struct cedrus_ct=
x *ctx,
>  				   enum cedrus_h264_sram_off sram)
>  {
>  	const struct v4l2_ctrl_h264_decode_params *decode =3D run->h264.decode_=
params;
> -	struct vb2_queue *cap_q =3D &ctx->fh.m2m_ctx->cap_q_ctx.q;
> +	struct vb2_queue *cap_q;
>  	struct cedrus_dev *dev =3D ctx->dev;
>  	u8 sram_array[CEDRUS_MAX_REF_IDX];
>  	unsigned int i;
>  	size_t size;
> =20
> +	cap_q =3D v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
> +
>  	memset(sram_array, 0, sizeof(sram_array));
> =20
>  	for (i =3D 0; i < num_ref; i++) {
> --=20
> 2.23.0
>=20

--E13BgyNx05feLLmH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl2VIUcACgkQ3cLmz3+f
v9HzRAf+OqbOygEqhcbZloYVPB2rS29QcQKUP4rVGVIuXOB1zlPNlUSIhRoHZsmg
0he5hJDyuo7Kq6MZR9mvCUJkag/AOb+cBC2SJfvTvnVCKB55mVdRCWQUtoTzlSXJ
PFrH2udiYvCdTC8O373wlaUvQTfWlf2uRtkd34wl0WgZsS2UuTQ4kGw9XvhG4sTT
c4Ghncxb5kKRBta7hjlEa048lf/Xouj8Et06XYbLwlrcD6F2fWjiyZ+3lkwVEmIO
cOxQvtOmY9Gzwdz3fKGuhhHkfQ/lwaaOyHcbrMjvH3/Pqirqg6fQP7/7CuoBStEc
UIrz8/f7mOG4vou/8BmrQRYaAr+4zw==
=9PuQ
-----END PGP SIGNATURE-----

--E13BgyNx05feLLmH--


--===============7316545959074928125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7316545959074928125==--

