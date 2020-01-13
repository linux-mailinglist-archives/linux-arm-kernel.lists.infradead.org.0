Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B68A138CE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 09:31:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PYSQLm+hgcymYrccnihbtIUAoD/+Knx29HjNFxoayx8=; b=gLOHQyN/DeP3ZSYnhS7ilrjcCI
	SgDlRqEmdtYQz2flZY3PQA3hy9qLyT6oQnNNcrv7dzp6mW1OhIFbLGUeCiYHBvkyXAQ0m76gg1SV/
	TNR3KNELMG8VKrcXDy4JU+VKXdR7mcONeSYQBKhVVH4kMzbVAr0ftuMfeBE5CS+hkHE1PuVu+oC2P
	NnOyE/oOMSVt7BVfyQjhjEYLxpGNapBQJbJnDu92BazeIfwn2Le/Ti1ip+jnGpoEfXwF7sqyaJNhN
	VHTdNnvpc0AkQpzqsIfmnJFG3tteDhPU5uXxDHRURDKYb2HWvziNGyaoO6xeZtLnCbZxJqkBLuqvr
	2JZgIoIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqv86-0006xC-Gx; Mon, 13 Jan 2020 08:31:22 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqv6k-0004mK-7B
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 08:30:03 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 961BC40690;
 Mon, 13 Jan 2020 08:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578904197; bh=BxJWPDLDjNhqzcZSiJs2uXr5wWIvRToQ2ZYcTSy6BWM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=RPM4Yx/CUMfMziPVqt7XyxbTiroQPUU6MjZlWZpAam7CmEm2kdjHOIwL4qTC+m4X1
 1pBLSLYn78j7/81N+ch0/GSSFvPctbUpREJ6oImTcjKTnfvQE5gJxfzBY7ifd5nHfE
 X2Fi+f8RI2Gjr53z6TUoRn5QU1V71NTzNzq5ApimP5a+X668FL9LudfdlGeeadDXco
 6ZhhrB+MQG+Fo1VsJ3+ysdzmUTUNJZP0kjZg+EYiGjRhrS5Gt8q3pWMpbKyDVCPaER
 TIhw2xz7CnsxM7g/wj9JOc88bxRe7qA5NsQXcftOe4rTvKj/PzFARyagojccHAzRk4
 Cz5silz4CeaEA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 44F6AA006E;
 Mon, 13 Jan 2020 08:29:54 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 3/6] net: stmmac: xgmac: Add TBS support
Date: Mon, 13 Jan 2020 09:29:37 +0100
Message-Id: <de2e406afabf1ea1ec1173f244629166c873b60c.1578903874.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1578903874.git.Jose.Abreu@synopsys.com>
References: <cover.1578903874.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1578903874.git.Jose.Abreu@synopsys.com>
References: <cover.1578903874.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_002958_309511_1F2B2A7F 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Adds all the necessary HW hooks to support TBS feature in XGMAC cores.

Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

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
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     | 14 +++++++++++++
 .../net/ethernet/stmicro/stmmac/dwxgmac2_descs.c   |  9 ++++++++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c | 24 ++++++++++++++++++++++
 3 files changed, 47 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index 64d13e50e403..b4d0e0b8ee2e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -11,6 +11,7 @@
 
 /* Misc */
 #define XGMAC_JUMBO_LEN			16368
+#define XGMAC_LT_SHIFT			8 /* LT is in 256ns base */
 
 /* MAC Registers */
 #define XGMAC_TX_CONFIG			0x00000000
@@ -139,6 +140,7 @@
 #define XGMAC_HWFEAT_TXQCNT		GENMASK(9, 6)
 #define XGMAC_HWFEAT_RXQCNT		GENMASK(3, 0)
 #define XGMAC_HW_FEATURE3		0x00000128
+#define XGMAC_HWFEAT_TBSSEL		BIT(27)
 #define XGMAC_HWFEAT_FPESEL		BIT(26)
 #define XGMAC_HWFEAT_ESTWID		GENMASK(24, 23)
 #define XGMAC_HWFEAT_ESTDEP		GENMASK(22, 20)
@@ -346,6 +348,13 @@
 #define XGMAC_TDPS			GENMASK(29, 0)
 #define XGMAC_RX_EDMA_CTRL		0x00003044
 #define XGMAC_RDPS			GENMASK(29, 0)
+#define XGMAC_DMA_TBS_CTRL0		0x00003054
+#define XGMAC_DMA_TBS_CTRL1		0x00003058
+#define XGMAC_DMA_TBS_CTRL2		0x0000305c
+#define XGMAC_DMA_TBS_CTRL3		0x00003060
+#define XGMAC_FTOS			GENMASK(31, 8)
+#define XGMAC_FTOV			BIT(0)
+#define XGMAC_DEF_FTOS			(XGMAC_FTOS | XGMAC_FTOV)
 #define XGMAC_DMA_SAFETY_INT_STATUS	0x00003064
 #define XGMAC_MCSIS			BIT(31)
 #define XGMAC_MSUIS			BIT(29)
@@ -360,6 +369,7 @@
 #define XGMAC_SPH			BIT(24)
 #define XGMAC_PBLx8			BIT(16)
 #define XGMAC_DMA_CH_TX_CONTROL(x)	(0x00003104 + (0x80 * (x)))
