Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA395E235
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 12:39:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RaZM66lWNkLuv2YBTe0DX56T5ny7/0wd2zqjrG7qLjc=; b=BPjCrisJCucyMI90h0vh1/pliO
	VBZz+XQDJ+Uj5xADUKpTo9S+tDno5hs6InFGgwWrCfLQsVwB5cXKBUZDhruQ66SJ6h5WqxS6HrpIe
	LIy6xc1tJ1FHsgakn5uD9rOijLfc20hQ3KHqeYw5UN4SjjkNjFFvyZUoZT98Bo//2TVeptB9nX71v
	zGgH9+Dy6PH6kN1X9RU1gYgm0aotwqcsP0DwGC5+3bdrjYrpOU1IgqC5ipKi9NPlMNDkMS4i8FrzS
	GtD3xS6wm4Gws6nupq+5G6BIDxbk2AhHsaivb28Kqcy+36JSsnT3HhEJ1GyXvgJfDa2HEuW0Cg3X/
	XrhPCYFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hicfM-0002dk-TS; Wed, 03 Jul 2019 10:39:09 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiceM-0001xg-CH
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 10:38:09 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 82E79C2645;
 Wed,  3 Jul 2019 10:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562150279; bh=ty0TB8yF5otlqDmPdJaeCBgWjV1Z4mkFw3oj4GvrH88=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=NlZHYACpdfP88v4/fLOVHOC/7YhIRy45wxwjUKtKbpNMLssqUO/UI5dMZ2qX2x0hp
 WqvzkpubhPNegT055UfNLyJ+ODHYSM/9FsgP2YACYptvs51hfYAoexiUNwBBs1K+AB
 QWJODqwflIChGDAecJZ21Bj2QlhUlPFikDlsJyNxGzv6dxxmAm5Y4y/qZSYXs3nxUL
 KG8Wjz0IB8Jgh/0x1T3NHKf4cdUsyKGqoWaVc4InLMokgt51AZThwFZaLBggahsmFR
 J8TlY6TCCFsb6F19ivHoYRaLVhLoJYq1a0pt1c0A5nYSemkCCKGMDR8MrjXSAzupky
 5EVrEz9EAz1WQ==
