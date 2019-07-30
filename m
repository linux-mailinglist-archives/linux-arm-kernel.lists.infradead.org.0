Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EFB7A50A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:46:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DPYHFQYbVBYyUUNklaR3Xd7c4CPPK2zeqcxoR0uK9sg=; b=TjCkkjFLlnQa+AbrDmGAQ9bS62
	zKFMS6xEwRzq7zx+XFUpD3bexBcl+ghj6JRu4UeWTklYA43LgZWZPBQQFNLOtRShWhRJVVDos7MgH
	4WG0ftqwzm94ShD7KCTBvG8AVZEDuFn4VtvJJ4MQP8MB1K2k+xq0tXlEx+xO6l5+jPBhn7v2+0T6C
	RGWB1B1UAqKnSF0Jcjwt2Vufvkt0XNGOEJUWvVx5lJ8+Lkn6l9AlxmI7EUmCRWdo5QuIPIWQFUiZ4
	ENbaqAkFpblUSsLF3r7zzX2ZMFiZc8FidF2lZKRLcE7fWz+tbUKBGJQf5xhcrDQRKa9ZISPT5fVzQ
	WORmIRwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOhx-0007wq-Dy; Tue, 30 Jul 2019 09:46:13 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOh9-0007Tn-S9
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:45:26 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id ECD581A063B;
 Tue, 30 Jul 2019 11:45:21 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DFEB11A0631;
 Tue, 30 Jul 2019 11:45:21 +0200 (CEST)
Received: from fsr-ub1664-016.ea.freescale.net
 (fsr-ub1664-016.ea.freescale.net [10.171.71.216])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 7AA0C204D6;
 Tue, 30 Jul 2019 11:45:21 +0200 (CEST)
From: Claudiu Manoil <claudiu.manoil@nxp.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH net-next v4 1/4] enetc: Clean up local mdio bus allocation
Date: Tue, 30 Jul 2019 12:45:16 +0300
Message-Id: <1564479919-18835-2-git-send-email-claudiu.manoil@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564479919-18835-1-git-send-email-claudiu.manoil@nxp.com>
References: <1564479919-18835-1-git-send-email-claudiu.manoil@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_024524_185578_A482B308 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: andrew@lunn.ch, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 alexandru.marginean@nxp.com, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

What's needed is basically a pointer to the mdio registers.
This is one way to store it inside bus->priv allocated space,
without upsetting sparse.
Reworked accessors to avoid __iomem casting.
Used devm_* variant to further clean up the init error /
remove paths.

Fixes following sparse warning:
 warning: incorrect type in assignment (different address spaces)
    expected void *priv
    got struct enetc_mdio_regs [noderef] <asn:2>*[assigned] regs

Fixes: ebfcb23d62ab ("enetc: Add ENETC PF level external MDIO support")

Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
v1 - added this patch
v2 - reworked accessors as per Andrew Lunn's request
v3 - cleaned up commit message
v4 - none

 .../net/ethernet/freescale/enetc/enetc_mdio.c | 94 +++++++++----------
 1 file changed, 46 insertions(+), 48 deletions(-)

diff --git a/drivers/net/ethernet/freescale/enetc/enetc_mdio.c b/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
index 77b9cd10ba2b..05094601ece8 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
+++ b/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
@@ -8,16 +8,22 @@
 
 #include "enetc_pf.h"
 