+#define XGMAC_EDSE			BIT(28)
 #define XGMAC_TxPBL			GENMASK(21, 16)
 #define XGMAC_TxPBL_SHIFT		16
 #define XGMAC_TSE			BIT(12)
@@ -404,6 +414,9 @@
 #define XGMAC_REGSIZE			((0x0000317c + (0x80 * 15)) / 4)
 
 /* Descriptors */
+#define XGMAC_TDES0_LTV			BIT(31)
+#define XGMAC_TDES0_LT			GENMASK(7, 0)
+#define XGMAC_TDES1_LT			GENMASK(31, 8)
 #define XGMAC_TDES2_IVT			GENMASK(31, 16)
 #define XGMAC_TDES2_IVT_SHIFT		16
 #define XGMAC_TDES2_IOC			BIT(31)
@@ -422,6 +435,7 @@
 #define XGMAC_TDES3_TCMSSV		BIT(26)
 #define XGMAC_TDES3_SAIC		GENMASK(25, 23)
 #define XGMAC_TDES3_SAIC_SHIFT		23
+#define XGMAC_TDES3_TBSV		BIT(24)
 #define XGMAC_TDES3_THL			GENMASK(22, 19)
 #define XGMAC_TDES3_THL_SHIFT		19
 #define XGMAC_TDES3_IVTIR		GENMASK(19, 18)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c
index bd5838ce1e8a..7b3f054ba415 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c
@@ -339,6 +339,14 @@ static void dwxgmac2_set_vlan(struct dma_desc *p, u32 type)
 	p->des2 |= cpu_to_le32(type & XGMAC_TDES2_VTIR);
 }
 
+static void dwxgmac2_set_tbs(struct dma_edesc *p, u32 sec, u32 nsec)
+{
+	p->des4 = cpu_to_le32((sec & XGMAC_TDES0_LT) | XGMAC_TDES0_LTV);
+	p->des5 = cpu_to_le32((nsec >> XGMAC_LT_SHIFT) & XGMAC_TDES1_LT);
+	p->des6 = 0;
+	p->des7 = 0;
+}
+
 const struct stmmac_desc_ops dwxgmac210_desc_ops = {
 	.tx_status = dwxgmac2_get_tx_status,
 	.rx_status = dwxgmac2_get_rx_status,
@@ -368,4 +376,5 @@ const struct stmmac_desc_ops dwxgmac210_desc_ops = {
 	.set_sarc = dwxgmac2_set_sarc,
 	.set_vlan_tag = dwxgmac2_set_vlan_tag,
 	.set_vlan = dwxgmac2_set_vlan,
+	.set_tbs = dwxgmac2_set_tbs,
 };
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index bbbfa793a367..77308c5c5d29 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -429,6 +429,7 @@ static void dwxgmac2_get_hw_feature(void __iomem *ioaddr,
 
 	/* MAC HW feature 3 */
 	hw_cap = readl(ioaddr + XGMAC_HW_FEATURE3);
+	dma_cap->tbssel = (hw_cap & XGMAC_HWFEAT_TBSSEL) >> 27;
 	dma_cap->fpesel = (hw_cap & XGMAC_HWFEAT_FPESEL) >> 26;
 	dma_cap->estwid = (hw_cap & XGMAC_HWFEAT_ESTWID) >> 23;
 	dma_cap->estdep = (hw_cap & XGMAC_HWFEAT_ESTDEP) >> 20;
@@ -523,6 +524,28 @@ static void dwxgmac2_enable_sph(void __iomem *ioaddr, bool en, u32 chan)
 	writel(value, ioaddr + XGMAC_DMA_CH_CONTROL(chan));
 }
 
+static int dwxgmac2_enable_tbs(void __iomem *ioaddr, bool en, u32 chan)
+{
+	u32 value = readl(ioaddr + XGMAC_DMA_CH_TX_CONTROL(chan));
+
+	if (en)
+		value |= XGMAC_EDSE;
+	else
+		value &= ~XGMAC_EDSE;
+
+	writel(value, ioaddr + XGMAC_DMA_CH_TX_CONTROL(chan));
+
+	value = readl(ioaddr + XGMAC_DMA_CH_TX_CONTROL(chan)) & XGMAC_EDSE;
+	if (en && !value)
+		return -EIO;
+
+	writel(XGMAC_DEF_FTOS, ioaddr + XGMAC_DMA_TBS_CTRL0);
+	writel(XGMAC_DEF_FTOS, ioaddr + XGMAC_DMA_TBS_CTRL1);
+	writel(XGMAC_DEF_FTOS, ioaddr + XGMAC_DMA_TBS_CTRL2);
+	writel(XGMAC_DEF_FTOS, ioaddr + XGMAC_DMA_TBS_CTRL3);
+	return 0;
+}
+
 const struct stmmac_dma_ops dwxgmac210_dma_ops = {
 	.reset = dwxgmac2_dma_reset,
 	.init = dwxgmac2_dma_init,
@@ -550,4 +573,5 @@ const struct stmmac_dma_ops dwxgmac210_dma_ops = {
 	.qmode = dwxgmac2_qmode,
 	.set_bfsize = dwxgmac2_set_bfsize,
 	.enable_sph = dwxgmac2_enable_sph,
+	.enable_tbs = dwxgmac2_enable_tbs,
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
