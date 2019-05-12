Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBD01ABA5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 12:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VL3pN8Y0tjIstcf0ynEBkc6Z/p0rI1kIxQRvPSepKrw=; b=s05k+fu463zTuP
	TE2vOkmwin/PYIVPDBxN/togzR5nsaEMtEnehdiWLygfyvl7rpq7fW2hQCdlbsBTSaIFYR6Y/v/IQ
	4cowlriCzWY6B4oA/x2IgscRL8IrV4XQX32xWa2LipHMesfOYbVtVCx3RT0xJyKfgpsVOs23V7R7I
	Ss9ZYE5iJj/isZfSC/uXQpPhrymeymkVBQPmsP2fTHP62svyxuN1ErH+Whcq/WMLedqG6drvs0Eka
	AnW2mTH7RAmaKozX+/2bBBmmoGL83A5Og1EwuVrAswiHqTCIlX0U1LUTqWDq62E1HmbKDnwK7HQ51
	kHWXyxjRsC+zYRGa3AdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPlRW-00019g-NU; Sun, 12 May 2019 10:10:54 +0000
Received: from mail-eopbgr130089.outbound.protection.outlook.com
 ([40.107.13.89] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPlRF-000111-Uj
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 10:10:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T3AGc1aLTArImRJodXIF4c+v04Nk6tBX7o1s2UZoggY=;
 b=UBkdP63wtIObE7QLYO+H7EnJuUYsoeD1et0b446PLnKqWmuqFjD6wDXWE7BubWHC75amwOEMP8uqBIHGu7QHUrp1+x42fsZiSP6Np2HD1wsBnXvrwB0kU66o1toCRKssgJWgYDwimOaOXPgULSkuHxjYg52bagEfCqzW3u7xgyU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3913.eurprd04.prod.outlook.com (52.134.65.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Sun, 12 May 2019 10:10:36 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Sun, 12 May 2019
 10:10:35 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>, Daniel Baluta
 <daniel.baluta@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH RESEND V4 2/3] arm64: dts: imx8qxp: Move watchdog node into
 scu node
Thread-Topic: [PATCH RESEND V4 2/3] arm64: dts: imx8qxp: Move watchdog node
 into scu node
Thread-Index: AQHVCKrxek0Xatu7SEyE08ZoyZ0h7A==
Date: Sun, 12 May 2019 10:10:35 +0000
Message-ID: <1557655528-12816-2-git-send-email-Anson.Huang@nxp.com>
References: <1557655528-12816-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557655528-12816-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0036.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::24) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a9ddf12-e453-489a-97ca-08d6d6c21341
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3913; 
x-ms-traffictypediagnostic: DB3PR0402MB3913:
x-microsoft-antispam-prvs: <DB3PR0402MB3913A922BBCF3E711377A7BBF50E0@DB3PR0402MB3913.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:514;
x-forefront-prvs: 0035B15214
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(396003)(366004)(346002)(376002)(189003)(199004)(66556008)(11346002)(66066001)(73956011)(256004)(6512007)(2616005)(66446008)(64756008)(476003)(3846002)(66476007)(66946007)(14454004)(6506007)(2201001)(386003)(6116002)(2501003)(102836004)(86362001)(6436002)(478600001)(53936002)(6486002)(71190400001)(26005)(71200400001)(186003)(8676002)(76176011)(4326008)(99286004)(25786009)(8936002)(81156014)(36756003)(446003)(50226002)(81166006)(52116002)(4744005)(316002)(68736007)(5660300002)(110136005)(7416002)(2906002)(486006)(7736002)(305945005)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3913;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: d6vQKzi3qW+jsIC9SVaNoz4t7PRweXrDCOnsLJs4AraRTtGGrBuaUyYPWJu+GRCduxxAnFSu5gAB2kDHSVbJ5OX6abGXHkMrRU5kiSn3UhRqsJLSpjaKLUkwxeNDOhqQAmTrSCo/ckTcrWp9bjYQrKPv+3PaOVD2ZSzsQOkOODl0xxtyhZcuh/31TKmMGeossL5CqgxkRyo9CCAnoqi0W1GsVNJz2P5N7JIv027F65+QI0qvvV29vbI5LjM9Qp2itmbwAmGpbVxEERhTRYWlPoGUMa9qE2KZARs9hH0xR2PXvnhXD7vJ047nBxKnt7s+eBUn/V53NSthtdzvDm69ef5owT+GFV3aQQWkZB8NL6iFOMauLNjo0K8ZAnSm7kb1cWC2KtrXF5r6eRKmqTetbXpkXpik9STNkMbgHkN73Cw=
Content-ID: <1BEDB087C1756F40B98CCF53E1F492B1@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a9ddf12-e453-489a-97ca-08d6d6c21341
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2019 10:10:35.8851 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3913
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_031037_986856_D3FAC4E9 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.89 listed in list.dnswl.org]
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

i.MX system controller watchdog has pretimeout function which
depends on i.MX SCU driver, so it should be a subnode of SCU.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change, just resend patch with correct encoding.
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
