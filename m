Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 622F320302
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 11:59:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTQaKZmRk+mOIuKL72IS2fhqy4Wq96C6YRVkllLTcT8=; b=oo7VPr0MH211TB
	sFaLmblHKFGiIq7Wx4I6pGyo5opP1kq2e1hiCDH6EEFhy7zJpEGKJqooGHiqU9BTkiihlpylJu9Yl
	jGLfIMNmbCqzwxSp56DfS2VVtbXxzBsZN6V2QVVycETEvVQXSD0hsfcmvIKs8C3FflgHxCBSc3EV6
	itT63Jbf0xCbYUmNNYkGMCjiUFrddK7DZ/rO8K6fFvtsUiKjX7mgnSie9NkXNp1RUGXVGu3Z4iswZ
	ceH1kkiqr6VS6R2FOqJt057iCtFlQP69H652c4QSy+THIRWIp5QNFrYf3raR2a/P2qp1am/GQy0ZL
	sZotIP9ILNXOiCD9Zi+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDAh-00072T-0w; Thu, 16 May 2019 09:59:31 +0000
Received: from mail-eopbgr130081.outbound.protection.outlook.com
 ([40.107.13.81] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDAO-0006pY-Pk
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 09:59:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cXpEldL5/e76TUbtRM51UsrHohS7DLcy/WhK8ldjEZ8=;
 b=VCUm/df/0hjIpUXfIWg5gy/h2oQkCC7ULJimr7AbTqQw/SM4dOZ1TXQNmSuQ/DnSax+o8JlJKI9sqZtJscHSRzKWJib24xTj0MFlnqzyS2vYou/b5Y9Drmrx4USbJAMyUsEnwCGlHF2akG2R5Afe1ayJVLO7rb4hcwo3YmmQ14A=
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com (10.169.132.138) by
 VI1PR0401MB2637.eurprd04.prod.outlook.com (10.168.61.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Thu, 16 May 2019 09:59:08 +0000
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986]) by VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986%3]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 09:59:08 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Richard Cochran
 <richardcochran@gmail.com>, David Miller <davem@davemloft.net>, Claudiu
 Manoil <claudiu.manoil@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 1/3] enetc: add hardware timestamping support
