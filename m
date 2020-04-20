Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C31861B003A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 05:31:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mDeAyIbl7RrsgwIddtcgW4gyU+xtDAD0meI3g+fhRYk=; b=hPB
	04Nt591oKgaFpdtvtRIks3Qc4vTR1ywnIIiFcUhKFBDE1gJsAsTqcxdhSXIovrMDyTZRDdIECWfvl
	RycScneyT1lmaJaYtusSsXfG//WED1Zr1V8I8IgIX7/UZAyGAM4pPO2emdgjXbfRMnY4pauBvA3u6
	ByCZdVGKTD8nvSQkiWtJXo/vOhtEZqutle9o8FWRENhCCdb5NrkQ/bsL+TYigAVrl4RzfNvOKmwSm
	rwT/smchtAbSHRN27cHyiBaA+1IHOkQYcwqfptNqyFA3XLMUaA9SMJOYHzqNu9SU+eDqqnCcamOd2
	iX2wIgwvspIEr7+lLpv8ccpYrVgj/Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQN9n-000144-Ns; Mon, 20 Apr 2020 03:31:39 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQN9f-00013B-Aq
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 03:31:32 +0000
IronPort-SDR: hQOi19EggnzEkbzA4js71fXLM/0dUiLw11HAIHQFlguwiiP6+e0lPJLVO8r5FnrZ/x6XjCNR0c
 RwdnkcfqPrWA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2020 20:31:30 -0700
IronPort-SDR: edhuHMjqHP9ErywtRRWHrLaytJmqVEjKvc7uIf+5na+R+BKrRYIRKDtE2lsM3pbSBKyN7z6L8e
 VL3qFI+42lnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,405,1580803200"; d="scan'208";a="273046498"
Received: from glass.png.intel.com ([172.30.181.92])
 by orsmga002.jf.intel.com with ESMTP; 19 Apr 2020 20:31:24 -0700
From: Wong Vee Khee <vee.khee.wong@intel.com>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 "David S . Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH net-next 1/1] net: stmmac: Add support for VLAN promiscuous
 mode
Date: Mon, 20 Apr 2020 11:33:59 +0800
Message-Id: <20200420033359.11610-1-vee.khee.wong@intel.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_203131_420239_7662C349 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 .../net/ethernet/stmicro/stmmac/stmmac_main.c |  2 +-
 4 files changed, 70 insertions(+), 1 deletion(-)

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
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index e6898fd5223f..80250c7be783 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -4877,7 +4877,6 @@ int stmmac_dvr_probe(struct device *device,
 		}
 	}
 
-	ndev->features |= ndev->hw_features | NETIF_F_HIGHDMA;
 	ndev->watchdog_timeo = msecs_to_jiffies(watchdog);
 #ifdef STMMAC_VLAN_TAG_USED
 	/* Both mac100 and gmac support receive VLAN tag detection */
@@ -4892,6 +4891,7 @@ int stmmac_dvr_probe(struct device *device,
 			ndev->features |= NETIF_F_HW_VLAN_STAG_TX;
 	}
 #endif
+	ndev->features |= ndev->hw_features | NETIF_F_HIGHDMA;
 	priv->msg_enable = netif_msg_init(debug, default_msg_level);
 
 	/* Initialize RSS */
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
