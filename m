Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 086F224A07
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:17:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tZdYC/xLYzutgEwsxJ6U3TLq5lCvQmjncu+UQ4A+V78=; b=cwiBya/AZ5lLU9
	gWeD9IalgeowAcpfsvFqKlrc9Ez1CKWikvfGkgvwTyx5V0omRati6g7/iu8DLcCAeIICF3c+rbV7W
	cusD4hG0KljR+sxPNHd4bzGmAnJEEZpOLfUnJGFIrzwMfdsPxxYiVFmHDCfmq4Eue8Y6KylxrJq1L
	sM/+W6qUcysd7UZKr1M0iODl4WrENlQ9foL5suNO22NTxe5ebK4Ml81zDuFLbhQ4bud89T0CT98AU
	ttFpJFGLjHGexsq88X0VGBEreBVdbmNDPSjzvxLnFVsl/jSMeJZsjEFelMgMMhizQ+UAbkF9ghOh7
	bFHJqd2jlwdmIULpJZ6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzxT-0006IJ-PL; Tue, 21 May 2019 08:17:15 +0000
Received: from mail-eopbgr20064.outbound.protection.outlook.com ([40.107.2.64]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzxL-0006Gf-Bf
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:17:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qEyyS8ol+HkDpt3Ef1dA2HWrDspdUA7/D/lLX0vQjUo=;
 b=SpfLpmN3jBb1Alxvco4tZRPPWZCtPmMi7XLAPEK9Nj0oPvQszAn4bk2Ve6DSrSkmSM+Piy+ATIkZ5dSzmVqe0ZNXqwQtvxSJzST1bisjhcpmxTiAER9V1aCIAYEFLSKTDFlTrklOkNzUOkWgn7U7QlvVFj3MeC50QYlGebQKlzo=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3755.eurprd04.prod.outlook.com (52.134.71.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Tue, 21 May 2019 08:17:03 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 08:17:02 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, Aisheng
 Dong <aisheng.dong@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH V2] arm64: dts: imx8qxp: Add gpio alias
Thread-Topic: [PATCH V2] arm64: dts: imx8qxp: Add gpio alias
Thread-Index: AQHVD62RzvRMKJqLaE6z8I6tTELPJg==
Date: Tue, 21 May 2019 08:17:02 +0000
Message-ID: <1558426311-14082-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0068.apcprd04.prod.outlook.com
 (2603:1096:202:15::12) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e749f0be-a302-4e65-7a89-08d6ddc4b2f8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3755; 
x-ms-traffictypediagnostic: DB3PR0402MB3755:
x-microsoft-antispam-prvs: <DB3PR0402MB375528A6EE25645FD1008D09F5070@DB3PR0402MB3755.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(136003)(346002)(366004)(39860400002)(189003)(199004)(4744005)(478600001)(6486002)(7736002)(186003)(2906002)(102836004)(86362001)(68736007)(66066001)(305945005)(25786009)(81166006)(14454004)(4326008)(2201001)(6506007)(50226002)(386003)(53936002)(8936002)(6512007)(66476007)(66556008)(64756008)(66446008)(73956011)(66946007)(5660300002)(2501003)(256004)(99286004)(110136005)(6436002)(476003)(71190400001)(71200400001)(36756003)(8676002)(3846002)(6116002)(316002)(2616005)(81156014)(52116002)(26005)(486006)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3755;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5hl1vKUivANKZkIa2ceJ0ZoeBSJWa41XNHFHhfGaBC8juAY3w7HOO8lV+/keJh9iLfP3aoBGiz9mIVk4NPyAYKe4eMwGJ1atOAwTXjf7MWVIry1Dbi9RIYmaF6aba2Io3D+Vl8/Oz74eMZgDO627ZTZtQkff07LdUiElnJbszzEo+N7fZwpA8wRC8BNwHQrh0g1k6ok6DTMAXOoVjgU674PTYKuwa2l0rWAKA/W4G/m3kOjoV5drW7Uwk8P/DKFKF1pCDfO0X7TYI0cHmru+fF3pz5/NTnmWJdvKQ8uHhu7tG+YbLCoh4UK8WLfOnZIIMt22+pXNODH/ihIjUtLKa/AeidbzWhIjbXDQBJhetrHAMLWkVSFPnxkiPsfpfYH88ewbGh8cZhVPffwuoS6lYUEMwfxkNOSmYRwMaRDb1ck=
Content-ID: <A2CABE59647ECC4090163A08D8073540@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e749f0be-a302-4e65-7a89-08d6ddc4b2f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 08:17:02.7918 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3755
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_011707_402268_44BFEE1B 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.64 listed in list.dnswl.org]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add i.MX8QXP GPIO alias for kernel GPIO driver usage.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- keep the list alphabetically sorted, no content change.
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index b17c22e..9f52da6 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -17,6 +17,14 @@
 	#size-cells = <2>;
 
 	aliases {
+		gpio0 = &lsio_gpio0;
+		gpio1 = &lsio_gpio1;
+		gpio2 = &lsio_gpio2;
+		gpio3 = &lsio_gpio3;
+		gpio4 = &lsio_gpio4;
+		gpio5 = &lsio_gpio5;
+		gpio6 = &lsio_gpio6;
+		gpio7 = &lsio_gpio7;
 		mmc0 = &usdhc1;
 		mmc1 = &usdhc2;
 		mmc2 = &usdhc3;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
