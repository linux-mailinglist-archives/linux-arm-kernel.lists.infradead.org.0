Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CDA166FD4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 07:48:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRIkXX6W3TtHanaL6zkE6KgXy8TKGcsC0hxGmzRssnI=; b=TNzRzU8Qw9MGto
	6dOt3EY/lORhSce5MhvRzbkoS/92t1rAHvfpoluObuQezJrXmSUy4y8pSQbahqofeH9o5dLYdRuNe
	R7R8r33z22pSy/oCnTGDxc+q3RIHgvAcr6mTBzfuV4a6k9WJXa6hz2gy9xNtgh1Bgjz5vugvZnxYQ
	4dqoygXqiml0HVdwHnAXRgKGeQiU0Gmg67qdyc4/x+SogTqo2M/IF3gTFzifOV+z2m/Nu/YYKfIK1
	ZzVPylC9Z/lyOqwMXG6apNlUTd4TDQygRAwbheDJTukLOcXsOpK3yt177a211yDj67O+bvzfEFntv
	a+fm8D3A4oTN2l+Ubnsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j527A-0000wH-00; Fri, 21 Feb 2020 06:48:44 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5264-0008SJ-QQ
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 06:47:38 +0000
Received: from localhost (87-49-45-242-mobile.dk.customer.tdc.net
 [87.49.45.242])
 by first.geanix.com (Postfix) with ESMTPSA id 62C4BAEB4D;
 Fri, 21 Feb 2020 06:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1582267654; bh=yH8TvgCUbnfl/izLx4TJFR7NPStHNtUPhDk2EUg7hbI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=im76HTD545nmrHWZD9Us/Adc3v/VsJtq/0EvnRGsGoASNjWtz6Edeo+EhJyzfyv76
 Aj0CNr6FZLU2JFTfvEVle0gJTDlUsW8U5oD3drcCUUM38+ML/CntZI9EKzFLOtPaCw
 T+cxjzNDDTikBbm8aTQu+1u40jads+JOaiqS0iiVcfHzaACRrM0BirOkOkaHSEHHhS
 BijbgPg5y5n370nD+usUV/WxBQi9+muOLZxRHRW1Eay/pbhaEVCiur1+MtoH729W65
 vayQhIc9X0Utogjg+pHSyP6h2f3HXkomv0PDUTSjvpbMqA35JcqgRp8VKyPwOXN0Oq
 tlPql6hgS3I9g==
From: Esben Haabendal <esben@geanix.com>
To: netdev@vger.kernel.org
Subject: [PATCH net v2 2/4] net: ll_temac: Add more error handling of
 dma_map_single() calls
Date: Fri, 21 Feb 2020 07:47:33 +0100
Message-Id: <65907810dd82de3fcaad9869f328ab32800c67ea.1582267079.git.esben@geanix.com>
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
X-CRM114-CacheID: sfid-20200220_224737_027424_B139B6E5 
X-CRM114-Status: GOOD (  11.52  )
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
