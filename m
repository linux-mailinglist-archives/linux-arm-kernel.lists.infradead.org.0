Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A200B17323F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 08:58:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWOsfdPAOYJx/N8nwoXfXs2G0v0WU8qxUtTGiuu1Guk=; b=UV+Rek3pPJ5fU4
	KEq+8pWjs1P8BLqD9iIPGNTq4LPO5k0y9tjH2xV+iZWOR+W8mTqvOYUaqD+IDt0wk+fCuCl6MvJoF
	1jCvD0EuPor8xOSehfwKP8XJGBh+91DYEKwShQbBDswWcgRK5kXl6w2H09sXY5nT3jXAHceI2JNLd
	Lxg0AszoJ98V3csCZww51SlKMAS7yKSo8sIn6vvHSiflAjt/wa155iDfllwHKnjR42kA0MBv4qzuo
	RBKke8i7IEBoGhHvc9HxfrNfH36FP8CdyUIssC1CwEhxhuEOzAoBoMSpmDMd/iB+o2f7Gmd6CXH+r
	9bpu64AQQkVPvVzrXe4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7aX3-0004i4-Mh; Fri, 28 Feb 2020 07:58:01 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7aWa-0004U4-GL
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 07:57:34 +0000
Received: from localhost (87-49-45-242-mobile.dk.customer.tdc.net
 [87.49.45.242])
 by first.geanix.com (Postfix) with ESMTPSA id 2C25EC109A;
 Fri, 28 Feb 2020 07:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1582876650; bh=pu008Gz3YHiKBnfA0wxxtEqP1jcbiBf1/bcj+C4AoHk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=JX+7pLD4aWaYRlHul/UghvCnT4wEtF6vAmJk74bOwPls8LhBwWSwJtAa9BKJLoyRd
 vk5EBPM/Z6b8qA93mI7Xt2qBKA6R33txnFM8njBw6+ECiTE5KSxgqtBiGwe8L2zVRC
 cIniguP1sxPvIHrjt8uauqilzRCKkL9k34Fek+66HLv1uw4URhxdWiHu+K9GyyydS4
 iARb8cy2gCUFwrSScC0A2oKqkoqfjjfb454Mn/osamVTRQLjsDT3mxIpy7+IYo6n6N
 eLZOr7hgBMrh0mKjGv/JwWADUnerPrBi4iNg+UHb/orQHczdRmw3BVKTYvJn98INpd
 9cT0FV3De3eQg==
From: Esben Haabendal <esben@geanix.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 3/4] net: ll_temac: Make RX/TX ring sizes configurable
Date: Fri, 28 Feb 2020 08:57:26 +0100
Message-Id: <dcd3bb411ba861afcd19b9ba56def01d47c3bce7.1582875715.git.esben@geanix.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1582875715.git.esben@geanix.com>
References: <cover.1582875715.git.esben@geanix.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=4.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,UNPARSEABLE_RELAY,URIBL_BLOCKED
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on 05ff821c8cf1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_235732_861701_AE4DDEB4 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for setting the RX and TX ring sizes for this driver using
ethtool. Also increase the default RX ring size as the previous default
was far too low for good performance in some configurations.

Signed-off-by: Esben Haabendal <esben@geanix.com>
---
 drivers/net/ethernet/xilinx/ll_temac.h      |  2 +
 drivers/net/ethernet/xilinx/ll_temac_main.c | 96 +++++++++++++++------
 2 files changed, 72 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/ll_temac.h b/drivers/net/ethernet/xilinx/ll_temac.h
