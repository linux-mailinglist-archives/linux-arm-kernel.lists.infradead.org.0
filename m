Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A94C5E231
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 12:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q8HqZW/6w+SCPBf6Mcs1fDwcUXcGkmqOaqhnehhKurE=; b=fkasgypnqa85zeLge2Xhh/Ipqv
	KEUhvbFRlSCuf7hCK3ECSceLVgZOLa5pw+XVfGAjBBcyf1jnLPCV5p1X0caTc0OJrEA125eYaff1N
	aAgJ8cGxqMotDrVBeJ+5dpJB2ipp7BE2g7VmbVPWeVAlNqKgy+72wSjhAGgtyvdzXZKq1QbYDnoDf
	siEVtR7kpEM41B0nX+mH55BFGo1KyXeLQVKeRGcfIgVpzH53fgBNo6tcJwXaVKyjMdTnEL850ulY8
	xwCZJ6zvX8K/pGp2Scy6BA606djLyIor5RYVpO+JrNuBz3+f0W9KyCIEFBL3r8yfk7dtPIrid5RQe
	DyMYehUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiceq-0002AE-0O; Wed, 03 Jul 2019 10:38:36 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiceL-0001xb-8D
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 10:38:06 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1C13BC2B4C;
 Wed,  3 Jul 2019 10:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562150278; bh=02hh1sMtfBTiFyR4oU9aVd769NocNpnTGv23jy4Q5uk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=kTNYyffH2nrz2t2draDi02GNEEpu0QvAonhQc5nGHL4IAuRMPdUendRjBrmF4/Ghm
 tUajXa1AAQzrhKbmgvSOPMKt0p0niyVnyyBdc2W5Iwtzi4RKTjg0PNTyQMVm9day/I
 PAuiz8xV5q3KCDAxdpyvpSSCSrd5v9JZIzJTEvKVkIY/lqh2n9cNjAV1xhljOpP8EN
 TN9y2UQBQoNviOfvKHoX8kA7EfzezFFwCw3X9Dz8sQwwiCm9A5+vYAow97SIIUWXdC
 yo0u7J/Ib/TgtwVW3pvKWEodoV7BEnvARkdt8h6rEk/sb2sHGj8c7UMrr4aWl6vrSt
 5goPPM0rY6QXg==
