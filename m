Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B63FCDF8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 12:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GEfgiGauN1KPh1rGR+wsb9IATvKJixyIkL5ruBQG2aI=; b=eHR70Xy9D0h7ni
	A0in1YNeQgk5EREG/r9cHAzBbwhUBC+D3NYukJlseiq+kb9xDX4xU40ywOPej9oNAgXLPalCHPtyG
	G8y+ilnr4Jovu4JEDAyoynZUgrzuOiMnutEuDdaY6r46HuyzA6Iiiu6taOo0csAhTJuQtiA+YviFv
	ixEt7yPijwbaBbyrIDrHj/BcZqG5ToIlw0OpmUFzVrlX0XvoEomHUjmB0XpKRGnPO0y1rbMbPr9we
	X78s9Usdr3Ou582TkKT5cGnrU3ETOWMSSs0Gm4NVoQpB+dnLUUNPpEzSZswr+fM3CMwpDhQ6VcrzC
	ZUUeEsLOW2tTXBygxRfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHQVP-00053R-0E; Mon, 07 Oct 2019 10:44:43 +0000
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHQVA-00051E-T9
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 10:44:31 +0000
Received: from [IPv6:2001:983:e9a7:1:3d61:cdd2:8085:cc8]
 ([IPv6:2001:983:e9a7:1:3d61:cdd2:8085:cc8])
 by smtp-cloud7.xs4all.net with ESMTPA
 id HQV6iLkEqjZ8vHQV7i6A6G; Mon, 07 Oct 2019 12:44:25 +0200
Subject: Re: [PATCH v2 0/6] media: cedrus: h264: Support multi-slice frames
To: Jernej Skrabec <jernej.skrabec@siol.net>, mchehab@kernel.org,
 paul.kocialkowski@bootlin.com, mripard@kernel.org, pawel@osciak.com,
 m.szyprowski@samsung.com, kyungmin.park@samsung.com, tfiga@chromium.org,
 wens@csie.org
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <5ec43907-cb6f-1527-f6ec-9fffc768d9ef@xs4all.nl>
Date: Mon, 7 Oct 2019 12:44:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190929200023.215831-1-jernej.skrabec@siol.net>
Content-Language: en-US
X-CMAE-Envelope: MS4wfANHW6J2gkPO117kDZXf5yDUcUJpglFXHitfq3K2FSScJT6hlDKpngcExIXrn90M2ntaAEF/ThIzDpBqBa7H7nUokHArpVVKI8UXUpSAuVKY3M1gIKZJ
 6L6UYkA94icSShhntbaau0r3qRLPR4TNhzX3RnFqSl4KvNAZP2o8g5Rp7jSlJnhFWh7MsDuy1Mq3sabc9JF/L9Up3pRLVFbs/gal5EdjGwbn/4wcbX0QEGGw
 W8jcCicDUrEInJuoEZtZ42QxNA6h2RTFL4RfPUoK4LL1zM1AElwE/54ByZmnkoDghmloby8E+aW3g13+5g44gxWAowH35fNOhbSA2fPme966Vi53DA1DSisW
 BWUO80RSTVyQUthkGFLgI1DnkKDENCJC83EDjvWeI2uGeDyCzCvSbLpQWD49pg848LMJ16ZriUa4YzwyTufauMku8zJIms4rU16ZuTPoCO840pRYmX7xP3+Z
 GVgF3qd8F2USKCuO3GBDJO3FJASQWJ9MeXaAz/owTDjMmFEG+DqZgse6BfqNGfXZQKK37HuYpUrp0vxI4r/GeACxB2GvIb+zkQGTIshk79yVQWt15atEynDY
 FUtefLXSrX8DVh2hq3jDhx4uJEzcUgyphE1iGMkRjdG+B09PgKBujIhmbHisCn6oDr/m887+Dg8IoB2ijGH5ckbQjUfcr6zpr2uuikB+gZVYlhdXNfg6nH/3
 CxAqFH6YPQzy422yNP7PiqVcirXS1Bh115m0tH89TQalsijsTLaeunxnic/ILexVq9drpl9lSfY9tgIv6vsKQ+KqaMuRka/xGN7wj7u+GDloyk8LxvNGoQ8W
 rBvgYwevYBJEnZTRP0Y=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_034429_262888_9B2C23C7 