Thread-Topic: [PATCH 1/3] enetc: add hardware timestamping support
Thread-Index: AQHVC84AyxJ95TkLo0SObQ6CRQsOGA==
Date: Thu, 16 May 2019 09:59:08 +0000
Message-ID: <20190516100028.48256-2-yangbo.lu@nxp.com>
References: <20190516100028.48256-1-yangbo.lu@nxp.com>
In-Reply-To: <20190516100028.48256-1-yangbo.lu@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR0302CA0017.apcprd03.prod.outlook.com
 (2603:1096:202::27) To VI1PR0401MB2237.eurprd04.prod.outlook.com
 (2603:10a6:800:27::10)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yangbo.lu@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0c287350-8f2b-4137-4456-08d6d9e52337
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2637; 
x-ms-traffictypediagnostic: VI1PR0401MB2637:
x-microsoft-antispam-prvs: <VI1PR0401MB26370E6A372471D0B576FFF7F80A0@VI1PR0401MB2637.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(39860400002)(136003)(366004)(346002)(189003)(199004)(52116002)(7736002)(3846002)(6116002)(14454004)(76176011)(8936002)(81166006)(305945005)(81156014)(8676002)(36756003)(5660300002)(316002)(2616005)(476003)(6486002)(11346002)(68736007)(446003)(6512007)(6436002)(486006)(25786009)(66066001)(66476007)(1076003)(66446008)(66556008)(64756008)(2906002)(386003)(6506007)(71190400001)(30864003)(71200400001)(256004)(86362001)(4326008)(186003)(53936002)(50226002)(99286004)(110136005)(54906003)(66946007)(26005)(102836004)(478600001)(2501003)(73956011)(309714004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2637;
 H:VI1PR0401MB2237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PUeVbW5cHtTjCvIJTCaDmToxrC88Gu/JFwMqz80eVt6I2JbqeLoukV0jlk9d1ok48Aujlk74xA3wb7B1fi1PPBHWSxRqrdlrimJAvu2o75QSN2vwuFVXlVlsdcLo2M3xHraDxcffxFzUJoeJ9waCr8CuoyzZWMYhS3oulKTGs1rE7jittQHxsPkkip3bA9lA/I61ThvZdlEfbL94+7gGmbwuogZqjBJX/j1B6ThVeO97WhkIe7SBe6nlBbTV4ApKjY2+rB29CjCCSXcPaESIOxSLriyYGPe7MmCuGhJ3/n0YL0odS3k8fh8VABEejMYuK1ewJMMWc4ie4vi5MZcvHN6ffH1F8E4anyZFHSGMQVnpRi2BQGTZn8zxC4I5GQOk9CdKbCuJ4vkfnsfruk1AxD5bGzTFlsL47Z/d95HwWsA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c287350-8f2b-4137-4456-08d6d9e52337
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 09:59:08.4939 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_025913_006354_53D72D9A 
X-CRM114-Status: GOOD (  21.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Y.b. Lu" <yangbo.lu@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is to add hardware timestamping support
for ENETC. On Rx, timestamping is enabled for all
frames. On Tx, we only instruct the hardware to
timestamp the frames marked accordingly by the stack.

Because the RX BD ring dynamic allocation hasn't been
supported and it's too expensive to use extended RX BDs
if timestamping isn't used, we have to use a Kconfig
option to enable/disable timestamping for now. This
Kconfig option will be removed once RX BD ring dynamic
allocation is implemented.

Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
---
 drivers/net/ethernet/freescale/enetc/Kconfig  |  11 ++
 drivers/net/ethernet/freescale/enetc/enetc.c  | 156 +++++++++++++++++-
 drivers/net/ethernet/freescale/enetc/enetc.h  |  11 +-
 .../net/ethernet/freescale/enetc/enetc_hw.h   |  13 ++
 .../net/ethernet/freescale/enetc/enetc_pf.c   |   1 +
 .../net/ethernet/freescale/enetc/enetc_vf.c   |   1 +
 6 files changed, 187 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/freescale/enetc/Kconfig b/drivers/net/ethernet/freescale/enetc/Kconfig
index 8429f5c1d810..fc6f30d2ef91 100644
--- a/drivers/net/ethernet/freescale/enetc/Kconfig
+++ b/drivers/net/ethernet/freescale/enetc/Kconfig
@@ -29,3 +29,14 @@ config FSL_ENETC_PTP_CLOCK
 	  packets using the SO_TIMESTAMPING API.
 
 	  If compiled as module (M), the module name is fsl-enetc-ptp.
+
+config FSL_ENETC_HW_TIMESTAMPING
+	bool "ENETC hardware timestamping support"
+	depends on FSL_ENETC || FSL_ENETC_VF
+	help
+	  Enable hardware timestamping support on the Ethernet packets
+	  using the SO_TIMESTAMPING API. Because the RX BD ring dynamic
+	  allocation hasn't been supported and it's too expensive to use
+	  extended RX BDs if timestamping isn't used, the option was used
+	  to control hardware timestamping/extended RX BDs to be enabled
+	  or not.
diff --git a/drivers/net/ethernet/freescale/enetc/enetc.c b/drivers/net/ethernet/freescale/enetc/enetc.c
index 5bb9eb35d76d..2137973daba9 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc.c
+++ b/drivers/net/ethernet/freescale/enetc/enetc.c
@@ -13,7 +13,8 @@
 #define ENETC_MAX_SKB_FRAGS	13
 #define ENETC_TXBDS_MAX_NEEDED	ENETC_TXBDS_NEEDED(ENETC_MAX_SKB_FRAGS + 1)
 
-static int enetc_map_tx_buffs(struct enetc_bdr *tx_ring, struct sk_buff *skb);
+static int enetc_map_tx_buffs(struct enetc_bdr *tx_ring, struct sk_buff *skb,
+			      int hw_features);
 
 netdev_tx_t enetc_xmit(struct sk_buff *skb, struct net_device *ndev)
 {
@@ -33,7 +34,7 @@ netdev_tx_t enetc_xmit(struct sk_buff *skb, struct net_device *ndev)
 		return NETDEV_TX_BUSY;
 	}
 
-	count = enetc_map_tx_buffs(tx_ring, skb);
+	count = enetc_map_tx_buffs(tx_ring, skb, priv->hw_features);
 	if (unlikely(!count))
 		goto drop_packet_err;
 
@@ -105,7 +106,8 @@ static void enetc_free_tx_skb(struct enetc_bdr *tx_ring,
 	}
 }
 
-static int enetc_map_tx_buffs(struct enetc_bdr *tx_ring, struct sk_buff *skb)
+static int enetc_map_tx_buffs(struct enetc_bdr *tx_ring, struct sk_buff *skb,
+			      int hw_features)
 {
 	struct enetc_tx_swbd *tx_swbd;
 	struct skb_frag_struct *frag;
@@ -137,7 +139,10 @@ static int enetc_map_tx_buffs(struct enetc_bdr *tx_ring, struct sk_buff *skb)
 	count++;
 
 	do_vlan = skb_vlan_tag_present(skb);
-	do_tstamp = skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP;
+	do_tstamp = (hw_features & ENETC_F_TX_TSTAMP) &&
+		    (skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP);
+	tx_swbd->do_tstamp = do_tstamp;
+	tx_swbd->check_wb = tx_swbd->do_tstamp;
 
 	if (do_vlan || do_tstamp)
 		flags |= ENETC_TXBD_FLAGS_EX;
@@ -299,22 +304,68 @@ static int enetc_bd_ready_count(struct enetc_bdr *tx_ring, int ci)
 	return pi >= ci ? pi - ci : tx_ring->bd_count - ci + pi;
 }
 
+static void enetc_get_tx_tstamp(struct enetc_hw *hw, union enetc_tx_bd *txbd,
+				u64 *tstamp)
+{
+	u32 lo, hi;
+
+	lo = enetc_rd(hw, ENETC_SICTR0);
+	hi = enetc_rd(hw, ENETC_SICTR1);
+	if (lo <= txbd->wb.tstamp)
+		hi -= 1;
+	*tstamp = (u64)hi << 32 | txbd->wb.tstamp;
+}
+
+static void enetc_tstamp_tx(struct sk_buff *skb, u64 tstamp)
+{
+	struct skb_shared_hwtstamps shhwtstamps;
+
+	if (skb_shinfo(skb)->tx_flags & SKBTX_IN_PROGRESS) {
+		memset(&shhwtstamps, 0, sizeof(shhwtstamps));
+		shhwtstamps.hwtstamp = ns_to_ktime(tstamp);
+		skb_tstamp_tx(skb, &shhwtstamps);
+	}
+}
+
 static bool enetc_clean_tx_ring(struct enetc_bdr *tx_ring, int napi_budget)
 {
 	struct net_device *ndev = tx_ring->ndev;
+	struct enetc_ndev_priv *priv = netdev_priv(ndev);
 	int tx_frm_cnt = 0, tx_byte_cnt = 0;
 	struct enetc_tx_swbd *tx_swbd;
+	union enetc_tx_bd *txbd;
+	bool do_tstamp;
 	int i, bds_to_clean;
+	u64 tstamp = 0;
 
 	i = tx_ring->next_to_clean;
 	tx_swbd = &tx_ring->tx_swbd[i];
 	bds_to_clean = enetc_bd_ready_count(tx_ring, i);
 
+	do_tstamp = false;
+
 	while (bds_to_clean && tx_frm_cnt < ENETC_DEFAULT_TX_WORK) {
 		bool is_eof = !!tx_swbd->skb;
 
+		if (unlikely(tx_swbd->check_wb)) {
+			txbd = ENETC_TXBD(*tx_ring, i);
+
+			if (!(txbd->flags & ENETC_TXBD_FLAGS_W))
+				goto no_wb;
+
+			if (tx_swbd->do_tstamp) {
+				enetc_get_tx_tstamp(&priv->si->hw, txbd,
+						    &tstamp);
+				do_tstamp = true;
+			}
+		}
+no_wb:
 		enetc_unmap_tx_buff(tx_ring, tx_swbd);
 		if (is_eof) {
+			if (unlikely(do_tstamp)) {
+				enetc_tstamp_tx(tx_swbd->skb, tstamp);
+				do_tstamp = false;
+			}
 			napi_consume_skb(tx_swbd->skb, napi_budget);
 			tx_swbd->skb = NULL;
 		}
@@ -423,10 +474,34 @@ static int enetc_refill_rx_ring(struct enetc_bdr *rx_ring, const int buff_cnt)
 	return j;
 }
 
+#ifdef CONFIG_FSL_ENETC_HW_TIMESTAMPING
+static void enetc_get_rx_tstamp(struct net_device *ndev,
+				union enetc_rx_bd *rxbd,
+				struct sk_buff *skb)
+{
+	struct skb_shared_hwtstamps *shhwtstamps = skb_hwtstamps(skb);
+	struct enetc_ndev_priv *priv = netdev_priv(ndev);
+	struct enetc_hw *hw = &priv->si->hw;
+	u32 lo, hi;
+	u64 tstamp;
+
+	if (rxbd->r.flags & ENETC_RXBD_FLAG_TSTMP) {
+		lo = enetc_rd(hw, ENETC_SICTR0);
+		hi = enetc_rd(hw, ENETC_SICTR1);
+		if (lo <= rxbd->r.tstamp)
+			hi -= 1;
+
+		tstamp = (u64)hi << 32 | rxbd->r.tstamp;
+		memset(shhwtstamps, 0, sizeof(*shhwtstamps));
+		shhwtstamps->hwtstamp = ns_to_ktime(tstamp);
+	}
+}
+#endif
+
 static void enetc_get_offloads(struct enetc_bdr *rx_ring,
 			       union enetc_rx_bd *rxbd, struct sk_buff *skb)
 {
-	/* TODO: add tstamp, hashing */
+	/* TODO: hashing */
 	if (rx_ring->ndev->features & NETIF_F_RXCSUM) {
 		u16 inet_csum = le16_to_cpu(rxbd->r.inet_csum);
 
@@ -440,6 +515,10 @@ static void enetc_get_offloads(struct enetc_bdr *rx_ring,
 	if (le16_to_cpu(rxbd->r.flags) & ENETC_RXBD_FLAG_VLAN)
 		__vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q),
 				       le16_to_cpu(rxbd->r.vlan_opt));
+#ifdef CONFIG_FSL_ENETC_HW_TIMESTAMPING
+	if (rx_ring->ndev->hw_features & ENETC_F_RX_TSTAMP)
+		enetc_get_rx_tstamp(rx_ring->ndev, rxbd, skb);
+#endif
 }
 
 static void enetc_process_skb(struct enetc_bdr *rx_ring,
@@ -1072,6 +1151,9 @@ static void enetc_setup_rxbdr(struct enetc_hw *hw, struct enetc_bdr *rx_ring)
 	enetc_rxbdr_wr(hw, idx, ENETC_RBICIR0, ENETC_RBICIR0_ICEN | 0x1);
 
 	rbmr = ENETC_RBMR_EN;
+#ifdef CONFIG_FSL_ENETC_HW_TIMESTAMPING
+	rbmr |= ENETC_RBMR_BDS;
+#endif
 	if (rx_ring->ndev->features & NETIF_F_HW_VLAN_CTAG_RX)
 		rbmr |= ENETC_RBMR_VTE;
 
@@ -1394,6 +1476,70 @@ int enetc_set_features(struct net_device *ndev,
 	return 0;
 }
 
+#ifdef CONFIG_FSL_ENETC_HW_TIMESTAMPING
+static int enetc_hwtstamp_set(struct net_device *ndev, struct ifreq *ifr)
+{
+	struct enetc_ndev_priv *priv = netdev_priv(ndev);
+	struct hwtstamp_config config;
+
+	if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
+		return -EFAULT;
+
+	switch (config.tx_type) {
+	case HWTSTAMP_TX_OFF:
+		priv->hw_features &= ~ENETC_F_TX_TSTAMP;
+		break;
+	case HWTSTAMP_TX_ON:
+		priv->hw_features |= ENETC_F_TX_TSTAMP;
+		break;
+	default:
+		return -ERANGE;
+	}
+
+	switch (config.rx_filter) {
+	case HWTSTAMP_FILTER_NONE:
+		priv->hw_features &= ~ENETC_F_RX_TSTAMP;
+		break;
+	default:
+		priv->hw_features |= ENETC_F_RX_TSTAMP;
+		config.rx_filter = HWTSTAMP_FILTER_ALL;
+	}
+
+	return copy_to_user(ifr->ifr_data, &config, sizeof(config)) ?
+	       -EFAULT : 0;
+}
+
+static int enetc_hwtstamp_get(struct net_device *ndev, struct ifreq *ifr)
+{
+	struct enetc_ndev_priv *priv = netdev_priv(ndev);
+	struct hwtstamp_config config;
+
+	config.flags = 0;
+
+	if (priv->hw_features & ENETC_F_TX_TSTAMP)
+		config.tx_type = HWTSTAMP_TX_ON;
+	else
+		config.tx_type = HWTSTAMP_TX_OFF;
+
+	config.rx_filter = (priv->hw_features & ENETC_F_RX_TSTAMP) ?
+			    HWTSTAMP_FILTER_ALL : HWTSTAMP_FILTER_NONE;
+
+	return copy_to_user(ifr->ifr_data, &config, sizeof(config)) ?
+	       -EFAULT : 0;
+}
+#endif
+
+int enetc_ioctl(struct net_device *ndev, struct ifreq *rq, int cmd)
+{
+#ifdef CONFIG_FSL_ENETC_HW_TIMESTAMPING
+	if (cmd == SIOCSHWTSTAMP)
+		return enetc_hwtstamp_set(ndev, rq);
+	if (cmd == SIOCGHWTSTAMP)
+		return enetc_hwtstamp_get(ndev, rq);
+#endif
+	return -EINVAL;
+}
+
 int enetc_alloc_msix(struct enetc_ndev_priv *priv)
 {
 	struct pci_dev *pdev = priv->si->pdev;
diff --git a/drivers/net/ethernet/freescale/enetc/enetc.h b/drivers/net/ethernet/freescale/enetc/enetc.h
index b274135c5103..8c63ea253ab2 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc.h
+++ b/drivers/net/ethernet/freescale/enetc/enetc.h
@@ -21,7 +21,9 @@ struct enetc_tx_swbd {
 	struct sk_buff *skb;
 	dma_addr_t dma;
 	u16 len;
-	u16 is_dma_page;
+	u8 is_dma_page:1;
+	u8 check_wb:1;
+	u8 do_tstamp:1;
 };
 
 #define ENETC_RX_MAXFRM_SIZE	ENETC_MAC_MAXFRM_SIZE
@@ -167,6 +169,11 @@ struct enetc_cls_rule {
 
 #define ENETC_MAX_BDR_INT	2 /* fixed to max # of available cpus */
 
+enum enetc_hw_features {
+	ENETC_F_RX_TSTAMP	= BIT(0),
+	ENETC_F_TX_TSTAMP	= BIT(1),
+};
+
 struct enetc_ndev_priv {
 	struct net_device *ndev;
 	struct device *dev; /* dma-mapping device */
@@ -178,6 +185,7 @@ struct enetc_ndev_priv {
 	u16 rx_bd_count, tx_bd_count;
 
 	u16 msg_enable;
+	int hw_features;
 
 	struct enetc_bdr *tx_ring[16];
 	struct enetc_bdr *rx_ring[16];
@@ -216,6 +224,7 @@ netdev_tx_t enetc_xmit(struct sk_buff *skb, struct net_device *ndev);
 struct net_device_stats *enetc_get_stats(struct net_device *ndev);
 int enetc_set_features(struct net_device *ndev,
 		       netdev_features_t features);
+int enetc_ioctl(struct net_device *ndev, struct ifreq *rq, int cmd);
 /* ethtool */
 void enetc_set_ethtool_ops(struct net_device *ndev);
 
diff --git a/drivers/net/ethernet/freescale/enetc/enetc_hw.h b/drivers/net/ethernet/freescale/enetc/enetc_hw.h
index df8eb8882d92..6559cef4b07d 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc_hw.h
+++ b/drivers/net/ethernet/freescale/enetc/enetc_hw.h
@@ -361,6 +361,12 @@ union enetc_tx_bd {
 		u8 e_flags;
 		u8 flags;
 	} ext; /* Tx BD extension */
+	struct {
+		__le32 tstamp;
+		u8 reserved[10];
+		u8 status;
+		u8 flags;
+	} wb; /* writeback descriptor */
 };
 
 #define ENETC_TXBD_FLAGS_L4CS	BIT(0)
@@ -399,6 +405,9 @@ union enetc_rx_bd {
 	struct {
 		__le64 addr;
 		u8 reserved[8];
+#ifdef CONFIG_FSL_ENETC_HW_TIMESTAMPING
+		u8 reserved1[16];
+#endif
 	} w;
 	struct {
 		__le16 inet_csum;
@@ -413,6 +422,10 @@ union enetc_rx_bd {
 			};
 			__le32 lstatus;
 		};
+#ifdef CONFIG_FSL_ENETC_HW_TIMESTAMPING
+		__le32 tstamp;
+		u8 reserved[12];
+#endif
 	} r;
 };
 
diff --git a/drivers/net/ethernet/freescale/enetc/enetc_pf.c b/drivers/net/ethernet/freescale/enetc/enetc_pf.c
index 15876a6e7598..17e9017cf897 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc_pf.c
+++ b/drivers/net/ethernet/freescale/enetc/enetc_pf.c
@@ -702,6 +702,7 @@ static const struct net_device_ops enetc_ndev_ops = {
 	.ndo_set_vf_vlan	= enetc_pf_set_vf_vlan,
 	.ndo_set_vf_spoofchk	= enetc_pf_set_vf_spoofchk,
 	.ndo_set_features	= enetc_pf_set_features,
+	.ndo_do_ioctl		= enetc_ioctl,
 };
 
 static void enetc_pf_netdev_setup(struct enetc_si *si, struct net_device *ndev,
diff --git a/drivers/net/ethernet/freescale/enetc/enetc_vf.c b/drivers/net/ethernet/freescale/enetc/enetc_vf.c
index 64bebee9f52a..af93cb1af513 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc_vf.c
+++ b/drivers/net/ethernet/freescale/enetc/enetc_vf.c
@@ -111,6 +111,7 @@ static const struct net_device_ops enetc_ndev_ops = {
 	.ndo_get_stats		= enetc_get_stats,
 	.ndo_set_mac_address	= enetc_vf_set_mac_addr,
 	.ndo_set_features	= enetc_vf_set_features,
+	.ndo_do_ioctl		= enetc_ioctl,
 };
 
 static void enetc_vf_netdev_setup(struct enetc_si *si, struct net_device *ndev,
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
