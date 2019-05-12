Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BE21AB95
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 12:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2QJJZ0MAFCzzoOosKw7VrFadhH0z2wiBG+uJBlPXFfw=; b=FZAQ9ly8tXr3YL
	Xayv5kmYJD8LVHHhrowen1eAqG4GFiKBuItwur8OK9GHiIAh0W1CPskb4cw1Ar7N4Oe3IC3cVWS60
	VaaGKLg465vM/dwXr98pFs9Q9cqxDPMbCZLjZcPsnXMtfLeTkLVjWCbQMOA0jxfKZB2O97x27UX5l
	hzMZxW1NqxvKFVi7IJpXzveZR7yJ8Slp0V7AQmLWp39IfZpmkbxNj2+LpbtEK0UGMpkfdTpKtv9Bc
	7789PQU9xUczh/TjSWav3BMmOOrk4Le5pKDdjO7YbHlk2Mwv0cE+OITb3oFWXrG86ubZf9wGoPpLo
	DCovLIT2IPbNqcYOOCow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPlJP-0006Me-LG; Sun, 12 May 2019 10:02:31 +0000
Received: from mail-eopbgr150073.outbound.protection.outlook.com
 ([40.107.15.73] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPlJ9-0006CG-Er
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 10:02:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f95xEAy3BNcdb7ffIAeaX2Mwx9y9DtEwpFRORv9wkaQ=;
 b=CCv+DQCC79ierZiJsnVXjbTYebWKb1RH2a4lsrT/UEeklzKxXleu5tef1Qg6mhFxBSMu0AIE2BWqK/URYX4V6/qWQhYgUfkWCE+KgrN98jRXAA/29npD8K0b9Ou2jWoR9f5GkTfpJPvc9G4nwUg7vceeohDSKBBecxf8qEcGmJ0=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3913.eurprd04.prod.outlook.com (52.134.65.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Sun, 12 May 2019 10:02:14 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Sun, 12 May 2019
 10:02:14 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH RESEND 2/2] ARM: dts: imx6qdl: Assign corresponding clocks
 instead of dummy clock
Thread-Topic: [PATCH RESEND 2/2] ARM: dts: imx6qdl: Assign corresponding
 clocks instead of dummy clock
Thread-Index: AQHVCKnF4tjTdRl/wkOJUp/FW8AbFQ==
Date: Sun, 12 May 2019 10:02:13 +0000
Message-ID: <1557655028-12654-2-git-send-email-Anson.Huang@nxp.com>
References: <1557655028-12654-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557655028-12654-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0036.apcprd01.prod.exchangelabs.com
 (2603:1096:203:3e::24) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 21fe96b6-5133-4f5c-2feb-08d6d6c0e7fb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3913; 
x-ms-traffictypediagnostic: DB3PR0402MB3913:
x-microsoft-antispam-prvs: <DB3PR0402MB39134440D66A0812CE743404F50E0@DB3PR0402MB3913.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:334;
x-forefront-prvs: 0035B15214
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(396003)(376002)(39860400002)(136003)(189003)(199004)(446003)(36756003)(81156014)(52116002)(50226002)(81166006)(99286004)(76176011)(4326008)(8936002)(25786009)(2906002)(486006)(110136005)(305945005)(7736002)(4744005)(5660300002)(68736007)(316002)(6506007)(2201001)(14454004)(386003)(6116002)(73956011)(66066001)(256004)(6512007)(11346002)(66556008)(14444005)(66476007)(3846002)(66946007)(66446008)(2616005)(64756008)(476003)(71190400001)(6486002)(53936002)(478600001)(186003)(71200400001)(8676002)(26005)(2501003)(86362001)(102836004)(6436002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3913;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gsNwIosckeJmtfmFhTq+ivhDgMjJXnm7gYHmn7HS627IBpcUNB/VuV+Y5jd0csyLqRpy4fnQjkeOmnTyVDLGXPPxqDZyw8CsKFqMQnodnaPOUzlYE9/wcgYWCRflDYs4pl8S+iytTLcu5BeXe6HEWmajZx3qacpHRb5E5zlAA8LV1McdKirFfbUURY9hGJ1b4/5IWf98aIrJNKfjJdGjR6d8LhIAhF8/nnTaWtN4pkbvvKZ09FCN5O9xhBv9aRrh29Kr+2QDnq9Uxg66jtCBykEKjQI57a6Fhya42A+gUEd3yhtJ+/mwvBMjr0WAd4xmrdyOlrdH6i9We9BGoMZ8eZINViHtLBJ3+6LtZsuu4UGxsv/xhuEVS838EjJmelFdfIQEnHMvzRy8RDpGSmrbpL0ypKyYivTGM04HOSA+XAI=
Content-ID: <690554EFBD99D94FBFE3185571A98004@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21fe96b6-5133-4f5c-2feb-08d6d6c0e7fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2019 10:02:14.0492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3913
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_030215_501653_41A687D1 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

i.MX6Q/DL's WDOGs use IMX6QDL_CLK_IPG as clock root, assign
IMX6QDL_CLK_IPG to them instead of IMX6QDL_CLK_DUMMY.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
No code change, just resend patch with correct encoding.
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
