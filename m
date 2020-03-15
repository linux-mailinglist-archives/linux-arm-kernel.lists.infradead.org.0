Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD848185BBE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 10:55:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uxgs5DCSNw8DFqtgO0Q7W2w3dd1ONXRAlDbck8yDyKE=; b=W0h/l9OB44F06p
	yt9uftbi/gXVkGdM1Cnaz33gHhGHU6jkTeCPgUKWIu83DpH5zrUTmMFmCaPzwP4bjnGFcLpk26y5/
	0bzDrrT15zkO36aI/zzmAqPQPzKJoAUgOFE1J5ykKKI8NDrG09SDYvUMhisVgXxDmfvUmVX27+GCb
	8PCsAfTjYvwVJP27hb4Mw1m3Aw4LbughB5p2RHyXnzmuFfDsY2rXGegiieF7a5U/6u9DlZUiLTOfJ
	ry9zSvfctbFLQOz78hTFF9Xb2iDmGYVnO7cO7bP36EPvY1n01I65nRrxCg3N2gyeQFBIWPepb0uTB
	O4JjS9c5JDbyaPs2xyaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDPzM-0006II-Lj; Sun, 15 Mar 2020 09:55:20 +0000
Received: from mailoutvs56.siol.net ([185.57.226.247] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDPzE-00061B-VL
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 09:55:14 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 245EC521C76;
 Sun, 15 Mar 2020 10:54:58 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id m-yTtJ4oR4UU; Sun, 15 Mar 2020 10:54:57 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id D192F521D2C;
 Sun, 15 Mar 2020 10:54:57 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 16ACC521C76;
 Sun, 15 Mar 2020 10:54:55 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH] media: cedrus: h264: Fix 4K decoding on H6
Date: Sun, 15 Mar 2020 10:54:46 +0100
Message-Id: <20200315095446.454882-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_025513_172566_90D590A0 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.247 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, jernej.skrabec@siol.net,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Due to unknown reason, H6 needs larger intraprediction buffer for 4K
videos than other SoCs. This was discovered by playing 4096x2304 video,
which is maximum what H6 VPU is supposed to support.

Fixes: 03e612e701a6 ("media: cedrus: Fix H264 4k support")
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index bfb4a4820a67..54ee2aa423e2 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -610,8 +610,12 @@ static int cedrus_h264_start(struct cedrus_ctx *ctx)
 			goto err_mv_col_buf;
 		}
 
+		/*
+		 * NOTE: Multiplying by two deviates from CedarX logic, but it
+		 * is for some unknown reason needed for H264 4K decoding on H6.
+		 */
 		ctx->codec.h264.intra_pred_buf_size =
-			ALIGN(ctx->src_fmt.width, 64) * 5;
+			ALIGN(ctx->src_fmt.width, 64) * 5 * 2;
 		ctx->codec.h264.intra_pred_buf =
 			dma_alloc_coherent(dev->dev,
 					   ctx->codec.h264.intra_pred_buf_size,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
