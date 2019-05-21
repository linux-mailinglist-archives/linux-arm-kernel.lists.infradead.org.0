Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DB0249FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:15:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RkzI8+BZqUcoVTInNBQTHAY3UxjP+AKyn5LYibxz8ec=; b=XCZeQn5Gsfb4w/
	JNN1nxaa3PqI9dRSlCJK1nH7u+bo9pJcwQ/bwQs8lPMQZgBzrDAEZMRM3XDxjpBqrzo/HhXGFE2AP
	siqFQyTiY6R0ebAZ8PPVNx5mj8ZYR4vpE5iqt1ELQ1iw3X0BBK9g8uHBoYFgAbqYBvPfauv/UQ91G
	WMKMTNynw3bj07hccYm3S5KtvPqFuZqxhDOek3qU3bFNn34SNnhSfD+LXS4vT3vFIwuCiWju2eGoX
	ldUkSRhcHofMMOxZUk3f0dFZID+gce6tNGKo3uHvJu7kPfSkCJpECdrX/XIdIo/Nzb5nhwRYjfkhH
	IJoKG1q331nk1KO47qYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzw6-0005fP-BW; Tue, 21 May 2019 08:15:50 +0000
Received: from mail-eopbgr60051.outbound.protection.outlook.com ([40.107.6.51]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzvz-0005eb-Fq
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:15:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7AM1WZ5eU7CJlTjSJwBxY0XMQwfmUnsETJfcFXm1lXE=;
 b=TY4i5+2AjnTnCgWwKdRlpyHSwNmaV6/SqOGgDT+c69TCut3oDdJtvuio0tiKKe4Soo2R96rimn/yZgPxoR+X7/ILAjHXRdrxteaEnzqTLGGOWWnRY+6/E009uqScWKN9cRIJaRyJCpgOlgmIfILjXmrGaxKyuvmcnO9xjkd1XYc=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3676.eurprd04.prod.outlook.com (52.134.70.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Tue, 21 May 2019 08:15:26 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 08:15:26 +0000
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
Subject: [PATCH V2] arm64: dts: imx8mq: Add gpio alias
Thread-Topic: [PATCH V2] arm64: dts: imx8mq: Add gpio alias
Thread-Index: AQHVD61YX+qmbYgrUEa+0R4OAqes8Q==
Date: Tue, 21 May 2019 08:15:26 +0000
Message-ID: <1558426216-14026-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0015.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::27) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 711a00fe-1f00-445d-c167-08d6ddc47a9e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3676; 
x-ms-traffictypediagnostic: DB3PR0402MB3676:
x-microsoft-antispam-prvs: <DB3PR0402MB367608D7A10B957A8A8BB93BF5070@DB3PR0402MB3676.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(346002)(366004)(39860400002)(136003)(199004)(189003)(2201001)(2616005)(102836004)(186003)(6436002)(66556008)(7416002)(36756003)(26005)(4326008)(86362001)(3846002)(6512007)(476003)(68736007)(6486002)(50226002)(305945005)(25786009)(7736002)(6116002)(2501003)(81156014)(81166006)(53936002)(2906002)(66066001)(14454004)(8936002)(8676002)(486006)(110136005)(71200400001)(71190400001)(4744005)(52116002)(99286004)(386003)(6506007)(256004)(316002)(73956011)(66946007)(66476007)(64756008)(66446008)(478600001)(5660300002)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3676;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ci5e2Li/EPg1HerSN1oQZ+LHAVEkwYm/imhbzKU0fCxjH3AoYB4eRlAMgZjGpmtWFQaHGcPGFc6AKXsIEqKmHxCRDlrcwfDDtlafuXwjC4H35k7240kzGleLAP9z31Nc8XpXw1yq7eXaEi1SwtB8I/KoQLP4C/gGclPdanoQHOGgF1Ct1vUra4lmqY1Ej96Jh+wpfpUNHrzkMVoJnwVNvZOtrgAXJo07Ga6Tx3MsH6MpIL/bFqRQWsFq/A5vxQP8SCpsgIzUyJ3UjpBolHVtZTq2e6ZN/Mi56woV3eaKsfIyi8/9zUv/9yjT4u2n85LLF+GpnHMcHjmQn9hSE+thfTaxVM3+jTmNNRQOMHbzzrZTo4RSMS1/urJRqsvU+N8N9GCnxA9I0YQU8Z4JBpqtuYM/JHla6oRQu9y4LOnMfio=
Content-ID: <D5ADB57D0C704249AA60350BD0AD1730@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 711a00fe-1f00-445d-c167-08d6ddc47a9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 08:15:26.6693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3676
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_011543_597383_C1B879EA 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.51 listed in list.dnswl.org]
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

Add i.MX8MQ GPIO alias for kernel GPIO driver usage.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- keep the list alphabetically sorted, no content change.
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 437ea19..96ac929 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -19,6 +19,11 @@
 	#size-cells = <2>;
 
 	aliases {
+		gpio0 = &gpio1;
+		gpio1 = &gpio2;
+		gpio2 = &gpio3;
+		gpio3 = &gpio4;
+		gpio4 = &gpio5;
 		i2c0 = &i2c1;
 		i2c1 = &i2c2;
 		i2c2 = &i2c3;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
