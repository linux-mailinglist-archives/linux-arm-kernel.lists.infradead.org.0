Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 119241574F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 03:29:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8NbtyFdw3Reve3JpUZDkAL0fQ+MOn6rhAAtil3UbhmI=; b=Dzs7fNkSk1YUVM
	nWlcNWnjCUvDn6QeZPUvXGBPhI77No25EjyWWnaTxDP7VlV3E612YEL6nzSMG9JB8lZNOY6KbmLbr
	UPkr7UY6KamDnubvYrlIa5mwg+FATnN9knV/2WSCXShXuPa5afO/dZOFz8kP5ixIj4vo1lBzWNYLE
	iLZxPS+J6QCzsxglJs9bFOsTUut2HHRqQuTJWV9yyTBY9jp1h0qc2yrZa0JuqRR1zF/WZJ6s60Tfn
	vImXBGgiNyBodcIWCEc70C2AsgUa4E35mOFkmFH07vHAMERR23CdM3j2y4ihDLJCycS2KUpSHWN5P
	VwsmlkWpte+tObE3QqMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNoul-0008NK-U6; Tue, 07 May 2019 01:29:03 +0000
Received: from mail-vi1eur04on0614.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::614]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNouO-000805-S6
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 01:28:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sOIRiR5vwE7X1H3TBSlJ90bjqK0SXHYdQy7zVWW4VpA=;
 b=bcMeA2maJU/2sCSzo50qekBEV2Z4Vnjf+Jf8R+4Vvxh9R83pguK91Zd177g90pr8HCThRI/r6A50TXuxFXxJX2ACPuJdXq4f6tRX9Vc75acturA/8E9KQBiDkCO0+ILjK4ThfJ+o1jeLbcJgI3v3JKpTy7HPWYkL4euherdoLjU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3721.eurprd04.prod.outlook.com (52.134.67.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Tue, 7 May 2019 01:28:26 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 01:28:26 +0000
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
Subject: [PATCH V4 2/3] arm64: dts: imx8qxp: Move watchdog node into scu node
Thread-Topic: [PATCH V4 2/3] arm64: dts: imx8qxp: Move watchdog node into scu
 node
Thread-Index: AQHVBHQm1dC+0FUFL0auwgOAdhy91g==
Date: Tue, 7 May 2019 01:28:18 +0000
Message-ID: <1557192198-19640-2-git-send-email-Anson.Huang@nxp.com>
References: <1557192198-19640-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557192198-19640-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0084.apcprd03.prod.outlook.com
 (2603:1096:203:72::24) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f87c6cc9-9736-49a1-83a1-08d6d28b4884
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3721; 
x-ms-traffictypediagnostic: DB3PR0402MB3721:
x-microsoft-antispam-prvs: <DB3PR0402MB3721E5E08DCB2B40405778B9F5310@DB3PR0402MB3721.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:514;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(39860400002)(136003)(396003)(376002)(189003)(199004)(316002)(7416002)(4326008)(2501003)(6512007)(14454004)(2906002)(6116002)(81156014)(36756003)(3846002)(305945005)(7736002)(66066001)(2201001)(53936002)(50226002)(8936002)(8676002)(5660300002)(11346002)(486006)(476003)(99286004)(110136005)(2616005)(86362001)(6436002)(26005)(102836004)(6486002)(256004)(76176011)(186003)(52116002)(68736007)(6666004)(4744005)(25786009)(446003)(64756008)(71190400001)(71200400001)(478600001)(73956011)(6506007)(386003)(81166006)(66446008)(66476007)(66946007)(66556008)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3721;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: q353FUeFFBh14qmoBofLmOISVNAiW3eTD3V3Ch/3CnC5+moqVeDPLwojxD7E8UOdMXf/cNTNNEeYRgD+8KXLpSVHDT8qjCXdYaE9DGHVKkCED2yF13VZ7Eqh0DXHyYed3sXATGzedSapo8UztCMi2WFSYEo84DgIKabp/5ukPNHr2LHORXETtKxIpi3uFB/U8qWHnms9fWjv275FnhpHM4I6WBdFLwsLQoSF8dhNnWjms1WWcFGhIygUWl2WSQ32ql5LhbXjJZdUeqn4j24r7EMR7VFLwB1kmozg/755D96R3c4jftFv9shfDgfzViFLh6vFWgMv6/cgTkcxCWEiuuSk54Ml35CvH2oB8K157tPTZO+/NZgJr2BkvulK2CdHSaXi9ubQpTDDOAZbVQmZSRhfMlNItfG7UYNDZ3DcboY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f87c6cc9-9736-49a1-83a1-08d6d28b4884
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 01:28:18.3488 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3721
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_182841_095497_9108B354 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:614 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX system controller watchdog has pretimeout function which
depends on i.MX SCU driver, so it should be a subnode of SCU.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change.
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
