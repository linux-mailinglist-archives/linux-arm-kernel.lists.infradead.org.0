Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2288230D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 18:49:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gLzKPUYvBX7oSBgp05fq4YziwPkHarQf6XKc0B3PixA=; b=Gn4TiRKEPwWupwzzXoC3aAKDn9
	BjyKr2tNtyiojbJzpo5b+UrM4BJ91SiPvZyJYVHfHdwjQiIonGqKcPTismMwSgYESFStXiDyzhi/D
	uoO8JKR4grqh3imegI6EeM/s5ynjBXNm2txNIfNDH+R1Gz3xi9xMHfCkVHovVXnOSOR4/pJjURtV4
	7p1p97pSEisqI7hCWjWV7cFedS//K4C5daCRVpeQJDj5G48uMljsp1mc4W6tpJcItZ/ZF4Gq/T6DO
	4ICVY31CglKAcLLi6K5yuAtJ9vLMz5O6lYbYRuAam/WjKZXe38IQHzsKi8gJSqSUJfmmsUU94WWhq
	HO3HpceQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hugAf-0007O8-74; Mon, 05 Aug 2019 16:49:17 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hug74-0004D8-UR
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:45:38 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E8CD7C01B9;
 Mon,  5 Aug 2019 16:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565023529; bh=tYuLLNvd8u7ViPKYx1WmXBB4P1bkXsM38xjYG4ICZFo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=BexTkKnwUYfqkNrieGui0uwEPQo4KHOw/MsGZpAcJcanZHdU3IjFq8S40Z3NR1FE5
 1OJR1lvFzcZlq0xqPuPDcGkoR9OdRTC7zuwTbibHVO5Af0ffAGoumBPIxV8RVyPmuK
 OiJUaHAZpcImKjf1bcVQOkyYpTCwguP2gr5EGjNARbOjlgkJ80OZo8vsX/tP3Z8Qar
 EKcKNIBZHr5qg3OMX1WG9WLGZsAzXm5YAWw/ZkRmZvaebQOpihbwpTPNalJ+neP/rC
 sjHwW26rV1E6FNJ4Kp8cweugOksMiEHh2trgBgeugSa6b7XegSR6OjePCzEx/ZZMkJ
 Zrr6kQBcjI88A==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id A84AFA007F;
 Mon,  5 Aug 2019 16:45:27 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 11/26] net: stmmac: Add Flexible RX Parser support in
 XGMAC
Date: Mon,  5 Aug 2019 18:44:38 +0200
Message-Id: <60c776f2e676bf32a9d40ec0f6424e0691a54985.1565022597.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_094535_026766_A327ACA7 
X-CRM114-Status: GOOD (  19.53  )
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

XGMAC cores also support the Flexible RX Parser feature. Add the support
for it in the XGMAC core.

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
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     |  13 ++
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    | 190 +++++++++++++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |   3 +
 3 files changed, 206 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index 3d8782f99f64..01bd20ab34a5 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -112,6 +112,9 @@
 #define XGMAC_HWFEAT_RXQCNT		GENMASK(3, 0)
 #define XGMAC_HW_FEATURE3		0x00000128
 #define XGMAC_HWFEAT_ASP		GENMASK(15, 14)
+#define XGMAC_HWFEAT_FRPES		GENMASK(12, 11)
+#define XGMAC_HWFEAT_FRPPB		GENMASK(10, 9)
+#define XGMAC_HWFEAT_FRPSEL		BIT(3)
 #define XGMAC_MAC_DPP_FSM_INT_STATUS	0x00000150
 #define XGMAC_MAC_FSM_CONTROL		0x00000158
 #define XGMAC_PRTYEN			BIT(1)
@@ -145,6 +148,7 @@
 
 /* MTL Registers */
 #define XGMAC_MTL_OPMODE		0x00001000
+#define XGMAC_FRPE			BIT(15)
 #define XGMAC_ETSALG			GENMASK(6, 5)
 #define XGMAC_WRR			(0x0 << 5)
 #define XGMAC_WFQ			(0x1 << 5)
@@ -160,6 +164,15 @@
 #define XGMAC_TC_PRTY_MAP1		0x00001044
 #define XGMAC_PSTC(x)			GENMASK((x) * 8 + 7, (x) * 8)
 #define XGMAC_PSTC_SHIFT(x)		((x) * 8)
