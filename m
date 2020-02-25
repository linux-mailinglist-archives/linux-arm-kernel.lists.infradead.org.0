Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A431B16BDB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 10:42:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5azzAbV8Z7ftXF4WYdX9eoRTbPDZmzh0/ythMJpEs8M=; b=dHySoXpLilF9gl
	YJGCkvgo5T4KkOg8m6LsZln8SX9SvBdrE0csEWS9893Iep4vhgm7qT3p1IL0kJfmVXUVb3KAV8GOn
	pNXK/oP7FhA27aqHfMMfm3IlbWA/bFjV774zH0GEqx7GoLPsxPP05VONryJXGQcOTSH9Sna41mnNN
	uvhxMgKsN/mHf3jlKBbPjY7nZIlywyvFWbTL9PscIlwRb2G9YJHyfWIhTIatghOqqkuZPmQWx7miC
	QEHOnKFbQyGLZxFCZacC57rG0ZUn6JR9M7ty8jBP/aXG/DRr2nYdkTVoRewZYN9yg6T34IEQCPjgu
	SQTmpkLChFJyl1gTETSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Wji-0008NB-KW; Tue, 25 Feb 2020 09:42:42 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Wib-0007Hk-Qp; Tue, 25 Feb 2020 09:41:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U2C389YDD9wIDLDhBEkkx1b5Jtw0Ypfhi+Dyxt33wDk=; b=AGDHjyCLjHXQ8WvCZNHIq4KmbF
 P5xZ8nPLDlJO6hfY+pjt5BHvcAufVT6WDzwvtnNwBgL1Rmg0KJasWeAB86MYx//DUvKQsSYLqNOkk
 uAhvp9TTWY+sMz93a/aUi0aBzWwKPo1O5fo+HXENu4KBhbiFRDL6iNdL7Zf5XwJ5Wy/zaRTNog4fO
 Qkyzxvfu+Ch36KvS9BKHUqSkIFgVQNJEGyAz9PrwhLBm82X/MgIfioMfpi2/bSVvzaNkKKIkq9yHH
 i6Yknr7Ok2muaD1yb38ve8aKohbh+e/+jXVhEKH4KAONXNkQo2/cAFSEjPm7L92Hn1QYTppt5SVVF
 sTZlS0WQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:51288 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j6WgT-0008Pc-Ti; Tue, 25 Feb 2020 09:39:22 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j6WgL-0000TQ-FZ; Tue, 25 Feb 2020 09:39:13 +0000
In-Reply-To: <20200225093703.GS25745@shell.armlinux.org.uk>
References: <20200225093703.GS25745@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH net-next 6/8] net: macb: use resolved link config in
 mac_link_up()
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1j6WgL-0000TQ-FZ@rmk-PC.armlinux.org.uk>
Date: Tue, 25 Feb 2020 09:39:13 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_014134_076477_64A91504 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-doc@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-stm32@st-md-mailman.stormreply.com, Jonathan Corbet <corbet@lwn.net>,
 Michal Simek <michal.simek@xilinx.com>, Jose Abreu <joabreu@synopsys.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the macb ethernet driver to use the finalised link
parameters in mac_link_up() rather than the parameters in mac_config().

Tested-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/net/ethernet/cadence/macb.h      |  1 -
 drivers/net/ethernet/cadence/macb_main.c | 50 ++++++++++++++----------
 2 files changed, 29 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/cadence/macb.h b/drivers/net/ethernet/cadence/macb.h
