Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F540F5F40
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 14:00:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=feOyO1E/9yj/FrVUMCSxl1TsjqAAyLtFFCTeHDAgKWc=; b=o+0E9+vOVfIO0OVRvBY+xZnFc
	9qEKJ0JNNarG4u5bRGqAOgKZ3XvIGXkVxBIpKIEZt4b0XaMZH4Im72lBNGhq6fZWzizsk+EExIY3I
	I3zKDCYz+eqzCjPKNTzDssCTENuTU9e291+jOPDjdAnPhVVyHS0uKwtaShepJpIk7H8VRIz6mdr8f
	JB1AHgC8RvGUZ1b3RqmnRGXZNNmcZCQwbk6WUtvnfjzrrQySsAiCNhOAgdJOBZKAgRXC34ycKZfVG
	SlA6mZSIBaaEWlm5x2MtAWy/8aIreU0XNNgOGlAq/3jzCAAZmckdDPux4vt4BJlbjoYwlRSIcUVYY
	JXCb7JRKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTQLg-00057Y-Ff; Sat, 09 Nov 2019 13:00:16 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTQLT-00048l-Ln
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 13:00:05 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id B6C9A240004;
 Sat,  9 Nov 2019 12:59:49 +0000 (UTC)
Date: Sat, 9 Nov 2019 13:59:49 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 2/3] media: cedrus: Fix H264 4k support
Message-ID: <20191109125949.GC845368@aptenodytes>
References: <20191106210538.3474-1-jernej.skrabec@siol.net>
 <20191106210538.3474-3-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20191106210538.3474-3-jernej.skrabec@siol.net>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_050003_994856_56F433BE 
