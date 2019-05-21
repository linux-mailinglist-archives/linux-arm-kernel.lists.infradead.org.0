Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F1524BD5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 11:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qD7x9qC4o+IBcNmneyISK9lmdSDboAL1XZNaDVDNOQQ=; b=EeM49gX1+fELVR
	UdbKAZGgdXlqNy80bLu4JX1ReTknJdhRiL5u+mNgRTmVtyBQB/77jli8AAOGI0oW1fb60EhmBmeU1
	lYhIRwd8MuP3JiANnp2U50qvcLS+BjY9XUsW/y4ACYevsAzACmk21MDIXBGzyWFsprBG5Rqi0MFGW
	sXi5ha3JsbvkC9hPbfJJdqzh8Mhc5GjksxYOis7m8uhAiy1u2BUynQt/XEgEgsiO2Lhf2b6t2P6O3
	HbECq37iK7YxrG7tOXqxmJGV2t+Zyv5jcmI+gDWd5S9tip8AnmWhBbms5qpOT0Q7hgare6gOpZRoX
	VI6q6V6UpYzBb3alB5pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1Ft-0001dN-Hm; Tue, 21 May 2019 09:40:21 +0000
Received: from mail-eopbgr80053.outbound.protection.outlook.com ([40.107.8.53]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1Fm-0001cS-6t
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 09:40:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eAoaiVTiGo5Guyhmb5IF0i/auh0hQOUlAGx391mJ0Ms=;
 b=FGMaH5RnMpd61S8snlCFTVm57pf6qpWBZBI5JELjOSAUsga1YBaVd74xkliE363kjMBwctl0OKnAt3pY+Z7OdabkWpnZd+E41LoAv+mMJmByLpmIdOrGg4F24y1hzn0Ty7J303hksf1zfiDA7gkA4v8txcBDNQATG3EmbJ51koo=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2478.eurprd04.prod.outlook.com (10.168.67.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Tue, 21 May 2019 09:40:09 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::3d45:6b81:13ba:88cf]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::3d45:6b81:13ba:88cf%7]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 09:40:09 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Leo Li <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Mingkai Hu
 <mingkai.hu@nxp.com>, Rajesh Bhagat <rajesh.bhagat@nxp.com>
Subject: [PATCH] arm64: dts: fsl: ls1046: Modify the qspi flash frequency
Thread-Topic: [PATCH] arm64: dts: fsl: ls1046: Modify the qspi flash frequency
Thread-Index: AQHVD7ktQ8RWPOovOUGEsxSVPIIdWw==
Date: Tue, 21 May 2019 09:40:09 +0000
Message-ID: <20190521150336.8409-1-pankaj.bansal@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BM1PR01CA0131.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:40::25) To VI1PR0401MB2496.eurprd04.prod.outlook.com
 (2603:10a6:800:56::10)
x-mailer: git-send-email 2.17.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [92.120.1.69]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 60f29b2f-3da4-4420-532e-08d6ddd05020
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2478; 
x-ms-traffictypediagnostic: VI1PR0401MB2478:
x-microsoft-antispam-prvs: <VI1PR0401MB2478A67360B4E6966C45FC1EF1070@VI1PR0401MB2478.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(376002)(396003)(346002)(136003)(189003)(199004)(26005)(14444005)(256004)(66946007)(66476007)(66556008)(64756008)(73956011)(81156014)(81166006)(8676002)(25786009)(6636002)(53936002)(6512007)(7736002)(71190400001)(36756003)(71200400001)(66446008)(54906003)(4326008)(2906002)(99286004)(8936002)(110136005)(386003)(6506007)(102836004)(316002)(52116002)(44832011)(305945005)(478600001)(68736007)(50226002)(486006)(6436002)(86362001)(476003)(2616005)(3846002)(66066001)(186003)(1076003)(14454004)(5660300002)(6486002)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2478;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cVJ/ARjbfqZ4nmuROt83UveH8Gk1xQRusE4Bymbo9omDHirCh+PzhBscSVh8fVt3cD/X1OjQDKxMV+CGJvcvIAz712aKto8xqrxWLIw0N/7gyzaI82ZsuTixpquHbaYg4Rc50csIw2i4hsdCHHZ9JbOB/dGNBHGVtl3J6ECFWCHr9xYXcvSII+34S2Pv5+JLiOooJ/7AVO2Da8Y7Eqa9wluSJ1oQBHAIYYikL4rjedusSNQH1oWS4g6c1lkHMAHjoJ5CbsEBMbZLxAXPV6pFvIBaXSNiXS7NkhfbtIrh9cGkvvmowX3qncwf2VEXKSc+4v1iJalNAjilnyns9BGBGMFyCJoeOk4BrnS0eUd+IkUBQ/87f/DeyQe0n46/NB51gDmUymYUC+5qoS7Xs8Fu3JDeMIjU5c03oYKxe3TL5Sc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60f29b2f-3da4-4420-532e-08d6ddd05020
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 09:40:09.1569 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2478
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_024014_254401_3320E170 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The qspi flash in ls1046a based QDS and RDB boards can operate
at 50MHz frequency.
Therefore, update the maximum supported freq in their respective
dts files.

Signed-off-by: Pankaj Bansal <pankaj.bansal@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts | 4 ++--
 arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts | 5 +++--
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts
index eec62c63dafe..e441dbfbfb81 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts
@@ -3,7 +3,7 @@
  * Device Tree Include file for Freescale Layerscape-1046A family SoC.
  *
  * Copyright 2016 Freescale Semiconductor, Inc.
- * Copyright 2018 NXP
+ * Copyright 2018-2019 NXP
  *
  * Shaohui Xie <Shaohui.Xie@nxp.com>
  */
@@ -169,7 +169,7 @@
 		compatible = "spansion,m25p80";
 		#address-cells = <1>;
 		#size-cells = <1>;
-		spi-max-frequency = <20000000>;
+		spi-max-frequency = <50000000>;
 		spi-rx-bus-width = <4>;
 		spi-tx-bus-width = <4>;
 		reg = <0>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
index 6a6514d0e5a9..6f5411d09bb9 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
@@ -3,6 +3,7 @@
  * Device Tree Include file for Freescale Layerscape-1046A family SoC.
  *
  * Copyright 2016 Freescale Semiconductor, Inc.
+ * Copyright 2019 NXP
  *
  * Mingkai Hu <mingkai.hu@nxp.com>
  */
@@ -105,7 +106,7 @@
 		compatible = "spansion,m25p80";
 		#address-cells = <1>;
 		#size-cells = <1>;
-		spi-max-frequency = <20000000>;
+		spi-max-frequency = <50000000>;
 		spi-rx-bus-width = <4>;
 		spi-tx-bus-width = <4>;
 		reg = <0>;
@@ -115,7 +116,7 @@
 		compatible = "spansion,m25p80";
 		#address-cells = <1>;
 		#size-cells = <1>;
-		spi-max-frequency = <20000000>;
+		spi-max-frequency = <50000000>;
 		spi-rx-bus-width = <4>;
 		spi-tx-bus-width = <4>;
 		reg = <1>;
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
