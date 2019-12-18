Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 727F3124482
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:26:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KrMXVNvxDcrQbc9l8lKmwIVnAJefNrXrx0dshm07i2Q=; b=RMVgixVzMoz8RSbrfGb04pLrZ0
	L/o08luVkjMz1DvWOU4Zc8OpREnrfa57TO8ox/zAKwX0tJv+cx3Hj2dJrytk0Q4pwYuR7/F17jAcV
	zGUwTtyka6wVvnd12LlWGUsPySAwNFzGUDOOfd39iIbpLaG7IayLZuc1bhGRwDxUFOkKpbEHP1oii
	8Ng9JDkibccX9puo3j7FyPkRJYSOu1AvaVVRe/vuo+P1M2ae/LDIwblK1g6TXSFGcUJFq+vBXkmye
	nVikw7QPPBcGzHjbqggOf7lvgxJyOUrZrp/3qRqpulP3BI5TbsI74rRevrMwCBGzLXlzNAnPjtmUC
	yKUqogkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWWr-0004LM-Ek; Wed, 18 Dec 2019 10:26:05 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWVg-0002QY-8p
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:24:55 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 621B4C0D6E;
 Wed, 18 Dec 2019 10:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576664691; bh=XvzZnKLp7pB4T9BIk3siIWRN4b3Bc+EIay9P0oKeNm4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=OFVADEIMsdnifYh3VwYEy4IVPtDA+cra84uHq3JVeowSgBWKIiYbopDLJcJyvy5e6
 A3+fvVuEjqHWUdf6A91wBlyfVIup0PvbSMrcgdxAgyZN81EkUhe2Oa486VPSEp4uWS
 /tf19Kanre9LuD73YQHYiKIpKC4RWZ0NmHJwL7KbhZEYqTq3d0KApvqwShx2bG+LRH
 zV5ayuHSogEwCSZowLTXB1oNF/6rcsO7fuKkNwevgidFQYZM53/dMeWrGAr1hTvR71
 b0f0wGfD80GKf0RQ/hyBovs9fMlmQhaLibpqmWHSxYHsTxTWFzfR9hYryZ60XV+flb
 jHM0rUzTMYiYA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id DB248A008A;
 Wed, 18 Dec 2019 10:24:49 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v3 2/3] net: stmmac: Let TX and RX interrupts be
 independently enabled/disabled
Date: Wed, 18 Dec 2019 11:24:44 +0100
Message-Id: <42b203f76083216f4035a4d1145586d0710b53c9.1576664538.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1576664538.git.Jose.Abreu@synopsys.com>
References: <cover.1576664538.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1576664538.git.Jose.Abreu@synopsys.com>
References: <cover.1576664538.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_022452_404746_934E5B44 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

By using this mechanism we can get rid of the not so nice method of
scheduling TX NAPI when the RX was scheduled. No bandwidth reduction was
seen with this change.

Changes from v1:
- Remove useless comment (Jakub)
- Do not bind the TX clean to NAPI budget (Jakub)

Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Chen-Yu Tsai <wens@csie.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-kernel@vger.kernel.org
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c  | 24 ++++++++--
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h   | 11 +++--
 drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c   | 47 ++++++++++++++----
 drivers/net/ethernet/stmicro/stmmac/dwmac_dma.h    |  6 ++-
 drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c    | 22 +++++++--
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     |  2 +
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c | 24 ++++++++--
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |  6 ++-
 drivers/net/ethernet/stmicro/stmmac/stmmac.h       |  1 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  | 55 +++++++++++++---------
 10 files changed, 149 insertions(+), 49 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
index 1c8d84ed8410..6f834302fda3 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
@@ -335,14 +335,30 @@ static void sun8i_dwmac_dump_mac_regs(struct mac_device_info *hw,
 	}
 }
 