X-CRM114-Status: GOOD (  31.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.31 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, boris.brezillon@collabora.com,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jernej,

On 9/29/19 10:00 PM, Jernej Skrabec wrote:
> This series adds support for decoding multi-slice H264 frames along with
> support for V4L2_DEC_CMD_FLUSH and V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF.
> 
> Code was tested by modified ffmpeg, which can be found here:
> https://github.com/jernejsk/FFmpeg, branch mainline-test
> It has to be configured with at least following options:
> --enable-v4l2-request --enable-libudev --enable-libdrm
> 
> Samples used for testing:
> http://jernej.libreelec.tv/videos/h264/BA1_FT_C.mp4
> http://jernej.libreelec.tv/videos/h264/h264.mp4
> 
> Command line used for testing:
> ffmpeg -hwaccel drm -hwaccel_device /dev/dri/card0 -i h264.mp4 -pix_fmt bgra -f fbdev /dev/fb0
> 
> Please note that V4L2_DEC_CMD_FLUSH was not tested because I'm
> not sure how. ffmpeg follows exactly which slice is last in frame
> and sets hold flag accordingly. Improper usage of hold flag would
> corrupt ffmpeg assumptions and it would probably crash. Any ideas
> how to test this are welcome!
> 
> Thanks to Jonas for adjusting ffmpeg.
> 
> Please let me know what you think.
> 
> Best regards,
> Jernej
> 
> Changes from v1:
> - added Rb tags
> - updated V4L2_DEC_CMD_FLUSH documentation
> - updated first slice detection in Cedrus
> - hold capture buffer flag is set according to source format
> - added v4l m2m stateless_(try_)decoder_cmd ioctl helpers
> 
> Hans Verkuil (2):
>   vb2: add V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF
>   videodev2.h: add V4L2_DEC_CMD_FLUSH
> 
> Jernej Skrabec (4):
>   media: v4l2-mem2mem: add stateless_(try_)decoder_cmd ioctl helpers
>   media: cedrus: Detect first slice of a frame
>   media: cedrus: h264: Support multiple slices per frame
>   media: cedrus: Add support for holding capture buffer
> 
>  Documentation/media/uapi/v4l/buffer.rst       | 13 ++++++
>  .../media/uapi/v4l/vidioc-decoder-cmd.rst     | 10 +++-
>  .../media/uapi/v4l/vidioc-reqbufs.rst         |  6 +++
>  .../media/videodev2.h.rst.exceptions          |  1 +
>  .../media/common/videobuf2/videobuf2-v4l2.c   |  8 +++-
>  drivers/media/v4l2-core/v4l2-mem2mem.c        | 35 ++++++++++++++
>  drivers/staging/media/sunxi/cedrus/cedrus.h   |  1 +
>  .../staging/media/sunxi/cedrus/cedrus_dec.c   | 11 +++++
>  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 11 ++++-
>  .../staging/media/sunxi/cedrus/cedrus_hw.c    |  8 ++--
>  .../staging/media/sunxi/cedrus/cedrus_video.c | 14 ++++++
>  include/media/v4l2-mem2mem.h                  | 46 +++++++++++++++++++
>  include/media/videobuf2-core.h                |  3 ++
>  include/media/videobuf2-v4l2.h                |  5 ++
>  include/uapi/linux/videodev2.h                | 14 ++++--
>  15 files changed, 175 insertions(+), 11 deletions(-)
> 

I didn't want to make a v3 of this series, instead I hacked this patch that will
hopefully do all the locking right.

Basically I moved all the 'held' related code into v4l2-mem2mem under job_spinlock.
This simplifies the driver code as well.

But this is a hack that sits on top of this series. If your ffmpeg tests are now
successful, then I'll turn this into a proper series with correct documentation
(a lot of the comments are now wrong with this patch, so just ignore that).

Regards,

	Hans

diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-core/v4l2-mem2mem.c
index 2677a07e4c9b..f81a8f2465ab 100644
--- a/drivers/media/v4l2-core/v4l2-mem2mem.c
+++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
@@ -412,25 +412,24 @@ static void v4l2_m2m_cancel_job(struct v4l2_m2m_ctx *m2m_ctx)
 	}
 }

