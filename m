Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B295E591F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 09:50:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9sQ6BaRJPjopaIWXY5FOEaafx2gZNg+rXODaazLszI=; b=dBF81/KAAkVRPj
	b7sHaiODqgXUCpgfffgDGOw+ZvhYuG64jhTp2uMTYuuLcMQSJiB+9UO0Usr5NZIyLBrwGSQHTd3mr
	VnOwBDIRwh6UpZf1LLSGDIM6Ek5pRCxUWFf63982V8XxeDQoInSdkjFjjbXl4gO+ZIItXKpaIf4Yn
	bqGLFTMHj9UR3Dk7ReDUt2RvGNAIFC6yFisynuPMvJlBkQ1Q8sqNu62cSTBOxwESM6XX1y5iTbWV1
	H0QwS0KjVFkMjEb0fzV80wHS1dohk9rL8SWJj8xmUdazG9mwM8dzbGvXUQxAxXqzRXrpq0wGlt9OD
	qi+JRv0607crqsN5cslA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOGqZ-0004Yh-5c; Sat, 26 Oct 2019 07:50:51 +0000
Received: from mailoutvs50.siol.net ([185.57.226.241] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOGq5-0004NF-Pu
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 07:50:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id A32E6521CE2;
 Sat, 26 Oct 2019 09:50:19 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Ifw5_Als-dSp; Sat, 26 Oct 2019 09:50:19 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 30F70521C52;
 Sat, 26 Oct 2019 09:50:19 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id D959C521CE2;
 Sat, 26 Oct 2019 09:50:16 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH 1/3] media: cedrus: Properly signal size in mode register
Date: Sat, 26 Oct 2019 09:49:57 +0200
Message-Id: <20191026074959.1073512-2-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191026074959.1073512-1-jernej.skrabec@siol.net>
References: <20191026074959.1073512-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_005022_166591_57951278 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.241 listed in list.dnswl.org]
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

Mode register also holds information if video width is bigger than 2048
and if it is equal to 4096.

Rework cedrus_engine_enable() to properly signal this properties.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus_h264.c  | 2 +-
 drivers/staging/media/sunxi/cedrus/cedrus_h265.c  | 2 +-
 drivers/staging/media/sunxi/cedrus/cedrus_hw.c    | 9 +++++++--
 drivers/staging/media/sunxi/cedrus/cedrus_hw.h    | 2 +-
 drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c | 2 +-
 drivers/staging/media/sunxi/cedrus/cedrus_regs.h  | 2 ++
 6 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index 7487f6ab7576..d2c854ecdf15 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -485,7 +485,7 @@ static void cedrus_h264_setup(struct cedrus_ctx *ctx,
 {
 	struct cedrus_dev *dev = ctx->dev;
 
-	cedrus_engine_enable(dev, CEDRUS_CODEC_H264);
+	cedrus_engine_enable(ctx, CEDRUS_CODEC_H264);
 
 	cedrus_write(dev, VE_H264_SDROT_CTRL, 0);
 	cedrus_write(dev, VE_H264_EXTRA_BUFFER1,
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
index 9bc921866f70..6945dc74e1d7 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
@@ -276,7 +276,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
 	}
 
 	/* Activate H265 engine. */
-	cedrus_engine_enable(dev, CEDRUS_CODEC_H265);
+	cedrus_engine_enable(ctx, CEDRUS_CODEC_H265);
 
 	/* Source offset and length in bits. */
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
index 570a9165dd5d..3acfa21bc124 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
@@ -30,7 +30,7 @@
 #include "cedrus_hw.h"
 #include "cedrus_regs.h"
 
-int cedrus_engine_enable(struct cedrus_dev *dev, enum cedrus_codec codec)
+int cedrus_engine_enable(struct cedrus_ctx *ctx, enum cedrus_codec codec)
 {
 	u32 reg = 0;
 
@@ -58,7 +58,12 @@ int cedrus_engine_enable(struct cedrus_dev *dev, enum cedrus_codec codec)
 		return -EINVAL;
 	}
 
-	cedrus_write(dev, VE_MODE, reg);
+	if (ctx->src_fmt.width == 4096)
+		reg |= VE_MODE_PIC_WIDTH_IS_4096;
+	if (ctx->src_fmt.width > 2048)
+		reg |= VE_MODE_PIC_WIDTH_MORE_2048;
+
+	cedrus_write(ctx->dev, VE_MODE, reg);
 
 	return 0;
 }
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.h b/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
index 27d0882397aa..604ff932fbf5 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
@@ -16,7 +16,7 @@
 #ifndef _CEDRUS_HW_H_
 #define _CEDRUS_HW_H_
 
-int cedrus_engine_enable(struct cedrus_dev *dev, enum cedrus_codec codec);
+int cedrus_engine_enable(struct cedrus_ctx *ctx, enum cedrus_codec codec);
 void cedrus_engine_disable(struct cedrus_dev *dev);
 
 void cedrus_dst_format_set(struct cedrus_dev *dev,
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c b/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c
index 13c34927bad5..8bcd6b8f9e2d 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c
@@ -96,7 +96,7 @@ static void cedrus_mpeg2_setup(struct cedrus_ctx *ctx, struct cedrus_run *run)
 	quantization = run->mpeg2.quantization;
 
 	/* Activate MPEG engine. */
-	cedrus_engine_enable(dev, CEDRUS_CODEC_MPEG2);
+	cedrus_engine_enable(ctx, CEDRUS_CODEC_MPEG2);
 
 	/* Set intra quantization matrix. */
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
index 4275a307d282..ace3d49fcd82 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
@@ -35,6 +35,8 @@
 
 #define VE_MODE					0x00
 
+#define VE_MODE_PIC_WIDTH_IS_4096		BIT(22)
+#define VE_MODE_PIC_WIDTH_MORE_2048		BIT(21)
 #define VE_MODE_REC_WR_MODE_2MB			(0x01 << 20)
 #define VE_MODE_REC_WR_MODE_1MB			(0x00 << 20)
 #define VE_MODE_DDR_MODE_BW_128			(0x03 << 16)
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
