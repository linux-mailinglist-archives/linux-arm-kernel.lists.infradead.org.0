Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CAAF1B3587
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 05:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nLGyHZUiT6oKqyi+53KbMnqUMyITaCqtrT6Uw7iNOvk=; b=S4o
	DTI9OcN1RkbA+aMGcbNmdl3XikZDZLKm9mPGjzibWJgM4cjwD/TFxuW8biAg+FWuO56Sco/+rN6me
	C7CRorUqPGlXHSP7YBnW77bwZ6P75SL5Hc8pUsqEvYxGtWg/O4+51tuSFzccHXj0Ys9dVzrs1YNuO
	Ho+8Prb5AvDb5ZNg1q82784sXu4GuSQEv6o2npmj4TXX6zGdiJcNmBJeL7jAeS6GluCOZP4oR6DD0
	CMlXivqmoxko4uSV+Nma/ojPyusks7F4zFY6ycLm4fUnKQ9dgCkn3k8XJhLBeTybfyk0UWGkOsfM5
	P9rhnNcPmFC/A3dGSx9vHZJaRa04xEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR642-0002OC-NL; Wed, 22 Apr 2020 03:28:42 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR63u-0002Nd-Bc
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 03:28:35 +0000
IronPort-SDR: LoOHXSQz73/xmBT38d6ox3Tk4EvwUjnLl1Fn6bka+FNMTIDic807DvYVE96PeaBAAUI6ebUQDx
 6YOJ/I10j2LQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 20:28:33 -0700
IronPort-SDR: Kgm4GfB/vjdE6ywLMDh8Xh/KM3PVMA2pxPw2mUhmfMlk2vXrvKh9Qe8BGseLISeeGv7CSKytDP
 t7mv5SvgYppQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,412,1580803200"; d="scan'208";a="429759490"
Received: from glass.png.intel.com ([172.30.181.92])
 by orsmga005.jf.intel.com with ESMTP; 21 Apr 2020 20:28:30 -0700
From: Wong Vee Khee <vee.khee.wong@intel.com>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 "David S . Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH net-next v2 1/1] net: stmmac: Add support for VLAN promiscuous
 mode
Date: Wed, 22 Apr 2020 11:31:06 +0800
Message-Id: <20200422033106.25745-1-vee.khee.wong@intel.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_202834_407886_99085E5C 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: Voon Wei Feng <weifeng.voon@intel.com>,
 Wong Vee Khee <vee.khee.wong@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ong Boon Leong <boon.leong.ong@intel.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Chuah, Kim Tatt" <kim.tatt.chuah@intel.com>

For dwmac4, enable VLAN promiscuity when MAC controller is requested to
enter promiscuous mode.

Signed-off-by: Chuah, Kim Tatt <kim.tatt.chuah@intel.com>
Signed-off-by: Ong Boon Leong <boon.leong.ong@intel.com>
Signed-off-by: Tan, Tee Min <tee.min.tan@intel.com>
Signed-off-by: Wong Vee Khee <vee.khee.wong@intel.com>
---
 drivers/net/ethernet/stmicro/stmmac/common.h  |  1 +
 drivers/net/ethernet/stmicro/stmmac/dwmac4.h  |  1 +
 .../net/ethernet/stmicro/stmmac/dwmac4_core.c | 67 +++++++++++++++++++
 3 files changed, 69 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/common.h b/drivers/net/ethernet/stmicro/stmmac/common.h