-static void sun8i_dwmac_enable_dma_irq(void __iomem *ioaddr, u32 chan)
+static void sun8i_dwmac_enable_dma_irq(void __iomem *ioaddr, u32 chan,
+				       bool rx, bool tx)
 {
-	writel(EMAC_RX_INT | EMAC_TX_INT, ioaddr + EMAC_INT_EN);
+	u32 value = readl(ioaddr + EMAC_INT_EN);
+
+	if (rx)
+		value |= EMAC_RX_INT;
+	if (tx)
+		value |= EMAC_TX_INT;
+
+	writel(value, ioaddr + EMAC_INT_EN);
 }
 
-static void sun8i_dwmac_disable_dma_irq(void __iomem *ioaddr, u32 chan)
+static void sun8i_dwmac_disable_dma_irq(void __iomem *ioaddr, u32 chan,
+					bool rx, bool tx)
 {
-	writel(0, ioaddr + EMAC_INT_EN);
+	u32 value = readl(ioaddr + EMAC_INT_EN);
+
+	if (rx)
+		value &= ~EMAC_RX_INT;
+	if (tx)
+		value &= ~EMAC_TX_INT;
+
+	writel(value, ioaddr + EMAC_INT_EN);
 }
 
 static void sun8i_dwmac_dma_start_tx(void __iomem *ioaddr, u32 chan)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h
index 589931795847..bcb6d5190f3d 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h
@@ -168,6 +168,8 @@
 /* DMA default interrupt mask for 4.00 */
 #define DMA_CHAN_INTR_DEFAULT_MASK	(DMA_CHAN_INTR_NORMAL | \
 					 DMA_CHAN_INTR_ABNORMAL)
+#define DMA_CHAN_INTR_DEFAULT_RX	(DMA_CHAN_INTR_ENA_RIE)
+#define DMA_CHAN_INTR_DEFAULT_TX	(DMA_CHAN_INTR_ENA_TIE)
 
 #define DMA_CHAN_INTR_NORMAL_4_10	(DMA_CHAN_INTR_ENA_NIE_4_10 | \
 					 DMA_CHAN_INTR_ENA_RIE | \
@@ -178,6 +180,8 @@
 /* DMA default interrupt mask for 4.10a */
 #define DMA_CHAN_INTR_DEFAULT_MASK_4_10	(DMA_CHAN_INTR_NORMAL_4_10 | \
 					 DMA_CHAN_INTR_ABNORMAL_4_10)
+#define DMA_CHAN_INTR_DEFAULT_RX_4_10	(DMA_CHAN_INTR_ENA_RIE)
+#define DMA_CHAN_INTR_DEFAULT_TX_4_10	(DMA_CHAN_INTR_ENA_TIE)
 
 /* channel 0 specific fields */
 #define DMA_CHAN0_DBG_STAT_TPS		GENMASK(15, 12)
@@ -186,9 +190,10 @@
 #define DMA_CHAN0_DBG_STAT_RPS_SHIFT	8
 
 int dwmac4_dma_reset(void __iomem *ioaddr);
-void dwmac4_enable_dma_irq(void __iomem *ioaddr, u32 chan);
-void dwmac410_enable_dma_irq(void __iomem *ioaddr, u32 chan);
-void dwmac4_disable_dma_irq(void __iomem *ioaddr, u32 chan);
+void dwmac4_enable_dma_irq(void __iomem *ioaddr, u32 chan, bool rx, bool tx);
+void dwmac410_enable_dma_irq(void __iomem *ioaddr, u32 chan, bool rx, bool tx);
+void dwmac4_disable_dma_irq(void __iomem *ioaddr, u32 chan, bool rx, bool tx);
+void dwmac410_disable_dma_irq(void __iomem *ioaddr, u32 chan, bool rx, bool tx);
 void dwmac4_dma_start_tx(void __iomem *ioaddr, u32 chan);
 void dwmac4_dma_stop_tx(void __iomem *ioaddr, u32 chan);
 void dwmac4_dma_start_rx(void __iomem *ioaddr, u32 chan);
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c
index f2a29a90e085..9becca280074 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c
@@ -97,21 +97,52 @@ void dwmac4_set_rx_ring_len(void __iomem *ioaddr, u32 len, u32 chan)
 	writel(len, ioaddr + DMA_CHAN_RX_RING_LEN(chan));
 }
 
