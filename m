Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D80FD82372
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 19:02:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Lh//d/1GqEPG7t/ZMz5oqgGhKkHhrvBwp/UrP8Rgk4c=; b=f+lI+U+1NFiWN/4fBWFIxxQwp9
	MnBiyLmxSWytxiVmurMWSLdwWUSfeNVYHmr6nhwrTaHX4Dd07GtEyaLkH4UhyS+aKnwnNEmaSZcf2
	TLewzrPzoKK9Zleqqds9SrtrFrPJr+EuNh8n2jjF++vbWvHWE1MCsL3SJotOJ7o857A7M24HnPPsi
	5sCSc+KJaYsLMwlEPDzWxq7u67++mkuvko+4slImX0CSeSQ6ItuIv4xXvSccrS4gUVSYeDhEsd5eZ
	TrWScA3SqAFmgR/n+HXsjzC9TTNx/xfgyogw47Pguu/DXjHwVy95DlPTJFi/NcBWZcqXgvVconkyk
	4Isrqshg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hugNA-0005CF-6y; Mon, 05 Aug 2019 17:02:12 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hugMO-0004QG-Rb
 for linux-arm-kernel@bombadil.infradead.org; Mon, 05 Aug 2019 17:01:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iUYGBZFz+qRn4OwpP3gImn03dC6WyszaspWmD8N5u9Q=; b=P9O/MbPKDZlDMUCeXXKXOM6Uv
 iOw5jRpgMZrd+uYJXslR03g4OZwyrVl9L7y88T7z9Uvg5Gwjo70eKnTPttmdcABRqZwnYMCPgChN4
 04Th0POXR9N8cJKaiiEDuvi5I/0QoMivP2Eq8fgYZg/S7GFdZnMe3GXqVvuTe0EL2A4kBFUgCEMTP
 wBDQ4O9+x9Uj87Gpt+j6fuj0rmcR9uKayHSCe0zRIPpIdq0564uXMMklowxpurAR4qwtyr/HbQVGC
 tsPjtCg6enqjcH66A4dJKUTxo69Gnmo40zR2Du3FQIjB30ZmCJEnlAdBpfmsAiW4bcydhnnkNU9rh
 9KkQVFopw==;
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hug7M-0005On-8U
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:45:59 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B382DC0168;
 Mon,  5 Aug 2019 16:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565023530; bh=JoB6bpTBAvqZs+eLpWtXvUl1qHz+jrwSzyTLgZsfk8Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=arinTomf/AmJIB153prZzm7Z9Z6dognOn04UvwAS0kG1aCeRsr1bJr2PKW1kIvu0G
 vDB70kVnVcsE/oH3y8B9w2YxidKq0wZuWjUT/VDQupUR13CpdIbr0Nt8m/OHa8aUnG
 EOQekbwOGNAbFBuK9fXmCYgWC+7hK1iOPBvjQ94KYCO7i5PLQVjIXTuQWc4hUhfuJU
 tE0Vc4AcSVjBorO7cjISCCTh0ozmNg9BtGbTaaojMC/WfRnShff/Oi4pF0yEbJx+1S
 EstcVEH5pZb4bhFfJyolrHWN1VNdhH0WmIVO1n97nCXS4nsTJq6GSxOlig4NaNU9M0
 sc19+Vw565Tew==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 6E3B0A00A7;
 Mon,  5 Aug 2019 16:45:28 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 24/26] net: stmmac: Add support for VLAN Insertion
 Offload
Date: Mon,  5 Aug 2019 18:44:51 +0200
Message-Id: <439d215a9f5e3594fe85560ba4b1b5496eb93b2f.1565022597.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_174552_709194_D5CB801E 
X-CRM114-Status: GOOD (  24.70  )
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

Adds the logic to insert a given VLAN ID in a packet. This is offloaded
to HW and its descriptor based. For now, only XGMAC implements the
necessary callbacks.

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
 drivers/net/ethernet/stmicro/stmmac/common.h       |  8 ++++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     | 15 +++++++
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    | 13 ++++++
 .../net/ethernet/stmicro/stmmac/dwxgmac2_descs.c   | 36 ++++++++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |  2 +
 drivers/net/ethernet/stmicro/stmmac/hwif.h         | 10 +++++
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  | 49 +++++++++++++++++++++-
 7 files changed, 132 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/common.h b/drivers/net/ethernet/stmicro/stmmac/common.h
