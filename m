Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CB1527F1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 11:23:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Rq+Mc1ImeN2zcmH363mwdSj28rjI0RWW73FFCr4hoU=; b=mDApYdcVNLeF7x
	+0hRtNpghEPF306vDZ0rCGiGNYC8kaBewpXYFMssGw0nBaLt41/sCZxhXkCtsRCS7cgzwQT2yX6Vv
	xaBBji04KFRyJYYMpuLfhLYNe6YtaWIVHrcINTLu3DtjyOqwy+5/mgufkP0Xp0nbXc7GzGNdGzRU7
	CpjbOHXMN+mEyoNOL48YB70q7y4EiKhtCk9BVl2MtfVP8GIhFTBWSRvlKkMht24zGME/QQgEMj+xr
	67fDm3B+DIrJn8iHxSGBaydqQWhbrThwgUUntOyq4PpbmBWZq+6qCKlSqt+gQl3kbihnakK/z1MY4
	dx/RWzVv1xNUJE+pnkVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhfV-0006hP-EC; Tue, 25 Jun 2019 09:23:13 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhdE-0005k3-Cs; Tue, 25 Jun 2019 09:20:52 +0000
From: Christoph Hellwig <hch@lst.de>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 1/2] mmc: let the dma map ops handle bouncing
Date: Tue, 25 Jun 2019 11:20:41 +0200
Message-Id: <20190625092042.19320-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190625092042.19320-1-hch@lst.de>
References: <20190625092042.19320-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: iommu@lists.linux-foundation.org, linux-mmc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Just like we do for all other block drivers.  Especially as the limit
imposed at the moment might be way to pessimistic for iommus.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/mmc/core/queue.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/mmc/core/queue.c b/drivers/mmc/core/queue.c
index 3557d5c51141..e327f80ebe70 100644
--- a/drivers/mmc/core/queue.c
+++ b/drivers/mmc/core/queue.c
@@ -350,18 +350,15 @@ static const struct blk_mq_ops mmc_mq_ops = {
 static void mmc_setup_queue(struct mmc_queue *mq, struct mmc_card *card)
 {
 	struct mmc_host *host = card->host;
-	u64 limit = BLK_BOUNCE_HIGH;
 	unsigned block_size = 512;
 
-	if (mmc_dev(host)->dma_mask && *mmc_dev(host)->dma_mask)
-		limit = (u64)dma_max_pfn(mmc_dev(host)) << PAGE_SHIFT;
-
 	blk_queue_flag_set(QUEUE_FLAG_NONROT, mq->queue);
 	blk_queue_flag_clear(QUEUE_FLAG_ADD_RANDOM, mq->queue);
 	if (mmc_can_erase(card))
 		mmc_queue_setup_discard(mq->queue, card);
 
-	blk_queue_bounce_limit(mq->queue, limit);
+	if (!mmc_dev(host)->dma_mask || !*mmc_dev(host)->dma_mask)
+		blk_queue_bounce_limit(mq->queue, BLK_BOUNCE_HIGH);
 	blk_queue_max_hw_sectors(mq->queue,
 		min(host->max_blk_count, host->max_req_size / 512));
 	blk_queue_max_segments(mq->queue, host->max_segs);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
