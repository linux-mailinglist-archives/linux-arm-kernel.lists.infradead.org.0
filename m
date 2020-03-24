Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421D2190F67
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 14:25:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K5xx88BcDJdy8BgqbjIWmBjxbDSamlhrCTz6tA7L6pQ=; b=RQiga1PlMDwYWoSW/HEVi3aggT
	4KWSD3kVS/2LtoUepSDPYr78h7Pd4YB7fpkWAkaEEXxAjIs9QrARTlso2lAYqHoIdp9kEA/TYW8CT
	VRrt2FHUiQeaw+nw+H3H6b5FuZdGitwBcVfNnKMXdArJBnxu9mPlyQzvPPK0pmckxZpkX+t7cvjg/
	4PSJiRE5DzkLBfGcN5VmU0l3QvR5LVMbHfyT+E+Zlzfch40+bSSxNK6sdh8OMcGvx+haljP2gOzer
	Wgw3ds4qNKxBdBJZ9MIhSkBtYD0FFrc/ykGHriGkT6fhvCPV4pQDMP0u65Catpz/bnXq1lRCSPwNH
	BU75QNkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGjXz-0001Mu-5T; Tue, 24 Mar 2020 13:24:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGjXE-0000s2-UC
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 13:24:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 713EE113E;
 Tue, 24 Mar 2020 06:24:00 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2274A3F52E;
 Tue, 24 Mar 2020 06:23:59 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: "David S . Miller" <davem@davemloft.net>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: [PATCH v3 04/14] net: axienet: Fix DMA descriptor cleanup path
Date: Tue, 24 Mar 2020 13:23:37 +0000
Message-Id: <20200324132347.23709-5-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324132347.23709-1-andre.przywara@arm.com>
References: <20200324132347.23709-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_062401_120822_39396EE9 
X-CRM114-Status: GOOD (  13.48  )
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
index a25423e6fb36..415179cbdc51 100644
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