+#define XGMAC_MTL_RXP_CONTROL_STATUS	0x000010a0
+#define XGMAC_RXPI			BIT(31)
+#define XGMAC_NPE			GENMASK(23, 16)
+#define XGMAC_NVE			GENMASK(7, 0)
+#define XGMAC_MTL_RXP_IACC_CTRL_ST	0x000010b0
+#define XGMAC_STARTBUSY			BIT(31)
+#define XGMAC_WRRDN			BIT(16)
+#define XGMAC_ADDR			GENMASK(9, 0)
+#define XGMAC_MTL_RXP_IACC_DATA		0x000010b4
 #define XGMAC_MTL_ECC_CONTROL		0x000010c0
 #define XGMAC_MTL_SAFETY_INT_STATUS	0x000010c4
 #define XGMAC_MEUIS			BIT(1)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index 19dfb72cab11..767f3fe5efaa 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -808,6 +808,195 @@ static int dwxgmac3_safety_feat_dump(struct stmmac_safety_stats *stats,
 	return 0;
 }
 
+static int dwxgmac3_rxp_disable(void __iomem *ioaddr)
+{
+	u32 val = readl(ioaddr + XGMAC_MTL_OPMODE);
+
+	val &= ~XGMAC_FRPE;
+	writel(val, ioaddr + XGMAC_MTL_OPMODE);
+
+	return 0;
+}
+
+static void dwxgmac3_rxp_enable(void __iomem *ioaddr)
+{
+	u32 val;
+
+	val = readl(ioaddr + XGMAC_MTL_OPMODE);
+	val |= XGMAC_FRPE;
+	writel(val, ioaddr + XGMAC_MTL_OPMODE);
+}
+
+static int dwxgmac3_rxp_update_single_entry(void __iomem *ioaddr,
+					    struct stmmac_tc_entry *entry,
+					    int pos)
+{
+	int ret, i;
+
+	for (i = 0; i < (sizeof(entry->val) / sizeof(u32)); i++) {
+		int real_pos = pos * (sizeof(entry->val) / sizeof(u32)) + i;
+		u32 val;
+
+		/* Wait for ready */
+		ret = readl_poll_timeout(ioaddr + XGMAC_MTL_RXP_IACC_CTRL_ST,
+					 val, !(val & XGMAC_STARTBUSY), 1, 10000);
+		if (ret)
+			return ret;
+
+		/* Write data */
+		val = *((u32 *)&entry->val + i);
+		writel(val, ioaddr + XGMAC_MTL_RXP_IACC_DATA);
+
+		/* Write pos */
+		val = real_pos & XGMAC_ADDR;
+		writel(val, ioaddr + XGMAC_MTL_RXP_IACC_CTRL_ST);
+
+		/* Write OP */
+		val |= XGMAC_WRRDN;
+		writel(val, ioaddr + XGMAC_MTL_RXP_IACC_CTRL_ST);
+
+		/* Start Write */
+		val |= XGMAC_STARTBUSY;
+		writel(val, ioaddr + XGMAC_MTL_RXP_IACC_CTRL_ST);
+
+		/* Wait for done */
+		ret = readl_poll_timeout(ioaddr + XGMAC_MTL_RXP_IACC_CTRL_ST,
+					 val, !(val & XGMAC_STARTBUSY), 1, 10000);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static struct stmmac_tc_entry *
+dwxgmac3_rxp_get_next_entry(struct stmmac_tc_entry *entries,
+			    unsigned int count, u32 curr_prio)
+{
+	struct stmmac_tc_entry *entry;
+	u32 min_prio = ~0x0;
+	int i, min_prio_idx;
+	bool found = false;
+
+	for (i = count - 1; i >= 0; i--) {
+		entry = &entries[i];
+
+		/* Do not update unused entries */
+		if (!entry->in_use)
+			continue;
+		/* Do not update already updated entries (i.e. fragments) */
+		if (entry->in_hw)
+			continue;
+		/* Let last entry be updated last */
+		if (entry->is_last)
+			continue;
+		/* Do not return fragments */
+		if (entry->is_frag)
+			continue;
+		/* Check if we already checked this prio */
+		if (entry->prio < curr_prio)
+			continue;
+		/* Check if this is the minimum prio */
+		if (entry->prio < min_prio) {
+			min_prio = entry->prio;
+			min_prio_idx = i;
+			found = true;
+		}
+	}
+
+	if (found)
+		return &entries[min_prio_idx];
+	return NULL;
+}
+
+static int dwxgmac3_rxp_config(void __iomem *ioaddr,
+			       struct stmmac_tc_entry *entries,
+			       unsigned int count)
+{
+	struct stmmac_tc_entry *entry, *frag;
+	int i, ret, nve = 0;
+	u32 curr_prio = 0;
+	u32 old_val, val;
+
+	/* Force disable RX */
+	old_val = readl(ioaddr + XGMAC_RX_CONFIG);
+	val = old_val & ~XGMAC_CONFIG_RE;
+	writel(val, ioaddr + XGMAC_RX_CONFIG);
+
+	/* Disable RX Parser */
+	ret = dwxgmac3_rxp_disable(ioaddr);
+	if (ret)
+		goto re_enable;
+
+	/* Set all entries as NOT in HW */
+	for (i = 0; i < count; i++) {
+		entry = &entries[i];
+		entry->in_hw = false;
+	}
+
+	/* Update entries by reverse order */
+	while (1) {
+		entry = dwxgmac3_rxp_get_next_entry(entries, count, curr_prio);
+		if (!entry)
+			break;
+
+		curr_prio = entry->prio;
+		frag = entry->frag_ptr;
+
+		/* Set special fragment requirements */
+		if (frag) {
+			entry->val.af = 0;
+			entry->val.rf = 0;
+			entry->val.nc = 1;
+			entry->val.ok_index = nve + 2;
+		}
+
+		ret = dwxgmac3_rxp_update_single_entry(ioaddr, entry, nve);
+		if (ret)
+			goto re_enable;
+
+		entry->table_pos = nve++;
+		entry->in_hw = true;
+
+		if (frag && !frag->in_hw) {
+			ret = dwxgmac3_rxp_update_single_entry(ioaddr, frag, nve);
+			if (ret)
+				goto re_enable;
+			frag->table_pos = nve++;
+			frag->in_hw = true;
+		}
+	}
+
+	if (!nve)
+		goto re_enable;
+
+	/* Update all pass entry */
+	for (i = 0; i < count; i++) {
+		entry = &entries[i];
+		if (!entry->is_last)
+			continue;
+
+		ret = dwxgmac3_rxp_update_single_entry(ioaddr, entry, nve);
+		if (ret)
+			goto re_enable;
+
+		entry->table_pos = nve++;
+	}
+
+	/* Assume n. of parsable entries == n. of valid entries */
+	val = (nve << 16) & XGMAC_NPE;
+	val |= nve & XGMAC_NVE;
+	writel(val, ioaddr + XGMAC_MTL_RXP_CONTROL_STATUS);
+
+	/* Enable RX Parser */
+	dwxgmac3_rxp_enable(ioaddr);
+
+re_enable:
+	/* Re-enable RX */
+	writel(old_val, ioaddr + XGMAC_RX_CONFIG);
+	return ret;
+}
+
 const struct stmmac_ops dwxgmac210_ops = {
 	.core_init = dwxgmac2_core_init,
 	.set_mac = dwxgmac2_set_mac,
@@ -843,6 +1032,7 @@ const struct stmmac_ops dwxgmac210_ops = {
 	.set_mac_loopback = dwxgmac2_set_mac_loopback,
 	.rss_configure = dwxgmac2_rss_configure,
 	.update_vlan_hash = dwxgmac2_update_vlan_hash,
+	.rxp_config = dwxgmac3_rxp_config,
 };
 
 int dwxgmac2_setup(struct stmmac_priv *priv)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index e4a1c877f2e1..18cbf4ab4ad2 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -403,6 +403,9 @@ static void dwxgmac2_get_hw_feature(void __iomem *ioaddr,
 	/* MAC HW feature 3 */
 	hw_cap = readl(ioaddr + XGMAC_HW_FEATURE3);
 	dma_cap->asp = (hw_cap & XGMAC_HWFEAT_ASP) >> 14;
+	dma_cap->frpes = (hw_cap & XGMAC_HWFEAT_FRPES) >> 11;
+	dma_cap->frpbs = (hw_cap & XGMAC_HWFEAT_FRPPB) >> 9;
+	dma_cap->frpsel = (hw_cap & XGMAC_HWFEAT_FRPSEL) >> 3;
 }
 
 static void dwxgmac2_rx_watchdog(void __iomem *ioaddr, u32 riwt, u32 nchan)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
