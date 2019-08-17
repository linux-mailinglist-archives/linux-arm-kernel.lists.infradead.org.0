Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 757B59128E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 20:56:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3ok3sgYWzGIhtW0bsek2Crxrxx55FpD7OcosTtrxVek=; b=lpJ4GGdWvBxfLZBMhhv+6w2RWQ
	M6X+WW0Fmme7DnFTW4I851GyjUyjAXCgJ0k6ZQLdViydOWOziyIBQjoQGhp2a4FgamfI9TPu1/0JA
	QUoR1ZqiBWMiN9ipnawI+zRV5KaZQ/L7kYsIGq2N+BH/2u2tX+RlX3L5g8ZAROtsClPjBnadXcETE
	5hWUWMcxveAuEIXSb3M4yhw6wp/8ESiWf8UzYyC1GcZd+iLpyl4ANtrmo5C5sxyzs1Ar3PR17FEfz
	aUhMUyNIy0lShMm7gvwU7RZh6DMRdMkej0EvKSQ7LSZHCkVgZaH537lwRRlod0amkHTEQUnVrOe0e
	GdPp8j3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz3sP-0001U2-8b; Sat, 17 Aug 2019 18:56:33 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz3qt-0007Zc-C6
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 18:55:03 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 21174C0E46;
 Sat, 17 Aug 2019 18:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1566068097; bh=TyBB8Im+Ik9AiInl81fnAQZCJKYLLe9FQ1JX6ZHXHVk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=Z7uh39ZeT8OL6oJSHhYPO/TETO29h0BWiVkaTNV6vv5A1WdxfI5pTXL0ogxodB8ig
 NnFQ9mQ7dhCe7rRZ1f3GgDvOrpu6wfuB0Rgc5ZOLe7nMmskrTUaMSJSxUJ6bJWTl2O
 HAVKP7QuvQzIp2zfWRGone5CL+RXe+9Xqp6AXqyJ12DT2wMNgyH6CP3jUzpiN/uzc4
 k+BuJ/hyDX+dPkS9Jc5hQOxGaoWKOKJtvoXOyN5I235+DKBj9Vx1PdrNR5USJU9P23
 BI165/yaBycfaKOvab8Uj3cGA4bL8OxkDWr6Xeko/4aCc48/93cSLpVO8xqdvn3bI+
 IXhiwBf+9Yg0A==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id D0B94A0074;
 Sat, 17 Aug 2019 18:54:55 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v3 08/12] net: stmmac: Add support for SA
 Insertion/Replacement in XGMAC cores
Date: Sat, 17 Aug 2019 20:54:47 +0200
Message-Id: <7c6cc7fa190609d04d0fccbb4c0fccf3dfed159d.1566067803.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1566067802.git.joabreu@synopsys.com>
References: <cover.1566067802.git.joabreu@synopsys.com>
In-Reply-To: <cover.1566067802.git.joabreu@synopsys.com>
References: <cover.1566067802.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_115459_430375_1985A2EA 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Jakub Kicinski <jakub.kicinski@netronome.com>,
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

Add the support for Source Address Insertion and Replacement in XGMAC
cores. Two methods are supported: Descriptor based and register based.

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
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h       |  2 ++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c  | 11 +++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c | 10 +++++++++-
 drivers/net/ethernet/stmicro/stmmac/hwif.h           |  7 +++++++
 drivers/net/ethernet/stmicro/stmmac/stmmac.h         |  1 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c    |  6 ++++++
 6 files changed, 36 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index 7fed3d2d4a95..3fb023953023 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -337,6 +337,8 @@
 #define XGMAC_TDES3_CPC			GENMASK(27, 26)
 #define XGMAC_TDES3_CPC_SHIFT		26
 #define XGMAC_TDES3_TCMSSV		BIT(26)
+#define XGMAC_TDES3_SAIC		GENMASK(25, 23)
+#define XGMAC_TDES3_SAIC_SHIFT		23
 #define XGMAC_TDES3_THL			GENMASK(22, 19)
 #define XGMAC_TDES3_THL_SHIFT		19
 #define XGMAC_TDES3_TSE			BIT(18)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index a161285340c6..d0e7b62cc2ae 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -1075,6 +1075,16 @@ static int dwxgmac2_flex_pps_config(void __iomem *ioaddr, int index,
 	return 0;
 }
 
