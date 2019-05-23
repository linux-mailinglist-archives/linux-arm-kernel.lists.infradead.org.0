Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B3A27465
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 04:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MqW4UEHy/J6sVK8YdziVCHqTat9UaAoCg6ZpOn7bgvQ=; b=pD+GDLC3PaUuFg
	WM0jD4TBGqVoXYd1h7p5euXadIlYjyrKPpFVrxuTX5baWrS1Ev7LMS0TyVXnVw0VqD+f4fNC+I+vx
	nmbmzW+27+2EiYvVQP6s/RGKF1vig/M6x0VAGU1KcNNqZ1VphDnVzytW9L5dnAWmPdAP2S7EVhF3l
	Y/EzUtydeFHw0LBnXyL2RAOX9gnAZz9YbZ8xY9rXtVortoIcbECk5FUXqd5bMYUlzwhkwANzH11pP
	NaikdY3B5/xYtOOWUf+xt3PabsKiCw8TumkFtd8eTD91BMFZqu4dNuU2pXpIqD8eeGzlCcnXGj925
	4HR6ULoNXUH+ZTd9SqlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTdYF-00048D-CF; Thu, 23 May 2019 02:33:51 +0000
Received: from mail-eopbgr60060.outbound.protection.outlook.com ([40.107.6.60]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTdXw-0003sn-U9
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 02:33:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/arkwlxwYSmXM4oCSnMXiPF7iIjEpKxjPjB0Nm66MEs=;
 b=XYJnY0Rq73GS2m2SO1nRsks/H67+X3sC8CEj+k2MBFHJLJ4G9I0CVRlCbZZeW4oDp/aaV8S7dnW5xRQ/4RM804nYk6hSDSN27njT3ZC0Phs6bLDDoxBNlqPulU8qvwva3mhFxlsKcLvQunnV3aolqmnZv0Bi7Ll6E5w8vsgMcsU=
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com (10.169.132.138) by
 VI1PR0401MB2494.eurprd04.prod.outlook.com (10.168.65.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Thu, 23 May 2019 02:33:29 +0000
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986]) by VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986%3]) with mapi id 15.20.1922.016; Thu, 23 May 2019
 02:33:29 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Richard Cochran
 <richardcochran@gmail.com>, David Miller <davem@davemloft.net>, Claudiu
 Manoil <claudiu.manoil@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Alexandru Marginean <alexandru.marginean@nxp.com>
