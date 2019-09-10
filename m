Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 501C2AED6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 16:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7Rw+OI3DBoPQJNcPZeq/kXAHNmuDwFwQVOH5MqjyRLI=; b=Yqz0193TpDFyKJNvNlEk1AaT6p
	T+evyJY9xIuFDf+8LmCHhoTu6EW/6kVhirmvRwz6KAJz5YxwbLW5ZXtNFb7bQ/50/6kQqy8HhHsaT
	3xsIcXXqm5Nxb86+UT+AU0mM1LI3wNV1hYSitZpfiklIrYok+n/Phimozgh3WzCxsWzMslcU9pNBR
	f/HGo+/QFk45TumI/oR5JBfD8zUMtlq+iaoL8ZlDwzAVL3Jri3FthRXo6HDsYe9BHtdyezGIFfs8A
	EICwKJwxLSOEjeRbhnITXd5HsaLO2ltbV5EV3+2yxmnGoWqpeY6k6P1s89qknZswF4ra4AUVP3Oub
	nND3VxNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hLw-00030R-Oe; Tue, 10 Sep 2019 14:42:44 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hKn-0001ya-7p
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 14:41:37 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 51791C2B50;
 Tue, 10 Sep 2019 14:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568126491; bh=vpC2LaVnSHpe6JlRbEIDa2bOrwXHEmXhM/4SypXpYqo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=f8MPfV91qgPx7+86kSMpLBVTZwGXAjNXJaNngvproKQM9MaUP5YivnzOFHTeiAvKs
 Zd3wcCIX5WPWimQfr5iOjn97hv192WMShCdyGEUPHoJHPYNhADOl60WDG+pgQXcNhC
 ys8KkWJJ/Fqa4lbO7ZIdkEdEtkUvCxmRqraSuH35oGb9zIEjddD/jgEGmwKdjIzAwL
 qXdJlohdQs3XNFWIPbYfTCmOm1F40OF2N8QXfgU5TwCja/ki6z5mAhHss0tS0z+4s2
 qGqnGgNTDpCW6bDhJB7Ex+MDXv38KJpmZUjrNsxLrGTvrw6iFA7Lt53KMd/AYpDQBP
 fTe8RUupPyQQw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 10EFFA006A;
 Tue, 10 Sep 2019 14:41:30 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 5/6] net: stmmac: Add support for VLAN Insertion
 Offload in GMAC4+
