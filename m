Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2605130412
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 23:17:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWXhIV2B/p2lXFmz3+LUBPrr2nLSXi4kkleav0GSEIw=; b=DnTgLooY8jMTmd
	F4s1CDFrUDnIBLdC2sWcA2QZ37jHWY73JCl572OvseuG+0vw472wONxSjQv2eiNs4MjU9EVyEEFw1
	CK1ElpdYm7uBVjuuBFXGgvgFA0ZqzWEJ3NzjSdYUvPc9nsRoC5ETtdMQDeDuFOf2TbVsvUllDpW7Y
	4QmJZuPBIt/UuXZtjP7bTFDUMtqROvm8sKyc5XzSFov8HZNxqwlswa70Na9awSTJMEq5WkAVKsCVA
	SyXXzNaxjPtykrCgU81pd+dG1sXFUiRzRl6ZUNMLmaeS0cAhBRmEeRkkTQ2/lJT6qYoXqPeVX34jZ
	ZS5P4R8LwctMkLrGQnyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWSQ1-0001YL-Nu; Thu, 30 May 2019 21:17:01 +0000
Received: from mailoutvs35.siol.net ([185.57.226.226] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWSOp-0000B0-Kz
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 21:15:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 1B9BF52286B;
 Thu, 30 May 2019 23:15:45 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id uezCuMHm-0Ve; Thu, 30 May 2019 23:15:44 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id C27FC5227EC;
 Thu, 30 May 2019 23:15:44 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 7E01D5228C1;
 Thu, 30 May 2019 23:15:42 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: paul.kocialkowski@bootlin.com,
	maxime.ripard@bootlin.com
Subject: [PATCH 6/7] media: cedrus: Add infra for extra buffers connected to
 capture buffers
Date: Thu, 30 May 2019 23:15:15 +0200
Message-Id: <20190530211516.1891-7-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190530211516.1891-1-jernej.skrabec@siol.net>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_141548_321388_403FB547 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.226 listed in list.dnswl.org]
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

H264 and HEVC engines need additional buffers for each capture buffer.
H264 engine has this currently solved by allocating fixed size pool,
which is not ideal. Most of the time pool size is much bigger than it
needs to be.

Ideally, extra buffer should be allocated at buffer initialization, but
that's not efficient. It's size in H264 depends on flags set in SPS, but
that information is not available in buffer init callback.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus.h   |  4 ++++
 .../staging/media/sunxi/cedrus/cedrus_video.c | 19 +++++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
index d8e6777e5e27..16c1bdfd243a 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
@@ -81,6 +81,10 @@ struct cedrus_run {
 struct cedrus_buffer {
 	struct v4l2_m2m_buffer          m2m_buf;
 
+	void		*extra_buf;
+	dma_addr_t	extra_buf_dma;
+	ssize_t		extra_buf_size;
+
 	union {
 		struct {
 			unsigned int			position;
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 681dfe3367a6..d756e0e69634 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -411,6 +411,24 @@ static void cedrus_queue_cleanup(struct vb2_queue *vq, u32 state)
 	}
 }
 
+static void cedrus_buf_cleanup(struct vb2_buffer *vb)
+{
+	struct vb2_queue *vq = vb->vb2_queue;
+
+	if (!V4L2_TYPE_IS_OUTPUT(vq->type)) {
+		struct cedrus_ctx *ctx = vb2_get_drv_priv(vq);
+		struct cedrus_buffer *cedrus_buf;
+
+		cedrus_buf = vb2_to_cedrus_buffer(vq->bufs[vb->index]);
+
+		if (cedrus_buf->extra_buf_size)
+			dma_free_coherent(ctx->dev->dev,
+					  cedrus_buf->extra_buf_size,
+					  cedrus_buf->extra_buf,
+					  cedrus_buf->extra_buf_dma);
+	}
+}
+
 static int cedrus_buf_out_validate(struct vb2_buffer *vb)
 {
 	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
@@ -497,6 +515,7 @@ static void cedrus_buf_request_complete(struct vb2_buffer *vb)
 static struct vb2_ops cedrus_qops = {
 	.queue_setup		= cedrus_queue_setup,
 	.buf_prepare		= cedrus_buf_prepare,
+	.buf_cleanup		= cedrus_buf_cleanup,
 	.buf_queue		= cedrus_buf_queue,
 	.buf_out_validate	= cedrus_buf_out_validate,
 	.buf_request_complete	= cedrus_buf_request_complete,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