-void v4l2_m2m_job_finish(struct v4l2_m2m_dev *m2m_dev,
-			 struct v4l2_m2m_ctx *m2m_ctx)
+static bool _v4l2_m2m_job_finish(struct v4l2_m2m_dev *m2m_dev,
+			  struct v4l2_m2m_ctx *m2m_ctx)
 {
-	unsigned long flags;
-
-	spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
 	if (!m2m_dev->curr_ctx || m2m_dev->curr_ctx != m2m_ctx) {
-		spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
 		dprintk("Called by an instance not currently running\n");
-		return;
+		return false;
 	}

 	list_del(&m2m_dev->curr_ctx->queue);
 	m2m_dev->curr_ctx->job_flags &= ~(TRANS_QUEUED | TRANS_RUNNING);
 	wake_up(&m2m_dev->curr_ctx->finished);
 	m2m_dev->curr_ctx = NULL;
+	return true;
+}

-	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
-
+static void v4l2_m2m_job_next(struct v4l2_m2m_dev *m2m_dev,
+		       struct v4l2_m2m_ctx *m2m_ctx)
+{
 	/* This instance might have more buffers ready, but since we do not
 	 * allow more than one job on the job_queue per instance, each has
 	 * to be scheduled separately after the previous one finishes. */
@@ -441,8 +440,113 @@ void v4l2_m2m_job_finish(struct v4l2_m2m_dev *m2m_dev,
 	 */
 	schedule_work(&m2m_dev->job_work);
 }
+
+void v4l2_m2m_job_finish(struct v4l2_m2m_dev *m2m_dev,
+			 struct v4l2_m2m_ctx *m2m_ctx)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
+	if (!_v4l2_m2m_job_finish(m2m_dev, m2m_ctx)) {
+		spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
+		return;
+	}
+	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
+
+	v4l2_m2m_job_next(m2m_dev, m2m_ctx);
+}
 EXPORT_SYMBOL(v4l2_m2m_job_finish);