-void dwmac4_enable_dma_irq(void __iomem *ioaddr, u32 chan)
+void dwmac4_enable_dma_irq(void __iomem *ioaddr, u32 chan, bool rx, bool tx)
 {
-	writel(DMA_CHAN_INTR_DEFAULT_MASK, ioaddr +
-	       DMA_CHAN_INTR_ENA(chan));
+	u32 value = readl(ioaddr + DMA_CHAN_INTR_ENA(chan));
+
+	if (rx)
+		value |= DMA_CHAN_INTR_DEFAULT_RX;
+	if (tx)
+		value |= DMA_CHAN_INTR_DEFAULT_TX;
+
+	writel(value, ioaddr + DMA_CHAN_INTR_ENA(chan));
 }
 
-void dwmac410_enable_dma_irq(void __iomem *ioaddr, u32 chan)
+void dwmac410_enable_dma_irq(void __iomem *ioaddr, u32 chan, bool rx, bool tx)
 {
-	writel(DMA_CHAN_INTR_DEFAULT_MASK_4_10,
-	       ioaddr + DMA_CHAN_INTR_ENA(chan));
+	u32 value = readl(ioaddr + DMA_CHAN_INTR_ENA(chan));
+
+	if (rx)
+		value |= DMA_CHAN_INTR_DEFAULT_RX_4_10;
+	if (tx)
+		value |= DMA_CHAN_INTR_DEFAULT_TX_4_10;
+
+	writel(value, ioaddr + DMA_CHAN_INTR_ENA(chan));
 }
 
-void dwmac4_disable_dma_irq(void __iomem *ioaddr, u32 chan)
+void dwmac4_disable_dma_irq(void __iomem *ioaddr, u32 chan, bool rx, bool tx)
 {
-	writel(0, ioaddr + DMA_CHAN_INTR_ENA(chan));
+	u32 value = readl(ioaddr + DMA_CHAN_INTR_ENA(chan));
+
+	if (rx)
+		value &= ~DMA_CHAN_INTR_DEFAULT_RX;
+	if (tx)
+		value &= ~DMA_CHAN_INTR_DEFAULT_TX;
+
+	writel(value, ioaddr + DMA_CHAN_INTR_ENA(chan));
+}
+
+void dwmac410_disable_dma_irq(void __iomem *ioaddr, u32 chan, bool rx, bool tx)
+{
+	u32 value = readl(ioaddr + DMA_CHAN_INTR_ENA(chan));
+
+	if (rx)
+		value &= ~DMA_CHAN_INTR_DEFAULT_RX_4_10;
+	if (tx)
+		value &= ~DMA_CHAN_INTR_DEFAULT_TX_4_10;
+
+	writel(value, ioaddr + DMA_CHAN_INTR_ENA(chan));
 }
 
 int dwmac4_dma_interrupt(void __iomem *ioaddr,
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac_dma.h b/drivers/net/ethernet/stmicro/stmmac/dwmac_dma.h
index 292b880f3f9f..e5dbd0bc257e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac_dma.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac_dma.h
@@ -96,6 +96,8 @@
 
 /* DMA default interrupt mask */
 #define DMA_INTR_DEFAULT_MASK	(DMA_INTR_NORMAL | DMA_INTR_ABNORMAL)
+#define DMA_INTR_DEFAULT_RX	(DMA_INTR_ENA_RIE)
+#define DMA_INTR_DEFAULT_TX	(DMA_INTR_ENA_TIE)
 
 /* DMA Status register defines */
 #define DMA_STATUS_GLPII	0x40000000	/* GMAC LPI interrupt */
@@ -130,8 +132,8 @@
 #define NUM_DWMAC1000_DMA_REGS	23
 
 void dwmac_enable_dma_transmission(void __iomem *ioaddr);
-void dwmac_enable_dma_irq(void __iomem *ioaddr, u32 chan);
-void dwmac_disable_dma_irq(void __iomem *ioaddr, u32 chan);
+void dwmac_enable_dma_irq(void __iomem *ioaddr, u32 chan, bool rx, bool tx);
+void dwmac_disable_dma_irq(void __iomem *ioaddr, u32 chan, bool rx, bool tx);
 void dwmac_dma_start_tx(void __iomem *ioaddr, u32 chan);
 void dwmac_dma_stop_tx(void __iomem *ioaddr, u32 chan);
 void dwmac_dma_start_rx(void __iomem *ioaddr, u32 chan);
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c b/drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c
index 1bc25aa86dbd..688d36095333 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c
@@ -37,14 +37,28 @@ void dwmac_enable_dma_transmission(void __iomem *ioaddr)
 	writel(1, ioaddr + DMA_XMT_POLL_DEMAND);
 }
 
