Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C3BF2066
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 22:07:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0uDaGeH433FoIP3U8UloRe6vo+SljaPu7HkXCBm2hB4=; b=kQHVkg1R3+qS0j
	LE3gXd+24rSgO+ipBB0YSJPjkW82GDjpntXaZBFM1YFdjQrZRP+4uiqejNEp6ny9JzrIBxV4ao6dC
	crKXu2Pi4Ei363r7Rhk+oq4VB/IvTi/wXDYsUm/TOcTwF6GxfDfBck9eVqfnTpBrNviKXyqbH5Z4N
	GShFJTOdgCzfCDMeVkv2GIHze92GvDo/LfoyCOQA/f4YsV7wgJZUcN0EJ762UD+bFELD3Ss8C5kyL
	HIAY790udjCDGUUAkjQz4x9Cim220hWZt9LE49uCvykTK6B116JS5+8Y44y3FrXP192pB/tn0qY0N
	qz1cEV9G454E03PsHHFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSSVv-0004qh-Eg; Wed, 06 Nov 2019 21:06:51 +0000
Received: from mailoutvs55.siol.net ([185.57.226.246] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSSVF-0004OY-5C
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 21:06:11 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id DFEF5524D65;
 Wed,  6 Nov 2019 22:06:06 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id piCD9clFk8gd; Wed,  6 Nov 2019 22:06:06 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 5DB06524A72;
 Wed,  6 Nov 2019 22:06:06 +0100 (CET)
Received: from localhost.localdomain (cpe-86-58-102-7.static.triera.net
 [86.58.102.7]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 0EE64524EEA;
 Wed,  6 Nov 2019 22:06:04 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org, paul.kocialkowski@bootlin.com, hverkuil-cisco@xs4all.nl
Subject: [PATCH v2 2/3] media: cedrus: Fix H264 4k support
Date: Wed,  6 Nov 2019 22:05:37 +0100
Message-Id: <20191106210538.3474-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191106210538.3474-1-jernej.skrabec@siol.net>
References: <20191106210538.3474-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_130609_507517_B3E185F5 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.246 listed in list.dnswl.org]
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
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

H264 decoder needs additional or bigger buffers in order to decode 4k
videos.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus.h   |  7 ++
 .../staging/media/sunxi/cedrus/cedrus_h264.c  | 91 +++++++++++++++++--
 .../staging/media/sunxi/cedrus/cedrus_regs.h  | 11 +++
 3 files changed, 101 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
index c45fb9a7ad07..96765555ab8a 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
@@ -116,8 +116,15 @@ struct cedrus_ctx {
 			ssize_t		mv_col_buf_size;
 			void		*pic_info_buf;
 			dma_addr_t	pic_info_buf_dma;
+			ssize_t		pic_info_buf_size;
 			void		*neighbor_info_buf;
 			dma_addr_t	neighbor_info_buf_dma;
+			void		*deblk_buf;
+			dma_addr_t	deblk_buf_dma;
+			ssize_t		deblk_buf_size;
+			void		*intra_pred_buf;
+			dma_addr_t	intra_pred_buf_dma;
+			ssize_t		intra_pred_buf_size;
 		} h264;
 		struct {
 			void		*mv_col_buf;
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index d2c854ecdf15..ab83a6f1f921 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -39,7 +39,7 @@ struct cedrus_h264_sram_ref_pic {
 #define CEDRUS_H264_FRAME_NUM		18
 
 #define CEDRUS_NEIGHBOR_INFO_BUF_SIZE	(16 * SZ_1K)
-#define CEDRUS_PIC_INFO_BUF_SIZE	(128 * SZ_1K)
+#define CEDRUS_MIN_PIC_INFO_BUF_SIZE       (130 * SZ_1K)
 
 static void cedrus_h264_write_sram(struct cedrus_dev *dev,
 				   enum cedrus_h264_sram_off off,
@@ -342,6 +342,20 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
 		     VE_H264_VLD_ADDR_FIRST | VE_H264_VLD_ADDR_VALID |
 		     VE_H264_VLD_ADDR_LAST);
 
+	if (ctx->src_fmt.width > 2048) {
+		cedrus_write(dev, VE_BUF_CTRL,
+			     VE_BUF_CTRL_INTRAPRED_MIXED_RAM |
+			     VE_BUF_CTRL_DBLK_MIXED_RAM);
+		cedrus_write(dev, VE_DBLK_DRAM_BUF_ADDR,
+			     ctx->codec.h264.deblk_buf_dma);
+		cedrus_write(dev, VE_INTRAPRED_DRAM_BUF_ADDR,
+			     ctx->codec.h264.intra_pred_buf_dma);
+	} else {
+		cedrus_write(dev, VE_BUF_CTRL,
+			     VE_BUF_CTRL_INTRAPRED_INT_SRAM |
+			     VE_BUF_CTRL_DBLK_INT_SRAM);
+	}
+
 	/*
 	 * FIXME: Since the bitstream parsing is done in software, and
 	 * in userspace, this shouldn't be needed anymore. But it
@@ -502,18 +516,30 @@ static void cedrus_h264_setup(struct cedrus_ctx *ctx,
 static int cedrus_h264_start(struct cedrus_ctx *ctx)
 {
 	struct cedrus_dev *dev = ctx->dev;
+	unsigned int pic_info_size;
 	unsigned int field_size;
 	unsigned int mv_col_size;
 	int ret;
 
+	/* Formula for picture buffer size is taken from CedarX source. */
+
+	if (ctx->src_fmt.width > 2048)
+		pic_info_size = CEDRUS_H264_FRAME_NUM * 0x4000;
+	else
+		pic_info_size = CEDRUS_H264_FRAME_NUM * 0x1000;
+
 	/*
-	 * FIXME: It seems that the H6 cedarX code is using a formula
-	 * here based on the size of the frame, while all the older
-	 * code is using a fixed size, so that might need to be
-	 * changed at some point.
+	 * FIXME: If V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY is set,
+	 * there is no need to multiply by 2.
 	 */
+	pic_info_size += ctx->src_fmt.height * 2 * 64;
+
+	if (pic_info_size < CEDRUS_MIN_PIC_INFO_BUF_SIZE)
+		pic_info_size = CEDRUS_MIN_PIC_INFO_BUF_SIZE;
+
+	ctx->codec.h264.pic_info_buf_size = pic_info_size;
 	ctx->codec.h264.pic_info_buf =
-		dma_alloc_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
+		dma_alloc_coherent(dev->dev, ctx->codec.h264.pic_info_buf_size,
 				   &ctx->codec.h264.pic_info_buf_dma,
 				   GFP_KERNEL);
 	if (!ctx->codec.h264.pic_info_buf)
@@ -566,15 +592,56 @@ static int cedrus_h264_start(struct cedrus_ctx *ctx)
 		goto err_neighbor_buf;
 	}
 
+	if (ctx->src_fmt.width > 2048) {
+		/*
+		 * Formulas for deblock and intra prediction buffer sizes
+		 * are taken from CedarX source.
+		 */
+
+		ctx->codec.h264.deblk_buf_size =
+			ALIGN(ctx->src_fmt.width, 32) * 12;
+		ctx->codec.h264.deblk_buf =
+			dma_alloc_coherent(dev->dev,
+					   ctx->codec.h264.deblk_buf_size,
+					   &ctx->codec.h264.deblk_buf_dma,
+					   GFP_KERNEL);
+		if (!ctx->codec.h264.deblk_buf) {
+			ret = -ENOMEM;
+			goto err_mv_col_buf;
+		}
+
+		ctx->codec.h264.intra_pred_buf_size =
+			ALIGN(ctx->src_fmt.width, 64) * 5;
+		ctx->codec.h264.intra_pred_buf =
+			dma_alloc_coherent(dev->dev,
+					   ctx->codec.h264.intra_pred_buf_size,
+					   &ctx->codec.h264.intra_pred_buf_dma,
+					   GFP_KERNEL);
+		if (!ctx->codec.h264.intra_pred_buf) {
+			ret = -ENOMEM;
+			goto err_deblk_buf;
+		}
+	}
+
 	return 0;
 
+err_deblk_buf:
+	dma_free_coherent(dev->dev, ctx->codec.h264.deblk_buf_size,
+			  ctx->codec.h264.deblk_buf,
+			  ctx->codec.h264.deblk_buf_dma);
+
+err_mv_col_buf:
+	dma_free_coherent(dev->dev, ctx->codec.h264.mv_col_buf_size,
+			  ctx->codec.h264.mv_col_buf,
+			  ctx->codec.h264.mv_col_buf_dma);
+
 err_neighbor_buf:
 	dma_free_coherent(dev->dev, CEDRUS_NEIGHBOR_INFO_BUF_SIZE,
 			  ctx->codec.h264.neighbor_info_buf,
 			  ctx->codec.h264.neighbor_info_buf_dma);
 
 err_pic_buf:
-	dma_free_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
+	dma_free_coherent(dev->dev, ctx->codec.h264.pic_info_buf_size,
 			  ctx->codec.h264.pic_info_buf,
 			  ctx->codec.h264.pic_info_buf_dma);
 	return ret;
@@ -590,9 +657,17 @@ static void cedrus_h264_stop(struct cedrus_ctx *ctx)
 	dma_free_coherent(dev->dev, CEDRUS_NEIGHBOR_INFO_BUF_SIZE,
 			  ctx->codec.h264.neighbor_info_buf,
 			  ctx->codec.h264.neighbor_info_buf_dma);
-	dma_free_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
+	dma_free_coherent(dev->dev, ctx->codec.h264.pic_info_buf_size,
 			  ctx->codec.h264.pic_info_buf,
 			  ctx->codec.h264.pic_info_buf_dma);
+	if (ctx->codec.h264.deblk_buf_size)
+		dma_free_coherent(dev->dev, ctx->codec.h264.deblk_buf_size,
+				  ctx->codec.h264.deblk_buf,
+				  ctx->codec.h264.deblk_buf_dma);
+	if (ctx->codec.h264.intra_pred_buf_size)
+		dma_free_coherent(dev->dev, ctx->codec.h264.intra_pred_buf_size,
+				  ctx->codec.h264.intra_pred_buf,
+				  ctx->codec.h264.intra_pred_buf_dma);
 }
 
 static void cedrus_h264_trigger(struct cedrus_ctx *ctx)
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
index ace3d49fcd82..7beb03d3bb39 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
@@ -46,6 +46,17 @@
 #define VE_MODE_DEC_H264			(0x01 << 0)
 #define VE_MODE_DEC_MPEG			(0x00 << 0)
 
+#define VE_BUF_CTRL				0x50
+
+#define VE_BUF_CTRL_INTRAPRED_EXT_RAM		(0x02 << 2)
+#define VE_BUF_CTRL_INTRAPRED_MIXED_RAM		(0x01 << 2)
+#define VE_BUF_CTRL_INTRAPRED_INT_SRAM		(0x00 << 2)
+#define VE_BUF_CTRL_DBLK_EXT_RAM		(0x02 << 0)
+#define VE_BUF_CTRL_DBLK_MIXED_RAM		(0x01 << 0)
+#define VE_BUF_CTRL_DBLK_INT_SRAM		(0x00 << 0)
+
+#define VE_DBLK_DRAM_BUF_ADDR			0x54
+#define VE_INTRAPRED_DRAM_BUF_ADDR		0x58
 #define VE_PRIMARY_CHROMA_BUF_LEN		0xc4
 #define VE_PRIMARY_FB_LINE_STRIDE		0xc8
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
