Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C07161059
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 11:45:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AUEb5PBoSeOu/LtCabqZePjGzxHf8MTwKofFDAF/NVk=; b=QNSiaJcRPllM5p
	5/F+iZNQpB9mF95o06t7oH9FVYb1HYzWxY1KQgVbqAfeE/DVxnEtHnvA4MEUR8EFbfI/h5asE8kYR
	Q1d02JYrs/Hbgy84b7kcxGbToI0kZ9+SzoPHW18dqshSlymks00oRsKDBla9gGYIH6aiYrMAfwAOF
	4zZnKntPlTrhlePwQO0axSqtm5ZdTpR3mlAqYBanWjCyMOBt8Wg7mSwKKKuVlqfr+q9YBBOenO8vT
	+4l/cvd0xeuCJ+vtzc9RQZbXa9qQB8xUhu07xOKlr1o7hJTZ1EZtoh9LcNa9HXK1LC2hc8BP6j3fg
	mBte3nXMUfEARC2hurjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3dts-0001Br-7Y; Mon, 17 Feb 2020 10:45:16 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3dtg-0000xA-OV
 for linux-arm-kernel@bombadil.infradead.org; Mon, 17 Feb 2020 10:45:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=XcoS19YOFUuIJt3OL+kFrTqNSNiOR56rBVP8Cr3A+1o=; b=P4ZbrGrWHdFnv3EJ5P5Zru+/3C
 TLOE0t49r5/Bv7FC6G2Yh4BvjgLyQuCa9LLO+1PB6Z7LQ32ibUCN5ISx48Pw5PNQvHSBQfwsLqM1l
 UKrATN9Ut79gQsNDyJ5XshPqZlGqolBIbLPfOKkgp5HKFzOfwsFqIozaBp2m0HSqrlM8EwllBIWc/
 xJ/wXNhA1bnkhzjxF82h+pHDhS3ogztqVqkH7CVFfY0ktM37ekhhKBdbcobPJW4+FmwpTyQLR6vul
 lVoa+g9vm86dd/dWrypINUmy8LL6l3brrU5Py1A+jwOur578H4DSRZRisPFQlSUgcz35a1z2KF/av
 oS0TJKuQ==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3dtc-0006mw-Fl
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 10:45:03 +0000
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 7584724000D;
 Mon, 17 Feb 2020 10:44:04 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: "David S. Miller" <davem@davemloft.net>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 =?UTF-8?q?Antoine=20T=C3=A9nart?= <antoine.tenart@bootlin.com>
Subject: [PATCH net] net: macb: Properly handle phylink on at91rm9200
Date: Mon, 17 Feb 2020 11:43:48 +0100
Message-Id: <20200217104348.43164-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_104500_778474_17E3003F 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: netdev@vger.kernel.org, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

at91ether_init was handling the phy mode and speed but since the switch to
phylink, the NCFGR register got overwritten by macb_mac_config().

Add new phylink callbacks to handle emac and at91rm9200 properly.

Fixes: 7897b071ac3b ("net: macb: convert to phylink")
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/net/ethernet/cadence/macb.h      |  1 +
 drivers/net/ethernet/cadence/macb_main.c | 81 +++++++++++++++++++++---
 2 files changed, 73 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/cadence/macb.h b/drivers/net/ethernet/cadence/macb.h
index dbf7070fcdba..a3f0f27fc79a 100644
--- a/drivers/net/ethernet/cadence/macb.h
+++ b/drivers/net/ethernet/cadence/macb.h
@@ -652,6 +652,7 @@
 #define MACB_CAPS_GEM_HAS_PTP			0x00000040
 #define MACB_CAPS_BD_RD_PREFETCH		0x00000080
 #define MACB_CAPS_NEEDS_RSTONUBR		0x00000100
+#define MACB_CAPS_MACB_IS_EMAC			0x08000000
 #define MACB_CAPS_FIFO_MODE			0x10000000
 #define MACB_CAPS_GIGABIT_MODE_AVAILABLE	0x20000000
 #define MACB_CAPS_SG_DISABLED			0x40000000
diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index def94e91883a..529a1d0d7dab 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -654,6 +654,72 @@ static const struct phylink_mac_ops macb_phylink_ops = {
 	.mac_link_up = macb_mac_link_up,
 };
 
