Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 788A057FC1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 11:56:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJn1A+QTRS3qmerFunZChPyyejfRTZwdBdtYH/Uq1sE=; b=fYNUQCFj4WPnAz
	LJvlYoAUVzfFTVPzL6HuzNdDnrMv3AwrD51Av8QhCMU9cjp+L25LdqoaUHdyUa54lAcmmxmYxFLaE
	hIkuo8HdtKfZPJ27hWR9IkNUjrgmPYB5mA2c6b9F7GnM2Oin/iGbIUMkmyQvqng6+multHZrcgZss
	Jq6PN8qWgWpRSoUAzhwQaCQE8etYHG+DEDeH6wge62T3pbOq8fS0jyTynNs4pMcZzsLd4D43lYoO/
	mTUBkrqLCHXteASbxHFXnjNZhvMu9ZGeNNBLizebwk69pKEAFxi5Yb+p8JffdGp6rcUrSSBC/GBjn
	vIV0q3ByIWjVuOZiP7og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgR8d-0007Qz-AI; Thu, 27 Jun 2019 09:56:19 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgR4A-0003Hs-7m
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 09:51:47 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 2114E240017;
 Thu, 27 Jun 2019 09:51:37 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH v2 11/19] phy: mvebu-cp110-comphy: Add PCIe support
Date: Thu, 27 Jun 2019 11:50:56 +0200
Message-Id: <20190627095104.22529-12-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190627095104.22529-1-miquel.raynal@bootlin.com>
References: <20190627095104.22529-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_025143_575356_A6293EAC 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>, Russell King <linux@armlinux.org.uk>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Grzegorz Jaszczyk <jaz@semihalf.com>

Add PCIe support by filling the COMPHY modes table.

Also add a new macro to generate the right value for the firmware
depending on the width (PCI x1, x2, x4, etc). The width will be passed
by the core as the "submode" argument of the ->set_mode() callback. If
this argument is zero, default to x1 mode.

Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
[miquel.raynal@bootlin.com: adapt the content to the mainline driver]
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/phy/marvell/phy-mvebu-cp110-comphy.c | 37 +++++++++++++++++---
 1 file changed, 32 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
index fa222cf8f47b..3fb5517a6d30 100644
--- a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
@@ -128,6 +128,7 @@
  * [ 5-11]: COMPHY port index
  * [12-16]: COMPHY mode
  * [17]: Clock source
+ * [18-20]: PCIe width (x1, x2, x4)
  */
 #define COMPHY_FW_POL_OFFSET	0
 #define COMPHY_FW_POL_MASK	GENMASK(1, 0)
@@ -142,24 +143,31 @@
 #define COMPHY_FW_PORT_MASK	GENMASK(11, 8)
 #define COMPHY_FW_MODE_OFFSET	12
 #define COMPHY_FW_MODE_MASK	GENMASK(16, 12)
+#define COMPHY_FW_WIDTH_OFFSET	18
+#define COMPHY_FW_WIDTH_MASK	GENMASK(20, 18)
 
-#define COMPHY_FW_PARAM_FULL(mode, port, speed, pol)			\
+#define COMPHY_FW_PARAM_FULL(mode, port, speed, pol, width)		\
 	((((pol) << COMPHY_FW_POL_OFFSET) & COMPHY_FW_POL_MASK) |	\
 	 (((mode) << COMPHY_FW_MODE_OFFSET) & COMPHY_FW_MODE_MASK) |	\
 	 (((port) << COMPHY_FW_PORT_OFFSET) & COMPHY_FW_PORT_MASK) |	\
-	 (((speed) << COMPHY_FW_SPEED_OFFSET) & COMPHY_FW_SPEED_MASK))
+	 (((speed) << COMPHY_FW_SPEED_OFFSET) & COMPHY_FW_SPEED_MASK) |	\
+	 (((width) << COMPHY_FW_WIDTH_OFFSET) & COMPHY_FW_WIDTH_MASK))
 
 #define COMPHY_FW_PARAM(mode, port)					\
-	COMPHY_FW_PARAM_FULL(mode, port, 0, 0)
+	COMPHY_FW_PARAM_FULL(mode, port, COMPHY_FW_SPEED_MAX, 0, 0)
 
 #define COMPHY_FW_PARAM_ETH(mode, port, speed)				\
-	COMPHY_FW_PARAM_FULL(mode, port, speed, 0)
+	COMPHY_FW_PARAM_FULL(mode, port, speed, 0, 0)
+
+#define COMPHY_FW_PARAM_PCIE(mode, port, width)				\
+	COMPHY_FW_PARAM_FULL(mode, port, COMPHY_FW_SPEED_5000, 0, width)
 
 #define COMPHY_FW_MODE_SATA		0x1
 #define COMPHY_FW_MODE_SGMII		0x2 /* SGMII 1G */
 #define COMPHY_FW_MODE_HS_SGMII		0x3 /* SGMII 2.5G */
 #define COMPHY_FW_MODE_USB3H		0x4
 #define COMPHY_FW_MODE_USB3D		0x5
+#define COMPHY_FW_MODE_PCIE		0x6
 #define COMPHY_FW_MODE_RXAUI		0x7
 #define COMPHY_FW_MODE_XFI		0x8 /* SFI: 0x9 (is treated like XFI) */
 
