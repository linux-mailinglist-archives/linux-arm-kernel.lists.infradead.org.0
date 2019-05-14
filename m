Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9A81C0EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 05:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/kBEeUitSgduUdOaMhSkygX2sGf74estAaf25QGa6U4=; b=un3iIDmD/H/3P4
	90Jph/jedz4UKomtYSj3qDWRIYwUGvDtTtu5mRmPDdmnmnnxFnQvOTuTmatNzyjH8fVkijG8e6FZ6
	0T2mWWTZckgciTf8E7884+Zl0zEnw6s7xNN2qy/DlClPEfNG4NzzskIGT3HlhVbscICWux4zg1EgF
	DCbmhS+frwhrCbVh2yI+tmeSZP7Nm2zZO+xv0b5re/jNHJMHp1zOqLSyC44k14brvttxLTcAE9LYN
	ob1bOpd7AmblZl43zcEJXub5iZBVtSxhaTxVztXLE910/gRmGmHr3EXlHLtJvwvxIioSGddXdrQna
	cG18rDc/4i/4SxGFhDMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQOCf-0007Ln-6P; Tue, 14 May 2019 03:34:09 +0000
Received: from mail-eopbgr130043.outbound.protection.outlook.com
 ([40.107.13.43] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQOCX-0007L9-1I
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 03:34:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ijRcvrg3jrVS2khTN8APbzM7uz8GeP5PbXhROHfCRj0=;
 b=FfSIJ9yWbz8NZGuRjpxd/SaCWzFGavsYHBqwY7S5q9oO20zldsLeXlgwxysubWS+JzbQEceFNllHgnfI1TVfn+Ad+6AM/5so2RfLmlypOqm+Qu+x3pvzadQOnl2B4TEXS/o4nh5VsZtHu8ljW1plPf45qvDUEB1bZbjAhi6Utz0=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3802.eurprd04.prod.outlook.com (52.134.71.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Tue, 14 May 2019 03:33:56 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1900.010; Tue, 14 May 2019
 03:33:56 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Abel Vesa
 <abel.vesa@nxp.com>, "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "ccaione@baylibre.com" <ccaione@baylibre.com>, "angus@akkea.ca"
 <angus@akkea.ca>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] arm64: dts: imx8mq: Add gpio alias
Thread-Topic: [PATCH] arm64: dts: imx8mq: Add gpio alias
Thread-Index: AQHVCgXcX4QYJXCP60mxd4H1AV7MJA==
Date: Tue, 14 May 2019 03:33:56 +0000
Message-ID: <1557804533-18194-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0180.apcprd02.prod.outlook.com
 (2603:1096:201:21::16) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2bf72782-ba51-4e85-f20a-08d6d81cfe4a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3802; 
x-ms-traffictypediagnostic: DB3PR0402MB3802:
x-microsoft-antispam-prvs: <DB3PR0402MB38023EB9BE1B07CA7078E490F5080@DB3PR0402MB3802.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:843;
x-forefront-prvs: 0037FD6480
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(396003)(346002)(376002)(199004)(189003)(66556008)(66476007)(73956011)(66946007)(8936002)(486006)(66446008)(6512007)(478600001)(256004)(36756003)(305945005)(4326008)(64756008)(110136005)(2201001)(14454004)(4744005)(8676002)(6436002)(81156014)(81166006)(25786009)(68736007)(71200400001)(6486002)(5660300002)(53936002)(50226002)(7736002)(71190400001)(6506007)(102836004)(3846002)(6116002)(386003)(2616005)(52116002)(26005)(2906002)(316002)(476003)(186003)(7416002)(86362001)(99286004)(66066001)(2501003)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3802;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NT+B+BEIGbujM01wjRFFmXIzdmLNuDh8mObe8t8M/2FzbWPaktKgJk7t4B4omTl3EBpLas+WcOnD9y3lSo+LzqD9+2sv/6Onh4KCgKMDrv9j1hjDcsTxnB7EMIfGzSG2wvuoJVFJCW/HtDlvRxjj9xfsqfD0KuUqr6haQ+j+8GiATWzJVXhtF4IEPx2WJFVPysAmKGqwDiLnCBnwELr9r6b/oWV+COLhYgunvFZkJF4kVsJXZNHIBaQFB0B+ECV3BpwHSJYwce15fKyrqyr8jjBHTJdZB/4ZQ1M1a5tIOdbEGBFodk8xunFMN/OOd24KwXAL3GO3jOlvLGc/8eRJQ5deIajOx0a6Ol8pa5jQat0tl1WkGtK+4+QuuO+25icrDN0pU7BN3TE6C+Wky4y2p4hREsGDbKpINHpjsRRTxA0=
Content-ID: <0A018126CD316C4A904C208F9394F50C@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bf72782-ba51-4e85-f20a-08d6d81cfe4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2019 03:33:56.1846 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3802
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_203401_147305_80DBDE7A 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add i.MX8MQ GPIO alias for kernel GPIO driver usage.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 6d635ba..df33672 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -30,6 +30,11 @@
 		spi0 = &ecspi1;
 		spi1 = &ecspi2;
 		spi2 = &ecspi3;
+		gpio0 = &gpio1;
+		gpio1 = &gpio2;
+		gpio2 = &gpio3;
+		gpio3 = &gpio4;
+		gpio4 = &gpio5;
 	};
 
 	ckil: clock-ckil {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
