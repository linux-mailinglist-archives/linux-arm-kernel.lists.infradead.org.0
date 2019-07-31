Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 664727C125
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:23:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AaKK01halCseCjAhI8AESf0qVQ/DD2kYMalf84OG4do=; b=uPCnUP1R5ph4Dy
	4Yp0uM00zJrTmUGeaCmCB0Ovik+1NJF8fuoiuuWBvvocq4FAm8Ju/Eh5fdcllFS7lyyjHdgwhAqs6
	PWJ4VdcqQbHpRwRZT5H13Tto5qfhXwszbsuNXJNH121cOFs/DV0jMQq8FNniIGiEFYAvz0e4qAd7M
	b8FB6wBC2QYz4iFpXhHP96M8pA6/PPPC5aBpdVPBEtvOTTxlU12vF2VPcmfP84J5O6bMKwzbgH/ai
	ok6vbYIzyZ+WW12r3PcZpguCwP+NbfGFiy+OxaF6Pe0c75SOWG13TK28AJBNEDHpoW5qrg7iXYlk6
	vTWgYrMTVuvy+0esNA5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsndF-0003wI-5p; Wed, 31 Jul 2019 12:23:01 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnc2-0002aO-3q
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:21:50 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 8C91DFF814;
 Wed, 31 Jul 2019 12:21:33 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH v3 03/19] phy: mvebu-cp110-comphy: Add SMC call support
