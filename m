Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A75AED58
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 16:42:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=32O5TYEfORyaY77zETaSU/WfWb777dhTM3zPir+YmCE=; b=hGu8a8lP/HEDar+RRAc9rQBWyI
	PizGAwg07+Q7Iijd6FDUwljMBQ/CbvUwjnmXVJBCQWIcc8XDNoKLCRsHBiIf0dQXSuacqQTnebcA/
	doCmSRFrun9i4cWxy/EHSEhLp3U6l0Jp4sq/Zt4+cERmumS4obiU1j5uO9ylfTvwQQjq1/JCdWICH
	z7HKxYoGB2nofaVoabONtfyo+KjywnMNxe3WTXy94XZILlRBtkNRiLsLvZyx3BaZ4S9wt0s+KsLzS
	KXtnc1Q2Ok//w4upKqSwi+XiOfK6OtpyR8ACh5dO7QsksTosAq35wW6Dh/odHxRuw4Tb5Tw1vkMye
	PRUmcmfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hLC-0002Ac-Gd; Tue, 10 Sep 2019 14:41:58 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hKn-0001yd-7n
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 14:41:35 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 883C2C0EAE;
 Tue, 10 Sep 2019 14:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568126492; bh=GWtr/P8Hs7+18/AeAOPuezwN/5/0xEL0VJoC6+IcDGc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=Yy6U6INYTBN/+nrTVdmhsOZ+3NVZ7lv9TQJulNVW1P9BMWdqjePJrYbRHuHFsCIn/
 LqdF0OI1235HlOLWxh63fG5dq8XfdjOyFMiIgy+rep7eKPUnFrO546D6IHWY0nQ/Ap
 9XJK3pBavC/7rzs1kn7mM2Sspse5F1zoCVWKoTqd0mvkh1YFSxh1LWR0U/2zNhQp9e
 JuvkLOB9y1vPZKKGKGETSl2SDtbPZeIXQkyRF1+53C9GVMm/8OIy17bZTD3uAjtOs9
 fd6aKMT88XZN7qRUDb09t6WasVpRb69mWQmB3UmTpaydLsZEZuTvxVb3Ijh1/ZVeRV
 QqAROIDRhsL/w==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id D5274A0061;
 Tue, 10 Sep 2019 14:41:29 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 2/6] net: stmmac: Add VLAN HASH filtering support in
 GMAC4+
Date: Tue, 10 Sep 2019 16:41:23 +0200
Message-Id: <b340435fe92674fd3ef33f3a7c43933cb451838a.1568126224.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1568126224.git.joabreu@synopsys.com>
References: <cover.1568126224.git.joabreu@synopsys.com>
In-Reply-To: <cover.1568126224.git.joabreu@synopsys.com>
References: <cover.1568126224.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_074133_311442_F3D6B54A 
X-CRM114-Status: GOOD (  14.44  )
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

Adds the support for VLAN HASH Filtering in GMAC4/5 cores.

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
 drivers/net/ethernet/stmicro/stmmac/dwmac4.h      | 11 ++++++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c | 31 +++++++++++++++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c  |  2 +-
 3 files changed, 43 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
index 03301ffc0391..4dfa69850040 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
@@ -16,6 +16,8 @@
 #define GMAC_CONFIG			0x00000000
 #define GMAC_PACKET_FILTER		0x00000008
 #define GMAC_HASH_TAB(x)		(0x10 + (x) * 4)
+#define GMAC_VLAN_TAG			0x00000050
+#define GMAC_VLAN_HASH_TABLE		0x00000058
 #define GMAC_RX_FLOW_CTRL		0x00000090
 #define GMAC_QX_TX_FLOW_CTRL(x)		(0x70 + x * 4)
 #define GMAC_TXQ_PRTY_MAP0		0x98
@@ -62,9 +64,18 @@
 #define GMAC_PACKET_FILTER_PM		BIT(4)
 #define GMAC_PACKET_FILTER_PCF		BIT(7)
 #define GMAC_PACKET_FILTER_HPF		BIT(10)
+#define GMAC_PACKET_FILTER_VTFE		BIT(16)
 
 #define GMAC_MAX_PERFECT_ADDRESSES	128
 
