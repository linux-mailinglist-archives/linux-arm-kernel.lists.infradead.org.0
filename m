Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 270FACEC65
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 21:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyjc7NoyhkMhfa+lUHH04WGPncDhj4zM4n/UpkAEmUY=; b=K21PvnxPl0D9xv
	9AOvlohoDu2404y2GTrKOHADaR09ewrjrWxDykY2g7wRU0qi8SxaQnMRobpz3JoxCVJtwdlsmSnkC
	zlznXGIE9EvnhFws3Y0Fr/rly7Q+URFhJqT1ZQOHwUkR8sEF4enX4zX4d27X4Nu+XBc2y+5WryJeJ
	KBuxvKyO7hXwIW2ylJSZp9sAxugxtof5haD4EKlu6S8WF+2+uzDcfYV0SfnHG/P9L/Zk9vf37MJg+
	hAD4MKu/IsTGHKat1HPwhe5EVlnjntBIGQ80RFzJQdGGNhmZo+dsPd4KMI+r5+gGX89aCQXmxcICj
	MpANi3cE/lbzjRFG0O+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHYGi-0007Be-My; Mon, 07 Oct 2019 19:02:04 +0000
Received: from mailoutvs54.siol.net ([185.57.226.245] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHYFx-0006ez-3P
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 19:01:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id EA424521E2F;
 Mon,  7 Oct 2019 21:01:08 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id dW8YKP7WwunV; Mon,  7 Oct 2019 21:01:08 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id E446852208F;
 Mon,  7 Oct 2019 21:01:07 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id C766E521E2F;
 Mon,  7 Oct 2019 21:01:06 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH v2 0/6] media: cedrus: h264: Support multi-slice frames
Date: Mon, 07 Oct 2019 21:01:06 +0200
Message-ID: <2785635.uIalc63MVP@jernej-laptop>
In-Reply-To: <5ec43907-cb6f-1527-f6ec-9fffc768d9ef@xs4all.nl>
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
 <5ec43907-cb6f-1527-f6ec-9fffc768d9ef@xs4all.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_120117_490206_BE48A4B0 
X-CRM114-Status: GOOD (  33.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.245 listed in list.dnswl.org]
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

