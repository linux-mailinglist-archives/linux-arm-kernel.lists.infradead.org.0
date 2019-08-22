Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B48A9A06F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 21:46:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9g5/PIt8BGmNw0a4r2XxYHsHm7oa6FOTuOgWbkdT0C0=; b=K2kyOQzdLsHIcn
	Ka224QY4VEEotFr78VfHqypPnglNl4NLPQzjP9ZIA5vb74imYfGKwbG1O/Y5Qi/X4ogBUfLJUY6Vc
	5Nn/nxQIM7D4cipWE6sYgjvAm5CDOafgVQe8Y7Usp5ZqST8MYlfhQ0BQ1Nxg12ZpsZMhBCMxFFovw
	x68d8kdQiwwSkWHURz+Lqg9n0cfQpNx0WTdUvI3rPUXS2HNUYkAy7dJTL5C15y9BAEhSNf0PwaG/K
	EMrw70yCBeiIy6LeVTuUJR2m2NZ0xvr7IbMMHaXdPhpbGee4oZ1ZMwP9AnufULkJueS9jN62c2fSv
	eTf6tr2e6Zz1m4UGHyeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0t2k-0000bL-0P; Thu, 22 Aug 2019 19:46:46 +0000
Received: from mailoutvs56.siol.net ([185.57.226.247] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0t1S-0007oP-KP
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 19:45:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 6C4E05249EB;
 Thu, 22 Aug 2019 21:45:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Gezw5K_CvG4J; Thu, 22 Aug 2019 21:45:24 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 1A23C52481F;
 Thu, 22 Aug 2019 21:45:24 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id A7AAC5249F7;
 Thu, 22 Aug 2019 21:45:21 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 paul.kocialkowski@bootlin.com, mripard@kernel.org
Subject: [PATCH 6/8] media: cedrus: h264: Support multiple slices per frame
Date: Thu, 22 Aug 2019 21:44:58 +0200
Message-Id: <20190822194500.2071-7-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190822194500.2071-1-jernej.skrabec@siol.net>
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_124526_862261_402F595B 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.247 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, jernej.skrabec@siol.net, pawel@osciak.com,
 acourbot@chromium.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 wens@csie.org, tfiga@chromium.org, kyungmin.park@samsung.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 ezequiel@collabora.com, linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With recent changes, support for decoding multi-slice frames can be
easily added now.

Signal VPU if current slice is first in frame or not and add information
about first macroblock coordinates.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index d6a782703c9b..b7260cfeb6f4 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -301,6 +301,8 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
 	dma_addr_t src_buf_addr;
 	u32 offset = slice->header_bit_size;
 	u32 len = (slice->size * 8) - offset;
+	unsigned int pic_width_in_mbs;
+	bool mbaff_pic;
 	u32 reg;
 
 	cedrus_write(dev, VE_H264_VLD_LEN, len);
@@ -370,12 +372,19 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
 		reg |= VE_H264_SPS_DIRECT_8X8_INFERENCE;
 	cedrus_write(dev, VE_H264_SPS, reg);
 
+	mbaff_pic = !(slice->flags & V4L2_H264_SLICE_FLAG_FIELD_PIC) &&
+		    (sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD);
+	pic_width_in_mbs = sps->pic_width_in_mbs_minus1 + 1;
+
 	// slice parameters
 	reg = 0;
+	reg |= ((slice->first_mb_in_slice % pic_width_in_mbs) & 0xff) << 24;
+	reg |= (((slice->first_mb_in_slice / pic_width_in_mbs) * (mbaff_pic + 1)) & 0xff) << 16;
 	reg |= decode->nal_ref_idc ? BIT(12) : 0;
 	reg |= (slice->slice_type & 0xf) << 8;
 	reg |= slice->cabac_init_idc & 0x3;
-	reg |= VE_H264_SHS_FIRST_SLICE_IN_PIC;
+	if (run->first_slice)
+		reg |= VE_H264_SHS_FIRST_SLICE_IN_PIC;
 	if (slice->flags & V4L2_H264_SLICE_FLAG_FIELD_PIC)
 		reg |= VE_H264_SHS_FIELD_PIC;
 	if (slice->flags & V4L2_H264_SLICE_FLAG_BOTTOM_FIELD)
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
