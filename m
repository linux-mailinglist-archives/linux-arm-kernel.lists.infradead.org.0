Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DECA2030A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 11:59:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SsvbHvlkevA2vaqELYiynHiw2heZixpc9AoVzs+Hzpc=; b=CtNpZsmFMo8LpF
	rXDw3t8Yt/r56PkNNUXkzeZfyFnh8xc+1aHqtXH4Ld8wW1xRU/5XbywvBrNe4JVNDnmKhYJJEn/jO
	JvM9nlfbjW2bdHJSZIN6/yylYG53PGLyZD+qVtjs3/Fa8Ij36ym53QIlAimnHWbAbhUULJU1tohyV
	xO9oM2DtxRwiXs32O2YJGeZbFfoTxGgLnyclg/Hk+QpFkmAOedPEIwbe+f0yv/48A1jb/Yti01RJC
	Jj/m7V2A44pFPVYav95YLJ67j8xQs0sVrtN5u+/GAzFeNQtGqdl2rqAn9RItEkYwFz2URLRnSKvPT
	+a2FBa3y9QCxT5Tl5rQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDAs-0007Ev-LG; Thu, 16 May 2019 09:59:42 +0000
Received: from mail-eopbgr140050.outbound.protection.outlook.com
 ([40.107.14.50] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDAS-0006rB-32
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 09:59:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LLLDSRV3y7e5lrpnJH7HIpdQYx0qclSzKp9Fk5Y13Zs=;
 b=UZ5zokavRNdso/FrVWWMMnYqOmhi6AfLuVd4kWuBFin9wW+eBnm8XuuwkosC8somX5/m7OFfBClytX3as46JKaQbhiyo6lOpKRcnrLEjHZ5RhdtXUVephkv3T2OwY139bdN68PW3+uW3mzdnKD2ETDqXrJ+X76UTZPGrXNPG9tU=
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com (10.169.132.138) by
 VI1PR0401MB2445.eurprd04.prod.outlook.com (10.168.64.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Thu, 16 May 2019 09:59:12 +0000
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986]) by VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986%3]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 09:59:12 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Richard Cochran
 <richardcochran@gmail.com>, David Miller <davem@davemloft.net>, Claudiu
 Manoil <claudiu.manoil@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 2/3] enetc: add get_ts_info interface for ethtool
Thread-Topic: [PATCH 2/3] enetc: add get_ts_info interface for ethtool
Thread-Index: AQHVC84DvLvigxLxdka8Zo2g31ppjA==
Date: Thu, 16 May 2019 09:59:12 +0000
Message-ID: <20190516100028.48256-3-yangbo.lu@nxp.com>
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
x-ms-office365-filtering-correlation-id: 9c0328c9-4c9d-4e75-6b4a-08d6d9e525b2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2445; 
x-ms-traffictypediagnostic: VI1PR0401MB2445:
x-microsoft-antispam-prvs: <VI1PR0401MB2445171404A8973A05AD27C3F80A0@VI1PR0401MB2445.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:556;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(376002)(136003)(396003)(346002)(199004)(189003)(6506007)(99286004)(386003)(14454004)(76176011)(52116002)(5660300002)(54906003)(4326008)(478600001)(316002)(102836004)(66066001)(6116002)(3846002)(2906002)(68736007)(36756003)(71200400001)(8936002)(53936002)(256004)(64756008)(66556008)(66476007)(73956011)(66446008)(66946007)(486006)(6512007)(7736002)(446003)(8676002)(186003)(11346002)(476003)(2616005)(71190400001)(305945005)(2501003)(25786009)(26005)(86362001)(6436002)(6486002)(110136005)(81156014)(81166006)(50226002)(1076003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2445;
 H:VI1PR0401MB2237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ztUmhjM1CtSH5CL/w+LElH531bkKN+iWk5V50WsejTH2RjvomM1Nhlr2TTspNNiZlqthRyqfLvyjwEqsIGhHef0lCNwlcw0Gy+/vjY1OzgZLn5tjogAPq72U3CkEJNC1/vOsB/ys7H4UlruKY5hz8XeVfinPLyuobjFK7F56JBA2hLFmlxdySNeN3w7ETnio6X8W0iwIKSCE+GwLR2aoj0l3g1IjR+V4C1lMnv7Iec+aDRXH4PjCI8V99UY5rglq9l4IsT/itA/IUYeCPD4fu3ENdVkQM5x+DtCFXV1UZBp+jC83WsYjpoSq/CSpdtc4F/zW/l56FOX64iQx8xKgYQsEiH+zR0KAr8acxV7x/2oIVVM8j4jxAwIKjOcQMthYtJRWtXo+L0J+puiLlHPKH5t8JhCup1QimEXVriZxsIE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c0328c9-4c9d-4e75-6b4a-08d6d9e525b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 09:59:12.7355 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2445
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_025916_336381_C157D2AA 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.50 listed in wl.mailspike.net]
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

