Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6DAC927C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 21:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAQak2X2FPiyk5J4FvzYZ9q3CRWUBQWfS4dRb6/vS9Y=; b=kypT7e1DMWMg0K
	LcMaBcE31LhdCmVLHKp6ZSBMfRG/NqD0jw70waTF9eq1k4dIzBxBY6Ecu3irmyxkE1SHNF1XEtAy5
	ihdWXLjXJ4DRUkod8qmo/MLu5nYR6+DS7s/ks7NbM0THL3/EDi+gnXPnmt70dMIxjmwcYXkXFiKFV
	X7KVPYu/RX6oVyzCCt+hVWwTmnWpprhbyCS1R+9Mb9AqUrhdB801YBXVNcEMUx1d4yDCU6SNKK6m/
	ZF0XygYzCFnc4TSdxIw888VOOsn3v0aKTsh3Nlxxeo9z4MzwqQqx5vh+ht8+uDd35pUQ+lVP3AYPv
	u+3FV+Es510XyG9cfEOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFkQi-0006Ae-TM; Wed, 02 Oct 2019 19:36:56 +0000
Received: from mailoutvs32.siol.net ([185.57.226.223] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFkPy-0005Tk-2X
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 19:36:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id DBBFC523B2B;
 Wed,  2 Oct 2019 21:36:07 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id HIr41ruBPwmH; Wed,  2 Oct 2019 21:36:07 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 8994F523B0A;
 Wed,  2 Oct 2019 21:36:07 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 3F4AE523B34;
 Wed,  2 Oct 2019 21:36:05 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH v2 3/3] media: cedrus: Use helpers to access capture queue
Date: Wed,  2 Oct 2019 21:35:53 +0200
Message-Id: <20191002193553.1633467-4-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191002193553.1633467-1-jernej.skrabec@siol.net>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_123610_428528_C60CEC01 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.223 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, wens@csie.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Accessing capture queue structue directly is not safe. Use helpers for
that.

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
index 4a0e69855c7f..4650982c69a8 100644
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
