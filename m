Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6339FAED6D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 16:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a/MQzP9XAZ17gcaktIELIl8pMw7z46BTWLFAjbd44Vo=; b=jz9I2AERlSzYr/5KDTdRWLT3Af
	Vs8wcv/pimb7wmOcF4eVanU9EVew6iCyul9A3+TkqJM45BThNK6G0ZlKYjfTwJout8XKzAWZwN0b1
	+IU7j+VvTzOXzMcSl44Hi8u6e0ZDX2tD/vLVyRKBR9jeYw5cuSuWYFnzubR4XlBafoKU/7NXqQxpr
	td32NMi/TdbbKX/oMXjwiZUKa7drzM2Hs26BOyGyxbE1z01JBPOJzlZ7bzm3TK7VWmbMXYLYJtWgf
	i7xUKsOFsPapoKBdMCuKZMb0pWPXdGTSwNID8TMYYoQHkuoKnU9683qAaODJs1452M4w9mVZIBPnz
	RvAJKS0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hMT-0003hS-RL; Tue, 10 Sep 2019 14:43:17 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hKn-0001yg-7r
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 14:41:38 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 55FC0C2B53;
 Tue, 10 Sep 2019 14:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568126492; bh=k7i2LIyV7LDIsI6c/mIJA82Jt8oRa7SZ14gdZwpgnzQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=GT8lNuPEF+IGHxeJrxoakh2f6pBPKJ8bRrTnanH8xqxv2md2aoEDwo8J8lCvVVdgB
 ji4XHJtmI8k+5pseKyepOsC+Gpp4E5//xaJwjj03QXBQoWReBGkmci2gJeQ3x1qmAO
 YVskWAP52i0hzwr1F0X5QcRU1HzqGYguiA4labidVaQqARpg8Q4nBa/7zo0lcgrh2p
 j+at4NSIz+aObQA4Y4/e77umsQGjNfizRjp/RSvj3XgIlo9txiqsVQ/2OzPCFD4Zc5
 FhiXrID3ppkSXMPvy7XvFpX/sOaX9cVFTBOO2DBIwtNt49idd1NLetQ/StKOrbFJFh
 5Rv/lwqdZlq3w==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id EECDCA0067;
 Tue, 10 Sep 2019 14:41:29 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 4/6] net: stmmac: Add support for SA
 Insertion/Replacement in GMAC4+
Date: Tue, 10 Sep 2019 16:41:25 +0200
Message-Id: <34f683da6f4774a1336174a213d035483e9e088f.1568126224.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1568126224.git.joabreu@synopsys.com>
References: <cover.1568126224.git.joabreu@synopsys.com>
In-Reply-To: <cover.1568126224.git.joabreu@synopsys.com>
References: <cover.1568126224.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_074133_335077_3AEC8D4B 
X-CRM114-Status: GOOD (  14.25  )
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

Add the support for Source Address Insertion and Replacement in GMAC4
and GMAC5 cores. Two methods are supported: Descriptor based and
register based.

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
 drivers/net/ethernet/stmicro/stmmac/dwmac4.h       |  3 +++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c  | 13 +++++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c |  8 ++++++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h |  1 +
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c   |  1 +
 5 files changed, 26 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