index 1303ec81fd3d..49aa56ca09cc 100644
--- a/drivers/net/ethernet/stmicro/stmmac/common.h
+++ b/drivers/net/ethernet/stmicro/stmmac/common.h
@@ -358,6 +358,8 @@ struct dma_features {
 	unsigned int rssen;
 	unsigned int vlhash;
 	unsigned int sphen;
+	unsigned int vlins;
+	unsigned int dvlan;
 };
 
 /* GMAC TX FIFO is 8K, Rx FIFO is 16K */
@@ -389,6 +391,12 @@ struct dma_features {
 #define STMMAC_RSS_HASH_KEY_SIZE	40
 #define STMMAC_RSS_MAX_TABLE_SIZE	256
 
+/* VLAN */
+#define STMMAC_VLAN_NONE	0x0
+#define STMMAC_VLAN_REMOVE	0x1
+#define STMMAC_VLAN_INSERT	0x2
+#define STMMAC_VLAN_REPLACE	0x3
+
 extern const struct stmmac_desc_ops enh_desc_ops;
 extern const struct stmmac_desc_ops ndesc_ops;
 
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index 75e5374c4161..07372ac3bc2e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -63,6 +63,11 @@
 #define XGMAC_VLAN_ETV			BIT(16)
 #define XGMAC_VLAN_VID			GENMASK(15, 0)
 #define XGMAC_VLAN_HASH_TABLE		0x00000058
+#define XGMAC_VLAN_INCL			0x00000060
+#define XGMAC_VLAN_VLTI			BIT(20)
+#define XGMAC_VLAN_CSVL			BIT(19)
+#define XGMAC_VLAN_VLC			GENMASK(17, 16)
+#define XGMAC_VLAN_VLC_SHIFT		16
 #define XGMAC_RXQ_CTRL0			0x000000a0
 #define XGMAC_RXQEN(x)			GENMASK((x) * 2 + 1, (x) * 2)
 #define XGMAC_RXQEN_SHIFT(x)		((x) * 2)
@@ -128,6 +133,7 @@
 #define XGMAC_HWFEAT_RXQCNT		GENMASK(3, 0)
 #define XGMAC_HW_FEATURE3		0x00000128
 #define XGMAC_HWFEAT_ASP		GENMASK(15, 14)
+#define XGMAC_HWFEAT_DVLAN		BIT(13)
 #define XGMAC_HWFEAT_FRPES		GENMASK(12, 11)
 #define XGMAC_HWFEAT_FRPPB		GENMASK(10, 9)
 #define XGMAC_HWFEAT_FRPSEL		BIT(3)
@@ -337,10 +343,14 @@
 #define XGMAC_REGSIZE			((0x0000317c + (0x80 * 15)) / 4)
 
 /* Descriptors */
+#define XGMAC_TDES2_IVT			GENMASK(31, 16)
+#define XGMAC_TDES2_IVT_SHIFT		16
 #define XGMAC_TDES2_IOC			BIT(31)
 #define XGMAC_TDES2_TTSE		BIT(30)
 #define XGMAC_TDES2_B2L			GENMASK(29, 16)
 #define XGMAC_TDES2_B2L_SHIFT		16
+#define XGMAC_TDES2_VTIR		GENMASK(15, 14)
+#define XGMAC_TDES2_VTIR_SHIFT		14
 #define XGMAC_TDES2_B1L			GENMASK(13, 0)
 #define XGMAC_TDES3_OWN			BIT(31)
 #define XGMAC_TDES3_CTXT		BIT(30)
@@ -353,10 +363,15 @@
 #define XGMAC_TDES3_SAIC_SHIFT		23
 #define XGMAC_TDES3_THL			GENMASK(22, 19)
 #define XGMAC_TDES3_THL_SHIFT		19
+#define XGMAC_TDES3_IVTIR		GENMASK(19, 18)
+#define XGMAC_TDES3_IVTIR_SHIFT		18
 #define XGMAC_TDES3_TSE			BIT(18)
+#define XGMAC_TDES3_IVLTV		BIT(17)
 #define XGMAC_TDES3_CIC			GENMASK(17, 16)
 #define XGMAC_TDES3_CIC_SHIFT		16
 #define XGMAC_TDES3_TPL			GENMASK(17, 0)
+#define XGMAC_TDES3_VLTV		BIT(16)
+#define XGMAC_TDES3_VT			GENMASK(15, 0)
 #define XGMAC_TDES3_FL			GENMASK(14, 0)
 #define XGMAC_RDES2_HL			GENMASK(9, 0)
 #define XGMAC_RDES3_OWN			BIT(31)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index 353dca543672..2cc9c3a1ae29 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -1157,6 +1157,18 @@ static void dwxgmac2_sarc_configure(void __iomem *ioaddr, int val)
 	writel(value, ioaddr + XGMAC_TX_CONFIG);
 }
 
