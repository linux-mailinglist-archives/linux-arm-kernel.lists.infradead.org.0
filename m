Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0052109B60
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 10:39:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwPwoQa/Tn2zkTbvXgVAcevxoE+3Vtqgvg4afPJialg=; b=X8mDrvEF6HCfWn
	s4l/UTwEOq+3qMC/2loPejubnbd90rF//jlmkHTdgELA2gjnjaS2fq0vKxuhpyyPwrWMNTfnpeA7b
	N+jX3SaxyabBMeRbXAERj0SdeCVnvILNo8pOt3KL00LjB+piBQA+bT/aNfO13sYtFAys+XCcQIv5z
	yivsheDfU2IvyX/+5fNVBnow5JNpZnQcF6jnYWRpOziYi8qTyLtQDGFZdqdR5nE3TZ1DLXRsQ90pG
	JgT8b1kMdtyqRGrF61kWBxltVax6hTSOdmThUPVDKKTzLs0UOJvuWXnBBYXh3RqZ0h/rvSUs4uis0
	22b1pyn7Ac0RsYRYZaKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZXJJ-0000jl-II; Tue, 26 Nov 2019 09:39:05 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZXIu-0000RY-KR
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 09:38:44 +0000
Received: by mail-wm1-x341.google.com with SMTP id l1so2406324wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 01:38:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O2YqI/I65r6ojjswpkA76Fj5BhA4ccd9xzoHk1TU8MA=;
 b=Ny5P7bhL8vRLvUDiMrJeNuQo+IAW0X/seIFHUy+EhBQyLeXRu7/Kwo7IvofqfMLVNt
 UzmLtObUqLVFWit3SsuuJJ/+S90Xu5dat68TwGAuIkVjbyXV9jWHHeSqw0NhULvhOLUm
 4++V6+JCGbAlA0QGDMTJLEyWdzBlW0yIiEHbKOSDj5elawMgW7XhVITPrVeqP9ZVPiYO
 v38hVh8c0KvPtB18YSY4sJqWR2uLZUrBShgRoLRsGdAxLVX1nxXSRM5vOibs8rY+a4Pi
 5ZPWpv/8sWOKdlVppk4ADO7VEFQWttIy2LCgTy9swWt7L4dACBUEByzesjRxSD350E4X
 /gXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O2YqI/I65r6ojjswpkA76Fj5BhA4ccd9xzoHk1TU8MA=;
 b=Q2vJdXDlsgNqriIcFR+W6DnFPIZb+FqiFr1EeNNIOeGhEuuh4cL8aYD4d+LHOT0DA/
 XCZsH7/0MosxTcHrYeb4RITiwPYev4/VGVFW/ES6vGwl28xyzkLxjzTYly4QM9y98vtO
 JedWU5C1vOGCq/jCooTNdDpb+kADgxo4Ba0NkJ01Pwey5I5pdp1ZK8s6TLWRjDR++Wip
 PfH/LtFCaoCADFmyQxXmFPzq4wOQrm0/A7nvKi9IKXO0ZpHEhwKl1SkeqcRKiL7tlG/q
 ipXAl6ojUHNdVWrrg8X7H9EurkU0eJoR0Fl7hOz7QscsSV7OO40lAO1y/FxV98hmtyrf
 8wQw==
X-Gm-Message-State: APjAAAWQuF/py5jeGjdB94hanNheLe8BJFnlppg7LoTDNGXU+5VfvsIW
 LThUgEQ60GGBiIeNUE/21Yf2WA==
X-Google-Smtp-Source: APXvYqz1jljxocn86gXR1IFTbB/bL6d+5Ne97zTdpLHIMj9iZsZsZo60JWxroIfLQALKT0B0zhsKTA==
X-Received: by 2002:a05:600c:220f:: with SMTP id
 z15mr3275890wml.162.1574761118862; 
 Tue, 26 Nov 2019 01:38:38 -0800 (PST)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id k18sm14380400wrm.82.2019.11.26.01.38.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 01:38:38 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v2 2/3] media: meson: vdec: bring up to compliance
Date: Tue, 26 Nov 2019 10:38:35 +0100
Message-Id: <20191126093835.32514-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191126093733.32404-1-narmstrong@baylibre.com>
References: <20191126093733.32404-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_013840_878552_19552A61 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Jourdan <mjourdan@baylibre.com>

Add all the necessary bits to pass v4l2-compliance in stateful decoding
mode.

Mostly includes tracking the state of the decoder, allowing the OUTPUT
queue to stream while the CAPTURE queue is inactive, handling resolution
change events, draining with V4L2_DEC_CMD_STOP, copying more metadata
from the src buffers to the dst buffers, etc.

Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/staging/media/meson/vdec/esparser.c   | 58 +++++-------
 drivers/staging/media/meson/vdec/vdec.c       | 92 ++++++++++++-------
 drivers/staging/media/meson/vdec/vdec.h       | 14 ++-
 .../staging/media/meson/vdec/vdec_helpers.c   | 85 ++++++++---------
 .../staging/media/meson/vdec/vdec_helpers.h   |  6 +-
 .../staging/media/meson/vdec/vdec_platform.c  | 10 ++
 6 files changed, 148 insertions(+), 117 deletions(-)

