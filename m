Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B6AE5904
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 09:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJnG+YxxY5vFUWcNkXFC4Lx11io2lKGEyKkOPz8jLFA=; b=XFIZc3qt8cuCGX
	1RdTt0jaNJRPyjmb3UsTDeCFN7ogpP/FVNNLvTF7XD1yArSVgor/0bSsaOLbCdXA6jcmgyAfSQ4ph
	TxjKwUdN3Tuy2EfuPoQWZelpZXtV1+pgZ1WZ4WitWbIF4YLa0bTgxXWTBb5csEVARfSGplIIyP7nu
	J+zjAUeMAkP1LQoI1w+coEPe4cZlLqHuTAFHgaEE+M8LvHzR+D9iuHd6rxpmugNCn55LJwSUwRgXl
	5l2uTgMqsAmdNJLGPKNoaQPnh+LAP7vhZ8MfpxjMfKvAlsX9fSez00d7tspibT3TSMylDxlDUXFhK
	xKIUb0F6SOib9q2G/biQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOGVv-0004lS-AO; Sat, 26 Oct 2019 07:29:31 +0000
Received: from mailoutvs8.siol.net ([185.57.226.199] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOGVR-0004cQ-D0
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 07:29:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 32D19523640;
 Sat, 26 Oct 2019 09:28:53 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id b3kdWy_p_ya4; Sat, 26 Oct 2019 09:28:52 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id C23E852363D;
 Sat, 26 Oct 2019 09:28:52 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 623C5523640;
 Sat, 26 Oct 2019 09:28:50 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH v3 1/2] media: cedrus: Fix decoding for some H264 videos
Date: Sat, 26 Oct 2019 09:27:51 +0200
Message-Id: <20191026072752.1072711-2-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191026072752.1072711-1-jernej.skrabec@siol.net>
References: <20191026072752.1072711-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_002901_601303_52229BB9 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.199 listed in list.dnswl.org]
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

It seems that for some H264 videos at least one bitstream parsing
trigger must be called in order to be decoded correctly. There is no
explanation why this helps, but it was observed that two sample videos
with this fix are now decoded correctly and there is no regression with
others.

Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 .../staging/media/sunxi/cedrus/cedrus_h264.c  | 30 +++++++++++++++++--
 .../staging/media/sunxi/cedrus/cedrus_regs.h  |  3 ++
 2 files changed, 30 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index cd85668f9c80..db336449c4f2 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -6,6 +6,7 @@
  * Copyright (c) 2018 Bootlin
  */
 
+#include <linux/delay.h>
 #include <linux/types.h>
 
 #include <media/videobuf2-dma-contig.h>
@@ -289,6 +290,28 @@ static void cedrus_write_pred_weight_table(struct cedrus_ctx *ctx,
 	}
 }
 
+/*
+ * It turns out that using VE_H264_VLD_OFFSET to skip bits is not reliable. In
+ * rare cases frame is not decoded correctly. However, setting offset to 0 and
+ * skipping appropriate amount of bits with flush bits trigger always works.
+ */
+static void cedrus_skip_bits(struct cedrus_dev *dev, int num)
+{
+	int count = 0;
+
+	while (count < num) {
+		int tmp = min(num - count, 32);
+
+		cedrus_write(dev, VE_H264_TRIGGER_TYPE,
+			     VE_H264_TRIGGER_TYPE_FLUSH_BITS |
+			     VE_H264_TRIGGER_TYPE_N_BITS(tmp));
+		while (cedrus_read(dev, VE_H264_STATUS) & VE_H264_STATUS_VLD_BUSY)
+			udelay(1);
+
+		count += tmp;
+	}
+}
+
 static void cedrus_set_params(struct cedrus_ctx *ctx,
 			      struct cedrus_run *run)
 {
@@ -299,14 +322,13 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
 	struct vb2_buffer *src_buf = &run->src->vb2_buf;
 	struct cedrus_dev *dev = ctx->dev;
 	dma_addr_t src_buf_addr;
-	u32 offset = slice->header_bit_size;
-	u32 len = (slice->size * 8) - offset;
+	u32 len = slice->size * 8;
 	unsigned int pic_width_in_mbs;
 	bool mbaff_pic;
 	u32 reg;
 
 	cedrus_write(dev, VE_H264_VLD_LEN, len);
-	cedrus_write(dev, VE_H264_VLD_OFFSET, offset);
+	cedrus_write(dev, VE_H264_VLD_OFFSET, 0);
 
 	src_buf_addr = vb2_dma_contig_plane_dma_addr(src_buf, 0);
 	cedrus_write(dev, VE_H264_VLD_END,
@@ -325,6 +347,8 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
 	cedrus_write(dev, VE_H264_TRIGGER_TYPE,
 		     VE_H264_TRIGGER_TYPE_INIT_SWDEC);
 
+	cedrus_skip_bits(dev, slice->header_bit_size);
+
 	if (((pps->flags & V4L2_H264_PPS_FLAG_WEIGHTED_PRED) &&
 	     (slice->slice_type == V4L2_H264_SLICE_TYPE_P ||
 	      slice->slice_type == V4L2_H264_SLICE_TYPE_SP)) ||
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
index 6fc28d21a6c7..4275a307d282 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
@@ -541,13 +541,16 @@
 					 VE_H264_CTRL_SLICE_DECODE_INT)
 
 #define VE_H264_TRIGGER_TYPE		0x224
+#define VE_H264_TRIGGER_TYPE_N_BITS(x)		(((x) & 0x3f) << 8)
 #define VE_H264_TRIGGER_TYPE_AVC_SLICE_DECODE	(8 << 0)
 #define VE_H264_TRIGGER_TYPE_INIT_SWDEC		(7 << 0)
+#define VE_H264_TRIGGER_TYPE_FLUSH_BITS		(3 << 0)
 
 #define VE_H264_STATUS			0x228
 #define VE_H264_STATUS_VLD_DATA_REQ_INT		VE_H264_CTRL_VLD_DATA_REQ_INT
 #define VE_H264_STATUS_DECODE_ERR_INT		VE_H264_CTRL_DECODE_ERR_INT
 #define VE_H264_STATUS_SLICE_DECODE_INT		VE_H264_CTRL_SLICE_DECODE_INT
+#define VE_H264_STATUS_VLD_BUSY			BIT(8)
 
 #define VE_H264_STATUS_INT_MASK			VE_H264_CTRL_INT_MASK
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
