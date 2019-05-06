Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC35143C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 05:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BbY7g4PdKOOYcC8UkojP7unT9qI6uk9hfLv5jz01mB8=; b=gzOuVSSFnRiYhm
	pRlyhkdYJSV4b/G92hSgsyP1fVZN6qjyhoL9JSkk8ECG0M0KN8xW0oo0dR7Z2A6baeU5Ho6JF6tSW
	VcErdtPKYbh35cdg6PKG+J4u5unfWbyaM8glYaxtsxmVGL4GK4mYqE3DKpZs20BYakhDls7e7NV0W
	3nfznuCiWjo1uMM8Af+IWbrimbEe0N4joiz9jZ4rpAAtRV8H0Tp/3llvLQotTipsbvfImNyAdmjBF
	r26ycjy13HMIMIm+aC4OCHECSgG6VaFwXVbLpy3vM8AOTi8NhRxAfIpBjxtZ8jtAtNn4FLeOIbncS
	Unlsgm7Qo+P8VnGDZilQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNUHY-0004Cu-0m; Mon, 06 May 2019 03:27:12 +0000
Received: from mail-eopbgr70085.outbound.protection.outlook.com ([40.107.7.85]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNUHI-000446-L4
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 03:26:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qYm82xapVzqlM4WNQoM9knM1Nsx5RW958/Ue6kqfmN4=;
 b=LUZH71DoxrjiDWtmStrtHORjiImu+RR0kbAYluaKGw53B7pYapposFAX2h9lftwEmDnBbfAo+nrpZwy5625bQ+thSsQxKbJhVVkk2mPn+qYdBM7QCaWxeLGYA+uPgobJs6GATT97BXV62JrheFio8imLvHUxz6E5Fxrey/qbi1k=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3756.eurprd04.prod.outlook.com (52.134.73.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Mon, 6 May 2019 03:26:54 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 03:26:54 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/2] ARM: dts: imx6qdl: Assign corresponding clocks instead of
 dummy clock
Thread-Topic: [PATCH 2/2] ARM: dts: imx6qdl: Assign corresponding clocks
 instead of dummy clock
Thread-Index: AQHVA7uNF1kKh/86SEOOvgIfDAJrlA==
Date: Mon, 6 May 2019 03:26:54 +0000
Message-ID: <1557112911-17115-2-git-send-email-Anson.Huang@nxp.com>
References: <1557112911-17115-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557112911-17115-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0212.apcprd02.prod.outlook.com
 (2603:1096:201:20::24) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 85b17a79-30e8-40ac-96c6-08d6d1d2af67
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3756; 
x-ms-traffictypediagnostic: DB3PR0402MB3756:
x-microsoft-antispam-prvs: <DB3PR0402MB37561176555BE9880EDFBDEDF5300@DB3PR0402MB3756.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:334;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(366004)(396003)(376002)(346002)(199004)(189003)(6436002)(4744005)(14444005)(110136005)(6486002)(316002)(71190400001)(71200400001)(256004)(8676002)(81156014)(81166006)(8936002)(50226002)(76176011)(66946007)(7736002)(2501003)(4326008)(52116002)(66556008)(64756008)(86362001)(66476007)(2201001)(66446008)(2906002)(99286004)(6116002)(3846002)(305945005)(478600001)(68736007)(6512007)(14454004)(53936002)(2616005)(11346002)(36756003)(5660300002)(73956011)(66066001)(102836004)(186003)(26005)(386003)(6506007)(25786009)(486006)(476003)(446003)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3756;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +P1kc8ZD0tyQ0aOBNu78ZTyAd0iUyBttVOUtQL98m82zLC1SWA2/ZEkK2VwkVlIeLTDwvE+SuKinHlZ5wfn0eUZXHNRZlpPlPiVV2Rjk3wip5JrTK/w0WOpXw7vDnE95gfQ7AeUy9Fo6gdNsNl4NhRcmJZsedQtK8lUx2fFxZ8ZBH7+XNiJdcvCImGyUdVR9srRzR4jlfsUcYuwyqvweY9nkNihKeHHQW9IM+Bgb8zThEDP6t0K4BKbg0iw8SL7Y/WtlAwt5EO8bKX9M6uZYMretXpp3i5kWB1pQAtlDgREbv6IYHHRruCWPidAogteHmkf9qxSmj1koC2jkuMJSLhEa1NgBUnXL0odHApIa1YaZjDO1OfeRvhsJftR40dieRGC517Dx9Ngiqf5knDtCg/f9m1+fwkMMsnVPdRpWREg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85b17a79-30e8-40ac-96c6-08d6d1d2af67
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 03:26:54.0676 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3756
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_202656_774825_C7F3B5A5 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

i.MX6Q/DL's WDOGs use IMX6QDL_CLK_IPG as clock root, assign
IMX6QDL_CLK_IPG to them instead of IMX6QDL_CLK_DUMMY.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6qdl.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index b3a77bc..664f7b5 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -675,14 +675,14 @@
 				compatible = "fsl,imx6q-wdt", "fsl,imx21-wdt";
 				reg = <0x020bc000 0x4000>;
 				interrupts = <0 80 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&clks IMX6QDL_CLK_DUMMY>;
+				clocks = <&clks IMX6QDL_CLK_IPG>;
 			};
 
 			wdog2: wdog@20c0000 {
 				compatible = "fsl,imx6q-wdt", "fsl,imx21-wdt";
 				reg = <0x020c0000 0x4000>;
 				interrupts = <0 81 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&clks IMX6QDL_CLK_DUMMY>;
+				clocks = <&clks IMX6QDL_CLK_IPG>;
 				status = "disabled";
 			};
 
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