diff --git a/drivers/staging/media/meson/vdec/esparser.c b/drivers/staging/media/meson/vdec/esparser.c
index 95102a4bdc62..adc5c1e81a4c 100644
--- a/drivers/staging/media/meson/vdec/esparser.c
+++ b/drivers/staging/media/meson/vdec/esparser.c
@@ -79,22 +79,28 @@ static irqreturn_t esparser_isr(int irq, void *dev)
  * Also append a start code 000001ff at the end to trigger
  * the ESPARSER interrupt.
  */
-static u32 esparser_pad_start_code(struct vb2_buffer *vb)
+static u32 esparser_pad_start_code(struct amvdec_core *core, struct vb2_buffer *vb)
 {
 	u32 payload_size = vb2_get_plane_payload(vb, 0);
 	u32 pad_size = 0;
-	u8 *vaddr = vb2_plane_vaddr(vb, 0) + payload_size;
+	u8 *vaddr = vb2_plane_vaddr(vb, 0);
 
 	if (payload_size < ESPARSER_MIN_PACKET_SIZE) {
 		pad_size = ESPARSER_MIN_PACKET_SIZE - payload_size;
-		memset(vaddr, 0, pad_size);
+		memset(vaddr + payload_size, 0, pad_size);
 	}
 
-	memset(vaddr + pad_size, 0, SEARCH_PATTERN_LEN);
-	vaddr[pad_size]     = 0x00;
-	vaddr[pad_size + 1] = 0x00;
-	vaddr[pad_size + 2] = 0x01;
-	vaddr[pad_size + 3] = 0xff;
+	if ((payload_size + pad_size + SEARCH_PATTERN_LEN) >
+						vb2_plane_size(vb, 0)) {
+		dev_warn(core->dev, "%s: unable to pad start code\n", __func__);
+		return pad_size;
+	}
+
+	memset(vaddr + payload_size + pad_size, 0, SEARCH_PATTERN_LEN);
+	vaddr[payload_size + pad_size]     = 0x00;
+	vaddr[payload_size + pad_size + 1] = 0x00;
+	vaddr[payload_size + pad_size + 2] = 0x01;
+	vaddr[payload_size + pad_size + 3] = 0xff;
 
 	return pad_size;
 }
@@ -180,31 +186,27 @@ esparser_queue(struct amvdec_session *sess, struct vb2_v4l2_buffer *vbuf)
 	int ret;
 	struct vb2_buffer *vb = &vbuf->vb2_buf;
 	struct amvdec_core *core = sess->core;
-	struct amvdec_codec_ops *codec_ops = sess->fmt_out->codec_ops;
-	u32 num_dst_bufs = 0;
 	u32 payload_size = vb2_get_plane_payload(vb, 0);
 	dma_addr_t phy = vb2_dma_contig_plane_dma_addr(vb, 0);
 	u32 offset;
 	u32 pad_size;
 
-	if (codec_ops->num_pending_bufs)
-		num_dst_bufs = codec_ops->num_pending_bufs(sess);
-
-	num_dst_bufs += v4l2_m2m_num_dst_bufs_ready(sess->m2m_ctx);
-
-	if (esparser_vififo_get_free_space(sess) < payload_size ||
-	    atomic_read(&sess->esparser_queued_bufs) >= num_dst_bufs)
+	if (esparser_vififo_get_free_space(sess) < payload_size)
 		return -EAGAIN;
 
 	v4l2_m2m_src_buf_remove_by_buf(sess->m2m_ctx, vbuf);
 
 	offset = esparser_get_offset(sess);
 
-	amvdec_add_ts_reorder(sess, vb->timestamp, offset);
-	dev_dbg(core->dev, "esparser: ts = %llu pld_size = %u offset = %08X\n",
-		vb->timestamp, payload_size, offset);
+	amvdec_add_ts(sess, vb->timestamp, vbuf->timecode, offset, vbuf->flags);
+	dev_dbg(core->dev, "esparser: ts = %llu pld_size = %u offset = %08X flags = %08X\n",
+		vb->timestamp, payload_size, offset, vbuf->flags);
+
+	vbuf->flags = 0;
+	vbuf->field = V4L2_FIELD_NONE;
+	vbuf->sequence = sess->sequence_out++;
 
-	pad_size = esparser_pad_start_code(vb);
+	pad_size = esparser_pad_start_code(core, vb);
 	ret = esparser_write_data(core, phy, payload_size + pad_size);
 
 	if (ret <= 0) {
@@ -216,19 +218,7 @@ esparser_queue(struct amvdec_session *sess, struct vb2_v4l2_buffer *vbuf)
 		return 0;
 	}
 