Date: Wed, 31 Jul 2019 14:21:10 +0200
Message-Id: <20190731122126.3049-4-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731122126.3049-1-miquel.raynal@bootlin.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_052146_882977_6A7BB748 
X-CRM114-Status: GOOD (  20.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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

Keep the exact same list of supported configurations but first try to
use the firmware's implementation. If it fails, try the legacy method:
Linux implementation.

Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
[miquel.raynal@bootlin.com: adapt the content to the mainline driver]
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Tested-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
Tested-by: Grzegorz Jaszczyk <jaz@semihalf.com>
---
 drivers/phy/marvell/phy-mvebu-cp110-comphy.c | 226 ++++++++++++++++---
 1 file changed, 190 insertions(+), 36 deletions(-)

diff --git a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
index 6922dfe6a385..a07449ec98c3 100644
--- a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
@@ -5,6 +5,7 @@
  * Antoine Tenart <antoine.tenart@free-electrons.com>
  */
 
+#include <linux/arm-smccc.h>
 #include <linux/clk.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
@@ -116,45 +117,89 @@
 #define MVEBU_COMPHY_LANES	6
 #define MVEBU_COMPHY_PORTS	3
 
+#define COMPHY_SIP_POWER_ON	0x82000001
+#define COMPHY_SIP_POWER_OFF	0x82000002
+#define COMPHY_FW_NOT_SUPPORTED	(-1)
+
+/*
+ * A lane is described by the following bitfields:
+ * [ 1- 0]: COMPHY polarity invertion
+ * [ 2- 7]: COMPHY speed
+ * [ 5-11]: COMPHY port index
+ * [12-16]: COMPHY mode
+ * [17]: Clock source
+ */
+#define COMPHY_FW_POL_OFFSET	0
+#define COMPHY_FW_POL_MASK	GENMASK(1, 0)
+#define COMPHY_FW_SPEED_OFFSET	2
+#define COMPHY_FW_SPEED_MASK	GENMASK(7, 2)
+#define COMPHY_FW_SPEED_MAX	COMPHY_FW_SPEED_MASK
+#define COMPHY_FW_SPEED_1250	0
+#define COMPHY_FW_SPEED_3125	2
+#define COMPHY_FW_SPEED_5000	3
+#define COMPHY_FW_SPEED_103125	6
+#define COMPHY_FW_PORT_OFFSET	8
+#define COMPHY_FW_PORT_MASK	GENMASK(11, 8)
+#define COMPHY_FW_MODE_OFFSET	12
+#define COMPHY_FW_MODE_MASK	GENMASK(16, 12)
+
+#define COMPHY_FW_PARAM_FULL(mode, port, speed, pol)			\
+	((((pol) << COMPHY_FW_POL_OFFSET) & COMPHY_FW_POL_MASK) |	\
+	 (((mode) << COMPHY_FW_MODE_OFFSET) & COMPHY_FW_MODE_MASK) |	\
+	 (((port) << COMPHY_FW_PORT_OFFSET) & COMPHY_FW_PORT_MASK) |	\
+	 (((speed) << COMPHY_FW_SPEED_OFFSET) & COMPHY_FW_SPEED_MASK))
+
+#define COMPHY_FW_PARAM(mode, port)					\
+	COMPHY_FW_PARAM_FULL(mode, port, 0, 0)
+
+#define COMPHY_FW_PARAM_ETH(mode, port, speed)				\
+	COMPHY_FW_PARAM_FULL(mode, port, speed, 0)
+
+#define COMPHY_FW_MODE_SGMII		0x2 /* SGMII 1G */
+#define COMPHY_FW_MODE_HS_SGMII		0x3 /* SGMII 2.5G */
+#define COMPHY_FW_MODE_XFI		0x8 /* SFI: 0x9 (is treated like XFI) */
+
 struct mvebu_comphy_conf {
 	enum phy_mode mode;
 	int submode;
 	unsigned lane;
 	unsigned port;
 	u32 mux;
+	u32 fw_mode;
 };
 
-#define MVEBU_COMPHY_CONF(_lane, _port, _submode, _mux)	\
+#define MVEBU_COMPHY_CONF(_lane, _port, _submode, _mux, _fw)	\
 	{						\
 		.lane = _lane,				\
 		.port = _port,				\
 		.mode = PHY_MODE_ETHERNET,		\
 		.submode = _submode,			\
 		.mux = _mux,				\
+		.fw_mode = _fw,				\
 	}
 
 static const struct mvebu_comphy_conf mvebu_comphy_cp110_modes[] = {
 	/* lane 0 */
-	MVEBU_COMPHY_CONF(0, 1, PHY_INTERFACE_MODE_SGMII, 0x1),
-	MVEBU_COMPHY_CONF(0, 1, PHY_INTERFACE_MODE_2500BASEX, 0x1),
+	MVEBU_COMPHY_CONF(0, 1, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
+	MVEBU_COMPHY_CONF(0, 1, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
 	/* lane 1 */
-	MVEBU_COMPHY_CONF(1, 2, PHY_INTERFACE_MODE_SGMII, 0x1),
-	MVEBU_COMPHY_CONF(1, 2, PHY_INTERFACE_MODE_2500BASEX, 0x1),
+	MVEBU_COMPHY_CONF(1, 2, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
+	MVEBU_COMPHY_CONF(1, 2, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
 	/* lane 2 */
-	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_SGMII, 0x1),
-	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_2500BASEX, 0x1),
-	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_10GKR, 0x1),
+	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
+	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
+	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_10GKR, 0x1, COMPHY_FW_MODE_XFI),
 	/* lane 3 */
-	MVEBU_COMPHY_CONF(3, 1, PHY_INTERFACE_MODE_SGMII, 0x2),
-	MVEBU_COMPHY_CONF(3, 1, PHY_INTERFACE_MODE_2500BASEX, 0x2),
+	MVEBU_COMPHY_CONF(3, 1, PHY_INTERFACE_MODE_SGMII, 0x2, COMPHY_FW_MODE_SGMII),
+	MVEBU_COMPHY_CONF(3, 1, PHY_INTERFACE_MODE_2500BASEX, 0x2, COMPHY_FW_MODE_HS_SGMII),
 	/* lane 4 */
-	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_SGMII, 0x2),
-	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_2500BASEX, 0x2),
-	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_10GKR, 0x2),
-	MVEBU_COMPHY_CONF(4, 1, PHY_INTERFACE_MODE_SGMII, 0x1),
+	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_SGMII, 0x2, COMPHY_FW_MODE_SGMII),
+	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_2500BASEX, 0x2, COMPHY_FW_MODE_HS_SGMII),
+	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_10GKR, 0x2, COMPHY_FW_MODE_XFI),
+	MVEBU_COMPHY_CONF(4, 1, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
 	/* lane 5 */
-	MVEBU_COMPHY_CONF(5, 2, PHY_INTERFACE_MODE_SGMII, 0x1),
-	MVEBU_COMPHY_CONF(5, 2, PHY_INTERFACE_MODE_2500BASEX, 0x1),
+	MVEBU_COMPHY_CONF(5, 2, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
+	MVEBU_COMPHY_CONF(5, 2, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_HS_SGMII),
 };
 
 struct mvebu_comphy_priv {
@@ -164,6 +209,7 @@ struct mvebu_comphy_priv {
 	struct clk *mg_domain_clk;
 	struct clk *mg_core_clk;
 	struct clk *axi_clk;
+	unsigned long cp_phys;
 };
 
 struct mvebu_comphy_lane {
@@ -174,8 +220,18 @@ struct mvebu_comphy_lane {
 	int port;
 };
 
-static int mvebu_comphy_get_mux(int lane, int port,
-				enum phy_mode mode, int submode)
+static int mvebu_comphy_smc(unsigned long function, unsigned long phys,
+			    unsigned long lane, unsigned long mode)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(function, phys, lane, mode, 0, 0, 0, 0, &res);
+
+	return res.a0;
+}
+
+static int mvebu_comphy_get_mode(bool fw_mode, int lane, int port,
+				 enum phy_mode mode, int submode)
 {
 	int i, n = ARRAY_SIZE(mvebu_comphy_cp110_modes);
 
@@ -194,7 +250,22 @@ static int mvebu_comphy_get_mux(int lane, int port,
 	if (i == n)
 		return -EINVAL;
 
-	return mvebu_comphy_cp110_modes[i].mux;
+	if (fw_mode)
+		return mvebu_comphy_cp110_modes[i].fw_mode;
+	else
+		return mvebu_comphy_cp110_modes[i].mux;
+}
+
+static inline int mvebu_comphy_get_mux(int lane, int port,
+				       enum phy_mode mode, int submode)
+{
+	return mvebu_comphy_get_mode(false, lane, port, mode, submode);
+}
+
+static inline int mvebu_comphy_get_fw_mode(int lane, int port,
+					   enum phy_mode mode, int submode)
+{
+	return mvebu_comphy_get_mode(true, lane, port, mode, submode);
 }
 
 static void mvebu_comphy_ethernet_init_reset(struct mvebu_comphy_lane *lane)
@@ -480,7 +551,7 @@ static int mvebu_comphy_set_mode_10gkr(struct phy *phy)
 	return mvebu_comphy_init_plls(lane);
 }
 
-static int mvebu_comphy_power_on(struct phy *phy)
+static int mvebu_comphy_power_on_legacy(struct phy *phy)
 {
 	struct mvebu_comphy_lane *lane = phy_get_drvdata(phy);
 	struct mvebu_comphy_priv *priv = lane->priv;
@@ -521,6 +592,68 @@ static int mvebu_comphy_power_on(struct phy *phy)
 	return ret;
 }
 
+static int mvebu_comphy_power_on(struct phy *phy)
+{
+	struct mvebu_comphy_lane *lane = phy_get_drvdata(phy);
+	struct mvebu_comphy_priv *priv = lane->priv;
+	int fw_mode, fw_speed;
+	u32 fw_param = 0;
+	int ret;
+
+	fw_mode = mvebu_comphy_get_fw_mode(lane->id, lane->port,
+					   lane->mode, lane->submode);
+	if (fw_mode < 0)
+		goto try_legacy;
+
+	/* Try SMC flow first */
+	switch (lane->mode) {
+	case PHY_MODE_ETHERNET:
+		switch (lane->submode) {
+		case PHY_INTERFACE_MODE_SGMII:
+			dev_dbg(priv->dev, "set lane %d to 1000BASE-X mode\n",
+				lane->id);
+			fw_speed = COMPHY_FW_SPEED_1250;
+			break;
+		case PHY_INTERFACE_MODE_2500BASEX:
+			dev_dbg(priv->dev, "set lane %d to 2500BASE-X mode\n",
+				lane->id);
+			fw_speed = COMPHY_FW_SPEED_3125;
+			break;
+		case PHY_INTERFACE_MODE_10GKR:
+			dev_dbg(priv->dev, "set lane %d to 10G-KR mode\n",
+				lane->id);
+			fw_speed = COMPHY_FW_SPEED_103125;
+			break;
+		default:
+			dev_err(priv->dev, "unsupported Ethernet mode (%d)\n",
+				lane->submode);
+			return -ENOTSUPP;
+		}
+		fw_param = COMPHY_FW_PARAM_ETH(fw_mode, lane->port, fw_speed);
+		break;
+	default:
+		dev_err(priv->dev, "unsupported PHY mode (%d)\n", lane->mode);
+		return -ENOTSUPP;
+	}
+
+	ret = mvebu_comphy_smc(COMPHY_SIP_POWER_ON, priv->cp_phys, lane->id,
+			       fw_param);
+	if (!ret)
+		return ret;
+
+	if (ret == COMPHY_FW_NOT_SUPPORTED)
+		dev_err(priv->dev,
+			"unsupported SMC call, try updating your firmware\n");
+
+	dev_warn(priv->dev,
+		 "Firmware could not configure PHY %d with mode %d (ret: %d), trying legacy method\n",
+		 lane->id, lane->mode, ret);
+
+try_legacy:
+	/* Fallback to Linux's implementation */
+	return mvebu_comphy_power_on_legacy(phy);
+}
+
 static int mvebu_comphy_set_mode(struct phy *phy,
 				 enum phy_mode mode, int submode)
 {
@@ -532,7 +665,7 @@ static int mvebu_comphy_set_mode(struct phy *phy,
 	if (submode == PHY_INTERFACE_MODE_1000BASEX)
 		submode = PHY_INTERFACE_MODE_SGMII;
 
-	if (mvebu_comphy_get_mux(lane->id, lane->port, mode, submode) < 0)
+	if (mvebu_comphy_get_fw_mode(lane->id, lane->port, mode, submode) < 0)
 		return -EINVAL;
 
 	lane->mode = mode;
@@ -540,27 +673,42 @@ static int mvebu_comphy_set_mode(struct phy *phy,
 	return 0;
 }
 
+static int mvebu_comphy_power_off_legacy(struct phy *phy)
+{
+	struct mvebu_comphy_lane *lane = phy_get_drvdata(phy);
+	struct mvebu_comphy_priv *priv = lane->priv;
+	u32 val;
+
+	val = readl(priv->base + MVEBU_COMPHY_SERDES_CFG1(lane->id));
+	val &= ~(MVEBU_COMPHY_SERDES_CFG1_RESET |
+		 MVEBU_COMPHY_SERDES_CFG1_CORE_RESET |
+		 MVEBU_COMPHY_SERDES_CFG1_RF_RESET);
+	writel(val, priv->base + MVEBU_COMPHY_SERDES_CFG1(lane->id));
+
+	regmap_read(priv->regmap, MVEBU_COMPHY_SELECTOR, &val);
+	val &= ~(0xf << MVEBU_COMPHY_SELECTOR_PHY(lane->id));
+	regmap_write(priv->regmap, MVEBU_COMPHY_SELECTOR, val);
+
+	regmap_read(priv->regmap, MVEBU_COMPHY_PIPE_SELECTOR, &val);
+	val &= ~(0xf << MVEBU_COMPHY_PIPE_SELECTOR_PIPE(lane->id));
+	regmap_write(priv->regmap, MVEBU_COMPHY_PIPE_SELECTOR, val);
+
+	return 0;
+}
+
 static int mvebu_comphy_power_off(struct phy *phy)
 {
 	struct mvebu_comphy_lane *lane = phy_get_drvdata(phy);
 	struct mvebu_comphy_priv *priv = lane->priv;
-	u32 val;
+	int ret;
 
-	val = readl(priv->base + MVEBU_COMPHY_SERDES_CFG1(lane->id));
-	val &= ~(MVEBU_COMPHY_SERDES_CFG1_RESET |
-		 MVEBU_COMPHY_SERDES_CFG1_CORE_RESET |
-		 MVEBU_COMPHY_SERDES_CFG1_RF_RESET);
-	writel(val, priv->base + MVEBU_COMPHY_SERDES_CFG1(lane->id));
+	ret = mvebu_comphy_smc(COMPHY_SIP_POWER_OFF, priv->cp_phys,
+			       lane->id, 0);
+	if (!ret)
+		return ret;
 
-	regmap_read(priv->regmap, MVEBU_COMPHY_SELECTOR, &val);
-	val &= ~(0xf << MVEBU_COMPHY_SELECTOR_PHY(lane->id));
-	regmap_write(priv->regmap, MVEBU_COMPHY_SELECTOR, val);
-
-	regmap_read(priv->regmap, MVEBU_COMPHY_PIPE_SELECTOR, &val);
-	val &= ~(0xf << MVEBU_COMPHY_PIPE_SELECTOR_PIPE(lane->id));
-	regmap_write(priv->regmap, MVEBU_COMPHY_PIPE_SELECTOR, val);
-
-	return 0;
+	/* Fallback to Linux's implementation */
+	return mvebu_comphy_power_off_legacy(phy);
 }
 
 static const struct phy_ops mvebu_comphy_ops = {
@@ -682,6 +830,12 @@ static int mvebu_comphy_probe(struct platform_device *pdev)
 		dev_warn(&pdev->dev, "cannot initialize clocks\n");
 	}
 
+	/*
+	 * Hack to retrieve a physical offset relative to this CP that will be
+	 * given to the firmware
+	 */
+	priv->cp_phys = res->start;
+
 	for_each_available_child_of_node(pdev->dev.of_node, child) {
 		struct mvebu_comphy_lane *lane;
 		struct phy *phy;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
