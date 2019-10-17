Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A862DDA912
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 11:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gC8cYrByvfAEVzHxRdidvcNSzq+uF1zq1PscG6091Q4=; b=BM/tuVzIwj/phi
	0FnUrSOHV2NSgSzpuEjg2hJgXYLE9981QvtQN1BJ8URxuD4vFvCePWzD+Yp79M3XlZ1lkCO2efHWV
	0u9xDoukOLwyvSeWmtMlbGLUQEAZPj95BZUka7lpKQMuZBUomU2UXhQta0H8DnpRDk7Jn4f58oUxj
	o/18PwTVhCWRovGVcSHtM/R3A+t4JHTsrUXK5283ScTAzbSmfXe8WmuzYaprNX6lfl2ZodgXg3IZB
	o9LmVcZovJF+v32i93yqgFtSM7syoI1UhRMZdkdN/GLsy/2W6+ITAnCID2sreVUqTDsT+tcTvUn3j
	E/Q4CBcxtXfu9yUNhWUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2OZ-0005YS-D8; Thu, 17 Oct 2019 09:48:35 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2OD-0005L0-FK
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 09:48:15 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id E0CF5100010;
 Thu, 17 Oct 2019 09:48:09 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH v2 2/2] net: lpc_eth: parse phy nodes from device tree
Date: Thu, 17 Oct 2019 11:47:57 +0200
Message-Id: <20191017094757.26885-2-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191017094757.26885-1-alexandre.belloni@bootlin.com>
References: <20191017094757.26885-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_024813_778521_88000296 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
---

Changes in v2:
 - move the phy decription in the mdio subnode.

 drivers/net/ethernet/nxp/lpc_eth.c | 28 ++++++++++++++++++++--------
 1 file changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/nxp/lpc_eth.c b/drivers/net/ethernet/nxp/lpc_eth.c
index 89d17399fb5a..a2cf5da398f3 100644
--- a/drivers/net/ethernet/nxp/lpc_eth.c
+++ b/drivers/net/ethernet/nxp/lpc_eth.c
@@ -23,6 +23,7 @@
 #include <linux/crc32.h>
 #include <linux/etherdevice.h>
 #include <linux/module.h>
+#include <linux/of_mdio.h>
 #include <linux/of_net.h>
 #include <linux/phy.h>
 #include <linux/platform_device.h>
@@ -402,6 +403,7 @@ struct rx_status_t {
 struct netdata_local {
 	struct platform_device	*pdev;
 	struct net_device	*ndev;
+	struct device_node	*phy_node;
 	spinlock_t		lock;
 	void __iomem		*net_base;
 	u32			msg_enable;
@@ -760,22 +762,26 @@ static void lpc_handle_link_change(struct net_device *ndev)
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
@@ -794,6 +800,7 @@ static int lpc_mii_probe(struct net_device *ndev)
 
 static int lpc_mii_init(struct netdata_local *pldat)
 {
+	struct device_node *node;
 	int err = -ENXIO;
 
 	pldat->mii_bus = mdiobus_alloc();
@@ -823,7 +830,10 @@ static int lpc_mii_init(struct netdata_local *pldat)
 
 	platform_set_drvdata(pldat->pdev, pldat->mii_bus);
 
-	if (mdiobus_register(pldat->mii_bus))
+	node = of_get_child_by_name(pldat->pdev->dev.of_node, "mdio");
+	err = of_mdiobus_register(pldat->mii_bus, node);
+	of_node_put(node);
+	if (err)
 		goto err_out_unregister_bus;
 
 	if (lpc_mii_probe(pldat->ndev) != 0)
@@ -1363,6 +1373,8 @@ static int lpc_eth_drv_probe(struct platform_device *pdev)
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
