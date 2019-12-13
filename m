Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C65911E7A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:06:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iyIiCkLkQDAptPpmgcxaqPKp9nSoeDcjkcsPa+ehEFE=; b=JsmSart0N3Gi5Q
	0+TRZL0sGkPrOc6eDlxnxcfQGZ514SEY4k25adBTi8ErGDvIQsAtb9bArDDwbC28A93IM80pZx3GA
	P+JU5zpV+Gfa1Gl+O7yadRenzFFX690DBlWp4zHbexqwKeq+zW3OqZHbnPu+fE7HAiRIF3EUI1K56
	Cnt7rQ8SY+YtvAxjbwufpEXJcwC14lU++nmPk+MWRNstluIojv9SS3ZSfj5f3tRcRgT5kqnx+6dp6
	a+0h/VRS4XmxXR9zFIDyrXFKBKZ2kX1WjjrE50wXhrv0qfa8wgJSAI+oRpNgI8wgNhPqkyL7mH11I
	rGnVv6wpIyAkcejZ3GxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnSJ-0003ew-TX; Fri, 13 Dec 2019 16:06:15 +0000
Received: from mailoutvs51.siol.net ([185.57.226.242] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnQv-0001RT-Ue
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:04:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id CD37B524565;
 Fri, 13 Dec 2019 17:04:47 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id ATbi4QIs82Ql; Fri, 13 Dec 2019 17:04:47 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 6BEDE524543;
 Fri, 13 Dec 2019 17:04:47 +0100 (CET)
Received: from localhost.localdomain (cpe-86-58-102-7.static.triera.net
 [86.58.102.7]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 2B84E52455E;
 Fri, 13 Dec 2019 17:04:45 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mchehab@kernel.org, mripard@kernel.org, paul.kocialkowski@bootlin.com,
 hverkuil@xs4all.nl
Subject: [PATCH v2 4/4] media: cedrus: hevc: Add support for multiple slices
Date: Fri, 13 Dec 2019 17:04:28 +0100
Message-Id: <20191213160428.54303-5-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213160428.54303-1-jernej.skrabec@siol.net>
References: <20191213160428.54303-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_080450_140502_71229031 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.242 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that segment address is available, support for multi-slice frames
can be easily added.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 .../staging/media/sunxi/cedrus/cedrus_h265.c  | 26 ++++++++++++-------
 .../staging/media/sunxi/cedrus/cedrus_video.c |  1 +
 2 files changed, 17 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
index 888bfd5ca224..109d3289418c 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
@@ -291,6 +291,8 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
 	const struct v4l2_ctrl_hevc_pps *pps;
 	const struct v4l2_ctrl_hevc_slice_params *slice_params;
 	const struct v4l2_hevc_pred_weight_table *pred_weight_table;
+	unsigned int width_in_ctb_luma, ctb_size_luma;
+	unsigned int log2_max_luma_coding_block_size;
 	dma_addr_t src_buf_addr;
 	dma_addr_t src_buf_end_addr;
 	u32 chroma_log2_weight_denom;
@@ -303,15 +305,17 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
 	slice_params = run->h265.slice_params;
 	pred_weight_table = &slice_params->pred_weight_table;
 
+	log2_max_luma_coding_block_size =
+		sps->log2_min_luma_coding_block_size_minus3 + 3 +
+		sps->log2_diff_max_min_luma_coding_block_size;
+	ctb_size_luma = 1UL << log2_max_luma_coding_block_size;
+	width_in_ctb_luma =
+		DIV_ROUND_UP(sps->pic_width_in_luma_samples, ctb_size_luma);
+
 	/* MV column buffer size and allocation. */
 	if (!ctx->codec.h265.mv_col_buf_size) {
 		unsigned int num_buffers =
 			run->dst->vb2_buf.vb2_queue->num_buffers;
-		unsigned int log2_max_luma_coding_block_size =
-			sps->log2_min_luma_coding_block_size_minus3 + 3 +
-			sps->log2_diff_max_min_luma_coding_block_size;
-		unsigned int ctb_size_luma =
-			1UL << log2_max_luma_coding_block_size;
 
 		/*
 		 * Each CTB requires a MV col buffer with a specific unit size.
@@ -366,15 +370,17 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
 	reg = VE_DEC_H265_BITS_END_ADDR_BASE(src_buf_end_addr);
 	cedrus_write(dev, VE_DEC_H265_BITS_END_ADDR, reg);
 
-	/* Coding tree block address: start at the beginning. */
-	reg = VE_DEC_H265_DEC_CTB_ADDR_X(0) | VE_DEC_H265_DEC_CTB_ADDR_Y(0);
+	/* Coding tree block address */
+	reg = VE_DEC_H265_DEC_CTB_ADDR_X(slice_params->slice_segment_addr % width_in_ctb_luma);
+	reg |= VE_DEC_H265_DEC_CTB_ADDR_Y(slice_params->slice_segment_addr / width_in_ctb_luma);
 	cedrus_write(dev, VE_DEC_H265_DEC_CTB_ADDR, reg);
 
 	cedrus_write(dev, VE_DEC_H265_TILE_START_CTB, 0);
 	cedrus_write(dev, VE_DEC_H265_TILE_END_CTB, 0);
 
 	/* Clear the number of correctly-decoded coding tree blocks. */
-	cedrus_write(dev, VE_DEC_H265_DEC_CTB_NUM, 0);
+	if (ctx->fh.m2m_ctx->new_frame)
+		cedrus_write(dev, VE_DEC_H265_DEC_CTB_NUM, 0);
 
 	/* Initialize bitstream access. */
 	cedrus_write(dev, VE_DEC_H265_TRIGGER, VE_DEC_H265_TRIGGER_INIT_SWDEC);
@@ -523,8 +529,8 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
 				V4L2_HEVC_PPS_FLAG_DEPENDENT_SLICE_SEGMENT,
 				pps->flags);
 
-	/* FIXME: For multi-slice support. */
-	reg |= VE_DEC_H265_DEC_SLICE_HDR_INFO0_FLAG_FIRST_SLICE_SEGMENT_IN_PIC;
+	if (ctx->fh.m2m_ctx->new_frame)
+		reg |= VE_DEC_H265_DEC_SLICE_HDR_INFO0_FLAG_FIRST_SLICE_SEGMENT_IN_PIC;
 
 	cedrus_write(dev, VE_DEC_H265_DEC_SLICE_HDR_INFO0, reg);
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 15cf1f10221b..497b1199d3fe 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -311,6 +311,7 @@ static int cedrus_s_fmt_vid_out(struct file *file, void *priv,
 
 	switch (ctx->src_fmt.pixelformat) {
 	case V4L2_PIX_FMT_H264_SLICE:
+	case V4L2_PIX_FMT_HEVC_SLICE:
 		vq->subsystem_flags |=
 			VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF;
 		break;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