+static void dwxgmac2_enable_vlan(struct mac_device_info *hw, u32 type)
+{
+	void __iomem *ioaddr = hw->pcsr;
+	u32 value;
+
+	value = readl(ioaddr + XGMAC_VLAN_INCL);
+	value |= XGMAC_VLAN_VLTI;
+	value &= ~XGMAC_VLAN_VLC;
+	value |= (type << XGMAC_VLAN_VLC_SHIFT) & XGMAC_VLAN_VLC;
+	writel(value, ioaddr + XGMAC_VLAN_INCL);
+}
+
 const struct stmmac_ops dwxgmac210_ops = {
 	.core_init = dwxgmac2_core_init,
 	.set_mac = dwxgmac2_set_mac,
@@ -1196,6 +1208,7 @@ const struct stmmac_ops dwxgmac210_ops = {
 	.get_mac_tx_timestamp = dwxgmac2_get_mac_tx_timestamp,
 	.flex_pps_config = dwxgmac2_flex_pps_config,
 	.sarc_configure = dwxgmac2_sarc_configure,
+	.enable_vlan = dwxgmac2_enable_vlan,
 };
 
 int dwxgmac2_setup(struct stmmac_priv *priv)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c
index 3c2abfb12820..0e34463eb2fa 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c
@@ -306,6 +306,40 @@ static void dwxgmac2_set_sarc(struct dma_desc *p, u32 sarc_type)
 	p->des3 |= cpu_to_le32(sarc_type & XGMAC_TDES3_SAIC);
 }
 
