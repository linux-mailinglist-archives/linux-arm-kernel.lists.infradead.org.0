Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 481B8731FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 16:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=svrVyhO8jsoBso3EIK2GslHfJZLbf3ljd5sBTqUleuo=; b=WtOz5xxhKbdgkOvi5B3fsHBFzc
	tIV0I3mDkcaungC4HbaE33u9TLI+JImHwAauJza54AB970Hh4wJLAQehWVx5SOATWdKZIEMLMHc5A
	WbBEEXLnU0Ng60YgvAS+iweLv1R40JIJyueloSmjr0SHrTzEhKz3Al5rNs2UjWR6AOg6mr3o3Xlwa
	v8nqfGt+Cyz57/UsDFz8c6qBCP3rkXedTvxNs5Iv/FKpj5PnhchAdhytr7Lyyf9bdKVCvgbRFZx8W
	3ogUwdomUmXavqeSa5LfRLtFIUykuE1Th8SlOLkJI3ILpxY9ej071b8oDiHaD/EhpYXcn76ed+7mf
	ajv2ToZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqITi-0000bK-7H; Wed, 24 Jul 2019 14:42:50 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqISe-00085e-PU
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 14:41:47 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 458B81A037D;
 Wed, 24 Jul 2019 16:41:43 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3945F1A0373;
 Wed, 24 Jul 2019 16:41:43 +0200 (CEST)
Received: from fsr-ub1664-016.ea.freescale.net
 (fsr-ub1664-016.ea.freescale.net [10.171.71.216])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id BF14A205D8;
 Wed, 24 Jul 2019 16:41:42 +0200 (CEST)
From: Claudiu Manoil <claudiu.manoil@nxp.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH net-next v1 1/4] enetc: Clean up local mdio bus allocation
Date: Wed, 24 Jul 2019 17:41:38 +0300
Message-Id: <1563979301-596-2-git-send-email-claudiu.manoil@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563979301-596-1-git-send-email-claudiu.manoil@nxp.com>
References: <1563979301-596-1-git-send-email-claudiu.manoil@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_074145_110331_C9FC3BE9 
X-CRM114-Status: GOOD (  12.36  )
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

Though it works, this is not how it should have been.
What's needed is a pointer to the mdio registers.
Store it properly inside bus->priv allocated space.
Use devm_* variant to further clean up the init error /
remove paths.

Fixes following sparse warning:
 warning: incorrect type in assignment (different address spaces)
    expected void *priv
    got struct enetc_mdio_regs [noderef] <asn:2>*[assigned] regs

Fixes: ebfcb23d62ab ("enetc: Add ENETC PF level external MDIO support")

Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>
---
v1 - added this patch

 .../net/ethernet/freescale/enetc/enetc_mdio.c | 31 +++++++------------
 1 file changed, 12 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/freescale/enetc/enetc_mdio.c b/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
index 77b9cd10ba2b..1e3cd21c13ee 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
+++ b/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
@@ -15,7 +15,8 @@ struct enetc_mdio_regs {
 	u32	mdio_addr;	/* MDIO address */
 };
 
-#define bus_to_enetc_regs(bus)	(struct enetc_mdio_regs __iomem *)((bus)->priv)
+#define bus_to_enetc_regs(bus)	(*(struct enetc_mdio_regs __iomem **) \
+				((bus)->priv))
 
 #define ENETC_MDIO_REG_OFFSET	0x1c00
 #define ENETC_MDC_DIV		258
@@ -146,12 +147,12 @@ static int enetc_mdio_read(struct mii_bus *bus, int phy_id, int regnum)
 int enetc_mdio_probe(struct enetc_pf *pf)
 {
 	struct device *dev = &pf->si->pdev->dev;
-	struct enetc_mdio_regs __iomem *regs;
+	struct enetc_mdio_regs __iomem **regsp;
 	struct device_node *np;
 	struct mii_bus *bus;
-	int ret;
+	int err;
 
-	bus = mdiobus_alloc_size(sizeof(regs));
+	bus = devm_mdiobus_alloc_size(dev, sizeof(*regsp));
 	if (!bus)
 		return -ENOMEM;
 
@@ -159,41 +160,33 @@ int enetc_mdio_probe(struct enetc_pf *pf)
 	bus->read = enetc_mdio_read;
 	bus->write = enetc_mdio_write;
 	bus->parent = dev;
+	regsp = bus->priv;
 	snprintf(bus->id, MII_BUS_ID_SIZE, "%s", dev_name(dev));
 
 	/* store the enetc mdio base address for this bus */
-	regs = pf->si->hw.port + ENETC_MDIO_REG_OFFSET;
-	bus->priv = regs;
+	*regsp = pf->si->hw.port + ENETC_MDIO_REG_OFFSET;
 
 	np = of_get_child_by_name(dev->of_node, "mdio");
 	if (!np) {
 		dev_err(dev, "MDIO node missing\n");
-		ret = -EINVAL;
-		goto err_registration;
+		return -EINVAL;
 	}
 
-	ret = of_mdiobus_register(bus, np);
-	if (ret) {
+	err = of_mdiobus_register(bus, np);
+	if (err) {
 		of_node_put(np);
 		dev_err(dev, "cannot register MDIO bus\n");
-		goto err_registration;
+		return err;
 	}
 
 	of_node_put(np);
 	pf->mdio = bus;
 
 	return 0;
-
-err_registration:
-	mdiobus_free(bus);
-
-	return ret;
 }
 
 void enetc_mdio_remove(struct enetc_pf *pf)
 {
-	if (pf->mdio) {
+	if (pf->mdio)
 		mdiobus_unregister(pf->mdio);
-		mdiobus_free(pf->mdio);
-	}
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
