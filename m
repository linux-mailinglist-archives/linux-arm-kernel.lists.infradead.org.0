Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B285822F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 18:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O1XmewQ68Dew9R/U9tSgRVXefIA856JRtA+lmnXLGNU=; b=Vv3O13r/IGFT9oa3MgkIgyszmo
	0DavA3X+HXeIeC5GlslRgPjLOBEC1eD09GsfMI+5SHFdvq71n6/7Ptot4+CgOe4rIy0cKLL/jSmWF
	rtJv9TGKHWeBiUNzgwqzS32rvfU3qMG4KkuSSHshFwVRjS7ynvELDgUnYZMlgr4y6dyTewjKSZn/5
	pv2BXZp6u4QgxWx26fMNzdEdqyUyY5uxkEbnx9flayuLvEn6mTKeVOqfqVCtWpaHWoXFGhJkiAIiS
	lJj0I7q1T8CeuyKsyHjsDibmR9fT9kMsUqoCZSY19qmSBUeL90c8fWZanxE95v8Pp0wJ6msEnuFXv
	PPCZvy+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hug9G-000630-EC; Mon, 05 Aug 2019 16:47:50 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hug70-0004D7-SF
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:45:36 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 616E5C020B;
 Mon,  5 Aug 2019 16:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565023529; bh=ZScKZj7qhntAYFMoXsRRZOHL848j6J8v8glAt9eiNxw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=OjW+mx5HSMxXS/witd30FcBMi2YACpFg5YuiZQVuK50tCjIvPMJVgu2BujEevbMn+
 y1d6KEvxv2NcOX7SSVas0JAxdxhcvcBSH9ykLw/LON4qsafQGDwYgMszKiz6q58TDi
 NA4AXXqhWhxuGU7WrDrAgBGQY0B/1G66t/WvDSe2VNOuZ/ZDk36r+0tCT7OO0FgC1B
 NydAwwmNn/7oVzE8sK4vud/AFiOQYcX8szaaVh8vJxWKDrucTa7d6xRAbyNxF6lpCD
 ZC/ZcNodLSbFLUHL8nFdqOXwtuos0JOIx6dNuM9s1QpiUnOYooO23CX+xYoeprjUDg
 MBsTFEIUoG4/A==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 01234A0065;
 Mon,  5 Aug 2019 16:45:27 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 02/26] net: stmmac: xgmac: Implement MMC counters
Date: Mon,  5 Aug 2019 18:44:29 +0200
Message-Id: <eb143f2abc5c7a1a22e13b14d7572821864f08ec.1565022597.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_094530_942150_82026C12 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Implement the MMC counters feature in XGMAC core.

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
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     |   1 +
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |   1 +
 drivers/net/ethernet/stmicro/stmmac/hwif.c         |   4 +-
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |   1 +
 drivers/net/ethernet/stmicro/stmmac/mmc.h          |   9 +
 drivers/net/ethernet/stmicro/stmmac/mmc_core.c     | 192 +++++++++++++++++++++
 .../net/ethernet/stmicro/stmmac/stmmac_ethtool.c   |   6 +
 7 files changed, 212 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index 3174b701aa90..86a42bc39d21 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -84,6 +84,7 @@
 #define XGMAC_HWFEAT_AVSEL		BIT(11)
 #define XGMAC_HWFEAT_RAVSEL		BIT(10)
 #define XGMAC_HWFEAT_ARPOFFSEL		BIT(9)
+#define XGMAC_HWFEAT_MMCSEL		BIT(8)
 #define XGMAC_HWFEAT_MGKSEL		BIT(7)
 #define XGMAC_HWFEAT_RWKSEL		BIT(6)
 #define XGMAC_HWFEAT_GMIISEL		BIT(1)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index a4f236e3593e..0f1c772e892a 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -356,6 +356,7 @@ static void dwxgmac2_get_hw_feature(void __iomem *ioaddr,
 	dma_cap->atime_stamp = (hw_cap & XGMAC_HWFEAT_TSSEL) >> 12;
 	dma_cap->av = (hw_cap & XGMAC_HWFEAT_AVSEL) >> 11;
 	dma_cap->av &= (hw_cap & XGMAC_HWFEAT_RAVSEL) >> 10;
