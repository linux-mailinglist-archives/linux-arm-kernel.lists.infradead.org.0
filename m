Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C156617DB35
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 09:39:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RxN+DgAi6ROYK3C+Ei64edrlFXhtQTjNGKKZOwCrb1c=; b=BHapth0M2zPQe3E0GhYIilsmRz
	EmKqJzCr/LV8sY41GXLACsxjQNaOYfIl0wGFMNH7jnqQM8qF8laxhBQY53EK+iRZz17FURLC2cksm
	lDpO8ye91HcE5h7HnrZ+kCZcXMqqlbHyDTOGrB978gyiE/ArIenb5j9IBYooHOiEY4tUpai04DyAd
	an9R//eLkDHjUVegRhHCH2ccORmJcXytIIzUHSnR95f25ag2zgiAI2xDE5d7++S/ihRELvhJmVq4M
	00NH67qBsAoo9bBmSfw6LAoULDVPlXqF+Jajpy15q53n7j1YorDI6KlKq9lPr0qIoxBrGvjCUyMAe
	/TlTDHaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDwQ-0004yK-85; Mon, 09 Mar 2020 08:39:14 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDu2-0002wq-LV
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 08:36:51 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 00487C04C3;
 Mon,  9 Mar 2020 08:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1583743004; bh=RfFOlusCqzdyy1sGpfQlEynYgwr/wJqcPpC2UxpYUl4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=ZtUI+c6jDEceCIV5Lx6/biK5DofQHTWVu3kCi+EgZpy0xEPe4Dw81v+rkewDodsOA
 cIpiX9jXbvpGQPDnibnWai1/fK0xskS8oESYbuXBNabB9H0XgFzg5HISwX6ZbPULmK
 wkhoJB398P4kK7dwYass5YCXx/L5KGUBGRaKIQIw1EWixuru+vGwFIO/nfNcko5+2D
 NffRtDrPLM+8PUseuHYAlgVjFl7yFwld7xOglOvco5kvX1jfItO8sg6gn/hfioalcB
 zMggg/mwH/JP6rK4eNN3ziXgB9ljhNYN4u179pAYmpduZBE9QOm2yFqmgcn6IAd+9W
 8a4AIXyQ/LJ5Q==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 92E41A007D;
 Mon,  9 Mar 2020 08:36:41 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 8/8] net: stmmac: Integrate it with DesignWare XPCS
Date: Mon,  9 Mar 2020 09:36:27 +0100
Message-Id: <2eea422325b16b91c9183a178bab74c45204e228.1583742616.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1583742615.git.Jose.Abreu@synopsys.com>
References: <cover.1583742615.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1583742615.git.Jose.Abreu@synopsys.com>
References: <cover.1583742615.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_013646_783681_49077381 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Andrew Lunn <andrew@lunn.ch>,
 Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds all the necessary logic so that stmmac can be used with Synopsys
DesignWare XPCS.

Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/net/ethernet/stmicro/stmmac/Kconfig       |  1 +
 drivers/net/ethernet/stmicro/stmmac/common.h      |  3 +++
 drivers/net/ethernet/stmicro/stmmac/hwif.h        | 12 ++++++++++
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 16 ++++++++++++--
 drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c | 27 +++++++++++++++++++++++
 include/linux/stmmac.h                            |  1 +
 6 files changed, 58 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/Kconfig b/drivers/net/ethernet/stmicro/stmmac/Kconfig
index 338e25a6374e..9ad927f646e8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/Kconfig
+++ b/drivers/net/ethernet/stmicro/stmmac/Kconfig
@@ -3,6 +3,7 @@ config STMMAC_ETH
 	tristate "STMicroelectronics Multi-Gigabit Ethernet driver"
 	depends on HAS_IOMEM && HAS_DMA
 	select MII
+	select MDIO_XPCS
 	select PAGE_POOL
 	select PHYLINK
 	select CRC32
diff --git a/drivers/net/ethernet/stmicro/stmmac/common.h b/drivers/net/ethernet/stmicro/stmmac/common.h
index 487099092693..9bdbf589d93f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/common.h
+++ b/drivers/net/ethernet/stmicro/stmmac/common.h
@@ -15,6 +15,7 @@
 #include <linux/netdevice.h>
 #include <linux/stmmac.h>
 #include <linux/phy.h>
+#include <linux/mdio-xpcs.h>
 #include <linux/module.h>
 #if IS_ENABLED(CONFIG_VLAN_8021Q)
 #define STMMAC_VLAN_TAG_USED
