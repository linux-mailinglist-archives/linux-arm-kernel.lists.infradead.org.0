Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 258DE190F73
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 14:27:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9Q2G6BsZaOhaXHQoMVCBI2pwNWg/wOAGh6tK90Wynck=; b=MeRf82gogBMJ8mH4XOunNqaRvW
	4xZVIUaCfCooc9JA7PV5OkIlaHKR28aBs7OBAEz9J5EVY/iYqzhh+AU8ipswKJFqRkqRZDsktvmwO
	KuWexNETiHdkJaiLNRt7Mgqn4Z0mT+BVFWKPeN41L2xUz8x7S/mnOolcsbnnQUSAjgM3UUo2mWmuf
	22IORZ4DEGX4nIDsE1KqQFWeCOsnf6SslWEiSFeYKOix7jEEZLZrPH1K+JIa2LeBIFvxQB3rxaVc7
	XuSWu65/a0nvE9oAzsd5ZGePx71qtzUTwSy1MsL7d6myuz4lVL/8sDUpAHaDIpkwa955cJK7nDVxy
	OEW/wz4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGjag-0005KK-Tb; Tue, 24 Mar 2020 13:27:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGjXR-0000vj-N1
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 13:24:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D2A0C1FB;
 Tue, 24 Mar 2020 06:24:12 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 69D203F52E;
 Tue, 24 Mar 2020 06:24:11 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: "David S . Miller" <davem@davemloft.net>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: [PATCH v3 12/14] net: axienet: Upgrade descriptors to hold 64-bit
 addresses
Date: Tue, 24 Mar 2020 13:23:45 +0000
Message-Id: <20200324132347.23709-13-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324132347.23709-1-andre.przywara@arm.com>
References: <20200324132347.23709-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_062413_886714_42C8EE38 
X-CRM114-Status: GOOD (  17.46  )
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
 Robert Hancock <hancock@sedsystems.ca>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Newer revisions of the AXI DMA IP (>= v7.1) support 64-bit addresses,
both for the descriptors itself, as well as for the buffers they are
pointing to.
This is realised by adding "MSB" words for the next and phys pointer
right behind the existing address word, now named "LSB". These MSB words
live in formerly reserved areas of the descriptor.

If the hardware supports it, write both words when setting an address.
The buffer address is handled by two wrapper functions, the two
occasions where we set the next pointers are open coded.

For now this is guarded by a flag which we don't set yet.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 drivers/net/ethernet/xilinx/xilinx_axienet.h  |   9 +-
 .../net/ethernet/xilinx/xilinx_axienet_main.c | 113 ++++++++++++------
 2 files changed, 83 insertions(+), 39 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet.h b/drivers/net/ethernet/xilinx/xilinx_axienet.h
index fb7450ca5c53..84c4c3655516 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet.h
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet.h
@@ -328,6 +328,7 @@
 #define XAE_FEATURE_PARTIAL_TX_CSUM	(1 << 1)
 #define XAE_FEATURE_FULL_RX_CSUM	(1 << 2)
 #define XAE_FEATURE_FULL_TX_CSUM	(1 << 3)
+#define XAE_FEATURE_DMA_64BIT		(1 << 4)
 
 #define XAE_NO_CSUM_OFFLOAD		0
 
