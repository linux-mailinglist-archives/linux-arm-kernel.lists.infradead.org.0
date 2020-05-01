Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E001C1ED8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 22:51:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C47f3Z7YmQt6rvQPOv2/7jgd19XcPirDWhitdmgYni4=; b=CT9rMM8AL1bLrU
	fRB+yYovf+gcD1TsiV2hIu2abHcspaZpqI+YQ1d0n9sCmfarAEv5Ea7W8rZuliAtOf6YhDb/9eqUZ
	Usf55izty7hS/OOLj0my6EM78odgjaUbS7qe2MG3f+3VnVTwfoj7lE3RBGJD4NIFilj91RFfupbfM
	hPPQyic3FHdUmOJjTP44f2Jzfpv/TTkINFWNEBWSb9GNpEWsXeaqfHlZaCxah87WxUzV9ZWbyVL7k
	nJm+iIfpz0pYCtp5htpfLtT8rKFAm/vUkzE28chzIQiBXDiY1UiG3z+rQ17Ms1wUQHiJVRYX8gQ5Z
	/+37lqCETtXo3jDRW2mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUcdG-0001fJ-O2; Fri, 01 May 2020 20:51:38 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUccP-000167-9r
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 20:50:48 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 041Kob2J008400;
 Fri, 1 May 2020 15:50:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588366237;
 bh=BwC9Nxd1wSKAweAQguzYMZcsWHsfb01jja4zfVMCmwg=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=NWQhLglyZRwi3PfDuHxb+ObY0Z85FmhueugM45lwEPbK1Nm5Lh2UR8/k9EAhgJgUa
 EDqpq4B3FOk/sje+iyOx6kDHL803f77iDmMmANieMf+TOf8yyggu4BfhsmJA4akMVK
 8PWHOEeHeYCWo6lCvsH5g2YVaprwCKl5PD7AQamk=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 041Kob1W040183
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 1 May 2020 15:50:37 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 1 May
 2020 15:50:37 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 1 May 2020 15:50:37 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 041Koakl099219;
 Fri, 1 May 2020 15:50:36 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Richard Cochran <richardcochran@gmail.com>, Murali Karicheri
 <m-karicheri2@ti.com>, "David S. Miller" <davem@davemloft.net>, Rob Herring
 <robh+dt@kernel.org>, Tero Kristo <t-kristo@ti.com>
Subject: [PATCH net-next 3/7] net: ethernet: ti: am65-cpsw-nuss: enable packet
 timestamping support
Date: Fri, 1 May 2020 23:50:07 +0300
Message-ID: <20200501205011.14899-4-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200501205011.14899-1-grygorii.strashko@ti.com>
References: <20200501205011.14899-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_135045_455943_68E05AFF 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, netdev@vger.kernel.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MCU CPSW Common Platform Time Sync (CPTS) provides possibility to
timestamp TX PTP packets and all RX packets.

This enables corresponding support in TI AM65x/J721E MCU CPSW driver.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 drivers/net/ethernet/ti/Kconfig             |   1 +
 drivers/net/ethernet/ti/am65-cpsw-ethtool.c |  24 ++-
 drivers/net/ethernet/ti/am65-cpsw-nuss.c    | 172 ++++++++++++++++++++
 drivers/net/ethernet/ti/am65-cpsw-nuss.h    |   6 +-
 4 files changed, 201 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/ti/Kconfig b/drivers/net/ethernet/ti/Kconfig
index 1f4e5b6dc686..2c7bd1ccaaec 100644
--- a/drivers/net/ethernet/ti/Kconfig
+++ b/drivers/net/ethernet/ti/Kconfig
@@ -100,6 +100,7 @@ config TI_K3_AM65_CPSW_NUSS
 	depends on ARCH_K3 && OF && TI_K3_UDMA_GLUE_LAYER
 	select TI_DAVINCI_MDIO
 	imply PHY_TI_GMII_SEL
