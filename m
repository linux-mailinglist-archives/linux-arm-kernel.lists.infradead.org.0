Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E741AB9E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 12:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sOU9ACdnxjrU9Fg2sEVcnzK+TmRXhYRxvL1VcvBKGgI=; b=Pd5r5WfN6bGPEZ
	S3pbXEseIOVfc9Hpydxpy/KKboQSYLccImShe6drPhKh8DsDsXETjFcflSI6+6dnyTK++lnC/a0U3
	gl0DWtUkP+jdIjDYBxVOKdO2sAlPhA5/6CTCq4X0zYeEks3J5UVInBoDsnBl+eKEMV18iJQXdCQeA
	h+eDDJ8pnXfKnQZfnTssZzbw8wLCKhnmT9G2S2/sKyTDl4FG7fsTV4SMR/fg1yMBCOPM5VQratXhU
	bASlgZSRdhyPCe6dtoMDk1yxOfaSCJl33IMWIqdmPzlX5//ElEITvrzuZxSwp4odFU5tv3E5tgJ4+
	O1QCKEoewW9ZyMuYi7aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPlRM-00011h-14; Sun, 12 May 2019 10:10:44 +0000
Received: from mail-eopbgr130089.outbound.protection.outlook.com
 ([40.107.13.89] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPlRD-000111-TM
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 10:10:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NfV7o7qB+GSQeZRyq9facVc0aNh6wxwa807rtSeVd40=;
 b=RP+XPM+S88LyCEaFntBsxUIiPdKh35ETKvFU8SyBUHgPFw6WE82ne6SCNEFQyu0XUKfXhstB1bQl5qL9bkPnh9daJoYOfPM1ZtqBcE9yeURUvG1OcUyJcpqtQv4zQxDqGuKPYuuElT1qMIlEX+bW+9m6ta5eil+MJ/uj0ILhILI=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3913.eurprd04.prod.outlook.com (52.134.65.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Sun, 12 May 2019 10:10:30 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Sun, 12 May 2019
 10:10:30 +0000
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
Subject: [PATCH RESEND V4 1/3] dt-bindings: watchdog: move i.MX system
 controller watchdog binding to SCU
Thread-Topic: [PATCH RESEND V4 1/3] dt-bindings: watchdog: move i.MX system
 controller watchdog binding to SCU
Thread-Index: AQHVCKrtAYPvRNqPfE2cK0k7Czo+1A==
Date: Sun, 12 May 2019 10:10:30 +0000
Message-ID: <1557655528-12816-1-git-send-email-Anson.Huang@nxp.com>
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
x-ms-office365-filtering-correlation-id: 8907832a-44cb-4f1a-22fd-08d6d6c2103f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3913; 
x-ms-traffictypediagnostic: DB3PR0402MB3913:
x-microsoft-antispam-prvs: <DB3PR0402MB39131D731A385A86E5B3EEBEF50E0@DB3PR0402MB3913.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0035B15214
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(396003)(366004)(346002)(376002)(189003)(199004)(66556008)(66066001)(73956011)(256004)(6512007)(2616005)(66446008)(64756008)(476003)(3846002)(66476007)(14444005)(66946007)(14454004)(6506007)(2201001)(386003)(6116002)(2501003)(102836004)(86362001)(6436002)(478600001)(53936002)(6486002)(71190400001)(26005)(71200400001)(186003)(8676002)(4326008)(99286004)(25786009)(8936002)(81156014)(36756003)(50226002)(81166006)(52116002)(316002)(68736007)(5660300002)(110136005)(7416002)(2906002)(486006)(7736002)(305945005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3913;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eg8PZ6ekXyfSgeADL+h824yUK+cb/qEzARQKqvR181pIJgzWwTlTN0MGGLbTajFTDOfUPH5421rtpGd8lTahzIve3c4iprRJYe5jMZOCi/lS1MBUofyTHU1cCTmvvZSWESR44HpcdMIKdRhfq2+7UVNtHdH++N6bRHtFNc9B20pp1iKXpc5CD0HBiEcPS7dl1fMrC3BpJY5OKhhAwhAIDqy53wkjww39GaB5LE2TDdA4SUaWMLATu+CkasZ6rl/Pqg0iX4+o/2lgpjN0hLcxdH4AkUSpk3yBjpJQ5t3V0VRDKzCCDZFjlCmOEY+cSFdD6uVvlzxmA+BNw/ZKhQP7CqsyYsr/DgwSRrPRuj4cVtYOqKP4/urwjsNSeLtMxQqCp2ssAduesyWQkeLGmS+WTNSYyALb1rTp+HcMmCYBtIQ=
Content-ID: <4BD8A2D60EC3E14C97C5590BA1ECE00F@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8907832a-44cb-4f1a-22fd-08d6d6c2103f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2019 10:10:30.6037 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3913
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_031035_957038_819DC52B 
X-CRM114-Status: GOOD (  12.63  )
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

i.MX system controller watchdog depends on SCU driver to support
interrupt function, so it needs to be subnode of SCU node in DT,
binding doc should be moved to fsl,scu.txt as well.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change, just resend patch with correct encoding.
---
 .../devicetree/bindings/arm/freescale/fsl,scu.txt  | 15 ++++++++++++++
 .../bindings/watchdog/fsl-imx-sc-wdt.txt           | 24 ----------------------
 2 files changed, 15 insertions(+), 24 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx-sc-wdt.txt

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
