Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8B330402
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 23:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R3pDLU025l1oDTCmsjEZJZRmJiXz8Wy4+edyZlUdD9U=; b=e5u/H1Im2LJiGz
	doZjgaAqPlZUF+QaimGqxz1V6jO1b2iwPNhs05j5hIsiQvpdYOexZQtPSDjvlaOrBNr2eU9C3Skot
	2JuhqBHfs/3fiuqLo5GqjWWWaZx+iKiVUrEPVijgSjbFN6ez70oVOEY9v0tzZn+Hi9nP7rU1niIni
	7LeEQXkiy1l8UHLRNuGHq98ePgpg3gLR2P8ii/G8JyMM4ciqiUvZSZnlpMexXSVepBtsACTQlRcYC
	n/OPwIBuF676fcl59Ibc014seBI3WHcRdK4S4kiYE6l63yU/u+DuiW1DJjlh87lcSnREsBY8qS6iJ
	izuuykAwobqwTYQR/nZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWSPV-0000pF-P1; Thu, 30 May 2019 21:16:29 +0000
Received: from mailoutvs8.siol.net ([185.57.226.199] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWSOi-0008VG-Bc
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 21:15:43 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 315DB522886;
 Thu, 30 May 2019 23:15:38 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id PPEPfU0nYuBA; Thu, 30 May 2019 23:15:37 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id D4DE45228C1;
 Thu, 30 May 2019 23:15:37 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 8FA5F522886;
 Thu, 30 May 2019 23:15:35 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: paul.kocialkowski@bootlin.com,
	maxime.ripard@bootlin.com
Subject: [PATCH 3/7] media: cedrus: Fix decoding for some H264 videos
Date: Thu, 30 May 2019 23:15:12 +0200
Message-Id: <20190530211516.1891-4-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190530211516.1891-1-jernej.skrabec@siol.net>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_141540_553237_3AD8BBC3 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.199 listed in list.dnswl.org]
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

It seems that for some H264 videos at least one bitstream parsing
trigger must be called in order to be decoded correctly. There is no
explanation why this helps, but it was observed that two sample videos
with this fix are now decoded correctly and there is no regression with
others.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
I have two samples which are fixed by this:
http://jernej.libreelec.tv/videos/h264/test.mkv
http://jernej.libreelec.tv/videos/h264/Dredd%20%E2%80%93%20DTS%20Sound%20Check%20DTS-HD%20MA%207.1.m2ts

Although second one also needs support for multi-slice frames, which is not yet implemented here.

 .../staging/media/sunxi/cedrus/cedrus_h264.c  | 22 ++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index cc8d17f211a1..d0ee3f90ff46 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -6,6 +6,7 @@
  * Copyright (c) 2018 Bootlin
  */
 
+#include <linux/delay.h>
 #include <linux/types.h>
 
 #include <media/videobuf2-dma-contig.h>
@@ -289,6 +290,20 @@ static void cedrus_write_pred_weight_table(struct cedrus_ctx *ctx,
 	}
 }
 
+static void cedrus_skip_bits(struct cedrus_dev *dev, int num)
+{
+	for (; num > 32; num -= 32) {
+		cedrus_write(dev, VE_H264_TRIGGER_TYPE, 0x3 | (32 << 8));
+		while (cedrus_read(dev, VE_H264_STATUS) & (1 << 8))
+			udelay(1);
+	}
+	if (num > 0) {
+		cedrus_write(dev, VE_H264_TRIGGER_TYPE, 0x3 | (num << 8));
+		while (cedrus_read(dev, VE_H264_STATUS) & (1 << 8))
+			udelay(1);
+	}
+}
+
 static void cedrus_set_params(struct cedrus_ctx *ctx,
 			      struct cedrus_run *run)
 {
@@ -299,12 +314,11 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
 	struct vb2_buffer *src_buf = &run->src->vb2_buf;
 	struct cedrus_dev *dev = ctx->dev;
 	dma_addr_t src_buf_addr;
-	u32 offset = slice->header_bit_size;
-	u32 len = (slice->size * 8) - offset;
+	u32 len = slice->size * 8;
 	u32 reg;
 
 	cedrus_write(dev, VE_H264_VLD_LEN, len);
-	cedrus_write(dev, VE_H264_VLD_OFFSET, offset);
+	cedrus_write(dev, VE_H264_VLD_OFFSET, 0);
 
 	src_buf_addr = vb2_dma_contig_plane_dma_addr(src_buf, 0);
 	cedrus_write(dev, VE_H264_VLD_END,
@@ -323,6 +337,8 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
 	cedrus_write(dev, VE_H264_TRIGGER_TYPE,
 		     VE_H264_TRIGGER_TYPE_INIT_SWDEC);
 
+	cedrus_skip_bits(dev, slice->header_bit_size);
+
 	if (((pps->flags & V4L2_H264_PPS_FLAG_WEIGHTED_PRED) &&
 	     (slice->slice_type == V4L2_H264_SLICE_TYPE_P ||
 	      slice->slice_type == V4L2_H264_SLICE_TYPE_SP)) ||
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