+	dma_cap->rmon = (hw_cap & XGMAC_HWFEAT_MMCSEL) >> 8;
 	dma_cap->pmt_magic_frame = (hw_cap & XGMAC_HWFEAT_MGKSEL) >> 7;
 	dma_cap->pmt_remote_wake_up = (hw_cap & XGMAC_HWFEAT_RWKSEL) >> 6;
 	dma_cap->mbps_1000 = (hw_cap & XGMAC_HWFEAT_GMIISEL) >> 1;
diff --git a/drivers/net/ethernet/stmicro/stmmac/hwif.c b/drivers/net/ethernet/stmicro/stmmac/hwif.c
index 6c61b753b55e..3af2e5015245 100644
--- a/drivers/net/ethernet/stmicro/stmmac/hwif.c
+++ b/drivers/net/ethernet/stmicro/stmmac/hwif.c
@@ -201,7 +201,7 @@ static const struct stmmac_hwif_entry {
 		.min_id = DWXGMAC_CORE_2_10,
 		.regs = {
 			.ptp_off = PTP_XGMAC_OFFSET,
-			.mmc_off = 0,
+			.mmc_off = MMC_XGMAC_OFFSET,
 		},
 		.desc = &dwxgmac210_desc_ops,
 		.dma = &dwxgmac210_dma_ops,
@@ -209,7 +209,7 @@ static const struct stmmac_hwif_entry {
 		.hwtimestamp = &stmmac_ptp,
 		.mode = NULL,
 		.tc = &dwmac510_tc_ops,
-		.mmc = NULL,
+		.mmc = &dwxgmac_mmc_ops,
 		.setup = dwxgmac2_setup,
 		.quirks = NULL,
 	},
diff --git a/drivers/net/ethernet/stmicro/stmmac/hwif.h b/drivers/net/ethernet/stmicro/stmmac/hwif.h
index 278c0dbec9d9..00539a09d1db 100644
--- a/drivers/net/ethernet/stmicro/stmmac/hwif.h
+++ b/drivers/net/ethernet/stmicro/stmmac/hwif.h
@@ -503,6 +503,7 @@ extern const struct stmmac_ops dwxgmac210_ops;
 extern const struct stmmac_dma_ops dwxgmac210_dma_ops;
 extern const struct stmmac_desc_ops dwxgmac210_desc_ops;
 extern const struct stmmac_mmc_ops dwmac_mmc_ops;
+extern const struct stmmac_mmc_ops dwxgmac_mmc_ops;
 
 #define GMAC_VERSION		0x00000020	/* GMAC CORE Version */
 #define GMAC4_VERSION		0x00000110	/* GMAC4+ CORE Version */
diff --git a/drivers/net/ethernet/stmicro/stmmac/mmc.h b/drivers/net/ethernet/stmicro/stmmac/mmc.h
index 3587ceb9faf5..a0c05925883e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/mmc.h
+++ b/drivers/net/ethernet/stmicro/stmmac/mmc.h
@@ -24,6 +24,7 @@
 
 #define MMC_GMAC4_OFFSET		0x700
 #define MMC_GMAC3_X_OFFSET		0x100
+#define MMC_XGMAC_OFFSET		0x800
 
 struct stmmac_counters {
 	unsigned int mmc_tx_octetcount_gb;
@@ -116,6 +117,14 @@ struct stmmac_counters {
 	unsigned int mmc_rx_tcp_err_octets;
 	unsigned int mmc_rx_icmp_gd_octets;
 	unsigned int mmc_rx_icmp_err_octets;
+
+	/* FPE */
+	unsigned int mmc_tx_fpe_fragment_cntr;
+	unsigned int mmc_tx_hold_req_cntr;
+	unsigned int mmc_rx_packet_assembly_err_cntr;
+	unsigned int mmc_rx_packet_smd_err_cntr;
+	unsigned int mmc_rx_packet_assembly_ok_cntr;
+	unsigned int mmc_rx_fpe_fragment_cntr;
 };
 
 #endif /* __MMC_H__ */
diff --git a/drivers/net/ethernet/stmicro/stmmac/mmc_core.c b/drivers/net/ethernet/stmicro/stmmac/mmc_core.c
index a471db6d7b11..a223584f5f9a 100644
--- a/drivers/net/ethernet/stmicro/stmmac/mmc_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/mmc_core.c
@@ -119,6 +119,64 @@
 #define MMC_RX_ICMP_GD_OCTETS		0x180
 #define MMC_RX_ICMP_ERR_OCTETS		0x184
 
+/* XGMAC MMC Registers */
+#define MMC_XGMAC_TX_OCTET_GB		0x14
+#define MMC_XGMAC_TX_PKT_GB		0x1c
+#define MMC_XGMAC_TX_BROAD_PKT_G	0x24
+#define MMC_XGMAC_TX_MULTI_PKT_G	0x2c
+#define MMC_XGMAC_TX_64OCT_GB		0x34
+#define MMC_XGMAC_TX_65OCT_GB		0x3c
+#define MMC_XGMAC_TX_128OCT_GB		0x44
+#define MMC_XGMAC_TX_256OCT_GB		0x4c
+#define MMC_XGMAC_TX_512OCT_GB		0x54
+#define MMC_XGMAC_TX_1024OCT_GB		0x5c
+#define MMC_XGMAC_TX_UNI_PKT_GB		0x64
+#define MMC_XGMAC_TX_MULTI_PKT_GB	0x6c
+#define MMC_XGMAC_TX_BROAD_PKT_GB	0x74
+#define MMC_XGMAC_TX_UNDER		0x7c
+#define MMC_XGMAC_TX_OCTET_G		0x84
+#define MMC_XGMAC_TX_PKT_G		0x8c
+#define MMC_XGMAC_TX_PAUSE		0x94
+#define MMC_XGMAC_TX_VLAN_PKT_G		0x9c
+#define MMC_XGMAC_TX_LPI_USEC		0xa4
+#define MMC_XGMAC_TX_LPI_TRAN		0xa8
+
+#define MMC_XGMAC_RX_PKT_GB		0x100
+#define MMC_XGMAC_RX_OCTET_GB		0x108
+#define MMC_XGMAC_RX_OCTET_G		0x110
+#define MMC_XGMAC_RX_BROAD_PKT_G	0x118
+#define MMC_XGMAC_RX_MULTI_PKT_G	0x120
+#define MMC_XGMAC_RX_CRC_ERR		0x128
+#define MMC_XGMAC_RX_RUNT_ERR		0x130
+#define MMC_XGMAC_RX_JABBER_ERR		0x134
+#define MMC_XGMAC_RX_UNDER		0x138
+#define MMC_XGMAC_RX_OVER		0x13c
+#define MMC_XGMAC_RX_64OCT_GB		0x140
+#define MMC_XGMAC_RX_65OCT_GB		0x148
+#define MMC_XGMAC_RX_128OCT_GB		0x150
+#define MMC_XGMAC_RX_256OCT_GB		0x158
+#define MMC_XGMAC_RX_512OCT_GB		0x160
+#define MMC_XGMAC_RX_1024OCT_GB		0x168
+#define MMC_XGMAC_RX_UNI_PKT_G		0x170
+#define MMC_XGMAC_RX_LENGTH_ERR		0x178
+#define MMC_XGMAC_RX_RANGE		0x180
+#define MMC_XGMAC_RX_PAUSE		0x188
+#define MMC_XGMAC_RX_FIFOOVER_PKT	0x190
+#define MMC_XGMAC_RX_VLAN_PKT_GB	0x198
+#define MMC_XGMAC_RX_WATCHDOG_ERR	0x1a0
+#define MMC_XGMAC_RX_LPI_USEC		0x1a4
+#define MMC_XGMAC_RX_LPI_TRAN		0x1a8
+#define MMC_XGMAC_RX_DISCARD_PKT_GB	0x1ac
+#define MMC_XGMAC_RX_DISCARD_OCT_GB	0x1b4
+#define MMC_XGMAC_RX_ALIGN_ERR_PKT	0x1bc
+
+#define MMC_XGMAC_TX_FPE_FRAG		0x208
+#define MMC_XGMAC_TX_HOLD_REQ		0x20c
+#define MMC_XGMAC_RX_PKT_ASSEMBLY_ERR	0x228
+#define MMC_XGMAC_RX_PKT_SMD_ERR	0x22c
+#define MMC_XGMAC_RX_PKT_ASSEMBLY_OK	0x230
+#define MMC_XGMAC_RX_FPE_FRAG		0x234
+
 static void dwmac_mmc_ctrl(void __iomem *mmcaddr, unsigned int mode)
 {
 	u32 value = readl(mmcaddr + MMC_CNTRL);
@@ -263,3 +321,137 @@ const struct stmmac_mmc_ops dwmac_mmc_ops = {
 	.intr_all_mask = dwmac_mmc_intr_all_mask,
 	.read = dwmac_mmc_read,
 };
+
+static void dwxgmac_mmc_ctrl(void __iomem *mmcaddr, unsigned int mode)
+{
+	u32 value = readl(mmcaddr + MMC_CNTRL);
+
+	value |= (mode & 0x3F);
+
+	writel(value, mmcaddr + MMC_CNTRL);
+}
+
+static void dwxgmac_mmc_intr_all_mask(void __iomem *mmcaddr)
+{
+	writel(MMC_DEFAULT_MASK, mmcaddr + MMC_RX_INTR_MASK);
+	writel(MMC_DEFAULT_MASK, mmcaddr + MMC_TX_INTR_MASK);
+}
+
+static void dwxgmac_read_mmc_reg(void __iomem *addr, u32 reg, u32 *dest)
+{
+	u64 tmp = 0;
+
+	tmp += readl(addr + reg);
+	tmp += ((u64 )readl(addr + reg + 0x4)) << 32;
+	if (tmp > GENMASK(31, 0))
+		*dest = ~0x0;
+	else
+		*dest = *dest + tmp;
+}
+
+/* This reads the MAC core counters (if actaully supported).
+ * by default the MMC core is programmed to reset each
+ * counter after a read. So all the field of the mmc struct
+ * have to be incremented.
+ */
+static void dwxgmac_mmc_read(void __iomem *mmcaddr, struct stmmac_counters *mmc)
+{
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_TX_OCTET_GB,
+			     &mmc->mmc_tx_octetcount_gb);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_TX_PKT_GB,
+			     &mmc->mmc_tx_framecount_gb);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_TX_BROAD_PKT_G,
+			     &mmc->mmc_tx_broadcastframe_g);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_TX_MULTI_PKT_G,
+			     &mmc->mmc_tx_multicastframe_g);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_TX_64OCT_GB,
+			     &mmc->mmc_tx_64_octets_gb);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_TX_65OCT_GB,
+			     &mmc->mmc_tx_65_to_127_octets_gb);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_TX_128OCT_GB,
+			     &mmc->mmc_tx_128_to_255_octets_gb);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_TX_256OCT_GB,
+			     &mmc->mmc_tx_256_to_511_octets_gb);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_TX_512OCT_GB,
+			     &mmc->mmc_tx_512_to_1023_octets_gb);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_TX_1024OCT_GB,
+			     &mmc->mmc_tx_1024_to_max_octets_gb);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_TX_UNI_PKT_GB,
+			     &mmc->mmc_tx_unicast_gb);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_TX_MULTI_PKT_GB,
+			     &mmc->mmc_tx_multicast_gb);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_TX_BROAD_PKT_GB,
+			     &mmc->mmc_tx_broadcast_gb);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_TX_UNDER,
+			     &mmc->mmc_tx_underflow_error);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_TX_OCTET_G,
+			     &mmc->mmc_tx_octetcount_g);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_TX_PKT_G,
+			     &mmc->mmc_tx_framecount_g);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_TX_PAUSE,
+			     &mmc->mmc_tx_pause_frame);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_TX_VLAN_PKT_G,
+			     &mmc->mmc_tx_vlan_frame_g);
+
+	/* MMC RX counter registers */
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_RX_PKT_GB,
+			     &mmc->mmc_rx_framecount_gb);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_RX_OCTET_GB,
+			     &mmc->mmc_rx_octetcount_gb);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_RX_OCTET_G,
+			     &mmc->mmc_rx_octetcount_g);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_RX_BROAD_PKT_G,
+			     &mmc->mmc_rx_broadcastframe_g);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_RX_MULTI_PKT_G,
+			     &mmc->mmc_rx_multicastframe_g);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_RX_CRC_ERR,
+			     &mmc->mmc_rx_crc_error);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_RX_CRC_ERR,
+			     &mmc->mmc_rx_crc_error);
+	mmc->mmc_rx_run_error += readl(mmcaddr + MMC_XGMAC_RX_RUNT_ERR);
+	mmc->mmc_rx_jabber_error += readl(mmcaddr + MMC_XGMAC_RX_JABBER_ERR);
+	mmc->mmc_rx_undersize_g += readl(mmcaddr + MMC_XGMAC_RX_UNDER);
+	mmc->mmc_rx_oversize_g += readl(mmcaddr + MMC_XGMAC_RX_OVER);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_RX_64OCT_GB,
+			     &mmc->mmc_rx_64_octets_gb);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_RX_65OCT_GB,
+			     &mmc->mmc_rx_65_to_127_octets_gb);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_RX_128OCT_GB,
+			     &mmc->mmc_rx_128_to_255_octets_gb);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_RX_256OCT_GB,
+			     &mmc->mmc_rx_256_to_511_octets_gb);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_RX_512OCT_GB,
+			     &mmc->mmc_rx_512_to_1023_octets_gb);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_RX_1024OCT_GB,
+			     &mmc->mmc_rx_1024_to_max_octets_gb);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_RX_UNI_PKT_G,
+			     &mmc->mmc_rx_unicast_g);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_RX_LENGTH_ERR,
+			     &mmc->mmc_rx_length_error);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_RX_RANGE,
+			     &mmc->mmc_rx_autofrangetype);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_RX_PAUSE,
+			     &mmc->mmc_rx_pause_frames);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_RX_FIFOOVER_PKT,
+			     &mmc->mmc_rx_fifo_overflow);
+	dwxgmac_read_mmc_reg(mmcaddr, MMC_XGMAC_RX_VLAN_PKT_GB,
+			     &mmc->mmc_rx_vlan_frames_gb);
+	mmc->mmc_rx_watchdog_error += readl(mmcaddr + MMC_XGMAC_RX_WATCHDOG_ERR);
+
+	mmc->mmc_tx_fpe_fragment_cntr += readl(mmcaddr + MMC_XGMAC_TX_FPE_FRAG);
+	mmc->mmc_tx_hold_req_cntr += readl(mmcaddr + MMC_XGMAC_TX_HOLD_REQ);
+	mmc->mmc_rx_packet_assembly_err_cntr +=
+		readl(mmcaddr + MMC_XGMAC_RX_PKT_ASSEMBLY_ERR);
+	mmc->mmc_rx_packet_smd_err_cntr +=
+		readl(mmcaddr + MMC_XGMAC_RX_PKT_SMD_ERR);
+	mmc->mmc_rx_packet_assembly_ok_cntr +=
+		readl(mmcaddr + MMC_XGMAC_RX_PKT_ASSEMBLY_OK);
+	mmc->mmc_rx_fpe_fragment_cntr +=
+		readl(mmcaddr + MMC_XGMAC_RX_FPE_FRAG);
+}
+
+const struct stmmac_mmc_ops dwxgmac_mmc_ops = {
+	.ctrl = dwxgmac_mmc_ctrl,
+	.intr_all_mask = dwxgmac_mmc_intr_all_mask,
+	.read = dwxgmac_mmc_read,
+};
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
index 6efb66820d4c..d294590cba27 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
@@ -243,6 +243,12 @@ static const struct stmmac_stats stmmac_mmc[] = {
 	STMMAC_MMC_STAT(mmc_rx_tcp_err_octets),
 	STMMAC_MMC_STAT(mmc_rx_icmp_gd_octets),
 	STMMAC_MMC_STAT(mmc_rx_icmp_err_octets),
+	STMMAC_MMC_STAT(mmc_tx_fpe_fragment_cntr),
+	STMMAC_MMC_STAT(mmc_tx_hold_req_cntr),
+	STMMAC_MMC_STAT(mmc_rx_packet_assembly_err_cntr),
+	STMMAC_MMC_STAT(mmc_rx_packet_smd_err_cntr),
+	STMMAC_MMC_STAT(mmc_rx_packet_assembly_ok_cntr),
+	STMMAC_MMC_STAT(mmc_rx_fpe_fragment_cntr),
 };
 #define STMMAC_MMC_STATS_LEN ARRAY_SIZE(stmmac_mmc)
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