-void dwmac_enable_dma_irq(void __iomem *ioaddr, u32 chan)
+void dwmac_enable_dma_irq(void __iomem *ioaddr, u32 chan, bool rx, bool tx)
 {
-	writel(DMA_INTR_DEFAULT_MASK, ioaddr + DMA_INTR_ENA);
+	u32 value = readl(ioaddr + DMA_INTR_ENA);
+
+	if (rx)
+		value |= DMA_INTR_DEFAULT_RX;
+	if (tx)
+		value |= DMA_INTR_DEFAULT_TX;
+
+	writel(value, ioaddr + DMA_INTR_ENA);
 }
 
-void dwmac_disable_dma_irq(void __iomem *ioaddr, u32 chan)
+void dwmac_disable_dma_irq(void __iomem *ioaddr, u32 chan, bool rx, bool tx)
 {
-	writel(0, ioaddr + DMA_INTR_ENA);
+	u32 value = readl(ioaddr + DMA_INTR_ENA);
+
+	if (rx)
+		value &= ~DMA_INTR_DEFAULT_RX;
+	if (tx)
+		value &= ~DMA_INTR_DEFAULT_TX;
+
+	writel(value, ioaddr + DMA_INTR_ENA);
 }
 
 void dwmac_dma_start_tx(void __iomem *ioaddr, u32 chan)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index 3b6e559aa0b9..158cf4ad1596 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -361,6 +361,8 @@
 #define XGMAC_TIE			BIT(0)
 #define XGMAC_DMA_INT_DEFAULT_EN	(XGMAC_NIE | XGMAC_AIE | XGMAC_RBUE | \
 					XGMAC_RIE | XGMAC_TIE)
+#define XGMAC_DMA_INT_DEFAULT_RX	(XGMAC_RBUE | XGMAC_RIE)
+#define XGMAC_DMA_INT_DEFAULT_TX	(XGMAC_TIE)
 #define XGMAC_DMA_CH_Rx_WATCHDOG(x)	(0x0000313c + (0x80 * (x)))
 #define XGMAC_RWT			GENMASK(7, 0)
 #define XGMAC_DMA_CH_STATUS(x)		(0x00003160 + (0x80 * (x)))
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index 22a7f0cc1b90..ae066f4e99a8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -248,14 +248,30 @@ static void dwxgmac2_dma_tx_mode(void __iomem *ioaddr, int mode,
 	writel(value, ioaddr +  XGMAC_MTL_TXQ_OPMODE(channel));
 }
 
-static void dwxgmac2_enable_dma_irq(void __iomem *ioaddr, u32 chan)
+static void dwxgmac2_enable_dma_irq(void __iomem *ioaddr, u32 chan,
+				    bool rx, bool tx)
 {
-	writel(XGMAC_DMA_INT_DEFAULT_EN, ioaddr + XGMAC_DMA_CH_INT_EN(chan));
+	u32 value = readl(ioaddr + XGMAC_DMA_CH_INT_EN(chan));
+
+	if (rx)
+		value |= XGMAC_DMA_INT_DEFAULT_RX;
+	if (tx)
+		value |= XGMAC_DMA_INT_DEFAULT_TX;
+
+	writel(value, ioaddr + XGMAC_DMA_CH_INT_EN(chan));
 }
 
