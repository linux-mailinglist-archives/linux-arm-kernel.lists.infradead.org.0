Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 905C5822D6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 18:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mhqRMF5wKVxmb2WuY9E55vlMwZaXc4XxI6guBnBf4KM=; b=mCnKE40wd0RzYrs1TjbJYaAYTb
	xR7PBa1VXuxIrV0XfeyDUVbIUCU2zj1lli5M7DTgtWMf11uS8TOc3KgSyV1MOJ1sUGb8HitrqOJf/
	8d1Hi36A0iThLgYYZVGKyNo1x7ps+SGThl3nl6mw6d8oFpKmJK7LZC8bIA70ihpWaKnGpE9sipVG2
	pQalHoLdCrR3WnicfwzIHI0tpOKjeBYrl1iM9tTt9v1Xtp1Wz5cacnYx5Nl86j2a8KMmDt9Ynej2C
	V7t25lgaAZgfcfRqpB1TKQLcsH5aY5guskKb7d283K/qIQDzrxQw3Tlnr4MSUkTSGoKsNmBkLPg4b
	nVD4y4jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hug7n-0004ik-7G; Mon, 05 Aug 2019 16:46:19 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hug70-0004Cx-SE
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:45:34 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B5E47C01AB;
 Mon,  5 Aug 2019 16:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565023529; bh=m7/Y7ECczaxvbD4pGImV35AW25rI5Qnr5ZkFerzJ7ao=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=f3fDr9CDSRpdSNaNytQyuh82cV09K2/VA/rwXoSk/TcdD8g1PfJIltVayziAASG6g
 a0DCD/vf8Z1sjCS8ebbnuvMGLLGTFI21u4tqdnCi6EJFZJ8Q4whfc+QcUT/fNG+ncZ
 3WZqA7PGmjCVGRt8tb6iYw1VqRYjfEeoxdJ5n2fUvpuKQ8GIxugXfHaX8OE2FVr4yD
 EPeFbQs8OZKbn/QGk4tFvNfHgOFHTbxXMKdsRTrNth+ZBwS3zWXwXn8IpJsBGgkRCl
 n58FiQlB9On0caUep8VLnsw1P4bUUfuOiqF21NNX1fHzeAynKdMYR6cmMeOnnyr0Q7
 9MxiQMyAPxHGg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 6E0E4A0077;
 Mon,  5 Aug 2019 16:45:27 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 08/26] net: stmmac: Implement VLAN Hash Filtering in
 XGMAC
Date: Mon,  5 Aug 2019 18:44:35 +0200
Message-Id: <7c904c7e8856060b65d5a60cdb031893eadbfa09.1565022597.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_094530_972194_2B56C860 
X-CRM114-Status: GOOD (  18.52  )
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

Implement the VLAN Hash Filtering feature in XGMAC core.

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
 drivers/net/ethernet/stmicro/stmmac/common.h       |  1 +
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     | 10 +++
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    | 41 +++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |  1 +
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |  5 ++
 drivers/net/ethernet/stmicro/stmmac/stmmac.h       |  2 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  | 79 ++++++++++++++++++++++
 7 files changed, 139 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/common.h b/drivers/net/ethernet/stmicro/stmmac/common.h
index 45a997fe571c..e1e6f67041ec 100644
--- a/drivers/net/ethernet/stmicro/stmmac/common.h
+++ b/drivers/net/ethernet/stmicro/stmmac/common.h
@@ -355,6 +355,7 @@ struct dma_features {
 	unsigned int frpes;
 	unsigned int addr64;
 	unsigned int rssen;
+	unsigned int vlhash;
 };
 
 /* GMAC TX FIFO is 8K, Rx FIFO is 16K */
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index eb7c7726fcd6..29bbe8218600 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -44,6 +44,7 @@
 #define XGMAC_CORE_INIT_RX		0
 #define XGMAC_PACKET_FILTER		0x00000008
 #define XGMAC_FILTER_RA			BIT(31)
+#define XGMAC_FILTER_VTFE		BIT(16)
 #define XGMAC_FILTER_HPF		BIT(10)
 #define XGMAC_FILTER_PCF		BIT(7)
 #define XGMAC_FILTER_PM			BIT(4)
@@ -51,6 +52,14 @@
 #define XGMAC_FILTER_PR			BIT(0)
 #define XGMAC_HASH_TABLE(x)		(0x00000010 + (x) * 4)
 #define XGMAC_MAX_HASH_TABLE		8
+#define XGMAC_VLAN_TAG			0x00000050
+#define XGMAC_VLAN_EDVLP		BIT(26)
+#define XGMAC_VLAN_VTHM			BIT(25)
+#define XGMAC_VLAN_DOVLTC		BIT(20)
+#define XGMAC_VLAN_ESVL			BIT(18)
+#define XGMAC_VLAN_ETV			BIT(16)
+#define XGMAC_VLAN_VID			GENMASK(15, 0)
+#define XGMAC_VLAN_HASH_TABLE		0x00000058
 #define XGMAC_RXQ_CTRL0			0x000000a0
 #define XGMAC_RXQEN(x)			GENMASK((x) * 2 + 1, (x) * 2)
 #define XGMAC_RXQEN_SHIFT(x)		((x) * 2)
