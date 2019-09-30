Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87461C2561
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 18:44:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LopQOHYCA8bZCUEZMxsiQ8/dcopidwNFdKVSrznCJX8=; b=l+fTn/2X8iVOd3
	wBxeg3nKFl3v/7I5wW6rB2xp5slT3ro9/y3F9oJAkNSLvgTZEMU0jy7xBJIiyu9LDJSPqFREi/PH8
	aFkJm3Q1Yh/ofhYoaD+yF1w44dndC72Up/hBaulgl2Dj1cHmQBZ65ybjBjuQjbOQSPq+YSMi/jxUl
	P7v7a/yfcCRQE6aPd3sb8CTFSvEJuvQl+azD8pwrXfVgw4htDJRIbrAf7T5/DL/HLWbFUX9CZgeG0
	linIk5nlTRzbywUK90sVtBPiuQT8dY4HxyLnMw/vp9Y6sMaefvmhe0l/ivMVJ87cptE3sX/eHB47R
	Ye3cTQ+1E5W+Ccf09I8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEyme-0000Z7-Oz; Mon, 30 Sep 2019 16:44:24 +0000
Received: from mailoutvs44.siol.net ([185.57.226.235] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEymU-0000Xo-Gh
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 16:44:17 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id B709D522D81;
 Mon, 30 Sep 2019 18:44:06 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id vqC7iU5JIcxQ; Mon, 30 Sep 2019 18:44:06 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 29769522DC4;
 Mon, 30 Sep 2019 18:44:06 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 4CE41522DBF;
 Mon, 30 Sep 2019 18:44:03 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH v2 6/6] media: cedrus: Add support for holding capture
 buffer
Date: Mon, 30 Sep 2019 18:44:02 +0200
Message-ID: <2089312.Gnm7pnLf18@jernej-laptop>
In-Reply-To: <4fb20c41-7cc1-32c9-b5b9-2e86b5e74201@xs4all.nl>
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
 <20190929200023.215831-7-jernej.skrabec@siol.net>
 <4fb20c41-7cc1-32c9-b5b9-2e86b5e74201@xs4all.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_094414_875473_18EFF4C0 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.235 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org, pawel@osciak.com,
 jonas@kwiboo.se, gregkh@linuxfoundation.org, wens@csie.org, mripard@kernel.org,
 tfiga@chromium.org, paul.kocialkowski@bootlin.com, kyungmin.park@samsung.com,
 boris.brezillon@collabora.com, linux-arm-kernel@lists.infradead.org,
 mchehab@kernel.org, ezequiel@collabora.com, linux-kernel@vger.kernel.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne ponedeljek, 30. september 2019 ob 10:14:32 CEST je Hans Verkuil 
napisal(a):
> On 9/29/19 10:00 PM, Jernej Skrabec wrote:
> > When frame contains multiple slices and driver works in slice mode, it's
> > more efficient to hold capture buffer in queue until all slices of a
> > same frame are decoded.
> > 
> > Add support for that to Cedrus driver by exposing and implementing
> > V4L2_BUF_CAP_SUPPORTS_M2M_HOLD_CAPTURE_BUF capability.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  drivers/staging/media/sunxi/cedrus/cedrus_dec.c   |  9 +++++++++
> >  drivers/staging/media/sunxi/cedrus/cedrus_hw.c    |  8 +++++---
> >  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 14 ++++++++++++++
> >  3 files changed, 28 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c index
> > e49c3396ca4d..67f7d4326fc1 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > @@ -31,6 +31,14 @@ void cedrus_device_run(void *priv)
> > 
> >  	run.src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
> >  	run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> > 
> > +
> > +	if (v4l2_m2m_release_capture_buf(run.src, run.dst)) {
> > +		v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> > +		v4l2_m2m_buf_done(run.dst, VB2_BUF_STATE_DONE);
> > +		run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> > +	}
> > +	run.dst->is_held = run.src->flags & 
V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
> > +
> > 
> >  	run.first_slice = !run.dst->vb2_buf.copied_timestamp ||
> >  	
> >  		run.src->vb2_buf.timestamp != run.dst-
>vb2_buf.timestamp;
> > 
> > @@ -46,6 +54,7 @@ void cedrus_device_run(void *priv)
> > 
> >  			V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
> >  		
> >  		run.mpeg2.quantization = cedrus_find_control_data(ctx,
> >  		
> >  			V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION);
> > 
> > +		run.dst->is_held = false;
> > 
> >  		break;
> >  	
> >  	case V4L2_PIX_FMT_H264_SLICE:
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c index
> > fc8579b90dab..b466041c25db 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> > @@ -122,7 +122,7 @@ static irqreturn_t cedrus_irq(int irq, void *data)
> > 
> >  	dev->dec_ops[ctx->current_codec]->irq_clear(ctx);
> >  	
> >  	src_buf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
> > 
> > -	dst_buf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> > +	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> > 
> >  	if (!src_buf || !dst_buf) {
> >  	
> >  		v4l2_err(&dev->v4l2_dev,
> > 
> > @@ -136,8 +136,10 @@ static irqreturn_t cedrus_irq(int irq, void *data)
> > 
> >  		state = VB2_BUF_STATE_DONE;
> >  	
> >  	v4l2_m2m_buf_done(src_buf, state);
> > 
> > -	v4l2_m2m_buf_done(dst_buf, state);
> > -
> > +	if (!dst_buf->is_held) {
> > +		v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> > +		v4l2_m2m_buf_done(dst_buf, state);
> > +	}
> > 
> >  	v4l2_m2m_job_finish(ctx->dev->m2m_dev, ctx->fh.m2m_ctx);
> >  	
> >  	return IRQ_HANDLED;
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_video.c index
> > 3ec3a2db790c..82198b2bb081 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > @@ -303,6 +303,17 @@ static int cedrus_s_fmt_vid_out(struct file *file,
> > void *priv,> 
> >  	ctx->src_fmt = f->fmt.pix;
> > 
> > +	switch (ctx->src_fmt.pixelformat) {
> > +	case V4L2_PIX_FMT_H264_SLICE:
> > +		vq->subsystem_flags |=
> > +			VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF;
> > +		break;
> > +	default:
> > +		vq->subsystem_flags &=
> > +			
(u32)~VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF;
> 
> Why the u32 cast?

To prevent warnings on arm64 such as reported here:
https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1620796.html

But I'm not sure if this aplies for this case. I compiled kernel for arm64 but 
there is no warning without this cast with my configuration. I guess I can 
remove it.

Best regards,
Jernej

> 
> Regards,
> 
> 	Hans
> 
> > +		break;
> > +	}
> > +
> > 
> >  	/* Propagate colorspace information to capture. */
> >  	ctx->dst_fmt.colorspace = f->fmt.pix.colorspace;
> >  	ctx->dst_fmt.xfer_func = f->fmt.pix.xfer_func;
> > 
> > @@ -336,6 +347,9 @@ const struct v4l2_ioctl_ops cedrus_ioctl_ops = {
> > 
> >  	.vidioc_streamon		= v4l2_m2m_ioctl_streamon,
> >  	.vidioc_streamoff		= v4l2_m2m_ioctl_streamoff,
> > 
> > +	.vidioc_try_decoder_cmd		= 
v4l2_m2m_ioctl_stateless_try_decoder_cmd,
> > +	.vidioc_decoder_cmd		= 
v4l2_m2m_ioctl_stateless_decoder_cmd,
> > +
> > 
> >  	.vidioc_subscribe_event		= v4l2_ctrl_subscribe_event,
> >  	.vidioc_unsubscribe_event	= v4l2_event_unsubscribe,
> >  
> >  };





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