+void v4l2_m2m_job_finish_held(struct v4l2_m2m_dev *m2m_dev,
+			 struct v4l2_m2m_ctx *m2m_ctx,
+			 enum vb2_buffer_state state)
+{
+	struct vb2_v4l2_buffer *src_buf, *dst_buf;
+	unsigned long flags;
+
+	spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
+	src_buf = v4l2_m2m_src_buf_remove(m2m_ctx);
+	dst_buf = v4l2_m2m_next_dst_buf(m2m_ctx);
+
+	if (!src_buf || !dst_buf) {
+		pr_err("Missing source and/or destination buffers\n");
+		spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
+		return;
+	}
+	v4l2_m2m_buf_done(src_buf, state);
+	if (!dst_buf->is_held) {
+		v4l2_m2m_dst_buf_remove(m2m_ctx);
+		v4l2_m2m_buf_done(dst_buf, state);
+	}
+	if (!_v4l2_m2m_job_finish(m2m_dev, m2m_ctx)) {
+		spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
+		return;
+	}
+	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
+
+	v4l2_m2m_job_next(m2m_dev, m2m_ctx);
+}
+EXPORT_SYMBOL(v4l2_m2m_job_finish_held);
+
+/**
+ * v4l2_m2m_release_capture_buf() - check if the capture buffer should be
+ * released
+ *
+ * @out_vb: the output buffer
+ * @cap_vb: the capture buffer
+ *
+ * This helper function returns true if the current capture buffer should
+ * be released to vb2. This is the case if the output buffer specified that
+ * the capture buffer should be held (i.e. not returned to vb2) AND if the
+ * timestamp of the capture buffer differs from the output buffer timestamp.
+ *
+ * This helper is to be called at the start of the device_run callback:
+ *
+ * .. code-block:: c
+ *
+ *	if (v4l2_m2m_release_capture_buf(out_vb, cap_vb)) {
+ *		v4l2_m2m_dst_buf_remove(m2m_ctx);
+ *		v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
+ *		cap_vb = v4l2_m2m_next_dst_buf(m2m_ctx);
+ *	}
+ *	cap_vb->is_held = out_vb->flags & V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
+ *
+ *	...
+ *
+ *	v4l2_m2m_buf_done(out_vb, VB2_BUF_STATE_DONE);
+ *	if (!cap_vb->is_held) {
+ *		v4l2_m2m_dst_buf_remove(m2m_ctx);
+ *		v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
+ *	}
+ *
+ * This allows for multiple output buffers to be used to fill in a single
+ * capture buffer. This is typically used by stateless decoders where
+ * multiple e.g. H.264 slices contribute to a single decoded frame.
+ */
+struct vb2_v4l2_buffer *v4l2_m2m_release_capture_buf(struct v4l2_m2m_ctx *m2m_ctx)
+{
+	struct v4l2_m2m_dev *m2m_dev = m2m_ctx->m2m_dev;
+	struct vb2_v4l2_buffer *src, *dst;
+	unsigned long flags;
+
+	spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
+	src = v4l2_m2m_next_src_buf(m2m_ctx);
+	dst = v4l2_m2m_next_dst_buf(m2m_ctx);
+
+	if (dst->is_held && dst->vb2_buf.copied_timestamp &&
+	    src->vb2_buf.timestamp != dst->vb2_buf.timestamp) {
+		dst->is_held = false;
+		v4l2_m2m_dst_buf_remove(m2m_ctx);
+		v4l2_m2m_buf_done(dst, VB2_BUF_STATE_DONE);
+		dst = v4l2_m2m_next_dst_buf(m2m_ctx);
+	}
+	dst->is_held = src->flags & V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
+	src->flags &= ~V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
+	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
+	return dst;
+}
+EXPORT_SYMBOL(v4l2_m2m_release_capture_buf);
+
 int v4l2_m2m_reqbufs(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
 		     struct v4l2_requestbuffers *reqbufs)
 {
@@ -1171,19 +1275,28 @@ int v4l2_m2m_ioctl_stateless_decoder_cmd(struct file *file, void *priv,
 {
 	struct v4l2_fh *fh = file->private_data;
 	struct vb2_v4l2_buffer *out_vb, *cap_vb;
+	struct v4l2_m2m_dev *m2m_dev = fh->m2m_ctx->m2m_dev;
+	unsigned long flags;
 	int ret;

 	ret = v4l2_m2m_ioctl_stateless_try_decoder_cmd(file, priv, dc);
 	if (ret < 0)
 		return ret;

+	spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
 	out_vb = v4l2_m2m_last_src_buf(fh->m2m_ctx);
 	cap_vb = v4l2_m2m_last_dst_buf(fh->m2m_ctx);

-	if (out_vb)
+	if (out_vb && (out_vb->flags & V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF)) {
 		out_vb->flags &= ~V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
-	else if (cap_vb && cap_vb->is_held)
-		v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
+	} else if (cap_vb && cap_vb->is_held) {
+		cap_vb->is_held = false;
+		if (m2m_dev->curr_ctx) {
+			v4l2_m2m_dst_buf_remove(fh->m2m_ctx);
+			v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
+		}
+	}
+	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);

 	return 0;
 }
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
index 67f7d4326fc1..4e30f263b427 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
@@ -30,14 +30,7 @@ void cedrus_device_run(void *priv)
 	struct media_request *src_req;

 	run.src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
-	run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
-
-	if (v4l2_m2m_release_capture_buf(run.src, run.dst)) {
-		v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
-		v4l2_m2m_buf_done(run.dst, VB2_BUF_STATE_DONE);
-		run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
-	}
-	run.dst->is_held = run.src->flags & V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
+	run.dst = v4l2_m2m_release_capture_buf(ctx->fh.m2m_ctx);

 	run.first_slice = !run.dst->vb2_buf.copied_timestamp ||
 		run.src->vb2_buf.timestamp != run.dst->vb2_buf.timestamp;
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
index 99fedec80224..242cad82cc8c 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
@@ -103,7 +103,6 @@ static irqreturn_t cedrus_irq(int irq, void *data)
 {
 	struct cedrus_dev *dev = data;
 	struct cedrus_ctx *ctx;
-	struct vb2_v4l2_buffer *src_buf, *dst_buf;
 	enum vb2_buffer_state state;
 	enum cedrus_irq_status status;

@@ -121,26 +120,12 @@ static irqreturn_t cedrus_irq(int irq, void *data)
 	dev->dec_ops[ctx->current_codec]->irq_disable(ctx);
 	dev->dec_ops[ctx->current_codec]->irq_clear(ctx);

-	src_buf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
-	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
-
-	if (!src_buf || !dst_buf) {
-		v4l2_err(&dev->v4l2_dev,
-			 "Missing source and/or destination buffers\n");
-		return IRQ_HANDLED;
-	}
-
 	if (status == CEDRUS_IRQ_ERROR)
 		state = VB2_BUF_STATE_ERROR;
 	else
 		state = VB2_BUF_STATE_DONE;

-	v4l2_m2m_buf_done(src_buf, state);
-	if (!dst_buf->is_held) {
-		v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
-		v4l2_m2m_buf_done(dst_buf, state);
-	}
-	v4l2_m2m_job_finish(ctx->dev->m2m_dev, ctx->fh.m2m_ctx);
+	v4l2_m2m_job_finish_held(ctx->dev->m2m_dev, ctx->fh.m2m_ctx, state);

 	return IRQ_HANDLED;
 }
diff --git a/include/media/v4l2-mem2mem.h b/include/media/v4l2-mem2mem.h
index 8ae2f56c7fa3..48ca7d3eaa3d 100644
--- a/include/media/v4l2-mem2mem.h
+++ b/include/media/v4l2-mem2mem.h
@@ -173,6 +173,10 @@ void v4l2_m2m_try_schedule(struct v4l2_m2m_ctx *m2m_ctx);
 void v4l2_m2m_job_finish(struct v4l2_m2m_dev *m2m_dev,
 			 struct v4l2_m2m_ctx *m2m_ctx);

+void v4l2_m2m_job_finish_held(struct v4l2_m2m_dev *m2m_dev,
+			 struct v4l2_m2m_ctx *m2m_ctx,
+			 enum vb2_buffer_state state);
+
 static inline void
 v4l2_m2m_buf_done(struct vb2_v4l2_buffer *buf, enum vb2_buffer_state state)
 {
@@ -644,47 +648,7 @@ void v4l2_m2m_buf_copy_metadata(const struct vb2_v4l2_buffer *out_vb,
 				struct vb2_v4l2_buffer *cap_vb,
 				bool copy_frame_flags);

-/**
- * v4l2_m2m_release_capture_buf() - check if the capture buffer should be
- * released
- *
- * @out_vb: the output buffer
- * @cap_vb: the capture buffer
- *
- * This helper function returns true if the current capture buffer should
- * be released to vb2. This is the case if the output buffer specified that
- * the capture buffer should be held (i.e. not returned to vb2) AND if the
- * timestamp of the capture buffer differs from the output buffer timestamp.
- *
- * This helper is to be called at the start of the device_run callback:
- *
- * .. code-block:: c
- *
- *	if (v4l2_m2m_release_capture_buf(out_vb, cap_vb)) {
- *		v4l2_m2m_dst_buf_remove(m2m_ctx);
- *		v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
- *		cap_vb = v4l2_m2m_next_dst_buf(m2m_ctx);
- *	}
- *	cap_vb->is_held = out_vb->flags & V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
- *
- *	...
- *
- *	v4l2_m2m_buf_done(out_vb, VB2_BUF_STATE_DONE);
- *	if (!cap_vb->is_held) {
- *		v4l2_m2m_dst_buf_remove(m2m_ctx);
- *		v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
- *	}
- *
- * This allows for multiple output buffers to be used to fill in a single
- * capture buffer. This is typically used by stateless decoders where
- * multiple e.g. H.264 slices contribute to a single decoded frame.
- */
-static inline bool v4l2_m2m_release_capture_buf(const struct vb2_v4l2_buffer *out_vb,
-						const struct vb2_v4l2_buffer *cap_vb)
-{
-	return cap_vb->is_held && cap_vb->vb2_buf.copied_timestamp &&
-	       out_vb->vb2_buf.timestamp != cap_vb->vb2_buf.timestamp;
-}
+struct vb2_v4l2_buffer *v4l2_m2m_release_capture_buf(struct v4l2_m2m_ctx *m2m_ctx);

 /* v4l2 request helper */


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
