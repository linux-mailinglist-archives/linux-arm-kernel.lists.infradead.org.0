Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFDFCD1AC
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 13:18:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tRxEO8xSyDZMvf0NPR66G7oh7jDybXdequ9aZbJQzTA=; b=BqsL1jrjmo/bWELBd1yndu0fTk
	rOILZKZPow2W1m6yKLCNIEmGPOjsIWweRGzpvjMtGkT2nyAS0WcrZAPk3DzJnbYJXIChzQQQpZ1BN
	PUWQ/FOTb+lM0sokyJePnwLleUAXd+LE13Fu6CgkqX96kjg8JB4escZF/uOOuvYWKpJRcV3anHofB
	Rv/aGaYSiyXeudOGqAjtMtRrM+Dg4t0QCLn5r0Mg1deU2GX+0ULWkKsFtxeelfk5zk5y9IPMbwhJr
	+R0MT+fIu07OtLyV/oQqsRCavxXzdj3EwSO3LxmkwltBzj3nlvafPPfF9+RttqKvxy17qO1RbIpZW
	Z4jMNymg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH4YC-0008Qq-2x; Sun, 06 Oct 2019 11:18:08 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH4XZ-0007x0-7G
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 11:17:32 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 8746BC03AF;
 Sun,  6 Oct 2019 11:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1570360649; bh=8moAOsCCneweJvIUV4WGkjO8ZvdUjVai+OwCuSsM9VQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=Gla8OvQUBGfcypLyQl9FJoBYxBV3pEs8sVmx43VgXN6jF5xNPpt1IY7Z+514jOfZp
 V1qL2vaB/I1oeiHP/9i5nytBJB4+aJlPS0CobMgdGwmkNpy6sGrpfuXWEfJgjtgNUM
 ll9X8zZSwuA3lUTPWnOlePV40zPW/mwvSPiJmizOHQ0YVkRBbXM5GLTF4Dw+aMSPoT
 ENUBMxh6w2dwNvoxqVZumk+Un/eDffuRW4kLArmyaDdsl9Con15ZpYNUtbNhJGWKfH
 nsWcw3XlQaXpUGO2xrhD15NMec9dMK7nsY2irV5PiOsi72JIsUoeDdDQl+lkfIOR/L
 NocjefxeELx6g==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id EF01BA0060;
 Sun,  6 Oct 2019 11:17:25 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 1/3] net: stmmac: Fallback to VLAN Perfect filtering
 if HASH is not available
Date: Sun,  6 Oct 2019 13:17:12 +0200
Message-Id: <3504067666a0cee6ecf636cf30081b09a6b79710.1570360411.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1570360411.git.Jose.Abreu@synopsys.com>
References: <cover.1570360411.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1570360411.git.Jose.Abreu@synopsys.com>
References: <cover.1570360411.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_041729_276374_A7F65142 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

From: Jose Abreu <joabreu@synopsys.com>

If VLAN Hash Filtering is not available we can fallback to perfect
filtering instead. Let's implement this in XGMAC and GMAC cores and let
the user use this filter.

VLAN VID=0 always passes filter so we check if more than 2 VLANs are
created and return proper error code if so because perfect filtering
only supports 1 VID at a time.

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
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c   | 12 +++++++++++-
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c | 17 ++++++++++++++++-
 drivers/net/ethernet/stmicro/stmmac/hwif.h          |  2 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c   | 18 ++++++++++++------
 4 files changed, 40 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
