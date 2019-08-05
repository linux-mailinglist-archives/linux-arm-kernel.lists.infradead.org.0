Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D92782384
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 19:03:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Qpwu0LcDWLuNDVAVkZYrvhiNJImCsJ5mQ9Uyw0vn5bU=; b=gAwTCkujT6qFBn5FjI/kFTLifM
	tfDoud60NUhTknAvqBYww6bxLPYI8xM5xu5qQtBWmUx4u6NMbHcKUTlCEcbPuaWmSpGcqIRFCDQcU
	GNdeDB/vlz6ws8zPujp1NQ+CmYcrQVZLRmJBFelNjp1POPjtF4gvbA+3ux+w+T+JnYm3hWG2R9G7Y
	mwNLYDZDFZJr5gICveR9KDsy01wSMB0TcnLfEq4hKkI5/D/YnYMDY8j24QgZrHZ+laTQxEOHBxv9I
	q8CFJgkJrm9TtShIShmCgkZfeHGZQF7eCHJ1W3lApK/uum4pGBHpfhxGUFMdd99WChMYcr9jEpnHF
	B0isf2rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hugO8-00067C-Js; Mon, 05 Aug 2019 17:03:12 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hugMQ-0004R0-4b
 for linux-arm-kernel@bombadil.infradead.org; Mon, 05 Aug 2019 17:01:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gYhMVOdP3/JewxKdV2dQX4rpycT3xbTmkd1/4DtFUuE=; b=d/zBS4dEoEObvkBfNOBS5dL0p
 alt/NVGV7burX9hW3editbsAo7+olGPWCxNuVlHr7XIVvRspC8FBNeE0BsgusC+USusfrhhqx7a/J
 A+jQvuaXaN92yadZI4lYB8h7VMYGTTn5NZ87Uk785CTuFCpYNCXqkaq1k8MbiXR0/W8WI3Whs5128
 tRWghrHPT4pLNM/6csa99m4uJLVVpu7frdxlP0WlGDqjynxXMSqRTdRTK6nBBrUucf52JUUm7UDtp
 7aEfQLo7OP/aGIw5ZXleO101TYrwI3TTrlgxb3W9+KhS0bdUZog7jsQnwi/tJ1l/WYlMeFUQjUqgg
 YPG8U+YVw==;
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hug7J-0005My-ED
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:45:55 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 9B82AC01D0;
 Mon,  5 Aug 2019 16:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565023530; bh=8Wbgji+qgwUoat3yRyb0ycy/qFhH0JcBwiJC+w6MV40=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=Y4eruNfOfswWtQxxBjFlbkfkp/67oWX7G6sw6hyyVsNPM/nfaHQVAF6qn5V2f0WII
 cwjGulB2Uf4m4xTNQ1WRvx7A27wFl8Yo8ZePPbhRY2akCJuBe6nieSwwm8JRtaXoBR
 7hXZNBVOlfWu2Z2wagXMfTp/WIcTW2JKGXqnjdl2EEAhulTcHUVNW+zEtK0r3HKJd4
 TQEPh0Gn8KbuqqdCdI1QxpXLzJq6zy27McSBcM7Wq9EqwMxOAWOGLg8Q75myOiC7mg
 1o4e8W8IWUQoHCmp1qlsyzYmDOiGmCJI5P8Fo4xJtXt+/5W6HasoRfAWDvTqD/obWw
 m3TrKMnXiCnNA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 63C0EA00A4;
 Mon,  5 Aug 2019 16:45:28 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 23/26] net: stmmac: xgmac: Add EEE support
Date: Mon,  5 Aug 2019 18:44:50 +0200
Message-Id: <2b92deda5489c10b43ce57b91da4cde97deb7c2c.1565022597.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_174549_996093_F399ACED 
X-CRM114-Status: GOOD (  18.39  )
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

Add support for EEE in XGMAC cores by implementing the necessary
callbacks.

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
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     | 12 ++++
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    | 75 ++++++++++++++++++++--
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |  1 +
 3 files changed, 83 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index 5a7763be0b17..75e5374c4161 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -71,6 +71,7 @@
 #define XGMAC_PSRQ(x)			GENMASK((x) * 8 + 7, (x) * 8)
 #define XGMAC_PSRQ_SHIFT(x)		((x) * 8)
 #define XGMAC_INT_STATUS		0x000000b0
+#define XGMAC_LPIIS			BIT(5)
 #define XGMAC_PMTIS			BIT(4)
 #define XGMAC_INT_EN			0x000000b4
 #define XGMAC_TSIE			BIT(12)
@@ -88,10 +89,21 @@
 #define XGMAC_RWKPKTEN			BIT(2)
 #define XGMAC_MGKPKTEN			BIT(1)
 #define XGMAC_PWRDWN			BIT(0)
+#define XGMAC_LPI_CTRL			0x000000d0
+#define XGMAC_TXCGE			BIT(21)
+#define XGMAC_LPITXA			BIT(19)
+#define XGMAC_PLS			BIT(17)
+#define XGMAC_LPITXEN			BIT(16)
+#define XGMAC_RLPIEX			BIT(3)
+#define XGMAC_RLPIEN			BIT(2)
+#define XGMAC_TLPIEX			BIT(1)
+#define XGMAC_TLPIEN			BIT(0)
+#define XGMAC_LPI_TIMER_CTRL		0x000000d4
 #define XGMAC_HW_FEATURE0		0x0000011c
 #define XGMAC_HWFEAT_SAVLANINS		BIT(27)
 #define XGMAC_HWFEAT_RXCOESEL		BIT(16)
 #define XGMAC_HWFEAT_TXCOESEL		BIT(14)