@@ -194,6 +202,7 @@ struct mvebu_comphy_conf {
 
 static const struct mvebu_comphy_conf mvebu_comphy_cp110_modes[] = {
 	/* lane 0 */
+	GEN_CONF(0, 0, PHY_MODE_PCIE, COMPHY_FW_MODE_PCIE),
 	ETH_CONF(0, 1, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
 	ETH_CONF(0, 1, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
 	GEN_CONF(0, 1, PHY_MODE_SATA, COMPHY_FW_MODE_SATA),
@@ -201,6 +210,7 @@ static const struct mvebu_comphy_conf mvebu_comphy_cp110_modes[] = {
 	GEN_CONF(1, 0, PHY_MODE_USB_HOST_SS, COMPHY_FW_MODE_USB3H),
 	GEN_CONF(1, 0, PHY_MODE_USB_DEVICE_SS, COMPHY_FW_MODE_USB3D),
 	GEN_CONF(1, 0, PHY_MODE_SATA, COMPHY_FW_MODE_SATA),
+	GEN_CONF(1, 0, PHY_MODE_PCIE, COMPHY_FW_MODE_PCIE),
 	ETH_CONF(1, 2, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
 	ETH_CONF(1, 2, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
 	/* lane 2 */
@@ -210,7 +220,9 @@ static const struct mvebu_comphy_conf mvebu_comphy_cp110_modes[] = {
 	ETH_CONF(2, 0, PHY_INTERFACE_MODE_10GKR, 0x1, COMPHY_FW_MODE_XFI),
 	GEN_CONF(2, 0, PHY_MODE_USB_HOST_SS, COMPHY_FW_MODE_USB3H),
 	GEN_CONF(2, 0, PHY_MODE_SATA, COMPHY_FW_MODE_SATA),
+	GEN_CONF(2, 0, PHY_MODE_PCIE, COMPHY_FW_MODE_PCIE),
 	/* lane 3 */
+	GEN_CONF(3, 0, PHY_MODE_PCIE, COMPHY_FW_MODE_PCIE),
 	ETH_CONF(3, 1, PHY_INTERFACE_MODE_SGMII, 0x2, COMPHY_FW_MODE_SGMII),
 	ETH_CONF(3, 1, PHY_INTERFACE_MODE_2500BASEX, 0x2, COMPHY_FW_MODE_HS_SGMII),
 	ETH_CONF(3, 1, PHY_INTERFACE_MODE_RXAUI, -1, COMPHY_FW_MODE_RXAUI),
@@ -223,6 +235,7 @@ static const struct mvebu_comphy_conf mvebu_comphy_cp110_modes[] = {
 	ETH_CONF(4, 0, PHY_INTERFACE_MODE_RXAUI, -1, COMPHY_FW_MODE_RXAUI),
 	GEN_CONF(4, 0, PHY_MODE_USB_DEVICE_SS, COMPHY_FW_MODE_USB3D),
 	GEN_CONF(4, 1, PHY_MODE_USB_HOST_SS, COMPHY_FW_MODE_USB3H),
+	GEN_CONF(4, 1, PHY_MODE_PCIE, COMPHY_FW_MODE_PCIE),
 	ETH_CONF(4, 1, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
 	ETH_CONF(4, 1, PHY_INTERFACE_MODE_2500BASEX, -1, COMPHY_FW_MODE_HS_SGMII),
 	ETH_CONF(4, 1, PHY_INTERFACE_MODE_10GKR, -1, COMPHY_FW_MODE_XFI),
@@ -231,6 +244,7 @@ static const struct mvebu_comphy_conf mvebu_comphy_cp110_modes[] = {
 	GEN_CONF(5, 1, PHY_MODE_SATA, COMPHY_FW_MODE_SATA),
 	ETH_CONF(5, 2, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
 	ETH_CONF(5, 2, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
+	GEN_CONF(5, 2, PHY_MODE_PCIE, COMPHY_FW_MODE_PCIE),
 };
 
 struct mvebu_comphy_priv {
@@ -265,6 +279,8 @@ static int mvebu_comphy_get_mode(bool fw_mode, int lane, int port,
 				 enum phy_mode mode, int submode)
 {
 	int i, n = ARRAY_SIZE(mvebu_comphy_cp110_modes);
+	/* Ignore PCIe submode: it represents the width */
+	bool ignore_submode = (mode == PHY_MODE_PCIE);
 	const struct mvebu_comphy_conf *conf;
 
 	/* Unused PHY mux value is 0x0 */
@@ -276,7 +292,7 @@ static int mvebu_comphy_get_mode(bool fw_mode, int lane, int port,
 		if (conf->lane == lane &&
 		    conf->port == port &&
 		    conf->mode == mode &&
-		    conf->submode == submode)
+		    (conf->submode == submode || ignore_submode))
 			break;
 	}
 
@@ -678,6 +694,12 @@ static int mvebu_comphy_power_on(struct phy *phy)
 		dev_dbg(priv->dev, "set lane %d to SATA mode\n", lane->id);
 		fw_param = COMPHY_FW_PARAM(fw_mode, lane->port);
 		break;
+	case PHY_MODE_PCIE:
+		dev_dbg(priv->dev, "set lane %d to PCIe mode (x%d)\n", lane->id,
+			lane->submode);
+		fw_param = COMPHY_FW_PARAM_PCIE(fw_mode, lane->port,
+						lane->submode);
+		break;
 	default:
 		dev_err(priv->dev, "unsupported PHY mode (%d)\n", lane->mode);
 		return -ENOTSUPP;
@@ -714,6 +736,11 @@ static int mvebu_comphy_set_mode(struct phy *phy,
 
 	lane->mode = mode;
 	lane->submode = submode;
+
+	/* PCIe submode represents the width */
+	if (mode == PHY_MODE_PCIE && !lane->submode)
+		lane->submode = 1;
+
 	return 0;
 }
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
