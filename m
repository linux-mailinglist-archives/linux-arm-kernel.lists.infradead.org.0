Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7268B13DBE8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:32:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6F/ULy1+ScVFpV7P6geB4W/kHnLuzG10zcw6wjZW2iM=; b=XU3JLSciL1YRq6
	+jXbIret31g465SnS6WJAcnFskCH1NR3zX+zURNZZ4TNJOMLxIM3keVBDsczoVJNnabzpiXVNFIOd
	x+ygf2YkPk6fpObexRISTDmuHRXNRrHBXa72yS+VjcZUsOt8bf4Jk0g60JMS0CgJpFShkgOg8G1WY
	0b6N8OEFvFoE+th+Uaq5qs6ot1X+ZQ1yWZqwacphXW7wGR4cUT1eYjub55zcwFyg3JF/Wl2veyiuZ
	EImeXk50suNnwzwfSdDTOkUPUkZEwYq+XJN424LTTPWiNQ+f6WmhW/KULh92+jHpPm7G/u9uCi8up
	nXmpGyaqxPk4q13ZLgBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5Fe-0004uV-9U; Thu, 16 Jan 2020 13:31:58 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5EH-0003k7-Hr
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:30:39 +0000
Received: by mail-wm1-x344.google.com with SMTP id p17so3831268wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 05:30:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=V3exTGHebANiW1zaXQX343EHgiihrmvoNYFZJmclMTA=;
 b=QYafYgclc5vgoOeOds52TD5CCOaTcp79IQv1v6gJoKWwwDtjHMJqto7UUtbXEGIzW6
 dUehDIe+Hv9VR+aDTAXr9Ly4NuGarRjfORcyYefcmQJPwDziQNvh2TCJkLsyJmPmlORD
 lOrQIiJZ9Sgm3idFTzj/yHNAfyXBYhgiM4RBZ08gE7uaiy7TOfyN37oBSjWspTl+J+b2
 ljwjRmeWPdYPhhX9ohHvJ1drngEQ2Ogv0cNgEIKzJhT30HC29Z27z5lUNVUj5ERWts4d
 uRhTgxdJYp+tZzv47eUyVwmaHb8fzt6+hQPQMmn6/s+XEd1QzA1VhvT2wr4fFhmhfYsp
 xwvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=V3exTGHebANiW1zaXQX343EHgiihrmvoNYFZJmclMTA=;
 b=D5GbFIgCaRa8Z7AEJKY7vtKFVOg2ITBLXWdOtcnvFQH0hYcPkZVqYJbCpHYReoz8N5
 97hN/wFHA2XWNOj7pkkZTJFCzrLqSbUeHNesvkUdV0/fo2XIKsme2mtuAP1boCKw5Mta
 OdPGN8SBTV+HtxGG1b26jOXfL4vN1Kc9DHkRSVkrXC44ZScSdn1YVNaW0vYa90wWUXtT
 yU4oVwdMAd2SHcpyUDlKl0EN2PEB/RJyKPlc8vQe2Rd/xEtTt7BvzBH8saoH6FTrdtXc
 lyZAw4LlRCInIjEoWIUCKgMXuGLIjxrX3yPqXTk17fOL+M4N/ft1GjGkDMAhc/WnoZ0F
 /4fw==
X-Gm-Message-State: APjAAAWhVXf3bhHcc5Q+XSTdQMT/eFbXvSSxWrZHsyajQK1JaYO6bgRL
 yXIT09ELkjHzWYXEhNq8Rd0Ehw==
X-Google-Smtp-Source: APXvYqyMRFP1IFQ9bthf3LpgbBlMU+vdA7H4Y0CVzQivXBcCZcXTvow6QeF1CLONumX43ZB3JWKxgQ==
X-Received: by 2002:a05:600c:21c5:: with SMTP id
 x5mr6032953wmj.72.1579181430247; 
 Thu, 16 Jan 2020 05:30:30 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id e16sm29256898wrs.73.2020.01.16.05.30.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 05:30:29 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v4 2/4] media: vicodec: use v4l2-mem2mem draining,
 stopped and next-buf-is-last states handling
Date: Thu, 16 Jan 2020 14:30:23 +0100
Message-Id: <20200116133025.1903-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200116133025.1903-1-narmstrong@baylibre.com>
References: <20200116133025.1903-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_053033_609353_66DB21CD 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the previously introduced v4l2-mem2mem core APIs to handle the drainig,
stopped and next-buf-is-last states.