index 463ef9eaf42d..8777ec6e21c8 100644
--- a/drivers/net/ethernet/xilinx/ll_temac.h
+++ b/drivers/net/ethernet/xilinx/ll_temac.h
@@ -369,8 +369,10 @@ struct temac_local {
 	/* Buffer descriptors */
 	struct cdmac_bd *tx_bd_v;
 	dma_addr_t tx_bd_p;
+	u32 tx_bd_num;
 	struct cdmac_bd *rx_bd_v;
 	dma_addr_t rx_bd_p;
+	u32 rx_bd_num;
 	int tx_bd_ci;
 	int tx_bd_tail;
 	int rx_bd_ci;
diff --git a/drivers/net/ethernet/xilinx/ll_temac_main.c b/drivers/net/ethernet/xilinx/ll_temac_main.c
index d6853c44e672..5735acb44b57 100644
--- a/drivers/net/ethernet/xilinx/ll_temac_main.c
+++ b/drivers/net/ethernet/xilinx/ll_temac_main.c
@@ -58,8 +58,11 @@
 
 #include "ll_temac.h"
 
-#define TX_BD_NUM   64
-#define RX_BD_NUM   128
+/* Descriptors defines for Tx and Rx DMA */
+#define TX_BD_NUM_DEFAULT		64
+#define RX_BD_NUM_DEFAULT		1024
+#define TX_BD_NUM_MAX			4096
+#define RX_BD_NUM_MAX			4096
 
 /* ---------------------------------------------------------------------
  * Low level register access functions
@@ -301,7 +304,7 @@ static void temac_dma_bd_release(struct net_device *ndev)
 	/* Reset Local Link (DMA) */
 	lp->dma_out(lp, DMA_CONTROL_REG, DMA_CONTROL_RST);
 
-	for (i = 0; i < RX_BD_NUM; i++) {
+	for (i = 0; i < lp->rx_bd_num; i++) {
 		if (!lp->rx_skb[i])
 			break;
 		else {
@@ -312,12 +315,12 @@ static void temac_dma_bd_release(struct net_device *ndev)
 	}
 	if (lp->rx_bd_v)
 		dma_free_coherent(ndev->dev.parent,
-				sizeof(*lp->rx_bd_v) * RX_BD_NUM,
-				lp->rx_bd_v, lp->rx_bd_p);
+				  sizeof(*lp->rx_bd_v) * lp->rx_bd_num,
+				  lp->rx_bd_v, lp->rx_bd_p);
 	if (lp->tx_bd_v)
 		dma_free_coherent(ndev->dev.parent,
-				sizeof(*lp->tx_bd_v) * TX_BD_NUM,
-				lp->tx_bd_v, lp->tx_bd_p);
+				  sizeof(*lp->tx_bd_v) * lp->tx_bd_num,
+				  lp->tx_bd_v, lp->tx_bd_p);
 }
 
 /**
@@ -330,33 +333,33 @@ static int temac_dma_bd_init(struct net_device *ndev)
 	dma_addr_t skb_dma_addr;
 	int i;
 
-	lp->rx_skb = devm_kcalloc(&ndev->dev, RX_BD_NUM, sizeof(*lp->rx_skb),
-				  GFP_KERNEL);
+	lp->rx_skb = devm_kcalloc(&ndev->dev, lp->rx_bd_num,
+				  sizeof(*lp->rx_skb), GFP_KERNEL);
 	if (!lp->rx_skb)
 		goto out;
 
 	/* allocate the tx and rx ring buffer descriptors. */
 	/* returns a virtual address and a physical address. */
 	lp->tx_bd_v = dma_alloc_coherent(ndev->dev.parent,
-					 sizeof(*lp->tx_bd_v) * TX_BD_NUM,
+					 sizeof(*lp->tx_bd_v) * lp->tx_bd_num,
 					 &lp->tx_bd_p, GFP_KERNEL);
 	if (!lp->tx_bd_v)
 		goto out;
 
 	lp->rx_bd_v = dma_alloc_coherent(ndev->dev.parent,
-					 sizeof(*lp->rx_bd_v) * RX_BD_NUM,
+					 sizeof(*lp->rx_bd_v) * lp->rx_bd_num,
 					 &lp->rx_bd_p, GFP_KERNEL);
 	if (!lp->rx_bd_v)
 		goto out;
 
