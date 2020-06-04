Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 689561EE126
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 11:21:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZPCVUzrOuQKTv36NTs+uLG/WM82Xl+XKp3svHp5xoc=; b=BMKw9liefJfkWv
	PM3Hd2xJ867ZzpjU2gEQmvDrZVE0q6CVFzKFEK9hWqv1gq7YfffJcJnhcQDxARZH167jXVPXab7Ro
	mPfriDvULvpodiYb7+1+5qseaFpsKiHnxfnhJ9UT7yCdlEj5Bg1saM94d2X1Rs8G++JTASDsxN9mS
	MABlYDhXEEuvb2ko7yza/pdXJqLtdRuCv9C3Boe6I7MCRrHtI2QYRjbVTLIVxebh6CPgZyvHdsvlf
	tLe59IghRiUGysNywm+Xw3q6oiHwVydv7NVHsCsbC/43IFsTWOlemhbFU2WbKq21VZwaibZ5sDFaf
	tWEIimxxZ20YbTT4zpkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgm44-0006uq-Ug; Thu, 04 Jun 2020 09:21:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgm1A-0001PT-Mp; Thu, 04 Jun 2020 09:18:38 +0000
X-UUID: cbe9d25feb6d416b8d94e2e14b22947d-20200604
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=5gwWnIdrjpGmnBIXJWfqyG3VwZRdTWN1rEE3lre6FMs=; 
 b=vGTk0AyG/LC6DGhlXnCZ4r+WlAdtIckvqu3Efg3CJnaLkrS1tSow+yEj/+NgXYVxakDeG7tnRwUzyQMXDfnXENej7jWH5DEVZeOnRbYzkSG6LhtG57BSWC5fqarFFQrAstv0L2mJCwEAgqituPzvPU/Xx3kcf9AGSwrWPuLq8tA=;
X-UUID: cbe9d25feb6d416b8d94e2e14b22947d-20200604
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 271754547; Thu, 04 Jun 2020 01:18:11 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 02:08:25 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 17:08:25 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 4 Jun 2020 17:08:22 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH RESEND v9 17/18] media: platform: Rename existing
 functions/defines/variables
Date: Thu, 4 Jun 2020 17:05:52 +0800
Message-ID: <20200604090553.10861-19-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200604090553.10861-1-xia.jiang@mediatek.com>
References: <20200604090553.10861-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_021833_813307_5AE27F0A 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: maoguang.meng@mediatek.com, devicetree@vger.kernel.org,
 mojahsu@chromium.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 senozhatsky@chromium.org, sj.huang@mediatek.com, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, Xia Jiang <xia.jiang@mediatek.com>,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename existing funcitons/defines/variables with a  _dec prefix and
without dec_ prefix to prepare for the addition of the jpeg encoder
feature.

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
v9: new patch
---
 .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 200 +++++++++---------
 .../media/platform/mtk-jpeg/mtk_jpeg_core.h   |   8 +-
 .../media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h |   7 +-
 3 files changed, 109 insertions(+), 106 deletions(-)

diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
index e0e522a502e1..29b8b82c606c 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
@@ -27,7 +27,7 @@
 #include "mtk_jpeg_core.h"
 #include "mtk_jpeg_dec_parse.h"
 
