Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5350F731FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 16:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0674yNTuvh9o3FGsF5nJHy9yhEkvexCsW+i30CI32cg=; b=Ckdj5aDdwWZNwoXSNdnZqZlng2
	pKhpNUHCcsxsmaFgrNgpdWduvDCDy6IV58UVPUVNpmC+hrGulr1/BjzuQ2raYC8mdTXwaWgdKdHs0
	DPR/Kj/18LH6CjcFZzqrJpkMRb9Eww/CEhzrjjkygCKunuf7bemUTiCI2sKXyA9t2dO5HE/vTA/0p
	YWqUJY834m6mcVOjgNd1B/ASdnOHUKldcemzai6r9baP7tw9hCNF8jjSeK/sL8ZQbxmUcsi5jYMpf
	4Jz4Vn7/IBQmaLOHaeFASyiUvVH3aCq1Q82Mk5+euI++AsM3xyAq7+Y6W8Xizjxi7G3FnkYAGOhCY
	GRp0ugDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqIT7-0008GN-4W; Wed, 24 Jul 2019 14:42:13 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqISe-00085o-Tg
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 14:41:48 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id BC4661A037E;
 Wed, 24 Jul 2019 16:41:43 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B00951A0157;
 Wed, 24 Jul 2019 16:41:43 +0200 (CEST)
Received: from fsr-ub1664-016.ea.freescale.net
 (fsr-ub1664-016.ea.freescale.net [10.171.71.216])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 4765D205D8;
 Wed, 24 Jul 2019 16:41:43 +0200 (CEST)
From: Claudiu Manoil <claudiu.manoil@nxp.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH net-next v1 2/4] enetc: Add mdio bus driver for the PCIe MDIO
 endpoint
Date: Wed, 24 Jul 2019 17:41:39 +0300
Message-Id: <1563979301-596-3-git-send-email-claudiu.manoil@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563979301-596-1-git-send-email-claudiu.manoil@nxp.com>
References: <1563979301-596-1-git-send-email-claudiu.manoil@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_074145_227910_649024FD 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: andrew@lunn.ch, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 alexandru.marginean@nxp.com, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ENETC ports can manage the MDIO bus via local register
interface.  However there's also a centralized way
to manage the MDIO bus, via the MDIO PCIe endpoint
device integrated by the same root complex that also
integrates the ENETC ports (eth controllers).

Depending on board design and use case, centralized
access to MDIO may be better than using local ENETC
port registers.  For instance, on the LS1028A QDS board
where MDIO muxing is requiered.  Also, the LS1028A on-chip
switch doesn't have a local MDIO register interface.

The current patch registers the above PCIe enpoint as a
separate MDIO bus and provides a driver for it by re-using
the code used for local MDIO access.  It also allows the
ENETC port PHYs to be managed by this driver if the local
"mdio" node is missing from the ENETC port node.

Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>
---
v1 - fixed mdio bus allocation
   - requested only BAR0 region, as it's the only one used by the driver

 .../net/ethernet/freescale/enetc/enetc_mdio.c | 90 +++++++++++++++++++
 .../net/ethernet/freescale/enetc/enetc_pf.c   |  5 +-
 2 files changed, 94 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/freescale/enetc/enetc_mdio.c b/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
index 1e3cd21c13ee..378cc8dd27f9 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
+++ b/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
@@ -190,3 +190,93 @@ void enetc_mdio_remove(struct enetc_pf *pf)
 	if (pf->mdio)
 		mdiobus_unregister(pf->mdio);
 }