+/* MAC VLAN */
+#define GMAC_VLAN_EDVLP			BIT(26)
+#define GMAC_VLAN_VTHM			BIT(25)
+#define GMAC_VLAN_DOVLTC		BIT(20)
+#define GMAC_VLAN_ESVL			BIT(18)
+#define GMAC_VLAN_ETV			BIT(16)
+#define GMAC_VLAN_VID			GENMASK(15, 0)
+
 /* MAC RX Queue Enable */
 #define GMAC_RX_QUEUE_CLEAR(queue)	~(GENMASK(1, 0) << ((queue) * 2))
 #define GMAC_RX_AV_QUEUE_ENABLE(queue)	BIT((queue) * 2)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
index 596311a80d1c..5b43a8df1536 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
@@ -731,6 +731,34 @@ static void dwmac4_set_mac_loopback(void __iomem *ioaddr, bool enable)
 	writel(value, ioaddr + GMAC_CONFIG);
 }
 
+static void dwmac4_update_vlan_hash(struct mac_device_info *hw, u32 hash,
+				    bool is_double)
+{
+	void __iomem *ioaddr = hw->pcsr;
+
+	writel(hash, ioaddr + GMAC_VLAN_HASH_TABLE);
+
+	if (hash) {
+		u32 value = GMAC_VLAN_VTHM | GMAC_VLAN_ETV;
+		if (is_double) {
+			value |= GMAC_VLAN_EDVLP;
+			value |= GMAC_VLAN_ESVL;
+			value |= GMAC_VLAN_DOVLTC;
+		}
+
+		writel(value, ioaddr + GMAC_VLAN_TAG);
+	} else {
+		u32 value = readl(ioaddr + GMAC_VLAN_TAG);
+
+		value &= ~(GMAC_VLAN_VTHM | GMAC_VLAN_ETV);
+		value &= ~(GMAC_VLAN_EDVLP | GMAC_VLAN_ESVL);
+		value &= ~GMAC_VLAN_DOVLTC;
+		value &= ~GMAC_VLAN_VID;
+
+		writel(value, ioaddr + GMAC_VLAN_TAG);
+	}
+}
+
 const struct stmmac_ops dwmac4_ops = {
 	.core_init = dwmac4_core_init,
 	.set_mac = stmmac_set_mac,
@@ -761,6 +789,7 @@ const struct stmmac_ops dwmac4_ops = {
 	.debug = dwmac4_debug,
 	.set_filter = dwmac4_set_filter,
 	.set_mac_loopback = dwmac4_set_mac_loopback,
+	.update_vlan_hash = dwmac4_update_vlan_hash,
 };
 
 const struct stmmac_ops dwmac410_ops = {
@@ -793,6 +822,7 @@ const struct stmmac_ops dwmac410_ops = {
 	.debug = dwmac4_debug,
 	.set_filter = dwmac4_set_filter,
 	.set_mac_loopback = dwmac4_set_mac_loopback,
+	.update_vlan_hash = dwmac4_update_vlan_hash,
 };
 
 const struct stmmac_ops dwmac510_ops = {
@@ -830,6 +860,7 @@ const struct stmmac_ops dwmac510_ops = {
 	.rxp_config = dwmac5_rxp_config,
 	.flex_pps_config = dwmac5_flex_pps_config,
 	.set_mac_loopback = dwmac4_set_mac_loopback,
+	.update_vlan_hash = dwmac4_update_vlan_hash,
 };
 
 int dwmac4_setup(struct stmmac_priv *priv)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
index 3ed5508586ef..2456f421aac9 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
@@ -333,7 +333,7 @@ static void dwmac4_get_hw_feature(void __iomem *ioaddr,
 	dma_cap->mbps_10_100 = (hw_cap & GMAC_HW_FEAT_MIISEL);
 	dma_cap->mbps_1000 = (hw_cap & GMAC_HW_FEAT_GMIISEL) >> 1;
 	dma_cap->half_duplex = (hw_cap & GMAC_HW_FEAT_HDSEL) >> 2;
-	dma_cap->hash_filter = (hw_cap & GMAC_HW_FEAT_VLHASH) >> 4;
+	dma_cap->vlhash = (hw_cap & GMAC_HW_FEAT_VLHASH) >> 4;
 	dma_cap->multi_addr = (hw_cap & GMAC_HW_FEAT_ADDMAC) >> 18;
 	dma_cap->pcs = (hw_cap & GMAC_HW_FEAT_PCSSEL) >> 3;
 	dma_cap->sma_mdio = (hw_cap & GMAC_HW_FEAT_SMASEL) >> 5;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