-	/* We need to wait until we parse the first keyframe.
-	 * All buffers prior to the first keyframe must be dropped.
-	 */
-	if (!sess->keyframe_found)
-		usleep_range(1000, 2000);
-
-	if (sess->keyframe_found)
-		atomic_inc(&sess->esparser_queued_bufs);
-	else
-		amvdec_remove_ts(sess, vb->timestamp);
-
-	vbuf->flags = 0;
-	vbuf->field = V4L2_FIELD_NONE;
+	atomic_inc(&sess->esparser_queued_bufs);
 	v4l2_m2m_buf_done(vbuf, VB2_BUF_STATE_DONE);
 
 	return 0;
diff --git a/drivers/staging/media/meson/vdec/vdec.c b/drivers/staging/media/meson/vdec/vdec.c
index a8a4c380ccc9..f03d9eba6e23 100644
--- a/drivers/staging/media/meson/vdec/vdec.c
+++ b/drivers/staging/media/meson/vdec/vdec.c
@@ -166,7 +166,10 @@ static void process_num_buffers(struct vb2_queue *q,
 {
 	const struct amvdec_format *fmt_out = sess->fmt_out;
 	unsigned int buffers_total = q->num_buffers + *num_buffers;
+	u32 min_buf_capture = v4l2_ctrl_g_ctrl(sess->ctrl_min_buf_capture);
 
+	if (q->num_buffers + *num_buffers < min_buf_capture)
+		*num_buffers = min_buf_capture - q->num_buffers;
 	if (is_reqbufs && buffers_total < fmt_out->min_buffers)
 		*num_buffers = fmt_out->min_buffers - q->num_buffers;
 	if (buffers_total > fmt_out->max_buffers)
@@ -191,7 +194,8 @@ static int vdec_queue_setup(struct vb2_queue *q, unsigned int *num_buffers,
 	if (*num_planes) {
 		switch (q->type) {
 		case V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE:
-			if (*num_planes != 1 || sizes[0] < output_size)
+			if (*num_planes != 1 ||
+			    sizes[0] < sess->src_buffer_size)
 				return -EINVAL;
 			break;
 		case V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE:
@@ -222,7 +226,7 @@ static int vdec_queue_setup(struct vb2_queue *q, unsigned int *num_buffers,
 
 	switch (q->type) {
 	case V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE:
-		sizes[0] = amvdec_get_output_size(sess);
+		sizes[0] = sess->src_buffer_size;
 		*num_planes = 1;
 		break;
 	case V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE:
@@ -248,6 +252,7 @@ static int vdec_queue_setup(struct vb2_queue *q, unsigned int *num_buffers,
 		return -EINVAL;
 	}
 
+	sess->changed_format = 1;
 	return 0;
 }
 
@@ -259,10 +264,11 @@ static void vdec_vb2_buf_queue(struct vb2_buffer *vb)
 
 	v4l2_m2m_buf_queue(m2m_ctx, vbuf);
 
-	if (!sess->streamon_out || !sess->streamon_cap)
+	if (!sess->streamon_out)
 		return;
 
-	if (vb->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE &&
+	if (sess->streamon_cap &&
+	    vb->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE &&
 	    vdec_codec_needs_recycle(sess))
 		vdec_queue_recycle(sess, vb);
 
@@ -287,16 +293,22 @@ static int vdec_start_streaming(struct vb2_queue *q, unsigned int count)
 	else
 		sess->streamon_cap = 1;
 
-	if (!sess->streamon_out || !sess->streamon_cap)
+	if (!sess->streamon_out)
 		return 0;
 
 	if (sess->status == STATUS_NEEDS_RESUME &&
-	    q->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
+	    q->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE &&
+	    sess->changed_format) {
 		codec_ops->resume(sess);
 		sess->status = STATUS_RUNNING;
 		return 0;
 	}
 
+	if (sess->status == STATUS_RUNNING ||
+	    sess->status == STATUS_NEEDS_RESUME ||
+	    sess->status == STATUS_INIT)
+		return 0;
+
 	sess->vififo_size = SIZE_VIFIFO;
 	sess->vififo_vaddr =
 		dma_alloc_coherent(sess->core->dev, sess->vififo_size,
@@ -321,13 +333,14 @@ static int vdec_start_streaming(struct vb2_queue *q, unsigned int count)
 		goto vififo_free;
 
 	sess->sequence_cap = 0;
+	sess->sequence_out = 0;
 	if (vdec_codec_needs_recycle(sess))
 		sess->recycle_thread = kthread_run(vdec_recycle_thread, sess,
 						   "vdec_recycle");
 
-	sess->status = STATUS_RUNNING;
+	sess->status = STATUS_INIT;
 	core->cur_sess = sess;
-
+	schedule_work(&sess->esparser_queue_work);
 	return 0;
 
 vififo_free:
@@ -384,6 +397,7 @@ static void vdec_stop_streaming(struct vb2_queue *q)
 	struct vb2_v4l2_buffer *buf;
 
 	if (sess->status == STATUS_RUNNING ||
+	    sess->status == STATUS_INIT ||
 	    (sess->status == STATUS_NEEDS_RESUME &&
 	     (!sess->streamon_out || !sess->streamon_cap))) {
 		if (vdec_codec_needs_recycle(sess))
@@ -474,20 +488,33 @@ vdec_try_fmt_common(struct amvdec_session *sess, u32 size,
 	struct v4l2_pix_format_mplane *pixmp = &f->fmt.pix_mp;
 	struct v4l2_plane_pix_format *pfmt = pixmp->plane_fmt;
 	const struct amvdec_format *fmts = sess->core->platform->formats;
-	const struct amvdec_format *fmt_out;
+	const struct amvdec_format *fmt_out = NULL;
+	u32 output_size = 0;
 
 	memset(pfmt[0].reserved, 0, sizeof(pfmt[0].reserved));
 	memset(pixmp->reserved, 0, sizeof(pixmp->reserved));
 
-	if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
+	switch (f->type) {
+	case V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE:
 		fmt_out = find_format(fmts, size, pixmp->pixelformat);
 		if (!fmt_out) {
 			pixmp->pixelformat = V4L2_PIX_FMT_MPEG2;
 			fmt_out = find_format(fmts, size, pixmp->pixelformat);
 		}
+		break;
+	case V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE:
+		fmt_out = sess->fmt_out;
+		break;
+	default:
+		return NULL;
+	}
 
-		pfmt[0].sizeimage =
-			get_output_size(pixmp->width, pixmp->height);
+	pixmp->width  = clamp(pixmp->width,  (u32)256, fmt_out->max_width);
+	pixmp->height = clamp(pixmp->height, (u32)144, fmt_out->max_height);
+	output_size = get_output_size(pixmp->width, pixmp->height);
+
+	if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
+		pfmt[0].sizeimage = sess->src_buffer_size;
 		pfmt[0].bytesperline = 0;
 		pixmp->num_planes = 1;
 	} else if (f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
@@ -497,35 +524,25 @@ vdec_try_fmt_common(struct amvdec_session *sess, u32 size,
 
 		memset(pfmt[1].reserved, 0, sizeof(pfmt[1].reserved));
 		if (pixmp->pixelformat == V4L2_PIX_FMT_NV12M) {
-			pfmt[0].sizeimage =
-				get_output_size(pixmp->width, pixmp->height);
+			pfmt[0].sizeimage = output_size;
 			pfmt[0].bytesperline = ALIGN(pixmp->width, 64);
 
-			pfmt[1].sizeimage =
-			      get_output_size(pixmp->width, pixmp->height) / 2;
+			pfmt[1].sizeimage = output_size / 2;
 			pfmt[1].bytesperline = ALIGN(pixmp->width, 64);
 			pixmp->num_planes = 2;
 		} else if (pixmp->pixelformat == V4L2_PIX_FMT_YUV420M) {
-			pfmt[0].sizeimage =
-				get_output_size(pixmp->width, pixmp->height);
+			pfmt[0].sizeimage = output_size;
 			pfmt[0].bytesperline = ALIGN(pixmp->width, 64);
 
-			pfmt[1].sizeimage =
-			      get_output_size(pixmp->width, pixmp->height) / 4;
+			pfmt[1].sizeimage = output_size / 4;
 			pfmt[1].bytesperline = ALIGN(pixmp->width, 64) / 2;
 
-			pfmt[2].sizeimage =
-			      get_output_size(pixmp->width, pixmp->height) / 4;
+			pfmt[2].sizeimage = output_size / 2;
 			pfmt[2].bytesperline = ALIGN(pixmp->width, 64) / 2;
 			pixmp->num_planes = 3;
 		}
-	} else {
-		return NULL;
 	}
 
-	pixmp->width  = clamp(pixmp->width,  (u32)256, fmt_out->max_width);
-	pixmp->height = clamp(pixmp->height, (u32)144, fmt_out->max_height);
-
 	if (pixmp->field == V4L2_FIELD_ANY)
 		pixmp->field = V4L2_FIELD_NONE;
 
@@ -584,6 +601,8 @@ static int vdec_s_fmt(struct file *file, void *fh, struct v4l2_format *f)
 	orig_pixmp = *pixmp;
 
 	fmt_out = vdec_try_fmt_common(sess, num_formats, f);
+	if (!fmt_out)
+		return -EINVAL;
 
 	if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
 		pixfmt_out = pixmp->pixelformat;
@@ -608,6 +627,7 @@ static int vdec_s_fmt(struct file *file, void *fh, struct v4l2_format *f)
 		sess->ycbcr_enc = pixmp->ycbcr_enc;
 		sess->quantization = pixmp->quantization;
 		sess->xfer_func = pixmp->xfer_func;
+		sess->src_buffer_size = pixmp->plane_fmt[0].sizeimage;
 	}
 
 	memset(&format, 0, sizeof(format));
@@ -696,32 +716,35 @@ vdec_decoder_cmd(struct file *file, void *fh, struct v4l2_decoder_cmd *cmd)
 	if (ret)
 		return ret;
 
+	ret = v4l2_m2m_ioctl_decoder_cmd(file, fh, cmd);
+	if (ret)
+		return ret;
+
 	if (!(sess->streamon_out & sess->streamon_cap))
 		return 0;
 
-	/* Currently not handled since we do not support dynamic resolution
-	 * for MPEG2. We consider both queues streaming to mean that the
-	 * decoding session is started
-	 */
-	if (cmd->cmd == V4L2_DEC_CMD_START)
+	if (cmd->cmd == V4L2_DEC_CMD_START) {
+		sess->should_stop = 0;
 		return 0;
+	}
 
 	/* Should not happen */
 	if (cmd->cmd != V4L2_DEC_CMD_STOP)
 		return -EINVAL;
 
 	dev_dbg(dev, "Received V4L2_DEC_CMD_STOP\n");
-	sess->should_stop = 1;
 
-	vdec_wait_inactive(sess);
+	sess->should_stop = 1;
 
 	if (codec_ops->drain) {
+		vdec_wait_inactive(sess);
 		codec_ops->drain(sess);
 	} else if (codec_ops->eos_sequence) {
 		u32 len;
 		const u8 *data = codec_ops->eos_sequence(&len);
 
 		esparser_queue_eos(sess->core, data, len);
+		vdec_wait_inactive(sess);
 	}
 
 	return ret;
@@ -881,6 +904,7 @@ static int vdec_open(struct file *file)
 	sess->height = 720;
 	sess->pixelaspect.numerator = 1;
 	sess->pixelaspect.denominator = 1;
+	sess->src_buffer_size = SZ_1M;
 
 	INIT_LIST_HEAD(&sess->timestamps);
 	INIT_LIST_HEAD(&sess->bufs_recycle);
diff --git a/drivers/staging/media/meson/vdec/vdec.h b/drivers/staging/media/meson/vdec/vdec.h
index 0faa1ec4858e..f95445ac0658 100644
--- a/drivers/staging/media/meson/vdec/vdec.h
+++ b/drivers/staging/media/meson/vdec/vdec.h
@@ -29,13 +29,19 @@ struct amvdec_buffer {
  * struct amvdec_timestamp - stores a src timestamp along with a VIFIFO offset
  *
  * @list: used to make lists out of this struct
- * @ts: timestamp
+ * @tc: timecode from the v4l2 buffer
+ * @ts: timestamp from the VB2 buffer
  * @offset: offset in the VIFIFO where the associated packet was written
+ * @flags: flags from the v4l2 buffer
+ * @used_count: times this timestamp was checked for a match with a dst buffer
  */
 struct amvdec_timestamp {
 	struct list_head list;
+	struct v4l2_timecode tc;
 	u64 ts;
 	u32 offset;
+	u32 flags;
+	u32 used_count;
 };
 
 struct amvdec_session;
@@ -165,6 +171,7 @@ struct amvdec_format {
 
 enum amvdec_status {
 	STATUS_STOPPED,
+	STATUS_INIT,
 	STATUS_RUNNING,
 	STATUS_NEEDS_RESUME,
 };
@@ -180,6 +187,7 @@ enum amvdec_status {
  * @ctrl_min_buf_capture: V4L2 control V4L2_CID_MIN_BUFFERS_FOR_CAPTURE
  * @fmt_out: vdec pixel format for the OUTPUT queue
  * @pixfmt_cap: V4L2 pixel format for the CAPTURE queue
+ * @src_buffer_size: size in bytes of the OUTPUT buffers' only plane
  * @width: current picture width
  * @height: current picture height
  * @colorspace: current colorspace
@@ -221,6 +229,7 @@ struct amvdec_session {
 
 	const struct amvdec_format *fmt_out;
 	u32 pixfmt_cap;
+	u32 src_buffer_size;
 
 	u32 width;
 	u32 height;
@@ -235,10 +244,11 @@ struct amvdec_session {
 	struct work_struct esparser_queue_work;
 
 	unsigned int streamon_cap, streamon_out;
-	unsigned int sequence_cap;
+	unsigned int sequence_cap, sequence_out;
 	unsigned int should_stop;
 	unsigned int keyframe_found;
 	unsigned int num_dst_bufs;
+	unsigned int changed_format;
 
 	u8 canvas_alloc[MAX_CANVAS];
 	u32 canvas_num;
diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.c b/drivers/staging/media/meson/vdec/vdec_helpers.c
index f16948bdbf2f..ff4333074197 100644
--- a/drivers/staging/media/meson/vdec/vdec_helpers.c
+++ b/drivers/staging/media/meson/vdec/vdec_helpers.c
@@ -200,33 +200,23 @@ int amvdec_set_canvases(struct amvdec_session *sess,
 }
 EXPORT_SYMBOL_GPL(amvdec_set_canvases);
 
-void amvdec_add_ts_reorder(struct amvdec_session *sess, u64 ts, u32 offset)
+void amvdec_add_ts(struct amvdec_session *sess, u64 ts,
+		   struct v4l2_timecode tc, u32 offset, u32 vbuf_flags)
 {
-	struct amvdec_timestamp *new_ts, *tmp;
+	struct amvdec_timestamp *new_ts;
 	unsigned long flags;
 
-	new_ts = kmalloc(sizeof(*new_ts), GFP_KERNEL);
+	new_ts = kzalloc(sizeof(*new_ts), GFP_KERNEL);
 	new_ts->ts = ts;
+	new_ts->tc = tc;
 	new_ts->offset = offset;
+	new_ts->flags = vbuf_flags;
 
 	spin_lock_irqsave(&sess->ts_spinlock, flags);
-
-	if (list_empty(&sess->timestamps))
-		goto add_tail;
-
-	list_for_each_entry(tmp, &sess->timestamps, list) {
-		if (ts <= tmp->ts) {
-			list_add_tail(&new_ts->list, &tmp->list);
-			goto unlock;
-		}
-	}
-
-add_tail:
 	list_add_tail(&new_ts->list, &sess->timestamps);
-unlock:
 	spin_unlock_irqrestore(&sess->ts_spinlock, flags);
 }
-EXPORT_SYMBOL_GPL(amvdec_add_ts_reorder);
+EXPORT_SYMBOL_GPL(amvdec_add_ts);
 
 void amvdec_remove_ts(struct amvdec_session *sess, u64 ts)
 {
@@ -251,8 +241,8 @@ EXPORT_SYMBOL_GPL(amvdec_remove_ts);
 
 static void dst_buf_done(struct amvdec_session *sess,
 			 struct vb2_v4l2_buffer *vbuf,
-			 u32 field,
-			 u64 timestamp)
+			 u32 field, u64 timestamp,
+			 struct v4l2_timecode timecode, u32 flags)
 {
 	struct device *dev = sess->core->dev_dec;
 	u32 output_size = amvdec_get_output_size(sess);
@@ -271,19 +261,23 @@ static void dst_buf_done(struct amvdec_session *sess,
 
 	vbuf->vb2_buf.timestamp = timestamp;
 	vbuf->sequence = sess->sequence_cap++;
+	vbuf->flags = flags;
+	vbuf->timecode = timecode;
 
 	if (sess->should_stop &&
-	    atomic_read(&sess->esparser_queued_bufs) <= 2) {
+	    atomic_read(&sess->esparser_queued_bufs) <= 1) {
 		const struct v4l2_event ev = { .type = V4L2_EVENT_EOS };
 
-		dev_dbg(dev, "Signaling EOS\n");
+		dev_dbg(dev, "Signaling EOS, sequence_cap = %u\n",
+			sess->sequence_cap - 1);
 		v4l2_event_queue_fh(&sess->fh, &ev);
 		vbuf->flags |= V4L2_BUF_FLAG_LAST;
 	} else if (sess->should_stop)
 		dev_dbg(dev, "should_stop, %u bufs remain\n",
 			atomic_read(&sess->esparser_queued_bufs));
 
-	dev_dbg(dev, "Buffer %u done\n", vbuf->vb2_buf.index);
+	dev_dbg(dev, "Buffer %u done, ts = %llu, flags = %08X\n",
+		vbuf->vb2_buf.index, timestamp, flags);
 	vbuf->field = field;
 	v4l2_m2m_buf_done(vbuf, VB2_BUF_STATE_DONE);
 
@@ -297,7 +291,9 @@ void amvdec_dst_buf_done(struct amvdec_session *sess,
 	struct device *dev = sess->core->dev_dec;
 	struct amvdec_timestamp *tmp;
 	struct list_head *timestamps = &sess->timestamps;
+	struct v4l2_timecode timecode;
 	u64 timestamp;
+	u32 vbuf_flags;
 	unsigned long flags;
 
 	spin_lock_irqsave(&sess->ts_spinlock, flags);
@@ -312,11 +308,13 @@ void amvdec_dst_buf_done(struct amvdec_session *sess,
 
 	tmp = list_first_entry(timestamps, struct amvdec_timestamp, list);
 	timestamp = tmp->ts;
+	timecode = tmp->tc;
+	vbuf_flags = tmp->flags;
 	list_del(&tmp->list);
 	kfree(tmp);
 	spin_unlock_irqrestore(&sess->ts_spinlock, flags);
 
-	dst_buf_done(sess, vbuf, field, timestamp);
+	dst_buf_done(sess, vbuf, field, timestamp, timecode, vbuf_flags);
 	atomic_dec(&sess->esparser_queued_bufs);
 }
 EXPORT_SYMBOL_GPL(amvdec_dst_buf_done);
@@ -328,48 +326,43 @@ void amvdec_dst_buf_done_offset(struct amvdec_session *sess,
 	struct device *dev = sess->core->dev_dec;
 	struct amvdec_timestamp *match = NULL;
 	struct amvdec_timestamp *tmp, *n;
+	struct v4l2_timecode timecode = { 0 };
 	u64 timestamp = 0;
+	u32 vbuf_flags = 0;
 	unsigned long flags;
 
 	spin_lock_irqsave(&sess->ts_spinlock, flags);
 
 	/* Look for our vififo offset to get the corresponding timestamp. */
 	list_for_each_entry_safe(tmp, n, &sess->timestamps, list) {
-		s64 delta = (s64)offset - tmp->offset;
-
-		/* Offsets reported by codecs usually differ slightly,
-		 * so we need some wiggle room.
-		 * 4KiB being the minimum packet size, there is no risk here.
-		 */
-		if (delta > (-1 * (s32)SZ_4K) && delta < SZ_4K) {
-			match = tmp;
+		if (tmp->offset > offset) {
+			/*
+			 * Delete any record that remained unused for 32 match
+			 * checks
+			 */
+			if (tmp->used_count++ >= 32) {
+				list_del(&tmp->list);
+				kfree(tmp);
+			}
 			break;
 		}
 
-		if (!allow_drop)
-			continue;
-
-		/* Delete any timestamp entry that appears before our target
-		 * (not all src packets/timestamps lead to a frame)
-		 */
-		if (delta > 0 || delta < -1 * (s32)sess->vififo_size) {
-			atomic_dec(&sess->esparser_queued_bufs);
-			list_del(&tmp->list);
-			kfree(tmp);
-		}
+		match = tmp;
 	}
 
 	if (!match) {
-		dev_dbg(dev, "Buffer %u done but can't match offset (%08X)\n",
+		dev_err(dev, "Buffer %u done but can't match offset (%08X)\n",
 			vbuf->vb2_buf.index, offset);
 	} else {
 		timestamp = match->ts;
+		timecode = match->tc;
+		vbuf_flags = match->flags;
 		list_del(&match->list);
 		kfree(match);
 	}
 	spin_unlock_irqrestore(&sess->ts_spinlock, flags);
 
-	dst_buf_done(sess, vbuf, field, timestamp);
+	dst_buf_done(sess, vbuf, field, timestamp, timecode, vbuf_flags);
 	if (match)
 		atomic_dec(&sess->esparser_queued_bufs);
 }
@@ -420,7 +413,8 @@ void amvdec_src_change(struct amvdec_session *sess, u32 width,
 
 	v4l2_ctrl_s_ctrl(sess->ctrl_min_buf_capture, dpb_size);
 
-	/* Check if the capture queue is already configured well for our
+	/*
+	 * Check if the capture queue is already configured well for our
 	 * usecase. If so, keep decoding with it and do not send the event
 	 */
 	if (sess->width == width &&
@@ -430,6 +424,7 @@ void amvdec_src_change(struct amvdec_session *sess, u32 width,
 		return;
 	}
 
+	sess->changed_format = 0;
 	sess->width = width;
 	sess->height = height;
 	sess->status = STATUS_NEEDS_RESUME;
diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.h b/drivers/staging/media/meson/vdec/vdec_helpers.h
index a455a9ee1cc2..165e6293ffba 100644
--- a/drivers/staging/media/meson/vdec/vdec_helpers.h
+++ b/drivers/staging/media/meson/vdec/vdec_helpers.h
@@ -44,13 +44,15 @@ void amvdec_dst_buf_done_offset(struct amvdec_session *sess,
 				u32 offset, u32 field, bool allow_drop);
 
 /**
- * amvdec_add_ts_reorder() - Add a timestamp to the list in chronological order
+ * amvdec_add_ts() - Add a timestamp to the list
  *
  * @sess: current session
  * @ts: timestamp to add
  * @offset: offset in the VIFIFO where the associated packet was written
+ * @flags the vb2_v4l2_buffer flags
  */
-void amvdec_add_ts_reorder(struct amvdec_session *sess, u64 ts, u32 offset);
+void amvdec_add_ts(struct amvdec_session *sess, u64 ts,
+		   struct v4l2_timecode tc, u32 offset, u32 flags);
 void amvdec_remove_ts(struct amvdec_session *sess, u64 ts);
 
 /**
diff --git a/drivers/staging/media/meson/vdec/vdec_platform.c b/drivers/staging/media/meson/vdec/vdec_platform.c
index ea39f8209ec7..066d4a055894 100644
--- a/drivers/staging/media/meson/vdec/vdec_platform.c
+++ b/drivers/staging/media/meson/vdec/vdec_platform.c
@@ -21,6 +21,7 @@ static const struct amvdec_format vdec_formats_gxbb[] = {
 		.codec_ops = &codec_mpeg12_ops,
 		.firmware_path = "meson/vdec/gxl_mpeg12.bin",
 		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, V4L2_PIX_FMT_YUV420M, 0 },
+		.flags = V4L2_FMT_FLAG_COMPRESSED,
 	}, {
 		.pixfmt = V4L2_PIX_FMT_MPEG2,
 		.min_buffers = 8,
@@ -31,6 +32,7 @@ static const struct amvdec_format vdec_formats_gxbb[] = {
 		.codec_ops = &codec_mpeg12_ops,
 		.firmware_path = "meson/vdec/gxl_mpeg12.bin",
 		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, V4L2_PIX_FMT_YUV420M, 0 },
+		.flags = V4L2_FMT_FLAG_COMPRESSED,
 	},
 };
 
@@ -45,6 +47,7 @@ static const struct amvdec_format vdec_formats_gxl[] = {
 		.codec_ops = &codec_mpeg12_ops,
 		.firmware_path = "meson/vdec/gxl_mpeg12.bin",
 		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, V4L2_PIX_FMT_YUV420M, 0 },
+		.flags = V4L2_FMT_FLAG_COMPRESSED,
 	}, {
 		.pixfmt = V4L2_PIX_FMT_MPEG2,
 		.min_buffers = 8,
@@ -55,6 +58,7 @@ static const struct amvdec_format vdec_formats_gxl[] = {
 		.codec_ops = &codec_mpeg12_ops,
 		.firmware_path = "meson/vdec/gxl_mpeg12.bin",
 		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, V4L2_PIX_FMT_YUV420M, 0 },
+		.flags = V4L2_FMT_FLAG_COMPRESSED,
 	},
 };
 
@@ -69,6 +73,7 @@ static const struct amvdec_format vdec_formats_gxm[] = {
 		.codec_ops = &codec_mpeg12_ops,
 		.firmware_path = "meson/vdec/gxl_mpeg12.bin",
 		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, V4L2_PIX_FMT_YUV420M, 0 },
+		.flags = V4L2_FMT_FLAG_COMPRESSED,
 	}, {
 		.pixfmt = V4L2_PIX_FMT_MPEG2,
 		.min_buffers = 8,
@@ -79,6 +84,7 @@ static const struct amvdec_format vdec_formats_gxm[] = {
 		.codec_ops = &codec_mpeg12_ops,
 		.firmware_path = "meson/vdec/gxl_mpeg12.bin",
 		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, V4L2_PIX_FMT_YUV420M, 0 },
+		.flags = V4L2_FMT_FLAG_COMPRESSED,
 	},
 };
 
@@ -93,6 +99,7 @@ static const struct amvdec_format vdec_formats_g12a[] = {
 		.codec_ops = &codec_mpeg12_ops,
 		.firmware_path = "meson/vdec/gxl_mpeg12.bin",
 		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, V4L2_PIX_FMT_YUV420M, 0 },
+		.flags = V4L2_FMT_FLAG_COMPRESSED,
 	}, {
 		.pixfmt = V4L2_PIX_FMT_MPEG2,
 		.min_buffers = 8,
@@ -103,6 +110,7 @@ static const struct amvdec_format vdec_formats_g12a[] = {
 		.codec_ops = &codec_mpeg12_ops,
 		.firmware_path = "meson/vdec/gxl_mpeg12.bin",
 		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, V4L2_PIX_FMT_YUV420M, 0 },
+		.flags = V4L2_FMT_FLAG_COMPRESSED,
 	},
 };
 
@@ -117,6 +125,7 @@ static const struct amvdec_format vdec_formats_sm1[] = {
 		.codec_ops = &codec_mpeg12_ops,
 		.firmware_path = "meson/vdec/gxl_mpeg12.bin",
 		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, V4L2_PIX_FMT_YUV420M, 0 },
+		.flags = V4L2_FMT_FLAG_COMPRESSED,
 	}, {
 		.pixfmt = V4L2_PIX_FMT_MPEG2,
 		.min_buffers = 8,
@@ -127,6 +136,7 @@ static const struct amvdec_format vdec_formats_sm1[] = {
 		.codec_ops = &codec_mpeg12_ops,
 		.firmware_path = "meson/vdec/gxl_mpeg12.bin",
 		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, V4L2_PIX_FMT_YUV420M, 0 },
+		.flags = V4L2_FMT_FLAG_COMPRESSED,
 	},
 };
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