+static void at91ether_mac_config(struct phylink_config *config,
+				 unsigned int mode,
+				 const struct phylink_link_state *state)
+{
+	struct net_device *ndev = to_net_dev(config->dev);
+	struct macb *bp = netdev_priv(ndev);
+	unsigned long flags;
+	u32 ctrl;
+
+	spin_lock_irqsave(&bp->lock, flags);
+
+	ctrl = MACB_BF(CLK, MACB_CLK_DIV32) | MACB_BIT(BIG);
+	if (state->speed == SPEED_100)
+		ctrl |= MACB_BIT(SPD);
+
+	if (state->duplex)
+		ctrl |= MACB_BIT(FD);
+
+	if (state->interface == PHY_INTERFACE_MODE_RMII)
+		ctrl |= MACB_BIT(RM9200_RMII);
+
+	macb_writel(bp, NCFGR, ctrl);
+
+	bp->speed = state->speed;
+
+	spin_unlock_irqrestore(&bp->lock, flags);
+}
+
+static void at91ether_mac_link_down(struct phylink_config *config,
+				    unsigned int mode,
+				    phy_interface_t interface)
+{
+	struct net_device *ndev = to_net_dev(config->dev);
+	struct macb *bp = netdev_priv(ndev);
+	u32 ctrl;
+
+	/* Disable Rx and Tx */
+	ctrl = macb_readl(bp, NCR) & ~(MACB_BIT(RE) | MACB_BIT(TE));
+	macb_writel(bp, NCR, ctrl);
+
+	netif_tx_stop_all_queues(ndev);
+}
+
+static void at91ether_mac_link_up(struct phylink_config *config,
+				  unsigned int mode,
+				  phy_interface_t interface,
+				  struct phy_device *phy)
+{
+	struct net_device *ndev = to_net_dev(config->dev);
+	struct macb *bp = netdev_priv(ndev);
+
+	/* Enable Rx and Tx */
+	macb_writel(bp, NCR, macb_readl(bp, NCR) | MACB_BIT(RE) | MACB_BIT(TE));
+
+	netif_tx_wake_all_queues(ndev);
+}
+
+static const struct phylink_mac_ops at91ether_phylink_ops = {
+	.validate = macb_validate,
+	.mac_pcs_get_state = macb_mac_pcs_get_state,
+	.mac_an_restart = macb_mac_an_restart,
+	.mac_config = at91ether_mac_config,
+	.mac_link_down = at91ether_mac_link_down,
+	.mac_link_up = at91ether_mac_link_up,
+};
+
 static bool macb_phy_handle_exists(struct device_node *dn)
 {
 	dn = of_parse_phandle(dn, "phy-handle", 0);
@@ -695,13 +761,17 @@ static int macb_phylink_connect(struct macb *bp)
 /* based on au1000_eth. c*/
 static int macb_mii_probe(struct net_device *dev)
 {
+	const struct phylink_mac_ops *phylink_ops = &macb_phylink_ops;
 	struct macb *bp = netdev_priv(dev);
 
+	if (bp->caps & MACB_CAPS_MACB_IS_EMAC)
+		phylink_ops = &at91ether_phylink_ops;
+
 	bp->phylink_config.dev = &dev->dev;
 	bp->phylink_config.type = PHYLINK_NETDEV;
 
 	bp->phylink = phylink_create(&bp->phylink_config, bp->pdev->dev.fwnode,
-				     bp->phy_interface, &macb_phylink_ops);
+				     bp->phy_interface, phylink_ops);
 	if (IS_ERR(bp->phylink)) {
 		netdev_err(dev, "Could not create a phylink instance (%ld)\n",
 			   PTR_ERR(bp->phylink));
@@ -4041,7 +4111,6 @@ static int at91ether_init(struct platform_device *pdev)
 	struct net_device *dev = platform_get_drvdata(pdev);
 	struct macb *bp = netdev_priv(dev);
 	int err;
-	u32 reg;
 
 	bp->queues[0].bp = bp;
 
@@ -4055,12 +4124,6 @@ static int at91ether_init(struct platform_device *pdev)
 
 	macb_writel(bp, NCR, 0);
 
-	reg = MACB_BF(CLK, MACB_CLK_DIV32) | MACB_BIT(BIG);
-	if (bp->phy_interface == PHY_INTERFACE_MODE_RMII)
-		reg |= MACB_BIT(RM9200_RMII);
-
-	macb_writel(bp, NCFGR, reg);
-
 	return 0;
 }
 
@@ -4218,7 +4281,7 @@ static const struct macb_config sama5d4_config = {
 };
 
 static const struct macb_config emac_config = {
-	.caps = MACB_CAPS_NEEDS_RSTONUBR,
+	.caps = MACB_CAPS_NEEDS_RSTONUBR | MACB_CAPS_MACB_IS_EMAC,
 	.clk_init = at91ether_clk_init,
 	.init = at91ether_init,
 };
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