This patch is to add get_ts_info interface for ethtool
to support getting timestamping capability.

Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
---
 drivers/net/ethernet/freescale/enetc/enetc.h  |  3 ++
 .../ethernet/freescale/enetc/enetc_ethtool.c  | 31 +++++++++++++++++++
 .../net/ethernet/freescale/enetc/enetc_ptp.c  |  5 +++
 3 files changed, 39 insertions(+)

diff --git a/drivers/net/ethernet/freescale/enetc/enetc.h b/drivers/net/ethernet/freescale/enetc/enetc.h
index 8c63ea253ab2..eb7cc76dc0c0 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc.h
+++ b/drivers/net/ethernet/freescale/enetc/enetc.h
@@ -208,6 +208,9 @@ struct enetc_msg_cmd_set_primary_mac {
 
 #define ENETC_CBDR_TIMEOUT	1000 /* usecs */
 
+/* PTP driver exports */
+extern int enetc_phc_index;
+
 /* SI common */
 int enetc_pci_probe(struct pci_dev *pdev, const char *name, int sizeof_priv);
 void enetc_pci_remove(struct pci_dev *pdev);
diff --git a/drivers/net/ethernet/freescale/enetc/enetc_ethtool.c b/drivers/net/ethernet/freescale/enetc/enetc_ethtool.c
index 1ecad9ffabae..e2e5a0ca8c47 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc_ethtool.c
+++ b/drivers/net/ethernet/freescale/enetc/enetc_ethtool.c
@@ -555,6 +555,35 @@ static void enetc_get_ringparam(struct net_device *ndev,
 	}
 }
 
+static int enetc_get_ts_info(struct net_device *ndev,
+			     struct ethtool_ts_info *info)
+{
+	int *phc_idx;
+
+	phc_idx = symbol_get(enetc_phc_index);
+	if (phc_idx) {
+		info->phc_index = *phc_idx;
+		symbol_put(enetc_phc_index);
+	} else {
+		info->phc_index = -1;
+	}
+
+#ifdef CONFIG_FSL_ENETC_HW_TIMESTAMPING
+	info->so_timestamping = SOF_TIMESTAMPING_TX_HARDWARE |
+				SOF_TIMESTAMPING_RX_HARDWARE |
+				SOF_TIMESTAMPING_RAW_HARDWARE;
+
+	info->tx_types = (1 << HWTSTAMP_TX_OFF) |
+			 (1 << HWTSTAMP_TX_ON);
+	info->rx_filters = (1 << HWTSTAMP_FILTER_NONE) |
+			   (1 << HWTSTAMP_FILTER_ALL);
+#else
+	info->so_timestamping = SOF_TIMESTAMPING_RX_SOFTWARE |
+				SOF_TIMESTAMPING_SOFTWARE;
+#endif
+	return 0;
+}
+
 static const struct ethtool_ops enetc_pf_ethtool_ops = {
 	.get_regs_len = enetc_get_reglen,
 	.get_regs = enetc_get_regs,
@@ -570,6 +599,7 @@ static const struct ethtool_ops enetc_pf_ethtool_ops = {
 	.get_ringparam = enetc_get_ringparam,
 	.get_link_ksettings = phy_ethtool_get_link_ksettings,
 	.set_link_ksettings = phy_ethtool_set_link_ksettings,
+	.get_ts_info = enetc_get_ts_info,
 };
 
 static const struct ethtool_ops enetc_vf_ethtool_ops = {
@@ -584,6 +614,7 @@ static const struct ethtool_ops enetc_vf_ethtool_ops = {
 	.get_rxfh = enetc_get_rxfh,
 	.set_rxfh = enetc_set_rxfh,
 	.get_ringparam = enetc_get_ringparam,
+	.get_ts_info = enetc_get_ts_info,
 };
 
 void enetc_set_ethtool_ops(struct net_device *ndev)
diff --git a/drivers/net/ethernet/freescale/enetc/enetc_ptp.c b/drivers/net/ethernet/freescale/enetc/enetc_ptp.c
index 8c1497e7d9c5..2fd2586e42bf 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc_ptp.c
+++ b/drivers/net/ethernet/freescale/enetc/enetc_ptp.c
@@ -7,6 +7,9 @@
 
 #include "enetc.h"
 
+int enetc_phc_index = -1;
+EXPORT_SYMBOL(enetc_phc_index);
+
 static struct ptp_clock_info enetc_ptp_caps = {
 	.owner		= THIS_MODULE,
 	.name		= "ENETC PTP clock",
@@ -96,6 +99,7 @@ static int enetc_ptp_probe(struct pci_dev *pdev,
 	if (err)
 		goto err_no_clock;
 
+	enetc_phc_index = ptp_qoriq->phc_index;
 	pci_set_drvdata(pdev, ptp_qoriq);
 
 	return 0;
@@ -119,6 +123,7 @@ static void enetc_ptp_remove(struct pci_dev *pdev)
 {
 	struct ptp_qoriq *ptp_qoriq = pci_get_drvdata(pdev);
 
+	enetc_phc_index = -1;
 	ptp_qoriq_free(ptp_qoriq);
 	kfree(ptp_qoriq);
 
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
