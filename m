Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 574D8F76C8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 15:44:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nSk975NVxAYBmiQwQAi92Rb/rZTveNncI1nDH0TP1qU=; b=DZkjAeHO4cw0Q3VmhoBVz++/mc
	WGIKxawrye4ZUdut7IB+VNywL8haWHnhVNQL91mFK6NrL7dnWbH7iehAIBWc/1Vn1bjvDP2cmcVu4
	gM2OkX9yDkM//XpGSslDG0yt/SrsuterUyv0af1VJQCjwDLS3MpDtvCUCOiXJqOoAhltKSeHBgUJr
	5Cm+giFli44iO8N+H48RaBVS2DiV0lATfTy8l/zTlEefEmLurrd+/LDAeGjrgY0kf6nLudF4mTf7j
	mGHGb7Fy8HndFK0dKDjj6Ffe7GIV8FmazUxNOYAMI5BfyokDLgfI4EFVQ97+tlStrJHdDYJKMT8aB
	Yn24y7jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAv9-0003NN-Fs; Mon, 11 Nov 2019 14:43:59 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAuC-0002Zj-RB
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 14:43:04 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 60BF3C08B5;
 Mon, 11 Nov 2019 14:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1573483379; bh=IZywiHnu0e/BLA3nx1WdYdgGskrAid2hLTgOAWQdqjk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=KkR/BIX8vddGWEkkLm4uiUf179j0bjDAsHPvzqkso0E7hP1+df2H45OoSGTow382S
 WXZY1ML3qLdUhff7l0M8PIHWzUXDnkR9KQrcQfduBQOWiYOgnpEmLIaaaQq9E9w7rM
 l0Nu/eg50xYDry2N++GYq8c1rkvCq/XXMFAlpI5WVMJQfTdRBXe41AP/74qAosPJok
 MyJhWBsx5ZuTE7XiKhuCGIH6GrURa89OoVfhnfBTHu5KhJZRQVvVR4Ze9Z4TuBxUfV
 C/+LgprPirbUXRc5XmcBE2KvDZbrYhqWqBngTqP9KGTRuuRf457ib52H0rxHMIzYEv
 H0KGrYH0mLvDg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id DD711A0248;
 Mon, 11 Nov 2019 14:42:56 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 2/6] net: stmmac: gmac4+: Add Split Header support
Date: Mon, 11 Nov 2019 15:42:35 +0100
Message-Id: <8708744c518d29fa51e43f5c2cd14a4927835db5.1573482991.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1573482991.git.Jose.Abreu@synopsys.com>
References: <cover.1573482991.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1573482991.git.Jose.Abreu@synopsys.com>
References: <cover.1573482991.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_064300_958626_8DA3ED1E 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

GMAC4+ cores also support the Split Header feature.

Add the support for Split Header feature in the RX path following the
same implementation logic that XGMAC followed.

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
 drivers/net/ethernet/stmicro/stmmac/dwmac4.h       |  7 +++++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c | 21 ++++++++++++++++++---
 drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h |  1 +
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c   | 19 +++++++++++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h   |  1 +
 5 files changed, 46 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
index 07e97f45755d..2dc70d104161 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
@@ -14,6 +14,7 @@
 
 /*  MAC registers */
 #define GMAC_CONFIG			0x00000000
+#define GMAC_EXT_CONFIG			0x00000004
 #define GMAC_PACKET_FILTER		0x00000008
 #define GMAC_HASH_TAB(x)		(0x10 + (x) * 4)
 #define GMAC_VLAN_TAG			0x00000050
