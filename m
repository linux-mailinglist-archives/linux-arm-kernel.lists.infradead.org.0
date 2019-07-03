Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DE85E233
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 12:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=guGNnLb7KHFAUw/0tg2Dk9iqQtJmmUM2p/nS3/xp69w=; b=EapTebtKLs4/fDHPD8qCjCo1qU
	7HgkU4v5uF62ZmafB4V5qSGs6T3OzIycAJz2AWFK5hWY7Rl5e7wdxJF4LaosnxqRYNBZD5HVDwNs5
	wmuCD8RFOJ8ASC7gfpPwQ3sdRemQZuco633zZBRC968IS4gIvMC3Pw1xDkHIRocHb5xu2Mcz59IOg
	JRO/PBAAfzQdzKdlGLgwsdQHE2gmqHfjNl0bjg7N0t62cRfaswG50uAxUolt2Z09JFuN56j7ELBJ9
	+Au3whbXMDeR7QguzN49zj94hXIXhqj6JH27G2ApemhwNnEscYTuF2/qTXC1o0xAqkQnfrXVf6Vv1
	x8qZUdWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hicf5-0002Qp-7j; Wed, 03 Jul 2019 10:38:51 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiceM-0001xh-Cp
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 10:38:08 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 8DF58C2646;
 Wed,  3 Jul 2019 10:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562150279; bh=8/IDjB2DIXJSOAN7JOjH5TAznklTry/7Vqz9VmBB80k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=VdPBE0nRHI0YnQTyHhA8SUNxG9Aqr+hyXptEp3M2P0KpdZo9r0HugdpLDKorB4ine
 HNkjSbNcO9rY/N8XA8IlXFwaxdOiPNCJRsf88BTfE+tSNOpyuG/XZ7HBAnijtJJS3Z
 r+PFj7rp/IMKFtNBEq1BBP4/5STCHanjnk8oN3/U7L/SYJEhxJtBiC+/82dvQz6ilB
 U01zN3v4P6slC+oh83hMEYy/stqogpm8Cx/H+nCiuZy+4OpawxbH99I9iWQMVq+J7f
 9DGAoxtSP+FI6n4zHwRT7+RN/aIFG4QVpBaEdtDqiwtsFZNBCCGK5caN/AKeLfbKju
 DY2m9iOIgIXnA==
Received: from de02.synopsys.com (de02.internal.synopsys.com [10.225.17.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id 956FCA005E;
 Wed,  3 Jul 2019 10:37:54 +0000 (UTC)
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by de02.synopsys.com (Postfix) with ESMTP id 577063E57A;
 Wed,  3 Jul 2019 12:37:54 +0200 (CEST)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH net-next 2/3] net: stmmac: Fix descriptors address being in >
 32 bits address space
Date: Wed,  3 Jul 2019 12:37:49 +0200
Message-Id: <c9533eb23dd55207d6c29b24e1d979f293e1a4b3.1562149883.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1562149883.git.joabreu@synopsys.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
In-Reply-To: <cover.1562149883.git.joabreu@synopsys.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_033806_475320_30DAC511 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit a993db88d17d ("net: stmmac: Enable support for > 32 Bits
addressing in XGMAC"), introduced support for > 32 bits addressing in
XGMAC but the conversion of descriptors to dma_addr_t was left out.

As some devices assing coherent memory in regions > 32 bits we need to
set lower and upper value of descriptors address when initializing DMA
channels.

Luckly, this was working for me because I was assigning CMA to < 4GB
address space for performance reasons.

Fixes: a993db88d17d ("net: stmmac: Enable support for > 32 Bits addressing in XGMAC")
Signed-off-by: Jose Abreu <joabreu@synopsys.com>
Cc: Joao Pinto <jpinto@synopsys.com>
Cc: David S. Miller <davem@davemloft.net>
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Chen-Yu Tsai <wens@csie.org>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c   |  8 ++++----
 drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c |  8 ++++----
 drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.c  |  8 ++++----
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c    |  8 ++++----
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h      |  2 ++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c  | 10 ++++++----
 drivers/net/ethernet/stmicro/stmmac/hwif.h          |  4 ++--
 7 files changed, 26 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
index 6d5cba4075eb..2856f3fe5266 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
@@ -289,18 +289,18 @@ static void sun8i_dwmac_dma_init(void __iomem *ioaddr,
 
 static void sun8i_dwmac_dma_init_rx(void __iomem *ioaddr,
 				    struct stmmac_dma_cfg *dma_cfg,
-				    u32 dma_rx_phy, u32 chan)
+				    dma_addr_t dma_rx_phy, u32 chan)
 {
 	/* Write RX descriptors address */
-	writel(dma_rx_phy, ioaddr + EMAC_RX_DESC_LIST);
+	writel(lower_32_bits(dma_rx_phy), ioaddr + EMAC_RX_DESC_LIST);
 }
 
 static void sun8i_dwmac_dma_init_tx(void __iomem *ioaddr,
 				    struct stmmac_dma_cfg *dma_cfg,
-				    u32 dma_tx_phy, u32 chan)
+				    dma_addr_t dma_tx_phy, u32 chan)
 {
 	/* Write TX descriptors address */
-	writel(dma_tx_phy, ioaddr + EMAC_TX_DESC_LIST);
+	writel(lower_32_bits(dma_tx_phy), ioaddr + EMAC_TX_DESC_LIST);
 }
 
 /* sun8i_dwmac_dump_regs() - Dump EMAC address space
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c
index 1fdedf77678f..2bac49b49f73 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c
@@ -112,18 +112,18 @@ static void dwmac1000_dma_init(void __iomem *ioaddr,
 
 static void dwmac1000_dma_init_rx(void __iomem *ioaddr,
 				  struct stmmac_dma_cfg *dma_cfg,
-				  u32 dma_rx_phy, u32 chan)
+				  dma_addr_t dma_rx_phy, u32 chan)
 {
 	/* RX descriptor base address list must be written into DMA CSR3 */
-	writel(dma_rx_phy, ioaddr + DMA_RCV_BASE_ADDR);
+	writel(lower_32_bits(dma_rx_phy), ioaddr + DMA_RCV_BASE_ADDR);
 }
 
 static void dwmac1000_dma_init_tx(void __iomem *ioaddr,
 				  struct stmmac_dma_cfg *dma_cfg,
-				  u32 dma_tx_phy, u32 chan)
+				  dma_addr_t dma_tx_phy, u32 chan)
 {
 	/* TX descriptor base address list must be written into DMA CSR4 */
-	writel(dma_tx_phy, ioaddr + DMA_TX_BASE_ADDR);
+	writel(lower_32_bits(dma_tx_phy), ioaddr + DMA_TX_BASE_ADDR);
 }
 
 static u32 dwmac1000_configure_fc(u32 csr6, int rxfifosz)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.c