+#define XGMAC_HWFEAT_EEESEL		BIT(13)
 #define XGMAC_HWFEAT_TSSEL		BIT(12)
 #define XGMAC_HWFEAT_AVSEL		BIT(11)
 #define XGMAC_HWFEAT_RAVSEL		BIT(10)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index 16e3a0a0c826..353dca543672 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -253,6 +253,7 @@ static int dwxgmac2_host_irq_status(struct mac_device_info *hw,
 {
 	void __iomem *ioaddr = hw->pcsr;
 	u32 stat, en;
+	int ret = 0;
 
 	en = readl(ioaddr + XGMAC_INT_EN);
 	stat = readl(ioaddr + XGMAC_INT_STATUS);
@@ -264,7 +265,24 @@ static int dwxgmac2_host_irq_status(struct mac_device_info *hw,
 		readl(ioaddr + XGMAC_PMT);
 	}
 
-	return 0;
+	if (stat & XGMAC_LPIIS) {
+		u32 lpi = readl(ioaddr + XGMAC_LPI_CTRL);
+
+		if (lpi & XGMAC_TLPIEN) {
+			ret |= CORE_IRQ_TX_PATH_IN_LPI_MODE;
+			x->irq_tx_path_in_lpi_mode_n++;
+		}
+		if (lpi & XGMAC_TLPIEX) {
+			ret |= CORE_IRQ_TX_PATH_EXIT_LPI_MODE;
+			x->irq_tx_path_exit_lpi_mode_n++;
+		}
+		if (lpi & XGMAC_RLPIEN)
+			x->irq_rx_path_in_lpi_mode_n++;
+		if (lpi & XGMAC_RLPIEX)
+			x->irq_rx_path_exit_lpi_mode_n++;
+	}
+
+	return ret;
 }
 
 static int dwxgmac2_host_mtl_irq_status(struct mac_device_info *hw, u32 chan)
@@ -357,6 +375,53 @@ static void dwxgmac2_get_umac_addr(struct mac_device_info *hw,
 	addr[5] = (hi_addr >> 8) & 0xff;
 }
 
+static void dwxgmac2_set_eee_mode(struct mac_device_info *hw,
+				  bool en_tx_lpi_clockgating)
+{
+	void __iomem *ioaddr = hw->pcsr;
+	u32 value;
+
+	value = readl(ioaddr + XGMAC_LPI_CTRL);
+
+	value |= XGMAC_LPITXEN | XGMAC_LPITXA;
+	if (en_tx_lpi_clockgating)
+		value |= XGMAC_TXCGE;
+
+	writel(value, ioaddr + XGMAC_LPI_CTRL);
+}
+
+static void dwxgmac2_reset_eee_mode(struct mac_device_info *hw)
+{
+	void __iomem *ioaddr = hw->pcsr;
+	u32 value;
+
+	value = readl(ioaddr + XGMAC_LPI_CTRL);
+	value &= ~(XGMAC_LPITXEN | XGMAC_LPITXA | XGMAC_TXCGE);
+	writel(value, ioaddr + XGMAC_LPI_CTRL);
+}
+
+static void dwxgmac2_set_eee_pls(struct mac_device_info *hw, int link)
+{
+	void __iomem *ioaddr = hw->pcsr;
+	u32 value;
+
+	value = readl(ioaddr + XGMAC_LPI_CTRL);
+	if (link)
+		value |= XGMAC_PLS;
+	else
+		value &= ~XGMAC_PLS;
+	writel(value, ioaddr + XGMAC_LPI_CTRL);
+}
+
+static void dwxgmac2_set_eee_timer(struct mac_device_info *hw, int ls, int tw)
+{
+	void __iomem *ioaddr = hw->pcsr;
+	u32 value;
+
+	value = (tw & 0xffff) | ((ls & 0x3ff) << 16);
+	writel(value, ioaddr + XGMAC_LPI_TIMER_CTRL);
+}
+
 static void dwxgmac2_set_mchash(void __iomem *ioaddr, u32 *mcfilterbits,
 				int mcbitslog2)
 {
@@ -1112,10 +1177,10 @@ const struct stmmac_ops dwxgmac210_ops = {
 	.pmt = dwxgmac2_pmt,
 	.set_umac_addr = dwxgmac2_set_umac_addr,
 	.get_umac_addr = dwxgmac2_get_umac_addr,
-	.set_eee_mode = NULL,
-	.reset_eee_mode = NULL,
-	.set_eee_timer = NULL,
-	.set_eee_pls = NULL,
+	.set_eee_mode = dwxgmac2_set_eee_mode,
+	.reset_eee_mode = dwxgmac2_reset_eee_mode,
+	.set_eee_timer = dwxgmac2_set_eee_timer,
+	.set_eee_pls = dwxgmac2_set_eee_pls,
 	.pcs_ctrl_ane = NULL,
 	.pcs_rane = NULL,
 	.pcs_get_adv_lp = NULL,
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index 42c13d144203..f2d5901fbaff 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -361,6 +361,7 @@ static void dwxgmac2_get_hw_feature(void __iomem *ioaddr,
 	hw_cap = readl(ioaddr + XGMAC_HW_FEATURE0);
 	dma_cap->rx_coe = (hw_cap & XGMAC_HWFEAT_RXCOESEL) >> 16;
 	dma_cap->tx_coe = (hw_cap & XGMAC_HWFEAT_TXCOESEL) >> 14;
+	dma_cap->eee = (hw_cap & XGMAC_HWFEAT_EEESEL) >> 13;
 	dma_cap->atime_stamp = (hw_cap & XGMAC_HWFEAT_TSSEL) >> 12;
 	dma_cap->av = (hw_cap & XGMAC_HWFEAT_AVSEL) >> 11;
 	dma_cap->av &= (hw_cap & XGMAC_HWFEAT_RAVSEL) >> 10;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
