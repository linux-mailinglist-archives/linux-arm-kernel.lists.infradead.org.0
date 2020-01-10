Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACED136C85
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 12:56:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8qlTQ4j0JT5Z55ZE9H5sXs9kYmvdZf6uSpQix2QYnME=; b=un5HZx/7ypigoCpPsHDfJgR+YH
	2PI/I9Bg+Q1TxmZLMMiKtGrx7wMUZgRU95CNUujsp9NB3RN+jb7aMT0bTdLcmbMTVDtgh4VmuXsoL
	9Qb2faWrIp/xZbPxexADfX91eCpthxqbgFGOzSBpnryKyViV3YARPLFXAVtaAXI/MLMFU4dW/amlM
	+dlXli/ouCAJO7UKIbAIIOGVvPYsr6BV2BaaKDpBdYTisIkolI7VsEcJ+iZkjwEH75NCjoNkK6huj
	lrG0PjVBNVzwkB4t2X2Z7mYDsXoeZnTSQifWqj828DqIUrC3KzFvii0Q6RiynaLWs6ajsbU+6m3yb
	O/yYdMJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipsuF-00011b-3g; Fri, 10 Jan 2020 11:56:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipsrz-0006cJ-QL
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 11:54:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 62F3F13A1;
 Fri, 10 Jan 2020 03:54:27 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4A3493F534;
 Fri, 10 Jan 2020 03:54:26 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: "David S . Miller" <davem@davemloft.net>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: [PATCH 03/14] net: axienet: Fix DMA descriptor cleanup path
Date: Fri, 10 Jan 2020 11:54:04 +0000
Message-Id: <20200110115415.75683-4-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110115415.75683-1-andre.przywara@arm.com>
References: <20200110115415.75683-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_035428_113946_C1131C5E 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Robert Hancock <hancock@sedsystems.ca>, netdev@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When axienet_dma_bd_init() bails out during the initialisation process,
it might do so with parts of the structure already allocated and
initialised, while other parts have not been touched yet. Before
returning in this case, we call axienet_dma_bd_release(), which does not
take care of this corner case.
This is most obvious by the first loop happily dereferencing
lp->rx_bd_v, which we actually check to be non NULL *afterwards*.

Make sure we only unmap or free already allocated structures, by:
- directly returning with -ENOMEM if nothing has been allocated at all
- checking for lp->rx_bd_v to be non-NULL *before* using it
- only unmapping allocated DMA RX regions

This avoids NULL pointer dereferences when initialisation fails.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../net/ethernet/xilinx/xilinx_axienet_main.c | 43 ++++++++++++-------
 1 file changed, 28 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index 97482cf093ce..7e90044cf2d9 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -160,24 +160,37 @@ static void axienet_dma_bd_release(struct net_device *ndev)
 	int i;
 	struct axienet_local *lp = netdev_priv(ndev);
 
+	/* If we end up here, tx_bd_v must have been DMA allocated. */
+	dma_free_coherent(ndev->dev.parent,
+			  sizeof(*lp->tx_bd_v) * lp->tx_bd_num,
+			  lp->tx_bd_v,
+			  lp->tx_bd_p);
+
+	if (!lp->rx_bd_v)
+		return;
+
 	for (i = 0; i < lp->rx_bd_num; i++) {
-		dma_unmap_single(ndev->dev.parent, lp->rx_bd_v[i].phys,
-				 lp->max_frm_size, DMA_FROM_DEVICE);
+		/* A NULL skb means this descriptor has not been initialised
+		 * at all.
+		 */
+		if (!lp->rx_bd_v[i].skb)
+			break;
+
 		dev_kfree_skb(lp->rx_bd_v[i].skb);
-	}
 
-	if (lp->rx_bd_v) {
-		dma_free_coherent(ndev->dev.parent,
-				  sizeof(*lp->rx_bd_v) * lp->rx_bd_num,
-				  lp->rx_bd_v,
-				  lp->rx_bd_p);
-	}
-	if (lp->tx_bd_v) {
-		dma_free_coherent(ndev->dev.parent,
-				  sizeof(*lp->tx_bd_v) * lp->tx_bd_num,
-				  lp->tx_bd_v,
-				  lp->tx_bd_p);
+		/* For each descriptor, we programmed cntrl with the (non-zero)
+		 * descriptor size, after it had been successfully allocated.
+		 * So a non-zero value in there means we need to unmap it.
+		 */
+		if (lp->rx_bd_v[i].cntrl)
+			dma_unmap_single(ndev->dev.parent, lp->rx_bd_v[i].phys,
+					 lp->max_frm_size, DMA_FROM_DEVICE);
 	}
+
+	dma_free_coherent(ndev->dev.parent,
+			  sizeof(*lp->rx_bd_v) * lp->rx_bd_num,
+			  lp->rx_bd_v,
+			  lp->rx_bd_p);
 }
 
 /**
@@ -207,7 +220,7 @@ static int axienet_dma_bd_init(struct net_device *ndev)
 					 sizeof(*lp->tx_bd_v) * lp->tx_bd_num,
 					 &lp->tx_bd_p, GFP_KERNEL);
 	if (!lp->tx_bd_v)
-		goto out;
+		return -ENOMEM;
 
 	lp->rx_bd_v = dma_alloc_coherent(ndev->dev.parent,
 					 sizeof(*lp->rx_bd_v) * lp->rx_bd_num,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