X-CRM114-Status: GOOD (  23.23  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8668784655764166782=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8668784655764166782==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Y5rl02BVI9TCfPar"
Content-Disposition: inline


--Y5rl02BVI9TCfPar
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jenrej,

On Wed 06 Nov 19, 22:05, Jernej Skrabec wrote:
> H264 decoder needs additional or bigger buffers in order to decode 4k
> videos.

Thanks for the changes, looks good to me!

Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Cheers,

Paul

> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus.h   |  7 ++
>  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 91 +++++++++++++++++--
>  .../staging/media/sunxi/cedrus/cedrus_regs.h  | 11 +++
>  3 files changed, 101 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/stagin=
g/media/sunxi/cedrus/cedrus.h
> index c45fb9a7ad07..96765555ab8a 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus.h
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
> @@ -116,8 +116,15 @@ struct cedrus_ctx {
>  			ssize_t		mv_col_buf_size;
>  			void		*pic_info_buf;
>  			dma_addr_t	pic_info_buf_dma;
> +			ssize_t		pic_info_buf_size;
>  			void		*neighbor_info_buf;
>  			dma_addr_t	neighbor_info_buf_dma;
> +			void		*deblk_buf;
> +			dma_addr_t	deblk_buf_dma;
> +			ssize_t		deblk_buf_size;
> +			void		*intra_pred_buf;
> +			dma_addr_t	intra_pred_buf_dma;
> +			ssize_t		intra_pred_buf_size;
>  		} h264;
>  		struct {
>  			void		*mv_col_buf;
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/s=
taging/media/sunxi/cedrus/cedrus_h264.c
> index d2c854ecdf15..ab83a6f1f921 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> @@ -39,7 +39,7 @@ struct cedrus_h264_sram_ref_pic {
>  #define CEDRUS_H264_FRAME_NUM		18
> =20
>  #define CEDRUS_NEIGHBOR_INFO_BUF_SIZE	(16 * SZ_1K)
> -#define CEDRUS_PIC_INFO_BUF_SIZE	(128 * SZ_1K)
> +#define CEDRUS_MIN_PIC_INFO_BUF_SIZE       (130 * SZ_1K)
> =20
>  static void cedrus_h264_write_sram(struct cedrus_dev *dev,
>  				   enum cedrus_h264_sram_off off,
> @@ -342,6 +342,20 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
>  		     VE_H264_VLD_ADDR_FIRST | VE_H264_VLD_ADDR_VALID |
>  		     VE_H264_VLD_ADDR_LAST);
> =20
> +	if (ctx->src_fmt.width > 2048) {
> +		cedrus_write(dev, VE_BUF_CTRL,
> +			     VE_BUF_CTRL_INTRAPRED_MIXED_RAM |
> +			     VE_BUF_CTRL_DBLK_MIXED_RAM);
> +		cedrus_write(dev, VE_DBLK_DRAM_BUF_ADDR,
> +			     ctx->codec.h264.deblk_buf_dma);
> +		cedrus_write(dev, VE_INTRAPRED_DRAM_BUF_ADDR,
> +			     ctx->codec.h264.intra_pred_buf_dma);
> +	} else {
> +		cedrus_write(dev, VE_BUF_CTRL,
> +			     VE_BUF_CTRL_INTRAPRED_INT_SRAM |
> +			     VE_BUF_CTRL_DBLK_INT_SRAM);
> +	}
> +
>  	/*
>  	 * FIXME: Since the bitstream parsing is done in software, and
>  	 * in userspace, this shouldn't be needed anymore. But it
> @@ -502,18 +516,30 @@ static void cedrus_h264_setup(struct cedrus_ctx *ct=
x,
>  static int cedrus_h264_start(struct cedrus_ctx *ctx)
>  {
>  	struct cedrus_dev *dev =3D ctx->dev;
> +	unsigned int pic_info_size;
>  	unsigned int field_size;
>  	unsigned int mv_col_size;
>  	int ret;
> =20
> +	/* Formula for picture buffer size is taken from CedarX source. */
> +
> +	if (ctx->src_fmt.width > 2048)
> +		pic_info_size =3D CEDRUS_H264_FRAME_NUM * 0x4000;
> +	else
> +		pic_info_size =3D CEDRUS_H264_FRAME_NUM * 0x1000;
> +
>  	/*
> -	 * FIXME: It seems that the H6 cedarX code is using a formula
> -	 * here based on the size of the frame, while all the older
> -	 * code is using a fixed size, so that might need to be
> -	 * changed at some point.
> +	 * FIXME: If V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY is set,
> +	 * there is no need to multiply by 2.
>  	 */
> +	pic_info_size +=3D ctx->src_fmt.height * 2 * 64;
> +
> +	if (pic_info_size < CEDRUS_MIN_PIC_INFO_BUF_SIZE)
> +		pic_info_size =3D CEDRUS_MIN_PIC_INFO_BUF_SIZE;
> +
> +	ctx->codec.h264.pic_info_buf_size =3D pic_info_size;
>  	ctx->codec.h264.pic_info_buf =3D
> -		dma_alloc_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
> +		dma_alloc_coherent(dev->dev, ctx->codec.h264.pic_info_buf_size,
>  				   &ctx->codec.h264.pic_info_buf_dma,
>  				   GFP_KERNEL);
>  	if (!ctx->codec.h264.pic_info_buf)
> @@ -566,15 +592,56 @@ static int cedrus_h264_start(struct cedrus_ctx *ctx)
>  		goto err_neighbor_buf;
>  	}
> =20
> +	if (ctx->src_fmt.width > 2048) {
> +		/*
> +		 * Formulas for deblock and intra prediction buffer sizes
> +		 * are taken from CedarX source.
> +		 */
> +
> +		ctx->codec.h264.deblk_buf_size =3D
> +			ALIGN(ctx->src_fmt.width, 32) * 12;
> +		ctx->codec.h264.deblk_buf =3D
> +			dma_alloc_coherent(dev->dev,
> +					   ctx->codec.h264.deblk_buf_size,
> +					   &ctx->codec.h264.deblk_buf_dma,
> +					   GFP_KERNEL);
> +		if (!ctx->codec.h264.deblk_buf) {
> +			ret =3D -ENOMEM;
> +			goto err_mv_col_buf;
> +		}
> +
> +		ctx->codec.h264.intra_pred_buf_size =3D
> +			ALIGN(ctx->src_fmt.width, 64) * 5;
> +		ctx->codec.h264.intra_pred_buf =3D
> +			dma_alloc_coherent(dev->dev,
> +					   ctx->codec.h264.intra_pred_buf_size,
> +					   &ctx->codec.h264.intra_pred_buf_dma,
> +					   GFP_KERNEL);
> +		if (!ctx->codec.h264.intra_pred_buf) {
> +			ret =3D -ENOMEM;
> +			goto err_deblk_buf;
> +		}
> +	}
> +
>  	return 0;
> =20
> +err_deblk_buf:
> +	dma_free_coherent(dev->dev, ctx->codec.h264.deblk_buf_size,
> +			  ctx->codec.h264.deblk_buf,
> +			  ctx->codec.h264.deblk_buf_dma);
> +
> +err_mv_col_buf:
> +	dma_free_coherent(dev->dev, ctx->codec.h264.mv_col_buf_size,
> +			  ctx->codec.h264.mv_col_buf,
> +			  ctx->codec.h264.mv_col_buf_dma);
> +
>  err_neighbor_buf:
>  	dma_free_coherent(dev->dev, CEDRUS_NEIGHBOR_INFO_BUF_SIZE,
>  			  ctx->codec.h264.neighbor_info_buf,
>  			  ctx->codec.h264.neighbor_info_buf_dma);
> =20
>  err_pic_buf:
> -	dma_free_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
> +	dma_free_coherent(dev->dev, ctx->codec.h264.pic_info_buf_size,
>  			  ctx->codec.h264.pic_info_buf,
>  			  ctx->codec.h264.pic_info_buf_dma);
>  	return ret;
> @@ -590,9 +657,17 @@ static void cedrus_h264_stop(struct cedrus_ctx *ctx)
>  	dma_free_coherent(dev->dev, CEDRUS_NEIGHBOR_INFO_BUF_SIZE,
>  			  ctx->codec.h264.neighbor_info_buf,
>  			  ctx->codec.h264.neighbor_info_buf_dma);
> -	dma_free_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
> +	dma_free_coherent(dev->dev, ctx->codec.h264.pic_info_buf_size,
>  			  ctx->codec.h264.pic_info_buf,
>  			  ctx->codec.h264.pic_info_buf_dma);
> +	if (ctx->codec.h264.deblk_buf_size)
> +		dma_free_coherent(dev->dev, ctx->codec.h264.deblk_buf_size,
> +				  ctx->codec.h264.deblk_buf,
> +				  ctx->codec.h264.deblk_buf_dma);
> +	if (ctx->codec.h264.intra_pred_buf_size)
> +		dma_free_coherent(dev->dev, ctx->codec.h264.intra_pred_buf_size,
> +				  ctx->codec.h264.intra_pred_buf,
> +				  ctx->codec.h264.intra_pred_buf_dma);
>  }
> =20
>  static void cedrus_h264_trigger(struct cedrus_ctx *ctx)
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h b/drivers/s=
taging/media/sunxi/cedrus/cedrus_regs.h
> index ace3d49fcd82..7beb03d3bb39 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> @@ -46,6 +46,17 @@
>  #define VE_MODE_DEC_H264			(0x01 << 0)
>  #define VE_MODE_DEC_MPEG			(0x00 << 0)
> =20
> +#define VE_BUF_CTRL				0x50
> +
> +#define VE_BUF_CTRL_INTRAPRED_EXT_RAM		(0x02 << 2)
> +#define VE_BUF_CTRL_INTRAPRED_MIXED_RAM		(0x01 << 2)
> +#define VE_BUF_CTRL_INTRAPRED_INT_SRAM		(0x00 << 2)
> +#define VE_BUF_CTRL_DBLK_EXT_RAM		(0x02 << 0)
> +#define VE_BUF_CTRL_DBLK_MIXED_RAM		(0x01 << 0)
> +#define VE_BUF_CTRL_DBLK_INT_SRAM		(0x00 << 0)
> +
> +#define VE_DBLK_DRAM_BUF_ADDR			0x54
> +#define VE_INTRAPRED_DRAM_BUF_ADDR		0x58
>  #define VE_PRIMARY_CHROMA_BUF_LEN		0xc4
>  #define VE_PRIMARY_FB_LINE_STRIDE		0xc8
> =20
> --=20
> 2.24.0
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--Y5rl02BVI9TCfPar
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl3GuEUACgkQ3cLmz3+f
v9FbwAf9FsyMnR+21TKS8wr5rU3EEcwwQNJqPtczR+akZcSA4MKNGtXclblYTewX
GF58C8HGeKVylE8eLJWj7qo6DK8tLGPWHvc1QL0hWSvkxrpf+aMYpCdgVpOZXqES
YIrpJjD9D2G40M3Hdxgal1XILEsfscQM7VkRoFaRlb0dXd/PEogr/MO19K0ypl3c
5Sy1jNjdCvBEtlSFfC5/IQpN3lX/3c8DLx63EZgbaDfQCSy5Xh/sJsVNohTdPc5i
gAzwMeLmEkveNiJ14XYXtuCW+njW2vp87PAC4VD/ijmaWU99PzoRSSXL4DT+cjLd
ErxvAj2UfPj+MW4IwJOPqMKrmlwrqg==
=9LW5
-----END PGP SIGNATURE-----

--Y5rl02BVI9TCfPar--


--===============8668784655764166782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8668784655764166782==--

