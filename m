Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BCD139629
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 17:26:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eDAWb0jng1QQByRndGAKBnKNY3Vy5XkaaMwZw/a4IwA=; b=sxJ70Ji5f7lJIcGEeyvi/sS7GP
	4SXj7hqCagqXSBnBdheXAPKEIXUIfWmlnGf9ybQ8rrL6yayIOr+qUT67z+M5hiOLJx9jP+detQMb8
	Qodxg1MrlwSS6TmAxidBDUhpaScv6E7TNwbzMy+JRbZBLysfnCPY8ugElJwNmtphLxdG+XbU/6v74
	CuJIZpeCw9CDBBnOKTKmlaawvlUZV/7CdH3w9C4WKHe/xHVNbK17npIIvNt3WrZiM44JF0aRd2A1q
	A3f8ZHQbl1ef2UuQ/ZPO1//s6TfCRqoE1lBJAfuRydV4yZWR8XpHqSe1eco2rVjlgb+V4Y7LLgAJU
	551yE7tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir2Xv-00014B-2H; Mon, 13 Jan 2020 16:26:31 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir2Vq-0007Ss-Ds
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 16:24:29 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id BC517C05DB;
 Mon, 13 Jan 2020 16:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578932661; bh=0tjGmvAef+7sQcFWNfY62Ugl+sjMzpAKCHwdfu2/ZwE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=MSdikSL4faHg35kuHaPN5K8jHKRtYMs69wXXof0LzOGCl/GQKWITl5C3UZSgTHXbF
 i5fd6MNCkUH79gj/tzXyRHlTzQkeXxgdA3kGZ738bDz7uju5qaYGChmfFuYRN8D2Qs
 87jTBYaa6ztL+ofoQOjmhMY1PS1R0YRsMOFxkm+GW30rbL409XbFdlpsibTy4IVH6s
 uuyM4nbKoiucnXpjhHlafaSyxKLvJJDURj26cpNgVByXfbEROuKg0F6C3/kW0XVG2Z
 VWtkDaAg5R9xPecjrUq954BvPO7wXofxsmyTq1E17jeixhv9iFqW5k69/x5T8k6Xb9
 rAIEJi9h0Ubgg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 3E498A0060;
 Mon, 13 Jan 2020 16:24:19 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v3 1/8] net: stmmac: Initial support for TBS