Dne ponedeljek, 07. oktober 2019 ob 12:44:24 CEST je Hans Verkuil napisal(a):
> Hi Jernej,
> 
> On 9/29/19 10:00 PM, Jernej Skrabec wrote:
> > This series adds support for decoding multi-slice H264 frames along with
> > support for V4L2_DEC_CMD_FLUSH and V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF.
> > 
> > Code was tested by modified ffmpeg, which can be found here:
> > https://github.com/jernejsk/FFmpeg, branch mainline-test
> > It has to be configured with at least following options:
> > --enable-v4l2-request --enable-libudev --enable-libdrm
> > 
> > Samples used for testing:
> > http://jernej.libreelec.tv/videos/h264/BA1_FT_C.mp4
> > http://jernej.libreelec.tv/videos/h264/h264.mp4
> > 
> > Command line used for testing:
> > ffmpeg -hwaccel drm -hwaccel_device /dev/dri/card0 -i h264.mp4 -pix_fmt
> > bgra -f fbdev /dev/fb0
> > 
> > Please note that V4L2_DEC_CMD_FLUSH was not tested because I'm
> > not sure how. ffmpeg follows exactly which slice is last in frame
> > and sets hold flag accordingly. Improper usage of hold flag would
> > corrupt ffmpeg assumptions and it would probably crash. Any ideas
> > how to test this are welcome!
> > 
> > Thanks to Jonas for adjusting ffmpeg.
> > 
> > Please let me know what you think.
> > 
> > Best regards,
> > Jernej
> > 
> > Changes from v1:
> > - added Rb tags
> > - updated V4L2_DEC_CMD_FLUSH documentation
> > - updated first slice detection in Cedrus
> > - hold capture buffer flag is set according to source format
> > - added v4l m2m stateless_(try_)decoder_cmd ioctl helpers
> > 
> > Hans Verkuil (2):
> >   vb2: add V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF
> >   videodev2.h: add V4L2_DEC_CMD_FLUSH
> > 
> > Jernej Skrabec (4):
> >   media: v4l2-mem2mem: add stateless_(try_)decoder_cmd ioctl helpers
> >   media: cedrus: Detect first slice of a frame
> >   media: cedrus: h264: Support multiple slices per frame
> >   media: cedrus: Add support for holding capture buffer
> >  
> >  Documentation/media/uapi/v4l/buffer.rst       | 13 ++++++
> >  .../media/uapi/v4l/vidioc-decoder-cmd.rst     | 10 +++-
> >  .../media/uapi/v4l/vidioc-reqbufs.rst         |  6 +++
> >  .../media/videodev2.h.rst.exceptions          |  1 +
> >  .../media/common/videobuf2/videobuf2-v4l2.c   |  8 +++-
> >  drivers/media/v4l2-core/v4l2-mem2mem.c        | 35 ++++++++++++++
> >  drivers/staging/media/sunxi/cedrus/cedrus.h   |  1 +
> >  .../staging/media/sunxi/cedrus/cedrus_dec.c   | 11 +++++
> >  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 11 ++++-
> >  .../staging/media/sunxi/cedrus/cedrus_hw.c    |  8 ++--
> >  .../staging/media/sunxi/cedrus/cedrus_video.c | 14 ++++++
> >  include/media/v4l2-mem2mem.h                  | 46 +++++++++++++++++++
> >  include/media/videobuf2-core.h                |  3 ++
> >  include/media/videobuf2-v4l2.h                |  5 ++
> >  include/uapi/linux/videodev2.h                | 14 ++++--
> >  15 files changed, 175 insertions(+), 11 deletions(-)
> 
> I didn't want to make a v3 of this series, instead I hacked this patch that
> will hopefully do all the locking right.
> 
> Basically I moved all the 'held' related code into v4l2-mem2mem under
> job_spinlock. This simplifies the driver code as well.
> 
> But this is a hack that sits on top of this series. If your ffmpeg tests are
> now successful, then I'll turn this into a proper series with correct
> documentation (a lot of the comments are now wrong with this patch, so just
> ignore that).

Thanks for looking into this! With small fix mentioned below, it works! Note 
that both scenarios I tested (flushing during decoding and flushing after 
decoding is finished) are focused on capture queue. In order to trigger output 
queue flush, ffmpeg would need to queue multiple jobs and call flush before they 
are all processed. This is not something I can do at this time. Maybe Jonas 
can help with modifying ffmpeg appropriately. However, code for case seems 
correct to me.

