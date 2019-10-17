Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E22DDB9B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 00:23:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwBMdATYp1mUfgK9HrvL6TIDdwXEGQ6ut5Wj6LHOzmw=; b=uym/+tRliANZXh
	o4m4A12iGdSNFC73eCs5x/iyZ4qo7ERRJnbe6Be66ZQc/mx2kenS0xcHGAaoOPcYzVf2oHIDh60Wm
	snBpjV9FKn/sTqNF+j0Vm7Eg+9soFmSEgXpNY2BcVIuLd8N3IcBwTqHz4dkyDCm4WAaUEluH3zsZ4
	nsQPLr7SEjI0tHaKOMbY+4sbvMpVnvaPYNDkNq8QDuc3r01BqtVIBa4uvZkgmrOESmG2eY9OJt6a9
	ADHCBvpnDtxE0FV+wX27FW1LqIjshxW6/0OH44RWb05IKtCh/kpHD9osiQ6J7AtGJNWzI+EMssqXT
	xT85ApP6k+hQToHcSiwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLEAo-0003X8-Ll; Thu, 17 Oct 2019 22:23:10 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLEAN-0003Oi-1V
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 22:22:46 +0000
X-Originating-IP: 86.202.229.42
Received: from localhost (lfbn-lyo-1-146-42.w86-202.abo.wanadoo.fr
 [86.202.229.42])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 10D491C0008;
 Thu, 17 Oct 2019 22:22:36 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH net-next v3 2/2] net: lpc_eth: parse phy nodes from device tree
Date: Fri, 18 Oct 2019 00:22:31 +0200
Message-Id: <20191017222231.29122-3-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191017222231.29122-1-alexandre.belloni@bootlin.com>
References: <20191017222231.29122-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_152243_352918_0B56FDC2 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When connected to a micrel phy, phy_find_first doesn't work properly
because the first phy found is on address 0, the broadcast address but, the
first thing the phy driver is doing is disabling this broadcast address.
The phy is then available only on address 1 but the mdio driver doesn't
know about it.

Instead, register the mdio bus using of_mdiobus_register and try to find
the phy description in device tree before falling back to phy_find_first.

This ultimately also allows to describe the interrupt the phy is connected
to.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/ethernet/nxp/lpc_eth.c | 28 ++++++++++++++++++++--------
 1 file changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/nxp/lpc_eth.c b/drivers/net/ethernet/nxp/lpc_eth.c
index 141571e2ec11..501782e233b3 100644
--- a/drivers/net/ethernet/nxp/lpc_eth.c
+++ b/drivers/net/ethernet/nxp/lpc_eth.c
@@ -15,6 +15,7 @@
 #include <linux/etherdevice.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/of_mdio.h>
 #include <linux/of_net.h>
 #include <linux/phy.h>
 #include <linux/platform_device.h>
@@ -391,6 +392,7 @@ struct rx_status_t {
 struct netdata_local {
 	struct platform_device	*pdev;
 	struct net_device	*ndev;
+	struct device_node	*phy_node;
 	spinlock_t		lock;
 	void __iomem		*net_base;
 	u32			msg_enable;
@@ -749,22 +751,26 @@ static void lpc_handle_link_change(struct net_device *ndev)
 static int lpc_mii_probe(struct net_device *ndev)
 {
 	struct netdata_local *pldat = netdev_priv(ndev);
-	struct phy_device *phydev = phy_find_first(pldat->mii_bus);
-
-	if (!phydev) {
-		netdev_err(ndev, "no PHY found\n");
-		return -ENODEV;
-	}
+	struct phy_device *phydev;
 
 	/* Attach to the PHY */
 	if (lpc_phy_interface_mode(&pldat->pdev->dev) == PHY_INTERFACE_MODE_MII)
 		netdev_info(ndev, "using MII interface\n");
 	else
 		netdev_info(ndev, "using RMII interface\n");
+
+	if (pldat->phy_node)
+		phydev =  of_phy_find_device(pldat->phy_node);
+	else
+		phydev = phy_find_first(pldat->mii_bus);
+	if (!phydev) {
+		netdev_err(ndev, "no PHY found\n");
+		return -ENODEV;
+	}
+
 	phydev = phy_connect(ndev, phydev_name(phydev),
 			     &lpc_handle_link_change,
 			     lpc_phy_interface_mode(&pldat->pdev->dev));
-
 	if (IS_ERR(phydev)) {
 		netdev_err(ndev, "Could not attach to PHY\n");
 		return PTR_ERR(phydev);
@@ -783,6 +789,7 @@ static int lpc_mii_probe(struct net_device *ndev)
 
 static int lpc_mii_init(struct netdata_local *pldat)
 {
+	struct device_node *node;
 	int err = -ENXIO;
 
 	pldat->mii_bus = mdiobus_alloc();
@@ -812,7 +819,10 @@ static int lpc_mii_init(struct netdata_local *pldat)
 
 	platform_set_drvdata(pldat->pdev, pldat->mii_bus);
 
-	if (mdiobus_register(pldat->mii_bus))
+	node = of_get_child_by_name(pldat->pdev->dev.of_node, "mdio");
+	err = of_mdiobus_register(pldat->mii_bus, node);
+	of_node_put(node);
+	if (err)
 		goto err_out_unregister_bus;
 
 	if (lpc_mii_probe(pldat->ndev) != 0)
@@ -1345,6 +1355,8 @@ static int lpc_eth_drv_probe(struct platform_device *pdev)
 	netdev_dbg(ndev, "DMA buffer V address :0x%p\n",
 			pldat->dma_buff_base_v);
 
+	pldat->phy_node = of_parse_phandle(np, "phy-handle", 0);
+
 	/* Get MAC address from current HW setting (POR state is all zeros) */
 	__lpc_get_mac(pldat, ndev->dev_addr);
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
