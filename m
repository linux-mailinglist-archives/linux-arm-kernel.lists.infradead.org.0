Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D10EE5E50
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 19:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r17nyaMMmUnzwjElsGq6khjChSp/2fAQfqzFnlluyV8=; b=JMeiXScYsAmC/X
	0gEcodLxGhxDHXUCVfDFR+z6LncOSXLO28wAMbtV5QbqbBB35A1rfXj8tfV1oDdej0vb+Y3q17DIu
	26M60tx6njLDhZ3F4eZR0qNyIu3/9B0U+em5JyfDRHF9Hpn6eE+24NRPOXLil2YEloMMHDDSIQiDh
	I3LzcMGW0ZuJt4omyHzZQEbnchSxyq9OZ+WGI0s78Jeh5lsQTXZhu3fWb3tg0iEdsQwddm2MSeKcM
	DwGXMzctNSIHRkvaKRSiWCv/zBmcCWKj3jajyco6LdJlRIT4nOJJjEzJdQDYYJka9Il6YBBFFPdvc
	T/wa7i35/CDH/ULJOSWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOQB9-0006lu-Lq; Sat, 26 Oct 2019 17:48:43 +0000
Received: from mailoutvs53.siol.net ([185.57.226.244] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOQ9u-0005lX-8W
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 17:47:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 2D7AE523991;
 Sat, 26 Oct 2019 19:47:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 78Q2iftWDMu5; Sat, 26 Oct 2019 19:47:23 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id CC977520606;
 Sat, 26 Oct 2019 19:47:23 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 76B70523991;
 Sat, 26 Oct 2019 19:47:21 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH 4/4] media: cedrus: hevc: Add support for multiple slices
Date: Sat, 26 Oct 2019 19:47:03 +0200
Message-Id: <20191026174703.1120023-5-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191026174703.1120023-1-jernej.skrabec@siol.net>
References: <20191026174703.1120023-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_104726_474424_6EB22416 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.244 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 boris.brezillon@collabora.com, p.zabel@pengutronix.de,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that segment address is available, support for multi-slice frames
can be easily added.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 .../staging/media/sunxi/cedrus/cedrus_h265.c  | 21 +++++++++++++++----
 .../staging/media/sunxi/cedrus/cedrus_video.c |  1 +
 2 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
index 888bfd5ca224..e909adf6f30f 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
@@ -366,15 +366,28 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
 	reg = VE_DEC_H265_BITS_END_ADDR_BASE(src_buf_end_addr);
 	cedrus_write(dev, VE_DEC_H265_BITS_END_ADDR, reg);
 
-	/* Coding tree block address: start at the beginning. */
+	/* Coding tree block address */
 	reg = VE_DEC_H265_DEC_CTB_ADDR_X(0) | VE_DEC_H265_DEC_CTB_ADDR_Y(0);
+	if (!ctx->fh.m2m_ctx->new_frame) {
+		unsigned int log2_max_luma_coding_block_size =
+			sps->log2_min_luma_coding_block_size_minus3 + 3 +
+			sps->log2_diff_max_min_luma_coding_block_size;
+		unsigned int ctb_size_luma =
+			1UL << log2_max_luma_coding_block_size;
+		unsigned int width_in_ctb_luma =
+			DIV_ROUND_UP(sps->pic_width_in_luma_samples, ctb_size_luma);
+
+		reg = VE_DEC_H265_DEC_CTB_ADDR_X(slice_params->slice_segment_addr % width_in_ctb_luma);
+		reg |= VE_DEC_H265_DEC_CTB_ADDR_Y(slice_params->slice_segment_addr / width_in_ctb_luma);
+	}
 	cedrus_write(dev, VE_DEC_H265_DEC_CTB_ADDR, reg);
 
 	cedrus_write(dev, VE_DEC_H265_TILE_START_CTB, 0);
 	cedrus_write(dev, VE_DEC_H265_TILE_END_CTB, 0);
 
 	/* Clear the number of correctly-decoded coding tree blocks. */
-	cedrus_write(dev, VE_DEC_H265_DEC_CTB_NUM, 0);
+	if (ctx->fh.m2m_ctx->new_frame)
+		cedrus_write(dev, VE_DEC_H265_DEC_CTB_NUM, 0);
 
 	/* Initialize bitstream access. */
 	cedrus_write(dev, VE_DEC_H265_TRIGGER, VE_DEC_H265_TRIGGER_INIT_SWDEC);
@@ -523,8 +536,8 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