-static void dwxgmac2_disable_dma_irq(void __iomem *ioaddr, u32 chan)
+static void dwxgmac2_disable_dma_irq(void __iomem *ioaddr, u32 chan,
+				     bool rx, bool tx)
 {
-	writel(0, ioaddr + XGMAC_DMA_CH_INT_EN(chan));
+	u32 value = readl(ioaddr + XGMAC_DMA_CH_INT_EN(chan));
+
+	if (rx)
+		value &= ~XGMAC_DMA_INT_DEFAULT_RX;
+	if (tx)
+		value &= ~XGMAC_DMA_INT_DEFAULT_TX;
+
+	writel(value, ioaddr + XGMAC_DMA_CH_INT_EN(chan));
 }
 
 static void dwxgmac2_dma_start_tx(void __iomem *ioaddr, u32 chan)
diff --git a/drivers/net/ethernet/stmicro/stmmac/hwif.h b/drivers/net/ethernet/stmicro/stmmac/hwif.h
index aa5b917398fe..098fbe7a5862 100644
--- a/drivers/net/ethernet/stmicro/stmmac/hwif.h
+++ b/drivers/net/ethernet/stmicro/stmmac/hwif.h
@@ -187,8 +187,10 @@ struct stmmac_dma_ops {
 	void (*dma_diagnostic_fr) (void *data, struct stmmac_extra_stats *x,
 				   void __iomem *ioaddr);
 	void (*enable_dma_transmission) (void __iomem *ioaddr);
-	void (*enable_dma_irq)(void __iomem *ioaddr, u32 chan);
-	void (*disable_dma_irq)(void __iomem *ioaddr, u32 chan);
+	void (*enable_dma_irq)(void __iomem *ioaddr, u32 chan,
+			       bool rx, bool tx);
+	void (*disable_dma_irq)(void __iomem *ioaddr, u32 chan,
+				bool rx, bool tx);
 	void (*start_tx)(void __iomem *ioaddr, u32 chan);
 	void (*stop_tx)(void __iomem *ioaddr, u32 chan);
 	void (*start_rx)(void __iomem *ioaddr, u32 chan);
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac.h b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
index d993fc7e82c3..f98c5eefb382 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac.h
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
@@ -88,6 +88,7 @@ struct stmmac_channel {
 	struct napi_struct rx_napi ____cacheline_aligned_in_smp;
 	struct napi_struct tx_napi ____cacheline_aligned_in_smp;
 	struct stmmac_priv *priv_data;
+	spinlock_t lock;
 	u32 index;
 };
 
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 3299f5bb02e2..d1a22c4fe67b 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -2069,17 +2069,25 @@ static int stmmac_napi_check(struct stmmac_priv *priv, u32 chan)
 	int status = stmmac_dma_interrupt_status(priv, priv->ioaddr,
 						 &priv->xstats, chan);
 	struct stmmac_channel *ch = &priv->channel[chan];
+	unsigned long flags;
 
 	if ((status & handle_rx) && (chan < priv->plat->rx_queues_to_use)) {
 		if (napi_schedule_prep(&ch->rx_napi)) {
-			stmmac_disable_dma_irq(priv, priv->ioaddr, chan);
+			spin_lock_irqsave(&ch->lock, flags);
+			stmmac_disable_dma_irq(priv, priv->ioaddr, chan, 1, 0);
+			spin_unlock_irqrestore(&ch->lock, flags);
 			__napi_schedule_irqoff(&ch->rx_napi);
-			status |= handle_tx;
 		}
 	}
 
-	if ((status & handle_tx) && (chan < priv->plat->tx_queues_to_use))
-		napi_schedule_irqoff(&ch->tx_napi);
+	if ((status & handle_tx) && (chan < priv->plat->tx_queues_to_use)) {
+		if (napi_schedule_prep(&ch->tx_napi)) {
+			spin_lock_irqsave(&ch->lock, flags);
+			stmmac_disable_dma_irq(priv, priv->ioaddr, chan, 0, 1);
+			spin_unlock_irqrestore(&ch->lock, flags);
+			__napi_schedule_irqoff(&ch->tx_napi);
+		}
+	}
 
 	return status;
 }
