Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB43166FD6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 07:49:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=42TbIOKOfkxWUzVfqLJetscaGTXOInT3/1+M8wVzLI0=; b=aNczicZRVZ9Cke
	+dNKp0YTaf3FokQJ5xZXIusuisTdT+i1OAxw4F3/oVfgBQSv6y6+/GXL2em6xgioEU3+Dt99fXIv5
	E8uKpyDVMjSQYohhVMBxRehcJ5P6qxk8iSzSdb4mb8HtmvkIva4AYdOeepIWRDgi7K2W08iqn9TZv
	iGgWuTFg76afh7AOxwvSNByJ2Fu/+1udCrc4m/AwIiiMoDDR9MFiezGAz/ilE5V2V7ZjFbTxQLp86
	y2iggwTzVUMz8bF0wTW+YiMp/GpWBqfB9fg5V201zptS5QEA80hn0mq7ZSpLTF3U0G09C2sZgDDaE
	AXlnVj4fF8h/Wt/37Mdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j527c-0001Ri-5P; Fri, 21 Feb 2020 06:49:12 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j526T-0000Nx-Mu
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 06:48:04 +0000
Received: from localhost (87-49-45-242-mobile.dk.customer.tdc.net
 [87.49.45.242])
 by first.geanix.com (Postfix) with ESMTPSA id BA1EFAEB4D;
 Fri, 21 Feb 2020 06:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1582267678; bh=C6ldIWGff5T8O4HfbemgNQNVmUkFjfJUuuR+sw4Z36I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=f6uD2QwqPaGqlBPWb77tKNPtvgUki/99sA2qGfEsCVviAs3B69DuhQNNxzdhzzKfJ
 cefu9iWzttf08ePuGff5VIZuVxRdFm7jDb+/SQxDeYWWMCWm85XfrLZ4bK6KWoMDWH
 dvhvPqHwNqw9bjUsImIFl0KknSudsplJgr0NnUZUdrPkidqxz+FPoT3R80fF9qKLDU
 Ul1r+hvgx68L9S3a4bQk4JuuAekDVN3y5bcDY3ASQmSMYedXr+6D1EogxEctfFTGnI
 3WANSs4OjCwJ3ZuuR/x46OAwawFmBYW0AzOThx/7svC5T6yf1aoKqwo5dNg2TU/ArX
 4fZshi2Bay9HA==
From: Esben Haabendal <esben@geanix.com>
To: netdev@vger.kernel.org
Subject: [PATCH net v2 4/4] net: ll_temac: Handle DMA halt condition caused by
 buffer underrun
Date: Fri, 21 Feb 2020 07:47:58 +0100
Message-Id: <9d7cb658d37577895b9755a434eacba36a62f580.1582267079.git.esben@geanix.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <cover.1582267079.git.esben@geanix.com>
References: <cover.1582108989.git.esben@geanix.com>
 <cover.1582267079.git.esben@geanix.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=4.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,UNPARSEABLE_RELAY,URIBL_BLOCKED
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on 05ff821c8cf1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_224802_074811_9FE9D25F 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SDMA engine used by TEMAC halts operation when it has finished
processing of the last buffer descriptor in the buffer ring.
Unfortunately, no interrupt event is generated when this happens,
so we need to setup another mechanism to make sure DMA operation is
restarted when enough buffers have been added to the ring.

Fixes: 92744989533c ("net: add Xilinx ll_temac device driver")
Signed-off-by: Esben Haabendal <esben@geanix.com>
---
 drivers/net/ethernet/xilinx/ll_temac.h      |  3 ++
 drivers/net/ethernet/xilinx/ll_temac_main.c | 58 +++++++++++++++++++--
 2 files changed, 56 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/ll_temac.h b/drivers/net/ethernet/xilinx/ll_temac.h
index 99fe059e5c7f..53fb8141f1a6 100644
--- a/drivers/net/ethernet/xilinx/ll_temac.h
+++ b/drivers/net/ethernet/xilinx/ll_temac.h
@@ -380,6 +380,9 @@ struct temac_local {
 	/* DMA channel control setup */
 	u32 tx_chnl_ctrl;
 	u32 rx_chnl_ctrl;
+	u8 coalesce_count_rx;
+
+	struct delayed_work restart_work;
 };
 
 /* Wrappers for temac_ior()/temac_iow() function pointers above */
diff --git a/drivers/net/ethernet/xilinx/ll_temac_main.c b/drivers/net/ethernet/xilinx/ll_temac_main.c
index 255207f2fd27..9461acec6f70 100644
--- a/drivers/net/ethernet/xilinx/ll_temac_main.c
+++ b/drivers/net/ethernet/xilinx/ll_temac_main.c
@@ -51,6 +51,7 @@
 #include <linux/ip.h>
 #include <linux/slab.h>
 #include <linux/interrupt.h>
+#include <linux/workqueue.h>
 #include <linux/dma-mapping.h>
 #include <linux/processor.h>
 #include <linux/platform_data/xilinx-ll-temac.h>
@@ -866,8 +867,11 @@ temac_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 	skb_dma_addr = dma_map_single(ndev->dev.parent, skb->data,
 				      skb_headlen(skb), DMA_TO_DEVICE);
 	cur_p->len = cpu_to_be32(skb_headlen(skb));
