Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59828EF6DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 09:07:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FtNPNZZGS+HMAWFc7M6+NJCaZ0KkrUZgu93ODNyNuzM=; b=mUpoYK0q0pfJ1Ffeud98W7iAc
	fxt0sWkaFyGZqUyEPc0/TvFjcBoZi5xS99ivg6M2gpxeVwUtcbpQN3Z2icBlNqg+FqT1IgMivfn4M
	/DPudnN3m1hmJjte2wILeRbeqY4IqPxzECg//1Cpm3U0wIqNEUE1+b1aa2huh0VOFVDpA0KzOyV5p
	2Po6JtvxVVrn/DF2mLDfNPiXAQRXdxWKWMZi4rTU+wkbPo/YGJiKO+QRRWcYCTjmAZ31DkcA0/Lyx
	MpGGyJRDVrQ/NKbOW3hfeiOEe7fXKjnm+NIr9Th9IiZNeUDO5tTV79DDZQgYT87PIiIA+/hsmTSkb
	FYqbSEd+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRtsX-0005Px-H2; Tue, 05 Nov 2019 08:07:53 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRtsG-0005Gd-L9
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 08:07:39 +0000
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 08FE1200009;
 Tue,  5 Nov 2019 08:07:25 +0000 (UTC)
Date: Tue, 5 Nov 2019 09:07:25 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH 2/3] media: cedrus: Fix H264 4k support
Message-ID: <20191105080725.GB584930@aptenodytes>
References: <20191026074959.1073512-1-jernej.skrabec@siol.net>
 <20191026074959.1073512-3-jernej.skrabec@siol.net>
 <20191104101319.GE502900@aptenodytes>
 <3046190.od5LHOKkzS@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <3046190.od5LHOKkzS@jernej-laptop>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_000736_984391_FECEF788 
