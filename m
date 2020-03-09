Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5F317E6E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 19:21:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b2TP1HBd/h3oC4BCbdqj80QaQ7MX6jsp3/CfCqC7Hp0=; b=VuFfyc36iW+OSRcOi2eqT81zdw
	WFQjZnGp6FOow+eh0kPtCk98mV5v8JXl4n4zHBULnKK9WMrGVEgyUz/nLKZG3Ju7rpwZFJoEDVZlu
	zrJzOPwpT+Ksxx3pKjVnsAYC8pNpZTIDDBm3Cs9VKI1+sqCQ7YynRToT4eigR0gN3Pj95vJKmm1V8
	8rqWkUlsfM9YqUPdTd0SsGD557mL6QmYouPZDfI+wJG2DZeZq1qNsJ8S6yZosXBy6ImwphIJ9nx/9
	Bj7W6svnMOZ4BzM2PbqCAzWfQ9nMBULXHkCaVbpLXYGNUwkO2HVDEq5dnlcORUwPwqClaL5sPJLIc
	Nc0RA+kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBN1w-0004rY-CE; Mon, 09 Mar 2020 18:21:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBMzh-0001ob-RZ
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 18:19:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B2F4E7FA;
 Mon,  9 Mar 2020 11:19:13 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 64A9C3F67D;
 Mon,  9 Mar 2020 11:19:12 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: "David S . Miller" <davem@davemloft.net>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: [PATCH v2 07/14] net: axienet: Check for DMA mapping errors
Date: Mon,  9 Mar 2020 18:18:44 +0000
Message-Id: <20200309181851.190164-8-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200309181851.190164-1-andre.przywara@arm.com>
References: <20200309181851.190164-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_111913_996685_728E5BDA 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 Robert Hancock <hancock@sedsystems.ca>, rmk+kernel@arm.linux.org.uk,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Especially with the default 32-bit DMA mask, DMA buffers are a limited
resource, so their allocation can fail.
So as the DMA API documentation requires, add error checking code after
dma_map_single() calls to catch the case where we run out of "low" memory.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../net/ethernet/xilinx/xilinx_axienet_main.c | 31 ++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index 238b88f64da2..2f417136bfae 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -248,6 +248,11 @@ static int axienet_dma_bd_init(struct net_device *ndev)
 						     skb->data,
 						     lp->max_frm_size,
 						     DMA_FROM_DEVICE);
+		if (dma_mapping_error(ndev->dev.parent, lp->rx_bd_v[i].phys)) {
+			netdev_err(ndev, "DMA mapping error\n");
+			goto out;
+		}
+
 		lp->rx_bd_v[i].cntrl = lp->max_frm_size;
 	}
 
@@ -676,6 +681,7 @@ axienet_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 	dma_addr_t tail_p;
 	struct axienet_local *lp = netdev_priv(ndev);
 	struct axidma_bd *cur_p;
+	u32 orig_tail_ptr = lp->tx_bd_tail;
 
 	num_frag = skb_shinfo(skb)->nr_frags;
 	cur_p = &lp->tx_bd_v[lp->tx_bd_tail];
@@ -711,9 +717,15 @@ axienet_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 		cur_p->app0 |= 2; /* Tx Full Checksum Offload Enabled */
 	}
 
-	cur_p->cntrl = skb_headlen(skb) | XAXIDMA_BD_CTRL_TXSOF_MASK;
 	cur_p->phys = dma_map_single(ndev->dev.parent, skb->data,
 				     skb_headlen(skb), DMA_TO_DEVICE);
+	if (unlikely(dma_mapping_error(ndev->dev.parent, cur_p->phys))) {
+		if (net_ratelimit())
+			netdev_err(ndev, "TX DMA mapping error\n");
+		ndev->stats.tx_dropped++;
+		return NETDEV_TX_OK;
+	}
+	cur_p->cntrl = skb_headlen(skb) | XAXIDMA_BD_CTRL_TXSOF_MASK;
 
 	for (ii = 0; ii < num_frag; ii++) {
 		if (++lp->tx_bd_tail >= lp->tx_bd_num)
@@ -724,6 +736,16 @@ axienet_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 					     skb_frag_address(frag),
 					     skb_frag_size(frag),
 					     DMA_TO_DEVICE);
+		if (unlikely(dma_mapping_error(ndev->dev.parent, cur_p->phys))) {
+			if (net_ratelimit())
+				netdev_err(ndev, "TX DMA mapping error\n");
+			ndev->stats.tx_dropped++;
+			axienet_free_tx_chain(ndev, orig_tail_ptr, ii + 1,
+					      NULL);
+			lp->tx_bd_tail = orig_tail_ptr;
+
+			return NETDEV_TX_OK;
+		}
 		cur_p->cntrl = skb_frag_size(frag);
 	}
 
@@ -804,6 +826,13 @@ static void axienet_recv(struct net_device *ndev)
 		cur_p->phys = dma_map_single(ndev->dev.parent, new_skb->data,
 					     lp->max_frm_size,
 					     DMA_FROM_DEVICE);
+		if (unlikely(dma_mapping_error(ndev->dev.parent, cur_p->phys))) {
+			if (net_ratelimit())
+				netdev_err(ndev, "RX DMA mapping error\n");
+			dev_kfree_skb(new_skb);
+			return;
+		}
+
 		cur_p->cntrl = lp->max_frm_size;
 		cur_p->status = 0;
 		cur_p->skb = new_skb;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