+	imply TI_AM65_CPTS
 	help
 	  This driver supports TI K3 AM654/J721E CPSW2G Ethernet SubSystem.
 	  The two-port Gigabit Ethernet MAC (MCU_CPSW0) subsystem provides
diff --git a/drivers/net/ethernet/ti/am65-cpsw-ethtool.c b/drivers/net/ethernet/ti/am65-cpsw-ethtool.c
index c3502aa15ea0..23661a6ed426 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-ethtool.c
+++ b/drivers/net/ethernet/ti/am65-cpsw-ethtool.c
@@ -12,6 +12,7 @@
 
 #include "am65-cpsw-nuss.h"
 #include "cpsw_ale.h"
+#include "am65-cpts.h"
 
 #define AM65_CPSW_REGDUMP_VER 0x1
 
@@ -694,6 +695,27 @@ static void am65_cpsw_get_ethtool_stats(struct net_device *ndev,
 					hw_stats[i].offset);
 }
 
+static int am65_cpsw_get_ethtool_ts_info(struct net_device *ndev,
+					 struct ethtool_ts_info *info)
+{
+	struct am65_cpsw_common *common = am65_ndev_to_common(ndev);
+
+	if (!IS_ENABLED(CONFIG_TI_K3_AM65_CPTS))
+		return ethtool_op_get_ts_info(ndev, info);
+
+	info->so_timestamping =
+		SOF_TIMESTAMPING_TX_HARDWARE |
+		SOF_TIMESTAMPING_TX_SOFTWARE |
+		SOF_TIMESTAMPING_RX_HARDWARE |
+		SOF_TIMESTAMPING_RX_SOFTWARE |
+		SOF_TIMESTAMPING_SOFTWARE |
+		SOF_TIMESTAMPING_RAW_HARDWARE;
+	info->phc_index = am65_cpts_phc_index(common->cpts);
+	info->tx_types = BIT(HWTSTAMP_TX_OFF) | BIT(HWTSTAMP_TX_ON);
+	info->rx_filters = BIT(HWTSTAMP_FILTER_NONE) | BIT(HWTSTAMP_FILTER_ALL);
+	return 0;
+}
+
 static u32 am65_cpsw_get_ethtool_priv_flags(struct net_device *ndev)
 {
 	struct am65_cpsw_common *common = am65_ndev_to_common(ndev);
@@ -730,7 +752,7 @@ const struct ethtool_ops am65_cpsw_ethtool_ops_slave = {
 	.get_sset_count		= am65_cpsw_get_sset_count,
 	.get_strings		= am65_cpsw_get_strings,
 	.get_ethtool_stats	= am65_cpsw_get_ethtool_stats,
-	.get_ts_info		= ethtool_op_get_ts_info,
+	.get_ts_info		= am65_cpsw_get_ethtool_ts_info,
 	.get_priv_flags		= am65_cpsw_get_ethtool_priv_flags,
 	.set_priv_flags		= am65_cpsw_set_ethtool_priv_flags,
 
diff --git a/drivers/net/ethernet/ti/am65-cpsw-nuss.c b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
index 2bf56733ba94..bb391286d89e 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-nuss.c
+++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
@@ -30,6 +30,7 @@
 #include "cpsw_sl.h"
 #include "am65-cpsw-nuss.h"
 #include "k3-cppi-desc-pool.h"
+#include "am65-cpts.h"
 
 #define AM65_CPSW_SS_BASE	0x0
 #define AM65_CPSW_SGMII_BASE	0x100
@@ -668,6 +669,18 @@ static void am65_cpsw_nuss_rx_cleanup(void *data, dma_addr_t desc_dma)
 	dev_kfree_skb_any(skb);
 }
 
+static void am65_cpsw_nuss_rx_ts(struct sk_buff *skb, u32 *psdata)
+{
+	struct skb_shared_hwtstamps *ssh;
+	u64 ns;
+
+	ns = ((u64)psdata[1] << 32) | psdata[0];
+
+	ssh = skb_hwtstamps(skb);
+	memset(ssh, 0, sizeof(*ssh));
+	ssh->hwtstamp = ns_to_ktime(ns);
+}
+
 /* RX psdata[2] word format - checksum information */
 #define AM65_CPSW_RX_PSD_CSUM_ADD	GENMASK(15, 0)
 #define AM65_CPSW_RX_PSD_CSUM_ERR	BIT(16)
@@ -745,6 +758,9 @@ static int am65_cpsw_nuss_rx_packets(struct am65_cpsw_common *common,
 	skb->dev = ndev;
 
 	psdata = cppi5_hdesc_get_psdata(desc_rx);
+	/* add RX timestamp */
+	if (port->rx_ts_enabled)
+		am65_cpsw_nuss_rx_ts(skb, psdata);
 	csum_info = psdata[2];
 	dev_dbg(dev, "%s rx csum_info:%#x\n", __func__, csum_info);
 
@@ -904,6 +920,8 @@ static int am65_cpsw_nuss_tx_compl_packets(struct am65_cpsw_common *common,
 
 		ndev = skb->dev;
 
+		am65_cpts_tx_timestamp(common->cpts, skb);
+
 		ndev_priv = netdev_priv(ndev);
 		stats = this_cpu_ptr(ndev_priv->stats);
 		u64_stats_update_begin(&stats->syncp);
@@ -995,6 +1013,10 @@ static netdev_tx_t am65_cpsw_nuss_ndo_slave_xmit(struct sk_buff *skb,
 	/* padding enabled in hw */
 	pkt_len = skb_headlen(skb);
 
+	/* SKB TX timestamp */
+	if (port->tx_ts_enabled)
+		am65_cpts_prep_tx_timestamp(common->cpts, skb);
+
 	q_idx = skb_get_queue_mapping(skb);
 	dev_dbg(dev, "%s skb_queue:%d\n", __func__, q_idx);
 
@@ -1158,6 +1180,111 @@ static int am65_cpsw_nuss_ndo_slave_set_mac_address(struct net_device *ndev,
 	return 0;
 }
 
+static int am65_cpsw_nuss_hwtstamp_set(struct net_device *ndev,
+				       struct ifreq *ifr)
+{
+	struct am65_cpsw_common *common = am65_ndev_to_common(ndev);
+	struct am65_cpsw_port *port = am65_ndev_to_port(ndev);
+	u32 ts_ctrl, seq_id, ts_ctrl_ltype2, ts_vlan_ltype;
+	struct hwtstamp_config cfg;
+
+	if (!IS_ENABLED(CONFIG_TI_K3_AM65_CPTS))
+		return -EOPNOTSUPP;
+
+	if (copy_from_user(&cfg, ifr->ifr_data, sizeof(cfg)))
+		return -EFAULT;
+
+	/* TX HW timestamp */
+	switch (cfg.tx_type) {
+	case HWTSTAMP_TX_OFF:
+	case HWTSTAMP_TX_ON:
+		break;
+	default:
+		return -ERANGE;
+	}
+
+	switch (cfg.rx_filter) {
+	case HWTSTAMP_FILTER_NONE:
+		port->rx_ts_enabled = false;
+		break;
+	case HWTSTAMP_FILTER_ALL:
+	case HWTSTAMP_FILTER_SOME:
+	case HWTSTAMP_FILTER_PTP_V1_L4_EVENT:
+	case HWTSTAMP_FILTER_PTP_V1_L4_SYNC:
+	case HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ:
+	case HWTSTAMP_FILTER_PTP_V2_L4_EVENT:
+	case HWTSTAMP_FILTER_PTP_V2_L4_SYNC:
+	case HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ:
+	case HWTSTAMP_FILTER_PTP_V2_L2_EVENT:
+	case HWTSTAMP_FILTER_PTP_V2_L2_SYNC:
+	case HWTSTAMP_FILTER_PTP_V2_L2_DELAY_REQ:
+	case HWTSTAMP_FILTER_PTP_V2_EVENT:
+	case HWTSTAMP_FILTER_PTP_V2_SYNC:
+	case HWTSTAMP_FILTER_PTP_V2_DELAY_REQ:
+	case HWTSTAMP_FILTER_NTP_ALL:
+		port->rx_ts_enabled = true;
+		cfg.rx_filter = HWTSTAMP_FILTER_ALL;
+		break;
+	default:
+		return -ERANGE;
+	}
+
+	port->tx_ts_enabled = (cfg.tx_type == HWTSTAMP_TX_ON);
+
+	/* cfg TX timestamp */
+	seq_id = (AM65_CPSW_TS_SEQ_ID_OFFSET <<
+		  AM65_CPSW_PN_TS_SEQ_ID_OFFSET_SHIFT) | ETH_P_1588;
+
+	ts_vlan_ltype = ETH_P_8021Q;
+
+	ts_ctrl_ltype2 = ETH_P_1588 |
+			 AM65_CPSW_PN_TS_CTL_LTYPE2_TS_107 |
+			 AM65_CPSW_PN_TS_CTL_LTYPE2_TS_129 |
+			 AM65_CPSW_PN_TS_CTL_LTYPE2_TS_130 |
+			 AM65_CPSW_PN_TS_CTL_LTYPE2_TS_131 |
+			 AM65_CPSW_PN_TS_CTL_LTYPE2_TS_132 |
+			 AM65_CPSW_PN_TS_CTL_LTYPE2_TS_319 |
+			 AM65_CPSW_PN_TS_CTL_LTYPE2_TS_320 |
+			 AM65_CPSW_PN_TS_CTL_LTYPE2_TS_TTL_NONZERO;
+
+	ts_ctrl = AM65_CPSW_TS_EVENT_MSG_TYPE_BITS <<
+		  AM65_CPSW_PN_TS_CTL_MSG_TYPE_EN_SHIFT;
+
+	if (port->tx_ts_enabled)
+		ts_ctrl |= AM65_CPSW_TS_TX_ANX_ALL_EN |
+			   AM65_CPSW_PN_TS_CTL_TX_VLAN_LT1_EN;
+
+	writel(seq_id, port->port_base + AM65_CPSW_PORTN_REG_TS_SEQ_LTYPE_REG);
+	writel(ts_vlan_ltype, port->port_base +
+	       AM65_CPSW_PORTN_REG_TS_VLAN_LTYPE_REG);
+	writel(ts_ctrl_ltype2, port->port_base +
+	       AM65_CPSW_PORTN_REG_TS_CTL_LTYPE2);
+	writel(ts_ctrl, port->port_base + AM65_CPSW_PORTN_REG_TS_CTL);
+
+	/* en/dis RX timestamp */
+	am65_cpts_rx_enable(common->cpts, port->rx_ts_enabled);
+
+	return copy_to_user(ifr->ifr_data, &cfg, sizeof(cfg)) ? -EFAULT : 0;
+}
+
+static int am65_cpsw_nuss_hwtstamp_get(struct net_device *ndev,
+				       struct ifreq *ifr)
+{
+	struct am65_cpsw_port *port = am65_ndev_to_port(ndev);
+	struct hwtstamp_config cfg;
+
+	if (!IS_ENABLED(CONFIG_TI_K3_AM65_CPTS))
+		return -EOPNOTSUPP;
+
+	cfg.flags = 0;
+	cfg.tx_type = port->tx_ts_enabled ?
+		      HWTSTAMP_TX_ON : HWTSTAMP_TX_OFF;
+	cfg.rx_filter = port->rx_ts_enabled ?
+			HWTSTAMP_FILTER_ALL : HWTSTAMP_FILTER_NONE;
+
+	return copy_to_user(ifr->ifr_data, &cfg, sizeof(cfg)) ? -EFAULT : 0;
+}
+
 static int am65_cpsw_nuss_ndo_slave_ioctl(struct net_device *ndev,
 					  struct ifreq *req, int cmd)
 {
@@ -1166,6 +1293,13 @@ static int am65_cpsw_nuss_ndo_slave_ioctl(struct net_device *ndev,
 	if (!netif_running(ndev))
 		return -EINVAL;
 
+	switch (cmd) {
+	case SIOCSHWTSTAMP:
+		return am65_cpsw_nuss_hwtstamp_set(ndev, req);
+	case SIOCGHWTSTAMP:
+		return am65_cpsw_nuss_hwtstamp_get(ndev, req);
+	}
+
 	if (!port->slave.phy)
 		return -EOPNOTSUPP;
 
@@ -1531,6 +1665,40 @@ static int am65_cpsw_am654_get_efuse_macid(struct device_node *of_node,
 	return 0;
 }
 
+static int am65_cpsw_init_cpts(struct am65_cpsw_common *common)
+{
+	struct device *dev = common->dev;
+	struct device_node *node;
+	struct am65_cpts *cpts;
+	void __iomem *reg_base;
+
+	if (!IS_ENABLED(CONFIG_TI_K3_AM65_CPTS))
+		return 0;
+
+	node = of_get_child_by_name(dev->of_node, "cpts");
+	if (!node) {
+		dev_err(dev, "%s cpts not found\n", __func__);
+		return -ENOENT;
+	}
+
+	reg_base = common->cpsw_base + AM65_CPSW_NU_CPTS_BASE;
+	cpts = am65_cpts_create(dev, reg_base, node);
+	if (IS_ERR(cpts)) {
+		int ret = PTR_ERR(cpts);
+
+		if (ret == -EOPNOTSUPP) {
+			dev_info(dev, "cpts disabled\n");
+			return 0;
+		}
+
+		dev_err(dev, "cpts create err %d\n", ret);
+		return ret;
+	}
+	common->cpts = cpts;
+
+	return 0;
+}
+
 static int am65_cpsw_nuss_init_slave_ports(struct am65_cpsw_common *common)
 {
 	struct device_node *node, *port_np;
@@ -1899,6 +2067,10 @@ static int am65_cpsw_nuss_probe(struct platform_device *pdev)
 		goto err_of_clear;
 	}
 
+	ret = am65_cpsw_init_cpts(common);
+	if (ret)
+		goto err_of_clear;
+
 	/* init ports */
 	for (i = 0; i < common->port_num; i++)
 		am65_cpsw_nuss_slave_disable_unused(&common->ports[i]);
diff --git a/drivers/net/ethernet/ti/am65-cpsw-nuss.h b/drivers/net/ethernet/ti/am65-cpsw-nuss.h
index 41ae5b4c7931..b1cddfd05a45 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-nuss.h
+++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.h
@@ -10,6 +10,8 @@
 #include <linux/module.h>
 #include <linux/netdevice.h>
 
+struct am65_cpts;
+
 #define HOST_PORT_NUM		0
 
 #define AM65_CPSW_MAX_TX_QUEUES	8
@@ -37,6 +39,8 @@ struct am65_cpsw_port {
 	void __iomem			*stat_base;
 	bool				disabled;
 	struct am65_cpsw_slave_data	slave;
+	bool				tx_ts_enabled;
+	bool				rx_ts_enabled;
 };
 
 struct am65_cpsw_host {
@@ -96,8 +100,8 @@ struct am65_cpsw_common {
 
 	u32			nuss_ver;
 	u32			cpsw_ver;
-
 	bool			pf_p0_rx_ptype_rrobin;
+	struct am65_cpts	*cpts;
 };
 
 struct am65_cpsw_ndev_stats {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
