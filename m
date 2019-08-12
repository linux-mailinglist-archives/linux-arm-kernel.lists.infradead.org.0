Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A04C89A27
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 11:45:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zgAIKE16t1viFtaOwRrIxO404btG5bBq9ZRAVAyNyg8=; b=sk43WMUAwlBWwcBgoh/Atk/NDA
	U2WCbDJveAjU7LhkCR1ZAHbHULY7TUVp/+iH85StLzHQII3jcA4aDKAzALDiEVRykEcFACdo7lMeu
	dUVgUhadWDMWdRUAleRwNVxDvA0UKSFDne5+cAOfQhsNJGc2+vXkBzXUZjgb85sDZD4APYOqu+x4F
	KDe1Wgzj+ULBMSB1FxgjJbvxSD/YWgq+mMJlkKjTLQ2KmuuqIg57NmHq81r+1aDw4c2pLfKKDinVV
	Am+JyVmKsYaNzHV5+sGkXFUj5gBz9fjjKNN/PH7pX/zQUVIBS09+NaR4nKKKQHK+ae/Zm2XwfwbZV
	AWMbw9Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx6sx-0001fj-Bb; Mon, 12 Aug 2019 09:45:03 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx6sM-0001Pe-F4
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 09:44:28 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 975B1C21DF;
 Mon, 12 Aug 2019 09:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565603065; bh=gt1b62xswbydFg/dkNLte14Bb8f+1NcyURZaFiCiVVg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=ef6wJ21G+VNbkxMRPcJSHBXKscNcCY2olzEqRpGthHrRPcwMUy5Btsw/VVRodfC3m
 fQWk+tKFdBnWbaYhQy6ZIAIA4rE3B+EV8vMxyvq5JBd7XBg7LOPc5JTs7uOO7st6Ow
 vks0CmmNFLvUiPQDoTsZ8JIEiFpo+4afUE02nhmwHUeWmxGwwLQyE4SFE1VWY74EdF
 aO7rHPXUKt8LJYWnFtqjab2J/OqMtTOmNnH/Y4U6rfhdhMXS/Es/v10T72QGj6RfcC
 LyZXoWCJtsVhaC/bkE9bKm+inMQzEcnlI0dZEFTFM3VHgaBekozUnCUmplyQ+ffoRw
 RmV/XcXBsZOmw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 44EC5A0071;
 Mon, 12 Aug 2019 09:44:23 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v2 07/12] net: stmmac: Add ethtool register dump for
 XGMAC cores
Date: Mon, 12 Aug 2019 11:44:06 +0200
Message-Id: <3d860a78ce4e98941f7e292d251d7360755fdf2e.1565602974.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565602974.git.joabreu@synopsys.com>
References: <cover.1565602974.git.joabreu@synopsys.com>
In-Reply-To: <cover.1565602974.git.joabreu@synopsys.com>
References: <cover.1565602974.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_024426_524315_C43D662E 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the ethtool interface to dump the register map in XGMAC cores.

Signed-off-by: Jose Abreu <joabreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     |  2 ++
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    | 11 +++++++++-
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c | 10 ++++++++-
 .../net/ethernet/stmicro/stmmac/stmmac_ethtool.c   | 24 ++++++++++++++++------
 4 files changed, 39 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index dbac63972faf..7fed3d2d4a95 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -244,6 +244,7 @@
 #define XGMAC_RXOVFIS			BIT(16)
 #define XGMAC_ABPSIS			BIT(1)
 #define XGMAC_TXUNFIS			BIT(0)
+#define XGMAC_MAC_REGSIZE		(XGMAC_MTL_QINT_STATUS(15) / 4)
 
 /* DMA Registers */
 #define XGMAC_DMA_MODE			0x00003000
@@ -321,6 +322,7 @@
 #define XGMAC_TBU			BIT(2)
 #define XGMAC_TPS			BIT(1)
 #define XGMAC_TI			BIT(0)
+#define XGMAC_REGSIZE			((0x0000317c + (0x80 * 15)) / 4)
 
 /* Descriptors */
 #define XGMAC_TDES2_IOC			BIT(31)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index f843e3640f50..a161285340c6 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -239,6 +239,15 @@ static void dwxgmac2_config_cbs(struct mac_device_info *hw,
 	writel(value, ioaddr + XGMAC_MTL_TCx_ETS_CONTROL(queue));
 }
 