Date: Tue, 10 Sep 2019 16:41:26 +0200
Message-Id: <77be01eaccf369b78b70a1e80010e998780198fe.1568126224.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1568126224.git.joabreu@synopsys.com>
References: <cover.1568126224.git.joabreu@synopsys.com>
In-Reply-To: <cover.1568126224.git.joabreu@synopsys.com>
References: <cover.1568126224.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_074133_326354_57579E55 
X-CRM114-Status: GOOD (  14.54  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Adds support for TX VLAN Offload using descriptors based features
available in GMAC4/5.

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
 drivers/net/ethernet/stmicro/stmmac/dwmac4.h       |  6 ++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c  | 16 ++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c | 35 ++++++++++++++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h |  8 +++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c   |  1 +
 5 files changed, 66 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
index fad121cbfe0e..e88dac1dd765 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
@@ -19,6 +19,7 @@
 #define GMAC_VLAN_TAG			0x00000050
 #define GMAC_VLAN_HASH_TABLE		0x00000058
 #define GMAC_RX_FLOW_CTRL		0x00000090
+#define GMAC_VLAN_INCL			0x00000060
 #define GMAC_QX_TX_FLOW_CTRL(x)		(0x70 + x * 4)
 #define GMAC_TXQ_PRTY_MAP0		0x98
 #define GMAC_TXQ_PRTY_MAP1		0x9C
@@ -75,6 +76,10 @@
 #define GMAC_VLAN_ESVL			BIT(18)
 #define GMAC_VLAN_ETV			BIT(16)
 #define GMAC_VLAN_VID			GENMASK(15, 0)
+#define GMAC_VLAN_VLTI			BIT(20)
+#define GMAC_VLAN_CSVL			BIT(19)
+#define GMAC_VLAN_VLC			GENMASK(17, 16)
+#define GMAC_VLAN_VLC_SHIFT		16
 
 /* MAC RX Queue Enable */
 #define GMAC_RX_QUEUE_CLEAR(queue)	~(GENMASK(1, 0) << ((queue) * 2))
@@ -212,6 +217,7 @@ enum power_event {
 #define GMAC_HW_FEAT_FRPES		GENMASK(14, 13)
 #define GMAC_HW_FEAT_FRPBS		GENMASK(12, 11)
 #define GMAC_HW_FEAT_FRPSEL		BIT(10)
+#define GMAC_HW_FEAT_DVLAN		BIT(5)
 
 /* MAC HW ADDR regs */
 #define GMAC_HI_DCS			GENMASK(18, 16)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
index 73dbfd810fca..a99effe61325 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
@@ -769,6 +769,19 @@ static void dwmac4_sarc_configure(void __iomem *ioaddr, int val)
 	writel(value, ioaddr + GMAC_CONFIG);
 }
 
+static void dwmac4_enable_vlan(struct mac_device_info *hw, u32 type)
+{
+	void __iomem *ioaddr = hw->pcsr;
+	u32 value;
+
+	value = readl(ioaddr + GMAC_VLAN_INCL);
+	value |= GMAC_VLAN_VLTI;
+	value |= GMAC_VLAN_CSVL; /* Only use SVLAN */
+	value &= ~GMAC_VLAN_VLC;
+	value |= (type << GMAC_VLAN_VLC_SHIFT) & GMAC_VLAN_VLC;
+	writel(value, ioaddr + GMAC_VLAN_INCL);
+}
+
 const struct stmmac_ops dwmac4_ops = {
 	.core_init = dwmac4_core_init,
 	.set_mac = stmmac_set_mac,
@@ -801,6 +814,7 @@ const struct stmmac_ops dwmac4_ops = {
 	.set_mac_loopback = dwmac4_set_mac_loopback,
 	.update_vlan_hash = dwmac4_update_vlan_hash,
 	.sarc_configure = dwmac4_sarc_configure,
+	.enable_vlan = dwmac4_enable_vlan,
 };
 
 const struct stmmac_ops dwmac410_ops = {
@@ -835,6 +849,7 @@ const struct stmmac_ops dwmac410_ops = {
 	.set_mac_loopback = dwmac4_set_mac_loopback,
 	.update_vlan_hash = dwmac4_update_vlan_hash,
 	.sarc_configure = dwmac4_sarc_configure,
+	.enable_vlan = dwmac4_enable_vlan,
 };
 
 const struct stmmac_ops dwmac510_ops = {
@@ -874,6 +889,7 @@ const struct stmmac_ops dwmac510_ops = {
 	.set_mac_loopback = dwmac4_set_mac_loopback,
 	.update_vlan_hash = dwmac4_update_vlan_hash,
 	.sarc_configure = dwmac4_sarc_configure,
+	.enable_vlan = dwmac4_enable_vlan,
 };
 
 int dwmac4_setup(struct stmmac_priv *priv)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c
index 8edc9f8787cc..15eb1abba91d 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c
@@ -459,6 +459,39 @@ static int set_16kib_bfsize(int mtu)
 	return ret;
 }
 
+static void dwmac4_set_vlan_tag(struct dma_desc *p, u16 tag, u16 inner_tag,
+				u32 inner_type)
+{
+	p->des0 = 0;
+	p->des1 = 0;
+	p->des2 = 0;
+	p->des3 = 0;
+
+	/* Inner VLAN */
+	if (inner_type) {
+		u32 des = inner_tag << TDES2_IVT_SHIFT;
+
+		des &= TDES2_IVT_MASK;
+		p->des2 = cpu_to_le32(des);
+
+		des = inner_type << TDES3_IVTIR_SHIFT;
+		des &= TDES3_IVTIR_MASK;
+		p->des3 = cpu_to_le32(des | TDES3_IVLTV);
+	}
+
+	/* Outer VLAN */
+	p->des3 |= cpu_to_le32(tag & TDES3_VLAN_TAG);
+	p->des3 |= cpu_to_le32(TDES3_VLTV);
+
+	p->des3 |= cpu_to_le32(TDES3_CONTEXT_TYPE);
+}
+
+static void dwmac4_set_vlan(struct dma_desc *p, u32 type)
+{
+	type <<= TDES2_VLAN_TAG_SHIFT;
+	p->des2 |= cpu_to_le32(type & TDES2_VLAN_TAG_MASK);
+}
+
 const struct stmmac_desc_ops dwmac4_desc_ops = {
 	.tx_status = dwmac4_wrback_get_tx_status,
 	.rx_status = dwmac4_wrback_get_rx_status,
@@ -484,6 +517,8 @@ const struct stmmac_desc_ops dwmac4_desc_ops = {
 	.set_addr = dwmac4_set_addr,
 	.clear = dwmac4_clear,
 	.set_sarc = dwmac4_set_sarc,
+	.set_vlan_tag = dwmac4_set_vlan_tag,
+	.set_vlan = dwmac4_set_vlan,
 };
 
 const struct stmmac_mode_ops dwmac4_ring_mode_ops = {
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h b/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h
index 6089d76a00d3..0d7b3bbcd5a7 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h
@@ -18,13 +18,21 @@
 /* TDES2 (read format) */
 #define TDES2_BUFFER1_SIZE_MASK		GENMASK(13, 0)
 #define TDES2_VLAN_TAG_MASK		GENMASK(15, 14)
+#define TDES2_VLAN_TAG_SHIFT		14
 #define TDES2_BUFFER2_SIZE_MASK		GENMASK(29, 16)
 #define TDES2_BUFFER2_SIZE_MASK_SHIFT	16
+#define TDES3_IVTIR_MASK		GENMASK(19, 18)
+#define TDES3_IVTIR_SHIFT		18
+#define TDES3_IVLTV			BIT(17)
 #define TDES2_TIMESTAMP_ENABLE		BIT(30)
+#define TDES2_IVT_MASK			GENMASK(31, 16)
+#define TDES2_IVT_SHIFT			16
 #define TDES2_INTERRUPT_ON_COMPLETION	BIT(31)
 
 /* TDES3 (read format) */
 #define TDES3_PACKET_SIZE_MASK		GENMASK(14, 0)
+#define TDES3_VLAN_TAG			GENMASK(15, 0)
+#define TDES3_VLTV			BIT(16)
 #define TDES3_CHECKSUM_INSERTION_MASK	GENMASK(17, 16)
 #define TDES3_CHECKSUM_INSERTION_SHIFT	16
 #define TDES3_TCP_PKT_PAYLOAD_MASK	GENMASK(17, 0)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
index 82d9761b2df2..f3ca0236450d 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
@@ -386,6 +386,7 @@ static void dwmac4_get_hw_feature(void __iomem *ioaddr,
 	dma_cap->frpes = (hw_cap & GMAC_HW_FEAT_FRPES) >> 13;
 	dma_cap->frpbs = (hw_cap & GMAC_HW_FEAT_FRPBS) >> 11;
 	dma_cap->frpsel = (hw_cap & GMAC_HW_FEAT_FRPSEL) >> 10;
+	dma_cap->dvlan = (hw_cap & GMAC_HW_FEAT_DVLAN) >> 5;
 }
 
 /* Enable/disable TSO feature and set MSS */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