With these changes, the v4l2-compliance still passes with the following
commands :
# v4l2-ctl --stream-mmap --stream-out-mmap --stream-to-hdr out.comp --stream-from in.yuv
>>>><><><><><><><><><><><><><><><><>< 15.53 fps
 15.53 fps
><><><><><><><><><><><><>< 13.99 fps
 13.99 fps
><><><><><><><><><><><>< 13.52 fps
 13.52 fps
><><><><><><><><><><><><>< 13.41 fps
 13.41 fps
><><><><><><><><><><><><>< 13.21 fps
 13.21 fps
><><><><><><><><><><><>< 13.09 fps
 13.09 fps
><><><><><><><
STOP ENCODER
<<<
EOS EVENT

# v4l2-compliance --stream-from in.yuv -s
v4l2-compliance SHA: 7ead0e1856b89f2e19369af452bb03fd0cd16793, 64 bits
[...]
Total for vicodec device /dev/video0: 50, Succeeded: 50, Failed: 0, Warnings: 0

The full output is available at [1]

# v4l2-compliance -d1 --stream-from-hdr out.comp -s
v4l2-compliance SHA: 7ead0e1856b89f2e19369af452bb03fd0cd16793, 64 bits
[...]
Total for vicodec device /dev/video1: 50, Succeeded: 50, Failed: 0, Warnings: 0

The full output is available at [2]

No functional changes should be noticed.

[1] https://termbin.com/25nn
[2] https://termbin.com/dza4

Suggested-by: Hans Verkuil <hverkuil@xs4all.nl>
Suggested-by: Maxime Jourdan <mjourdan@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/media/platform/vicodec/vicodec-core.c | 162 ++++++------------
 1 file changed, 52 insertions(+), 110 deletions(-)

