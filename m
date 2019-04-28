Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 003CBB4D8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 05:27:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRCYQnBcg1XgoWfcaM6nHHpnHKRChVHrRmbkopx8Kyc=; b=OAvwUrLEtv3oFX
	O+4eF4qMbxay07Nv2lJgWvWb+CzcIYFeUcNOXiU2wNW3N7ropaU1QyB6qNnCXC5zf7Rd+KvPUxLXl
	uUWLkNwhb13aAQJd69/mRJTmygNeZmjNCs5Iv1ZDLQxhzb5zjE17XUaIfsDeqxuOPVqAJlMWZlHBP
	RuledLWrATymPNmwbMPGIOOjDxI7nP/kWIbvNR0uFE2iSBuzLMLOjbbOxbGkBkzDoP2ZggEWVzuuV
	BRGwDvWmdqU38QDsmHwWL5UY0AIxyxiSuaYvjPzy/OeUgZLjKtp/KnOCitt0wXirGL6UtbBsItTSW
	xsoVDkmOXz5q3uI5rudA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKaTS-0006du-Mb; Sun, 28 Apr 2019 03:27:30 +0000
Received: from mail-he1eur01on0619.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::619]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKaT8-0006PF-Rl
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 03:27:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pDTSK2+XWeq9bUPnabuSLTxpEZjGWzAO9XUShIlehfI=;
 b=t7cjESbTDIROuOIBL174gaHo3jDNZU661PYyDumta2h08pE5Wz45DI78b8BgtjcmPlrHxRO23YmekAOR6tHNSQWyjwt2qOhteU/oHQzDBLATtk/0H2GVlJVOKDKmto09/APIxMvzMLN2AlpWW4c3zl7zvMwmb7x2J2t4mgIp/1c=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3897.eurprd04.prod.outlook.com (52.134.73.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Sun, 28 Apr 2019 03:27:06 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1835.015; Sun, 28 Apr 2019
 03:27:06 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>, Peng Fan
 <peng.fan@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH V2 2/4] arm64: dts: imx8qxp: Move watchdog node into scu node
Thread-Topic: [PATCH V2 2/4] arm64: dts: imx8qxp: Move watchdog node into scu
 node
Thread-Index: AQHU/XJBMePp7oGhF0qxLfGbK1VHkQ==
Date: Sun, 28 Apr 2019 03:27:06 +0000
Message-ID: <1556421727-7401-2-git-send-email-Anson.Huang@nxp.com>
References: <1556421727-7401-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1556421727-7401-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2P15301CA0012.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::22) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b5d82cf2-5f3e-4ebd-8378-08d6cb89636e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3897; 
x-ms-traffictypediagnostic: DB3PR0402MB3897:
x-microsoft-antispam-prvs: <DB3PR0402MB3897A8D39C56E3A152FB5670F5380@DB3PR0402MB3897.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:514;
x-forefront-prvs: 0021920B5A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(396003)(366004)(346002)(39860400002)(189003)(199004)(256004)(71190400001)(71200400001)(97736004)(6116002)(186003)(66066001)(86362001)(2201001)(476003)(2616005)(8936002)(36756003)(486006)(11346002)(81156014)(81166006)(25786009)(53936002)(50226002)(3846002)(446003)(2906002)(2501003)(386003)(6506007)(76176011)(68736007)(4326008)(102836004)(64756008)(52116002)(66946007)(66476007)(66556008)(8676002)(66446008)(6486002)(6436002)(7416002)(14454004)(73956011)(7736002)(99286004)(478600001)(316002)(110136005)(305945005)(26005)(6512007)(5660300002)(4744005)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3897;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eYk0a49tUAT3cQtj5lFpmOk+3Zqymmc15xzluBSMmfOGKJmeqoK0Gwh8/xVLnK/BNLNiW8o06nMgizh/XGsqSIcgaoawIN3PhknOjGy9YrZJVwJImLIA+vAjtKpTCD8B6ussqYymKhQcAcznt4tLhSeNFtHvjGrIoZz5DrurENbBxVy6DarsNJwXpSqOj6x0DDaC0MmTqRKWD+5K8e8BxRCWSVWO10Yyv3XD8zMf28o1yddh1gF0n6/DlCH4p9SU2AN3ttSzNU9H6n0SCXV5fPDvhzMtz3YvQIt58ZxYu0Y2mRfUWY+8UrnU+nugVHU3ygmIJhDdbaIWYmS2lQ5BZCQyiD4258c9saylByhqHvQDddEQXVbOJQBuHIrwy9RClUgTSEQtSS359Qrf7bQgaVVZx9E2H7KLzIubKASFtJk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5d82cf2-5f3e-4ebd-8378-08d6cb89636e
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2019 03:27:06.3452 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3897
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_202710_896474_0985B936 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1e:0:0:0:619 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

i.MX system controller watchdog has pretimeout function which
depends on i.MX SCU driver, so it should be a subnode of SCU.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
New patch.
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 0683ee2..b17c22e 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -149,6 +149,11 @@
 		rtc: rtc {
 			compatible = "fsl,imx8qxp-sc-rtc";
 		};
+
+		watchdog {
+			compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
+			timeout-sec = <60>;
+		};
 	};
 
 	timer {
@@ -517,9 +522,4 @@
 			power-domains = <&pd IMX_SC_R_GPIO_7>;
 		};
 	};
-
-	watchdog {
-		compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
-		timeout-sec = <60>;
-	};
 };
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
