Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDCAB4D7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 05:27:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W7IWSwPbRfNPfcqUjfD6uo1QKZDbpi5GlqPah9kFgEc=; b=tuWQp+wMARL4UQ
	fPMcrGm5hlF3zdT97LTjOs6MUkx40N9szI3MP4UdT/pTaAy5W40Qg0j/kwnSh5Bvf3q+dYzJugAO3
	gbGXIZf3TlYdwZfkFJmIop8ym9MRcepvSFOxOi/PKZObit4ij7qZPvDyMLGU2ckKXt9fiVfnHFSsJ
	cdNSx8VYK71mInGszqGuugnvGdPrEBvs6/ff6MkpNLEsMM1vZDY0oMEd0jeTXCFyZjgCLEwwfeAe7
	WGKDsMNrfMkrC/N+ErI4xnzrgJVR8vgaRGukEA75KOgQGiUDxiWc4Gq6gURY5isIurrWh9Z9ka0Cm
	jHg1ygajPYLBYHsulBag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKaTE-0006QM-RC; Sun, 28 Apr 2019 03:27:16 +0000
Received: from mail-he1eur01on0619.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::619]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKaT6-0006PF-IR
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 03:27:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BhB3A2JNndJKgMCUoZRHe2FQQQ26UAAz7zxR3MobPtU=;
 b=G6mu/xsjT4unCXeOQ32ptVIE8iTjjVh+McyKca3KXkqkRMQy5SD6eOLtZT/4KzDB0dFm4+2k0IGI/KtSl8aJOzIi5s6uKnJIaorExzI0txTaUY+9TRSSN0JBWVOiNv72houxHlUbG2ECOklAI2Yvks4163yciRH25XO6U0biy6Y=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3897.eurprd04.prod.outlook.com (52.134.73.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Sun, 28 Apr 2019 03:27:00 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1835.015; Sun, 28 Apr 2019
 03:27:00 +0000
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
Subject: [PATCH V2 1/4] dt-bindings: fsl: scu: add watchdog binding
Thread-Topic: [PATCH V2 1/4] dt-bindings: fsl: scu: add watchdog binding
Thread-Index: AQHU/XI9f9LbYLWILEa/3i56q8YtDQ==
Date: Sun, 28 Apr 2019 03:27:00 +0000
Message-ID: <1556421727-7401-1-git-send-email-Anson.Huang@nxp.com>
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
x-ms-office365-filtering-correlation-id: e03741d5-612e-4dc8-6d8f-08d6cb896048
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3897; 
x-ms-traffictypediagnostic: DB3PR0402MB3897:
x-microsoft-antispam-prvs: <DB3PR0402MB38978FBB11BBA76EEDD60F3EF5380@DB3PR0402MB3897.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0021920B5A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(396003)(366004)(346002)(39860400002)(189003)(199004)(256004)(71190400001)(71200400001)(97736004)(6116002)(186003)(66066001)(86362001)(2201001)(476003)(2616005)(8936002)(36756003)(486006)(81156014)(81166006)(25786009)(53936002)(50226002)(3846002)(2906002)(2501003)(386003)(6506007)(68736007)(4326008)(102836004)(64756008)(52116002)(66946007)(66476007)(66556008)(8676002)(66446008)(6486002)(6436002)(7416002)(14454004)(73956011)(7736002)(99286004)(478600001)(316002)(110136005)(305945005)(26005)(6512007)(5660300002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3897;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UAMloTgBjtNW0EnPP2Xcg/ybXgFsspQdeZWoE8W67RA05O4nWLaC4feQo9fsAFfTGpxZxf0cJ3bbiynHMW7OR7wWrBvQiQFlyOw5SGtFeJ86EjyP/85Jm3pPtNJrM4476Xcc3n3cEaYEi3XUwiic9RrL2+KGmznialgwvMEGGXi2d/hK/DPiYcMGG6QnboeLbNsz5iiRSwSGPnIEDnx/tFkzN178scdNqiCQPafiszxWt60ytP1ZQuJJG7LEJgSqDHmpx04zEtqVJ+qMKK6kIzTvSniDLlkSQQ23b5z59f5HIezmzLzsBRe7HOiRPFe9f6Wo+eNr0C5CMXNBuxrILDMkkTRgnhYmruEgfSUlNpuXrsdHqm3VHpTkKrseUN3D65Js2BO1vJnvqZPiSXWjn2w8E9xeqOl7iqKFHrKtgXA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e03741d5-612e-4dc8-6d8f-08d6cb896048
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2019 03:27:00.8513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3897
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_202708_676667_AC4B6752 
X-CRM114-Status: GOOD (  10.65  )
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
depends on i.MX SCU driver, so watchdog DT node needs to be
subnode of SCU, this patch adds i.MX system controller watchdog
binding to SCU binding doc.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
New patch.
---
 .../devicetree/bindings/arm/freescale/fsl,scu.txt         | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
index 5d7dbab..1b56557 100644
--- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
+++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
@@ -133,6 +133,16 @@ RTC bindings based on SCU Message Protocol
 Required properties:
 - compatible: should be "fsl,imx8qxp-sc-rtc";
 
+Watchdog bindings based on SCU Message Protocol
+------------------------------------------------------------
+
+Required properties:
+- compatible: should be:
+              "fsl,imx8qxp-sc-wdt"
+              followed by "fsl,imx-sc-wdt";
+Optional properties:
+- timeout-sec: contains the watchdog timeout in seconds.
+
 Example (imx8qxp):
 -------------
 aliases {
@@ -185,6 +195,11 @@ firmware {
 		rtc: rtc {
 			compatible = "fsl,imx8qxp-sc-rtc";
 		};
+
+		watchdog {
+			compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
+			timeout-sec = <60>;
+		};
 	};
 };
 
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