+static void dwxgmac2_set_vlan_tag(struct dma_desc *p, u16 tag, u16 inner_tag,
+				  u32 inner_type)
+{
+	p->des0 = 0;
+	p->des1 = 0;
+	if (inner_tag) {
+		u32 des = inner_tag << XGMAC_TDES2_IVT_SHIFT;
+
+		des &= XGMAC_TDES2_IVT;
+		p->des2 = cpu_to_le32(des);
+
+		des = inner_type << XGMAC_TDES3_IVTIR_SHIFT;
+		des &= XGMAC_TDES3_IVTIR;
+		p->des3 = cpu_to_le32(des | XGMAC_TDES3_IVLTV);
+	} else {
+		p->des2 = 0;
+		p->des3 = 0;
+	}
+
+	if (tag) {
+		p->des3 = cpu_to_le32((tag & XGMAC_TDES3_VT) | XGMAC_TDES3_VLTV);
+	} else {
+		p->des3 = 0;
+	}
+
+	p->des3 |= cpu_to_le32(XGMAC_TDES3_CTXT);
+}
+
+static void dwxgmac2_set_vlan(struct dma_desc *p, u32 type)
+{
+	type <<= XGMAC_TDES2_VTIR_SHIFT;
+	p->des2 |= cpu_to_le32(type & XGMAC_TDES2_VTIR);
+}
+
 const struct stmmac_desc_ops dwxgmac210_desc_ops = {
 	.tx_status = dwxgmac2_get_tx_status,
 	.rx_status = dwxgmac2_get_rx_status,
@@ -333,4 +367,6 @@ const struct stmmac_desc_ops dwxgmac210_desc_ops = {
 	.get_rx_header_len = dwxgmac2_get_rx_header_len,
 	.set_sec_addr = dwxgmac2_set_sec_addr,
 	.set_sarc = dwxgmac2_set_sarc,
+	.set_vlan_tag = dwxgmac2_set_vlan_tag,
+	.set_vlan = dwxgmac2_set_vlan,
 };
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index f2d5901fbaff..64956465c030 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -359,6 +359,7 @@ static void dwxgmac2_get_hw_feature(void __iomem *ioaddr,
 
 	/*  MAC HW feature 0 */
 	hw_cap = readl(ioaddr + XGMAC_HW_FEATURE0);
+	dma_cap->vlins = (hw_cap & XGMAC_HWFEAT_SAVLANINS) >> 27;
 	dma_cap->rx_coe = (hw_cap & XGMAC_HWFEAT_RXCOESEL) >> 16;
 	dma_cap->tx_coe = (hw_cap & XGMAC_HWFEAT_TXCOESEL) >> 14;
 	dma_cap->eee = (hw_cap & XGMAC_HWFEAT_EEESEL) >> 13;
@@ -413,6 +414,7 @@ static void dwxgmac2_get_hw_feature(void __iomem *ioaddr,
 	/* MAC HW feature 3 */
 	hw_cap = readl(ioaddr + XGMAC_HW_FEATURE3);
 	dma_cap->asp = (hw_cap & XGMAC_HWFEAT_ASP) >> 14;
+	dma_cap->dvlan = (hw_cap & XGMAC_HWFEAT_DVLAN) >> 13;
 	dma_cap->frpes = (hw_cap & XGMAC_HWFEAT_FRPES) >> 11;
 	dma_cap->frpbs = (hw_cap & XGMAC_HWFEAT_FRPPB) >> 9;
 	dma_cap->frpsel = (hw_cap & XGMAC_HWFEAT_FRPSEL) >> 3;
diff --git a/drivers/net/ethernet/stmicro/stmmac/hwif.h b/drivers/net/ethernet/stmicro/stmmac/hwif.h
index e54864cde01b..9435b312495d 100644
--- a/drivers/net/ethernet/stmicro/stmmac/hwif.h
+++ b/drivers/net/ethernet/stmicro/stmmac/hwif.h
@@ -92,6 +92,9 @@ struct stmmac_desc_ops {
 	int (*get_rx_header_len)(struct dma_desc *p, unsigned int *len);
 	void (*set_sec_addr)(struct dma_desc *p, dma_addr_t addr);
 	void (*set_sarc)(struct dma_desc *p, u32 sarc_type);
+	void (*set_vlan_tag)(struct dma_desc *p, u16 tag, u16 inner_tag,
+			     u32 inner_type);
+	void (*set_vlan)(struct dma_desc *p, u32 type);
 };
 
 #define stmmac_init_rx_desc(__priv, __args...) \
@@ -150,6 +153,10 @@ struct stmmac_desc_ops {
 	stmmac_do_void_callback(__priv, desc, set_sec_addr, __args)
 #define stmmac_set_desc_sarc(__priv, __args...) \
 	stmmac_do_void_callback(__priv, desc, set_sarc, __args)
+#define stmmac_set_desc_vlan_tag(__priv, __args...) \
+	stmmac_do_void_callback(__priv, desc, set_vlan_tag, __args)
+#define stmmac_set_desc_vlan(__priv, __args...) \
+	stmmac_do_void_callback(__priv, desc, set_vlan, __args)
 
 struct stmmac_dma_cfg;
 struct dma_features;
@@ -351,6 +358,7 @@ struct stmmac_ops {
 	/* VLAN */
 	void (*update_vlan_hash)(struct mac_device_info *hw, u32 hash,
 				 bool is_double);
+	void (*enable_vlan)(struct mac_device_info *hw, u32 type);
 	/* TX Timestamp */
 	int (*get_mac_tx_timestamp)(struct mac_device_info *hw, u64 *ts);
 	/* Source Address Insertion / Replacement */
@@ -429,6 +437,8 @@ struct stmmac_ops {
 	stmmac_do_callback(__priv, mac, rss_configure, __args)
 #define stmmac_update_vlan_hash(__priv, __args...) \
 	stmmac_do_void_callback(__priv, mac, update_vlan_hash, __args)
+#define stmmac_enable_vlan(__priv, __args...) \
+	stmmac_do_void_callback(__priv, mac, enable_vlan, __args)
 #define stmmac_get_mac_tx_timestamp(__priv, __args...) \
 	stmmac_do_callback(__priv, mac, get_mac_tx_timestamp, __args)
 #define stmmac_sarc_configure(__priv, __args...) \
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 62d206ea7e7a..dca44ee905e8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -2800,6 +2800,33 @@ static int stmmac_release(struct net_device *dev)
 	return 0;
 }
 
+static bool stmmac_vlan_insert(struct stmmac_priv *priv, struct sk_buff *skb,
+			       struct stmmac_tx_queue *tx_q)
+{
+	u16 tag = 0x0, inner_tag = 0x0;
+	u32 inner_type = 0x0;
+	struct dma_desc *p;
+
+	if (!priv->dma_cap.vlins)
+		return false;
+	if (!skb_vlan_tag_present(skb))
+		return false;
+	if (skb->vlan_proto == htons(ETH_P_8021AD)) {
+		inner_tag = skb_vlan_tag_get(skb);
+		inner_type = STMMAC_VLAN_INSERT;
+	} else {
+		tag = skb_vlan_tag_get(skb);
+	}
+
+	p = tx_q->dma_tx + tx_q->cur_tx;
+	if (stmmac_set_desc_vlan_tag(priv, p, tag, inner_tag, inner_type))
+		return false;
+
+	stmmac_set_tx_owner(priv, p);
+	tx_q->cur_tx = STMMAC_GET_ENTRY(tx_q->cur_tx, DMA_TX_SIZE);
+	return true;
+}
+
 /**
  *  stmmac_tso_allocator - close entry point of the driver
  *  @priv: driver private structure
@@ -2879,12 +2906,13 @@ static netdev_tx_t stmmac_tso_xmit(struct sk_buff *skb, struct net_device *dev)
 	struct stmmac_priv *priv = netdev_priv(dev);
 	int nfrags = skb_shinfo(skb)->nr_frags;
 	u32 queue = skb_get_queue_mapping(skb);
-	unsigned int first_entry;
 	struct stmmac_tx_queue *tx_q;
+	unsigned int first_entry;
 	int tmp_pay_len = 0;
 	u32 pay_len, mss;
 	u8 proto_hdr_len;
 	dma_addr_t des;
+	bool has_vlan;
 	int i;
 
 	tx_q = &priv->tx_queue[queue];
@@ -2926,12 +2954,18 @@ static netdev_tx_t stmmac_tso_xmit(struct sk_buff *skb, struct net_device *dev)
 			skb->data_len);
 	}
 
+	/* Check if VLAN can be inserted by HW */
+	has_vlan = stmmac_vlan_insert(priv, skb, tx_q);
+
 	first_entry = tx_q->cur_tx;
 	WARN_ON(tx_q->tx_skbuff[first_entry]);
 
 	desc = tx_q->dma_tx + first_entry;
 	first = desc;
 
+	if (has_vlan)
+		stmmac_set_desc_vlan(priv, first, STMMAC_VLAN_INSERT);
+
 	/* first descriptor: fill Headers on Buf1 */
 	des = dma_map_single(priv->device, skb->data, skb_headlen(skb),
 			     DMA_TO_DEVICE);
@@ -3091,6 +3125,7 @@ static netdev_tx_t stmmac_xmit(struct sk_buff *skb, struct net_device *dev)
 	unsigned int first_entry;
 	unsigned int enh_desc;
 	dma_addr_t des;
+	bool has_vlan;
 	int entry;
 
 	tx_q = &priv->tx_queue[queue];
@@ -3116,6 +3151,9 @@ static netdev_tx_t stmmac_xmit(struct sk_buff *skb, struct net_device *dev)
 		return NETDEV_TX_BUSY;
 	}
 
+	/* Check if VLAN can be inserted by HW */
+	has_vlan = stmmac_vlan_insert(priv, skb, tx_q);
+
 	entry = tx_q->cur_tx;
 	first_entry = entry;
 	WARN_ON(tx_q->tx_skbuff[first_entry]);
@@ -3129,6 +3167,9 @@ static netdev_tx_t stmmac_xmit(struct sk_buff *skb, struct net_device *dev)
 
 	first = desc;
 
+	if (has_vlan)
+		stmmac_set_desc_vlan(priv, first, STMMAC_VLAN_INSERT);
+
 	enh_desc = priv->plat->enh_desc;
 	/* To program the descriptors according to the size of the frame */
 	if (enh_desc)
@@ -4498,6 +4539,12 @@ int stmmac_dvr_probe(struct device *device,
 		ndev->features |= NETIF_F_HW_VLAN_CTAG_FILTER;
 		ndev->features |= NETIF_F_HW_VLAN_STAG_FILTER;
 	}
+	if (priv->dma_cap.vlins) {
+		stmmac_enable_vlan(priv, priv->hw, STMMAC_VLAN_INSERT);
+		ndev->features |= NETIF_F_HW_VLAN_CTAG_TX;
+		if (priv->dma_cap.dvlan)
+			ndev->features |= NETIF_F_HW_VLAN_STAG_TX;
+	}
 #endif
 	priv->msg_enable = netif_msg_init(debug, default_msg_level);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
