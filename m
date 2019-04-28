Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA19B4DA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 05:27:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CAMGYFiY7PpOIQV6Cy8W0GONfa8Wspw/bFyYRZgjcpg=; b=La1NaEGN2SWNNp
	9QP9f+zf39Rmp1WWhgo+13x07FH/jdlsRrqrJLqdCL4uIoK5b9pXZjunPbylE7Zmz5vJkDFgeSI8C
	at/4GEW4Eh/i6qMOXvkCXbQTvQoVeDFG5i+gk1oYZds0IEMqThMpF0qYEBMpODpqtOxhI02Q/sLng
	TtCK+5qOpR6fDjhRg8aSxXYAPa//lZMPHtQsDnJyi3YZt1bLkqWoHHl853kCG+OWEK7Xy+cT5zYYi
	8/B9vzXlzB+i4z2rZLt+jUR7PDn51VT9sqF3ZqnYCJ5hSUrjT9swQJ9BPssZSXDJOzEesvjAod8/0
	/iLkBH/n0AiLY4aOc+Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKaTo-00075o-Vq; Sun, 28 Apr 2019 03:27:53 +0000
Received: from mail-eopbgr50041.outbound.protection.outlook.com ([40.107.5.41]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKaTH-0006RZ-OC
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 03:27:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ylxzJ6jku5D9eXVqOkKVH7cFogpW9wMbR6ybfEQQKlU=;
 b=CvDwWER9Qw8vVtTjQsi9qnO2CeB5b/4XMVFxF1SM5fpfsWAgWSxczmeK6Ldg0NLJibkgNawd56BAtdU2TZAHXYv3nnXoaXxV/rMUpMUHOYwXIaW2OQmaBFRGFMdxxo7dlOHVp9xkxhy8uBHUnUy+wMFH/E+354ey4KA+2kFngUQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3897.eurprd04.prod.outlook.com (52.134.73.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Sun, 28 Apr 2019 03:27:17 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1835.015; Sun, 28 Apr 2019
 03:27:17 +0000
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
Subject: [PATCH V2 4/4] dt-bindings: watchdog: remove i.MX system controller
 watchdog
Thread-Topic: [PATCH V2 4/4] dt-bindings: watchdog: remove i.MX system
 controller watchdog
Thread-Index: AQHU/XJHVvpWJzeSMUO3ikfCWcHdPQ==
Date: Sun, 28 Apr 2019 03:27:17 +0000
Message-ID: <1556421727-7401-4-git-send-email-Anson.Huang@nxp.com>
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
x-ms-office365-filtering-correlation-id: 98477339-1cea-4184-6b02-08d6cb8969f2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3897; 
x-ms-traffictypediagnostic: DB3PR0402MB3897:
x-microsoft-antispam-prvs: <DB3PR0402MB3897D26184DBAFE21577291AF5380@DB3PR0402MB3897.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0021920B5A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(396003)(366004)(346002)(39860400002)(189003)(199004)(256004)(71190400001)(14444005)(71200400001)(97736004)(6116002)(186003)(66066001)(86362001)(2201001)(476003)(2616005)(8936002)(36756003)(486006)(11346002)(81156014)(81166006)(25786009)(53936002)(50226002)(3846002)(446003)(2906002)(2501003)(386003)(6506007)(76176011)(68736007)(4326008)(102836004)(64756008)(52116002)(66946007)(66476007)(66556008)(8676002)(66446008)(6486002)(6436002)(7416002)(14454004)(73956011)(7736002)(99286004)(478600001)(316002)(110136005)(305945005)(26005)(6512007)(5660300002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3897;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7/KpAzxugEy/SpBUv8hvUX8ozwE1tRLXlMy+PA8G4GN42+DdDLSzlVUbkBRKXsQmub1VV8R/8hflRSzuUymaRS5Kz2B9+/trafDoRsT9EwsThL61BYYN5dQ9whCNYwDETfZNxXbhXu8Xl3MqYEM2iBuZ4J4QowVBSwvVYIpnixLb5ldltrSzrt+OhAuBlZJtvH1inbgE6gvXpXKhLmDwQwoVqe48z7QfqSk+DzCVy6eOgkqyMPmsd+okYaRv0UPObUMlbX4vDsQTOqNZXYr+wK8idfZoYa/mbe5wekw9Q8srG4HquqvXcWRNR5r/yXlO3aF1J5cNK9Fxnn5+7nRZwObY4nBs/1MHvxDzBnCjQGOUZeKG3fUoeU/fBR/qTm0Ztqk1a2btQVWm39SmBiyUTUUT/lcp85pwlJkXEmOdK3g=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98477339-1cea-4184-6b02-08d6cb8969f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2019 03:27:17.0418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3897
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_202719_835370_3E68E7CB 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

i.MX system controller watchdog now depends on SCU driver, so it
needs to be subnode of SCU node in DT, binding doc is moved to
fsl,scu.txt as well.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
New patch.
---
 .../bindings/watchdog/fsl-imx-sc-wdt.txt           | 24 ----------------------
 1 file changed, 24 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx-sc-wdt.txt

diff --git a/Documentation/devicetree/bindings/watchdog/fsl-imx-sc-wdt.txt b/Documentation/devicetree/bindings/watchdog/fsl-imx-sc-wdt.txt
deleted file mode 100644
index 02b87e9..0000000
--- a/Documentation/devicetree/bindings/watchdog/fsl-imx-sc-wdt.txt
+++ /dev/null
@@ -1,24 +0,0 @@
-* Freescale i.MX System Controller Watchdog
-
-i.MX system controller watchdog is for i.MX SoCs with system controller inside,
-the watchdog is managed by system controller, users can ONLY communicate with
-system controller from secure mode for watchdog operations, so Linux i.MX system
-controller watchdog driver will call ARM SMC API and trap into ARM-Trusted-Firmware
-for watchdog operations, ARM-Trusted-Firmware is running at secure EL3 mode and
-it will request system controller to execute the watchdog operation passed from
-Linux kernel.
-
-Required properties:
-- compatible:	Should be :
-		"fsl,imx8qxp-sc-wdt"
-		followed by "fsl,imx-sc-wdt";
-
-Optional properties:
-- timeout-sec : Contains the watchdog timeout in seconds.
-
-Examples:
-
-watchdog {
-	compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
-	timeout-sec = <60>;
-};
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