@@ -446,6 +447,8 @@ struct mac_device_info {
 	const struct stmmac_hwtimestamp *ptp;
 	const struct stmmac_tc_ops *tc;
 	const struct stmmac_mmc_ops *mmc;
+	const struct mdio_xpcs_ops *xpcs;
+	struct mdio_xpcs_args xpcs_args;
 	struct mii_regs mii;	/* MII register Addresses */
 	struct mac_link link;
 	void __iomem *pcsr;     /* vpointer to device CSRs */
diff --git a/drivers/net/ethernet/stmicro/stmmac/hwif.h b/drivers/net/ethernet/stmicro/stmmac/hwif.h
index df63b0367aff..c71dd99c8abf 100644
--- a/drivers/net/ethernet/stmicro/stmmac/hwif.h
+++ b/drivers/net/ethernet/stmicro/stmmac/hwif.h
@@ -577,6 +577,18 @@ struct stmmac_mmc_ops {
 #define stmmac_mmc_read(__priv, __args...) \
 	stmmac_do_void_callback(__priv, mmc, read, __args)
 
+/* XPCS callbacks */
+#define stmmac_xpcs_validate(__priv, __args...) \
+	stmmac_do_callback(__priv, xpcs, validate, __args)
+#define stmmac_xpcs_config(__priv, __args...) \
+	stmmac_do_callback(__priv, xpcs, config, __args)
+#define stmmac_xpcs_get_state(__priv, __args...) \
+	stmmac_do_callback(__priv, xpcs, get_state, __args)
+#define stmmac_xpcs_link_up(__priv, __args...) \
+	stmmac_do_callback(__priv, xpcs, link_up, __args)
+#define stmmac_xpcs_probe(__priv, __args...) \
+	stmmac_do_callback(__priv, xpcs, probe, __args)
+
 struct stmmac_regs_off {
 	u32 ptp_off;
 	u32 mmc_off;
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 3a190cf250e6..f26699d9a050 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -863,18 +863,26 @@ static void stmmac_validate(struct phylink_config *config,
 
 	linkmode_and(state->advertising, state->advertising, mac_supported);
 	linkmode_andnot(state->advertising, state->advertising, mask);
+
+	/* If PCS is supported, check which modes it supports. */
+	stmmac_xpcs_validate(priv, &priv->hw->xpcs_args, supported, state);
 }
 
 static void stmmac_mac_pcs_get_state(struct phylink_config *config,
 				     struct phylink_link_state *state)
 {
+	struct stmmac_priv *priv = netdev_priv(to_net_dev(config->dev));
+
 	state->link = 0;
+	stmmac_xpcs_get_state(priv, &priv->hw->xpcs_args, state);
 }
 
 static void stmmac_mac_config(struct phylink_config *config, unsigned int mode,
 			      const struct phylink_link_state *state)
 {
-	/* Nothing for now. */
+	struct stmmac_priv *priv = netdev_priv(to_net_dev(config->dev));
+
+	stmmac_xpcs_config(priv, &priv->hw->xpcs_args, state);
 }
 
 static void stmmac_mac_an_restart(struct phylink_config *config)
@@ -902,6 +910,8 @@ static void stmmac_mac_link_up(struct phylink_config *config,
 	struct stmmac_priv *priv = netdev_priv(to_net_dev(config->dev));
 	u32 ctrl;
 
+	stmmac_xpcs_link_up(priv, &priv->hw->xpcs_args, speed, interface);
+
 	ctrl = readl(priv->ioaddr + MAC_CTRL_REG);
 	ctrl &= ~priv->hw->link.speed_mask;
 
@@ -1042,6 +1052,7 @@ static int stmmac_phy_setup(struct stmmac_priv *priv)
 
 	priv->phylink_config.dev = &priv->dev->dev;
 	priv->phylink_config.type = PHYLINK_NETDEV;
+	priv->phylink_config.pcs_poll = true;
 
 	if (!fwnode)
 		fwnode = dev_fwnode(priv->device);
@@ -2689,7 +2700,8 @@ static int stmmac_open(struct net_device *dev)
 	int ret;
 
 	if (priv->hw->pcs != STMMAC_PCS_TBI &&
-	    priv->hw->pcs != STMMAC_PCS_RTBI) {
+	    priv->hw->pcs != STMMAC_PCS_RTBI &&
+	    priv->hw->xpcs == NULL) {
 		ret = stmmac_init_phy(dev);
 		if (ret) {
 			netdev_err(priv->dev,
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
index cfe5d8b73142..b2a707e2ef43 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
@@ -382,6 +382,14 @@ int stmmac_mdio_register(struct net_device *ndev)
 		max_addr = PHY_MAX_ADDR;
 	}
 
+	if (mdio_bus_data->has_xpcs) {
+		priv->hw->xpcs = mdio_xpcs_get_ops();
+		if (!priv->hw->xpcs) {
+			err = -ENODEV;
+			goto bus_register_fail;
+		}
+	}
+
 	if (mdio_bus_data->needs_reset)
 		new_bus->reset = &stmmac_mdio_reset;
 
@@ -433,6 +441,25 @@ int stmmac_mdio_register(struct net_device *ndev)
 		found = 1;
 	}
 
+	/* Try to probe the XPCS by scanning all addresses. */
+	if (priv->hw->xpcs) {
+		struct mdio_xpcs_args *xpcs = &priv->hw->xpcs_args;
+		int ret, mode = priv->plat->phy_interface;
+		max_addr = PHY_MAX_ADDR;
+
+		xpcs->bus = new_bus;
+
+		for (addr = 0; addr < max_addr; addr++) {
+			xpcs->addr = addr;
+
+			ret = stmmac_xpcs_probe(priv, xpcs, mode);
+			if (!ret) {
+				found = 1;
+				break;
+			}
+		}
+	}
+
 	if (!found && !mdio_node) {
 		dev_warn(dev, "No PHY found\n");
 		mdiobus_unregister(new_bus);
diff --git a/include/linux/stmmac.h b/include/linux/stmmac.h
index 19190c609282..fbafb353e9be 100644
--- a/include/linux/stmmac.h
+++ b/include/linux/stmmac.h
@@ -80,6 +80,7 @@
 
 struct stmmac_mdio_bus_data {
 	unsigned int phy_mask;
+	unsigned int has_xpcs;
 	int *irqs;
 	int probed_phy_irq;
 	bool needs_reset;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
