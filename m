Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F72C1CA0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cOFGAJmqhbSyGxa68GqtU6WVd+Ly/ichr+iHaxoKFw=; b=ZErV4SzFO4CX1a
	bnZZE4gJPvfTX5LRaM180Y0qOjQ3dKvntwjcM8rUtXVTVBvoMJ7mkTHOvUqxFDNV8JqX+kC62ypTX
	UV0m9nuCoJb/S1feO94fKzryKfaZUTTa6CwJg5VqCbcoHvL9GK+kCGbeOjArfT5tvRnqGcdjRGvc4
	7PWTpW2BofUlUcfYaahLi19TNrYo+HlzgZapnnV1YPfhFEDxvkeKAC3s4xRw8IwjH823p26g8Kk3Q
	K40S+cTYGRicdfozCg5OY291J0lAieBSy7ic0wMzfpm6Fpyq++ilLr6kCJfWu1RwnHh6f8qlw9niw
	jQxJlqCE14yx0I4vXkxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqpU-0001Um-Li; Mon, 30 Sep 2019 08:14:48 +0000
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqpL-0001Td-5u
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:14:40 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud7.xs4all.net with ESMTPA
 id EqpEicbzc9D4hEqpHiKpmC; Mon, 30 Sep 2019 10:14:36 +0200
Subject: Re: [PATCH v2 6/6] media: cedrus: Add support for holding capture
 buffer
To: Jernej Skrabec <jernej.skrabec@siol.net>, mchehab@kernel.org,
 paul.kocialkowski@bootlin.com, mripard@kernel.org, pawel@osciak.com,
 m.szyprowski@samsung.com, kyungmin.park@samsung.com, tfiga@chromium.org,
 wens@csie.org
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
 <20190929200023.215831-7-jernej.skrabec@siol.net>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <4fb20c41-7cc1-32c9-b5b9-2e86b5e74201@xs4all.nl>
Date: Mon, 30 Sep 2019 10:14:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190929200023.215831-7-jernej.skrabec@siol.net>
Content-Language: en-US
X-CMAE-Envelope: MS4wfKZRIavQldudRvUzTkwCL0qmI37edGTugmtNI4J//GHq4mrRglNz336qixvQ58mB9QbDdVNUIZBGXoUQ5PJDfc9tmZ1LVFugq1cTjyH0IVY2ekOHoDVB
 t03Vu8ASUCUxcaLhQueE1xzx2/Gi8tbBX4TK7vSwe/N8YsKplExQyPj3CuuSVvj/RFjrjAn8gqyjvevYlsRemLmaUUmR6g/z0gXIejIAxdHLmOBowMDtKXr5
 HkGJznwiTCDAasGCS038IcMl0IzT5UwFJBcYedhmneeF/5k3LDHOTij1lXVWyEmzjZcjfhkuOKcIyLNwv/d9fG5RgImzg6sFZNlKE/lcCTrOpBt71iuCRCsS
 62y2xHIL+0LAXlPghv8VnnLoE3gkWi/qst8egm79A2UisOLZjBWP3UaK12boeUifcvMchHb8kHIQnSoRHFxUnlyDZzA9nsXeenQwi/UZbH9WVRd4+q73O4Dv
 MBql0ekYo7UoI6I2ZLpxgk0SBOCBxcPp4xBKIVMKO/ZUNgzd+0DPXN1P8PqbePi3Xw4xK91N2skpyjR2WRa6j72hAbi7RGkRtFk1T9XYmNpTpygy3QRuXlmR
 J7+WPS5Z0DjPLaWEnR3TztOo63uBGlBR6TH71Xind8qcMrFZLy4UcCEnI5YFU6F5NlCXaPCyRIzG9wjuN4nR/wWiGt8w0OgsuH9l+6t7GsHplZySjfMjnJFO
 wafyG7cYdYCQuqjJ6/Ar3zDgWiv07kWKNhthk0KsU92+vn//6pq8hw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_011439_376259_D88F9868 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, boris.brezillon@collabora.com,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/29/19 10:00 PM, Jernej Skrabec wrote:
> When frame contains multiple slices and driver works in slice mode, it's
> more efficient to hold capture buffer in queue until all slices of a
> same frame are decoded.
> 
> Add support for that to Cedrus driver by exposing and implementing
> V4L2_BUF_CAP_SUPPORTS_M2M_HOLD_CAPTURE_BUF capability.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_dec.c   |  9 +++++++++
>  drivers/staging/media/sunxi/cedrus/cedrus_hw.c    |  8 +++++---
>  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 14 ++++++++++++++
>  3 files changed, 28 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> index e49c3396ca4d..67f7d4326fc1 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> @@ -31,6 +31,14 @@ void cedrus_device_run(void *priv)
>  
>  	run.src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
>  	run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> +
> +	if (v4l2_m2m_release_capture_buf(run.src, run.dst)) {
> +		v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> +		v4l2_m2m_buf_done(run.dst, VB2_BUF_STATE_DONE);
> +		run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> +	}
> +	run.dst->is_held = run.src->flags & V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
> +
>  	run.first_slice = !run.dst->vb2_buf.copied_timestamp ||
>  		run.src->vb2_buf.timestamp != run.dst->vb2_buf.timestamp;
>  
> @@ -46,6 +54,7 @@ void cedrus_device_run(void *priv)
>  			V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
>  		run.mpeg2.quantization = cedrus_find_control_data(ctx,
>  			V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION);
> +		run.dst->is_held = false;
>  		break;
>  
>  	case V4L2_PIX_FMT_H264_SLICE:
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> index fc8579b90dab..b466041c25db 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> @@ -122,7 +122,7 @@ static irqreturn_t cedrus_irq(int irq, void *data)
>  	dev->dec_ops[ctx->current_codec]->irq_clear(ctx);
>  
>  	src_buf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
> -	dst_buf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> +	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
>  
>  	if (!src_buf || !dst_buf) {
>  		v4l2_err(&dev->v4l2_dev,
> @@ -136,8 +136,10 @@ static irqreturn_t cedrus_irq(int irq, void *data)
>  		state = VB2_BUF_STATE_DONE;
>  
>  	v4l2_m2m_buf_done(src_buf, state);
> -	v4l2_m2m_buf_done(dst_buf, state);
> -
> +	if (!dst_buf->is_held) {
> +		v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> +		v4l2_m2m_buf_done(dst_buf, state);
> +	}
>  	v4l2_m2m_job_finish(ctx->dev->m2m_dev, ctx->fh.m2m_ctx);
>  
>  	return IRQ_HANDLED;
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> index 3ec3a2db790c..82198b2bb081 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -303,6 +303,17 @@ static int cedrus_s_fmt_vid_out(struct file *file, void *priv,
>  
>  	ctx->src_fmt = f->fmt.pix;
>  
> +	switch (ctx->src_fmt.pixelformat) {
> +	case V4L2_PIX_FMT_H264_SLICE:
> +		vq->subsystem_flags |=
> +			VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF;
> +		break;
> +	default:
> +		vq->subsystem_flags &=
> +			(u32)~VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF;

Why the u32 cast?

Regards,

	Hans

> +		break;
> +	}
> +
>  	/* Propagate colorspace information to capture. */
>  	ctx->dst_fmt.colorspace = f->fmt.pix.colorspace;
>  	ctx->dst_fmt.xfer_func = f->fmt.pix.xfer_func;
> @@ -336,6 +347,9 @@ const struct v4l2_ioctl_ops cedrus_ioctl_ops = {
>  	.vidioc_streamon		= v4l2_m2m_ioctl_streamon,
>  	.vidioc_streamoff		= v4l2_m2m_ioctl_streamoff,
>  
> +	.vidioc_try_decoder_cmd		= v4l2_m2m_ioctl_stateless_try_decoder_cmd,
> +	.vidioc_decoder_cmd		= v4l2_m2m_ioctl_stateless_decoder_cmd,
> +
>  	.vidioc_subscribe_event		= v4l2_ctrl_subscribe_event,
>  	.vidioc_unsubscribe_event	= v4l2_event_unsubscribe,
>  };
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
