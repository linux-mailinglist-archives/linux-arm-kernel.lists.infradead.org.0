Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7058827475
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 04:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3BHZBJ74EyxO287g6bK9y+Uojtsy0ObdEV/8l8/kzx4=; b=UH4591WESJnCQ3
	lQzSj7dHTOz4CJL4IsRtpNcCzkM717/pgelHhoJPceGbWi8y2s0YkIEk0xF3yOafpODAPXMb7jyHf
	7B8kRN0AfMzkS3lbQqcMCgfYCZ7wtZRgkuJzYww49Doxly7zNszDAdCmbW6kEpX3hnjKU2wQd9AbN
	vgNv9PyJcx5niWHAGnDebXCEG0zCRmAvqr2bal2+P0FVeMXj3AuU1t/1MpXrITYkKsEVT+AMD1CBE
	MUoeZzxn0hetzR39wU5vC3yCEWvFkziHJTgoA+N65Tm3vIkyMcmM7aSNDbnbmegEdc/8yLOM247rr
	UPc3MUlh9ktA3pei4Z3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTdYP-0004HO-Su; Thu, 23 May 2019 02:34:01 +0000
Received: from mail-eopbgr60060.outbound.protection.outlook.com ([40.107.6.60]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTdY2-0003sn-8O
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 02:33:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d2q4ra9q9Nu35Cwmly5OuixyVs7lPBjEwxFSSaLG/VE=;
 b=d3IwBZhGIp6BGCs3U9uYXl6xM5fwa2z0rMgOaBWYuMAzdubEF+6po8t9MZrBEzWOl/cFB5Sfv5Gd1AnXFTdSwBx/72NLtH5hH57/x5hnGATkteJRh8h+tdzCafZKyN7oJ89ulmrOBGXwtu77yMRraBqpI7NNsvXNGFHQc9AQ09s=
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com (10.169.132.138) by
 VI1PR0401MB2494.eurprd04.prod.outlook.com (10.168.65.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Thu, 23 May 2019 02:33:33 +0000
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986]) by VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986%3]) with mapi id 15.20.1922.016; Thu, 23 May 2019
 02:33:33 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Richard Cochran
 <richardcochran@gmail.com>, David Miller <davem@davemloft.net>, Claudiu
 Manoil <claudiu.manoil@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Alexandru Marginean <alexandru.marginean@nxp.com>
Subject: [PATCH net-next v2, 2/4] enetc: add get_ts_info interface for ethtool
Thread-Topic: [PATCH net-next v2, 2/4] enetc: add get_ts_info interface for
 ethtool
Thread-Index: AQHVEQ/qWwNzgkPVw0iRjtIX9MK2uQ==
Date: Thu, 23 May 2019 02:33:33 +0000
Message-ID: <20190523023451.2933-3-yangbo.lu@nxp.com>
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
x-ms-office365-filtering-correlation-id: 5feaf647-1d88-44a0-85bf-08d6df270cbd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2494; 
x-ms-traffictypediagnostic: VI1PR0401MB2494:
x-microsoft-antispam-prvs: <VI1PR0401MB2494108FA4C3EE6429733A6BF8010@VI1PR0401MB2494.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:556;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(366004)(346002)(376002)(136003)(189003)(199004)(2616005)(54906003)(66066001)(86362001)(478600001)(110136005)(26005)(476003)(52116002)(486006)(76176011)(8676002)(66476007)(25786009)(81166006)(81156014)(186003)(66946007)(66556008)(64756008)(66446008)(99286004)(73956011)(2906002)(102836004)(3846002)(6116002)(6512007)(386003)(53936002)(2501003)(6506007)(256004)(36756003)(68736007)(50226002)(305945005)(6486002)(7736002)(8936002)(71200400001)(71190400001)(6636002)(5660300002)(316002)(1076003)(14454004)(446003)(4326008)(11346002)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2494;
 H:VI1PR0401MB2237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: X6eC/NzyZjLtzXKr56uql+JL9u7c9/T47CpMg6xIYRf12r32FFZj0CTVs4UdRNSbMumgTgfTsIwvdpwFkF5YrWVspqhgDpliAwejJnCpp8ZAXDJ/uGjwnZu1W4Ken9Nsl92xSjCDaCQnpcgPwK23AgpdVOqhpavoy0L/xX86GYi9pNobz0+h8oqImj/OuoldzQ7o6mClMP+A1I0zQmLeWuv567KZzVvocCXGMTpJYd68s+43OjIJjVYgSH21tOJt5jXzMDEENOmdU26VHLCEjjlX1taa6T3Di7cAlhtNyU/BLfVREGs1DevCAnoAFdxOLd7iqRczoYod1xg22o5JrBmAR5cdQRaRhey7s1X6eYTRgPLbIE5/UWVyF757rWEComp0yRWVuxlgJRD7655IWwdT3Ekz4CpAHHB6WyEvzmU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5feaf647-1d88-44a0-85bf-08d6df270cbd
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 02:33:33.4543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yangbo.lu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2494
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_193338_553933_21E3EB29 
X-CRM114-Status: GOOD (  15.85  )
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

This patch is to add get_ts_info interface for ethtool
to support getting timestamping capability.

Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
---
Changes for v2:
	- None.
---
 drivers/net/ethernet/freescale/enetc/enetc.h  |  3 ++
 .../ethernet/freescale/enetc/enetc_ethtool.c  | 31 +++++++++++++++++++
 .../net/ethernet/freescale/enetc/enetc_ptp.c  |  5 +++
 3 files changed, 39 insertions(+)

diff --git a/drivers/net/ethernet/freescale/enetc/enetc.h b/drivers/net/ethernet/freescale/enetc/enetc.h
index 281bb4368b98..ea443268bf70 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc.h
+++ b/drivers/net/ethernet/freescale/enetc/enetc.h
@@ -209,6 +209,9 @@ struct enetc_msg_cmd_set_primary_mac {
 
 #define ENETC_CBDR_TIMEOUT	1000 /* usecs */
 
+/* PTP driver exports */
+extern int enetc_phc_index;
+
 /* SI common */
 int enetc_pci_probe(struct pci_dev *pdev, const char *name, int sizeof_priv);
 void enetc_pci_remove(struct pci_dev *pdev);
diff --git a/drivers/net/ethernet/freescale/enetc/enetc_ethtool.c b/drivers/net/ethernet/freescale/enetc/enetc_ethtool.c
index b9519b6ad727..fcb52efec075 100644
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
@@ -571,6 +600,7 @@ static const struct ethtool_ops enetc_pf_ethtool_ops = {
 	.get_link_ksettings = phy_ethtool_get_link_ksettings,
 	.set_link_ksettings = phy_ethtool_set_link_ksettings,
 	.get_link = ethtool_op_get_link,
+	.get_ts_info = enetc_get_ts_info,
 };
 
 static const struct ethtool_ops enetc_vf_ethtool_ops = {
@@ -586,6 +616,7 @@ static const struct ethtool_ops enetc_vf_ethtool_ops = {
 	.set_rxfh = enetc_set_rxfh,
 	.get_ringparam = enetc_get_ringparam,
 	.get_link = ethtool_op_get_link,
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