-	for (i = 0; i < TX_BD_NUM; i++) {
+	for (i = 0; i < lp->tx_bd_num; i++) {
 		lp->tx_bd_v[i].next = cpu_to_be32(lp->tx_bd_p
-				+ sizeof(*lp->tx_bd_v) * ((i + 1) % TX_BD_NUM));
+			+ sizeof(*lp->tx_bd_v) * ((i + 1) % lp->tx_bd_num));
 	}
 
-	for (i = 0; i < RX_BD_NUM; i++) {
+	for (i = 0; i < lp->rx_bd_num; i++) {
 		lp->rx_bd_v[i].next = cpu_to_be32(lp->rx_bd_p
-				+ sizeof(*lp->rx_bd_v) * ((i + 1) % RX_BD_NUM));
+			+ sizeof(*lp->rx_bd_v) * ((i + 1) % lp->rx_bd_num));
 
 		skb = netdev_alloc_skb_ip_align(ndev,
 						XTE_MAX_JUMBO_FRAME_SIZE);
@@ -389,7 +392,7 @@ static int temac_dma_bd_init(struct net_device *ndev)
 	lp->tx_bd_ci = 0;
 	lp->tx_bd_tail = 0;
 	lp->rx_bd_ci = 0;
-	lp->rx_bd_tail = RX_BD_NUM - 1;
+	lp->rx_bd_tail = lp->rx_bd_num - 1;
 
 	/* Enable RX DMA transfers */
 	wmb();
@@ -784,7 +787,7 @@ static void temac_start_xmit_done(struct net_device *ndev)
 		ndev->stats.tx_bytes += be32_to_cpu(cur_p->len);
 
 		lp->tx_bd_ci++;
-		if (lp->tx_bd_ci >= TX_BD_NUM)
+		if (lp->tx_bd_ci >= lp->tx_bd_num)
 			lp->tx_bd_ci = 0;
 
 		cur_p = &lp->tx_bd_v[lp->tx_bd_ci];
@@ -810,7 +813,7 @@ static inline int temac_check_tx_bd_space(struct temac_local *lp, int num_frag)
 			return NETDEV_TX_BUSY;
 
 		tail++;
-		if (tail >= TX_BD_NUM)
+		if (tail >= lp->tx_bd_num)
 			tail = 0;
 
 		cur_p = &lp->tx_bd_v[tail];
@@ -874,7 +877,7 @@ temac_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 	ptr_to_txbd((void *)skb, cur_p);
 
 	for (ii = 0; ii < num_frag; ii++) {
-		if (++lp->tx_bd_tail >= TX_BD_NUM)
+		if (++lp->tx_bd_tail >= lp->tx_bd_num)
 			lp->tx_bd_tail = 0;
 
 		cur_p = &lp->tx_bd_v[lp->tx_bd_tail];
@@ -884,7 +887,7 @@ temac_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 					      DMA_TO_DEVICE);
 		if (dma_mapping_error(ndev->dev.parent, skb_dma_addr)) {
 			if (--lp->tx_bd_tail < 0)
-				lp->tx_bd_tail = TX_BD_NUM - 1;
+				lp->tx_bd_tail = lp->tx_bd_num - 1;
 			cur_p = &lp->tx_bd_v[lp->tx_bd_tail];
 			while (--ii >= 0) {
 				--frag;
@@ -893,7 +896,7 @@ temac_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 						 skb_frag_size(frag),
 						 DMA_TO_DEVICE);
 				if (--lp->tx_bd_tail < 0)
-					lp->tx_bd_tail = TX_BD_NUM - 1;
+					lp->tx_bd_tail = lp->tx_bd_num - 1;
 				cur_p = &lp->tx_bd_v[lp->tx_bd_tail];
 			}
 			dma_unmap_single(ndev->dev.parent,
@@ -912,7 +915,7 @@ temac_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 
 	tail_p = lp->tx_bd_p + sizeof(*lp->tx_bd_v) * lp->tx_bd_tail;
 	lp->tx_bd_tail++;
-	if (lp->tx_bd_tail >= TX_BD_NUM)
+	if (lp->tx_bd_tail >= lp->tx_bd_num)
 		lp->tx_bd_tail = 0;
 
 	skb_tx_timestamp(skb);
@@ -932,7 +935,7 @@ static int ll_temac_recv_buffers_available(struct temac_local *lp)
 		return 0;
 	available = 1 + lp->rx_bd_tail - lp->rx_bd_ci;
 	if (available <= 0)
-		available += RX_BD_NUM;
+		available += lp->rx_bd_num;
 	return available;
 }
 
@@ -1001,7 +1004,7 @@ static void ll_temac_recv(struct net_device *ndev)
 		ndev->stats.rx_bytes += length;
 
 		rx_bd = lp->rx_bd_ci;
-		if (++lp->rx_bd_ci >= RX_BD_NUM)
+		if (++lp->rx_bd_ci >= lp->rx_bd_num)
 			lp->rx_bd_ci = 0;
 	} while (rx_bd != lp->rx_bd_tail);
 
