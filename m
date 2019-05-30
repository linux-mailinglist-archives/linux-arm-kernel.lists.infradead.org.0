Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D847630403
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 23:16:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ipGfULYBgc9+bu1zZPFq6DX6vLXFXIZ/mrCn4PgYzw=; b=uMd1EXYBBWnGVF
	QU24iRvsa4NNxi2cd90lmngf+mQZiMpeECNdKyQ/bf3FmPNAHQCI7MhzO6JivEh/j8a/0PaHAwr6b
	RZyIUEdLtmKkwqsYPjQdSh8TTZ6P4+imvaxKnLjsKrzQ9VzcrlcDjcoEf3EtBHnm25lnQ7knLul3+
	3ZkDTlWR4PXr6oiNV345KLT2ZU48Purtg4NgCRDAkgDr2MNLhhZTOioeeMPcGPgNIti+X/rqNoACv
	O4ue9PsponSLSxobbQJYaOioXDwlkmp6CHnqrmriULb1DNLCPgNLbMsce/JcPHaQmglSwCGFbY5mw
	SQx+QSKKb3WV9yfcIlLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWSPg-00013k-Q8; Thu, 30 May 2019 21:16:40 +0000
Received: from mailoutvs7.siol.net ([185.57.226.198] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWSOj-00005n-Tr
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 21:15:43 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 921095227EC;
 Thu, 30 May 2019 23:15:40 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id r9Y_XVt21vjG; Thu, 30 May 2019 23:15:40 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 2C5BA5228C1;
 Thu, 30 May 2019 23:15:40 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id DAF1E5228C2;
 Thu, 30 May 2019 23:15:37 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: paul.kocialkowski@bootlin.com,
	maxime.ripard@bootlin.com
Subject: [PATCH 4/7] media: cedrus: Remove dst_bufs from context
Date: Thu, 30 May 2019 23:15:13 +0200
Message-Id: <20190530211516.1891-5-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190530211516.1891-1-jernej.skrabec@siol.net>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_141542_117706_25283CB0 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-kernel@vger.kernel.org, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This array is just duplicated capture buffer queue. Remove it and adjust
code to look into capture buffer queue instead.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus.h   |  4 +---
 .../staging/media/sunxi/cedrus/cedrus_h264.c  |  4 ++--
 .../staging/media/sunxi/cedrus/cedrus_video.c | 22 -------------------
 3 files changed, 3 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
index 3f476d0fd981..d8e6777e5e27 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
@@ -100,8 +100,6 @@ struct cedrus_ctx {
 	struct v4l2_ctrl_handler	hdl;
 	struct v4l2_ctrl		**ctrls;
 
-	struct vb2_buffer		*dst_bufs[VIDEO_MAX_FRAME];
-
 	union {
 		struct {
 			void		*mv_col_buf;
@@ -187,7 +185,7 @@ static inline dma_addr_t cedrus_dst_buf_addr(struct cedrus_ctx *ctx,
 	if (index < 0)
 		return 0;
 
-	buf = ctx->dst_bufs[index];
+	buf = ctx->fh.m2m_ctx->cap_q_ctx.q.bufs[index];
 	return buf ? cedrus_buf_addr(buf, &ctx->dst_fmt, plane) : 0;
 }
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index d0ee3f90ff46..b2290f98d81a 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -119,7 +119,7 @@ static void cedrus_write_frame_list(struct cedrus_ctx *ctx,
 		if (buf_idx < 0)
 			continue;
 
-		cedrus_buf = vb2_to_cedrus_buffer(ctx->dst_bufs[buf_idx]);
+		cedrus_buf = vb2_to_cedrus_buffer(cap_q->bufs[buf_idx]);
 		position = cedrus_buf->codec.h264.position;
 		used_dpbs |= BIT(position);
 
@@ -194,7 +194,7 @@ static void _cedrus_write_ref_list(struct cedrus_ctx *ctx,
 		if (buf_idx < 0)
 			continue;
 
-		ref_buf = to_vb2_v4l2_buffer(ctx->dst_bufs[buf_idx]);
+		ref_buf = to_vb2_v4l2_buffer(cap_q->bufs[buf_idx]);
 		cedrus_buf = vb2_v4l2_to_cedrus_buffer(ref_buf);
 		position = cedrus_buf->codec.h264.position;
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index e2b530b1a956..681dfe3367a6 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -411,26 +411,6 @@ static void cedrus_queue_cleanup(struct vb2_queue *vq, u32 state)
 	}
 }
 
-static int cedrus_buf_init(struct vb2_buffer *vb)
-{
-	struct vb2_queue *vq = vb->vb2_queue;
-	struct cedrus_ctx *ctx = vb2_get_drv_priv(vq);
-
-	if (!V4L2_TYPE_IS_OUTPUT(vq->type))
-		ctx->dst_bufs[vb->index] = vb;
-
-	return 0;
-}
-
-static void cedrus_buf_cleanup(struct vb2_buffer *vb)
-{
-	struct vb2_queue *vq = vb->vb2_queue;
-	struct cedrus_ctx *ctx = vb2_get_drv_priv(vq);
-
-	if (!V4L2_TYPE_IS_OUTPUT(vq->type))
-		ctx->dst_bufs[vb->index] = NULL;
-}
-
 static int cedrus_buf_out_validate(struct vb2_buffer *vb)
 {
 	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
@@ -517,8 +497,6 @@ static void cedrus_buf_request_complete(struct vb2_buffer *vb)
 static struct vb2_ops cedrus_qops = {
 	.queue_setup		= cedrus_queue_setup,
 	.buf_prepare		= cedrus_buf_prepare,
-	.buf_init		= cedrus_buf_init,
-	.buf_cleanup		= cedrus_buf_cleanup,
 	.buf_queue		= cedrus_buf_queue,
 	.buf_out_validate	= cedrus_buf_out_validate,
 	.buf_request_complete	= cedrus_buf_request_complete,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