-static struct mtk_jpeg_fmt mtk_jpeg_formats[] = {
+static struct mtk_jpeg_fmt mtk_jpeg_dec_formats[] = {
 	{
 		.fourcc		= V4L2_PIX_FMT_JPEG,
 		.colplanes	= 1,
@@ -53,7 +53,7 @@ static struct mtk_jpeg_fmt mtk_jpeg_formats[] = {
 	},
 };
 
-#define MTK_JPEG_NUM_FORMATS ARRAY_SIZE(mtk_jpeg_formats)
+#define MTK_JPEG_DEC_NUM_FORMATS ARRAY_SIZE(mtk_jpeg_dec_formats)
 
 struct mtk_jpeg_src_buf {
 	struct vb2_v4l2_buffer b;
@@ -75,12 +75,12 @@ static inline struct mtk_jpeg_src_buf *mtk_jpeg_vb2_to_srcbuf(
 	return container_of(to_vb2_v4l2_buffer(vb), struct mtk_jpeg_src_buf, b);
 }
 
-static int mtk_jpeg_querycap(struct file *file, void *priv,
-			     struct v4l2_capability *cap)
+static int mtk_jpeg_dec_querycap(struct file *file, void *priv,
+				 struct v4l2_capability *cap)
 {
 	struct mtk_jpeg_dev *jpeg = video_drvdata(file);
 
-	strscpy(cap->driver, MTK_JPEG_NAME " decoder", sizeof(cap->driver));
+	strscpy(cap->driver, MTK_JPEG_NAME, sizeof(cap->driver));
 	strscpy(cap->card, MTK_JPEG_NAME " decoder", sizeof(cap->card));
 	snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
 		 dev_name(jpeg->dev));
@@ -109,22 +109,23 @@ static int mtk_jpeg_enum_fmt(struct mtk_jpeg_fmt *mtk_jpeg_formats, int n,
 	return 0;
 }
 
-static int mtk_jpeg_enum_fmt_vid_cap(struct file *file, void *priv,
-				     struct v4l2_fmtdesc *f)
+static int mtk_jpeg_dec_enum_fmt_vid_cap(struct file *file, void *priv,
+					 struct v4l2_fmtdesc *f)
 {
-	return mtk_jpeg_enum_fmt(mtk_jpeg_formats, MTK_JPEG_NUM_FORMATS, f,
+	return mtk_jpeg_enum_fmt(mtk_jpeg_dec_formats,
+				 MTK_JPEG_DEC_NUM_FORMATS, f,
 				 MTK_JPEG_FMT_FLAG_DEC_CAPTURE);
 }
 
-static int mtk_jpeg_enum_fmt_vid_out(struct file *file, void *priv,
-				     struct v4l2_fmtdesc *f)
+static int mtk_jpeg_dec_enum_fmt_vid_out(struct file *file, void *priv,
+					 struct v4l2_fmtdesc *f)
 {
-	return mtk_jpeg_enum_fmt(mtk_jpeg_formats, MTK_JPEG_NUM_FORMATS, f,
-				 MTK_JPEG_FMT_FLAG_DEC_OUTPUT);
+	return mtk_jpeg_enum_fmt(mtk_jpeg_dec_formats, MTK_JPEG_DEC_NUM_FORMATS,
+				 f, MTK_JPEG_FMT_FLAG_DEC_OUTPUT);
 }
 
-static struct mtk_jpeg_q_data *mtk_jpeg_get_q_data(struct mtk_jpeg_ctx *ctx,
-						   enum v4l2_buf_type type)
+static struct mtk_jpeg_q_data *
+mtk_jpeg_get_q_data(struct mtk_jpeg_ctx *ctx, enum v4l2_buf_type type)
 {
 	if (V4L2_TYPE_IS_OUTPUT(type))
 		return &ctx->out_q;
@@ -141,8 +142,8 @@ static struct mtk_jpeg_fmt *mtk_jpeg_find_format(struct mtk_jpeg_ctx *ctx,
 		   MTK_JPEG_FMT_FLAG_DEC_OUTPUT :
 		   MTK_JPEG_FMT_FLAG_DEC_CAPTURE;
 
-	for (k = 0; k < MTK_JPEG_NUM_FORMATS; k++) {
-		struct mtk_jpeg_fmt *fmt = &mtk_jpeg_formats[k];
+	for (k = 0; k < MTK_JPEG_DEC_NUM_FORMATS; k++) {
+		struct mtk_jpeg_fmt *fmt = &mtk_jpeg_dec_formats[k];
 
 		if (fmt->fourcc == pixelformat && fmt->flags & fmt_flag)
 			return fmt;
@@ -270,8 +271,8 @@ static int mtk_jpeg_g_fmt_vid_mplane(struct file *file, void *priv,
 	return 0;
 }
 
-static int mtk_jpeg_try_fmt_vid_cap_mplane(struct file *file, void *priv,
-					   struct v4l2_format *f)
+static int mtk_jpeg_dec_try_fmt_vid_cap_mplane(struct file *file, void *priv,
+					       struct v4l2_format *f)
 {
 	struct mtk_jpeg_ctx *ctx = mtk_jpeg_fh_to_ctx(priv);
 	struct mtk_jpeg_fmt *fmt;
@@ -291,8 +292,8 @@ static int mtk_jpeg_try_fmt_vid_cap_mplane(struct file *file, void *priv,
 	return mtk_jpeg_try_fmt_mplane(f, fmt, ctx, MTK_JPEG_FMT_TYPE_CAPTURE);
 }
 
-static int mtk_jpeg_try_fmt_vid_out_mplane(struct file *file, void *priv,
-					   struct v4l2_format *f)
+static int mtk_jpeg_dec_try_fmt_vid_out_mplane(struct file *file, void *priv,
+					       struct v4l2_format *f)
 {
 	struct mtk_jpeg_ctx *ctx = mtk_jpeg_fh_to_ctx(priv);
 	struct mtk_jpeg_fmt *fmt;
@@ -364,24 +365,24 @@ static int mtk_jpeg_s_fmt_mplane(struct mtk_jpeg_ctx *ctx,
 	return 0;
 }
 
-static int mtk_jpeg_s_fmt_vid_out_mplane(struct file *file, void *priv,
-					 struct v4l2_format *f)
+static int mtk_jpeg_dec_s_fmt_vid_out_mplane(struct file *file, void *priv,
+					     struct v4l2_format *f)
 {
 	int ret;
 
-	ret = mtk_jpeg_try_fmt_vid_out_mplane(file, priv, f);
+	ret = mtk_jpeg_dec_try_fmt_vid_out_mplane(file, priv, f);
 	if (ret)
 		return ret;
 
 	return mtk_jpeg_s_fmt_mplane(mtk_jpeg_fh_to_ctx(priv), f);
 }
 
-static int mtk_jpeg_s_fmt_vid_cap_mplane(struct file *file, void *priv,
-					 struct v4l2_format *f)
+static int mtk_jpeg_dec_s_fmt_vid_cap_mplane(struct file *file, void *priv,
+					     struct v4l2_format *f)
 {
 	int ret;
 
-	ret = mtk_jpeg_try_fmt_vid_cap_mplane(file, priv, f);
+	ret = mtk_jpeg_dec_try_fmt_vid_cap_mplane(file, priv, f);
 	if (ret)
 		return ret;
 
@@ -410,8 +411,8 @@ static int mtk_jpeg_subscribe_event(struct v4l2_fh *fh,
 	return v4l2_ctrl_subscribe_event(fh, sub);
 }
 
-static int mtk_jpeg_g_selection(struct file *file, void *priv,
-				struct v4l2_selection *s)
+static int mtk_jpeg_dec_g_selection(struct file *file, void *priv,
+				    struct v4l2_selection *s)
 {
 	struct mtk_jpeg_ctx *ctx = mtk_jpeg_fh_to_ctx(priv);
 
@@ -439,8 +440,8 @@ static int mtk_jpeg_g_selection(struct file *file, void *priv,
 	return 0;
 }
 
-static int mtk_jpeg_s_selection(struct file *file, void *priv,
-				struct v4l2_selection *s)
+static int mtk_jpeg_dec_s_selection(struct file *file, void *priv,
+				    struct v4l2_selection *s)
 {
 	struct mtk_jpeg_ctx *ctx = mtk_jpeg_fh_to_ctx(priv);
 
@@ -483,20 +484,20 @@ static int mtk_jpeg_qbuf(struct file *file, void *priv, struct v4l2_buffer *buf)
 	return v4l2_m2m_qbuf(file, fh->m2m_ctx, buf);
 }
 
-static const struct v4l2_ioctl_ops mtk_jpeg_ioctl_ops = {
-	.vidioc_querycap                = mtk_jpeg_querycap,
-	.vidioc_enum_fmt_vid_cap	= mtk_jpeg_enum_fmt_vid_cap,
-	.vidioc_enum_fmt_vid_out	= mtk_jpeg_enum_fmt_vid_out,
-	.vidioc_try_fmt_vid_cap_mplane	= mtk_jpeg_try_fmt_vid_cap_mplane,
-	.vidioc_try_fmt_vid_out_mplane	= mtk_jpeg_try_fmt_vid_out_mplane,
+static const struct v4l2_ioctl_ops mtk_jpeg_dec_ioctl_ops = {
+	.vidioc_querycap                = mtk_jpeg_dec_querycap,
+	.vidioc_enum_fmt_vid_cap	= mtk_jpeg_dec_enum_fmt_vid_cap,
+	.vidioc_enum_fmt_vid_out	= mtk_jpeg_dec_enum_fmt_vid_out,
+	.vidioc_try_fmt_vid_cap_mplane	= mtk_jpeg_dec_try_fmt_vid_cap_mplane,
+	.vidioc_try_fmt_vid_out_mplane	= mtk_jpeg_dec_try_fmt_vid_out_mplane,
 	.vidioc_g_fmt_vid_cap_mplane    = mtk_jpeg_g_fmt_vid_mplane,
 	.vidioc_g_fmt_vid_out_mplane    = mtk_jpeg_g_fmt_vid_mplane,
-	.vidioc_s_fmt_vid_cap_mplane    = mtk_jpeg_s_fmt_vid_cap_mplane,
-	.vidioc_s_fmt_vid_out_mplane    = mtk_jpeg_s_fmt_vid_out_mplane,
+	.vidioc_s_fmt_vid_cap_mplane    = mtk_jpeg_dec_s_fmt_vid_cap_mplane,
+	.vidioc_s_fmt_vid_out_mplane    = mtk_jpeg_dec_s_fmt_vid_out_mplane,
 	.vidioc_qbuf                    = mtk_jpeg_qbuf,
 	.vidioc_subscribe_event         = mtk_jpeg_subscribe_event,
-	.vidioc_g_selection		= mtk_jpeg_g_selection,
-	.vidioc_s_selection		= mtk_jpeg_s_selection,
+	.vidioc_g_selection		= mtk_jpeg_dec_g_selection,
+	.vidioc_s_selection		= mtk_jpeg_dec_s_selection,
 
 	.vidioc_create_bufs		= v4l2_m2m_ioctl_create_bufs,
 	.vidioc_prepare_buf		= v4l2_m2m_ioctl_prepare_buf,
@@ -615,7 +616,7 @@ static void mtk_jpeg_set_queue_data(struct mtk_jpeg_ctx *ctx,
 		 param->dec_w, param->dec_h);
 }
 
-static void mtk_jpeg_buf_queue(struct vb2_buffer *vb)
+static void mtk_jpeg_dec_buf_queue(struct vb2_buffer *vb)
 {
 	struct mtk_jpeg_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
 	struct mtk_jpeg_dec_param *param;
@@ -663,7 +664,7 @@ static struct vb2_v4l2_buffer *mtk_jpeg_buf_remove(struct mtk_jpeg_ctx *ctx,
 		return v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
 }
 
-static void mtk_jpeg_stop_streaming(struct vb2_queue *q)
+static void mtk_jpeg_dec_stop_streaming(struct vb2_queue *q)
 {
 	struct mtk_jpeg_ctx *ctx = vb2_get_drv_priv(q);
 	struct vb2_v4l2_buffer *vb;
@@ -689,13 +690,13 @@ static void mtk_jpeg_stop_streaming(struct vb2_queue *q)
 		v4l2_m2m_buf_done(vb, VB2_BUF_STATE_ERROR);
 }
 
-static const struct vb2_ops mtk_jpeg_qops = {
+static const struct vb2_ops mtk_jpeg_dec_qops = {
 	.queue_setup        = mtk_jpeg_queue_setup,
 	.buf_prepare        = mtk_jpeg_buf_prepare,
-	.buf_queue          = mtk_jpeg_buf_queue,
+	.buf_queue          = mtk_jpeg_dec_buf_queue,
 	.wait_prepare       = vb2_ops_wait_prepare,
 	.wait_finish        = vb2_ops_wait_finish,
-	.stop_streaming     = mtk_jpeg_stop_streaming,
+	.stop_streaming     = mtk_jpeg_dec_stop_streaming,
 };
 
 static void mtk_jpeg_set_dec_src(struct mtk_jpeg_ctx *ctx,
@@ -735,7 +736,7 @@ static int mtk_jpeg_set_dec_dst(struct mtk_jpeg_ctx *ctx,
 	return 0;
 }
 
-static void mtk_jpeg_device_run(void *priv)
+static void mtk_jpeg_dec_device_run(void *priv)
 {
 	struct mtk_jpeg_ctx *ctx = priv;
 	struct mtk_jpeg_dev *jpeg = ctx->jpeg;
@@ -763,15 +764,16 @@ static void mtk_jpeg_device_run(void *priv)
 		goto dec_end;
 
 	mtk_jpeg_set_dec_src(ctx, &src_buf->vb2_buf, &bs);
-	if (mtk_jpeg_set_dec_dst(ctx, &jpeg_src_buf->dec_param, &dst_buf->vb2_buf, &fb))
+	if (mtk_jpeg_set_dec_dst(ctx, &jpeg_src_buf->dec_param,
+				 &dst_buf->vb2_buf, &fb))
 		goto dec_end;
 
 	spin_lock_irqsave(&jpeg->hw_lock, flags);
-	mtk_jpeg_dec_reset(jpeg->dec_reg_base);
-	mtk_jpeg_dec_set_config(jpeg->dec_reg_base,
+	mtk_jpeg_dec_reset(jpeg->reg_base);
+	mtk_jpeg_dec_set_config(jpeg->reg_base,
 				&jpeg_src_buf->dec_param, &bs, &fb);
 
-	mtk_jpeg_dec_start(jpeg->dec_reg_base);
+	mtk_jpeg_dec_start(jpeg->reg_base);
 	spin_unlock_irqrestore(&jpeg->hw_lock, flags);
 	return;
 
@@ -783,20 +785,20 @@ static void mtk_jpeg_device_run(void *priv)
 	v4l2_m2m_job_finish(jpeg->m2m_dev, ctx->fh.m2m_ctx);
 }
 
-static int mtk_jpeg_job_ready(void *priv)
+static int mtk_jpeg_dec_job_ready(void *priv)
 {
 	struct mtk_jpeg_ctx *ctx = priv;
 
 	return (ctx->state == MTK_JPEG_RUNNING) ? 1 : 0;
 }
 
-static const struct v4l2_m2m_ops mtk_jpeg_m2m_ops = {
-	.device_run = mtk_jpeg_device_run,
-	.job_ready  = mtk_jpeg_job_ready,
+static const struct v4l2_m2m_ops mtk_jpeg_dec_m2m_ops = {
+	.device_run = mtk_jpeg_dec_device_run,
+	.job_ready  = mtk_jpeg_dec_job_ready,
 };
 
-static int mtk_jpeg_queue_init(void *priv, struct vb2_queue *src_vq,
-			       struct vb2_queue *dst_vq)
+static int mtk_jpeg_dec_queue_init(void *priv, struct vb2_queue *src_vq,
+				   struct vb2_queue *dst_vq)
 {
 	struct mtk_jpeg_ctx *ctx = priv;
 	int ret;
@@ -805,7 +807,7 @@ static int mtk_jpeg_queue_init(void *priv, struct vb2_queue *src_vq,
 	src_vq->io_modes = VB2_DMABUF | VB2_MMAP;
 	src_vq->drv_priv = ctx;
 	src_vq->buf_struct_size = sizeof(struct mtk_jpeg_src_buf);
-	src_vq->ops = &mtk_jpeg_qops;
+	src_vq->ops = &mtk_jpeg_dec_qops;
 	src_vq->mem_ops = &vb2_dma_contig_memops;
 	src_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
 	src_vq->lock = &ctx->jpeg->lock;
@@ -818,7 +820,7 @@ static int mtk_jpeg_queue_init(void *priv, struct vb2_queue *src_vq,
 	dst_vq->io_modes = VB2_DMABUF | VB2_MMAP;
 	dst_vq->drv_priv = ctx;
 	dst_vq->buf_struct_size = sizeof(struct v4l2_m2m_buffer);
-	dst_vq->ops = &mtk_jpeg_qops;
+	dst_vq->ops = &mtk_jpeg_dec_qops;
 	dst_vq->mem_ops = &vb2_dma_contig_memops;
 	dst_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
 	dst_vq->lock = &ctx->jpeg->lock;
@@ -857,7 +859,7 @@ static irqreturn_t mtk_jpeg_dec_irq(int irq, void *priv)
 	u32 dec_ret;
 	int i;
 
-	dec_ret = mtk_jpeg_dec_get_int_status(jpeg->dec_reg_base);
+	dec_ret = mtk_jpeg_dec_get_int_status(jpeg->reg_base);
 	dec_irq_ret = mtk_jpeg_dec_enum_result(dec_ret);
 	ctx = v4l2_m2m_get_curr_priv(jpeg->m2m_dev);
 	if (!ctx) {
@@ -870,7 +872,7 @@ static irqreturn_t mtk_jpeg_dec_irq(int irq, void *priv)
 	jpeg_src_buf = mtk_jpeg_vb2_to_srcbuf(&src_buf->vb2_buf);
 
 	if (dec_irq_ret >= MTK_JPEG_DEC_RESULT_UNDERFLOW)
-		mtk_jpeg_dec_reset(jpeg->dec_reg_base);
+		mtk_jpeg_dec_reset(jpeg->reg_base);
 
 	if (dec_irq_ret != MTK_JPEG_DEC_RESULT_EOF_DONE) {
 		dev_err(jpeg->dev, "decode failed\n");
@@ -891,7 +893,7 @@ static irqreturn_t mtk_jpeg_dec_irq(int irq, void *priv)
 	return IRQ_HANDLED;
 }
 
-static void mtk_jpeg_set_default_params(struct mtk_jpeg_ctx *ctx)
+static void mtk_jpeg_set_dec_default_params(struct mtk_jpeg_ctx *ctx)
 {
 	struct mtk_jpeg_q_data *q = &ctx->out_q;
 	int i;
@@ -923,7 +925,7 @@ static void mtk_jpeg_set_default_params(struct mtk_jpeg_ctx *ctx)
 	}
 }
 
-static int mtk_jpeg_open(struct file *file)
+static int mtk_jpeg_dec_open(struct file *file)
 {
 	struct mtk_jpeg_dev *jpeg = video_drvdata(file);
 	struct video_device *vfd = video_devdata(file);
@@ -945,13 +947,13 @@ static int mtk_jpeg_open(struct file *file)
 
 	ctx->jpeg = jpeg;
 	ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(jpeg->m2m_dev, ctx,
-					    mtk_jpeg_queue_init);
+					    mtk_jpeg_dec_queue_init);
 	if (IS_ERR(ctx->fh.m2m_ctx)) {
 		ret = PTR_ERR(ctx->fh.m2m_ctx);
 		goto error;
 	}
 
-	mtk_jpeg_set_default_params(ctx);
+	mtk_jpeg_set_dec_default_params(ctx);
 	mutex_unlock(&jpeg->lock);
 	return 0;
 
@@ -978,9 +980,9 @@ static int mtk_jpeg_release(struct file *file)
 	return 0;
 }
 
-static const struct v4l2_file_operations mtk_jpeg_fops = {
+static const struct v4l2_file_operations mtk_jpeg_dec_fops = {
 	.owner          = THIS_MODULE,
-	.open           = mtk_jpeg_open,
+	.open           = mtk_jpeg_dec_open,
 	.release        = mtk_jpeg_release,
 	.poll           = v4l2_m2m_fop_poll,
 	.unlocked_ioctl = video_ioctl2,
@@ -1016,7 +1018,7 @@ static int mtk_jpeg_probe(struct platform_device *pdev)
 {
 	struct mtk_jpeg_dev *jpeg;
 	struct resource *res;
-	int dec_irq;
+	int jpeg_irq;
 	int ret;
 
 	jpeg = devm_kzalloc(&pdev->dev, sizeof(*jpeg), GFP_KERNEL);
@@ -1028,23 +1030,23 @@ static int mtk_jpeg_probe(struct platform_device *pdev)
 	jpeg->dev = &pdev->dev;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	jpeg->dec_reg_base = devm_ioremap_resource(&pdev->dev, res);
-	if (IS_ERR(jpeg->dec_reg_base)) {
-		ret = PTR_ERR(jpeg->dec_reg_base);
+	jpeg->reg_base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(jpeg->reg_base)) {
+		ret = PTR_ERR(jpeg->reg_base);
 		return ret;
 	}
 
-	dec_irq = platform_get_irq(pdev, 0);
-	if (dec_irq < 0) {
-		dev_err(&pdev->dev, "Failed to get dec_irq %d.\n", dec_irq);
-		return dec_irq;
+	jpeg_irq = platform_get_irq(pdev, 0);
+	if (jpeg_irq < 0) {
+		dev_err(&pdev->dev, "Failed to get jpeg_irq %d.\n", jpeg_irq);
+		return jpeg_irq;
 	}
 
-	ret = devm_request_irq(&pdev->dev, dec_irq, mtk_jpeg_dec_irq, 0,
+	ret = devm_request_irq(&pdev->dev, jpeg_irq, mtk_jpeg_dec_irq, 0,
 			       pdev->name, jpeg);
 	if (ret) {
-		dev_err(&pdev->dev, "Failed to request dec_irq %d (%d)\n",
-			dec_irq, ret);
+		dev_err(&pdev->dev, "Failed to request jpeg_irq %d (%d)\n",
+			jpeg_irq, ret);
 		goto err_req_irq;
 	}
 
@@ -1061,40 +1063,40 @@ static int mtk_jpeg_probe(struct platform_device *pdev)
 		goto err_dev_register;
 	}
 
-	jpeg->m2m_dev = v4l2_m2m_init(&mtk_jpeg_m2m_ops);
+	jpeg->m2m_dev = v4l2_m2m_init(&mtk_jpeg_dec_m2m_ops);
 	if (IS_ERR(jpeg->m2m_dev)) {
 		v4l2_err(&jpeg->v4l2_dev, "Failed to init mem2mem device\n");
 		ret = PTR_ERR(jpeg->m2m_dev);
 		goto err_m2m_init;
 	}
 
-	jpeg->dec_vdev = video_device_alloc();
-	if (!jpeg->dec_vdev) {
+	jpeg->vdev = video_device_alloc();
+	if (!jpeg->vdev) {
 		ret = -ENOMEM;
-		goto err_dec_vdev_alloc;
+		goto err_vfd_jpeg_alloc;
 	}
-	snprintf(jpeg->dec_vdev->name, sizeof(jpeg->dec_vdev->name),
+	snprintf(jpeg->vdev->name, sizeof(jpeg->vdev->name),
 		 "%s-dec", MTK_JPEG_NAME);
-	jpeg->dec_vdev->fops = &mtk_jpeg_fops;
-	jpeg->dec_vdev->ioctl_ops = &mtk_jpeg_ioctl_ops;
-	jpeg->dec_vdev->minor = -1;
-	jpeg->dec_vdev->release = video_device_release;
-	jpeg->dec_vdev->lock = &jpeg->lock;
-	jpeg->dec_vdev->v4l2_dev = &jpeg->v4l2_dev;
-	jpeg->dec_vdev->vfl_dir = VFL_DIR_M2M;
-	jpeg->dec_vdev->device_caps = V4L2_CAP_STREAMING |
+	jpeg->vdev->fops = &mtk_jpeg_dec_fops;
+	jpeg->vdev->ioctl_ops = &mtk_jpeg_dec_ioctl_ops;
+	jpeg->vdev->minor = -1;
+	jpeg->vdev->release = video_device_release;
+	jpeg->vdev->lock = &jpeg->lock;
+	jpeg->vdev->v4l2_dev = &jpeg->v4l2_dev;
+	jpeg->vdev->vfl_dir = VFL_DIR_M2M;
+	jpeg->vdev->device_caps = V4L2_CAP_STREAMING |
 				      V4L2_CAP_VIDEO_M2M_MPLANE;
 
-	ret = video_register_device(jpeg->dec_vdev, VFL_TYPE_VIDEO, -1);
+	ret = video_register_device(jpeg->vdev, VFL_TYPE_VIDEO, -1);
 	if (ret) {
 		v4l2_err(&jpeg->v4l2_dev, "Failed to register video device\n");
-		goto err_dec_vdev_register;
+		goto err_vfd_jpeg_register;
 	}
 
-	video_set_drvdata(jpeg->dec_vdev, jpeg);
+	video_set_drvdata(jpeg->vdev, jpeg);
 	v4l2_info(&jpeg->v4l2_dev,
 		  "decoder device registered as /dev/video%d (%d,%d)\n",
-		  jpeg->dec_vdev->num, VIDEO_MAJOR, jpeg->dec_vdev->minor);
+		  jpeg->vdev->num, VIDEO_MAJOR, jpeg->vdev->minor);
 
 	platform_set_drvdata(pdev, jpeg);
 
@@ -1102,10 +1104,10 @@ static int mtk_jpeg_probe(struct platform_device *pdev)
 
 	return 0;
 
-err_dec_vdev_register:
-	video_device_release(jpeg->dec_vdev);
+err_vfd_jpeg_register:
+	video_device_release(jpeg->vdev);
 
-err_dec_vdev_alloc:
+err_vfd_jpeg_alloc:
 	v4l2_m2m_release(jpeg->m2m_dev);
 
 err_m2m_init:
@@ -1125,8 +1127,8 @@ static int mtk_jpeg_remove(struct platform_device *pdev)
 	struct mtk_jpeg_dev *jpeg = platform_get_drvdata(pdev);
 
 	pm_runtime_disable(&pdev->dev);
-	video_unregister_device(jpeg->dec_vdev);
-	video_device_release(jpeg->dec_vdev);
+	video_unregister_device(jpeg->vdev);
+	video_device_release(jpeg->vdev);
 	v4l2_m2m_release(jpeg->m2m_dev);
 	v4l2_device_unregister(&jpeg->v4l2_dev);
 
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
index 5fcdf6950782..0b59e48495d5 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
@@ -51,8 +51,8 @@ enum mtk_jpeg_ctx_state {
  * @v4l2_dev:		v4l2 device for mem2mem mode
  * @m2m_dev:		v4l2 mem2mem device data
  * @alloc_ctx:		videobuf2 memory allocator's context
- * @dec_vdev:		video device node for decoder mem2mem mode
- * @dec_reg_base:	JPEG registers mapping
+ * @vdev:		video device node for jpeg mem2mem mode
+ * @reg_base:		JPEG registers mapping
  * @clk_jdec:		JPEG hw working clock
  * @clk_jdec_smi:	JPEG SMI bus clock
  * @larb:		SMI device
@@ -65,8 +65,8 @@ struct mtk_jpeg_dev {
 	struct v4l2_device	v4l2_dev;
 	struct v4l2_m2m_dev	*m2m_dev;
 	void			*alloc_ctx;
-	struct video_device	*dec_vdev;
-	void __iomem		*dec_reg_base;
+	struct video_device	*vdev;
+	void __iomem		*reg_base;
 	struct clk		*clk_jdec;
 	struct clk		*clk_jdec_smi;
 	struct device		*larb;
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h
index 1cc37dbfc8e7..ce263db5f30a 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h
@@ -3,10 +3,11 @@
  * Copyright (c) 2016 MediaTek Inc.
  * Author: Ming Hsiu Tsai <minghsiu.tsai@mediatek.com>
  *         Rick Chang <rick.chang@mediatek.com>
+ *         Xia Jiang <xia.jiang@mediatek.com>
  */
 
-#ifndef _MTK_JPEG_HW_H
-#define _MTK_JPEG_HW_H
+#ifndef _MTK_JPEG_DEC_HW_H
+#define _MTK_JPEG_DEC_HW_H
 
 #include <media/videobuf2-core.h>
 
@@ -75,4 +76,4 @@ void mtk_jpeg_dec_set_config(void __iomem *base,
 void mtk_jpeg_dec_reset(void __iomem *dec_reg_base);
 void mtk_jpeg_dec_start(void __iomem *dec_reg_base);
 
-#endif /* _MTK_JPEG_HW_H */
+#endif /* _MTK_JPEG_DEC_HW_H */
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