Received: from de02.synopsys.com (germany.internal.synopsys.com [10.225.17.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id 65795A0057;
 Wed,  3 Jul 2019 10:37:54 +0000 (UTC)
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by de02.synopsys.com (Postfix) with ESMTP id 418333E576;
 Wed,  3 Jul 2019 12:37:54 +0200 (CEST)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH net-next 1/3] net: stmmac: Implement RX Coalesce Frames setting
Date: Wed,  3 Jul 2019 12:37:48 +0200
Message-Id: <003df660052f33891ab74ee79c5f1272b72bde54.1562149883.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1562149883.git.joabreu@synopsys.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
In-Reply-To: <cover.1562149883.git.joabreu@synopsys.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_033805_315489_BF146675 
X-CRM114-Status: GOOD (  17.39  )
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

Add support for coalescing RX path by specifying number of frames which
don't need to have interrupt on completion bit set.

This is only available when RX Watchdog is enabled.

Signed-off-by: Jose Abreu <joabreu@synopsys.com>
Cc: Joao Pinto <jpinto@synopsys.com>
Cc: David S. Miller <davem@davemloft.net>
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Chen-Yu Tsai <wens@csie.org>
---
 drivers/net/ethernet/stmicro/stmmac/common.h         |  1 +
 drivers/net/ethernet/stmicro/stmmac/stmmac.h         |  2 ++
 drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c |  7 +++++--
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c    | 18 ++++++++++++------
 4 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/common.h b/drivers/net/ethernet/stmicro/stmmac/common.h
index 2403a65167b2..dfd47fdfa447 100644
--- a/drivers/net/ethernet/stmicro/stmmac/common.h
+++ b/drivers/net/ethernet/stmicro/stmmac/common.h
@@ -252,6 +252,7 @@ struct stmmac_safety_stats {
 #define STMMAC_MAX_COAL_TX_TICK	100000
 #define STMMAC_TX_MAX_FRAMES	256
 #define STMMAC_TX_FRAMES	1
+#define STMMAC_RX_FRAMES	25
 
 /* Packets types */
 enum packets_types {
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac.h b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
index 123898235cb0..513f4e2df5f6 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac.h
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
@@ -55,6 +55,7 @@ struct stmmac_tx_queue {
 };
 
 struct stmmac_rx_queue {
+	u32 rx_count_frames;
 	u32 queue_index;
 	struct stmmac_priv *priv_data;
 	struct dma_extended_desc *dma_erx;
@@ -110,6 +111,7 @@ struct stmmac_priv {
 	/* Frequently used values are kept adjacent for cache effect */
 	u32 tx_coal_frames;
 	u32 tx_coal_timer;
+	u32 rx_coal_frames;
 
 	int tx_coalesce;
 	int hwts_tx_en;
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
index cfd93eefb50e..6efb66820d4c 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
@@ -701,8 +701,10 @@ static int stmmac_get_coalesce(struct net_device *dev,
 	ec->tx_coalesce_usecs = priv->tx_coal_timer;
 	ec->tx_max_coalesced_frames = priv->tx_coal_frames;
 
-	if (priv->use_riwt)
+	if (priv->use_riwt) {
+		ec->rx_max_coalesced_frames = priv->rx_coal_frames;
 		ec->rx_coalesce_usecs = stmmac_riwt2usec(priv->rx_riwt, priv);
+	}
 
 	return 0;
 }
@@ -715,7 +717,7 @@ static int stmmac_set_coalesce(struct net_device *dev,
 	unsigned int rx_riwt;
 
 	/* Check not supported parameters  */
-	if ((ec->rx_max_coalesced_frames) || (ec->rx_coalesce_usecs_irq) ||
+	if ((ec->rx_coalesce_usecs_irq) ||
 	    (ec->rx_max_coalesced_frames_irq) || (ec->tx_coalesce_usecs_irq) ||
 	    (ec->use_adaptive_rx_coalesce) || (ec->use_adaptive_tx_coalesce) ||
 	    (ec->pkt_rate_low) || (ec->rx_coalesce_usecs_low) ||
@@ -749,6 +751,7 @@ static int stmmac_set_coalesce(struct net_device *dev,
 	/* Only copy relevant parameters, ignore all others. */
 	priv->tx_coal_frames = ec->tx_max_coalesced_frames;
 	priv->tx_coal_timer = ec->tx_coalesce_usecs;
+	priv->rx_coal_frames = ec->rx_max_coalesced_frames;
 	priv->rx_riwt = rx_riwt;
 	stmmac_rx_watchdog(priv, priv->ioaddr, priv->rx_riwt, rx_cnt);
 
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 3425d4dda03d..c8fe85ef9a7e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -2268,20 +2268,21 @@ static void stmmac_tx_timer(struct timer_list *t)
 }
 
 /**
- * stmmac_init_tx_coalesce - init tx mitigation options.
+ * stmmac_init_coalesce - init mitigation options.
  * @priv: driver private structure
  * Description:
- * This inits the transmit coalesce parameters: i.e. timer rate,
+ * This inits the coalesce parameters: i.e. timer rate,
  * timer handler and default threshold used for enabling the
  * interrupt on completion bit.
  */
-static void stmmac_init_tx_coalesce(struct stmmac_priv *priv)
+static void stmmac_init_coalesce(struct stmmac_priv *priv)
 {
 	u32 tx_channel_count = priv->plat->tx_queues_to_use;
 	u32 chan;
 
 	priv->tx_coal_frames = STMMAC_TX_FRAMES;
 	priv->tx_coal_timer = STMMAC_COAL_TX_TIMER;
+	priv->rx_coal_frames = STMMAC_RX_FRAMES;
 
 	for (chan = 0; chan < tx_channel_count; chan++) {
 		struct stmmac_tx_queue *tx_q = &priv->tx_queue[chan];
@@ -2651,7 +2652,7 @@ static int stmmac_open(struct net_device *dev)
 		goto init_error;
 	}
 
-	stmmac_init_tx_coalesce(priv);
+	stmmac_init_coalesce(priv);
 
 	phylink_start(priv->phylink);
 
@@ -3298,6 +3299,7 @@ static inline void stmmac_rx_refill(struct stmmac_priv *priv, u32 queue)
 
 	while (dirty-- > 0) {
 		struct dma_desc *p;
+		bool use_rx_wd;
 
 		if (priv->extend_desc)
 			p = (struct dma_desc *)(rx_q->dma_erx + entry);
@@ -3340,7 +3342,11 @@ static inline void stmmac_rx_refill(struct stmmac_priv *priv, u32 queue)
 		}
 		dma_wmb();
 
-		stmmac_set_rx_owner(priv, p, priv->use_riwt);
+		rx_q->rx_count_frames++;
+		rx_q->rx_count_frames %= priv->rx_coal_frames;
+		use_rx_wd = priv->use_riwt && rx_q->rx_count_frames;
+
+		stmmac_set_rx_owner(priv, p, use_rx_wd);
 
 		dma_wmb();
 
@@ -4623,7 +4629,7 @@ int stmmac_resume(struct device *dev)
 	stmmac_clear_descriptors(priv);
 
 	stmmac_hw_setup(ndev, false);
-	stmmac_init_tx_coalesce(priv);
+	stmmac_init_coalesce(priv);
 	stmmac_set_rx_mode(ndev);
 
 	stmmac_enable_all_queues(priv);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
