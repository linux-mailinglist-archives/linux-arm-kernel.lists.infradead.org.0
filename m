Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 354A78238C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 19:04:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ufnHlqjhpXgNMXXfaH2eYARwWfg5JxDi6aeMWur4tQU=; b=HbpzuGNNfeGPTcHsK4Ml3rb7UC
	KtoXLi0UXcvekGOjcqD0BOQV6bAjNUm0yP52c7ph8RwefpV7DrdiUQJbGajVDx1N0fV6VU77B/ZLF
	stxmziNLYVEYM1FyWEXmSuwsq/zaNDUkMyKm6awlVCwY0giIRn2tPAQ1v63ViA935I47dVXvPDqvj
	+TFFuIIu4TkTk6ammK/8/ZFeB8yWT170ChpWtcC1oVGrLNYdldUxFFZCtR6u1vfgm0xCUa/VdbeDC
	JqAyStoFQig052jCCWnacOEH44OIgx2znCk/VZ+I5OzbSo+8IU5+pRM44Um6A8NcgK2qLVaSXkn0N
	Jt89BZFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hugP6-00070U-RB; Mon, 05 Aug 2019 17:04:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hugMR-0004bK-Cy
 for linux-arm-kernel@bombadil.infradead.org; Mon, 05 Aug 2019 17:01:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Txv/EdF/SefSxwzuWWSKrd7Vb58lh2HdkNSWEJ4o2Yg=; b=ssi3fGC+mv79nDzbZdjzOalLs
 CuFvojMu1d7A/MX0shGvco3aVl+b9zOJGUaP3A4zT4vnJ3ju7xu8V4YYPeJVFhbgwiUYau+4vD4Jr
 ug88Tlfo21RXgOxfk4uj+Mg5OTCdOcpHbX7rh/jk6si3n5a0TuvtVh0T4uoXQwM1h6WrAvz8N+rEF
 EQSXMY6v4PcXZPDlplDc6oTl/49eqkyBJJc8vYgF77Q1j9sqQqkJsg4pi5l4pmGWF17g2KDL0DjV3
 ZwrZ2+YWxVVkMRBlRKWFawe9Tt8gTZQ3xnnZvVgzKgEX0nkoWlPAfQDfwHD+GC5vsqEy5iwJhvImh
 Tv2kUP5UA==;
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hug7J-0005Mv-EB
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:45:52 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 53780C01C8;
 Mon,  5 Aug 2019 16:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565023529; bh=Y/s2BSZk4CrWfk/+ME5TFs5DYe3vgfyKypcXLj4S40E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=DrT+w8ENucIGpUx/MA/aSUjeoUbXmeUQHuDZAgoRu7bOavQfbX4ZQdtpsWaAj1h3q
 l7vu8C1UWiV1aCgNoICsu1YVPv7mhhMbv0rg5oknhYignDUelUSYFxftJwckYZcGJR
 qvM0D6IZwGJXy2dlLh6rwtHaKuxoAGc3DQTIXNaBRY9BOc1+sgIfci56ZnfzscdB0w
 61lyq1Ir+pj2FHDw4BqEtXkHzu7zTwHjyxE8YXxYfxy4DBlT3AnUyh18jZi3RIEUkN
 6IVd8EcASxcc28NMvk9CiqJBNF4Ub+fJTJA4W6wLNqZVms44GSYT8T8l25+47/9HpR
 3S4L2B4a42DYw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 127BCA0096;
 Mon,  5 Aug 2019 16:45:28 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 19/26] net: stmmac: Add ethtool register dump for
 XGMAC cores
Date: Mon,  5 Aug 2019 18:44:46 +0200
Message-Id: <9cb3ed4734cb314e642afa86427beb920005ec84.1565022597.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_174549_982999_FCBEC859 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
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
index 473d66cbfc75..11fa3b601033 100644
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
index 3708cdb16ff7..2093c996a090 100644
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
@@ -1086,7 +1095,7 @@ const struct stmmac_ops dwxgmac210_ops = {
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
index 2423160ab582..0ea3844ae329 100644
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
 
@@ -259,6 +261,8 @@ static void stmmac_ethtool_getdrvinfo(struct net_device *dev,
 
 	if (priv->plat->has_gmac || priv->plat->has_gmac4)
 		strlcpy(info->driver, GMAC_ETHTOOL_NAME, sizeof(info->driver));
+	else if (priv->plat->has_xgmac)
+		strlcpy(info->driver, XGMAC_ETHTOOL_NAME, sizeof(info->driver));
 	else
 		strlcpy(info->driver, MAC100_ETHTOOL_NAME,
 			sizeof(info->driver));
@@ -404,23 +408,31 @@ static int stmmac_check_if_running(struct net_device *dev)
 
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
