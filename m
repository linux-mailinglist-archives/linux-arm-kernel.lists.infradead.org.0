Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E40F2177915
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 15:34:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBU8zr2nFhrB4vVJHcNPQxP7JOIsmSL3uWUF1ytNHAI=; b=jBomKhLDuns7oG
	m5BtiHfvjhB8Nyg6sChhjJ8X77D+N/HcN1Pf8a2bn1llu7fDTUmkp+O9lK1q5GIv7WtskxIGa3IvR
	HOVKQy/UTKrumBNexlZAxbrdG+CLZe4ElvtlOJ8VsqmzoJUIfKnErUXLZBjtQJyVBmYYyp9p6GTA/
	fGPhAakSraJsAKOMIy7uf8JjUGhUowFyXolt144oyc6Rf4NTRSP0wPl+1Z0jktpe0LD+HIg+7CnHJ
	ldQjV25FxXSMYQ7k4pBCN7q5s6YfByXWZlt4KR2Zu0lR75KoylPiJhi+p+/YFllpSLcsXKPD0qXrK
	IM3Yai8MLBFwh3sLAT0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j98cn-0003Wn-V7; Tue, 03 Mar 2020 14:34:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j98bu-0002rx-DA
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 14:33:31 +0000
Received: by mail-wr1-x444.google.com with SMTP id v4so4598144wrs.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 06:33:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IM9JDifpXU0KVl1Q0qujSNxbQ3U4uGPdNgzSdGSdaag=;
 b=nFFa0ZmVZnOTUapb/haMW9zSGgSJaOaAUVkUZk1yXY86BVRsp3nwoUAWfE1iku8GhE
 3VF3rzIUqc4/TGVZ7FoUbceae45FxHoKKK7B03UOyvnTLLEVh0E1vCYOdGfg2KYDNI+Z
 FT3Wh6FiApDH4cSzU9Nz9U5VOZ5z3E9xkK8kZFV/U9vbJVKlmH3ECsZC6mcVPbTW3q1b
 iNgAA+GwsiReWi3r537oPsqP3Te+aJ8wikw6TiJ4yL5G2s5ZYznulo+nIJmWqS0UWkK4
 Mf1pVZcXltNfUx4yWTbDyTBrsGwaba52GWykZEZ3iTcP6sVeNZHA5qBNa7xCaExQIP9C
 Nanw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IM9JDifpXU0KVl1Q0qujSNxbQ3U4uGPdNgzSdGSdaag=;
 b=LXTz8tmWXWDyPOgZQpGdB8hAQcrsWBAl+41wk4gzN8d9z77mzTSqTKojIXPpakFQrD
 IftT4tO318Qg7WLnfLYqzw3JG0rt+ZtggBw5ij7Ne1MHQDNuzlPKHaZScf0BFiojSDIC
 NdzDHWSAVnwsWbbg2u3ToQO03aCyNFqtDpJNzyDYlWJlD3KLIQpnKypymJ0MESxPNCqt
 ai2563nWYz/g8PP9hYS2cdsmRs1OfJoZtzgvOk+OapIhVC0WuWRhJz+DWDxsA5ox7H1m
 muMp/KtkUo4p3YGqvpq76SMbrn5gEiFRtFmymbFD3HIWSQ/NlJ5TLwsRD/lSWV0vq+xF
 wgEg==
X-Gm-Message-State: ANhLgQ1xdxxAcR3w1QAz2YPPlx9/rLATPAiqUfbHqrlsjnzIi8N1Z87w
 mPsDtbs9ZKJ39YzIgbnddY2wqA==
X-Google-Smtp-Source: ADFU+vvJnoPjiKyAej/fXN4PWqTTKyEqZkgTk+rlxExMGnSYgnZ9Hxtxk2OqvHgSo6yNzsnj3Klmgg==
X-Received: by 2002:a5d:5602:: with SMTP id l2mr5931267wrv.90.1583246004511;
 Tue, 03 Mar 2020 06:33:24 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id g7sm30120065wrm.72.2020.03.03.06.33.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 06:33:23 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v7 1/4] media: v4l2-mem2mem: handle draining,
 stopped and next-buf-is-last states