Received: from de02.synopsys.com (germany.internal.synopsys.com [10.225.17.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id 955C9A0057;
 Wed,  3 Jul 2019 10:37:54 +0000 (UTC)
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by de02.synopsys.com (Postfix) with ESMTP id 6B2E13E57E;
 Wed,  3 Jul 2019 12:37:54 +0200 (CEST)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH net-next 3/3] net: stmmac: Introducing support for Page Pool
Date: Wed,  3 Jul 2019 12:37:50 +0200
Message-Id: <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1562149883.git.joabreu@synopsys.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
In-Reply-To: <cover.1562149883.git.joabreu@synopsys.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_033806_483886_19869EE2 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mapping and unmapping DMA region is an high bottleneck in stmmac driver,
specially in the RX path.

This commit introduces support for Page Pool API and uses it in all RX
queues. With this change, we get more stable troughput and some increase
of banwidth with iperf:
	- MAC1000 - 950 Mbps
	- XGMAC: 9.22 Gbps

Signed-off-by: Jose Abreu <joabreu@synopsys.com>
Cc: Joao Pinto <jpinto@synopsys.com>
Cc: David S. Miller <davem@davemloft.net>
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Chen-Yu Tsai <wens@csie.org>
---
 drivers/net/ethernet/stmicro/stmmac/Kconfig       |   1 +
 drivers/net/ethernet/stmicro/stmmac/stmmac.h      |  10 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 196 ++++++----------------
 3 files changed, 63 insertions(+), 144 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/Kconfig b/drivers/net/ethernet/stmicro/stmmac/Kconfig
index 943189dcccb1..2325b40dff6e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/Kconfig
+++ b/drivers/net/ethernet/stmicro/stmmac/Kconfig
@@ -3,6 +3,7 @@ config STMMAC_ETH
 	tristate "STMicroelectronics Multi-Gigabit Ethernet driver"
 	depends on HAS_IOMEM && HAS_DMA
 	select MII
+	select PAGE_POOL
 	select PHYLINK
 	select CRC32
 	imply PTP_1588_CLOCK
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac.h b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
index 513f4e2df5f6..5cd966c154f3 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac.h
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
@@ -20,6 +20,7 @@
 #include <linux/ptp_clock_kernel.h>
 #include <linux/net_tstamp.h>
 #include <linux/reset.h>
+#include <net/page_pool.h>
 
 struct stmmac_resources {
 	void __iomem *addr;
@@ -54,14 +55,19 @@ struct stmmac_tx_queue {
 	u32 mss;
 };
 
+struct stmmac_rx_buffer {
+	struct page *page;
+	dma_addr_t addr;
+};
+
 struct stmmac_rx_queue {
 	u32 rx_count_frames;
 	u32 queue_index;
+	struct page_pool *page_pool;
+	struct stmmac_rx_buffer *buf_pool;
 	struct stmmac_priv *priv_data;
 	struct dma_extended_desc *dma_erx;
 	struct dma_desc *dma_rx ____cacheline_aligned_in_smp;
-	struct sk_buff **rx_skbuff;
-	dma_addr_t *rx_skbuff_dma;
 	unsigned int cur_rx;
 	unsigned int dirty_rx;
 	u32 rx_zeroc_thresh;
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index c8fe85ef9a7e..9f44e8193208 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -1197,26 +1197,14 @@ static int stmmac_init_rx_buffers(struct stmmac_priv *priv, struct dma_desc *p,
 				  int i, gfp_t flags, u32 queue)
 {
 	struct stmmac_rx_queue *rx_q = &priv->rx_queue[queue];
-	struct sk_buff *skb;
+	struct stmmac_rx_buffer *buf = &rx_q->buf_pool[i];
 
-	skb = __netdev_alloc_skb_ip_align(priv->dev, priv->dma_buf_sz, flags);
-	if (!skb) {
-		netdev_err(priv->dev,
-			   "%s: Rx init fails; skb is NULL\n", __func__);
+	buf->page = page_pool_dev_alloc_pages(rx_q->page_pool);
+	if (!buf->page)
 		return -ENOMEM;
-	}
-	rx_q->rx_skbuff[i] = skb;
-	rx_q->rx_skbuff_dma[i] = dma_map_single(priv->device, skb->data,
-						priv->dma_buf_sz,
-						DMA_FROM_DEVICE);
-	if (dma_mapping_error(priv->device, rx_q->rx_skbuff_dma[i])) {
-		netdev_err(priv->dev, "%s: DMA mapping error\n", __func__);
-		dev_kfree_skb_any(skb);
-		return -EINVAL;
-	}
-
-	stmmac_set_desc_addr(priv, p, rx_q->rx_skbuff_dma[i]);
 
+	buf->addr = buf->page->dma_addr;
+	stmmac_set_desc_addr(priv, p, buf->addr);
 	if (priv->dma_buf_sz == BUF_SIZE_16KiB)
 		stmmac_init_desc3(priv, p);
 
@@ -1232,13 +1220,10 @@ static int stmmac_init_rx_buffers(struct stmmac_priv *priv, struct dma_desc *p,
 static void stmmac_free_rx_buffer(struct stmmac_priv *priv, u32 queue, int i)
 {
 	struct stmmac_rx_queue *rx_q = &priv->rx_queue[queue];
+	struct stmmac_rx_buffer *buf = &rx_q->buf_pool[i];
 
-	if (rx_q->rx_skbuff[i]) {
-		dma_unmap_single(priv->device, rx_q->rx_skbuff_dma[i],
-				 priv->dma_buf_sz, DMA_FROM_DEVICE);
-		dev_kfree_skb_any(rx_q->rx_skbuff[i]);
-	}
-	rx_q->rx_skbuff[i] = NULL;
+	page_pool_put_page(rx_q->page_pool, buf->page, false);
+	buf->page = NULL;
 }
 
 /**
@@ -1321,10 +1306,6 @@ static int init_dma_rx_desc_rings(struct net_device *dev, gfp_t flags)
 						     queue);
 			if (ret)
 				goto err_init_rx_buffers;
-
-			netif_dbg(priv, probe, priv->dev, "[%p]\t[%p]\t[%x]\n",
-				  rx_q->rx_skbuff[i], rx_q->rx_skbuff[i]->data,
-				  (unsigned int)rx_q->rx_skbuff_dma[i]);
 		}
 
 		rx_q->cur_rx = 0;
@@ -1498,8 +1479,9 @@ static void free_dma_rx_desc_resources(struct stmmac_priv *priv)
 					  sizeof(struct dma_extended_desc),
 					  rx_q->dma_erx, rx_q->dma_rx_phy);
 
-		kfree(rx_q->rx_skbuff_dma);
-		kfree(rx_q->rx_skbuff);
+		kfree(rx_q->buf_pool);
+		if (rx_q->page_pool)
+			page_pool_request_shutdown(rx_q->page_pool);
 	}
 }
 
@@ -1551,20 +1533,28 @@ static int alloc_dma_rx_desc_resources(struct stmmac_priv *priv)
 	/* RX queues buffers and DMA */
 	for (queue = 0; queue < rx_count; queue++) {
 		struct stmmac_rx_queue *rx_q = &priv->rx_queue[queue];
+		struct page_pool_params pp_params = { 0 };
 
 		rx_q->queue_index = queue;
 		rx_q->priv_data = priv;
 
-		rx_q->rx_skbuff_dma = kmalloc_array(DMA_RX_SIZE,
-						    sizeof(dma_addr_t),
-						    GFP_KERNEL);
-		if (!rx_q->rx_skbuff_dma)
+		pp_params.flags = PP_FLAG_DMA_MAP;
+		pp_params.order = DIV_ROUND_UP(priv->dma_buf_sz, PAGE_SIZE);
+		pp_params.nid = dev_to_node(priv->device);
+		pp_params.dev = priv->device;
+		pp_params.dma_dir = DMA_FROM_DEVICE;
+
+		rx_q->page_pool = page_pool_create(&pp_params);
+		if (IS_ERR(rx_q->page_pool)) {
+			ret = PTR_ERR(rx_q->page_pool);
+			rx_q->page_pool = NULL;
 			goto err_dma;
+		}
 
-		rx_q->rx_skbuff = kmalloc_array(DMA_RX_SIZE,
-						sizeof(struct sk_buff *),
-						GFP_KERNEL);
-		if (!rx_q->rx_skbuff)
+		rx_q->buf_pool = kmalloc_array(DMA_RX_SIZE,
+					       sizeof(*rx_q->buf_pool),
+					       GFP_KERNEL);
+		if (!rx_q->buf_pool)
 			goto err_dma;
 
 		if (priv->extend_desc) {
@@ -3295,9 +3285,8 @@ static inline void stmmac_rx_refill(struct stmmac_priv *priv, u32 queue)
 	int dirty = stmmac_rx_dirty(priv, queue);
 	unsigned int entry = rx_q->dirty_rx;
 
-	int bfsize = priv->dma_buf_sz;
-
 	while (dirty-- > 0) {
+		struct stmmac_rx_buffer *buf = &rx_q->buf_pool[entry];
 		struct dma_desc *p;
 		bool use_rx_wd;
 
@@ -3306,49 +3295,22 @@ static inline void stmmac_rx_refill(struct stmmac_priv *priv, u32 queue)
 		else
 			p = rx_q->dma_rx + entry;
 
-		if (likely(!rx_q->rx_skbuff[entry])) {
-			struct sk_buff *skb;
-
-			skb = netdev_alloc_skb_ip_align(priv->dev, bfsize);
-			if (unlikely(!skb)) {
-				/* so for a while no zero-copy! */
-				rx_q->rx_zeroc_thresh = STMMAC_RX_THRESH;
-				if (unlikely(net_ratelimit()))
-					dev_err(priv->device,
-						"fail to alloc skb entry %d\n",
-						entry);
-				break;
-			}
-
-			rx_q->rx_skbuff[entry] = skb;
-			rx_q->rx_skbuff_dma[entry] =
-			    dma_map_single(priv->device, skb->data, bfsize,
-					   DMA_FROM_DEVICE);
-			if (dma_mapping_error(priv->device,
-					      rx_q->rx_skbuff_dma[entry])) {
-				netdev_err(priv->dev, "Rx DMA map failed\n");
-				dev_kfree_skb(skb);
+		if (!buf->page) {
+			buf->page = page_pool_dev_alloc_pages(rx_q->page_pool);
+			if (!buf->page)
 				break;
-			}
-
-			stmmac_set_desc_addr(priv, p, rx_q->rx_skbuff_dma[entry]);
-			stmmac_refill_desc3(priv, rx_q, p);
-
-			if (rx_q->rx_zeroc_thresh > 0)
-				rx_q->rx_zeroc_thresh--;
-
-			netif_dbg(priv, rx_status, priv->dev,
-				  "refill entry #%d\n", entry);
 		}
-		dma_wmb();
+
+		buf->addr = buf->page->dma_addr;
+		stmmac_set_desc_addr(priv, p, buf->addr);
+		stmmac_refill_desc3(priv, rx_q, p);
 
 		rx_q->rx_count_frames++;
 		rx_q->rx_count_frames %= priv->rx_coal_frames;
 		use_rx_wd = priv->use_riwt && rx_q->rx_count_frames;
 
-		stmmac_set_rx_owner(priv, p, use_rx_wd);
-
 		dma_wmb();
+		stmmac_set_rx_owner(priv, p, use_rx_wd);
 
 		entry = STMMAC_GET_ENTRY(entry, DMA_RX_SIZE);
 	}
@@ -3373,9 +3335,6 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
 	unsigned int next_entry = rx_q->cur_rx;
 	int coe = priv->hw->rx_csum;
 	unsigned int count = 0;
-	bool xmac;
-
-	xmac = priv->plat->has_gmac4 || priv->plat->has_xgmac;
 
 	if (netif_msg_rx_status(priv)) {
 		void *rx_head;
@@ -3389,11 +3348,12 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
 		stmmac_display_ring(priv, rx_head, DMA_RX_SIZE, true);
 	}
 	while (count < limit) {
+		struct stmmac_rx_buffer *buf;
+		struct dma_desc *np, *p;
 		int entry, status;
-		struct dma_desc *p;
-		struct dma_desc *np;
 
 		entry = next_entry;
+		buf = &rx_q->buf_pool[entry];
 
 		if (priv->extend_desc)
 			p = (struct dma_desc *)(rx_q->dma_erx + entry);
@@ -3423,20 +3383,9 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
 			stmmac_rx_extended_status(priv, &priv->dev->stats,
 					&priv->xstats, rx_q->dma_erx + entry);
 		if (unlikely(status == discard_frame)) {
+			page_pool_recycle_direct(rx_q->page_pool, buf->page);
 			priv->dev->stats.rx_errors++;
-			if (priv->hwts_rx_en && !priv->extend_desc) {
-				/* DESC2 & DESC3 will be overwritten by device
-				 * with timestamp value, hence reinitialize
-				 * them in stmmac_rx_refill() function so that
-				 * device can reuse it.
-				 */
-				dev_kfree_skb_any(rx_q->rx_skbuff[entry]);
-				rx_q->rx_skbuff[entry] = NULL;
-				dma_unmap_single(priv->device,
-						 rx_q->rx_skbuff_dma[entry],
-						 priv->dma_buf_sz,
-						 DMA_FROM_DEVICE);
-			}
+			buf->page = NULL;
 		} else {
 			struct sk_buff *skb;
 			int frame_len;
@@ -3476,58 +3425,18 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
 					   frame_len, status);
 			}
 
-			/* The zero-copy is always used for all the sizes
-			 * in case of GMAC4 because it needs
-			 * to refill the used descriptors, always.
-			 */
-			if (unlikely(!xmac &&
-				     ((frame_len < priv->rx_copybreak) ||
-				     stmmac_rx_threshold_count(rx_q)))) {
-				skb = netdev_alloc_skb_ip_align(priv->dev,
-								frame_len);
-				if (unlikely(!skb)) {
-					if (net_ratelimit())
-						dev_warn(priv->device,
-							 "packet dropped\n");
-					priv->dev->stats.rx_dropped++;
-					continue;
-				}
-
-				dma_sync_single_for_cpu(priv->device,
-							rx_q->rx_skbuff_dma
-							[entry], frame_len,
-							DMA_FROM_DEVICE);
-				skb_copy_to_linear_data(skb,
-							rx_q->
-							rx_skbuff[entry]->data,
-							frame_len);
-
-				skb_put(skb, frame_len);
-				dma_sync_single_for_device(priv->device,
-							   rx_q->rx_skbuff_dma
-							   [entry], frame_len,
-							   DMA_FROM_DEVICE);
-			} else {
-				skb = rx_q->rx_skbuff[entry];
-				if (unlikely(!skb)) {
-					if (net_ratelimit())
-						netdev_err(priv->dev,
-							   "%s: Inconsistent Rx chain\n",
-							   priv->dev->name);
-					priv->dev->stats.rx_dropped++;
-					continue;
-				}
-				prefetch(skb->data - NET_IP_ALIGN);
-				rx_q->rx_skbuff[entry] = NULL;
-				rx_q->rx_zeroc_thresh++;
-
-				skb_put(skb, frame_len);
-				dma_unmap_single(priv->device,
-						 rx_q->rx_skbuff_dma[entry],
-						 priv->dma_buf_sz,
-						 DMA_FROM_DEVICE);
+			skb = netdev_alloc_skb_ip_align(priv->dev, frame_len);
+			if (unlikely(!skb)) {
+				priv->dev->stats.rx_dropped++;
+				continue;
 			}
 
+			dma_sync_single_for_cpu(priv->device, buf->addr,
+						frame_len, DMA_FROM_DEVICE);
+			skb_copy_to_linear_data(skb, page_address(buf->page),
+						frame_len);
+			skb_put(skb, frame_len);
+
 			if (netif_msg_pktdata(priv)) {
 				netdev_dbg(priv->dev, "frame received (%dbytes)",
 					   frame_len);
@@ -3547,6 +3456,9 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
 
 			napi_gro_receive(&ch->rx_napi, skb);
 
+			page_pool_recycle_direct(rx_q->page_pool, buf->page);
+			buf->page = NULL;
+
 			priv->dev->stats.rx_packets++;
 			priv->dev->stats.rx_bytes += frame_len;
 		}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