index 4dfa69850040..fad121cbfe0e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
@@ -160,6 +160,8 @@ enum power_event {
 #define GMAC_DEBUG_RPESTS		BIT(0)
 
 /* MAC config */
+#define GMAC_CONFIG_SARC		GENMASK(30, 28)
+#define GMAC_CONFIG_SARC_SHIFT		28
 #define GMAC_CONFIG_IPC			BIT(27)
 #define GMAC_CONFIG_2K			BIT(22)
 #define GMAC_CONFIG_ACS			BIT(20)
@@ -175,6 +177,7 @@ enum power_event {
 #define GMAC_CONFIG_RE			BIT(0)
 
 /* MAC HW features0 bitmap */
+#define GMAC_HW_FEAT_SAVLANINS		BIT(27)
 #define GMAC_HW_FEAT_ADDMAC		BIT(18)
 #define GMAC_HW_FEAT_RXCOESEL		BIT(16)
 #define GMAC_HW_FEAT_TXCOSEL		BIT(14)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
index 5b43a8df1536..73dbfd810fca 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
@@ -759,6 +759,16 @@ static void dwmac4_update_vlan_hash(struct mac_device_info *hw, u32 hash,
 	}
 }
 
+static void dwmac4_sarc_configure(void __iomem *ioaddr, int val)
+{
+	u32 value = readl(ioaddr + GMAC_CONFIG);
+
+	value &= ~GMAC_CONFIG_SARC;
+	value |= val << GMAC_CONFIG_SARC_SHIFT;
+
+	writel(value, ioaddr + GMAC_CONFIG);
+}
+
 const struct stmmac_ops dwmac4_ops = {
 	.core_init = dwmac4_core_init,
 	.set_mac = stmmac_set_mac,
@@ -790,6 +800,7 @@ const struct stmmac_ops dwmac4_ops = {
 	.set_filter = dwmac4_set_filter,
 	.set_mac_loopback = dwmac4_set_mac_loopback,
 	.update_vlan_hash = dwmac4_update_vlan_hash,
+	.sarc_configure = dwmac4_sarc_configure,
 };
 
 const struct stmmac_ops dwmac410_ops = {
@@ -823,6 +834,7 @@ const struct stmmac_ops dwmac410_ops = {
 	.set_filter = dwmac4_set_filter,
 	.set_mac_loopback = dwmac4_set_mac_loopback,
 	.update_vlan_hash = dwmac4_update_vlan_hash,
+	.sarc_configure = dwmac4_sarc_configure,
 };
 
 const struct stmmac_ops dwmac510_ops = {
@@ -861,6 +873,7 @@ const struct stmmac_ops dwmac510_ops = {
 	.flex_pps_config = dwmac5_flex_pps_config,
 	.set_mac_loopback = dwmac4_set_mac_loopback,
 	.update_vlan_hash = dwmac4_update_vlan_hash,
+	.sarc_configure = dwmac4_sarc_configure,
 };
 
 int dwmac4_setup(struct stmmac_priv *priv)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c
index dbde23e7e169..8edc9f8787cc 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c
@@ -443,6 +443,13 @@ static void dwmac4_clear(struct dma_desc *p)
 	p->des3 = 0;
 }
 
+static void dwmac4_set_sarc(struct dma_desc *p, u32 sarc_type)
+{
+	sarc_type <<= TDES3_SA_INSERT_CTRL_SHIFT;
+
+	p->des3 |= cpu_to_le32(sarc_type & TDES3_SA_INSERT_CTRL_MASK);
+}
+
 static int set_16kib_bfsize(int mtu)
 {
 	int ret = 0;
@@ -476,6 +483,7 @@ const struct stmmac_desc_ops dwmac4_desc_ops = {
 	.get_addr = dwmac4_get_addr,
 	.set_addr = dwmac4_set_addr,
 	.clear = dwmac4_clear,
+	.set_sarc = dwmac4_set_sarc,
 };
 
 const struct stmmac_mode_ops dwmac4_ring_mode_ops = {
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h b/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h
index f58191174287..6089d76a00d3 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h
@@ -32,6 +32,7 @@
 #define TDES3_HDR_LEN_SHIFT		19
 #define TDES3_SLOT_NUMBER_MASK		GENMASK(22, 19)
 #define TDES3_SA_INSERT_CTRL_MASK	GENMASK(25, 23)
+#define TDES3_SA_INSERT_CTRL_SHIFT	23
 #define TDES3_CRC_PAD_CTRL_MASK		GENMASK(27, 26)
 
 /* TDES3 (write back format) */
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
index 2456f421aac9..82d9761b2df2 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
@@ -348,6 +348,7 @@ static void dwmac4_get_hw_feature(void __iomem *ioaddr,
 	/* TX and RX csum */
 	dma_cap->tx_coe = (hw_cap & GMAC_HW_FEAT_TXCOSEL) >> 14;
 	dma_cap->rx_coe =  (hw_cap & GMAC_HW_FEAT_RXCOESEL) >> 16;
+	dma_cap->vlins = (hw_cap & GMAC_HW_FEAT_SAVLANINS) >> 27;
 
 	/* MAC HW feature1 */
 	hw_cap = readl(ioaddr + GMAC_HW_FEATURE1);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