index 6208a68a331d..127f75862962 100644
--- a/drivers/net/ethernet/stmicro/stmmac/common.h
+++ b/drivers/net/ethernet/stmicro/stmmac/common.h
@@ -473,6 +473,7 @@ struct mac_device_info {
 	unsigned int xlgmac;
 	unsigned int num_vlan;
 	u32 vlan_filter[32];
+	unsigned int promisc;
 };
 
 struct stmmac_rx_routing {
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
index 28cac28253b8..61f3249bd724 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
@@ -90,6 +90,7 @@
 #define GMAC_VLAN_CSVL			BIT(19)
 #define GMAC_VLAN_VLC			GENMASK(17, 16)
 #define GMAC_VLAN_VLC_SHIFT		16
+#define GMAC_VLAN_VLHT			GENMASK(15, 0)
 
 /* MAC VLAN Tag */
 #define GMAC_VLAN_TAG_VID		GENMASK(15, 0)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
index 39692d15d80c..ecd834e0e121 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
@@ -450,6 +450,12 @@ static int dwmac4_add_hw_vlan_rx_fltr(struct net_device *dev,
 	if (vid > 4095)
 		return -EINVAL;
 
+	if (hw->promisc) {
+		netdev_err(dev,
+			   "Adding VLAN in promisc mode not supported\n");
+		return -EPERM;
+	}
+
 	/* Single Rx VLAN Filter */
 	if (hw->num_vlan == 1) {
 		/* For single VLAN filter, VID 0 means VLAN promiscuous */
@@ -499,6 +505,12 @@ static int dwmac4_del_hw_vlan_rx_fltr(struct net_device *dev,
 {
 	int i, ret = 0;
 
+	if (hw->promisc) {
+		netdev_err(dev,
+			   "Deleting VLAN in promisc mode not supported\n");
+		return -EPERM;
+	}
+
 	/* Single Rx VLAN Filter */
 	if (hw->num_vlan == 1) {
 		if ((hw->vlan_filter[0] & GMAC_VLAN_TAG_VID) == vid) {
@@ -523,9 +535,45 @@ static int dwmac4_del_hw_vlan_rx_fltr(struct net_device *dev,
 	return ret;
 }
 
+static void dwmac4_vlan_promisc_enable(struct net_device *dev,
+				       struct mac_device_info *hw)
+{
+	void __iomem *ioaddr = hw->pcsr;
+	u32 value;
+	u32 hash;
+	u32 val;
+	int i;
+
+	/* Single Rx VLAN Filter */
+	if (hw->num_vlan == 1) {
+		dwmac4_write_single_vlan(dev, 0);
+		return;
+	}
+
+	/* Extended Rx VLAN Filter Enable */
+	for (i = 0; i < hw->num_vlan; i++) {
+		if (hw->vlan_filter[i] & GMAC_VLAN_TAG_DATA_VEN) {
+			val = hw->vlan_filter[i] & ~GMAC_VLAN_TAG_DATA_VEN;
+			dwmac4_write_vlan_filter(dev, hw, i, val);
+		}
+	}
+
+	hash = readl(ioaddr + GMAC_VLAN_HASH_TABLE);
+	if (hash & GMAC_VLAN_VLHT) {
+		value = readl(ioaddr + GMAC_VLAN_TAG);
+		if (value & GMAC_VLAN_VTHM) {
+			value &= ~GMAC_VLAN_VTHM;
+			writel(value, ioaddr + GMAC_VLAN_TAG);
+		}
+	}
+}
+
 static void dwmac4_restore_hw_vlan_rx_fltr(struct net_device *dev,
 					   struct mac_device_info *hw)
 {
+	void __iomem *ioaddr = hw->pcsr;
+	u32 value;
+	u32 hash;
 	u32 val;
 	int i;
 
@@ -542,6 +590,13 @@ static void dwmac4_restore_hw_vlan_rx_fltr(struct net_device *dev,
 			dwmac4_write_vlan_filter(dev, hw, i, val);
 		}
 	}
+
+	hash = readl(ioaddr + GMAC_VLAN_HASH_TABLE);
+	if (hash & GMAC_VLAN_VLHT) {
+		value = readl(ioaddr + GMAC_VLAN_TAG);
+		value |= GMAC_VLAN_VTHM;
+		writel(value, ioaddr + GMAC_VLAN_TAG);
+	}
 }
 
 static void dwmac4_set_filter(struct mac_device_info *hw,
@@ -624,6 +679,18 @@ static void dwmac4_set_filter(struct mac_device_info *hw,
 		value |= GMAC_PACKET_FILTER_VTFE;
 
 	writel(value, ioaddr + GMAC_PACKET_FILTER);
+
+	if (dev->flags & IFF_PROMISC) {
+		if (!hw->promisc) {
+			hw->promisc = 1;
+			dwmac4_vlan_promisc_enable(dev, hw);
+		}
+	} else {
+		if (hw->promisc) {
+			hw->promisc = 0;
+			dwmac4_restore_hw_vlan_rx_fltr(dev, hw);
+		}
+	}
 }
 
 static void dwmac4_flow_ctrl(struct mac_device_info *hw, unsigned int duplex,
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
