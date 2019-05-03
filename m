Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB2612B93
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 12:37:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UmeXSjnIvIpy4XKqd7OkEZFN+fU130czZBNOoljOHco=; b=H5CVmeA/NUJOx0
	jlR8SCdqfpFHBbiAOwW7d4NRGpswkHImlajmk2VRMwTbHyONWMlmgvTaYMGNGrEgXVO3Rxg4DXuRq
	c0O/L8fiMCWOqpS/Q72FW5TmOyqsy2URPNfYuhmc2vZcjWqvn5lc2fHMpHJnDNBPHQKapqTXNYkvC
	vceIqIYycqlgoPY3oGZM8pE6Wmvlnya7DjT4hucVGjic06JJs56kMApdFwZl6cAIAqvnPl96AS74R
	gPiI7d3qn/UWxaEuafZbPe9BwvF9SqSWy6JRLfCTAoPxxUtY+avM/IMgG/INg45RIVQBkxb3mvv7n
	whF3csLenmCfUQzSff2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMVZ5-00050L-7R; Fri, 03 May 2019 10:37:15 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMVYv-0004wY-7f
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 10:37:06 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,425,1549954800"; d="scan'208";a="31493303"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 03 May 2019 03:37:02 -0700
Received: from tenerife.corp.atmel.com (10.10.76.4) by
 chn-sv-exch06.mchp-main.com (10.10.76.107) with Microsoft SMTP Server id
 14.3.352.0; Fri, 3 May 2019 03:37:02 -0700
From: Nicolas Ferre <nicolas.ferre@microchip.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 <linux-arm-kernel@lists.infradead.org>, "David S. Miller"
 <davem@davemloft.net>, <netdev@vger.kernel.org>
Subject: [PATCH] net: macb: shrink macb_platform_data structure
Date: Fri, 3 May 2019 12:36:58 +0200
Message-ID: <20190503103658.17237-1-nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_033705_358238_660566C6 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: harini.katakam@xilinx.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, michal.simek@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This structure was used intensively for machine specific values
when DT was not used. Since the removal of AVR32 from the kernel,
this structure is only used for passing clocks from PCI macb wrapper, all
other fields being 0.
All other known platforms use DT.

Remove the leftovers but make sure that PCI macb still works as
expected by using default values:
- phydev->irq is set to PHY_POLL by mdiobus_alloc()
- mii_bus->phy_mask is cleared while allocating it
- bp->phy_interface is set to PHY_INTERFACE_MODE_MII if mode not found
in DT.

