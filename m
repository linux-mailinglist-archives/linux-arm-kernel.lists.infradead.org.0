Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4691E5905
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 09:29:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I6SCvzaHDFOVeAn358cdtLWEh4qwzYHRLt0WiZUaW+I=; b=by8nchHFDPzn90
	S0mCGwKXybo3TAY5n+XcSu+44uInpVHFLRy4TVz0LenuW/nRaDJlH8CAPX/Cyz7I00WrQMJV5rLIv
	FSPE/qiKo4lb0BfByvFe4LBf4nexfCxL0hYZUUFO/IuGloJqb2f7UVQqyUiuyOCpasAjjVz0eOBpi
	0ZAnDkx8SuY4kjOsPAvfnYq2QzKaMB5zrCubxd6zXgYEbU1tRRDWavCvK86MxsmfzRqhgbPa82ipv
	QldTGYXlwbGlrJUjpPo07iUWUcX0MIriu4iie1uxCg/1+4pc2cZV93SKmv4+kf8El3cfkhSA4yLss
	21GNwhezR3mBe2qK97lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOGWB-00056y-TZ; Sat, 26 Oct 2019 07:29:47 +0000
Received: from mailoutvs52.siol.net ([185.57.226.243] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOGVR-0004cS-DI
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 07:29:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 6A4F6523645;
 Sat, 26 Oct 2019 09:28:55 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id MraZ6aiuE6lx; Sat, 26 Oct 2019 09:28:55 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 19A0252367A;
 Sat, 26 Oct 2019 09:28:55 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id C46D6523645;
 Sat, 26 Oct 2019 09:28:52 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH v3 2/2] media: cedrus: Use helpers to access capture queue
Date: Sat, 26 Oct 2019 09:27:52 +0200
Message-Id: <20191026072752.1072711-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191026072752.1072711-1-jernej.skrabec@siol.net>
References: <20191026072752.1072711-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_002901_606275_410E495B 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.243 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Accessing capture queue structue directly is not safe. Use helpers for
that.

Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus.h      | 8 ++++++--
 drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 8 ++++++--
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
index 986e059e3202..c45fb9a7ad07 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
@@ -197,12 +197,16 @@ static inline dma_addr_t cedrus_buf_addr(struct vb2_buffer *buf,
 static inline dma_addr_t cedrus_dst_buf_addr(struct cedrus_ctx *ctx,
 					     int index, unsigned int plane)
 {
-	struct vb2_buffer *buf;
+	struct vb2_buffer *buf = NULL;
+	struct vb2_queue *vq;
 
 	if (index < 0)
 		return 0;
 
-	buf = ctx->fh.m2m_ctx->cap_q_ctx.q.bufs[index];
+	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
+	if (vq)
+		buf = vb2_get_buffer(vq, index);
+
 	return buf ? cedrus_buf_addr(buf, &ctx->dst_fmt, plane) : 0;
 }
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index db336449c4f2..7487f6ab7576 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -97,7 +97,7 @@ static void cedrus_write_frame_list(struct cedrus_ctx *ctx,
 	const struct v4l2_ctrl_h264_decode_params *decode = run->h264.decode_params;
 	const struct v4l2_ctrl_h264_slice_params *slice = run->h264.slice_params;
 	const struct v4l2_ctrl_h264_sps *sps = run->h264.sps;
-	struct vb2_queue *cap_q = &ctx->fh.m2m_ctx->cap_q_ctx.q;
+	struct vb2_queue *cap_q;
 	struct cedrus_buffer *output_buf;
 	struct cedrus_dev *dev = ctx->dev;
 	unsigned long used_dpbs = 0;
@@ -105,6 +105,8 @@ static void cedrus_write_frame_list(struct cedrus_ctx *ctx,
 	unsigned int output = 0;
 	unsigned int i;
 
+	cap_q = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
+
 	memset(pic_list, 0, sizeof(pic_list));
 
 	for (i = 0; i < ARRAY_SIZE(decode->dpb); i++) {
@@ -168,12 +170,14 @@ static void _cedrus_write_ref_list(struct cedrus_ctx *ctx,
 				   enum cedrus_h264_sram_off sram)
 {
 	const struct v4l2_ctrl_h264_decode_params *decode = run->h264.decode_params;
-	struct vb2_queue *cap_q = &ctx->fh.m2m_ctx->cap_q_ctx.q;
+	struct vb2_queue *cap_q;
 	struct cedrus_dev *dev = ctx->dev;
 	u8 sram_array[CEDRUS_MAX_REF_IDX];
 	unsigned int i;
 	size_t size;
 
+	cap_q = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
+
 	memset(sram_array, 0, sizeof(sram_array));
 
 	for (i = 0; i < num_ref; i++) {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