-	if (WARN_ON_ONCE(dma_mapping_error(ndev->dev.parent, skb_dma_addr)))
-		return NETDEV_TX_BUSY;
+	if (WARN_ON_ONCE(dma_mapping_error(ndev->dev.parent, skb_dma_addr))) {
+		dev_kfree_skb_any(skb);
+		ndev->stats.tx_dropped++;
+		return NETDEV_TX_OK;
+	}
 	cur_p->phys = cpu_to_be32(skb_dma_addr);
 	ptr_to_txbd((void *)skb, cur_p);
 
@@ -897,7 +901,9 @@ temac_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 			dma_unmap_single(ndev->dev.parent,
 					 be32_to_cpu(cur_p->phys),
 					 skb_headlen(skb), DMA_TO_DEVICE);
-			return NETDEV_TX_BUSY;
+			dev_kfree_skb_any(skb);
+			ndev->stats.tx_dropped++;
+			return NETDEV_TX_OK;
 		}
 		cur_p->phys = cpu_to_be32(skb_dma_addr);
 		cur_p->len = cpu_to_be32(skb_frag_size(frag));
@@ -920,6 +926,17 @@ temac_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 	return NETDEV_TX_OK;
 }
 
+static int ll_temac_recv_buffers_available(struct temac_local *lp)
+{
+	int available;
+
+	if (!lp->rx_skb[lp->rx_bd_ci])
+		return 0;
+	available = 1 + lp->rx_bd_tail - lp->rx_bd_ci;
+	if (available <= 0)
+		available += RX_BD_NUM;
+	return available;
+}
 
 static void ll_temac_recv(struct net_device *ndev)
 {
@@ -990,6 +1007,18 @@ static void ll_temac_recv(struct net_device *ndev)
 			lp->rx_bd_ci = 0;
 	} while (rx_bd != lp->rx_bd_tail);
 
+	/* DMA operations will halt when the last buffer descriptor is
+	 * processed (ie. the one pointed to by RX_TAILDESC_PTR).
+	 * When that happens, no more interrupt events will be
+	 * generated.  No IRQ_COAL or IRQ_DLY, and not even an
+	 * IRQ_ERR.  To avoid stalling, we schedule a delayed work
+	 * when there is a potential risk of that happening.  The work
+	 * will call this function, and thus re-schedule itself until
+	 * enough buffers are available again.
+	 */
+	if (ll_temac_recv_buffers_available(lp) < lp->coalesce_count_rx)
+		schedule_delayed_work(&lp->restart_work, HZ / 1000);
+
 	/* Allocate new buffers for those buffer descriptors that were
 	 * passed to network stack.  Note that GFP_ATOMIC allocations
 	 * can fail (e.g. when a larger burst of GFP_ATOMIC
@@ -1045,6 +1074,18 @@ static void ll_temac_recv(struct net_device *ndev)
 	spin_unlock_irqrestore(&lp->rx_lock, flags);
 }
 
+/* Function scheduled to ensure a restart in case of DMA halt
+ * condition caused by running out of buffer descriptors.
+ */
+static void ll_temac_restart_work_func(struct work_struct *work)
+{
+	struct temac_local *lp = container_of(work, struct temac_local,
+					      restart_work.work);
+	struct net_device *ndev = lp->ndev;
+
+	ll_temac_recv(ndev);
+}
+
 static irqreturn_t ll_temac_tx_irq(int irq, void *_ndev)
 {
 	struct net_device *ndev = _ndev;
@@ -1137,6 +1178,8 @@ static int temac_stop(struct net_device *ndev)
 
 	dev_dbg(&ndev->dev, "temac_close()\n");
 
+	cancel_delayed_work_sync(&lp->restart_work);
+
 	free_irq(lp->tx_irq, ndev);
 	free_irq(lp->rx_irq, ndev);
 
@@ -1258,6 +1301,7 @@ static int temac_probe(struct platform_device *pdev)
 	lp->dev = &pdev->dev;
 	lp->options = XTE_OPTION_DEFAULTS;
 	spin_lock_init(&lp->rx_lock);
+	INIT_DELAYED_WORK(&lp->restart_work, ll_temac_restart_work_func);
 
 	/* Setup mutex for synchronization of indirect register access */
 	if (pdata) {
@@ -1364,6 +1408,7 @@ static int temac_probe(struct platform_device *pdev)
 		 */
 		lp->tx_chnl_ctrl = 0x10220000;
 		lp->rx_chnl_ctrl = 0xff070000;
+		lp->coalesce_count_rx = 0x07;
 
 		/* Finished with the DMA node; drop the reference */
 		of_node_put(dma_np);
@@ -1395,11 +1440,14 @@ static int temac_probe(struct platform_device *pdev)
 				(pdata->tx_irq_count << 16);
 		else
 			lp->tx_chnl_ctrl = 0x10220000;
-		if (pdata->rx_irq_timeout || pdata->rx_irq_count)
+		if (pdata->rx_irq_timeout || pdata->rx_irq_count) {
 			lp->rx_chnl_ctrl = (pdata->rx_irq_timeout << 24) |
 				(pdata->rx_irq_count << 16);
-		else
+			lp->coalesce_count_rx = pdata->rx_irq_count;
+		} else {
 			lp->rx_chnl_ctrl = 0xff070000;
+			lp->coalesce_count_rx = 0x07;
+		}
 	}
 
 	/* Error handle returned DMA RX and TX interrupts */
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
