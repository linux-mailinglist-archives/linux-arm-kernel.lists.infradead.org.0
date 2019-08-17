Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC22F91293
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 20:57:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zFsAflJceyytxK5UrzTpxWTtx1PV81sJEcJAifHCLfc=; b=Wj8mnkM/8SK6fA8XDby0jp39iR
	di1xq+FM3fwcndRWWUaRc7y+MWubQ1v7jLLh76bnyDUMv733ibtrLxMLih/J/My+ssSFdmylNuLG8
	IBEz1m4n23sS7Cuwes7eMS3wYSHxsiq/ebndcEvNOs6yqamnIkQh9nMg+BVidugAoelbX03QiBFkM
	JUxFvPohqZOcoVP7Y5VSGa5uu4xxaZiBZNsuc+W/rsxrJKj02/g1c4s+gXyyOMBQi7lY2Pqlx534e
	WHwcY+cfuX0j5ryV3YssO/mS7IvkwSNF8KhPpFTl+VhYdePtZE0Szd+lpwnk38iGM30A+BVdONaAA
	kDVeEggg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz3tg-0002hQ-Fl; Sat, 17 Aug 2019 18:57:52 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz3qu-0007Zj-1q
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 18:55:09 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id CA141C0E41;
 Sat, 17 Aug 2019 18:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1566068097; bh=V+C8SsVKAvdrGa7XpsHcFWBZbSyN9BqVUC7r5TWoAXk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=cbv93HUjmvXIPHUSej/ebDXLmBVXPVi3WdEmNr705q+/vJWRmbe7oIH2Ch9Iaue9p
 l+v18wuVc1lu526xXR8Jp5VJvbdTr0FETcf3gFKDoldaHTXhtqDqgUpzxa3iuIDbcH
 bzdXFb23u1t+h5npcuNRj9p6AE0YCwUJOy7WWecrfGteyRcLymjM1b1QdymqMh3JT2
 cPhHWpeCbGZqEpS7Snhbk5Nu8MgpVRd2kKyGVGoN6iaxk6l3up/9mBO0M9+z7XOKvn
 67GN0BGEGYcU8xIJ0KLQczJ746iLXWE3z1u3+b43qbNlQKMhe6DiN0hzJKf4y+p59a
 z+jMng26vOqvw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 6C42DA0065;
 Sat, 17 Aug 2019 18:54:55 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v3 02/12] net: stmmac: Prepare to add Split Header
 support
Date: Sat, 17 Aug 2019 20:54:41 +0200
Message-Id: <20fb7dc55cc5ec27eff6b8ea3b2d81da6526b479.1566067802.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1566067802.git.joabreu@synopsys.com>
References: <cover.1566067802.git.joabreu@synopsys.com>
In-Reply-To: <cover.1566067802.git.joabreu@synopsys.com>
References: <cover.1566067802.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_115500_115386_7696B76B 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to add Split Header support, stmmac_rx() needs to take into
account that packet may be split accross multiple descriptors.

Refactor the logic of this function in order to support this scenario.

Changes from v2:
	- Fixup if condition detection (Jakub)
	- Don't stop NAPI with unfinished packet (Jakub)
	- Use napi_alloc_skb() (Jakub)

Signed-off-by: Jose Abreu <joabreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/net/ethernet/stmicro/stmmac/stmmac.h      |   6 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 149 +++++++++++++---------
 2 files changed, 95 insertions(+), 60 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac.h b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
