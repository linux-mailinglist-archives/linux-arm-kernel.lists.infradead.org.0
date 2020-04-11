Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0768E1A5466
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 01:06:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JIsA4h9NtIeKy3p+57BlQINLq2c+90fTyOk3zpN/rpo=; b=QytbHp6VVyHOAK
	fhOEkZcWmtIanO66GqEBcb6qdKDOBUkHuB6d5kVYYPnrfUvfZGdv3DpiSuHUKotqXJ2NEIybHH9cu
	3bvBs897U8iUfoy/FEXGO9lz1OpyxAKeKlYWsPXODMj+SoNykv9o9MQqH7owvJ3y2P0hePn0ENTbv
	ul1KNjR796dY3FoP16uxWfBk5g8feeLT3mTfPRUXjM54eYrz7t48jWoC6hhH6OMEVJNiR1aZmzfYk
	v95wZPLBoDEiDgOt4IRkf0TPdKHI3qqlLN9hJSLn1yjRLDvNxYv4mjnLFii+7fmh1dTRI1raQ9js+
	h73LxCZVWG8duwSL+drQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNPCG-0008C4-9k; Sat, 11 Apr 2020 23:05:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNPBO-0005Wv-Vv; Sat, 11 Apr 2020 23:05:05 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA92E21841;
 Sat, 11 Apr 2020 23:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586646302;
 bh=w68oapllwXBcXuPwr+A/R2ShE4TVv5AB6GPxa7PIA1g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=X3Dgskd7nGUMEBBHuGSQoYj9yAvax7I2NUvGpeeMCeNst65cbnSrMWJR9XUB+TW73
 lFmGYK41NlbIaA6lUJwqe8km3LmP5OhqNpuu/LA79a0A7ezSMTuJl1WeW6tFPpWXQB
 WCtpsCErDMA0Fk1xSpNfSitmywZnY1h1rVfRhYcE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 061/149] mt76: fix handling full tx queues in
 mt76_dma_tx_queue_skb_raw
Date: Sat, 11 Apr 2020 19:02:18 -0400
Message-Id: <20200411230347.22371-61-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411230347.22371-1-sashal@kernel.org>
References: <20200411230347.22371-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_160503_080828_81B9DEBB 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Felix Fietkau <nbd@nbd.name>

[ Upstream commit 93eaec7625f13cffb593b471405b017c7e64d4ee ]

Fixes a theoretical issue where it could potentially overwrite an existing
descriptor entry (and leaking its skb)

Signed-off-by: Felix Fietkau <nbd@nbd.name>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/dma.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/dma.c b/drivers/net/wireless/mediatek/mt76/dma.c
index 1847f55e199b0..c001d94958d83 100644
--- a/drivers/net/wireless/mediatek/mt76/dma.c
+++ b/drivers/net/wireless/mediatek/mt76/dma.c
@@ -261,10 +261,13 @@ mt76_dma_tx_queue_skb_raw(struct mt76_dev *dev, enum mt76_txq_id qid,
 	struct mt76_queue_buf buf;
 	dma_addr_t addr;
 
+	if (q->queued + 1 >= q->ndesc - 1)
+		goto error;
+
 	addr = dma_map_single(dev->dev, skb->data, skb->len,
 			      DMA_TO_DEVICE);
 	if (unlikely(dma_mapping_error(dev->dev, addr)))
-		return -ENOMEM;
+		goto error;
 
 	buf.addr = addr;
 	buf.len = skb->len;
@@ -275,6 +278,10 @@ mt76_dma_tx_queue_skb_raw(struct mt76_dev *dev, enum mt76_txq_id qid,
 	spin_unlock_bh(&q->lock);
 
 	return 0;
+
+error:
+	dev_kfree_skb(skb);
+	return -ENOMEM;
 }
 
 static int
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