This simplifies driver probe path and particularly phy handling.

Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
 drivers/net/ethernet/cadence/macb_main.c | 59 +++++-------------------
 include/linux/platform_data/macb.h       |  9 ----
 2 files changed, 11 insertions(+), 57 deletions(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 59531adcbb42..bd6a62f4bd7d 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -285,34 +285,22 @@ static void macb_set_hwaddr(struct macb *bp)
 
 static void macb_get_hwaddr(struct macb *bp)
 {
-	struct macb_platform_data *pdata;
 	u32 bottom;
 	u16 top;
 	u8 addr[6];
 	int i;
 
-	pdata = dev_get_platdata(&bp->pdev->dev);
-
 	/* Check all 4 address register for valid address */
 	for (i = 0; i < 4; i++) {
 		bottom = macb_or_gem_readl(bp, SA1B + i * 8);
 		top = macb_or_gem_readl(bp, SA1T + i * 8);
 
-		if (pdata && pdata->rev_eth_addr) {
-			addr[5] = bottom & 0xff;
-			addr[4] = (bottom >> 8) & 0xff;
-			addr[3] = (bottom >> 16) & 0xff;
-			addr[2] = (bottom >> 24) & 0xff;
-			addr[1] = top & 0xff;
-			addr[0] = (top & 0xff00) >> 8;
-		} else {
-			addr[0] = bottom & 0xff;
-			addr[1] = (bottom >> 8) & 0xff;
-			addr[2] = (bottom >> 16) & 0xff;
-			addr[3] = (bottom >> 24) & 0xff;
-			addr[4] = top & 0xff;
-			addr[5] = (top >> 8) & 0xff;
-		}
+		addr[0] = bottom & 0xff;
+		addr[1] = (bottom >> 8) & 0xff;
+		addr[2] = (bottom >> 16) & 0xff;
+		addr[3] = (bottom >> 24) & 0xff;
+		addr[4] = top & 0xff;
+		addr[5] = (top >> 8) & 0xff;
 
 		if (is_valid_ether_addr(addr)) {
 			memcpy(bp->dev->dev_addr, addr, sizeof(addr));
@@ -510,12 +498,10 @@ static void macb_handle_link_change(struct net_device *dev)
 static int macb_mii_probe(struct net_device *dev)
 {
 	struct macb *bp = netdev_priv(dev);
-	struct macb_platform_data *pdata;
 	struct phy_device *phydev;
 	struct device_node *np;
-	int phy_irq, ret, i;
+	int ret, i;
 
-	pdata = dev_get_platdata(&bp->pdev->dev);
 	np = bp->pdev->dev.of_node;
 	ret = 0;
 
@@ -557,19 +543,6 @@ static int macb_mii_probe(struct net_device *dev)
 			return -ENXIO;
 		}
 
-		if (pdata) {
-			if (gpio_is_valid(pdata->phy_irq_pin)) {
-				ret = devm_gpio_request(&bp->pdev->dev,
-							pdata->phy_irq_pin, "phy int");
-				if (!ret) {
-					phy_irq = gpio_to_irq(pdata->phy_irq_pin);
-					phydev->irq = (phy_irq < 0) ? PHY_POLL : phy_irq;
-				}
-			} else {
-				phydev->irq = PHY_POLL;
-			}
-		}
-
 		/* attach the mac to the phy */
 		ret = phy_connect_direct(dev, phydev, &macb_handle_link_change,
 					 bp->phy_interface);
@@ -598,7 +571,6 @@ static int macb_mii_probe(struct net_device *dev)
 
 static int macb_mii_init(struct macb *bp)
 {
-	struct macb_platform_data *pdata;
 	struct device_node *np;
 	int err = -ENXIO;
 
@@ -618,7 +590,6 @@ static int macb_mii_init(struct macb *bp)
 		 bp->pdev->name, bp->pdev->id);
 	bp->mii_bus->priv = bp;
 	bp->mii_bus->parent = &bp->pdev->dev;
-	pdata = dev_get_platdata(&bp->pdev->dev);
 
 	dev_set_drvdata(&bp->dev->dev, bp->mii_bus);
 
@@ -632,9 +603,6 @@ static int macb_mii_init(struct macb *bp)
 
 		err = mdiobus_register(bp->mii_bus);
 	} else {
-		if (pdata)
-			bp->mii_bus->phy_mask = pdata->phy_mask;
-
 		err = of_mdiobus_register(bp->mii_bus, np);
 	}
 
@@ -4050,7 +4018,6 @@ static int macb_probe(struct platform_device *pdev)
 	struct clk *pclk, *hclk = NULL, *tx_clk = NULL, *rx_clk = NULL;
 	struct clk *tsu_clk = NULL;
 	unsigned int queue_mask, num_queues;
-	struct macb_platform_data *pdata;
 	bool native_io;
 	struct phy_device *phydev;
 	struct net_device *dev;
@@ -4182,15 +4149,11 @@ static int macb_probe(struct platform_device *pdev)
 	}
 
 	err = of_get_phy_mode(np);
-	if (err < 0) {
-		pdata = dev_get_platdata(&pdev->dev);
-		if (pdata && pdata->is_rmii)
-			bp->phy_interface = PHY_INTERFACE_MODE_RMII;
-		else
-			bp->phy_interface = PHY_INTERFACE_MODE_MII;
-	} else {
+	if (err < 0)
+		/* not found in DT, MII by default */
+		bp->phy_interface = PHY_INTERFACE_MODE_MII;
+	else
 		bp->phy_interface = err;
-	}
 
 	/* IP specific init */
 	err = init(pdev);
diff --git a/include/linux/platform_data/macb.h b/include/linux/platform_data/macb.h
index 7815d50c26ff..2bc51b822956 100644
--- a/include/linux/platform_data/macb.h
+++ b/include/linux/platform_data/macb.h
@@ -12,19 +12,10 @@
 
 /**
  * struct macb_platform_data - platform data for MACB Ethernet
- * @phy_mask:		phy mask passed when register the MDIO bus
- *			within the driver
- * @phy_irq_pin:	PHY IRQ
- * @is_rmii:		using RMII interface?
- * @rev_eth_addr:	reverse Ethernet address byte order
  * @pclk:		platform clock
  * @hclk:		AHB clock
  */
 struct macb_platform_data {
-	u32		phy_mask;
-	int		phy_irq_pin;
-	u8		is_rmii;
-	u8		rev_eth_addr;
 	struct clk	*pclk;
 	struct clk	*hclk;
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
