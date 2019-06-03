Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9802B32F6A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 14:19:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7iY6duYgXH8i3Vfp3WM3SXtYMWYW4wJGyD0nFUdBRDc=; b=SuiK/oft763+qKoG0rkK3rO0z
	GBf17N5gwIBatWjMzVvmNGKb/Vzgx/82moQH0iIf5p7EJJHs7j64yapeKwSVMMvfJCnZ7TdvWYdAZ
	js3fnKrCNgkIFo2GIKljDDcu4ft423Xb0+fpUE8CMQHDn6PQTuU0aij7Eb25mHpHO80n2hh/NnJdC
	qHOuDyWelNUxdkMxJKtg2DvGeiNftwM82iu5CfRjmxxZHRfSRi2WyhGDBT6ZVvMUH6vkY+Nz0sM+Q
	JiI+zAnjhVtq79rjL0VrXi832dz6NyMwKXST7WxSg7ZMypKODFQ7fYNnFWBPTvWtKV7RevgLHq50N
	1dFMgCNdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXlw3-0002WY-80; Mon, 03 Jun 2019 12:19:31 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXlvw-0002W0-Ax
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 12:19:26 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 4F98124001F;
 Mon,  3 Jun 2019 12:19:02 +0000 (UTC)
Date: Mon, 3 Jun 2019 14:18:59 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 6/7] media: cedrus: Add infra for extra buffers connected
 to capture buffers
Message-ID: <20190603121859.sbphcjy75kmed6oc@flea>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-7-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20190530211516.1891-7-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_051924_689077_F8513512 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1368815356243633336=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1368815356243633336==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ymlpox2fd2kt5ivb"
Content-Disposition: inline


--ymlpox2fd2kt5ivb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, May 30, 2019 at 11:15:15PM +0200, Jernej Skrabec wrote:
> H264 and HEVC engines need additional buffers for each capture buffer.
> H264 engine has this currently solved by allocating fixed size pool,
> which is not ideal. Most of the time pool size is much bigger than it
> needs to be.
>
> Ideally, extra buffer should be allocated at buffer initialization, but
> that's not efficient. It's size in H264 depends on flags set in SPS, but
> that information is not available in buffer init callback.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus.h   |  4 ++++
>  .../staging/media/sunxi/cedrus/cedrus_video.c | 19 +++++++++++++++++++
>  2 files changed, 23 insertions(+)
>
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
> index d8e6777e5e27..16c1bdfd243a 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus.h
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
> @@ -81,6 +81,10 @@ struct cedrus_run {
>  struct cedrus_buffer {
>  	struct v4l2_m2m_buffer          m2m_buf;
>
> +	void		*extra_buf;
> +	dma_addr_t	extra_buf_dma;
> +	ssize_t		extra_buf_size;
> +
>  	union {
>  		struct {
>  			unsigned int			position;
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> index 681dfe3367a6..d756e0e69634 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -411,6 +411,24 @@ static void cedrus_queue_cleanup(struct vb2_queue *vq, u32 state)
>  	}
>  }
>
> +static void cedrus_buf_cleanup(struct vb2_buffer *vb)
> +{
> +	struct vb2_queue *vq = vb->vb2_queue;
> +
> +	if (!V4L2_TYPE_IS_OUTPUT(vq->type)) {
> +		struct cedrus_ctx *ctx = vb2_get_drv_priv(vq);
> +		struct cedrus_buffer *cedrus_buf;
> +
> +		cedrus_buf = vb2_to_cedrus_buffer(vq->bufs[vb->index]);
> +
> +		if (cedrus_buf->extra_buf_size)
> +			dma_free_coherent(ctx->dev->dev,
> +					  cedrus_buf->extra_buf_size,
> +					  cedrus_buf->extra_buf,
> +					  cedrus_buf->extra_buf_dma);
> +	}
> +}
> +

I'm really not a fan of allocating something somewhere, and freeing it
somewhere else. Making sure you don't leak something is hard enough to
not have some non-trivial allocation scheme.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ymlpox2fd2kt5ivb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPUQMwAKCRDj7w1vZxhR
xZNaAP9V21ZWkOqlo7WZlTwBZOAkVOmATfNXoqclKE0qWtzOVAD8CPTJeCMOMixQ
jEzMAC7P8TCOrSNny9fgeSx7u+ReUwM=
=dENZ
-----END PGP SIGNATURE-----

--ymlpox2fd2kt5ivb--


--===============1368815356243633336==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1368815356243633336==--