@@ -340,9 +341,9 @@
 /**
  * struct axidma_bd - Axi Dma buffer descriptor layout
  * @next:         MM2S/S2MM Next Descriptor Pointer
- * @reserved1:    Reserved and not used
+ * @next_msb:     MM2S/S2MM Next Descriptor Pointer (high 32 bits)
  * @phys:         MM2S/S2MM Buffer Address
- * @reserved2:    Reserved and not used
+ * @phys_msb:     MM2S/S2MM Buffer Address (high 32 bits)
  * @reserved3:    Reserved and not used
  * @reserved4:    Reserved and not used
  * @cntrl:        MM2S/S2MM Control value
@@ -355,9 +356,9 @@
  */
 struct axidma_bd {
 	u32 next;	/* Physical address of next buffer descriptor */
-	u32 reserved1;
+	u32 next_msb;	/* high 32 bits for IP >= v7.1, reserved on older IP */
 	u32 phys;
-	u32 reserved2;
+	u32 phys_msb;	/* for IP >= v7.1, reserved for older IP */
 	u32 reserved3;
 	u32 reserved4;
 	u32 cntrl;
diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index e7469eb241ad..6ecd1bb5f81d 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -153,6 +153,25 @@ static void axienet_dma_out_addr(struct axienet_local *lp, off_t reg,
 	axienet_dma_out32(lp, reg, lower_32_bits(addr));
 }
 
+static void desc_set_phys_addr(struct axienet_local *lp, dma_addr_t addr,
+			       struct axidma_bd *desc)
+{
+	desc->phys = lower_32_bits(addr);
+	if (lp->features & XAE_FEATURE_DMA_64BIT)
+		desc->phys_msb = upper_32_bits(addr);
+}
+
+static dma_addr_t desc_get_phys_addr(struct axienet_local *lp,
+				     struct axidma_bd *desc)
+{
+	dma_addr_t ret = desc->phys;
+
+	if (lp->features & XAE_FEATURE_DMA_64BIT)
+		ret |= ((dma_addr_t)desc->phys_msb << 16) << 16;
+
+	return ret;
+}
+
 /**
  * axienet_dma_bd_release - Release buffer descriptor rings
  * @ndev:	Pointer to the net_device structure
@@ -176,6 +195,8 @@ static void axienet_dma_bd_release(struct net_device *ndev)
 		return;
 
 	for (i = 0; i < lp->rx_bd_num; i++) {
+		dma_addr_t phys;
+
 		/* A NULL skb means this descriptor has not been initialised
 		 * at all.
 		 */
@@ -188,9 +209,11 @@ static void axienet_dma_bd_release(struct net_device *ndev)
 		 * descriptor size, after it had been successfully allocated.
 		 * So a non-zero value in there means we need to unmap it.
 		 */
-		if (lp->rx_bd_v[i].cntrl)
-			dma_unmap_single(ndev->dev.parent, lp->rx_bd_v[i].phys,
+		if (lp->rx_bd_v[i].cntrl) {
+			phys = desc_get_phys_addr(lp, &lp->rx_bd_v[i]);
+			dma_unmap_single(ndev->dev.parent, phys,
 					 lp->max_frm_size, DMA_FROM_DEVICE);
+		}
 	}
 
 	dma_free_coherent(ndev->dev.parent,
@@ -235,29 +258,36 @@ static int axienet_dma_bd_init(struct net_device *ndev)
 		goto out;
 
 	for (i = 0; i < lp->tx_bd_num; i++) {
-		lp->tx_bd_v[i].next = lp->tx_bd_p +
-				      sizeof(*lp->tx_bd_v) *
-				      ((i + 1) % lp->tx_bd_num);
+		dma_addr_t addr = lp->tx_bd_p +
+				  sizeof(*lp->tx_bd_v) *
+				  ((i + 1) % lp->tx_bd_num);
+
+		lp->tx_bd_v[i].next = lower_32_bits(addr);
+		if (lp->features & XAE_FEATURE_DMA_64BIT)
+			lp->tx_bd_v[i].next_msb = upper_32_bits(addr);
 	}
 
 	for (i = 0; i < lp->rx_bd_num; i++) {
-		lp->rx_bd_v[i].next = lp->rx_bd_p +
-				      sizeof(*lp->rx_bd_v) *
-				      ((i + 1) % lp->rx_bd_num);
+		dma_addr_t addr;
+
+		addr = lp->rx_bd_p + sizeof(*lp->rx_bd_v) *
+			((i + 1) % lp->rx_bd_num);
+		lp->rx_bd_v[i].next = lower_32_bits(addr);
+		if (lp->features & XAE_FEATURE_DMA_64BIT)
+			lp->rx_bd_v[i].next_msb = upper_32_bits(addr);
 
 		skb = netdev_alloc_skb_ip_align(ndev, lp->max_frm_size);
 		if (!skb)
 			goto out;
 
 		lp->rx_bd_v[i].skb = skb;
-		lp->rx_bd_v[i].phys = dma_map_single(ndev->dev.parent,
-						     skb->data,
-						     lp->max_frm_size,
-						     DMA_FROM_DEVICE);
-		if (dma_mapping_error(ndev->dev.parent, lp->rx_bd_v[i].phys)) {
+		addr = dma_map_single(ndev->dev.parent, skb->data,
+				      lp->max_frm_size, DMA_FROM_DEVICE);
+		if (dma_mapping_error(ndev->dev.parent, addr)) {
 			netdev_err(ndev, "DMA mapping error\n");
 			goto out;
 		}
+		desc_set_phys_addr(lp, addr, &lp->rx_bd_v[i]);
 
 		lp->rx_bd_v[i].cntrl = lp->max_frm_size;
 	}
@@ -574,6 +604,7 @@ static int axienet_free_tx_chain(struct net_device *ndev, u32 first_bd,
 	struct axidma_bd *cur_p;
 	int max_bds = nr_bds;
 	unsigned int status;
+	dma_addr_t phys;
 	int i;
 
 	if (max_bds == -1)
@@ -589,9 +620,10 @@ static int axienet_free_tx_chain(struct net_device *ndev, u32 first_bd,
 		if (nr_bds == -1 && !(status & XAXIDMA_BD_STS_COMPLETE_MASK))
 			break;
 
-		dma_unmap_single(ndev->dev.parent, cur_p->phys,
-				(cur_p->cntrl & XAXIDMA_BD_CTRL_LENGTH_MASK),
-				DMA_TO_DEVICE);
+		phys = desc_get_phys_addr(lp, cur_p);
+		dma_unmap_single(ndev->dev.parent, phys,
+				 (cur_p->cntrl & XAXIDMA_BD_CTRL_LENGTH_MASK),
+				 DMA_TO_DEVICE);
 
 		if (cur_p->skb && (status & XAXIDMA_BD_STS_COMPLETE_MASK))
 			dev_consume_skb_irq(cur_p->skb);
@@ -687,7 +719,7 @@ axienet_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 	u32 csum_start_off;
 	u32 csum_index_off;
 	skb_frag_t *frag;
-	dma_addr_t tail_p;
+	dma_addr_t tail_p, phys;
 	struct axienet_local *lp = netdev_priv(ndev);
 	struct axidma_bd *cur_p;
 	u32 orig_tail_ptr = lp->tx_bd_tail;
@@ -726,14 +758,15 @@ axienet_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 		cur_p->app0 |= 2; /* Tx Full Checksum Offload Enabled */
 	}
 
-	cur_p->phys = dma_map_single(ndev->dev.parent, skb->data,
-				     skb_headlen(skb), DMA_TO_DEVICE);
-	if (unlikely(dma_mapping_error(ndev->dev.parent, cur_p->phys))) {
+	phys = dma_map_single(ndev->dev.parent, skb->data,
+			      skb_headlen(skb), DMA_TO_DEVICE);
+	if (unlikely(dma_mapping_error(ndev->dev.parent, phys))) {
 		if (net_ratelimit())
 			netdev_err(ndev, "TX DMA mapping error\n");
 		ndev->stats.tx_dropped++;
 		return NETDEV_TX_OK;
 	}
+	desc_set_phys_addr(lp, phys, cur_p);
 	cur_p->cntrl = skb_headlen(skb) | XAXIDMA_BD_CTRL_TXSOF_MASK;
 
 	for (ii = 0; ii < num_frag; ii++) {
@@ -741,11 +774,11 @@ axienet_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 			lp->tx_bd_tail = 0;
 		cur_p = &lp->tx_bd_v[lp->tx_bd_tail];
 		frag = &skb_shinfo(skb)->frags[ii];
-		cur_p->phys = dma_map_single(ndev->dev.parent,
-					     skb_frag_address(frag),
-					     skb_frag_size(frag),
-					     DMA_TO_DEVICE);
-		if (unlikely(dma_mapping_error(ndev->dev.parent, cur_p->phys))) {
+		phys = dma_map_single(ndev->dev.parent,
+				      skb_frag_address(frag),
+				      skb_frag_size(frag),
+				      DMA_TO_DEVICE);
+		if (unlikely(dma_mapping_error(ndev->dev.parent, phys))) {
 			if (net_ratelimit())
 				netdev_err(ndev, "TX DMA mapping error\n");
 			ndev->stats.tx_dropped++;
@@ -755,6 +788,7 @@ axienet_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 
 			return NETDEV_TX_OK;
 		}
+		desc_set_phys_addr(lp, phys, cur_p);
 		cur_p->cntrl = skb_frag_size(frag);
 	}
 
@@ -793,10 +827,12 @@ static void axienet_recv(struct net_device *ndev)
 	cur_p = &lp->rx_bd_v[lp->rx_bd_ci];
 
 	while ((cur_p->status & XAXIDMA_BD_STS_COMPLETE_MASK)) {
+		dma_addr_t phys;
+
 		tail_p = lp->rx_bd_p + sizeof(*lp->rx_bd_v) * lp->rx_bd_ci;
 
-		dma_unmap_single(ndev->dev.parent, cur_p->phys,
-				 lp->max_frm_size,
+		phys = desc_get_phys_addr(lp, cur_p);
+		dma_unmap_single(ndev->dev.parent, phys, lp->max_frm_size,
 				 DMA_FROM_DEVICE);
 
 		skb = cur_p->skb;
@@ -832,15 +868,16 @@ static void axienet_recv(struct net_device *ndev)
 		if (!new_skb)
 			return;
 
-		cur_p->phys = dma_map_single(ndev->dev.parent, new_skb->data,
-					     lp->max_frm_size,
-					     DMA_FROM_DEVICE);
-		if (unlikely(dma_mapping_error(ndev->dev.parent, cur_p->phys))) {
+		phys = dma_map_single(ndev->dev.parent, new_skb->data,
+				      lp->max_frm_size,
+				      DMA_FROM_DEVICE);
+		if (unlikely(dma_mapping_error(ndev->dev.parent, phys))) {
 			if (net_ratelimit())
 				netdev_err(ndev, "RX DMA mapping error\n");
 			dev_kfree_skb(new_skb);
 			return;
 		}
+		desc_set_phys_addr(lp, phys, cur_p);
 
 		cur_p->cntrl = lp->max_frm_size;
 		cur_p->status = 0;
@@ -885,7 +922,8 @@ static irqreturn_t axienet_tx_irq(int irq, void *_ndev)
 		return IRQ_NONE;
 	if (status & XAXIDMA_IRQ_ERROR_MASK) {
 		dev_err(&ndev->dev, "DMA Tx error 0x%x\n", status);
-		dev_err(&ndev->dev, "Current BD is at: 0x%x\n",
+		dev_err(&ndev->dev, "Current BD is at: 0x%x%08x\n",
+			(lp->tx_bd_v[lp->tx_bd_ci]).phys_msb,
 			(lp->tx_bd_v[lp->tx_bd_ci]).phys);
 
 		cr = axienet_dma_in32(lp, XAXIDMA_TX_CR_OFFSET);
@@ -934,7 +972,8 @@ static irqreturn_t axienet_rx_irq(int irq, void *_ndev)
 		return IRQ_NONE;
 	if (status & XAXIDMA_IRQ_ERROR_MASK) {
 		dev_err(&ndev->dev, "DMA Rx error 0x%x\n", status);
-		dev_err(&ndev->dev, "Current BD is at: 0x%x\n",
+		dev_err(&ndev->dev, "Current BD is at: 0x%x%08x\n",
+			(lp->rx_bd_v[lp->rx_bd_ci]).phys_msb,
 			(lp->rx_bd_v[lp->rx_bd_ci]).phys);
 
 		cr = axienet_dma_in32(lp, XAXIDMA_TX_CR_OFFSET);
@@ -1616,14 +1655,18 @@ static void axienet_dma_err_handler(struct work_struct *work)
 
 	for (i = 0; i < lp->tx_bd_num; i++) {
 		cur_p = &lp->tx_bd_v[i];
-		if (cur_p->cntrl)
-			dma_unmap_single(ndev->dev.parent, cur_p->phys,
+		if (cur_p->cntrl) {
+			dma_addr_t addr = desc_get_phys_addr(lp, cur_p);
+
+			dma_unmap_single(ndev->dev.parent, addr,
 					 (cur_p->cntrl &
 					  XAXIDMA_BD_CTRL_LENGTH_MASK),
 					 DMA_TO_DEVICE);
+		}
 		if (cur_p->skb)
 			dev_kfree_skb_irq(cur_p->skb);
 		cur_p->phys = 0;
+		cur_p->phys_msb = 0;
 		cur_p->cntrl = 0;
 		cur_p->status = 0;
 		cur_p->app0 = 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