Subject: [PATCH net-next v2, 1/4] enetc: add hardware timestamping support
Thread-Topic: [PATCH net-next v2, 1/4] enetc: add hardware timestamping support
Thread-Index: AQHVEQ/nERp99wphzkWLuKrdk6WXhA==
Date: Thu, 23 May 2019 02:33:29 +0000
Message-ID: <20190523023451.2933-2-yangbo.lu@nxp.com>
References: <20190523023451.2933-1-yangbo.lu@nxp.com>
In-Reply-To: <20190523023451.2933-1-yangbo.lu@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR04CA0053.apcprd04.prod.outlook.com
 (2603:1096:202:14::21) To VI1PR0401MB2237.eurprd04.prod.outlook.com
 (2603:10a6:800:27::10)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yangbo.lu@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d98a53a8-6417-4162-2e90-08d6df270a32
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2494; 
x-ms-traffictypediagnostic: VI1PR0401MB2494:
x-microsoft-antispam-prvs: <VI1PR0401MB2494D7316CD8B470B9B6A3EFF8010@VI1PR0401MB2494.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:393;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(366004)(346002)(376002)(136003)(189003)(199004)(2616005)(54906003)(66066001)(86362001)(478600001)(110136005)(26005)(476003)(52116002)(486006)(76176011)(8676002)(66476007)(25786009)(81166006)(81156014)(186003)(66946007)(66556008)(64756008)(66446008)(99286004)(73956011)(2906002)(102836004)(3846002)(6116002)(6512007)(386003)(53936002)(2501003)(6506007)(256004)(14444005)(36756003)(68736007)(50226002)(305945005)(6486002)(7736002)(8936002)(71200400001)(71190400001)(6636002)(5660300002)(316002)(1076003)(30864003)(14454004)(446003)(4326008)(11346002)(6436002)(309714004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2494;
 H:VI1PR0401MB2237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: p8fd9Pe/D7EEHzW/PdaITrwu2Q/GB/ntaSakvzON+eOAeUoAcWiwYUE5Xd2bpjRGaz7NXYbrdvuH88D5tnOW2dcin+aOeg25A2HcuTewKpSyC9/jUgfYxAW5XgR/IhfMHzLxFe1fb4UI4M98vVdMoGijJZBKU6xbTeUBHRD+aLwe5dab2qijs35O01p97vHeVMp1MbGiUfDBynIJyuq0d7VgjacmKmC5vLRRoBVjXFpEF+qwpqV83ijgeI5g1alShQ7JL9vDt1wPUP5e06hh/yPd3Xok/c3zOK3AmKtyNH6jcJ0pmK78CpJSAV/yiQT9gHxw6yZcfixxG2usN2y/YzBxjmLV8OoNFBFAMV9+7XqxJu0XWPhu/ObrY5WHhsfDuLdHZ1chSufRL4e5gGCJ0sBauj8FlZRjcKQpWh84PSk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d98a53a8-6417-4162-2e90-08d6df270a32
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 02:33:29.3478 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yangbo.lu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2494
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_193333_100748_BFCAA409 
X-CRM114-Status: GOOD (  22.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.60 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Because the RX BD ring dynamic allocation has not been
supported and it is too expensive to use extended RX BDs
if timestamping is not used, a Kconfig option is used to
enable extended RX BDs in order to support hardware
timestamping. This option will be removed once RX BD
ring dynamic allocation is implemented.

Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>
---
Changes for v2:
	- Rephrased Kconfig help message.
	- Reverse Christmas tree order for variable definitions.
	- Dropped goto in enetc_clean_tx_ring().
	- Used name enetc_active_offloads instead of enetc_hw_features.
	- Fixed up rx tstamp implementation.
	- Rephrased commit message and added Claudiu.
---
 drivers/net/ethernet/freescale/enetc/Kconfig  |  10 ++
 drivers/net/ethernet/freescale/enetc/enetc.c  | 158 +++++++++++++++++-
 drivers/net/ethernet/freescale/enetc/enetc.h  |  12 +-
 .../net/ethernet/freescale/enetc/enetc_hw.h   |  13 ++
 .../net/ethernet/freescale/enetc/enetc_pf.c   |   1 +
 .../net/ethernet/freescale/enetc/enetc_vf.c   |   1 +
 6 files changed, 189 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/freescale/enetc/Kconfig b/drivers/net/ethernet/freescale/enetc/Kconfig
index 8429f5c1d810..ed0d010c7cf2 100644
--- a/drivers/net/ethernet/freescale/enetc/Kconfig
+++ b/drivers/net/ethernet/freescale/enetc/Kconfig
@@ -29,3 +29,13 @@ config FSL_ENETC_PTP_CLOCK
 	  packets using the SO_TIMESTAMPING API.
 
 	  If compiled as module (M), the module name is fsl-enetc-ptp.
+
+config FSL_ENETC_HW_TIMESTAMPING
+	bool "ENETC hardware timestamping support"
+	depends on FSL_ENETC || FSL_ENETC_VF
+	help
+	  Enable hardware timestamping support on the Ethernet packets
+	  using the SO_TIMESTAMPING API. Because the RX BD ring dynamic
+	  allocation has not been supported and it is too expensive to use
+	  extended RX BDs if timestamping is not used, this option enables
+	  extended RX BDs in order to support hardware timestamping.
diff --git a/drivers/net/ethernet/freescale/enetc/enetc.c b/drivers/net/ethernet/freescale/enetc/enetc.c
index 491475d87736..d2ace299bed0 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc.c
+++ b/drivers/net/ethernet/freescale/enetc/enetc.c
@@ -13,7 +13,8 @@
 #define ENETC_MAX_SKB_FRAGS	13
 #define ENETC_TXBDS_MAX_NEEDED	ENETC_TXBDS_NEEDED(ENETC_MAX_SKB_FRAGS + 1)
 
-static int enetc_map_tx_buffs(struct enetc_bdr *tx_ring, struct sk_buff *skb);
+static int enetc_map_tx_buffs(struct enetc_bdr *tx_ring, struct sk_buff *skb,
+			      int active_offloads);
 
 netdev_tx_t enetc_xmit(struct sk_buff *skb, struct net_device *ndev)
 {
@@ -33,7 +34,7 @@ netdev_tx_t enetc_xmit(struct sk_buff *skb, struct net_device *ndev)
 		return NETDEV_TX_BUSY;
 	}
 
-	count = enetc_map_tx_buffs(tx_ring, skb);
+	count = enetc_map_tx_buffs(tx_ring, skb, priv->active_offloads);
 	if (unlikely(!count))
 		goto drop_packet_err;
 
@@ -105,7 +106,8 @@ static void enetc_free_tx_skb(struct enetc_bdr *tx_ring,
 	}
 }
 
-static int enetc_map_tx_buffs(struct enetc_bdr *tx_ring, struct sk_buff *skb)
+static int enetc_map_tx_buffs(struct enetc_bdr *tx_ring, struct sk_buff *skb,
+			      int active_offloads)
 {
 	struct enetc_tx_swbd *tx_swbd;
 	struct skb_frag_struct *frag;
@@ -137,7 +139,10 @@ static int enetc_map_tx_buffs(struct enetc_bdr *tx_ring, struct sk_buff *skb)
 	count++;
 
 	do_vlan = skb_vlan_tag_present(skb);
-	do_tstamp = skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP;
+	do_tstamp = (active_offloads & ENETC_F_TX_TSTAMP) &&
+		    (skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP);
+	tx_swbd->do_tstamp = do_tstamp;
+	tx_swbd->check_wb = tx_swbd->do_tstamp;
 
 	if (do_vlan || do_tstamp)
 		flags |= ENETC_TXBD_FLAGS_EX;
@@ -299,24 +304,69 @@ static int enetc_bd_ready_count(struct enetc_bdr *tx_ring, int ci)
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
 	int tx_frm_cnt = 0, tx_byte_cnt = 0;
 	struct enetc_tx_swbd *tx_swbd;
 	int i, bds_to_clean;
+	bool do_tstamp;
+	u64 tstamp = 0;
 
 	i = tx_ring->next_to_clean;
 	tx_swbd = &tx_ring->tx_swbd[i];
 	bds_to_clean = enetc_bd_ready_count(tx_ring, i);
 
+	do_tstamp = false;
+
 	while (bds_to_clean && tx_frm_cnt < ENETC_DEFAULT_TX_WORK) {
 		bool is_eof = !!tx_swbd->skb;
 
+		if (unlikely(tx_swbd->check_wb)) {
+			struct enetc_ndev_priv *priv = netdev_priv(ndev);
+			union enetc_tx_bd *txbd;
+
+			txbd = ENETC_TXBD(*tx_ring, i);
+
+			if (txbd->flags & ENETC_TXBD_FLAGS_W &&
+			    tx_swbd->do_tstamp) {
+				enetc_get_tx_tstamp(&priv->si->hw, txbd,
+						    &tstamp);
+				do_tstamp = true;
+			}
+		}
+
 		if (likely(tx_swbd->dma))
 			enetc_unmap_tx_buff(tx_ring, tx_swbd);
 
 		if (is_eof) {
+			if (unlikely(do_tstamp)) {
+				enetc_tstamp_tx(tx_swbd->skb, tstamp);
+				do_tstamp = false;
+			}
 			napi_consume_skb(tx_swbd->skb, napi_budget);
 			tx_swbd->skb = NULL;
 		}
@@ -425,10 +475,37 @@ static int enetc_refill_rx_ring(struct enetc_bdr *rx_ring, const int buff_cnt)
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
+#ifdef CONFIG_FSL_ENETC_HW_TIMESTAMPING
+	struct enetc_ndev_priv *priv = netdev_priv(rx_ring->ndev);
+#endif
+	/* TODO: hashing */
 	if (rx_ring->ndev->features & NETIF_F_RXCSUM) {
 		u16 inet_csum = le16_to_cpu(rxbd->r.inet_csum);
 
@@ -442,6 +519,10 @@ static void enetc_get_offloads(struct enetc_bdr *rx_ring,
 	if (le16_to_cpu(rxbd->r.flags) & ENETC_RXBD_FLAG_VLAN)
 		__vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q),
 				       le16_to_cpu(rxbd->r.vlan_opt));
+#ifdef CONFIG_FSL_ENETC_HW_TIMESTAMPING
+	if (priv->active_offloads & ENETC_F_RX_TSTAMP)
+		enetc_get_rx_tstamp(rx_ring->ndev, rxbd, skb);
+#endif
 }
 
 static void enetc_process_skb(struct enetc_bdr *rx_ring,
@@ -1074,6 +1155,9 @@ static void enetc_setup_rxbdr(struct enetc_hw *hw, struct enetc_bdr *rx_ring)
 	enetc_rxbdr_wr(hw, idx, ENETC_RBICIR0, ENETC_RBICIR0_ICEN | 0x1);
 
 	rbmr = ENETC_RBMR_EN;
+#ifdef CONFIG_FSL_ENETC_HW_TIMESTAMPING
+	rbmr |= ENETC_RBMR_BDS;
+#endif
 	if (rx_ring->ndev->features & NETIF_F_HW_VLAN_CTAG_RX)
 		rbmr |= ENETC_RBMR_VTE;
 
@@ -1396,6 +1480,70 @@ int enetc_set_features(struct net_device *ndev,
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
+		priv->active_offloads &= ~ENETC_F_TX_TSTAMP;
+		break;
+	case HWTSTAMP_TX_ON:
+		priv->active_offloads |= ENETC_F_TX_TSTAMP;
+		break;
+	default:
+		return -ERANGE;
+	}
+
+	switch (config.rx_filter) {
+	case HWTSTAMP_FILTER_NONE:
+		priv->active_offloads &= ~ENETC_F_RX_TSTAMP;
+		break;
+	default:
+		priv->active_offloads |= ENETC_F_RX_TSTAMP;
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
+	if (priv->active_offloads & ENETC_F_TX_TSTAMP)
+		config.tx_type = HWTSTAMP_TX_ON;
+	else
+		config.tx_type = HWTSTAMP_TX_OFF;
+
+	config.rx_filter = (priv->active_offloads & ENETC_F_RX_TSTAMP) ?
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
index b274135c5103..281bb4368b98 100644
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
@@ -167,6 +169,12 @@ struct enetc_cls_rule {
 
 #define ENETC_MAX_BDR_INT	2 /* fixed to max # of available cpus */
 
+/* TODO: more hardware offloads */
+enum enetc_active_offloads {
+	ENETC_F_RX_TSTAMP	= BIT(0),
+	ENETC_F_TX_TSTAMP	= BIT(1),
+};
+
 struct enetc_ndev_priv {
 	struct net_device *ndev;
 	struct device *dev; /* dma-mapping device */
@@ -178,6 +186,7 @@ struct enetc_ndev_priv {
 	u16 rx_bd_count, tx_bd_count;
 
 	u16 msg_enable;
+	int active_offloads;
 
 	struct enetc_bdr *tx_ring[16];
 	struct enetc_bdr *rx_ring[16];
@@ -216,6 +225,7 @@ netdev_tx_t enetc_xmit(struct sk_buff *skb, struct net_device *ndev);
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
index 78287c517095..d78ec8d43c39 100644
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
index 72c3ea887bcf..17f72644c5a1 100644
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
