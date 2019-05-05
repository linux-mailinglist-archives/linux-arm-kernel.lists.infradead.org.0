Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B4613CBA
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 04:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WnbogKxE9DckjUc+vPSJDcPlRKVlaNrLZXLWZ2gzZNk=; b=t6MHewxvyaxTF/
	DXJo+I2L3Fz5a0FxPb/N3eKtFAJteAgT7kZSMNVEa2F1/QtE5XKLLAp+O7OnvwDMeTsf63uK9I4Lo
	W4EaBeePpJ8SOQ3Jp7rKEmC90xy/GUYDbHBvQHea+41n0OPDpppxSXE6ozfNtu1F/CBFFcjBLQSvt
	1mW+nUU4ESlY4L3dl9MisAUota/hjvip+CO/m7LoXFEOGfHI+FEWgAq+O9iE7Hcpq8SlIrEHxMmUf
	F2V62xNu/Qbiavl3fvsyOzdd+H7hFOCq7zMbS32yKvEFQAcT4DT/0nSqtQL6kdW+RBMQ1dMDmqc1I
	54wrgKXolP7MERCAt4/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hN6gH-00088p-Be; Sun, 05 May 2019 02:15:09 +0000
Received: from mail-eopbgr150083.outbound.protection.outlook.com
 ([40.107.15.83] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN6g3-00087q-Ls
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 02:14:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CmoO/TCISfDIYgqg/9LN6RwC+pszocvbN38rrJjOVzQ=;
 b=m1JEQR6K82ROUQNOAHteFNrd0lKVePRuxxmwrbXIFvCC7c2HIS3Ri0DFwWYEXPwxHR4CNERNur3eP8PelqoE2AvZt7Sm+Wvh/GtjNIv3Sjj4MGcsldlvuSgf8YSCN4e0GxqWO/7EADPFVo0K91pNaMYJf3Z3+KuDy/UGX71sW9E=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3721.eurprd04.prod.outlook.com (52.134.67.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Sun, 5 May 2019 02:14:48 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1856.012; Sun, 5 May 2019
 02:14:48 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>, "sboyd@kernel.org"
 <sboyd@kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-watchdog@vger.kernel.org"
 <linux-watchdog@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH V3 1/3] dt-bindings: watchdog: move i.MX system controller
 watchdog binding to SCU
Thread-Topic: [PATCH V3 1/3] dt-bindings: watchdog: move i.MX system
 controller watchdog binding to SCU
Thread-Index: AQHVAuhQe2wZP2oZpkWGF/5cltOBfA==
Date: Sun, 5 May 2019 02:14:47 +0000
Message-ID: <1557022189-10993-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0145.apcprd02.prod.outlook.com
 (2603:1096:202:16::29) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 80309e0c-1025-4b23-3dd2-08d6d0ff7281
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3721; 
x-ms-traffictypediagnostic: DB3PR0402MB3721:
x-microsoft-antispam-prvs: <DB3PR0402MB3721E87E81C9BDE4FE1DF66DF5370@DB3PR0402MB3721.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1265;
x-forefront-prvs: 00286C0CA6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(39860400002)(366004)(346002)(136003)(199004)(189003)(14444005)(2906002)(256004)(86362001)(25786009)(71190400001)(14454004)(316002)(2501003)(36756003)(6116002)(3846002)(2201001)(52116002)(478600001)(68736007)(99286004)(66066001)(8936002)(50226002)(71200400001)(6486002)(6436002)(6512007)(53936002)(4326008)(81156014)(7416002)(486006)(305945005)(186003)(73956011)(66946007)(2616005)(476003)(66476007)(66556008)(64756008)(66446008)(102836004)(110136005)(5660300002)(6506007)(386003)(8676002)(81166006)(7736002)(26005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3721;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AFslhTDzMqOIWFBuWe82bQ7JTRW8ukW5HRAYfFi3+jEMAHXgsxiEIXrxirpw4BND7i+ray0CZc9rL2qdQjXMhPZ9WntjD4IjFc1bP1k/4t//i1ngPqtODN/K4WuSj28zxsA9Qcw/WBjXHzaMSJzwFn+A9so/6u/TxI10AQ6ndLjrmXvqBzNcMf6HZb3WiuaQD+2JV+g2MWCYiP2Bfeu4IL4qbNu3TieK0BgZPcasUhZ4kHk4QO1rvBZu93qI3D21UmvXp+hdfHHu19Fa4avIGBu7Z6Vd9922SJ7vhC/lmI0PbvHeYmz3KBrdt/MUkZN2td4TSTsqFfOwAHK7Ya4VxhA7fi9+AWa3SDWS1BBYWs4X/EXpQkAc12fH5xPrt6PjuJBrSzoVVa7I6VZNh1THwTtGebc6wEE8mAkXxN2useE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80309e0c-1025-4b23-3dd2-08d6d0ff7281
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2019 02:14:47.9707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3721
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_191455_820441_F2E16C2C 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

i.MX system controller watchdog depends on SCU driver to support
interrupt function, so it needs to be subnode of SCU node in DT,
binding doc should be moved to fsl,scu.txt as well.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V2:
	- no content change, just merge two dt-binding patches and improve the commit message.
---
 .../devicetree/bindings/arm/freescale/fsl,scu.txt  | 15 ++++++++++++++
 .../bindings/watchdog/fsl-imx-sc-wdt.txt           | 24 ----------------------
 2 files changed, 15 insertions(+), 24 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx-sc-wdt.txt

diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
index 72d481c..9967212 100644
--- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
+++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
@@ -122,6 +122,16 @@ RTC bindings based on SCU Message Protocol
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
 lsio_mu1: mailbox@5d1c0000 {
@@ -168,6 +178,11 @@ firmware {
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