index a3f0f27fc79a..ab827fb4b6b9 100644
--- a/drivers/net/ethernet/cadence/macb.h
+++ b/drivers/net/ethernet/cadence/macb.h
@@ -1200,7 +1200,6 @@ struct macb {
 	unsigned int		dma_burst_length;
 
 	phy_interface_t		phy_interface;
-	int			speed;
 
 	/* AT91RM9200 transmit */
 	struct sk_buff *skb;			/* holds skb until xmit interrupt completes */
diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 7ab0bef5e1bd..3a7c26b08607 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -571,37 +571,20 @@ static void macb_mac_config(struct phylink_config *config, unsigned int mode,
 
 	old_ctrl = ctrl = macb_or_gem_readl(bp, NCFGR);
 
-	/* Clear all the bits we might set later */
-	ctrl &= ~(MACB_BIT(SPD) | MACB_BIT(FD) | MACB_BIT(PAE));
-
 	if (bp->caps & MACB_CAPS_MACB_IS_EMAC) {
 		if (state->interface == PHY_INTERFACE_MODE_RMII)
 			ctrl |= MACB_BIT(RM9200_RMII);
 	} else {
-		ctrl &= ~(GEM_BIT(GBE) | GEM_BIT(SGMIIEN) | GEM_BIT(PCSSEL));
-
-		/* We do not support MLO_PAUSE_RX yet */
-		if (state->pause & MLO_PAUSE_TX)
-			ctrl |= MACB_BIT(PAE);
+		ctrl &= ~(GEM_BIT(SGMIIEN) | GEM_BIT(PCSSEL));
 
 		if (state->interface == PHY_INTERFACE_MODE_SGMII)
 			ctrl |= GEM_BIT(SGMIIEN) | GEM_BIT(PCSSEL);
 	}
 
-	if (state->speed == SPEED_1000)
-		ctrl |= GEM_BIT(GBE);
-	else if (state->speed == SPEED_100)
-		ctrl |= MACB_BIT(SPD);
-
-	if (state->duplex)
-		ctrl |= MACB_BIT(FD);
-
 	/* Apply the new configuration, if any */
 	if (old_ctrl ^ ctrl)
 		macb_or_gem_writel(bp, NCFGR, ctrl);
 
-	bp->speed = state->speed;
-
 	spin_unlock_irqrestore(&bp->lock, flags);
 }
 
@@ -635,10 +618,33 @@ static void macb_mac_link_up(struct phylink_config *config,
 	struct net_device *ndev = to_net_dev(config->dev);
 	struct macb *bp = netdev_priv(ndev);
 	struct macb_queue *queue;
+	unsigned long flags;
 	unsigned int q;
+	u32 ctrl;
+
+	spin_lock_irqsave(&bp->lock, flags);
+
+	ctrl = macb_or_gem_readl(bp, NCFGR);
+
+	ctrl &= ~(MACB_BIT(SPD) | MACB_BIT(FD));
+
+	if (speed == SPEED_100)
+		ctrl |= MACB_BIT(SPD);
+
+	if (duplex)
+		ctrl |= MACB_BIT(FD);
 
 	if (!(bp->caps & MACB_CAPS_MACB_IS_EMAC)) {
-		macb_set_tx_clk(bp->tx_clk, bp->speed, ndev);
+		ctrl &= ~(GEM_BIT(GBE) | MACB_BIT(PAE));
+
+		if (speed == SPEED_1000)
+			ctrl |= GEM_BIT(GBE);
+
+		/* We do not support MLO_PAUSE_RX yet */
+		if (tx_pause)
+			ctrl |= MACB_BIT(PAE);
+
+		macb_set_tx_clk(bp->tx_clk, speed, ndev);
 
 		/* Initialize rings & buffers as clearing MACB_BIT(TE) in link down
 		 * cleared the pipeline and control registers.
@@ -651,6 +657,10 @@ static void macb_mac_link_up(struct phylink_config *config,
 				     bp->rx_intr_mask | MACB_TX_INT_FLAGS | MACB_BIT(HRESP));
 	}
 
+	macb_or_gem_writel(bp, NCFGR, ctrl);
+
+	spin_unlock_irqrestore(&bp->lock, flags);
+
 	/* Enable Rx and Tx */
 	macb_writel(bp, NCR, macb_readl(bp, NCR) | MACB_BIT(RE) | MACB_BIT(TE));
 
@@ -4432,8 +4442,6 @@ static int macb_probe(struct platform_device *pdev)
 	else
 		bp->phy_interface = interface;
 
-	bp->speed = SPEED_UNKNOWN;
-
 	/* IP specific init */
 	err = init(pdev);
 	if (err)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