index c980cc7360a4..8f0d9bc7cab5 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.c
@@ -31,18 +31,18 @@ static void dwmac100_dma_init(void __iomem *ioaddr,
 
 static void dwmac100_dma_init_rx(void __iomem *ioaddr,
 				 struct stmmac_dma_cfg *dma_cfg,
-				 u32 dma_rx_phy, u32 chan)
+				 dma_addr_t dma_rx_phy, u32 chan)
 {
 	/* RX descriptor base addr lists must be written into DMA CSR3 */
-	writel(dma_rx_phy, ioaddr + DMA_RCV_BASE_ADDR);
+	writel(lower_32_bits(dma_rx_phy), ioaddr + DMA_RCV_BASE_ADDR);
 }
 
 static void dwmac100_dma_init_tx(void __iomem *ioaddr,
 				 struct stmmac_dma_cfg *dma_cfg,
-				 u32 dma_tx_phy, u32 chan)
+				 dma_addr_t dma_tx_phy, u32 chan)
 {
 	/* TX descriptor base addr lists must be written into DMA CSR4 */
-	writel(dma_tx_phy, ioaddr + DMA_TX_BASE_ADDR);
+	writel(lower_32_bits(dma_tx_phy), ioaddr + DMA_TX_BASE_ADDR);
 }
 
 /* Store and Forward capability is not used at all.
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
index 0f208e13da9f..6cbcdaea55f6 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
@@ -70,7 +70,7 @@ static void dwmac4_dma_axi(void __iomem *ioaddr, struct stmmac_axi *axi)
 
 static void dwmac4_dma_init_rx_chan(void __iomem *ioaddr,
 				    struct stmmac_dma_cfg *dma_cfg,
-				    u32 dma_rx_phy, u32 chan)
+				    dma_addr_t dma_rx_phy, u32 chan)
 {
 	u32 value;
 	u32 rxpbl = dma_cfg->rxpbl ?: dma_cfg->pbl;
@@ -79,12 +79,12 @@ static void dwmac4_dma_init_rx_chan(void __iomem *ioaddr,
 	value = value | (rxpbl << DMA_BUS_MODE_RPBL_SHIFT);
 	writel(value, ioaddr + DMA_CHAN_RX_CONTROL(chan));
 
-	writel(dma_rx_phy, ioaddr + DMA_CHAN_RX_BASE_ADDR(chan));
+	writel(lower_32_bits(dma_rx_phy), ioaddr + DMA_CHAN_RX_BASE_ADDR(chan));
 }
 
 static void dwmac4_dma_init_tx_chan(void __iomem *ioaddr,
 				    struct stmmac_dma_cfg *dma_cfg,
-				    u32 dma_tx_phy, u32 chan)
+				    dma_addr_t dma_tx_phy, u32 chan)
 {
 	u32 value;
 	u32 txpbl = dma_cfg->txpbl ?: dma_cfg->pbl;
@@ -97,7 +97,7 @@ static void dwmac4_dma_init_tx_chan(void __iomem *ioaddr,
 
 	writel(value, ioaddr + DMA_CHAN_TX_CONTROL(chan));
 
-	writel(dma_tx_phy, ioaddr + DMA_CHAN_TX_BASE_ADDR(chan));
+	writel(lower_32_bits(dma_tx_phy), ioaddr + DMA_CHAN_TX_BASE_ADDR(chan));
 }
 
 static void dwmac4_dma_init_channel(void __iomem *ioaddr,
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index 9a9792527530..7f86dffb264d 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -199,7 +199,9 @@
 #define XGMAC_RxPBL			GENMASK(21, 16)
 #define XGMAC_RxPBL_SHIFT		16
 #define XGMAC_RXST			BIT(0)
+#define XGMAC_DMA_CH_TxDESC_HADDR(x)	(0x00003110 + (0x80 * (x)))
 #define XGMAC_DMA_CH_TxDESC_LADDR(x)	(0x00003114 + (0x80 * (x)))
+#define XGMAC_DMA_CH_RxDESC_HADDR(x)	(0x00003118 + (0x80 * (x)))
 #define XGMAC_DMA_CH_RxDESC_LADDR(x)	(0x0000311c + (0x80 * (x)))
 #define XGMAC_DMA_CH_TxDESC_TAIL_LPTR(x)	(0x00003124 + (0x80 * (x)))
 #define XGMAC_DMA_CH_RxDESC_TAIL_LPTR(x)	(0x0000312c + (0x80 * (x)))
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index 229c58758cbd..a4f236e3593e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -44,7 +44,7 @@ static void dwxgmac2_dma_init_chan(void __iomem *ioaddr,
 
 static void dwxgmac2_dma_init_rx_chan(void __iomem *ioaddr,
 				      struct stmmac_dma_cfg *dma_cfg,
-				      u32 dma_rx_phy, u32 chan)
+				      dma_addr_t phy, u32 chan)
 {
 	u32 rxpbl = dma_cfg->rxpbl ?: dma_cfg->pbl;
 	u32 value;
@@ -54,12 +54,13 @@ static void dwxgmac2_dma_init_rx_chan(void __iomem *ioaddr,
 	value |= (rxpbl << XGMAC_RxPBL_SHIFT) & XGMAC_RxPBL;
 	writel(value, ioaddr + XGMAC_DMA_CH_RX_CONTROL(chan));
 
-	writel(dma_rx_phy, ioaddr + XGMAC_DMA_CH_RxDESC_LADDR(chan));
+	writel(upper_32_bits(phy), ioaddr + XGMAC_DMA_CH_RxDESC_HADDR(chan));
+	writel(lower_32_bits(phy), ioaddr + XGMAC_DMA_CH_RxDESC_LADDR(chan));
 }
 
 static void dwxgmac2_dma_init_tx_chan(void __iomem *ioaddr,
 				      struct stmmac_dma_cfg *dma_cfg,
-				      u32 dma_tx_phy, u32 chan)
+				      dma_addr_t phy, u32 chan)
 {
 	u32 txpbl = dma_cfg->txpbl ?: dma_cfg->pbl;
 	u32 value;
@@ -70,7 +71,8 @@ static void dwxgmac2_dma_init_tx_chan(void __iomem *ioaddr,
 	value |= XGMAC_OSP;
 	writel(value, ioaddr + XGMAC_DMA_CH_TX_CONTROL(chan));
 
-	writel(dma_tx_phy, ioaddr + XGMAC_DMA_CH_TxDESC_LADDR(chan));
+	writel(upper_32_bits(phy), ioaddr + XGMAC_DMA_CH_TxDESC_HADDR(chan));
+	writel(lower_32_bits(phy), ioaddr + XGMAC_DMA_CH_TxDESC_LADDR(chan));
 }
 
 static void dwxgmac2_dma_axi(void __iomem *ioaddr, struct stmmac_axi *axi)
diff --git a/drivers/net/ethernet/stmicro/stmmac/hwif.h b/drivers/net/ethernet/stmicro/stmmac/hwif.h
index 2acfbc70e3c8..278c0dbec9d9 100644
--- a/drivers/net/ethernet/stmicro/stmmac/hwif.h
+++ b/drivers/net/ethernet/stmicro/stmmac/hwif.h
@@ -150,10 +150,10 @@ struct stmmac_dma_ops {
 			  struct stmmac_dma_cfg *dma_cfg, u32 chan);
 	void (*init_rx_chan)(void __iomem *ioaddr,
 			     struct stmmac_dma_cfg *dma_cfg,
-			     u32 dma_rx_phy, u32 chan);
+			     dma_addr_t phy, u32 chan);
 	void (*init_tx_chan)(void __iomem *ioaddr,
 			     struct stmmac_dma_cfg *dma_cfg,
-			     u32 dma_tx_phy, u32 chan);
+			     dma_addr_t phy, u32 chan);
 	/* Configure the AXI Bus Mode Register */
 	void (*axi)(void __iomem *ioaddr, struct stmmac_axi *axi);
 	/* Dump DMA registers */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
