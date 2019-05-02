Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD4B116D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 12:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TLPr6bj7dK/8O/gsEJWwJl5orME53Q2gtaCeetkhqqQ=; b=eUmzJh1lZwSgD5W16RqUjzcxGV
	QFsuCVw5xCS4Cqfqu63gzOieGfBXB+msqVLPzEPSbiV+lpHugmSuiKFkF6vOwjeGqa55t26iM6sFQ
	sqzNDF74hFu8+uY9enRQj26VertZxXRQUegxHsbIKTE8ema3KVLXVSDumTcx83KZNSFENyjXzAGEr
	Ph+12Pl7EnNwVSLEqkayHax092LPIka2h9BE6tCJ2FF67l76l92Ls9F3DK/sqOYoZrxNNd3494FCV
	LC8hyNoXuXz6mTxHChQ1arHGKHRkrI6AWsVgInABUg70QhYpnG2LldKDmsltqIw/8LndV3WGTWfDw
	pRAB0eOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM8XH-0002aT-9i; Thu, 02 May 2019 10:01:51 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM8XA-0002ZO-PF
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 10:01:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id h11so1787795wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 03:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=hFHdNN1/YEjXdeQmsbYBo++9cGNZ+Uicd3DB8o/CVVg=;
 b=phAoDDPbKaKQ1bh3tnJP/1NIrzdMZWY62fugBQTe6D9PtXcpQs5GFuuAqHrRXjWfUA
 ws+ZV/H2MWd+hUS56iS+SRP0UZ8Eu2pvg+dk6lcOxtlGC7sAO1b8A4yyUuZU/4p7taDX
 EJXOFUmrlde++J3Z1iHShe8FqLefcdmJ4T5ezH+jnsneUnQ5mgZu/Os+PRia5VP7A2oP
 nfQs7ZyQTi1P0tY6LpE/TU89aGKN1ALlQ2a2Y29IsnF9O+veOz8Ob05L/0uW30lgiDKa
 9RdHNghtkfrfUUqxfoGDzUzoFyuIfq/JVuWYsHHHzPbnTJqVvvQlu5OX3ETqFgQj9JUk
 987g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=hFHdNN1/YEjXdeQmsbYBo++9cGNZ+Uicd3DB8o/CVVg=;
 b=WjgTbbyOH2TGCbExD/4qlZH9LtuzIKle4raOKvW33tWn2IvVVoHmsnfk6OyeI6ZmC5
 Iz+UK13Glk7ERue459ya/2bKJshyFqEcPkM6IOJAXWMhlZMyVrZKZiqIlzgfxScVOIfK
 STO9jG68g7N1W2ch58SlYdwynPpIREtNQ+NRnN0yidm090zLXLUQ0KsaT60ldhBT3rFp
 LSCpZfStuxsKjjllp0nNybhQTh4WAnBJ8s+4IKauEjVVFIfzhJedBBRcW6doMoiYpAYl
 o6A3P/z+VHgCpaVDJHoMfSnhs9zFjNAx+OdmaWiItAa/44g6EQY5HLfCS7soRIimDmT2
 +nrw==
X-Gm-Message-State: APjAAAWfVPV9ziQ6dL6fatJDPwjSp63JUPbEcHMTgn6982Tmel+0kZdU
 +54AAkX5GRnKNDeSABTMmUY=
X-Google-Smtp-Source: APXvYqyRJGwi+C9739pX/VMDV7tPHD5g2TMMt8G3jIpQ1UZbxxt/nndAx+p5wFg/tW86yqmDLkpeOA==
X-Received: by 2002:a7b:c0d4:: with SMTP id s20mr1760391wmh.52.1556791302654; 
 Thu, 02 May 2019 03:01:42 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id q2sm19230130wrd.48.2019.05.02.03.01.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 May 2019 03:01:41 -0700 (PDT)
References: <20190430225018.30252-1-slongerbeam@gmail.com>
 <20190430225018.30252-6-slongerbeam@gmail.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [PATCH v3 5/8] media: staging/imx: Remove
 capture_device_set_format