+static void dwxgmac2_sarc_configure(void __iomem *ioaddr, int val)
+{
+	u32 value = readl(ioaddr + XGMAC_TX_CONFIG);
+
+	value &= ~XGMAC_CONFIG_SARC;
+	value |= val << XGMAC_CONFIG_SARC_SHIFT;
+
+	writel(value, ioaddr + XGMAC_TX_CONFIG);
+}
+
 const struct stmmac_ops dwxgmac210_ops = {
 	.core_init = dwxgmac2_core_init,
 	.set_mac = dwxgmac2_set_mac,
@@ -1113,6 +1123,7 @@ const struct stmmac_ops dwxgmac210_ops = {
 	.rxp_config = dwxgmac3_rxp_config,
 	.get_mac_tx_timestamp = dwxgmac2_get_mac_tx_timestamp,
 	.flex_pps_config = dwxgmac2_flex_pps_config,
+	.sarc_configure = dwxgmac2_sarc_configure,
 };
 
 int dwxgmac2_setup(struct stmmac_priv *priv)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c
index 41985a2d7380..ab11e73ac6b1 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c
@@ -148,7 +148,7 @@ static void dwxgmac2_prepare_tx_desc(struct dma_desc *p, int is_fs, int len,
 
 	p->des2 |= cpu_to_le32(len & XGMAC_TDES2_B1L);
 
-	tdes3 = tot_pkt_len & XGMAC_TDES3_FL;
+	tdes3 |= tot_pkt_len & XGMAC_TDES3_FL;
 	if (is_fs)
 		tdes3 |= XGMAC_TDES3_FD;
 	else
@@ -298,6 +298,13 @@ static void dwxgmac2_set_sec_addr(struct dma_desc *p, dma_addr_t addr)
 	p->des3 = cpu_to_le32(upper_32_bits(addr));
 }
 
+static void dwxgmac2_set_sarc(struct dma_desc *p, u32 sarc_type)
+{
+	sarc_type <<= XGMAC_TDES3_SAIC_SHIFT;
+
+	p->des3 |= cpu_to_le32(sarc_type & XGMAC_TDES3_SAIC);
+}
+
 const struct stmmac_desc_ops dwxgmac210_desc_ops = {
 	.tx_status = dwxgmac2_get_tx_status,
 	.rx_status = dwxgmac2_get_rx_status,
@@ -324,4 +331,5 @@ const struct stmmac_desc_ops dwxgmac210_desc_ops = {
 	.get_rx_hash = dwxgmac2_get_rx_hash,
 	.get_rx_header_len = dwxgmac2_get_rx_header_len,
 	.set_sec_addr = dwxgmac2_set_sec_addr,
+	.set_sarc = dwxgmac2_set_sarc,
 };
diff --git a/drivers/net/ethernet/stmicro/stmmac/hwif.h b/drivers/net/ethernet/stmicro/stmmac/hwif.h
index ed9fda50ee22..e54864cde01b 100644
--- a/drivers/net/ethernet/stmicro/stmmac/hwif.h
+++ b/drivers/net/ethernet/stmicro/stmmac/hwif.h
@@ -91,6 +91,7 @@ struct stmmac_desc_ops {
 			   enum pkt_hash_types *type);
 	int (*get_rx_header_len)(struct dma_desc *p, unsigned int *len);
 	void (*set_sec_addr)(struct dma_desc *p, dma_addr_t addr);
+	void (*set_sarc)(struct dma_desc *p, u32 sarc_type);
 };
 
 #define stmmac_init_rx_desc(__priv, __args...) \
@@ -147,6 +148,8 @@ struct stmmac_desc_ops {
 	stmmac_do_callback(__priv, desc, get_rx_header_len, __args)
 #define stmmac_set_desc_sec_addr(__priv, __args...) \
 	stmmac_do_void_callback(__priv, desc, set_sec_addr, __args)
+#define stmmac_set_desc_sarc(__priv, __args...) \
+	stmmac_do_void_callback(__priv, desc, set_sarc, __args)
 
 struct stmmac_dma_cfg;
 struct dma_features;
@@ -350,6 +353,8 @@ struct stmmac_ops {
 				 bool is_double);
 	/* TX Timestamp */
 	int (*get_mac_tx_timestamp)(struct mac_device_info *hw, u64 *ts);
+	/* Source Address Insertion / Replacement */
+	void (*sarc_configure)(void __iomem *ioaddr, int val);
 };
 
 #define stmmac_core_init(__priv, __args...) \
@@ -426,6 +431,8 @@ struct stmmac_ops {
 	stmmac_do_void_callback(__priv, mac, update_vlan_hash, __args)
 #define stmmac_get_mac_tx_timestamp(__priv, __args...) \
 	stmmac_do_callback(__priv, mac, get_mac_tx_timestamp, __args)
+#define stmmac_sarc_configure(__priv, __args...) \
+	stmmac_do_void_callback(__priv, mac, sarc_configure, __args)
 
 /* PTP and HW Timer helpers */
 struct stmmac_hwtimestamp {
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac.h b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
index 4597811fd325..dcb2e29a5717 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac.h
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
@@ -139,6 +139,7 @@ struct stmmac_priv {
 	bool tx_path_in_lpi_mode;
 	bool tso;
 	int sph;
+	u32 sarc_type;
 
 	unsigned int dma_buf_sz;
 	unsigned int rx_copybreak;
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index f2a198eda20b..8e38b053d9ab 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -3004,6 +3004,9 @@ static netdev_tx_t stmmac_tso_xmit(struct sk_buff *skb, struct net_device *dev)
 		priv->xstats.tx_set_ic_bit++;
 	}
 
+	if (priv->sarc_type)
+		stmmac_set_desc_sarc(priv, first, priv->sarc_type);
+
 	skb_tx_timestamp(skb);
 
 	if (unlikely((skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP) &&
@@ -3217,6 +3220,9 @@ static netdev_tx_t stmmac_xmit(struct sk_buff *skb, struct net_device *dev)
 		priv->xstats.tx_set_ic_bit++;
 	}
 
+	if (priv->sarc_type)
+		stmmac_set_desc_sarc(priv, first, priv->sarc_type);
+
 	skb_tx_timestamp(skb);
 
 	/* Ready to fill the first descriptor and set the OWN bit w/o any
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
