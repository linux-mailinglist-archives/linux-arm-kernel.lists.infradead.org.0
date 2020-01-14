Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B24138EB6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 11:14:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EU7ygPdh6DRdge5xyKzNzOOyRpVEOLtYmM+OfsU9R0M=; b=u/KjizdeagLqr/8g+C+vmYCAjy
	YCB1vK+lFbX8xsxt2wVLTJVb2yHa4EAq4+4V3RmD0fNBgAZIS+N1/UziA62KPgCZ/Dv9AmS6Nbrl/
	88nw7F+Ou6Y+APgswYnBc64KNrlEX81yZ7WgUJ+cvjv9TRGflXPfPxa0Ssl2NQ8HZyj0xOvRNrNza
	vxMl3kiJOhQ64xaEeLYETgbEP9VsoJLILe5UwelPmx4cerUYgAhvEl1KsCRjMfLcjXZ7QIGkrHftc
	MmPVtOTxizOZn3wXAHQlZit+ZMvMpV4FR8X6W+8jXvKixkd1FD6CDidTENj0gTcAQ4IK1atuGtESC
	dc84/ZRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwjT-0008E5-64; Mon, 13 Jan 2020 10:14:03 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwiu-0007iW-7f
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 10:13:29 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 02:13:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,428,1571727600"; d="scan'208";a="397116758"
Received: from bong5-hp-z440.png.intel.com ([10.221.118.136])
 by orsmga005.jf.intel.com with ESMTP; 13 Jan 2020 02:13:24 -0800
From: Ong Boon Leong <boon.leong.ong@intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 1/7] net: stmmac: fix error in updating rx tail pointer to
 last free entry
Date: Tue, 14 Jan 2020 10:01:10 +0800
Message-Id: <1578967276-55956-2-git-send-email-boon.leong.ong@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578967276-55956-1-git-send-email-boon.leong.ong@intel.com>
References: <1578967276-55956-1-git-send-email-boon.leong.ong@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_021328_286600_6F97EDF7 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 DATE_IN_FUTURE_12_24   Date: is 12 to 24 hours after Received:
 date
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Voon Weifeng <weifeng.voon@intel.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Tan Tee Min <tee.min.tan@intel.com>, Ong Boon Leong <boon.leong.ong@intel.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DMA_CH(#i)_RxDesc_Tail_Pointer points to an offset from the base and
indicates the location of the last valid descriptor.

The change introduced by "net: stmmac: Update RX Tail Pointer to last
free entry" incorrectly updates the RxDesc_Tail_Pointer and causess
Rx operation to freeze in corner case. The issue is explained as
follow:-

Say, cur_rx=1 and dirty_rx=0, then we have dirty=1 and entry=0 before
the while (dirty-- > 0) loop of stmmac_rx_refill() is entered. When
the while loop is 1st entered, Rx buffer[entry=0] is refilled and after
entry++, then, entry=1. Now, the while loop condition check "dirty-- > 0"
and the while loop bails out because dirty=0. Up to this point, the
driver code works correctly.

However, the current implementation sets the Rx Tail Pointer to the
location pointed by dirty_rx, just updated to the value of entry(=1).
This is incorrect because the last Rx buffer that is refileld with empty
buffer is with entry=0. In another words, the current logics always sets
Rx Tail Pointer to the next Rx buffer to be refilled (too early).

So, we fix this by tracking the index of the most recently refilled Rx
buffer by using "last_refill" and use "last_refill" to update the Rx Tail
Pointer instead of using "entry" which points to the next dirty_rx to be
refilled in future.

Fixes: 858a31ffc3d9 ("net: stmmac: Update RX Tail Pointer to last free entry")

Signed-off-by: Ong Boon Leong <boon.leong.ong@intel.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 80d59b7..a317f67 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -3417,6 +3417,7 @@ static inline void stmmac_rx_refill(struct stmmac_priv *priv, u32 queue)
 	struct stmmac_rx_queue *rx_q = &priv->rx_queue[queue];
 	int len, dirty = stmmac_rx_dirty(priv, queue);
 	unsigned int entry = rx_q->dirty_rx;
+	unsigned int last_refill = entry;
 
 	len = DIV_ROUND_UP(priv->dma_buf_sz, PAGE_SIZE) * PAGE_SIZE;
 
@@ -3471,12 +3472,13 @@ static inline void stmmac_rx_refill(struct stmmac_priv *priv, u32 queue)
 
 		dma_wmb();
 		stmmac_set_rx_owner(priv, p, use_rx_wd);
-
+		last_refill = entry;
 		entry = STMMAC_GET_ENTRY(entry, DMA_RX_SIZE);
 	}
+
 	rx_q->dirty_rx = entry;
 	rx_q->rx_tail_addr = rx_q->dma_rx_phy +
-			    (rx_q->dirty_rx * sizeof(struct dma_desc));
+			     (last_refill * sizeof(struct dma_desc));
 	stmmac_set_rx_tail_ptr(priv, priv->ioaddr, rx_q->rx_tail_addr, queue);
 }
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