index 80276587048a..56158e1448ac 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac.h
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
@@ -74,6 +74,12 @@ struct stmmac_rx_queue {
 	u32 rx_zeroc_thresh;
 	dma_addr_t dma_rx_phy;
 	u32 rx_tail_addr;
+	unsigned int state_saved;
+	struct {
+		struct sk_buff *skb;
+		unsigned int len;
+		unsigned int error;
+	} state;
 };
 
 struct stmmac_channel {
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index b2e5f4ecd551..05f0fa7a6f02 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -3353,9 +3353,10 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
 {
 	struct stmmac_rx_queue *rx_q = &priv->rx_queue[queue];
 	struct stmmac_channel *ch = &priv->channel[queue];
+	unsigned int count = 0, error = 0, len = 0;
+	int status = 0, coe = priv->hw->rx_csum;
 	unsigned int next_entry = rx_q->cur_rx;
-	int coe = priv->hw->rx_csum;
-	unsigned int count = 0;
+	struct sk_buff *skb = NULL;
 
 	if (netif_msg_rx_status(priv)) {
 		void *rx_head;
@@ -3369,10 +3370,28 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
 		stmmac_display_ring(priv, rx_head, DMA_RX_SIZE, true);
 	}
 	while (count < limit) {
+		enum pkt_hash_types hash_type;
 		struct stmmac_rx_buffer *buf;
+		unsigned int prev_len = 0;
 		struct dma_desc *np, *p;
-		int entry, status;
+		int entry;
+		u32 hash;
 
+		if (!count && rx_q->state_saved) {
+			skb = rx_q->state.skb;
+			error = rx_q->state.error;
+			len = rx_q->state.len;
+		} else {
+			rx_q->state_saved = false;
+			skb = NULL;
+			error = 0;
+			len = 0;
+		}
+
+		if (count >= limit)
+			break;
+
+read_again:
 		entry = next_entry;
 		buf = &rx_q->buf_pool[entry];
 
@@ -3407,28 +3426,24 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
 			page_pool_recycle_direct(rx_q->page_pool, buf->page);
 			priv->dev->stats.rx_errors++;
 			buf->page = NULL;
+			error = 1;
+		}
+
+		if (unlikely(error && (status & rx_not_ls)))
+			goto read_again;
+		if (unlikely(error)) {
+			if (skb)
+				dev_kfree_skb(skb);
+			continue;
+		}
+
+		/* Buffer is good. Go on. */
+
+		if (likely(status & rx_not_ls)) {
+			len += priv->dma_buf_sz;
 		} else {
-			enum pkt_hash_types hash_type;
-			struct sk_buff *skb;
-			unsigned int des;
-			int frame_len;
-			u32 hash;
-
-			stmmac_get_desc_addr(priv, p, &des);
-			frame_len = stmmac_get_rx_frame_len(priv, p, coe);
-
-			/*  If frame length is greater than skb buffer size
-			 *  (preallocated during init) then the packet is
-			 *  ignored
-			 */
-			if (frame_len > priv->dma_buf_sz) {
-				if (net_ratelimit())
-					netdev_err(priv->dev,
-						   "len %d larger than size (%d)\n",
-						   frame_len, priv->dma_buf_sz);
-				priv->dev->stats.rx_length_errors++;
-				continue;
-			}
+			prev_len = len;
+			len = stmmac_get_rx_frame_len(priv, p, coe);
 
 			/* ACS is set; GMAC core strips PAD/FCS for IEEE 802.3
 			 * Type frames (LLC/LLC-SNAP)
@@ -3439,57 +3454,71 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
 			 */
 			if (unlikely(priv->synopsys_id >= DWMAC_CORE_4_00) ||
 			    unlikely(status != llc_snap))
-				frame_len -= ETH_FCS_LEN;
-
-			if (netif_msg_rx_status(priv)) {
-				netdev_dbg(priv->dev, "\tdesc: %p [entry %d] buff=0x%x\n",
-					   p, entry, des);
-				netdev_dbg(priv->dev, "frame size %d, COE: %d\n",
-					   frame_len, status);
-			}
+				len -= ETH_FCS_LEN;
+		}
 
-			skb = netdev_alloc_skb_ip_align(priv->dev, frame_len);
-			if (unlikely(!skb)) {
+		if (!skb) {
+			skb = napi_alloc_skb(&ch->rx_napi, len);
+			if (!skb) {
 				priv->dev->stats.rx_dropped++;
 				continue;
 			}
 
-			dma_sync_single_for_cpu(priv->device, buf->addr,
-						frame_len, DMA_FROM_DEVICE);
+			dma_sync_single_for_cpu(priv->device, buf->addr, len,
+						DMA_FROM_DEVICE);
 			skb_copy_to_linear_data(skb, page_address(buf->page),
-						frame_len);
-			skb_put(skb, frame_len);
+						len);
+			skb_put(skb, len);
 
-			if (netif_msg_pktdata(priv)) {
-				netdev_dbg(priv->dev, "frame received (%dbytes)",
-					   frame_len);
-				print_pkt(skb->data, frame_len);
-			}
+			/* Data payload copied into SKB, page ready for recycle */
+			page_pool_recycle_direct(rx_q->page_pool, buf->page);
+			buf->page = NULL;
+		} else {
+			unsigned int buf_len = len - prev_len;
 
-			stmmac_get_rx_hwtstamp(priv, p, np, skb);
+			if (likely(status & rx_not_ls))
+				buf_len = priv->dma_buf_sz;
 
-			stmmac_rx_vlan(priv->dev, skb);
+			dma_sync_single_for_cpu(priv->device, buf->addr,
+						buf_len, DMA_FROM_DEVICE);
+			skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags,
+					buf->page, 0, buf_len,
+					priv->dma_buf_sz);
 
-			skb->protocol = eth_type_trans(skb, priv->dev);
+			/* Data payload appended into SKB */
+			page_pool_release_page(rx_q->page_pool, buf->page);
+			buf->page = NULL;
+		}
 
-			if (unlikely(!coe))
-				skb_checksum_none_assert(skb);
-			else
-				skb->ip_summed = CHECKSUM_UNNECESSARY;
+		if (likely(status & rx_not_ls))
+			goto read_again;
 
-			if (!stmmac_get_rx_hash(priv, p, &hash, &hash_type))
-				skb_set_hash(skb, hash, hash_type);
+		/* Got entire packet into SKB. Finish it. */
 
-			skb_record_rx_queue(skb, queue);
-			napi_gro_receive(&ch->rx_napi, skb);
+		stmmac_get_rx_hwtstamp(priv, p, np, skb);
+		stmmac_rx_vlan(priv->dev, skb);
+		skb->protocol = eth_type_trans(skb, priv->dev);
 
-			/* Data payload copied into SKB, page ready for recycle */
-			page_pool_recycle_direct(rx_q->page_pool, buf->page);
-			buf->page = NULL;
+		if (unlikely(!coe))
+			skb_checksum_none_assert(skb);
+		else
+			skb->ip_summed = CHECKSUM_UNNECESSARY;
 
-			priv->dev->stats.rx_packets++;
-			priv->dev->stats.rx_bytes += frame_len;
-		}
+		if (!stmmac_get_rx_hash(priv, p, &hash, &hash_type))
+			skb_set_hash(skb, hash, hash_type);
+
+		skb_record_rx_queue(skb, queue);
+		napi_gro_receive(&ch->rx_napi, skb);
+
+		priv->dev->stats.rx_packets++;
+		priv->dev->stats.rx_bytes += len;
+	}
+
+	if (status & rx_not_ls) {
+		rx_q->state_saved = true;
+		rx_q->state.skb = skb;
+		rx_q->state.error = error;
+		rx_q->state.len = len;
 	}
 
 	stmmac_rx_refill(priv, queue);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
