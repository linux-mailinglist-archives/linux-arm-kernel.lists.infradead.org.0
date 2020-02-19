Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 123A71642B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:54:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRIkXX6W3TtHanaL6zkE6KgXy8TKGcsC0hxGmzRssnI=; b=OgKhY66noPx6GP
	khq2XJVPZ7CyXki4rGLINb8TKl8ZG74ic+3GWTs0cvWrnTcPJPq79K55PT0RVra8LI1FgzAZu37lv
	U9QtNPgZ4ORaabE9ajA7HWTheoArsRDwROaiA/hqMy2y/DZOsaHXTGrNGoLVgXMZl3ZqqvPh6jzjr
	ZoUulvBPoQpEBKbhGEGF0MntoCl7CB4VMOSb6ZAEnuGRa+OuANMhjTPgGuVBRtVdvEICe2FQIHlos
	eP7/eTvTjr2Lrl7Z1aMh8Pgm6WIXI/ROr7ManLnX76OX40HBltbVSYu4XrMsVoRAuJObrbXUYRcPf
	OtPP6z5yBlRQLi5VfB0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Mzi-0003AX-4e; Wed, 19 Feb 2020 10:54:18 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4MzT-00036T-1A
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:54:04 +0000
Received: from localhost (_gateway [172.20.0.1])
 by first.geanix.com (Postfix) with ESMTPSA id A52EAC002E;
 Wed, 19 Feb 2020 10:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1582109640; bh=yH8TvgCUbnfl/izLx4TJFR7NPStHNtUPhDk2EUg7hbI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=SfV+KvsVtUTU3Q8Ujy7zwg/Dja4IT1GTuJAmkeXVNV1y6ULCzMNiALqN8BV07V7aQ
 LO2X8PDXXQY657KA+LVVvavCX8Kr+PxK1Cnk3HpdvhVFElI/MVyVZy2wOfoMiS7Dr0
 Le3EBMIlIuBOujDmxOWH3tsP4E20Q0UhTaMYCRpvV3Qmx3y3R1mAZHZglyhd3dnMP/
 M9Fb8EVloZK+RiHRRkxvKDyKRI/dgaKNkXPmDO3fyfCAc7Ajy8K0vMxFcFqCsjo7KC
 NuobFMzbIfsA9MqPRwlA/JUR0WJTgK0CKbBCnMcAyRG3NZW07bE90fFZL8hEWxntxk
 qNZ+2oZphv4cA==
From: Esben Haabendal <esben@geanix.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 2/4] net: ll_temac: Add more error handling of
 dma_map_single() calls
Date: Wed, 19 Feb 2020 11:54:00 +0100
Message-Id: <65907810dd82de3fcaad9869f328ab32800c67ea.1582108989.git.esben@geanix.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <cover.1582108989.git.esben@geanix.com>
References: <cover.1582108989.git.esben@geanix.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.7 required=4.0 tests=BAYES_00,DKIM_INVALID,
 DKIM_SIGNED,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=disabled
 version=3.4.3
X-Spam-Checker-Version: SpamAssassin 3.4.3 (2019-12-06) on eb9da72b0f73
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_025403_240615_8D946D76 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds error handling to the remaining dma_map_single() calls, so that
behavior is well defined if/when we run out of DMA memory.

Fixes: 92744989533c ("net: add Xilinx ll_temac device driver")
Signed-off-by: Esben Haabendal <esben@geanix.com>
---
 drivers/net/ethernet/xilinx/ll_temac_main.c | 26 +++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/ll_temac_main.c b/drivers/net/ethernet/xilinx/ll_temac_main.c
index 996004ef8bd4..c368c3914bda 100644
--- a/drivers/net/ethernet/xilinx/ll_temac_main.c
+++ b/drivers/net/ethernet/xilinx/ll_temac_main.c
@@ -367,6 +367,8 @@ static int temac_dma_bd_init(struct net_device *ndev)
 		skb_dma_addr = dma_map_single(ndev->dev.parent, skb->data,
 					      XTE_MAX_JUMBO_FRAME_SIZE,
 					      DMA_FROM_DEVICE);
+		if (dma_mapping_error(ndev->dev.parent, skb_dma_addr))
+			goto out;
 		lp->rx_bd_v[i].phys = cpu_to_be32(skb_dma_addr);
 		lp->rx_bd_v[i].len = cpu_to_be32(XTE_MAX_JUMBO_FRAME_SIZE);
 		lp->rx_bd_v[i].app0 = cpu_to_be32(STS_CTRL_APP0_IRQONEND);
@@ -863,12 +865,13 @@ temac_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 	skb_dma_addr = dma_map_single(ndev->dev.parent, skb->data,
 				      skb_headlen(skb), DMA_TO_DEVICE);
 	cur_p->len = cpu_to_be32(skb_headlen(skb));
+	if (WARN_ON_ONCE(dma_mapping_error(ndev->dev.parent, skb_dma_addr)))
+		return NETDEV_TX_BUSY;
 	cur_p->phys = cpu_to_be32(skb_dma_addr);
 	ptr_to_txbd((void *)skb, cur_p);
 
 	for (ii = 0; ii < num_frag; ii++) {
-		lp->tx_bd_tail++;
-		if (lp->tx_bd_tail >= TX_BD_NUM)
+		if (++lp->tx_bd_tail >= TX_BD_NUM)
 			lp->tx_bd_tail = 0;
 
 		cur_p = &lp->tx_bd_v[lp->tx_bd_tail];
@@ -876,6 +879,25 @@ temac_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 					      skb_frag_address(frag),
 					      skb_frag_size(frag),
 					      DMA_TO_DEVICE);
+		if (dma_mapping_error(ndev->dev.parent, skb_dma_addr)) {
+			if (--lp->tx_bd_tail < 0)
+				lp->tx_bd_tail = TX_BD_NUM - 1;
+			cur_p = &lp->tx_bd_v[lp->tx_bd_tail];
+			while (--ii >= 0) {
+				--frag;
+				dma_unmap_single(ndev->dev.parent,
+						 be32_to_cpu(cur_p->phys),
+						 skb_frag_size(frag),
+						 DMA_TO_DEVICE);
+				if (--lp->tx_bd_tail < 0)
+					lp->tx_bd_tail = TX_BD_NUM - 1;
+				cur_p = &lp->tx_bd_v[lp->tx_bd_tail];
+			}
+			dma_unmap_single(ndev->dev.parent,
+					 be32_to_cpu(cur_p->phys),
+					 skb_headlen(skb), DMA_TO_DEVICE);
+			return NETDEV_TX_BUSY;
+		}
 		cur_p->phys = cpu_to_be32(skb_dma_addr);
 		cur_p->len = cpu_to_be32(skb_frag_size(frag));
 		cur_p->app0 = 0;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