+
+#define ENETC_MDIO_DEV_ID	0xee01
+#define ENETC_MDIO_DEV_NAME	"FSL PCIe IE Central MDIO"
+#define ENETC_MDIO_BUS_NAME	ENETC_MDIO_DEV_NAME " Bus"
+#define ENETC_MDIO_DRV_NAME	ENETC_MDIO_DEV_NAME " driver"
+#define ENETC_MDIO_DRV_ID	"fsl_enetc_mdio"
+
+static int enetc_pci_mdio_probe(struct pci_dev *pdev,
+				const struct pci_device_id *ent)
+{
+	struct enetc_mdio_regs __iomem **regsp;
+	struct device *dev = &pdev->dev;
+	struct mii_bus *bus;
+	int err;
+
+	bus = devm_mdiobus_alloc_size(dev, sizeof(*regsp));
+	if (!bus)
+		return -ENOMEM;
+
+	bus->name = ENETC_MDIO_BUS_NAME;
+	bus->read = enetc_mdio_read;
+	bus->write = enetc_mdio_write;
+	bus->parent = dev;
+	regsp = bus->priv;
+	snprintf(bus->id, MII_BUS_ID_SIZE, "%s", dev_name(dev));
+
+	pcie_flr(pdev);
+	err = pci_enable_device_mem(pdev);
+	if (err) {
+		dev_err(dev, "device enable failed\n");
+		return err;
+	}
+
+	err = pci_request_region(pdev, 0, ENETC_MDIO_DRV_ID);
+	if (err) {
+		dev_err(dev, "pci_request_region failed\n");
+		goto err_pci_mem_reg;
+	}
+
+	*regsp = pci_iomap_range(pdev, 0, ENETC_MDIO_REG_OFFSET, 0);
+	if (!bus->priv) {
+		err = -ENXIO;
+		dev_err(dev, "iomap failed\n");
+		goto err_ioremap;
+	}
+
+	err = of_mdiobus_register(bus, dev->of_node);
+	if (err)
+		goto err_mdiobus_reg;
+
+	pci_set_drvdata(pdev, bus);
+
+	return 0;
+
+err_mdiobus_reg:
+	iounmap(*regsp);
+err_ioremap:
+	pci_release_mem_regions(pdev);
+err_pci_mem_reg:
+	pci_disable_device(pdev);
+
+	return err;
+}
+
+static void enetc_pci_mdio_remove(struct pci_dev *pdev)
+{
+	struct mii_bus *bus = pci_get_drvdata(pdev);
+
+	mdiobus_unregister(bus);
+	iounmap(bus_to_enetc_regs(bus));
+	pci_release_mem_regions(pdev);
+	pci_disable_device(pdev);
+}
+
+static const struct pci_device_id enetc_pci_mdio_id_table[] = {
+	{ PCI_DEVICE(PCI_VENDOR_ID_FREESCALE, ENETC_MDIO_DEV_ID) },
+	{ 0, } /* End of table. */
+};
+MODULE_DEVICE_TABLE(pci, enetc_mdio_id_table);
+
+static struct pci_driver enetc_pci_mdio_driver = {
+	.name = ENETC_MDIO_DRV_ID,
+	.id_table = enetc_pci_mdio_id_table,
+	.probe = enetc_pci_mdio_probe,
+	.remove = enetc_pci_mdio_remove,
+};
+module_pci_driver(enetc_pci_mdio_driver);
+
+MODULE_DESCRIPTION(ENETC_MDIO_DRV_NAME);
+MODULE_LICENSE("Dual BSD/GPL");
diff --git a/drivers/net/ethernet/freescale/enetc/enetc_pf.c b/drivers/net/ethernet/freescale/enetc/enetc_pf.c
index 258b3cb38a6f..7d6513ff8507 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc_pf.c
+++ b/drivers/net/ethernet/freescale/enetc/enetc_pf.c
@@ -750,6 +750,7 @@ static int enetc_of_get_phy(struct enetc_ndev_priv *priv)
 {
 	struct enetc_pf *pf = enetc_si_priv(priv->si);
 	struct device_node *np = priv->dev->of_node;
+	struct device_node *mdio_np;
 	int err;
 
 	if (!np) {
@@ -773,7 +774,9 @@ static int enetc_of_get_phy(struct enetc_ndev_priv *priv)
 		priv->phy_node = of_node_get(np);
 	}
 
-	if (!of_phy_is_fixed_link(np)) {
+	mdio_np = of_get_child_by_name(np, "mdio");
+	if (mdio_np) {
+		of_node_put(mdio_np);
 		err = enetc_mdio_probe(pf);
 		if (err) {
 			of_node_put(priv->phy_node);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