@@ -1032,7 +1035,7 @@ static void ll_temac_recv(struct net_device *ndev)
 		dma_addr_t skb_dma_addr;
 
 		rx_bd = lp->rx_bd_tail + 1;
-		if (rx_bd >= RX_BD_NUM)
+		if (rx_bd >= lp->rx_bd_num)
 			rx_bd = 0;
 		bd = &lp->rx_bd_v[rx_bd];
 
@@ -1248,13 +1251,52 @@ static const struct attribute_group temac_attr_group = {
 	.attrs = temac_device_attrs,
 };
 
-/* ethtool support */
+/* ---------------------------------------------------------------------
+ * ethtool support
+ */
+
+static void ll_temac_ethtools_get_ringparam(struct net_device *ndev,
+					    struct ethtool_ringparam *ering)
+{
+	struct temac_local *lp = netdev_priv(ndev);
+
+	ering->rx_max_pending = RX_BD_NUM_MAX;
+	ering->rx_mini_max_pending = 0;
+	ering->rx_jumbo_max_pending = 0;
+	ering->tx_max_pending = TX_BD_NUM_MAX;
+	ering->rx_pending = lp->rx_bd_num;
+	ering->rx_mini_pending = 0;
+	ering->rx_jumbo_pending = 0;
+	ering->tx_pending = lp->tx_bd_num;
+}
+
+static int ll_temac_ethtools_set_ringparam(struct net_device *ndev,
+					   struct ethtool_ringparam *ering)
+{
+	struct temac_local *lp = netdev_priv(ndev);
+
+	if (ering->rx_pending > RX_BD_NUM_MAX ||
+	    ering->rx_mini_pending ||
+	    ering->rx_jumbo_pending ||
+	    ering->rx_pending > TX_BD_NUM_MAX)
+		return -EINVAL;
+
+	if (netif_running(ndev))
+		return -EBUSY;
+
+	lp->rx_bd_num = ering->rx_pending;
+	lp->tx_bd_num = ering->tx_pending;
+	return 0;
+}
+
 static const struct ethtool_ops temac_ethtool_ops = {
 	.nway_reset = phy_ethtool_nway_reset,
 	.get_link = ethtool_op_get_link,
 	.get_ts_info = ethtool_op_get_ts_info,
 	.get_link_ksettings = phy_ethtool_get_link_ksettings,
 	.set_link_ksettings = phy_ethtool_set_link_ksettings,
+	.get_ringparam	= ll_temac_ethtools_get_ringparam,
+	.set_ringparam	= ll_temac_ethtools_set_ringparam,
 };
 
 static int temac_probe(struct platform_device *pdev)
@@ -1298,6 +1340,8 @@ static int temac_probe(struct platform_device *pdev)
 	lp->ndev = ndev;
 	lp->dev = &pdev->dev;
 	lp->options = XTE_OPTION_DEFAULTS;
+	lp->rx_bd_num = RX_BD_NUM_DEFAULT;
+	lp->tx_bd_num = TX_BD_NUM_DEFAULT;
 	spin_lock_init(&lp->rx_lock);
 	INIT_DELAYED_WORK(&lp->restart_work, ll_temac_restart_work_func);
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
