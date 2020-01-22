Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7DE144E4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 10:10:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OJL6TyKBwyREsnF8Lo6cBLyiH/bvaaRkBaqv1aPwI4w=; b=pPw0drmaRsy20FqVOZ2ia4jRu5
	N4FP6AAjgkYtd/kMGtzdEyaJnaEv1b3FczelD8n49PSI2hVhtxyqgAnHyH7ySly7SQrYVcq4nOzor
	h1YqbjiFOFVD2foiqHIQ1/oj+DaRDDlMugnOrHSV3CgHZf0H7XS/RdYFcIW/tEI6Fz1BluhjCvzix
	skLc+JEnlGVFSmhGOtiM28Hmx/FZg/nsN8eZFHoiamQfMS9ydGWuavNkiaCFKSvYhN+a50TXt7i1S
	9bXrRn/E3/4/Isx01A3tfiJ1BPHt8sYv6Zlfidcf9Ou7qwckhSLvLBqNAJg2riOhozk9rzAdwTuCx
	OOHk7+ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuC1v-0007wJ-4p; Wed, 22 Jan 2020 09:10:31 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuC1m-0007vm-3F
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 09:10:23 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 01:10:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,349,1574150400"; d="scan'208";a="244990414"
Received: from unknown (HELO bong5-HP-Z440.png.intel.com) ([10.221.118.166])
 by orsmga002.jf.intel.com with ESMTP; 22 Jan 2020 01:10:17 -0800
From: Ong Boon Leong <boon.leong.ong@intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net v3 1/5] net: stmmac: Fix incorrect location to set
 real_num_rx|tx_queues
Date: Wed, 22 Jan 2020 17:09:32 +0800
Message-Id: <20200122090936.28555-2-boon.leong.ong@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200122090936.28555-1-boon.leong.ong@intel.com>
References: <20200122090936.28555-1-boon.leong.ong@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_011022_188421_6C32DD7C 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Voon Weifeng <weifeng.voon@intel.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, Arnd Bergmann <arnd@arndb.de>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Tan Tee Min <tee.min.tan@intel.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Aashish Verma <aashishx.verma@intel.com>

netif_set_real_num_tx_queues() & netif_set_real_num_rx_queues() should be
used to inform network stack about the real Tx & Rx queue (active) number
in both stmmac_open() and stmmac_resume(), therefore, we move the code
from stmmac_dvr_probe() to stmmac_hw_setup().

For driver open(), rtnl_lock is acquired by network stack but not in the
resume(). Therefore, we introduce lock_acquired boolean to control when
to use rtnl_lock|unlock() within stmmac_hw_setup().
Thanks Jose Abreu for input.

Fixes: c02b7a914551 ("net: stmmac: use netif_set_real_num_{rx,tx}_queues")
Signed-off-by: Aashish Verma <aashishx.verma@intel.com>
Tested-by: Tan, Tee Min <tee.min.tan@intel.com>
Signed-off-by: Ong Boon Leong <boon.leong.ong@intel.com>
---
 .../net/ethernet/stmicro/stmmac/stmmac_main.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 80d59b775907..417397158d4a 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -2525,7 +2525,8 @@ static void stmmac_safety_feat_configuration(struct stmmac_priv *priv)
  *  0 on success and an appropriate (-)ve integer as defined in errno.h
  *  file on failure.
  */
-static int stmmac_hw_setup(struct net_device *dev, bool init_ptp)
+static int stmmac_hw_setup(struct net_device *dev, bool init_ptp,
+			   bool lock_acquired)
 {
 	struct stmmac_priv *priv = netdev_priv(dev);
 	u32 rx_cnt = priv->plat->rx_queues_to_use;
@@ -2624,6 +2625,14 @@ static int stmmac_hw_setup(struct net_device *dev, bool init_ptp)
 	if (priv->dma_cap.vlins)
 		stmmac_enable_vlan(priv, priv->hw, STMMAC_VLAN_INSERT);
 
+	/* Configure real RX and TX queues */
+	if (!lock_acquired)
+		rtnl_lock();
+	netif_set_real_num_rx_queues(dev, priv->plat->rx_queues_to_use);
+	netif_set_real_num_tx_queues(dev, priv->plat->tx_queues_to_use);
+	if (!lock_acquired)
+		rtnl_unlock();
+
 	/* Start the ball rolling... */
 	stmmac_start_all_dma(priv);
 
@@ -2695,7 +2704,7 @@ static int stmmac_open(struct net_device *dev)
 		goto init_error;
 	}
 
-	ret = stmmac_hw_setup(dev, true);
+	ret = stmmac_hw_setup(dev, true, true);
 	if (ret < 0) {
 		netdev_err(priv->dev, "%s: Hw setup failed\n", __func__);
 		goto init_error;
@@ -4622,10 +4631,6 @@ int stmmac_dvr_probe(struct device *device,
 
 	stmmac_check_ether_addr(priv);
 
-	/* Configure real RX and TX queues */
-	netif_set_real_num_rx_queues(ndev, priv->plat->rx_queues_to_use);
-	netif_set_real_num_tx_queues(ndev, priv->plat->tx_queues_to_use);
-
 	ndev->netdev_ops = &stmmac_netdev_ops;
 
 	ndev->hw_features = NETIF_F_SG | NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM |
@@ -4973,7 +4978,7 @@ int stmmac_resume(struct device *dev)
 
 	stmmac_clear_descriptors(priv);
 
-	stmmac_hw_setup(ndev, false);
+	stmmac_hw_setup(ndev, false, false);
 	stmmac_init_coalesce(priv);
 	stmmac_set_rx_mode(ndev);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