@@ -2274,14 +2282,14 @@ static void stmmac_tx_timer(struct timer_list *t)
 
 	ch = &priv->channel[tx_q->queue_index];
 
-	/*
-	 * If NAPI is already running we can miss some events. Let's rearm
-	 * the timer and try again.
-	 */
-	if (likely(napi_schedule_prep(&ch->tx_napi)))
+	if (likely(napi_schedule_prep(&ch->tx_napi))) {
+		unsigned long flags;
+
+		spin_lock_irqsave(&ch->lock, flags);
+		stmmac_disable_dma_irq(priv, priv->ioaddr, ch->index, 0, 1);
+		spin_unlock_irqrestore(&ch->lock, flags);
 		__napi_schedule(&ch->tx_napi);
-	else
-		mod_timer(&tx_q->txtimer, STMMAC_COAL_TIMER(10));
+	}
 }
 
 /**
@@ -3751,8 +3759,14 @@ static int stmmac_napi_poll_rx(struct napi_struct *napi, int budget)
 	priv->xstats.napi_poll++;
 
 	work_done = stmmac_rx(priv, budget, chan);
-	if (work_done < budget && napi_complete_done(napi, work_done))
-		stmmac_enable_dma_irq(priv, priv->ioaddr, chan);
+	if (work_done < budget && napi_complete_done(napi, work_done)) {
+		unsigned long flags;
+
+		spin_lock_irqsave(&ch->lock, flags);
+		stmmac_enable_dma_irq(priv, priv->ioaddr, chan, 1, 0);
+		spin_unlock_irqrestore(&ch->lock, flags);
+	}
+
 	return work_done;
 }
 
@@ -3761,7 +3775,6 @@ static int stmmac_napi_poll_tx(struct napi_struct *napi, int budget)
 	struct stmmac_channel *ch =
 		container_of(napi, struct stmmac_channel, tx_napi);
 	struct stmmac_priv *priv = ch->priv_data;
-	struct stmmac_tx_queue *tx_q;
 	u32 chan = ch->index;
 	int work_done;
 
@@ -3770,15 +3783,12 @@ static int stmmac_napi_poll_tx(struct napi_struct *napi, int budget)
 	work_done = stmmac_tx_clean(priv, DMA_TX_SIZE, chan);
 	work_done = min(work_done, budget);
 
-	if (work_done < budget)
-		napi_complete_done(napi, work_done);
+	if (work_done < budget && napi_complete_done(napi, work_done)) {
+		unsigned long flags;
 
-	/* Force transmission restart */
-	tx_q = &priv->tx_queue[chan];
-	if (tx_q->cur_tx != tx_q->dirty_tx) {
-		stmmac_enable_dma_transmission(priv, priv->ioaddr);
-		stmmac_set_tx_tail_ptr(priv, priv->ioaddr, tx_q->tx_tail_addr,
-				       chan);
+		spin_lock_irqsave(&ch->lock, flags);
+		stmmac_enable_dma_irq(priv, priv->ioaddr, chan, 0, 1);
+		spin_unlock_irqrestore(&ch->lock, flags);
 	}
 
 	return work_done;
@@ -4714,6 +4724,7 @@ int stmmac_dvr_probe(struct device *device,
 	for (queue = 0; queue < maxq; queue++) {
 		struct stmmac_channel *ch = &priv->channel[queue];
 
+		spin_lock_init(&ch->lock);
 		ch->priv_data = priv;
 		ch->index = queue;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