@@ -87,6 +96,7 @@
 #define XGMAC_HWFEAT_MMCSEL		BIT(8)
 #define XGMAC_HWFEAT_MGKSEL		BIT(7)
 #define XGMAC_HWFEAT_RWKSEL		BIT(6)
+#define XGMAC_HWFEAT_VLHASH		BIT(4)
 #define XGMAC_HWFEAT_GMIISEL		BIT(1)
 #define XGMAC_HW_FEATURE1		0x00000120
 #define XGMAC_HWFEAT_RSSEN		BIT(20)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index 04eec85acc59..e2dbebeb59e9 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -490,6 +490,46 @@ static int dwxgmac2_rss_configure(struct mac_device_info *hw,
 	return 0;
 }
 
+static void dwxgmac2_update_vlan_hash(struct mac_device_info *hw, u32 hash,
+				      bool is_double)
+{
+	void __iomem *ioaddr = hw->pcsr;
+
+	writel(hash, ioaddr + XGMAC_VLAN_HASH_TABLE);
+
+	if (hash) {
+		u32 value = readl(ioaddr + XGMAC_PACKET_FILTER);
+
+		value |= XGMAC_FILTER_VTFE;
+
+		writel(value, ioaddr + XGMAC_PACKET_FILTER);
+
+		value |= XGMAC_VLAN_VTHM | XGMAC_VLAN_ETV;
+		if (is_double) {
+			value |= XGMAC_VLAN_EDVLP;
+			value |= XGMAC_VLAN_ESVL;
+			value |= XGMAC_VLAN_DOVLTC;
+		}
+
+		writel(value, ioaddr + XGMAC_VLAN_TAG);
+	} else {
+		u32 value = readl(ioaddr + XGMAC_PACKET_FILTER);
+
+		value &= ~XGMAC_FILTER_VTFE;
+
+		writel(value, ioaddr + XGMAC_PACKET_FILTER);
+
+		value = readl(ioaddr + XGMAC_VLAN_TAG);
+
+		value &= ~(XGMAC_VLAN_VTHM | XGMAC_VLAN_ETV);
+		value &= ~(XGMAC_VLAN_EDVLP | XGMAC_VLAN_ESVL);
+		value &= ~XGMAC_VLAN_DOVLTC;
+		value &= ~XGMAC_VLAN_VID;
+
+		writel(value, ioaddr + XGMAC_VLAN_TAG);
+	}
+}
+
 const struct stmmac_ops dwxgmac210_ops = {
 	.core_init = dwxgmac2_core_init,
 	.set_mac = dwxgmac2_set_mac,
@@ -521,6 +561,7 @@ const struct stmmac_ops dwxgmac210_ops = {
 	.set_filter = dwxgmac2_set_filter,
 	.set_mac_loopback = dwxgmac2_set_mac_loopback,
 	.rss_configure = dwxgmac2_rss_configure,
+	.update_vlan_hash = dwxgmac2_update_vlan_hash,
 };
 
 int dwxgmac2_setup(struct stmmac_priv *priv)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index 45a6634ee397..b50e275e76c2 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -359,6 +359,7 @@ static void dwxgmac2_get_hw_feature(void __iomem *ioaddr,
 	dma_cap->rmon = (hw_cap & XGMAC_HWFEAT_MMCSEL) >> 8;
 	dma_cap->pmt_magic_frame = (hw_cap & XGMAC_HWFEAT_MGKSEL) >> 7;
 	dma_cap->pmt_remote_wake_up = (hw_cap & XGMAC_HWFEAT_RWKSEL) >> 6;
+	dma_cap->vlhash = (hw_cap & XGMAC_HWFEAT_VLHASH) >> 4;
 	dma_cap->mbps_1000 = (hw_cap & XGMAC_HWFEAT_GMIISEL) >> 1;
 
 	/* MAC HW feature 1 */
diff --git a/drivers/net/ethernet/stmicro/stmmac/hwif.h b/drivers/net/ethernet/stmicro/stmmac/hwif.h
index bfe7efee9481..52fc2344b066 100644
--- a/drivers/net/ethernet/stmicro/stmmac/hwif.h
+++ b/drivers/net/ethernet/stmicro/stmmac/hwif.h
@@ -336,6 +336,9 @@ struct stmmac_ops {
 	/* RSS */
 	int (*rss_configure)(struct mac_device_info *hw,
 			     struct stmmac_rss *cfg, u32 num_rxq);
+	/* VLAN */
+	void (*update_vlan_hash)(struct mac_device_info *hw, u32 hash,
+				 bool is_double);
 };
 
 #define stmmac_core_init(__priv, __args...) \
@@ -408,6 +411,8 @@ struct stmmac_ops {
 	stmmac_do_void_callback(__priv, mac, set_mac_loopback, __args)
 #define stmmac_rss_configure(__priv, __args...) \
 	stmmac_do_callback(__priv, mac, rss_configure, __args)
+#define stmmac_update_vlan_hash(__priv, __args...) \
+	stmmac_do_void_callback(__priv, mac, update_vlan_hash, __args)
 
 /* PTP and HW Timer helpers */
 struct stmmac_hwtimestamp {
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac.h b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
index d2f6f56ae29c..4179559b11ad 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac.h
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
@@ -13,6 +13,7 @@
 #define DRV_MODULE_VERSION	"Jan_2016"
 
 #include <linux/clk.h>
+#include <linux/if_vlan.h>
 #include <linux/stmmac.h>
 #include <linux/phylink.h>
 #include <linux/pci.h>
@@ -191,6 +192,7 @@ struct stmmac_priv {
 	spinlock_t ptp_lock;
 	void __iomem *mmcaddr;
 	void __iomem *ptpaddr;
+	unsigned long active_vlans[BITS_TO_LONGS(VLAN_N_VID)];
 
 #ifdef CONFIG_DEBUG_FS
 	struct dentry *dbgfs_dir;
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 0daca766615e..5ac86d6a8e40 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -4043,6 +4043,79 @@ static void stmmac_exit_fs(struct net_device *dev)
 }
 #endif /* CONFIG_DEBUG_FS */
 
+static u32 stmmac_vid_crc32_le(__le16 vid_le)
+{
+	unsigned char *data = (unsigned char *)&vid_le;
+	unsigned char data_byte = 0;
+	u32 crc = ~0x0;
+	u32 temp = 0;
+	int i, bits;
+
+	bits = get_bitmask_order(VLAN_VID_MASK);
+	for (i = 0; i < bits; i++) {
+		if ((i % 8) == 0)
+			data_byte = data[i / 8];
+
+		temp = ((crc & 1) ^ data_byte) & 1;
+		crc >>= 1;
+		data_byte >>= 1;
+
+		if (temp)
+			crc ^= 0xedb88320;
+	}
+
+	return crc;
+}
+
+static int stmmac_vlan_update(struct stmmac_priv *priv, bool is_double)
+{
+	u32 crc, hash = 0;
+	u16 vid;
+
+	for_each_set_bit(vid, priv->active_vlans, VLAN_N_VID) {
+		__le16 vid_le = cpu_to_le16(vid);
+		crc = bitrev32(~stmmac_vid_crc32_le(vid_le)) >> 28;
+		hash |= (1 << crc);
+	}
+
+	return stmmac_update_vlan_hash(priv, priv->hw, hash, is_double);
+}
+
+static int stmmac_vlan_rx_add_vid(struct net_device *ndev, __be16 proto, u16 vid)
+{
+	struct stmmac_priv *priv = netdev_priv(ndev);
+	bool is_double = false;
+	int ret;
+
+	if (!priv->dma_cap.vlhash)
+		return -EOPNOTSUPP;
+	if (be16_to_cpu(proto) == ETH_P_8021AD)
+		is_double = true;
+
+	set_bit(vid, priv->active_vlans);
+	ret = stmmac_vlan_update(priv, is_double);
+	if (ret) {
+		clear_bit(vid, priv->active_vlans);
+		return ret;
+	}
+
+	return ret;
+}
+
+static int stmmac_vlan_rx_kill_vid(struct net_device *ndev, __be16 proto, u16 vid)
+{
+	struct stmmac_priv *priv = netdev_priv(ndev);
+	bool is_double = false;
+
+	if (!priv->dma_cap.vlhash)
+		return -EOPNOTSUPP;
+	if (be16_to_cpu(proto) == ETH_P_8021AD)
+		is_double = true;
+
+	clear_bit(vid, priv->active_vlans);
+	return stmmac_vlan_update(priv, is_double);
+}
+
 static const struct net_device_ops stmmac_netdev_ops = {
 	.ndo_open = stmmac_open,
 	.ndo_start_xmit = stmmac_xmit,
@@ -4059,6 +4132,8 @@ static const struct net_device_ops stmmac_netdev_ops = {
 	.ndo_poll_controller = stmmac_poll_controller,
 #endif
 	.ndo_set_mac_address = stmmac_set_mac_address,
+	.ndo_vlan_rx_add_vid = stmmac_vlan_rx_add_vid,
+	.ndo_vlan_rx_kill_vid = stmmac_vlan_rx_kill_vid,
 };
 
 static void stmmac_reset_subtask(struct stmmac_priv *priv)
@@ -4313,6 +4388,10 @@ int stmmac_dvr_probe(struct device *device,
 #ifdef STMMAC_VLAN_TAG_USED
 	/* Both mac100 and gmac support receive VLAN tag detection */
 	ndev->features |= NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_HW_VLAN_STAG_RX;
+	if (priv->dma_cap.vlhash) {
+		ndev->features |= NETIF_F_HW_VLAN_CTAG_FILTER;
+		ndev->features |= NETIF_F_HW_VLAN_STAG_FILTER;
+	}
 #endif
 	priv->msg_enable = netif_msg_init(debug, default_msg_level);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