@@ -188,6 +189,11 @@ enum power_event {
 #define GMAC_CONFIG_TE			BIT(1)
 #define GMAC_CONFIG_RE			BIT(0)
 
+/* MAC extended config */
+#define GMAC_CONFIG_HDSMS		GENMASK(22, 20)
+#define GMAC_CONFIG_HDSMS_SHIFT		20
+#define GMAC_CONFIG_HDSMS_256		(0x2 << GMAC_CONFIG_HDSMS_SHIFT)
+
 /* MAC HW features0 bitmap */
 #define GMAC_HW_FEAT_SAVLANINS		BIT(27)
 #define GMAC_HW_FEAT_ADDMAC		BIT(18)
@@ -211,6 +217,7 @@ enum power_event {
 #define GMAC_HW_HASH_TB_SZ		GENMASK(25, 24)
 #define GMAC_HW_FEAT_AVSEL		BIT(20)
 #define GMAC_HW_TSOEN			BIT(18)
+#define GMAC_HW_FEAT_SPHEN		BIT(17)
 #define GMAC_HW_ADDR64			GENMASK(15, 14)
 #define GMAC_HW_TXFIFOSIZE		GENMASK(10, 6)
 #define GMAC_HW_RXFIFOSIZE		GENMASK(4, 0)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c
index 707ab5eba8da..3e14da69f378 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c
@@ -83,9 +83,10 @@ static int dwmac4_wrback_get_rx_status(void *data, struct stmmac_extra_stats *x,
 	if (unlikely(rdes3 & RDES3_OWN))
 		return dma_own;
 
-	/* Verify rx error by looking at the last segment. */
-	if (likely(!(rdes3 & RDES3_LAST_DESCRIPTOR)))
+	if (unlikely(rdes3 & RDES3_CONTEXT_DESCRIPTOR))
 		return discard_frame;
+	if (likely(!(rdes3 & RDES3_LAST_DESCRIPTOR)))
+		return rx_not_ls;
 
 	if (unlikely(rdes3 & RDES3_ERROR_SUMMARY)) {
 		if (unlikely(rdes3 & RDES3_GIANT_PACKET))
@@ -188,7 +189,7 @@ static void dwmac4_set_tx_owner(struct dma_desc *p)
 
 static void dwmac4_set_rx_owner(struct dma_desc *p, int disable_rx_ic)
 {
-	p->des3 = cpu_to_le32(RDES3_OWN | RDES3_BUFFER1_VALID_ADDR);
+	p->des3 |= cpu_to_le32(RDES3_OWN | RDES3_BUFFER1_VALID_ADDR);
 
 	if (!disable_rx_ic)
 		p->des3 |= cpu_to_le32(RDES3_INT_ON_COMPLETION_EN);
@@ -492,6 +493,18 @@ static void dwmac4_set_vlan(struct dma_desc *p, u32 type)
 	p->des2 |= cpu_to_le32(type & TDES2_VLAN_TAG_MASK);
 }
 
+static int dwmac4_get_rx_header_len(struct dma_desc *p, unsigned int *len)
+{
+	*len = le32_to_cpu(p->des2) & RDES2_HL;
+	return 0;
+}
+
+static void dwmac4_set_sec_addr(struct dma_desc *p, dma_addr_t addr)
+{
+	p->des2 = cpu_to_le32(lower_32_bits(addr));
+	p->des3 = cpu_to_le32(upper_32_bits(addr) | RDES3_BUFFER2_VALID_ADDR);
+}
+
 const struct stmmac_desc_ops dwmac4_desc_ops = {
 	.tx_status = dwmac4_wrback_get_tx_status,
 	.rx_status = dwmac4_wrback_get_rx_status,
@@ -519,6 +532,8 @@ const struct stmmac_desc_ops dwmac4_desc_ops = {
 	.set_sarc = dwmac4_set_sarc,
 	.set_vlan_tag = dwmac4_set_vlan_tag,
 	.set_vlan = dwmac4_set_vlan,
+	.get_rx_header_len = dwmac4_get_rx_header_len,
+	.set_sec_addr = dwmac4_set_sec_addr,
 };
 
 const struct stmmac_mode_ops dwmac4_ring_mode_ops = {
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h b/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h
index 0d7b3bbcd5a7..6d92109dc9aa 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h
@@ -109,6 +109,7 @@
 #define RDES2_L4_FILTER_MATCH		BIT(28)
 #define RDES2_L3_L4_FILT_NB_MATCH_MASK	GENMASK(27, 26)
 #define RDES2_L3_L4_FILT_NB_MATCH_SHIFT	26
+#define RDES2_HL			GENMASK(9, 0)
 
 /* RDES3 (write back format) */
 #define RDES3_PACKET_SIZE_MASK		GENMASK(14, 0)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
index b24c89572745..36a0af8bf89f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
@@ -368,6 +368,7 @@ static void dwmac4_get_hw_feature(void __iomem *ioaddr,
 	dma_cap->hash_tb_sz = (hw_cap & GMAC_HW_HASH_TB_SZ) >> 24;
 	dma_cap->av = (hw_cap & GMAC_HW_FEAT_AVSEL) >> 20;
 	dma_cap->tsoen = (hw_cap & GMAC_HW_TSOEN) >> 18;
+	dma_cap->sphen = (hw_cap & GMAC_HW_FEAT_SPHEN) >> 17;
 
 	dma_cap->addr64 = (hw_cap & GMAC_HW_ADDR64) >> 14;
 	switch (dma_cap->addr64) {
@@ -460,6 +461,22 @@ static void dwmac4_set_bfsize(void __iomem *ioaddr, int bfsize, u32 chan)
 	writel(value, ioaddr + DMA_CHAN_RX_CONTROL(chan));
 }
 
+static void dwmac4_enable_sph(void __iomem *ioaddr, bool en, u32 chan)
+{
+	u32 value = readl(ioaddr + GMAC_EXT_CONFIG);
+
+	value &= ~GMAC_CONFIG_HDSMS;
+	value |= GMAC_CONFIG_HDSMS_256; /* Segment max 256 bytes */
+	writel(value, ioaddr + GMAC_EXT_CONFIG);
+
+	value = readl(ioaddr + DMA_CHAN_CONTROL(chan));
+	if (en)
+		value |= DMA_CONTROL_SPH;
+	else
+		value &= ~DMA_CONTROL_SPH;
+	writel(value, ioaddr + DMA_CHAN_CONTROL(chan));
+}
+
 const struct stmmac_dma_ops dwmac4_dma_ops = {
 	.reset = dwmac4_dma_reset,
 	.init = dwmac4_dma_init,
@@ -486,6 +503,7 @@ const struct stmmac_dma_ops dwmac4_dma_ops = {
 	.enable_tso = dwmac4_enable_tso,
 	.qmode = dwmac4_qmode,
 	.set_bfsize = dwmac4_set_bfsize,
+	.enable_sph = dwmac4_enable_sph,
 };
 
 const struct stmmac_dma_ops dwmac410_dma_ops = {
@@ -514,4 +532,5 @@ const struct stmmac_dma_ops dwmac410_dma_ops = {
 	.enable_tso = dwmac4_enable_tso,
 	.qmode = dwmac4_qmode,
 	.set_bfsize = dwmac4_set_bfsize,
+	.enable_sph = dwmac4_enable_sph,
 };
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h
index 5299fa1001a3..589931795847 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h
@@ -110,6 +110,7 @@
 #define DMA_CHAN_STATUS(x)		(DMA_CHANX_BASE_ADDR(x) + 0x60)
 
 /* DMA Control X */
+#define DMA_CONTROL_SPH			BIT(24)
 #define DMA_CONTROL_MSS_MASK		GENMASK(13, 0)
 
 /* DMA Tx Channel X Control register defines */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