In-reply-to: <20190430225018.30252-6-slongerbeam@gmail.com>
Date: Thu, 02 May 2019 11:01:39 +0100
Message-ID: <m3lfzp5g58.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_030144_848708_20A28A3D 
X-CRM114-Status: GOOD (  20.61  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rmfrfs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steve,
Thanks for v3 with bisect fixed.

On Tue 30 Apr 2019 at 23:50, Steve Longerbeam wrote:
> Don't propagate the source pad format to the connected capture device.
> It's now the responsibility of userspace to call VIDIOC_S_FMT on the
> capture device to ensure the capture format and compose rectangle
> are compatible with the connected source. To check this, validate
> the capture format with the source before streaming starts.
>
> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
> ---
>  drivers/staging/media/imx/imx-ic-prpencvf.c   | 16 +----
>  drivers/staging/media/imx/imx-media-capture.c | 64 +++++++++++++------
>  drivers/staging/media/imx/imx-media-csi.c     | 16 +----
>  drivers/staging/media/imx/imx-media.h         |  2 -
>  drivers/staging/media/imx/imx7-media-csi.c    | 17 +----
>  5 files changed, 50 insertions(+), 65 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
> index afaa3a8b15e9..63334fd61492 100644
> --- a/drivers/staging/media/imx/imx-ic-prpencvf.c
> +++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
> @@ -906,9 +906,7 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
>  		       struct v4l2_subdev_format *sdformat)
>  {
>  	struct prp_priv *priv = sd_to_priv(sd);
> -	struct imx_media_video_dev *vdev = priv->vdev;
>  	const struct imx_media_pixfmt *cc;
> -	struct v4l2_pix_format vdev_fmt;
>  	struct v4l2_mbus_framefmt *fmt;
>  	int ret = 0;
>  
> @@ -945,19 +943,9 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
>  			priv->cc[PRPENCVF_SRC_PAD] = outcc;
>  	}
>  
> -	if (sdformat->which == V4L2_SUBDEV_FORMAT_TRY)
> -		goto out;
> -
> -	priv->cc[sdformat->pad] = cc;
> +	if (sdformat->which == V4L2_SUBDEV_FORMAT_ACTIVE)
> +		priv->cc[sdformat->pad] = cc;
>  
> -	/* propagate output pad format to capture device */
> -	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt,
> -				      &priv->format_mbus[PRPENCVF_SRC_PAD],
> -				      priv->cc[PRPENCVF_SRC_PAD]);
> -	mutex_unlock(&priv->lock);
> -	imx_media_capture_device_set_format(vdev, &vdev_fmt);
> -
> -	return 0;
>  out:
>  	mutex_unlock(&priv->lock);
>  	return ret;
> diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
> index 555f6204660b..b77a67bda47c 100644
> --- a/drivers/staging/media/imx/imx-media-capture.c
> +++ b/drivers/staging/media/imx/imx-media-capture.c
> @@ -205,7 +205,8 @@ static int capture_g_fmt_vid_cap(struct file *file, void *fh,
>  
>  static int __capture_try_fmt_vid_cap(struct capture_priv *priv,
>  				     struct v4l2_subdev_format *fmt_src,
> -				     struct v4l2_format *f)
> +				     struct v4l2_format *f,
> +				     struct v4l2_rect *compose)
>  {
>  	const struct imx_media_pixfmt *cc, *cc_src;
>  
> @@ -247,6 +248,13 @@ static int __capture_try_fmt_vid_cap(struct capture_priv *priv,
>  
>  	imx_media_mbus_fmt_to_pix_fmt(&f->fmt.pix, &fmt_src->format, cc);
>  
> +	if (compose) {
> +		compose->left = 0;
> +		compose->top = 0;
> +		compose->width = fmt_src->format.width;
> +		compose->height = fmt_src->format.height;
> +	}
> +
>  	return 0;
>  }
>  
> @@ -263,7 +271,7 @@ static int capture_try_fmt_vid_cap(struct file *file, void *fh,
>  	if (ret)
>  		return ret;
>  
> -	return __capture_try_fmt_vid_cap(priv, &fmt_src, f);
> +	return __capture_try_fmt_vid_cap(priv, &fmt_src, f, NULL);
>  }
>  
>  static int capture_s_fmt_vid_cap(struct file *file, void *fh,
> @@ -271,6 +279,7 @@ static int capture_s_fmt_vid_cap(struct file *file, void *fh,
>  {
>  	struct capture_priv *priv = video_drvdata(file);
>  	struct v4l2_subdev_format fmt_src;
> +	struct v4l2_rect compose;
>  	int ret;
>  
>  	if (vb2_is_busy(&priv->q)) {
> @@ -284,17 +293,14 @@ static int capture_s_fmt_vid_cap(struct file *file, void *fh,
>  	if (ret)
>  		return ret;
>  
> -	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, f);
> +	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, f, &compose);
>  	if (ret)
>  		return ret;
>  
>  	priv->vdev.fmt.fmt.pix = f->fmt.pix;
>  	priv->vdev.cc = imx_media_find_format(f->fmt.pix.pixelformat,
>  					      CS_SEL_ANY, true);
> -	priv->vdev.compose.left = 0;
> -	priv->vdev.compose.top = 0;
> -	priv->vdev.compose.width = fmt_src.format.width;
> -	priv->vdev.compose.height = fmt_src.format.height;
> +	priv->vdev.compose = compose;
>  
>  	return 0;
>  }
> @@ -524,6 +530,33 @@ static void capture_buf_queue(struct vb2_buffer *vb)
>  	spin_unlock_irqrestore(&priv->q_lock, flags);
>  }
>  
> +static int capture_validate_fmt(struct capture_priv *priv)
> +{
> +	struct v4l2_subdev_format fmt_src;
> +	struct v4l2_rect compose;
> +	struct v4l2_format f;
> +	int ret;
> +
> +	fmt_src.pad = priv->src_sd_pad;
> +	fmt_src.which = V4L2_SUBDEV_FORMAT_ACTIVE;
> +	ret = v4l2_subdev_call(priv->src_sd, pad, get_fmt, NULL, &fmt_src);
> +	if (ret)
> +		return ret;
> +
> +	v4l2_fill_pix_format(&f.fmt.pix, &fmt_src.format);
> +
> +	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, &f, &compose);
> +	if (ret)
> +		return ret;
> +
> +	return (priv->vdev.fmt.fmt.pix.width != f.fmt.pix.width ||
> +		priv->vdev.fmt.fmt.pix.height != f.fmt.pix.height ||
> +		priv->vdev.cc->cs !=
> +		ipu_pixelformat_to_colorspace(f.fmt.pix.pixelformat) ||

This fails on imx7, no ipu, it returns unknown colorspace.
Removing this check everything works ok on my setup with this
series.
Do not know the best way to fix this but you may have? :)

> +		priv->vdev.compose.width != compose.width ||
> +		priv->vdev.compose.height != compose.height) ? -EINVAL : 0;
> +}
> +
>  static int capture_start_streaming(struct vb2_queue *vq, unsigned int count)
>  {
>  	struct capture_priv *priv = vb2_get_drv_priv(vq);
> @@ -531,6 +564,10 @@ static int capture_start_streaming(struct vb2_queue *vq, unsigned int count)
>  	unsigned long flags;
>  	int ret;
>  
> +	ret = capture_validate_fmt(priv);
> +	if (ret)

Maybe some verbose output here to let know userland what failed.

> +		goto return_bufs;
> +
>  	ret = imx_media_pipeline_set_stream(priv->md, &priv->src_sd->entity,
>  					    true);
>  	if (ret) {
> @@ -654,19 +691,6 @@ static struct video_device capture_videodev = {
>  	.device_caps	= V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING,
>  };

---
Cheers,
	Rui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