Date: Tue,  3 Mar 2020 15:33:17 +0100
Message-Id: <20200303143320.32562-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200303143320.32562-1-narmstrong@baylibre.com>
References: <20200303143320.32562-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_063326_453265_C2F3FE49 
X-CRM114-Status: GOOD (  25.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the draining and stop phase of the HW decoder mem2mem bahaviour is
now clearly defined, we can move handling of the following states to the
common v4l2-mem2mem core code:
- draining
- stopped
- next-buf-is-last

By introducing the following v4l2-mem2mem APIs:
- v4l2_m2m_encoder_cmd/v4l2_m2m_ioctl_encoder_cmd to handle start/stop command
- v4l2_m2m_decoder_cmd/v4l2_m2m_ioctl_decoder_cmd to handle start/stop command
- v4l2_m2m_update_start_streaming_state to update state on start of streaming
of the de/encoder queue
- v4l2_m2m_update_stop_streaming_state to update state on stop of streaming
of the de/encoder queue
- v4l2_m2m_last_buffer_done to make the current dest buffer as the last one

And inline helpers:
- v4l2_m2m_mark_stopped to mark the de/encoding process as stopped
- v4l2_m2m_clear_state to clear the de/encoding state
- v4l2_m2m_dst_buf_is_last to detect the current dequeued dst_buf is the last
- v4l2_m2m_has_stopped to detect the de/encoding stopped state
- v4l2_m2m_is_last_draining_src_buf to detect the current source buffer should
 be the last processing before stopping the de/encoding process

The special next-buf-is-last when min_buffers != 1 case is also handled
in v4l2_m2m_qbuf() by reusing the other introduced APIs.

This state management has been stolen from the vicodec implementation,
and is no-op for drivers not calling the v4l2_m2m_encoder_cmd or
v4l2_m2m_decoder_cmd and v4l2_m2m_update_start/stop_streaming_state.

The vicodec will be the first one to be converted as an example.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/media/v4l2-core/v4l2-mem2mem.c | 221 ++++++++++++++++++++++++-
 include/media/v4l2-mem2mem.h           | 133 +++++++++++++++
 2 files changed, 352 insertions(+), 2 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-core/v4l2-mem2mem.c
index 1afd9c6ad908..c4a84d9f693a 100644
--- a/drivers/media/v4l2-core/v4l2-mem2mem.c
+++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
@@ -340,6 +340,11 @@ static void __v4l2_m2m_try_queue(struct v4l2_m2m_dev *m2m_dev,
 		m2m_ctx->new_frame = !dst->vb2_buf.copied_timestamp ||
 			dst->vb2_buf.timestamp != src->vb2_buf.timestamp;
 
+	if (m2m_ctx->has_stopped) {
+		dprintk("Device has stopped\n");
+		goto job_unlock;
+	}
+
 	if (m2m_dev->m2m_ops->job_ready
 		&& (!m2m_dev->m2m_ops->job_ready(m2m_ctx->priv))) {
 		dprintk("Driver not ready\n");
@@ -556,6 +561,140 @@ int v4l2_m2m_querybuf(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
 }
 EXPORT_SYMBOL_GPL(v4l2_m2m_querybuf);
 
+/*
+ * This will add the LAST flag and mark the buffer management
+ * state as stopped.
+ * This is called when the last capture buffer must be flagged as LAST
+ * in draining mode from the encoder/decoder driver buf_queue() callback
+ * or from v4l2_update_last_buf_state() when a capture buffer is available.
+ */
+void v4l2_m2m_last_buffer_done(struct v4l2_m2m_ctx *m2m_ctx,
+			       struct vb2_v4l2_buffer *vbuf)
+{
+	vbuf->flags |= V4L2_BUF_FLAG_LAST;
+	vb2_buffer_done(&vbuf->vb2_buf, VB2_BUF_STATE_DONE);
+
+	v4l2_m2m_mark_stopped(m2m_ctx);
+}
+EXPORT_SYMBOL_GPL(v4l2_m2m_last_buffer_done);
+
+/* When stop command is issued, update buffer management state */
+static int v4l2_update_last_buf_state(struct v4l2_m2m_ctx *m2m_ctx)
+{
+	struct vb2_v4l2_buffer *next_dst_buf;
+
+	if (m2m_ctx->is_draining)
+		return -EBUSY;
+
+	if (m2m_ctx->has_stopped)
+		return 0;
+
+	m2m_ctx->last_src_buf = v4l2_m2m_last_src_buf(m2m_ctx);
+	m2m_ctx->is_draining = true;
+
+	/*
+	 * The processing of the last output buffer queued before
+	 * the STOP command is expected to mark the buffer management
+	 * state as stopped with v4l2_m2m_mark_stopped().
+	 */
+	if (m2m_ctx->last_src_buf)
+		return 0;
+
+	/*
+	 * In case the output queue is empty, try to mark the last capture
+	 * buffer as LAST.
+	 */
+	next_dst_buf = v4l2_m2m_dst_buf_remove(m2m_ctx);
+	if (!next_dst_buf) {
+		/*
+		 * Wait for the next queued one in encoder/decoder driver
+		 * buf_queue() callback using the v4l2_m2m_dst_buf_is_last()
+		 * helper or in v4l2_m2m_qbuf() if encoder/decoder is not yet
+		 * streaming.
+		 */
+		m2m_ctx->next_buf_last = true;
+		return 0;
+	}
+
+	v4l2_m2m_last_buffer_done(m2m_ctx, next_dst_buf);
+
+	return 0;
+}
+
+/*
+ * Updates the encoding/decoding buffer management state, should
+ * be called from encoder/decoder drivers start_streaming()
+ */
+void v4l2_m2m_update_start_streaming_state(struct v4l2_m2m_ctx *m2m_ctx,
+					   struct vb2_queue *q)
+{
+	/* If start streaming again, untag the last output buffer */
+	if (V4L2_TYPE_IS_OUTPUT(q->type))
+		m2m_ctx->last_src_buf = NULL;
+}
+EXPORT_SYMBOL_GPL(v4l2_m2m_update_start_streaming_state);
+
+/*
+ * Updates the encoding/decoding buffer management state, should
+ * be called from encoder/decoder driver stop_streaming()
+ */
+void v4l2_m2m_update_stop_streaming_state(struct v4l2_m2m_ctx *m2m_ctx,
+					  struct vb2_queue *q)
+{
+	if (V4L2_TYPE_IS_OUTPUT(q->type)) {
+		/*
+		 * If in draining state, either mark next dst buffer as
+		 * done or flag next one to be marked as done either
+		 * in encoder/decoder driver buf_queue() callback using
+		 * the v4l2_m2m_dst_buf_is_last() helper or in v4l2_m2m_qbuf()
+		 * if encoder/decoder is not yet streaming
+		 */
+		if (m2m_ctx->is_draining) {
+			struct vb2_v4l2_buffer *next_dst_buf;
+
+			m2m_ctx->last_src_buf = NULL;
+			next_dst_buf = v4l2_m2m_dst_buf_remove(m2m_ctx);
+			if (!next_dst_buf)
+				m2m_ctx->next_buf_last = true;
+			else
+				v4l2_m2m_last_buffer_done(m2m_ctx,
+							  next_dst_buf);
+		}
+	} else {
+		v4l2_m2m_clear_state(m2m_ctx);
+	}
+}
+EXPORT_SYMBOL_GPL(v4l2_m2m_update_stop_streaming_state);
+
+static void v4l2_m2m_force_last_buf_done(struct v4l2_m2m_ctx *m2m_ctx,
+					 struct vb2_queue *q)
+{
+	struct vb2_buffer *vb;
+	struct vb2_v4l2_buffer *vbuf;
+	unsigned int i;
+
+	if (WARN_ON(q->is_output))
+		return;
+	if (list_empty(&q->queued_list))
+		return;
+
+	vb = list_first_entry(&q->queued_list, struct vb2_buffer, queued_entry);
+	for (i = 0; i < vb->num_planes; i++)
+		vb2_set_plane_payload(vb, i, 0);
+
+	/*
+	 * Since the buffer hasn't been queued to the ready queue,
+	 * mark is active and owned before marking it LAST and DONE
+	 */
+	vb->state = VB2_BUF_STATE_ACTIVE;
+	atomic_inc(&q->owned_by_drv_count);
+
+	vbuf = to_vb2_v4l2_buffer(vb);
+	vbuf->field = V4L2_FIELD_NONE;
+
+	v4l2_m2m_last_buffer_done(m2m_ctx, vbuf);
+}
+
 int v4l2_m2m_qbuf(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
 		  struct v4l2_buffer *buf)
 {
@@ -570,11 +709,25 @@ int v4l2_m2m_qbuf(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
 			__func__);
 		return -EPERM;
 	}
+
 	ret = vb2_qbuf(vq, vdev->v4l2_dev->mdev, buf);
-	if (!ret && !(buf->flags & V4L2_BUF_FLAG_IN_REQUEST))
+	if (ret)
+		return ret;
+
+	/*
+	 * If the capture queue is streaming, but streaming hasn't started
+	 * on the device, but was asked to stop, mark the previously queued
+	 * buffer as DONE with LAST flag since it won't be queued on the
+	 * device.
+	 */
+	if (!V4L2_TYPE_IS_OUTPUT(vq->type) &&
+	    vb2_is_streaming(vq) && !vb2_start_streaming_called(vq) &&
+	   (v4l2_m2m_has_stopped(m2m_ctx) || v4l2_m2m_dst_buf_is_last(m2m_ctx)))
+		v4l2_m2m_force_last_buf_done(m2m_ctx, vq);
+	else if (!(buf->flags & V4L2_BUF_FLAG_IN_REQUEST))
 		v4l2_m2m_try_schedule(m2m_ctx);
 
-	return ret;
+	return 0;
 }
 EXPORT_SYMBOL_GPL(v4l2_m2m_qbuf);
 
@@ -1225,6 +1378,70 @@ int v4l2_m2m_ioctl_try_decoder_cmd(struct file *file, void *fh,
 }
 EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_try_decoder_cmd);
 
+/*
+ * Updates the encoding state on ENC_CMD_STOP/ENC_CMD_START
+ * Should be called from the encoder driver encoder_cmd() callback
+ */
+int v4l2_m2m_encoder_cmd(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
+			 struct v4l2_encoder_cmd *ec)
+{
+	if (ec->cmd != V4L2_ENC_CMD_STOP && ec->cmd != V4L2_ENC_CMD_START)
+		return -EINVAL;
+
+	if (ec->cmd == V4L2_ENC_CMD_STOP)
+		return v4l2_update_last_buf_state(m2m_ctx);
+
+	if (m2m_ctx->is_draining)
+		return -EBUSY;
+
+	if (m2m_ctx->has_stopped)
+		m2m_ctx->has_stopped = false;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(v4l2_m2m_encoder_cmd);
+
+/*
+ * Updates the decoding state on DEC_CMD_STOP/DEC_CMD_START
+ * Should be called from the decoder driver decoder_cmd() callback
+ */
+int v4l2_m2m_decoder_cmd(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
+			 struct v4l2_decoder_cmd *dc)
+{
+	if (dc->cmd != V4L2_DEC_CMD_STOP && dc->cmd != V4L2_DEC_CMD_START)
+		return -EINVAL;
+
+	if (dc->cmd == V4L2_DEC_CMD_STOP)
+		return v4l2_update_last_buf_state(m2m_ctx);
+
+	if (m2m_ctx->is_draining)
+		return -EBUSY;
+
+	if (m2m_ctx->has_stopped)
+		m2m_ctx->has_stopped = false;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(v4l2_m2m_decoder_cmd);
+
+int v4l2_m2m_ioctl_encoder_cmd(struct file *file, void *priv,
+			       struct v4l2_encoder_cmd *ec)
+{
+	struct v4l2_fh *fh = file->private_data;
+
+	return v4l2_m2m_encoder_cmd(file, fh->m2m_ctx, ec);
+}
+EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_encoder_cmd);
+
+int v4l2_m2m_ioctl_decoder_cmd(struct file *file, void *priv,
+			       struct v4l2_decoder_cmd *dc)
+{
+	struct v4l2_fh *fh = file->private_data;
+
+	return v4l2_m2m_decoder_cmd(file, fh->m2m_ctx, dc);
+}
+EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_decoder_cmd);
+
 int v4l2_m2m_ioctl_stateless_try_decoder_cmd(struct file *file, void *fh,
 					     struct v4l2_decoder_cmd *dc)
 {
diff --git a/include/media/v4l2-mem2mem.h b/include/media/v4l2-mem2mem.h
index 1d85e24791e4..98753f00df7e 100644
--- a/include/media/v4l2-mem2mem.h
+++ b/include/media/v4l2-mem2mem.h
@@ -80,6 +80,10 @@ struct v4l2_m2m_queue_ctx {
  *		for an existing frame. This is always true unless
  *		V4L2_BUF_CAP_SUPPORTS_M2M_HOLD_CAPTURE_BUF is set, which
  *		indicates slicing support.
+ * @is_draining: indicates device is in draining phase
+ * @last_src_buf: indicate the last source buffer for draining
+ * @next_buf_last: next capture queud buffer will be tagged as last
+ * @has_stopped: indicate the device has been stopped
  * @m2m_dev: opaque pointer to the internal data to handle M2M context
  * @cap_q_ctx: Capture (output to memory) queue context
  * @out_q_ctx: Output (input from memory) queue context
@@ -98,6 +102,11 @@ struct v4l2_m2m_ctx {
 
 	bool				new_frame;
 
+	bool				is_draining;
+	struct vb2_v4l2_buffer		*last_src_buf;
+	bool				next_buf_last;
+	bool				has_stopped;
+
 	/* internal use only */
 	struct v4l2_m2m_dev		*m2m_dev;
 
@@ -215,6 +224,86 @@ v4l2_m2m_buf_done(struct vb2_v4l2_buffer *buf, enum vb2_buffer_state state)
 	vb2_buffer_done(&buf->vb2_buf, state);
 }
 
+/**
+ * v4l2_m2m_clear_state() - clear encoding/decoding state
+ *
+ * @m2m_ctx: m2m context assigned to the instance given by struct &v4l2_m2m_ctx
+ */
+static inline void
+v4l2_m2m_clear_state(struct v4l2_m2m_ctx *m2m_ctx)
+{
+	m2m_ctx->next_buf_last = false;
+	m2m_ctx->is_draining = false;
+	m2m_ctx->has_stopped = false;
+}
+
+/**
+ * v4l2_m2m_mark_stopped() - set current encoding/decoding state as stopped
+ *
+ * @m2m_ctx: m2m context assigned to the instance given by struct &v4l2_m2m_ctx
+ */
+static inline void
+v4l2_m2m_mark_stopped(struct v4l2_m2m_ctx *m2m_ctx)
+{
+	m2m_ctx->next_buf_last = false;
+	m2m_ctx->is_draining = false;
+	m2m_ctx->has_stopped = true;
+}
+
+/**
+ * v4l2_m2m_dst_buf_is_last() - return the current encoding/decoding session
+ * draining management state of next queued capture buffer
+ *
+ * This last capture buffer should be tagged with V4L2_BUF_FLAG_LAST to notify
+ * the end of the capture session.
+ *
+ * @m2m_ctx: m2m context assigned to the instance given by struct &v4l2_m2m_ctx
+ */
+static inline bool
+v4l2_m2m_dst_buf_is_last(struct v4l2_m2m_ctx *m2m_ctx)
+{
+	return m2m_ctx->is_draining && m2m_ctx->next_buf_last;
+}
+
+/**
+ * v4l2_m2m_has_stopped() - return the current encoding/decoding session
+ * stopped state
+ *
+ * @m2m_ctx: m2m context assigned to the instance given by struct &v4l2_m2m_ctx
+ */
+static inline bool
+v4l2_m2m_has_stopped(struct v4l2_m2m_ctx *m2m_ctx)
+{
+	return m2m_ctx->has_stopped;
+}
+
+/**
+ * v4l2_m2m_is_last_draining_src_buf() - return the output buffer draining
+ * state in the current encoding/decoding session
+ *
+ * This will identify the last output buffer queued before a session stop
+ * was required, leading to an actual encoding/decoding session stop state
+ * in the encoding/decoding process after being processed.
+ *
+ * @m2m_ctx: m2m context assigned to the instance given by struct &v4l2_m2m_ctx
+ * @vbuf: pointer to struct &v4l2_buffer
+ */
+static inline bool
+v4l2_m2m_is_last_draining_src_buf(struct v4l2_m2m_ctx *m2m_ctx,
+				  struct vb2_v4l2_buffer *vbuf)
+{
+	return m2m_ctx->is_draining && vbuf == m2m_ctx->last_src_buf;
+}
+
+/**
+ * v4l2_m2m_last_buffer_done() - marks the buffer with LAST flag and DONE
+ *
+ * @m2m_ctx: m2m context assigned to the instance given by struct &v4l2_m2m_ctx
+ * @vbuf: pointer to struct &v4l2_buffer
+ */
+void v4l2_m2m_last_buffer_done(struct v4l2_m2m_ctx *m2m_ctx,
+			       struct vb2_v4l2_buffer *vbuf);
+
 /**
  * v4l2_m2m_reqbufs() - multi-queue-aware REQBUFS multiplexer
  *
@@ -312,6 +401,46 @@ int v4l2_m2m_streamon(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
 int v4l2_m2m_streamoff(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
 		       enum v4l2_buf_type type);
 
+/**
+ * v4l2_m2m_update_start_streaming_state() - update the encoding/decoding
+ * session state when a start of streaming of a video queue is requested
+ *
+ * @m2m_ctx: m2m context assigned to the instance given by struct &v4l2_m2m_ctx
+ * @q: queue
+ */
+void v4l2_m2m_update_start_streaming_state(struct v4l2_m2m_ctx *m2m_ctx,
+					   struct vb2_queue *q);
+
+/**
+ * v4l2_m2m_update_stop_streaming_state() -  update the encoding/decoding
+ * session state when a stop of streaming of a video queue is requested
+ *
+ * @m2m_ctx: m2m context assigned to the instance given by struct &v4l2_m2m_ctx
+ * @q: queue
+ */
+void v4l2_m2m_update_stop_streaming_state(struct v4l2_m2m_ctx *m2m_ctx,
+					  struct vb2_queue *q);
+
+/**
+ * v4l2_m2m_encoder_cmd() - execute an encoder command
+ *
+ * @file: pointer to struct &file
+ * @m2m_ctx: m2m context assigned to the instance given by struct &v4l2_m2m_ctx
+ * @ec: pointer to the encoder command
+ */
+int v4l2_m2m_encoder_cmd(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
+			 struct v4l2_encoder_cmd *ec);
+
+/**
+ * v4l2_m2m_decoder_cmd() - execute a decoder command
+ *
+ * @file: pointer to struct &file
+ * @m2m_ctx: m2m context assigned to the instance given by struct &v4l2_m2m_ctx
+ * @dc: pointer to the decoder command
+ */
+int v4l2_m2m_decoder_cmd(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
+			 struct v4l2_decoder_cmd *dc);
+
 /**
  * v4l2_m2m_poll() - poll replacement, for destination buffers only
  *
@@ -704,6 +833,10 @@ int v4l2_m2m_ioctl_streamon(struct file *file, void *fh,
 				enum v4l2_buf_type type);
 int v4l2_m2m_ioctl_streamoff(struct file *file, void *fh,
 				enum v4l2_buf_type type);
+int v4l2_m2m_ioctl_encoder_cmd(struct file *file, void *fh,
+			       struct v4l2_encoder_cmd *ec);
+int v4l2_m2m_ioctl_decoder_cmd(struct file *file, void *fh,
+			       struct v4l2_decoder_cmd *dc);
 int v4l2_m2m_ioctl_try_encoder_cmd(struct file *file, void *fh,
 				   struct v4l2_encoder_cmd *ec);
 int v4l2_m2m_ioctl_try_decoder_cmd(struct file *file, void *fh,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