Date: Mon, 13 Jan 2020 17:24:09 +0100
Message-Id: <734e49d00506cc0d9c5b8d3db6b508c48d3d6403.1578932287.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1578932287.git.Jose.Abreu@synopsys.com>
References: <cover.1578932287.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1578932287.git.Jose.Abreu@synopsys.com>
References: <cover.1578932287.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_082422_608445_DD0E210B 
X-CRM114-Status: GOOD (  21.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Adds the initial hooks for TBS support. This needs a 32 byte descriptor
in order for it to work with current HW. Adds all the logic for Enhanced
Descriptors in main core but no HW related logic for now.

Changes from v2:
- Use bitfield for TBS status / support (Jakub)
- Remove unneeded cache alignment (Jakub)
- Fix checkpatch issues

Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

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
 drivers/net/ethernet/stmicro/stmmac/descs.h       |   9 +
 drivers/net/ethernet/stmicro/stmmac/hwif.h        |   7 +
 drivers/net/ethernet/stmicro/stmmac/stmmac.h      |   5 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 199 +++++++++++++++-------
 include/linux/stmmac.h                            |   1 +
 5 files changed, 156 insertions(+), 65 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/descs.h b/drivers/net/ethernet/stmicro/stmmac/descs.h
index 9f0b9a9e63b3..49d6a866244f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/descs.h
+++ b/drivers/net/ethernet/stmicro/stmmac/descs.h
@@ -171,6 +171,15 @@ struct dma_extended_desc {
 	__le32 des7;	/* Tx/Rx Timestamp High */
 };
 
+/* Enhanced descriptor for TBS */
+struct dma_edesc {
+	__le32 des4;
+	__le32 des5;
+	__le32 des6;
+	__le32 des7;
+	struct dma_desc basic;
+};
+
 /* Transmit checksum insertion control */
 #define	TX_CIC_FULL	3	/* Include IP header and pseudoheader */
 
diff --git a/drivers/net/ethernet/stmicro/stmmac/hwif.h b/drivers/net/ethernet/stmicro/stmmac/hwif.h
index 905a6f0edaca..71c23cbd7af8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/hwif.h
+++ b/drivers/net/ethernet/stmicro/stmmac/hwif.h
@@ -29,6 +29,7 @@ struct stmmac_extra_stats;
 struct stmmac_safety_stats;
 struct dma_desc;
 struct dma_extended_desc;
+struct dma_edesc;
 
 /* Descriptors helpers */
 struct stmmac_desc_ops {
@@ -95,6 +96,7 @@ struct stmmac_desc_ops {
 	void (*set_vlan_tag)(struct dma_desc *p, u16 tag, u16 inner_tag,
 			     u32 inner_type);
 	void (*set_vlan)(struct dma_desc *p, u32 type);
+	void (*set_tbs)(struct dma_edesc *p, u32 sec, u32 nsec);
 };
 
 #define stmmac_init_rx_desc(__priv, __args...) \
@@ -157,6 +159,8 @@ struct stmmac_desc_ops {
 	stmmac_do_void_callback(__priv, desc, set_vlan_tag, __args)
 #define stmmac_set_desc_vlan(__priv, __args...) \
 	stmmac_do_void_callback(__priv, desc, set_vlan, __args)
+#define stmmac_set_desc_tbs(__priv, __args...) \
+	stmmac_do_void_callback(__priv, desc, set_tbs, __args)
 
 struct stmmac_dma_cfg;
 struct dma_features;
@@ -210,6 +214,7 @@ struct stmmac_dma_ops {
 	void (*qmode)(void __iomem *ioaddr, u32 channel, u8 qmode);
 	void (*set_bfsize)(void __iomem *ioaddr, int bfsize, u32 chan);
 	void (*enable_sph)(void __iomem *ioaddr, bool en, u32 chan);
+	int (*enable_tbs)(void __iomem *ioaddr, bool en, u32 chan);
 };
 
 #define stmmac_reset(__priv, __args...) \
@@ -268,6 +273,8 @@ struct stmmac_dma_ops {
 	stmmac_do_void_callback(__priv, dma, set_bfsize, __args)
 #define stmmac_enable_sph(__priv, __args...) \
 	stmmac_do_void_callback(__priv, dma, enable_sph, __args)
+#define stmmac_enable_tbs(__priv, __args...) \
+	stmmac_do_callback(__priv, dma, enable_tbs, __args)
 
 struct mac_device_info;
 struct net_device;
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac.h b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
index f98c5eefb382..9c02fc754bf1 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac.h
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
@@ -39,13 +39,18 @@ struct stmmac_tx_info {
 	bool is_jumbo;
 };
 
+#define STMMAC_TBS_AVAIL	BIT(0)
+#define STMMAC_TBS_EN		BIT(1)
+
 /* Frequently used values are kept adjacent for cache effect */
 struct stmmac_tx_queue {
 	u32 tx_count_frames;
+	int tbs;
 	struct timer_list txtimer;
 	u32 queue_index;
 	struct stmmac_priv *priv_data;
 	struct dma_extended_desc *dma_etx ____cacheline_aligned_in_smp;
+	struct dma_edesc *dma_entx;
 	struct dma_desc *dma_tx;
 	struct sk_buff **tx_skbuff;
 	struct stmmac_tx_info *tx_skbuff_dma;
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index f113138df0d9..baffb4e8d99a 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -1090,6 +1090,8 @@ static void stmmac_display_tx_rings(struct stmmac_priv *priv)
 
 		if (priv->extend_desc)
 			head_tx = (void *)tx_q->dma_etx;
+		else if (tx_q->tbs & STMMAC_TBS_AVAIL)
+			head_tx = (void *)tx_q->dma_entx;
 		else
 			head_tx = (void *)tx_q->dma_tx;
 
@@ -1163,13 +1165,19 @@ static void stmmac_clear_tx_descriptors(struct stmmac_priv *priv, u32 queue)
 	int i;
 
 	/* Clear the TX descriptors */
-	for (i = 0; i < DMA_TX_SIZE; i++)
+	for (i = 0; i < DMA_TX_SIZE; i++) {
+		int last = (i == (DMA_TX_SIZE - 1));
+		struct dma_desc *p;
+
 		if (priv->extend_desc)
-			stmmac_init_tx_desc(priv, &tx_q->dma_etx[i].basic,
-					priv->mode, (i == DMA_TX_SIZE - 1));
+			p = &tx_q->dma_etx[i].basic;
+		else if (tx_q->tbs & STMMAC_TBS_AVAIL)
+			p = &tx_q->dma_entx[i].basic;
 		else
-			stmmac_init_tx_desc(priv, &tx_q->dma_tx[i],
-					priv->mode, (i == DMA_TX_SIZE - 1));
+			p = &tx_q->dma_tx[i];
+
+		stmmac_init_tx_desc(priv, p, priv->mode, last);
+	}
 }
 
 /**
@@ -1383,7 +1391,7 @@ static int init_dma_tx_desc_rings(struct net_device *dev)
 			if (priv->extend_desc)
 				stmmac_mode_init(priv, tx_q->dma_etx,
 						tx_q->dma_tx_phy, DMA_TX_SIZE, 1);
-			else
+			else if (!(tx_q->tbs & STMMAC_TBS_AVAIL))
 				stmmac_mode_init(priv, tx_q->dma_tx,
 						tx_q->dma_tx_phy, DMA_TX_SIZE, 0);
 		}
@@ -1392,6 +1400,8 @@ static int init_dma_tx_desc_rings(struct net_device *dev)
 			struct dma_desc *p;
 			if (priv->extend_desc)
 				p = &((tx_q->dma_etx + i)->basic);
+			else if (tx_q->tbs & STMMAC_TBS_AVAIL)
+				p = &((tx_q->dma_entx + i)->basic);
 			else
 				p = tx_q->dma_tx + i;
 
@@ -1511,19 +1521,26 @@ static void free_dma_tx_desc_resources(struct stmmac_priv *priv)
 	/* Free TX queue resources */
 	for (queue = 0; queue < tx_count; queue++) {
 		struct stmmac_tx_queue *tx_q = &priv->tx_queue[queue];
+		size_t size;
+		void *addr;
 
 		/* Release the DMA TX socket buffers */
 		dma_free_tx_skbufs(priv, queue);
 
-		/* Free DMA regions of consistent memory previously allocated */
-		if (!priv->extend_desc)
-			dma_free_coherent(priv->device,
-					  DMA_TX_SIZE * sizeof(struct dma_desc),
-					  tx_q->dma_tx, tx_q->dma_tx_phy);
-		else
-			dma_free_coherent(priv->device, DMA_TX_SIZE *
-					  sizeof(struct dma_extended_desc),
-					  tx_q->dma_etx, tx_q->dma_tx_phy);
+		if (priv->extend_desc) {
+			size = sizeof(struct dma_extended_desc);
+			addr = tx_q->dma_etx;
+		} else if (tx_q->tbs & STMMAC_TBS_AVAIL) {
+			size = sizeof(struct dma_edesc);
+			addr = tx_q->dma_entx;
+		} else {
+			size = sizeof(struct dma_desc);
+			addr = tx_q->dma_tx;
+		}
+
+		size *= DMA_TX_SIZE;
+
+		dma_free_coherent(priv->device, size, addr, tx_q->dma_tx_phy);
 
 		kfree(tx_q->tx_skbuff_dma);
 		kfree(tx_q->tx_skbuff);
@@ -1616,6 +1633,8 @@ static int alloc_dma_tx_desc_resources(struct stmmac_priv *priv)
 	/* TX queues buffers and DMA */
 	for (queue = 0; queue < tx_count; queue++) {
 		struct stmmac_tx_queue *tx_q = &priv->tx_queue[queue];
+		size_t size;
+		void *addr;
 
 		tx_q->queue_index = queue;
 		tx_q->priv_data = priv;
@@ -1632,28 +1651,32 @@ static int alloc_dma_tx_desc_resources(struct stmmac_priv *priv)
 		if (!tx_q->tx_skbuff)
 			goto err_dma;
 
-		if (priv->extend_desc) {
-			tx_q->dma_etx = dma_alloc_coherent(priv->device,
-							   DMA_TX_SIZE * sizeof(struct dma_extended_desc),
-							   &tx_q->dma_tx_phy,
-							   GFP_KERNEL);
-			if (!tx_q->dma_etx)
-				goto err_dma;
-		} else {
-			tx_q->dma_tx = dma_alloc_coherent(priv->device,
-							  DMA_TX_SIZE * sizeof(struct dma_desc),
-							  &tx_q->dma_tx_phy,
-							  GFP_KERNEL);
-			if (!tx_q->dma_tx)
-				goto err_dma;
-		}
+		if (priv->extend_desc)
+			size = sizeof(struct dma_extended_desc);
+		else if (tx_q->tbs & STMMAC_TBS_AVAIL)
+			size = sizeof(struct dma_edesc);
+		else
+			size = sizeof(struct dma_desc);
+
+		size *= DMA_TX_SIZE;
+
+		addr = dma_alloc_coherent(priv->device, size,
+					  &tx_q->dma_tx_phy, GFP_KERNEL);
+		if (!addr)
+			goto err_dma;
+
+		if (priv->extend_desc)
+			tx_q->dma_etx = addr;
+		else if (tx_q->tbs & STMMAC_TBS_AVAIL)
+			tx_q->dma_entx = addr;
+		else
+			tx_q->dma_tx = addr;
 	}
 
 	return 0;
 
 err_dma:
 	free_dma_tx_desc_resources(priv);
-
 	return ret;
 }
 
@@ -1885,6 +1908,8 @@ static int stmmac_tx_clean(struct stmmac_priv *priv, int budget, u32 queue)
 
 		if (priv->extend_desc)
 			p = (struct dma_desc *)(tx_q->dma_etx + entry);
+		else if (tx_q->tbs & STMMAC_TBS_AVAIL)
+			p = &tx_q->dma_entx[entry].basic;
 		else
 			p = tx_q->dma_tx + entry;
 
@@ -1983,19 +2008,12 @@ static int stmmac_tx_clean(struct stmmac_priv *priv, int budget, u32 queue)
 static void stmmac_tx_err(struct stmmac_priv *priv, u32 chan)
 {
 	struct stmmac_tx_queue *tx_q = &priv->tx_queue[chan];
-	int i;
 
 	netif_tx_stop_queue(netdev_get_tx_queue(priv->dev, chan));
 
 	stmmac_stop_tx_dma(priv, chan);
 	dma_free_tx_skbufs(priv, chan);
-	for (i = 0; i < DMA_TX_SIZE; i++)
-		if (priv->extend_desc)
-			stmmac_init_tx_desc(priv, &tx_q->dma_etx[i].basic,
-					priv->mode, (i == DMA_TX_SIZE - 1));
-		else
-			stmmac_init_tx_desc(priv, &tx_q->dma_tx[i],
-					priv->mode, (i == DMA_TX_SIZE - 1));
+	stmmac_clear_tx_descriptors(priv, chan);
 	tx_q->dirty_tx = 0;
 	tx_q->cur_tx = 0;
 	tx_q->mss = 0;
@@ -2632,6 +2650,14 @@ static int stmmac_hw_setup(struct net_device *dev, bool init_ptp)
 	if (priv->dma_cap.vlins)
 		stmmac_enable_vlan(priv, priv->hw, STMMAC_VLAN_INSERT);
 
+	/* TBS */
+	for (chan = 0; chan < tx_cnt; chan++) {
+		struct stmmac_tx_queue *tx_q = &priv->tx_queue[chan];
+		int enable = tx_q->tbs & STMMAC_TBS_AVAIL;
+
+		stmmac_enable_tbs(priv, priv->ioaddr, enable, chan);
+	}
+
 	/* Start the ball rolling... */
 	stmmac_start_all_dma(priv);
 
@@ -2689,6 +2715,16 @@ static int stmmac_open(struct net_device *dev)
 
 	priv->rx_copybreak = STMMAC_RX_COPYBREAK;
 
+	/* Earlier check for TBS */
+	for (chan = 0; chan < priv->plat->tx_queues_to_use; chan++) {
+		struct stmmac_tx_queue *tx_q = &priv->tx_queue[chan];
+		int tbs_en = priv->plat->tx_queues_cfg[chan].tbs_en;
+
+		tx_q->tbs |= tbs_en ? STMMAC_TBS_AVAIL : 0;
+		if (stmmac_enable_tbs(priv, priv->ioaddr, tbs_en, chan))
+			tx_q->tbs &= ~STMMAC_TBS_AVAIL;
+	}
+
 	ret = alloc_dma_desc_resources(priv);
 	if (ret < 0) {
 		netdev_err(priv->dev, "%s: DMA descriptors allocation failed\n",
@@ -2837,7 +2873,11 @@ static bool stmmac_vlan_insert(struct stmmac_priv *priv, struct sk_buff *skb,
 
 	tag = skb_vlan_tag_get(skb);
 
-	p = tx_q->dma_tx + tx_q->cur_tx;
+	if (tx_q->tbs & STMMAC_TBS_AVAIL)
+		p = &tx_q->dma_entx[tx_q->cur_tx].basic;
+	else
+		p = &tx_q->dma_tx[tx_q->cur_tx];
+
 	if (stmmac_set_desc_vlan_tag(priv, p, tag, inner_tag, inner_type))
 		return false;
 
@@ -2872,7 +2912,11 @@ static void stmmac_tso_allocator(struct stmmac_priv *priv, dma_addr_t des,
 
 		tx_q->cur_tx = STMMAC_GET_ENTRY(tx_q->cur_tx, DMA_TX_SIZE);
 		WARN_ON(tx_q->tx_skbuff[tx_q->cur_tx]);
-		desc = tx_q->dma_tx + tx_q->cur_tx;
+
+		if (tx_q->tbs & STMMAC_TBS_AVAIL)
+			desc = &tx_q->dma_entx[tx_q->cur_tx].basic;
+		else
+			desc = &tx_q->dma_tx[tx_q->cur_tx];
 
 		curr_addr = des + (total_len - tmp_len);
 		if (priv->dma_cap.addr64 <= 32)
@@ -2923,13 +2967,13 @@ static netdev_tx_t stmmac_tso_xmit(struct sk_buff *skb, struct net_device *dev)
 {
 	struct dma_desc *desc, *first, *mss_desc = NULL;
 	struct stmmac_priv *priv = netdev_priv(dev);
+	int desc_size, tmp_pay_len = 0, first_tx;
 	int nfrags = skb_shinfo(skb)->nr_frags;
 	u32 queue = skb_get_queue_mapping(skb);
 	unsigned int first_entry, tx_packets;
-	int tmp_pay_len = 0, first_tx;
 	struct stmmac_tx_queue *tx_q;
-	u8 proto_hdr_len, hdr;
 	bool has_vlan, set_ic;
+	u8 proto_hdr_len, hdr;
 	u32 pay_len, mss;
 	dma_addr_t des;
 	int i;
@@ -2966,7 +3010,11 @@ static netdev_tx_t stmmac_tso_xmit(struct sk_buff *skb, struct net_device *dev)
 
 	/* set new MSS value if needed */
 	if (mss != tx_q->mss) {
-		mss_desc = tx_q->dma_tx + tx_q->cur_tx;
+		if (tx_q->tbs & STMMAC_TBS_AVAIL)
+			mss_desc = &tx_q->dma_entx[tx_q->cur_tx].basic;
+		else
+			mss_desc = &tx_q->dma_tx[tx_q->cur_tx];
+
 		stmmac_set_mss(priv, mss_desc, mss);
 		tx_q->mss = mss;
 		tx_q->cur_tx = STMMAC_GET_ENTRY(tx_q->cur_tx, DMA_TX_SIZE);
@@ -2986,7 +3034,10 @@ static netdev_tx_t stmmac_tso_xmit(struct sk_buff *skb, struct net_device *dev)
 	first_entry = tx_q->cur_tx;
 	WARN_ON(tx_q->tx_skbuff[first_entry]);
 
-	desc = tx_q->dma_tx + first_entry;
+	if (tx_q->tbs & STMMAC_TBS_AVAIL)
+		desc = &tx_q->dma_entx[first_entry].basic;
+	else
+		desc = &tx_q->dma_tx[first_entry];
 	first = desc;
 
 	if (has_vlan)
@@ -3058,7 +3109,11 @@ static netdev_tx_t stmmac_tso_xmit(struct sk_buff *skb, struct net_device *dev)
 		set_ic = false;
 
 	if (set_ic) {
-		desc = &tx_q->dma_tx[tx_q->cur_tx];
+		if (tx_q->tbs & STMMAC_TBS_AVAIL)
+			desc = &tx_q->dma_entx[tx_q->cur_tx].basic;
+		else
+			desc = &tx_q->dma_tx[tx_q->cur_tx];
+
 		tx_q->tx_count_frames = 0;
 		stmmac_set_tx_ic(priv, desc);
 		priv->xstats.tx_set_ic_bit++;
@@ -3121,16 +3176,18 @@ static netdev_tx_t stmmac_tso_xmit(struct sk_buff *skb, struct net_device *dev)
 		pr_info("%s: curr=%d dirty=%d f=%d, e=%d, f_p=%p, nfrags %d\n",
 			__func__, tx_q->cur_tx, tx_q->dirty_tx, first_entry,
 			tx_q->cur_tx, first, nfrags);
-
-		stmmac_display_ring(priv, (void *)tx_q->dma_tx, DMA_TX_SIZE, 0);
-
 		pr_info(">>> frame to be transmitted: ");
 		print_pkt(skb->data, skb_headlen(skb));
 	}
 
 	netdev_tx_sent_queue(netdev_get_tx_queue(dev, queue), skb->len);
 
-	tx_q->tx_tail_addr = tx_q->dma_tx_phy + (tx_q->cur_tx * sizeof(*desc));
+	if (tx_q->tbs & STMMAC_TBS_AVAIL)
+		desc_size = sizeof(struct dma_edesc);
+	else
+		desc_size = sizeof(struct dma_desc);
+
+	tx_q->tx_tail_addr = tx_q->dma_tx_phy + (tx_q->cur_tx * desc_size);
 	stmmac_set_tx_tail_ptr(priv, priv->ioaddr, tx_q->tx_tail_addr, queue);
 	stmmac_tx_timer_arm(priv, queue);
 
@@ -3160,10 +3217,11 @@ static netdev_tx_t stmmac_xmit(struct sk_buff *skb, struct net_device *dev)
 	u32 queue = skb_get_queue_mapping(skb);
 	int nfrags = skb_shinfo(skb)->nr_frags;
 	int gso = skb_shinfo(skb)->gso_type;
+	struct dma_edesc *tbs_desc = NULL;
+	int entry, desc_size, first_tx;
 	struct dma_desc *desc, *first;
 	struct stmmac_tx_queue *tx_q;
 	bool has_vlan, set_ic;
-	int entry, first_tx;
 	dma_addr_t des;
 
 	tx_q = &priv->tx_queue[queue];
@@ -3203,6 +3261,8 @@ static netdev_tx_t stmmac_xmit(struct sk_buff *skb, struct net_device *dev)
 
 	if (likely(priv->extend_desc))
 		desc = (struct dma_desc *)(tx_q->dma_etx + entry);
+	else if (tx_q->tbs & STMMAC_TBS_AVAIL)
+		desc = &tx_q->dma_entx[entry].basic;
 	else
 		desc = tx_q->dma_tx + entry;
 
@@ -3232,6 +3292,8 @@ static netdev_tx_t stmmac_xmit(struct sk_buff *skb, struct net_device *dev)
 
 		if (likely(priv->extend_desc))
 			desc = (struct dma_desc *)(tx_q->dma_etx + entry);
+		else if (tx_q->tbs & STMMAC_TBS_AVAIL)
+			desc = &tx_q->dma_entx[entry].basic;
 		else
 			desc = tx_q->dma_tx + entry;
 
@@ -3278,6 +3340,8 @@ static netdev_tx_t stmmac_xmit(struct sk_buff *skb, struct net_device *dev)
 	if (set_ic) {
 		if (likely(priv->extend_desc))
 			desc = &tx_q->dma_etx[entry].basic;
+		else if (tx_q->tbs & STMMAC_TBS_AVAIL)
+			desc = &tx_q->dma_entx[entry].basic;
 		else
 			desc = &tx_q->dma_tx[entry];
 
@@ -3295,20 +3359,11 @@ static netdev_tx_t stmmac_xmit(struct sk_buff *skb, struct net_device *dev)
 	tx_q->cur_tx = entry;
 
 	if (netif_msg_pktdata(priv)) {
-		void *tx_head;
-
 		netdev_dbg(priv->dev,
 			   "%s: curr=%d dirty=%d f=%d, e=%d, first=%p, nfrags=%d",
 			   __func__, tx_q->cur_tx, tx_q->dirty_tx, first_entry,
 			   entry, first, nfrags);
 
-		if (priv->extend_desc)
-			tx_head = (void *)tx_q->dma_etx;
-		else
-			tx_head = (void *)tx_q->dma_tx;
-
-		stmmac_display_ring(priv, tx_head, DMA_TX_SIZE, false);
-
 		netdev_dbg(priv->dev, ">>> frame to be transmitted: ");
 		print_pkt(skb->data, skb->len);
 	}
@@ -3354,12 +3409,19 @@ static netdev_tx_t stmmac_xmit(struct sk_buff *skb, struct net_device *dev)
 
 		/* Prepare the first descriptor setting the OWN bit too */
 		stmmac_prepare_tx_desc(priv, first, 1, nopaged_len,
-				csum_insertion, priv->mode, 1, last_segment,
+				csum_insertion, priv->mode, 0, last_segment,
 				skb->len);
-	} else {
-		stmmac_set_tx_owner(priv, first);
 	}
 
+	if (tx_q->tbs & STMMAC_TBS_EN) {
+		struct timespec64 ts = ns_to_timespec64(skb->tstamp);
+
+		tbs_desc = &tx_q->dma_entx[first_entry];
+		stmmac_set_desc_tbs(priv, tbs_desc, ts.tv_sec, ts.tv_nsec);
+	}
+
+	stmmac_set_tx_owner(priv, first);
+
 	/* The own bit must be the latest setting done when prepare the
 	 * descriptor and then barrier is needed to make sure that
 	 * all is coherent before granting the DMA engine.
@@ -3370,7 +3432,14 @@ static netdev_tx_t stmmac_xmit(struct sk_buff *skb, struct net_device *dev)
 
 	stmmac_enable_dma_transmission(priv, priv->ioaddr);
 
-	tx_q->tx_tail_addr = tx_q->dma_tx_phy + (tx_q->cur_tx * sizeof(*desc));
+	if (likely(priv->extend_desc))
+		desc_size = sizeof(struct dma_extended_desc);
+	else if (tx_q->tbs & STMMAC_TBS_AVAIL)
+		desc_size = sizeof(struct dma_edesc);
+	else
+		desc_size = sizeof(struct dma_desc);
+
+	tx_q->tx_tail_addr = tx_q->dma_tx_phy + (tx_q->cur_tx * desc_size);
 	stmmac_set_tx_tail_ptr(priv, priv->ioaddr, tx_q->tx_tail_addr, queue);
 	stmmac_tx_timer_arm(priv, queue);
 
@@ -4193,7 +4262,7 @@ static int stmmac_rings_status_show(struct seq_file *seq, void *v)
 			seq_printf(seq, "Extended descriptor ring:\n");
 			sysfs_display_ring((void *)tx_q->dma_etx,
 					   DMA_TX_SIZE, 1, seq);
-		} else {
+		} else if (!(tx_q->tbs & STMMAC_TBS_AVAIL)) {
 			seq_printf(seq, "Descriptor ring:\n");
 			sysfs_display_ring((void *)tx_q->dma_tx,
 					   DMA_TX_SIZE, 0, seq);
diff --git a/include/linux/stmmac.h b/include/linux/stmmac.h
index 0531afa9b21e..19190c609282 100644
--- a/include/linux/stmmac.h
+++ b/include/linux/stmmac.h
@@ -139,6 +139,7 @@ struct stmmac_txq_cfg {
 	u32 low_credit;
 	bool use_prio;
 	u32 prio;
+	int tbs_en;
 };
 
 struct plat_stmmacenet_data {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