> 
> Regards,
> 
> 	Hans
> 
> diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c
> b/drivers/media/v4l2-core/v4l2-mem2mem.c index 2677a07e4c9b..f81a8f2465ab
> 100644
> --- a/drivers/media/v4l2-core/v4l2-mem2mem.c
> +++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
> @@ -412,25 +412,24 @@ static void v4l2_m2m_cancel_job(struct v4l2_m2m_ctx
> *m2m_ctx) }
>  }
> 
> -void v4l2_m2m_job_finish(struct v4l2_m2m_dev *m2m_dev,
> -			 struct v4l2_m2m_ctx *m2m_ctx)
> +static bool _v4l2_m2m_job_finish(struct v4l2_m2m_dev *m2m_dev,
> +			  struct v4l2_m2m_ctx *m2m_ctx)
>  {
> -	unsigned long flags;
> -
> -	spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
>  	if (!m2m_dev->curr_ctx || m2m_dev->curr_ctx != m2m_ctx) {
> -		spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
>  		dprintk("Called by an instance not currently 
running\n");
> -		return;
> +		return false;
>  	}
> 
>  	list_del(&m2m_dev->curr_ctx->queue);
>  	m2m_dev->curr_ctx->job_flags &= ~(TRANS_QUEUED | TRANS_RUNNING);
>  	wake_up(&m2m_dev->curr_ctx->finished);
>  	m2m_dev->curr_ctx = NULL;
> +	return true;
> +}
> 
> -	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> -
> +static void v4l2_m2m_job_next(struct v4l2_m2m_dev *m2m_dev,
> +		       struct v4l2_m2m_ctx *m2m_ctx)
> +{
>  	/* This instance might have more buffers ready, but since we do not
>  	 * allow more than one job on the job_queue per instance, each has
>  	 * to be scheduled separately after the previous one finishes. */
> @@ -441,8 +440,113 @@ void v4l2_m2m_job_finish(struct v4l2_m2m_dev *m2m_dev,
> */
>  	schedule_work(&m2m_dev->job_work);
>  }
> +
> +void v4l2_m2m_job_finish(struct v4l2_m2m_dev *m2m_dev,
> +			 struct v4l2_m2m_ctx *m2m_ctx)
> +{
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
> +	if (!_v4l2_m2m_job_finish(m2m_dev, m2m_ctx)) {
> +		spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> +		return;
> +	}
> +	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> +
> +	v4l2_m2m_job_next(m2m_dev, m2m_ctx);
> +}
>  EXPORT_SYMBOL(v4l2_m2m_job_finish);
> 
> +void v4l2_m2m_job_finish_held(struct v4l2_m2m_dev *m2m_dev,
> +			 struct v4l2_m2m_ctx *m2m_ctx,
> +			 enum vb2_buffer_state state)
> +{
> +	struct vb2_v4l2_buffer *src_buf, *dst_buf;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
> +	src_buf = v4l2_m2m_src_buf_remove(m2m_ctx);
> +	dst_buf = v4l2_m2m_next_dst_buf(m2m_ctx);
> +
> +	if (!src_buf || !dst_buf) {
> +		pr_err("Missing source and/or destination buffers\n");
> +		spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> +		return;
> +	}
> +	v4l2_m2m_buf_done(src_buf, state);
> +	if (!dst_buf->is_held) {
> +		v4l2_m2m_dst_buf_remove(m2m_ctx);
> +		v4l2_m2m_buf_done(dst_buf, state);
> +	}
> +	if (!_v4l2_m2m_job_finish(m2m_dev, m2m_ctx)) {
> +		spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> +		return;
> +	}
> +	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> +
> +	v4l2_m2m_job_next(m2m_dev, m2m_ctx);
> +}
> +EXPORT_SYMBOL(v4l2_m2m_job_finish_held);
> +
> +/**
> + * v4l2_m2m_release_capture_buf() - check if the capture buffer should be
> + * released
> + *
> + * @out_vb: the output buffer
> + * @cap_vb: the capture buffer
> + *
> + * This helper function returns true if the current capture buffer should
> + * be released to vb2. This is the case if the output buffer specified that
> + * the capture buffer should be held (i.e. not returned to vb2) AND if the
> + * timestamp of the capture buffer differs from the output buffer
> timestamp. + *
> + * This helper is to be called at the start of the device_run callback:
> + *
> + * .. code-block:: c
> + *
> + *	if (v4l2_m2m_release_capture_buf(out_vb, cap_vb)) {
> + *		v4l2_m2m_dst_buf_remove(m2m_ctx);
> + *		v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
> + *		cap_vb = v4l2_m2m_next_dst_buf(m2m_ctx);
> + *	}
> + *	cap_vb->is_held = out_vb->flags & 
V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
> + *
> + *	...
> + *
> + *	v4l2_m2m_buf_done(out_vb, VB2_BUF_STATE_DONE);
> + *	if (!cap_vb->is_held) {
> + *		v4l2_m2m_dst_buf_remove(m2m_ctx);
> + *		v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
> + *	}
> + *
> + * This allows for multiple output buffers to be used to fill in a single
> + * capture buffer. This is typically used by stateless decoders where
> + * multiple e.g. H.264 slices contribute to a single decoded frame.
> + */
> +struct vb2_v4l2_buffer *v4l2_m2m_release_capture_buf(struct v4l2_m2m_ctx
> *m2m_ctx) +{
> +	struct v4l2_m2m_dev *m2m_dev = m2m_ctx->m2m_dev;
> +	struct vb2_v4l2_buffer *src, *dst;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
> +	src = v4l2_m2m_next_src_buf(m2m_ctx);
> +	dst = v4l2_m2m_next_dst_buf(m2m_ctx);
> +
> +	if (dst->is_held && dst->vb2_buf.copied_timestamp &&
> +	    src->vb2_buf.timestamp != dst->vb2_buf.timestamp) {
> +		dst->is_held = false;
> +		v4l2_m2m_dst_buf_remove(m2m_ctx);
> +		v4l2_m2m_buf_done(dst, VB2_BUF_STATE_DONE);
> +		dst = v4l2_m2m_next_dst_buf(m2m_ctx);
> +	}
> +	dst->is_held = src->flags & V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
> +	src->flags &= ~V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
> +	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> +	return dst;
> +}
> +EXPORT_SYMBOL(v4l2_m2m_release_capture_buf);
> +
>  int v4l2_m2m_reqbufs(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
>  		     struct v4l2_requestbuffers *reqbufs)
>  {
> @@ -1171,19 +1275,28 @@ int v4l2_m2m_ioctl_stateless_decoder_cmd(struct file
> *file, void *priv, {
>  	struct v4l2_fh *fh = file->private_data;
>  	struct vb2_v4l2_buffer *out_vb, *cap_vb;
> +	struct v4l2_m2m_dev *m2m_dev = fh->m2m_ctx->m2m_dev;
> +	unsigned long flags;
>  	int ret;
> 
>  	ret = v4l2_m2m_ioctl_stateless_try_decoder_cmd(file, priv, dc);
>  	if (ret < 0)
>  		return ret;
> 
> +	spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
>  	out_vb = v4l2_m2m_last_src_buf(fh->m2m_ctx);
>  	cap_vb = v4l2_m2m_last_dst_buf(fh->m2m_ctx);
> 
> -	if (out_vb)
> +	if (out_vb && (out_vb->flags & V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF)) 
{
>  		out_vb->flags &= ~V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
> -	else if (cap_vb && cap_vb->is_held)
> -		v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
> +	} else if (cap_vb && cap_vb->is_held) {
> +		cap_vb->is_held = false;
> +		if (m2m_dev->curr_ctx) {

Above condition should be negated.

Best regards,
Jernej

> +			v4l2_m2m_dst_buf_remove(fh->m2m_ctx);
> +			v4l2_m2m_buf_done(cap_vb, 
VB2_BUF_STATE_DONE);
> +		}
> +	}
> +	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> 
>  	return 0;
>  }
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c index
> 67f7d4326fc1..4e30f263b427 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> @@ -30,14 +30,7 @@ void cedrus_device_run(void *priv)
>  	struct media_request *src_req;
> 
>  	run.src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
> -	run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> -
> -	if (v4l2_m2m_release_capture_buf(run.src, run.dst)) {
> -		v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> -		v4l2_m2m_buf_done(run.dst, VB2_BUF_STATE_DONE);
> -		run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> -	}
> -	run.dst->is_held = run.src->flags & 
V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
> +	run.dst = v4l2_m2m_release_capture_buf(ctx->fh.m2m_ctx);
> 
>  	run.first_slice = !run.dst->vb2_buf.copied_timestamp ||
>  		run.src->vb2_buf.timestamp != run.dst-
>vb2_buf.timestamp;
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c index
> 99fedec80224..242cad82cc8c 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> @@ -103,7 +103,6 @@ static irqreturn_t cedrus_irq(int irq, void *data)
>  {
>  	struct cedrus_dev *dev = data;
>  	struct cedrus_ctx *ctx;
> -	struct vb2_v4l2_buffer *src_buf, *dst_buf;
>  	enum vb2_buffer_state state;
>  	enum cedrus_irq_status status;
> 
> @@ -121,26 +120,12 @@ static irqreturn_t cedrus_irq(int irq, void *data)
>  	dev->dec_ops[ctx->current_codec]->irq_disable(ctx);
>  	dev->dec_ops[ctx->current_codec]->irq_clear(ctx);
> 
> -	src_buf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
> -	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> -
> -	if (!src_buf || !dst_buf) {
> -		v4l2_err(&dev->v4l2_dev,
> -			 "Missing source and/or destination 
buffers\n");
> -		return IRQ_HANDLED;
> -	}
> -
>  	if (status == CEDRUS_IRQ_ERROR)
>  		state = VB2_BUF_STATE_ERROR;
>  	else
>  		state = VB2_BUF_STATE_DONE;
> 
> -	v4l2_m2m_buf_done(src_buf, state);
> -	if (!dst_buf->is_held) {
> -		v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> -		v4l2_m2m_buf_done(dst_buf, state);
> -	}
> -	v4l2_m2m_job_finish(ctx->dev->m2m_dev, ctx->fh.m2m_ctx);
> +	v4l2_m2m_job_finish_held(ctx->dev->m2m_dev, ctx->fh.m2m_ctx, state);
> 
>  	return IRQ_HANDLED;
>  }
> diff --git a/include/media/v4l2-mem2mem.h b/include/media/v4l2-mem2mem.h
> index 8ae2f56c7fa3..48ca7d3eaa3d 100644
> --- a/include/media/v4l2-mem2mem.h
> +++ b/include/media/v4l2-mem2mem.h
> @@ -173,6 +173,10 @@ void v4l2_m2m_try_schedule(struct v4l2_m2m_ctx
> *m2m_ctx); void v4l2_m2m_job_finish(struct v4l2_m2m_dev *m2m_dev,
>  			 struct v4l2_m2m_ctx *m2m_ctx);
> 
> +void v4l2_m2m_job_finish_held(struct v4l2_m2m_dev *m2m_dev,
> +			 struct v4l2_m2m_ctx *m2m_ctx,
> +			 enum vb2_buffer_state state);
> +
>  static inline void
>  v4l2_m2m_buf_done(struct vb2_v4l2_buffer *buf, enum vb2_buffer_state state)
> {
> @@ -644,47 +648,7 @@ void v4l2_m2m_buf_copy_metadata(const struct
> vb2_v4l2_buffer *out_vb, struct vb2_v4l2_buffer *cap_vb,
>  				bool copy_frame_flags);
> 
> -/**
> - * v4l2_m2m_release_capture_buf() - check if the capture buffer should be
> - * released
> - *
> - * @out_vb: the output buffer
> - * @cap_vb: the capture buffer
> - *
> - * This helper function returns true if the current capture buffer should
> - * be released to vb2. This is the case if the output buffer specified that
> - * the capture buffer should be held (i.e. not returned to vb2) AND if the
> - * timestamp of the capture buffer differs from the output buffer
> timestamp. - *
> - * This helper is to be called at the start of the device_run callback:
> - *
> - * .. code-block:: c
> - *
> - *	if (v4l2_m2m_release_capture_buf(out_vb, cap_vb)) {
> - *		v4l2_m2m_dst_buf_remove(m2m_ctx);
> - *		v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
> - *		cap_vb = v4l2_m2m_next_dst_buf(m2m_ctx);
> - *	}
> - *	cap_vb->is_held = out_vb->flags & 
V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
> - *
> - *	...
> - *
> - *	v4l2_m2m_buf_done(out_vb, VB2_BUF_STATE_DONE);
> - *	if (!cap_vb->is_held) {
> - *		v4l2_m2m_dst_buf_remove(m2m_ctx);
> - *		v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
> - *	}
> - *
> - * This allows for multiple output buffers to be used to fill in a single
> - * capture buffer. This is typically used by stateless decoders where
> - * multiple e.g. H.264 slices contribute to a single decoded frame.
> - */
> -static inline bool v4l2_m2m_release_capture_buf(const struct
> vb2_v4l2_buffer *out_vb, -					
	const struct vb2_v4l2_buffer *cap_vb)
> -{
> -	return cap_vb->is_held && cap_vb->vb2_buf.copied_timestamp &&
> -	       out_vb->vb2_buf.timestamp != cap_vb->vb2_buf.timestamp;
> -}
> +struct vb2_v4l2_buffer *v4l2_m2m_release_capture_buf(struct v4l2_m2m_ctx
> *m2m_ctx);
> 
>  /* v4l2 request helper */





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