index 5a7b0aca1d31..1a04815d1d65 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
@@ -733,7 +733,7 @@ static void dwmac4_set_mac_loopback(void __iomem *ioaddr, bool enable)
 }
 
 static void dwmac4_update_vlan_hash(struct mac_device_info *hw, u32 hash,
-				    bool is_double)
+				    u16 perfect_match, bool is_double)
 {
 	void __iomem *ioaddr = hw->pcsr;
 
@@ -748,6 +748,16 @@ static void dwmac4_update_vlan_hash(struct mac_device_info *hw, u32 hash,
 		}
 
 		writel(value, ioaddr + GMAC_VLAN_TAG);
+	} else if (perfect_match) {
+		u32 value = GMAC_VLAN_ETV;
+
+		if (is_double) {
+			value |= GMAC_VLAN_EDVLP;
+			value |= GMAC_VLAN_ESVL;
+			value |= GMAC_VLAN_DOVLTC;
+		}
+
+		writel(value | perfect_match, ioaddr + GMAC_VLAN_TAG);
 	} else {
 		u32 value = readl(ioaddr + GMAC_VLAN_TAG);
 
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index 5031398e612c..5cda360d5d07 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -555,7 +555,7 @@ static int dwxgmac2_rss_configure(struct mac_device_info *hw,
 }
 
 static void dwxgmac2_update_vlan_hash(struct mac_device_info *hw, u32 hash,
-				      bool is_double)
+				      u16 perfect_match, bool is_double)
 {
 	void __iomem *ioaddr = hw->pcsr;
 
@@ -576,6 +576,21 @@ static void dwxgmac2_update_vlan_hash(struct mac_device_info *hw, u32 hash,
 		}
 
 		writel(value, ioaddr + XGMAC_VLAN_TAG);
+	} else if (perfect_match) {
+		u32 value = readl(ioaddr + XGMAC_PACKET_FILTER);
+
+		value |= XGMAC_FILTER_VTFE;
+
+		writel(value, ioaddr + XGMAC_PACKET_FILTER);
+
+		value = XGMAC_VLAN_ETV;
+		if (is_double) {
+			value |= XGMAC_VLAN_EDVLP;
+			value |= XGMAC_VLAN_ESVL;
+			value |= XGMAC_VLAN_DOVLTC;
+		}
+
+		writel(value | perfect_match, ioaddr + XGMAC_VLAN_TAG);
 	} else {
 		u32 value = readl(ioaddr + XGMAC_PACKET_FILTER);
 
diff --git a/drivers/net/ethernet/stmicro/stmmac/hwif.h b/drivers/net/ethernet/stmicro/stmmac/hwif.h
index ddb851d99618..1303d1e9a18f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/hwif.h
+++ b/drivers/net/ethernet/stmicro/stmmac/hwif.h
@@ -357,7 +357,7 @@ struct stmmac_ops {
 			     struct stmmac_rss *cfg, u32 num_rxq);
 	/* VLAN */
 	void (*update_vlan_hash)(struct mac_device_info *hw, u32 hash,
-				 bool is_double);
+				 u16 perfect_match, bool is_double);
 	void (*enable_vlan)(struct mac_device_info *hw, u32 type);
 	/* TX Timestamp */
 	int (*get_mac_tx_timestamp)(struct mac_device_info *hw, u64 *ts);
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index b8ac1744950e..8b76745a7ec4 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -4207,15 +4207,25 @@ static u32 stmmac_vid_crc32_le(__le16 vid_le)
 static int stmmac_vlan_update(struct stmmac_priv *priv, bool is_double)
 {
 	u32 crc, hash = 0;
-	u16 vid;
+	int count = 0;
+	u16 vid = 0;
 
 	for_each_set_bit(vid, priv->active_vlans, VLAN_N_VID) {
 		__le16 vid_le = cpu_to_le16(vid);
 		crc = bitrev32(~stmmac_vid_crc32_le(vid_le)) >> 28;
 		hash |= (1 << crc);
+		count++;
+	}
+
+	if (!priv->dma_cap.vlhash) {
+		if (count > 2) /* VID = 0 always passes filter */
+			return -EOPNOTSUPP;
+
+		vid = cpu_to_le16(vid);
+		hash = 0;
 	}
 
-	return stmmac_update_vlan_hash(priv, priv->hw, hash, is_double);
+	return stmmac_update_vlan_hash(priv, priv->hw, hash, vid, is_double);
 }
 
 static int stmmac_vlan_rx_add_vid(struct net_device *ndev, __be16 proto, u16 vid)
@@ -4224,8 +4234,6 @@ static int stmmac_vlan_rx_add_vid(struct net_device *ndev, __be16 proto, u16 vid
 	bool is_double = false;
 	int ret;
 
-	if (!priv->dma_cap.vlhash)
-		return -EOPNOTSUPP;
 	if (be16_to_cpu(proto) == ETH_P_8021AD)
 		is_double = true;
 
@@ -4244,8 +4252,6 @@ static int stmmac_vlan_rx_kill_vid(struct net_device *ndev, __be16 proto, u16 vi
 	struct stmmac_priv *priv = netdev_priv(ndev);
 	bool is_double = false;
 
-	if (!priv->dma_cap.vlhash)
-		return -EOPNOTSUPP;
 	if (be16_to_cpu(proto) == ETH_P_8021AD)
 		is_double = true;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