diff --git a/drivers/media/platform/vicodec/vicodec-core.c b/drivers/media/platform/vicodec/vicodec-core.c
index 82350097503e..425c47216dae 100644
--- a/drivers/media/platform/vicodec/vicodec-core.c
+++ b/drivers/media/platform/vicodec/vicodec-core.c
@@ -117,15 +117,10 @@ struct vicodec_ctx {
 	struct vicodec_dev	*dev;
 	bool			is_enc;
 	bool			is_stateless;
-	bool			is_draining;
-	bool			next_is_last;
-	bool			has_stopped;
 	spinlock_t		*lock;
 
 	struct v4l2_ctrl_handler hdl;
 
-	struct vb2_v4l2_buffer *last_src_buf;
-
 	/* Source and destination queue data */
 	struct vicodec_q_data   q_data[2];
 	struct v4l2_fwht_state	state;
@@ -431,11 +426,11 @@ static void device_run(void *priv)
 	v4l2_m2m_buf_copy_metadata(src_buf, dst_buf, false);
 
 	spin_lock(ctx->lock);
-	if (!ctx->comp_has_next_frame && src_buf == ctx->last_src_buf) {
+	if (!ctx->comp_has_next_frame &&
+	    v4l2_m2m_is_last_draining_src_buf(ctx->fh.m2m_ctx, src_buf)) {
 		dst_buf->flags |= V4L2_BUF_FLAG_LAST;
 		v4l2_event_queue_fh(&ctx->fh, &vicodec_eos_event);
-		ctx->is_draining = false;
-		ctx->has_stopped = true;
+		v4l2_m2m_mark_stopped(ctx->fh.m2m_ctx);
 	}
 	if (ctx->is_enc || ctx->is_stateless) {
 		src_buf->sequence = q_src->sequence++;
@@ -586,8 +581,6 @@ static int job_ready(void *priv)
 	unsigned int max_to_copy;
 	unsigned int comp_frame_size;
 
-	if (ctx->has_stopped)
-		return 0;
 	if (ctx->source_changed)
 		return 0;
 	if (ctx->is_stateless || ctx->is_enc || ctx->comp_has_frame)
@@ -607,7 +600,8 @@ static int job_ready(void *priv)
 	if (ctx->header_size < sizeof(struct fwht_cframe_hdr)) {
 		state = get_next_header(ctx, &p, p_src + sz - p);
 		if (ctx->header_size < sizeof(struct fwht_cframe_hdr)) {
-			if (ctx->is_draining && src_buf == ctx->last_src_buf)
+			if (v4l2_m2m_is_last_draining_src_buf(ctx->fh.m2m_ctx,
+							      src_buf))
 				return 1;
 			job_remove_src_buf(ctx, state);
 			goto restart;
@@ -636,7 +630,8 @@ static int job_ready(void *priv)
 		p += copy;
 		ctx->comp_size += copy;
 		if (ctx->comp_size < max_to_copy) {
-			if (ctx->is_draining && src_buf == ctx->last_src_buf)
+			if (v4l2_m2m_is_last_draining_src_buf(ctx->fh.m2m_ctx,
+							      src_buf))
 				return 1;
 			job_remove_src_buf(ctx, state);
 			goto restart;
@@ -1219,41 +1214,6 @@ static int vidioc_s_selection(struct file *file, void *priv,
 	return 0;
 }
 
-static int vicodec_mark_last_buf(struct vicodec_ctx *ctx)
-{
-	struct vb2_v4l2_buffer *next_dst_buf;
-	int ret = 0;
-
-	spin_lock(ctx->lock);
-	if (ctx->is_draining) {
-		ret = -EBUSY;
-		goto unlock;
-	}
-	if (ctx->has_stopped)
-		goto unlock;
-
-	ctx->last_src_buf = v4l2_m2m_last_src_buf(ctx->fh.m2m_ctx);
-	ctx->is_draining = true;
-	if (ctx->last_src_buf)
-		goto unlock;
-
-	next_dst_buf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
-	if (!next_dst_buf) {
-		ctx->next_is_last = true;
-		goto unlock;
-	}
-
-	next_dst_buf->flags |= V4L2_BUF_FLAG_LAST;
-	vb2_buffer_done(&next_dst_buf->vb2_buf, VB2_BUF_STATE_DONE);
-	ctx->is_draining = false;
-	ctx->has_stopped = true;
-	v4l2_event_queue_fh(&ctx->fh, &vicodec_eos_event);
-
-unlock:
-	spin_unlock(ctx->lock);
-	return ret;
-}
-
 static int vicodec_encoder_cmd(struct file *file, void *fh,
 			    struct v4l2_encoder_cmd *ec)
 {
@@ -1268,18 +1228,19 @@ static int vicodec_encoder_cmd(struct file *file, void *fh,
 	    !vb2_is_streaming(&ctx->fh.m2m_ctx->out_q_ctx.q))
 		return 0;
 
-	if (ec->cmd == V4L2_ENC_CMD_STOP)
-		return vicodec_mark_last_buf(ctx);
-	ret = 0;
-	spin_lock(ctx->lock);
-	if (ctx->is_draining) {
-		ret = -EBUSY;
-	} else if (ctx->has_stopped) {
-		ctx->has_stopped = false;
+	ret = v4l2_m2m_ioctl_encoder_cmd(file, fh, ec);
+	if (ret < 0)
+		return ret;
+
+	if (ec->cmd == V4L2_ENC_CMD_STOP &&
+	    v4l2_m2m_has_stopped(ctx->fh.m2m_ctx))
+		v4l2_event_queue_fh(&ctx->fh, &vicodec_eos_event);
+
+	if (ec->cmd == V4L2_ENC_CMD_START &&
+	    v4l2_m2m_has_stopped(ctx->fh.m2m_ctx))
 		vb2_clear_last_buffer_dequeued(&ctx->fh.m2m_ctx->cap_q_ctx.q);
-	}
-	spin_unlock(ctx->lock);
-	return ret;
+
+	return 0;
 }
 
 static int vicodec_decoder_cmd(struct file *file, void *fh,
@@ -1296,18 +1257,19 @@ static int vicodec_decoder_cmd(struct file *file, void *fh,
 	    !vb2_is_streaming(&ctx->fh.m2m_ctx->out_q_ctx.q))
 		return 0;
 
-	if (dc->cmd == V4L2_DEC_CMD_STOP)
-		return vicodec_mark_last_buf(ctx);
-	ret = 0;
-	spin_lock(ctx->lock);
-	if (ctx->is_draining) {
-		ret = -EBUSY;
-	} else if (ctx->has_stopped) {
-		ctx->has_stopped = false;
+	ret = v4l2_m2m_ioctl_decoder_cmd(file, fh, dc);
+	if (ret < 0)
+		return ret;
+
+	if (dc->cmd == V4L2_DEC_CMD_STOP &&
+	    v4l2_m2m_has_stopped(ctx->fh.m2m_ctx))
+		v4l2_event_queue_fh(&ctx->fh, &vicodec_eos_event);
+
+	if (dc->cmd == V4L2_DEC_CMD_START &&
+	    v4l2_m2m_has_stopped(ctx->fh.m2m_ctx))
 		vb2_clear_last_buffer_dequeued(&ctx->fh.m2m_ctx->cap_q_ctx.q);
-	}
-	spin_unlock(ctx->lock);
-	return ret;
+
+	return 0;
 }
 
 static int vicodec_enum_framesizes(struct file *file, void *fh,
@@ -1480,23 +1442,21 @@ static void vicodec_buf_queue(struct vb2_buffer *vb)
 		.u.src_change.changes = V4L2_EVENT_SRC_CH_RESOLUTION,
 	};
 
-	if (vb2_is_streaming(vq_cap)) {
-		if (!V4L2_TYPE_IS_OUTPUT(vb->vb2_queue->type) &&
-		    ctx->next_is_last) {
-			unsigned int i;
+	if (!V4L2_TYPE_IS_OUTPUT(vb->vb2_queue->type) &&
+	    vb2_is_streaming(vb->vb2_queue) &&
+	    v4l2_m2m_dst_buf_is_last(ctx->fh.m2m_ctx)) {
+		unsigned int i;
 
-			for (i = 0; i < vb->num_planes; i++)
-				vb->planes[i].bytesused = 0;
-			vbuf->flags = V4L2_BUF_FLAG_LAST;
-			vbuf->field = V4L2_FIELD_NONE;
-			vbuf->sequence = get_q_data(ctx, vb->vb2_queue->type)->sequence++;
-			vb2_buffer_done(vb, VB2_BUF_STATE_DONE);
-			ctx->is_draining = false;
-			ctx->has_stopped = true;
-			ctx->next_is_last = false;
-			v4l2_event_queue_fh(&ctx->fh, &vicodec_eos_event);
-			return;
-		}
+		for (i = 0; i < vb->num_planes; i++)
+			vb->planes[i].bytesused = 0;
+
+		vbuf->field = V4L2_FIELD_NONE;
+		vbuf->sequence =
+			get_q_data(ctx, vb->vb2_queue->type)->sequence++;
+
+		v4l2_m2m_last_buffer_done(ctx->fh.m2m_ctx, vbuf);
+		v4l2_event_queue_fh(&ctx->fh, &vicodec_eos_event);
+		return;
 	}
 
 	/* buf_queue handles only the first source change event */
@@ -1609,8 +1569,7 @@ static int vicodec_start_streaming(struct vb2_queue *q,
 	chroma_div = info->width_div * info->height_div;
 	q_data->sequence = 0;
 
-	if (V4L2_TYPE_IS_OUTPUT(q->type))
-		ctx->last_src_buf = NULL;
+	v4l2_m2m_start_streaming(ctx->fh.m2m_ctx, q);
 
 	state->gop_cnt = 0;
 
@@ -1689,29 +1648,12 @@ static void vicodec_stop_streaming(struct vb2_queue *q)
 
 	vicodec_return_bufs(q, VB2_BUF_STATE_ERROR);
 
-	if (V4L2_TYPE_IS_OUTPUT(q->type)) {
-		if (ctx->is_draining) {
-			struct vb2_v4l2_buffer *next_dst_buf;
-
-			spin_lock(ctx->lock);
-			ctx->last_src_buf = NULL;
-			next_dst_buf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
-			if (!next_dst_buf) {
-				ctx->next_is_last = true;
-			} else {
-				next_dst_buf->flags |= V4L2_BUF_FLAG_LAST;
-				vb2_buffer_done(&next_dst_buf->vb2_buf, VB2_BUF_STATE_DONE);
-				ctx->is_draining = false;
-				ctx->has_stopped = true;
-				v4l2_event_queue_fh(&ctx->fh, &vicodec_eos_event);
-			}
-			spin_unlock(ctx->lock);
-		}
-	} else {
-		ctx->is_draining = false;
-		ctx->has_stopped = false;
-		ctx->next_is_last = false;
-	}
+	v4l2_m2m_stop_streaming(ctx->fh.m2m_ctx, q);
+
+	if (V4L2_TYPE_IS_OUTPUT(q->type) &&
+	    v4l2_m2m_has_stopped(ctx->fh.m2m_ctx))
+		v4l2_event_queue_fh(&ctx->fh, &vicodec_eos_event);
+
 	if (!ctx->is_enc && V4L2_TYPE_IS_OUTPUT(q->type))
 		ctx->first_source_change_sent = false;
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
