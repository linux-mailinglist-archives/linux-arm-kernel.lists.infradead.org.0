Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 611E282382
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 19:02:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uAikMg93t4T7Ae3kRUs/4rhSNHjih1Ov2RGV+mVsKiY=; b=bHPXIbvq96vLkudjg63vdWL7DQ
	WQtmS9mqQ/YXVVkPt/fYQT6oyFj008yRkpgbWhXbepHgLDwjHxKSxuL0mtLFleso1LG8HB9Om1RbK
	H/7GMic84og5JQmTlLAYLFtn94l65zKEdFlbjQuroIwSK/Eekz99QRI03fmu2z29/MIO6YPvvC7Le
	rlESTpeAD8jDfG1hlEVfTiUTbvjHaXfsYwZHKRj7sWvI1flLw82lyLMjsS9559PoC1sWvrd3WG8VX
	Wz38szWG3HdFm9898aC429386fn4Le8pr+PDHKR7k0gOA0LsS/PyUrPQODmqSyXA0MKWyndGfpY8D
	mo8PXXPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hugNs-0005sW-Tt; Mon, 05 Aug 2019 17:02:57 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hugMQ-0004QG-5u
 for linux-arm-kernel@bombadil.infradead.org; Mon, 05 Aug 2019 17:01:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PR+aidPtHiFB2aeWMDMR3CrbIhozPh9IRr3pif+EJ1E=; b=TrwGeyc2umlwgiHHGb/TWdks/
 HwJ9B4D40PCXpEf/wsuP6ejvwvJdGhKDTc9l5wkSJenoQPJt1+PzRYgmXhBmnms2q3g5Yh9Jdbie8
 Yx7v41b7ljmkbSqlC2Ee2CgKMxGwNQsU485Kk9y5Ldnr5yLG0zfG4aqTjf3BYiG+mJqJqKEze+GNL
 tFd5n0n3lJkK86DhyehXtSeHCXGuIB6xKlNAuUFY4D5NlmmasMjK+CioGq2MAixL7s1S6gX5IubqZ
 cv2/tVk5cv/xh3gWk7MUoJMRgeuuxR1LJuqlOPOJcE0YRodUIdpfov4XMB66dyJaHRE5ZmKOc5oMl
 6yYi9znJQ==;
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hug7J-0005Ms-E6
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:45:55 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 26738C01C2;
 Mon,  5 Aug 2019 16:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565023529; bh=mLzpStPyWZ/Sv8mSPPsZ/PbSn48wjFvWxjtfhPG8Qkc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=eT8WmlNEfIWfPKKwKkaeQD9kCev2nKeFJE2p9Wb8t+Y4tKNu+VECBpxUplrzKTqTf
 927QcMzh7COf+uJEAg5e1/q6ZSrbYtwAnzTMONiFdorc+X3v4x8UQJmvtExlZTw7AF
 GGQwRoaGYHVouuaYsCo4N4tCxNT9wuDQfg1u3YwUV8K1NQ4Fm2z66MRJsHl3N0j7IQ
 iFn8+o4m/TReVUtHVT1O6FocDXZtCs3/k4VzWfpYAGHaliYxt3xD4PlhWEo/3O1Chl
 +sHN9+2io5601MtFgYLU4IA0f0kfSHBO3l1bYFQV5/uo9sjYojltn8DGAmQg8ZBg54
 TWRU/8UckxprA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id D7212A008B;
 Mon,  5 Aug 2019 16:45:27 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 15/26] net: stmmac: Prepare to add Split Header
 support
Date: Mon,  5 Aug 2019 18:44:42 +0200
Message-Id: <b46739b2adc5372d710686e5c47c2f8021837916.1565022597.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_174549_992495_46A2A991 
X-CRM114-Status: GOOD (  23.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index 4179559b11ad..be9ee3d7ec35 100644
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
index 075de483ce7b..e1ef8de952cc 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -3359,9 +3359,10 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
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
@@ -3375,9 +3376,27 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
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
+
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
+read_again:
+		if (count >= limit)
+			break;
 
 		entry = next_entry;
 		buf = &rx_q->buf_pool[entry];
@@ -3413,28 +3432,24 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
 			page_pool_recycle_direct(rx_q->page_pool, buf->page);
 			priv->dev->stats.rx_errors++;
 			buf->page = NULL;
+			error = 1;
+		}
+
+		if (unlikely(error & (status & rx_not_ls)))
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
@@ -3445,57 +3460,71 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
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
+			skb = netdev_alloc_skb_ip_align(priv->dev, len);
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