+static void dwxgmac2_dump_regs(struct mac_device_info *hw, u32 *reg_space)
+{
+	void __iomem *ioaddr = hw->pcsr;
+	int i;
+
+	for (i = 0; i < XGMAC_MAC_REGSIZE; i++)
+		reg_space[i] = readl(ioaddr + i * 4);
+}
+
 static int dwxgmac2_host_irq_status(struct mac_device_info *hw,
 				    struct stmmac_extra_stats *x)
 {
@@ -1079,7 +1088,7 @@ const struct stmmac_ops dwxgmac210_ops = {
 	.set_mtl_tx_queue_weight = dwxgmac2_set_mtl_tx_queue_weight,
 	.map_mtl_to_dma = dwxgmac2_map_mtl_to_dma,
 	.config_cbs = dwxgmac2_config_cbs,
-	.dump_regs = NULL,
+	.dump_regs = dwxgmac2_dump_regs,
 	.host_irq_status = dwxgmac2_host_irq_status,
 	.host_mtl_irq_status = dwxgmac2_host_mtl_irq_status,
 	.flow_ctrl = dwxgmac2_flow_ctrl,
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index 0f3de4895cf7..42c13d144203 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -128,6 +128,14 @@ static void dwxgmac2_dma_axi(void __iomem *ioaddr, struct stmmac_axi *axi)
 	writel(XGMAC_RDPS, ioaddr + XGMAC_RX_EDMA_CTRL);
 }
 
+static void dwxgmac2_dma_dump_regs(void __iomem *ioaddr, u32 *reg_space)
+{
+	int i;
+
+	for (i = (XGMAC_DMA_MODE / 4); i < XGMAC_REGSIZE; i++)
+		reg_space[i] = readl(ioaddr + i * 4);
+}
+
 static void dwxgmac2_dma_rx_mode(void __iomem *ioaddr, int mode,
 				 u32 channel, int fifosz, u8 qmode)
 {
@@ -496,7 +504,7 @@ const struct stmmac_dma_ops dwxgmac210_dma_ops = {
 	.init_rx_chan = dwxgmac2_dma_init_rx_chan,
 	.init_tx_chan = dwxgmac2_dma_init_tx_chan,
 	.axi = dwxgmac2_dma_axi,
-	.dump_regs = NULL,
+	.dump_regs = dwxgmac2_dma_dump_regs,
 	.dma_rx_mode = dwxgmac2_dma_rx_mode,
 	.dma_tx_mode = dwxgmac2_dma_tx_mode,
 	.enable_dma_irq = dwxgmac2_enable_dma_irq,
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
index eb784fdb6d32..8828a5481f61 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
@@ -18,10 +18,12 @@
 
 #include "stmmac.h"
 #include "dwmac_dma.h"
+#include "dwxgmac2.h"
 
 #define REG_SPACE_SIZE	0x1060
 #define MAC100_ETHTOOL_NAME	"st_mac100"
 #define GMAC_ETHTOOL_NAME	"st_gmac"
+#define XGMAC_ETHTOOL_NAME	"st_xgmac"
 
 #define ETHTOOL_DMA_OFFSET	55
 
@@ -260,6 +262,8 @@ static void stmmac_ethtool_getdrvinfo(struct net_device *dev,
 
 	if (priv->plat->has_gmac || priv->plat->has_gmac4)
 		strlcpy(info->driver, GMAC_ETHTOOL_NAME, sizeof(info->driver));
+	else if (priv->plat->has_xgmac)
+		strlcpy(info->driver, XGMAC_ETHTOOL_NAME, sizeof(info->driver));
 	else
 		strlcpy(info->driver, MAC100_ETHTOOL_NAME,
 			sizeof(info->driver));
@@ -405,23 +409,31 @@ static int stmmac_check_if_running(struct net_device *dev)
 
 static int stmmac_ethtool_get_regs_len(struct net_device *dev)
 {
+	struct stmmac_priv *priv = netdev_priv(dev);
+
+	if (priv->plat->has_xgmac)
+		return XGMAC_REGSIZE * 4;
 	return REG_SPACE_SIZE;
 }
 
 static void stmmac_ethtool_gregs(struct net_device *dev,
 			  struct ethtool_regs *regs, void *space)
 {
-	u32 *reg_space = (u32 *) space;
-
 	struct stmmac_priv *priv = netdev_priv(dev);
+	int size = stmmac_ethtool_get_regs_len(dev);
+	u32 *reg_space = (u32 *) space;
 
-	memset(reg_space, 0x0, REG_SPACE_SIZE);
+	memset(reg_space, 0x0, size);
 
 	stmmac_dump_mac_regs(priv, priv->hw, reg_space);
 	stmmac_dump_dma_regs(priv, priv->ioaddr, reg_space);
-	/* Copy DMA registers to where ethtool expects them */
-	memcpy(&reg_space[ETHTOOL_DMA_OFFSET], &reg_space[DMA_BUS_MODE / 4],
-	       NUM_DWMAC1000_DMA_REGS * 4);
+
+	if (!priv->plat->has_xgmac) {
+		/* Copy DMA registers to where ethtool expects them */
+		memcpy(&reg_space[ETHTOOL_DMA_OFFSET],
+		       &reg_space[DMA_BUS_MODE / 4],
+		       NUM_DWMAC1000_DMA_REGS * 4);
+	}
 }
 
 static int stmmac_nway_reset(struct net_device *dev)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