-struct enetc_mdio_regs {
-	u32	mdio_cfg;	/* MDIO configuration and status */
-	u32	mdio_ctl;	/* MDIO control */
-	u32	mdio_data;	/* MDIO data */
-	u32	mdio_addr;	/* MDIO address */
+#define	ENETC_MDIO_REG_OFFSET	0x1c00
+#define	ENETC_MDIO_CFG	0x0	/* MDIO configuration and status */
+#define	ENETC_MDIO_CTL	0x4	/* MDIO control */
+#define	ENETC_MDIO_DATA	0x8	/* MDIO data */
+#define	ENETC_MDIO_ADDR	0xc	/* MDIO address */
+
+#define enetc_mdio_rd(hw, off) \
+	enetc_port_rd(hw, ENETC_##off + ENETC_MDIO_REG_OFFSET)
+#define enetc_mdio_wr(hw, off, val) \
+	enetc_port_wr(hw, ENETC_##off + ENETC_MDIO_REG_OFFSET, val)
+#define enetc_mdio_rd_reg(off)	enetc_mdio_rd(hw, off)
+
+struct enetc_mdio_priv {
+	struct enetc_hw *hw;
 };
 
-#define bus_to_enetc_regs(bus)	(struct enetc_mdio_regs __iomem *)((bus)->priv)
-
-#define ENETC_MDIO_REG_OFFSET	0x1c00
 #define ENETC_MDC_DIV		258
 
 #define MDIO_CFG_CLKDIV(x)	((((x) >> 1) & 0xff) << 8)
@@ -33,18 +39,19 @@ struct enetc_mdio_regs {
 #define MDIO_DATA(x)		((x) & 0xffff)
 
 #define TIMEOUT	1000
-static int enetc_mdio_wait_complete(struct enetc_mdio_regs __iomem *regs)
+static int enetc_mdio_wait_complete(struct enetc_hw *hw)
 {
 	u32 val;
 
-	return readx_poll_timeout(enetc_rd_reg, &regs->mdio_cfg, val,
+	return readx_poll_timeout(enetc_mdio_rd_reg, MDIO_CFG, val,
 				  !(val & MDIO_CFG_BSY), 10, 10 * TIMEOUT);
 }
 
 static int enetc_mdio_write(struct mii_bus *bus, int phy_id, int regnum,
 			    u16 value)
 {
-	struct enetc_mdio_regs __iomem *regs = bus_to_enetc_regs(bus);
+	struct enetc_mdio_priv *mdio_priv = bus->priv;
+	struct enetc_hw *hw = mdio_priv->hw;
 	u32 mdio_ctl, mdio_cfg;
 	u16 dev_addr;
 	int ret;
@@ -59,29 +66,29 @@ static int enetc_mdio_write(struct mii_bus *bus, int phy_id, int regnum,
 		mdio_cfg &= ~MDIO_CFG_ENC45;
 	}
 
-	enetc_wr_reg(&regs->mdio_cfg, mdio_cfg);
+	enetc_mdio_wr(hw, MDIO_CFG, mdio_cfg);
 
-	ret = enetc_mdio_wait_complete(regs);
+	ret = enetc_mdio_wait_complete(hw);
 	if (ret)
 		return ret;
 
 	/* set port and dev addr */
 	mdio_ctl = MDIO_CTL_PORT_ADDR(phy_id) | MDIO_CTL_DEV_ADDR(dev_addr);
-	enetc_wr_reg(&regs->mdio_ctl, mdio_ctl);
+	enetc_mdio_wr(hw, MDIO_CTL, mdio_ctl);
 
 	/* set the register address */
 	if (regnum & MII_ADDR_C45) {
-		enetc_wr_reg(&regs->mdio_addr, regnum & 0xffff);
+		enetc_mdio_wr(hw, MDIO_ADDR, regnum & 0xffff);
 
-		ret = enetc_mdio_wait_complete(regs);
+		ret = enetc_mdio_wait_complete(hw);
 		if (ret)
 			return ret;
 	}
 
 	/* write the value */
-	enetc_wr_reg(&regs->mdio_data, MDIO_DATA(value));
+	enetc_mdio_wr(hw, MDIO_DATA, MDIO_DATA(value));
 
-	ret = enetc_mdio_wait_complete(regs);
+	ret = enetc_mdio_wait_complete(hw);
 	if (ret)
 		return ret;
 
@@ -90,7 +97,8 @@ static int enetc_mdio_write(struct mii_bus *bus, int phy_id, int regnum,
 
 static int enetc_mdio_read(struct mii_bus *bus, int phy_id, int regnum)
 {
-	struct enetc_mdio_regs __iomem *regs = bus_to_enetc_regs(bus);
+	struct enetc_mdio_priv *mdio_priv = bus->priv;
+	struct enetc_hw *hw = mdio_priv->hw;
 	u32 mdio_ctl, mdio_cfg;
 	u16 dev_addr, value;
 	int ret;
@@ -104,41 +112,41 @@ static int enetc_mdio_read(struct mii_bus *bus, int phy_id, int regnum)
 		mdio_cfg &= ~MDIO_CFG_ENC45;
 	}
 
-	enetc_wr_reg(&regs->mdio_cfg, mdio_cfg);
+	enetc_mdio_wr(hw, MDIO_CFG, mdio_cfg);
 
-	ret = enetc_mdio_wait_complete(regs);
+	ret = enetc_mdio_wait_complete(hw);
 	if (ret)
 		return ret;
 
 	/* set port and device addr */
 	mdio_ctl = MDIO_CTL_PORT_ADDR(phy_id) | MDIO_CTL_DEV_ADDR(dev_addr);
-	enetc_wr_reg(&regs->mdio_ctl, mdio_ctl);
+	enetc_mdio_wr(hw, MDIO_CTL, mdio_ctl);
 
 	/* set the register address */
 	if (regnum & MII_ADDR_C45) {
-		enetc_wr_reg(&regs->mdio_addr, regnum & 0xffff);
+		enetc_mdio_wr(hw, MDIO_ADDR, regnum & 0xffff);
 
-		ret = enetc_mdio_wait_complete(regs);
+		ret = enetc_mdio_wait_complete(hw);
 		if (ret)
 			return ret;
 	}
 
 	/* initiate the read */
-	enetc_wr_reg(&regs->mdio_ctl, mdio_ctl | MDIO_CTL_READ);
+	enetc_mdio_wr(hw, MDIO_CTL, mdio_ctl | MDIO_CTL_READ);
 
-	ret = enetc_mdio_wait_complete(regs);
+	ret = enetc_mdio_wait_complete(hw);
 	if (ret)
 		return ret;
 
 	/* return all Fs if nothing was there */
-	if (enetc_rd_reg(&regs->mdio_cfg) & MDIO_CFG_RD_ER) {
+	if (enetc_mdio_rd(hw, MDIO_CFG) & MDIO_CFG_RD_ER) {
 		dev_dbg(&bus->dev,
 			"Error while reading PHY%d reg at %d.%hhu\n",
 			phy_id, dev_addr, regnum);
 		return 0xffff;
 	}
 
-	value = enetc_rd_reg(&regs->mdio_data) & 0xffff;
+	value = enetc_mdio_rd(hw, MDIO_DATA) & 0xffff;
 
 	return value;
 }
@@ -146,12 +154,12 @@ static int enetc_mdio_read(struct mii_bus *bus, int phy_id, int regnum)
 int enetc_mdio_probe(struct enetc_pf *pf)
 {
 	struct device *dev = &pf->si->pdev->dev;
-	struct enetc_mdio_regs __iomem *regs;
+	struct enetc_mdio_priv *mdio_priv;
 	struct device_node *np;
 	struct mii_bus *bus;
-	int ret;
+	int err;
 
-	bus = mdiobus_alloc_size(sizeof(regs));
+	bus = devm_mdiobus_alloc_size(dev, sizeof(*mdio_priv));
 	if (!bus)
 		return -ENOMEM;
 
@@ -159,41 +167,31 @@ int enetc_mdio_probe(struct enetc_pf *pf)
 	bus->read = enetc_mdio_read;
 	bus->write = enetc_mdio_write;
 	bus->parent = dev;
+	mdio_priv = bus->priv;
+	mdio_priv->hw = &pf->si->hw;
 	snprintf(bus->id, MII_BUS_ID_SIZE, "%s", dev_name(dev));
 
-	/* store the enetc mdio base address for this bus */
-	regs = pf->si->hw.port + ENETC_MDIO_REG_OFFSET;
-	bus->priv = regs;
-
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