X-CRM114-Status: GOOD (  29.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8549769070069931566=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8549769070069931566==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="NDin8bjvE/0mNLFQ"
Content-Disposition: inline


--NDin8bjvE/0mNLFQ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jernej,

On Mon 04 Nov 19, 17:53, Jernej =C5=A0krabec wrote:
> Dne ponedeljek, 04. november 2019 ob 11:13:19 CET je Paul Kocialkowski=20
> napisal(a):
> > Hi,
> >=20
> > On Sat 26 Oct 19, 09:49, Jernej Skrabec wrote:
> > > H264 decoder needs additional or bigger buffers in order to decode 4k
> > > videos.
> >=20
> > Thanks for the fixup, we hadn't looked into those bits at all during in=
itial
> > bringup of H.264!
> >=20
> > See a few minor comments below.
> >=20
> > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > ---
> > >=20
> > >  drivers/staging/media/sunxi/cedrus/cedrus.h   |  7 ++
> > >  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 83 +++++++++++++++++=
--
> > >  .../staging/media/sunxi/cedrus/cedrus_regs.h  | 11 +++
> > >  3 files changed, 93 insertions(+), 8 deletions(-)
> > >=20
> > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h
> > > b/drivers/staging/media/sunxi/cedrus/cedrus.h index
> > > c45fb9a7ad07..96765555ab8a 100644
> > > --- a/drivers/staging/media/sunxi/cedrus/cedrus.h
> > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
> > > @@ -116,8 +116,15 @@ struct cedrus_ctx {
> > >=20
> > >  			ssize_t		mv_col_buf_size;
> > >  			void		*pic_info_buf;
> > >  			dma_addr_t	pic_info_buf_dma;
> > >=20
> > > +			ssize_t		pic_info_buf_size;
> > >=20
> > >  			void		*neighbor_info_buf;
> > >  			dma_addr_t	neighbor_info_buf_dma;
> > >=20
> > > +			void		*deblk_buf;
> > > +			dma_addr_t	deblk_buf_dma;
> > > +			ssize_t		deblk_buf_size;
> > > +			void		*intra_pred_buf;
> > > +			dma_addr_t	intra_pred_buf_dma;
> > > +			ssize_t		intra_pred_buf_size;
> > >=20
> > >  		} h264;
> > >  		struct {
> > >  	=09
> > >  			void		*mv_col_buf;
> > >=20
> > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c index
> > > d2c854ecdf15..19962f4213d4 100644
> > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > @@ -39,7 +39,6 @@ struct cedrus_h264_sram_ref_pic {
> > >=20
> > >  #define CEDRUS_H264_FRAME_NUM		18
> > > =20
> > >  #define CEDRUS_NEIGHBOR_INFO_BUF_SIZE	(16 * SZ_1K)
> > >=20
> > > -#define CEDRUS_PIC_INFO_BUF_SIZE	(128 * SZ_1K)
> >=20
> > Could we keep a define with the minimum size that you are using later
> > (increased to 130 * SZ_1K)?
>=20
> Sure.
>=20
> >=20
> > >  static void cedrus_h264_write_sram(struct cedrus_dev *dev,
> > > =20
> > >  				   enum cedrus_h264_sram_off off,
> > >=20
> > > @@ -342,6 +341,20 @@ static void cedrus_set_params(struct cedrus_ctx =
*ctx,
> > >=20
> > >  		     VE_H264_VLD_ADDR_FIRST | VE_H264_VLD_ADDR_VALID |
> > >  		     VE_H264_VLD_ADDR_LAST);
> > >=20
> > > +	if (ctx->src_fmt.width > 2048) {
> > > +		cedrus_write(dev, VE_BUF_CTRL,
> > > +			     VE_BUF_CTRL_INTRAPRED_MIXED_RAM |
> > > +			     VE_BUF_CTRL_DBLK_MIXED_RAM);
> > > +		cedrus_write(dev, VE_DBLK_DRAM_BUF_ADDR,
> > > +			     ctx->codec.h264.deblk_buf_dma);
> > > +		cedrus_write(dev, VE_INTRAPRED_DRAM_BUF_ADDR,
> > > +			     ctx->codec.h264.intra_pred_buf_dma);
> > > +	} else {
> > > +		cedrus_write(dev, VE_BUF_CTRL,
> > > +			     VE_BUF_CTRL_INTRAPRED_INT_SRAM |
> > > +			     VE_BUF_CTRL_DBLK_INT_SRAM);
> > > +	}
> > > +
> > >=20
> > >  	/*
> > >  =09
> > >  	 * FIXME: Since the bitstream parsing is done in software, and
> > >  	 * in userspace, this shouldn't be needed anymore. But it
> > >=20
> > > @@ -502,18 +515,28 @@ static void cedrus_h264_setup(struct cedrus_ctx
> > > *ctx,
> > >=20
> > >  static int cedrus_h264_start(struct cedrus_ctx *ctx)
> > >  {
> > > =20
> > >  	struct cedrus_dev *dev =3D ctx->dev;
> > >=20
> > > +	unsigned int pic_info_size;
> > >=20
> > >  	unsigned int field_size;
> > >  	unsigned int mv_col_size;
> > >  	int ret;
> >=20
> > Maybe add a comment here this is a half-magic sub-optimal formula?
>=20
> Well, I'm not sure how much suboptimal formulas this and those below are.=
 They=20
> are taken from CedarX source. I would imagine that they didn't waste too =
much=20
> memory. What kind of comment would be ok for you? "Formula taken from Ced=
arX=20
> source"?

Yes, something like that would work fine. The point is to make it clear that
it is not an obvious or direct calculation based on something from the spec.

Cheers,

Paul

> Best regards,
> Jernej
>=20
> >=20
> > > +	if (ctx->src_fmt.width > 2048)
> > > +		pic_info_size =3D CEDRUS_H264_FRAME_NUM * 0x4000;
> > > +	else
> > > +		pic_info_size =3D CEDRUS_H264_FRAME_NUM * 0x1000;
> > > +
> > >=20
> > >  	/*
> > >=20
> > > -	 * FIXME: It seems that the H6 cedarX code is using a formula
> > > -	 * here based on the size of the frame, while all the older
> > > -	 * code is using a fixed size, so that might need to be
> > > -	 * changed at some point.
> > > +	 * FIXME: If V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY is set,
> > > +	 * there is no need to multiply by 2.
> > >=20
> > >  	 */
> > >=20
> > > +	pic_info_size +=3D ctx->src_fmt.height * 2 * 64;
> > > +
> > > +	if (pic_info_size < 130 * SZ_1K)
> > > +		pic_info_size =3D 130 * SZ_1K;
> >=20
> > This is where I think we could have a "minimum pic info size" define.
> >=20
> > > +
> > > +	ctx->codec.h264.pic_info_buf_size =3D pic_info_size;
> > >=20
> > >  	ctx->codec.h264.pic_info_buf =3D
> > >=20
> > > -		dma_alloc_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
> > > +		dma_alloc_coherent(dev->dev, ctx-
> >codec.h264.pic_info_buf_size,
> > >=20
> > >  				   &ctx-
> >codec.h264.pic_info_buf_dma,
> > >  				   GFP_KERNEL);
> > >  =09
> > >  	if (!ctx->codec.h264.pic_info_buf)
> > >=20
> > > @@ -566,15 +589,51 @@ static int cedrus_h264_start(struct cedrus_ctx =
*ctx)
> > >=20
> > >  		goto err_neighbor_buf;
> > >  =09
> > >  	}
> > >=20
> > > +	if (ctx->src_fmt.width > 2048) {
> >=20
> > Feel free to add a comment here to explain where the 12 below comes fro=
m if
> > you have some idea, or that it's a somewhat magical value that generally
> > works.
> > > +		ctx->codec.h264.deblk_buf_size =3D
> > > +			ALIGN(ctx->src_fmt.width, 32) * 12;
> > > +		ctx->codec.h264.deblk_buf =3D
> > > +			dma_alloc_coherent(dev->dev,
> > > +					   ctx-
> >codec.h264.deblk_buf_size,
> > > +					   &ctx-
> >codec.h264.deblk_buf_dma,
> > > +					   GFP_KERNEL);
> > > +		if (!ctx->codec.h264.deblk_buf) {
> > > +			ret =3D -ENOMEM;
> > > +			goto err_mv_col_buf;
> > > +		}
> > > +
> >=20
> > Same here, a comment would be welcome about the 5 value below.
> >=20
> > Cheers,
> >=20
> > Paul
> >=20
> > > +		ctx->codec.h264.intra_pred_buf_size =3D
> > > +			ALIGN(ctx->src_fmt.width, 64) * 5;
> > > +		ctx->codec.h264.intra_pred_buf =3D
> > > +			dma_alloc_coherent(dev->dev,
> > > +					   ctx-
> >codec.h264.intra_pred_buf_size,
> > > +					   &ctx-
> >codec.h264.intra_pred_buf_dma,
> > > +					   GFP_KERNEL);
> > > +		if (!ctx->codec.h264.intra_pred_buf) {
> > > +			ret =3D -ENOMEM;
> > > +			goto err_deblk_buf;
> > > +		}
> > > +	}
> > > +
> > >=20
> > >  	return 0;
> > >=20
> > > +err_deblk_buf:
> > > +	dma_free_coherent(dev->dev, ctx->codec.h264.deblk_buf_size,
> > > +			  ctx->codec.h264.deblk_buf,
> > > +			  ctx->codec.h264.deblk_buf_dma);
> > > +
> > > +err_mv_col_buf:
> > > +	dma_free_coherent(dev->dev, ctx->codec.h264.mv_col_buf_size,
> > > +			  ctx->codec.h264.mv_col_buf,
> > > +			  ctx->codec.h264.mv_col_buf_dma);
> > > +
> > >=20
> > >  err_neighbor_buf:
> > >  	dma_free_coherent(dev->dev, CEDRUS_NEIGHBOR_INFO_BUF_SIZE,
> > >  =09
> > >  			  ctx->codec.h264.neighbor_info_buf,
> > >  			  ctx->codec.h264.neighbor_info_buf_dma);
> > > =20
> > >  err_pic_buf:
> > > -	dma_free_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
> > > +	dma_free_coherent(dev->dev, ctx->codec.h264.pic_info_buf_size,
> > >=20
> > >  			  ctx->codec.h264.pic_info_buf,
> > >  			  ctx->codec.h264.pic_info_buf_dma);
> > >  =09
> > >  	return ret;
> > >=20
> > > @@ -590,9 +649,17 @@ static void cedrus_h264_stop(struct cedrus_ctx *=
ctx)
> > >=20
> > >  	dma_free_coherent(dev->dev, CEDRUS_NEIGHBOR_INFO_BUF_SIZE,
> > >  =09
> > >  			  ctx->codec.h264.neighbor_info_buf,
> > >  			  ctx->codec.h264.neighbor_info_buf_dma);
> > >=20
> > > -	dma_free_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
> > > +	dma_free_coherent(dev->dev, ctx->codec.h264.pic_info_buf_size,
> > >=20
> > >  			  ctx->codec.h264.pic_info_buf,
> > >  			  ctx->codec.h264.pic_info_buf_dma);
> > >=20
> > > +	if (ctx->codec.h264.deblk_buf_size)
> > > +		dma_free_coherent(dev->dev, ctx-
> >codec.h264.deblk_buf_size,
> > > +				  ctx->codec.h264.deblk_buf,
> > > +				  ctx->codec.h264.deblk_buf_dma);
> > > +	if (ctx->codec.h264.intra_pred_buf_size)
> > > +		dma_free_coherent(dev->dev, ctx-
> >codec.h264.intra_pred_buf_size,
> > > +				  ctx->codec.h264.intra_pred_buf,
> > > +				  ctx-
> >codec.h264.intra_pred_buf_dma);
> > >=20
> > >  }
> > > =20
> > >  static void cedrus_h264_trigger(struct cedrus_ctx *ctx)
> > >=20
> > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > > b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h index
> > > ace3d49fcd82..7beb03d3bb39 100644
> > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > > @@ -46,6 +46,17 @@
> > >=20
> > >  #define VE_MODE_DEC_H264			(0x01 << 0)
> > >  #define VE_MODE_DEC_MPEG			(0x00 << 0)
> > >=20
> > > +#define VE_BUF_CTRL				0x50
> > > +
> > > +#define VE_BUF_CTRL_INTRAPRED_EXT_RAM		(0x02 << 2)
> > > +#define VE_BUF_CTRL_INTRAPRED_MIXED_RAM		(0x01 << 2)
> > > +#define VE_BUF_CTRL_INTRAPRED_INT_SRAM		(0x00 << 2)
> > > +#define VE_BUF_CTRL_DBLK_EXT_RAM		(0x02 << 0)
> > > +#define VE_BUF_CTRL_DBLK_MIXED_RAM		(0x01 << 0)
> > > +#define VE_BUF_CTRL_DBLK_INT_SRAM		(0x00 << 0)
> > > +
> > > +#define VE_DBLK_DRAM_BUF_ADDR			0x54
> > > +#define VE_INTRAPRED_DRAM_BUF_ADDR		0x58
> > >=20
> > >  #define VE_PRIMARY_CHROMA_BUF_LEN		0xc4
> > >  #define VE_PRIMARY_FB_LINE_STRIDE		0xc8
>=20
>=20
>=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--NDin8bjvE/0mNLFQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl3BLb0ACgkQ3cLmz3+f
v9Hzggf+J0jGvKBP2B4TabkNDcKevgMJvVaGQ7qQouWo2PpkBmL07KWHJsyG58Sj
1/7twF0S9egcvQcjjnBGWByXx6SXfXDoKp86ln72anefk3ShD9ms+HlT3A66UuDI
VgzuL6HeVRz4TG7ZGVm2HOGW2OBKTK+4b/ZvmSBGlvYI64OP33Vp35XLxiya4IXg
n0HDegorzrtG22Pn6xJvHdGmGVeRCiJEGSQB5Ek5Y9ZYadw3J3XMR9pvyLmT0CK0
ps06mkpZcu9d9rz5YTko1Iee0otJEtgjtsNZ1TuWxNqn5YdGI1KLu8OXoxgyaseO
4L9CBKlTmIAZ1g/1dZkcVKNB8FkWnQ==
=/yZ0
-----END PGP SIGNATURE-----

--NDin8bjvE/0mNLFQ--


--===============8549769070069931566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8549769070069931566==--

