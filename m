Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C77D942A2F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 17:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B3+Qmrz5EmqYN7lVBtX8mMPeWuXy8WqVW3dylksqN1Q=; b=epHDN76wt4up17
	CPt6HMFEE4XWKcTIRbr5wN6rmj2/ifBvEVcVQ8tkgN5V0cEXizx9XsUgIRgZ5eaFFxJ7ayM+DzYf7
	XhEL1ZMwi/oMfXYyHcJIkualiZFfqV+brgXtJSa86amC92P2nvPspWUc7wIvxrkoJb32ITZcFPwTt
	TKcJCEMIQEbPv9iLuT18SnGtO2+UrCe9l/bqZDwnOR9hg6uuHVv0+bImRth0/6ubPZh5QBnhbrPTK
	p9XUUvSy8elXs9yXs8+knFM9AEEttqwYWbOk2dH4mmpEfDUblmQcxijmRN9nDg7qItkT4z1BaLLzF
	/2ewVt+T6O/fOGranEtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4la-0001ef-Hy; Wed, 12 Jun 2019 15:02:22 +0000
Received: from mail-eopbgr690121.outbound.protection.outlook.com
 ([40.107.69.121] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4lQ-0001bb-BG
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 15:02:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aampusa.onmicrosoft.com; s=selector2-aampusa-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sY91n2gfH7ELNe0tEiB3wb8cFi0Ou6TTCX3TC4csU8g=;
 b=MjnrJWbgYaLdZOJ/0j9RBsmgiXzc7vJI8VODsHv+4b5Kl7vo7BuwcPi25BL6EVMlu1DC7e6WBoUMQif/PJ1lDnOHITWWc6ItMhB9L3JAA8ohNKQ8WtKG5UCQV9euO9T+aww3Hmqd0X1beSsCDKQHVp9US3TjxNwtedP7xPP6ZNg=
Received: from BL0PR07MB4115.namprd07.prod.outlook.com (52.132.10.149) by
 BL0PR07MB5555.namprd07.prod.outlook.com (20.177.242.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Wed, 12 Jun 2019 15:02:06 +0000
Received: from BL0PR07MB4115.namprd07.prod.outlook.com
 ([fe80::f064:5129:63c6:d3e]) by BL0PR07MB4115.namprd07.prod.outlook.com
 ([fe80::f064:5129:63c6:d3e%6]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 15:02:06 +0000
From: Ken Sloat <KSloat@aampglobal.com>
To: "nicolas.ferre@microchip.com" <nicolas.ferre@microchip.com>
Subject: [PATCH v1 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable watchdog
 on system suspend
Thread-Topic: [PATCH v1 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
 watchdog on system suspend
Thread-Index: AQHVIS/MMKNdMTqzC02O6HgdHPA8iA==
Date: Wed, 12 Jun 2019 15:02:05 +0000
Message-ID: <20190612150154.16778-1-ksloat@aampglobal.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [100.3.71.115]
x-clientproxiedby: BN6PR11CA0065.namprd11.prod.outlook.com
 (2603:10b6:404:f7::27) To BL0PR07MB4115.namprd07.prod.outlook.com
 (2603:10b6:207:4c::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=KSloat@aampglobal.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 74876760-2732-4621-1172-08d6ef46eedb
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR07MB5555; 
x-ms-traffictypediagnostic: BL0PR07MB5555:
x-microsoft-antispam-prvs: <BL0PR07MB55551D75AC67AD69AECE387FADEC0@BL0PR07MB5555.namprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39850400004)(136003)(366004)(346002)(396003)(376002)(189003)(199004)(2616005)(50226002)(80792005)(25786009)(73956011)(6916009)(186003)(86362001)(6506007)(486006)(15650500001)(478600001)(54906003)(476003)(386003)(4326008)(53936002)(256004)(102836004)(26005)(1076003)(66946007)(66476007)(66556008)(64756008)(66446008)(14444005)(5660300002)(72206003)(8676002)(2351001)(6436002)(6512007)(68736007)(52116002)(66066001)(3846002)(36756003)(99286004)(316002)(305945005)(8936002)(2906002)(7736002)(71200400001)(5640700003)(14454004)(6486002)(81166006)(2501003)(71190400001)(81156014)(6116002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR07MB5555;
 H:BL0PR07MB4115.namprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: aampglobal.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3aG4yUbVaHbPcLxmuKXLGisxqILGlaVSpGI3cHHHE6phpkoCF8XAQrc0YUffq6/OLusB/IvbC4Ytip9BK2EFsEVkhxMdhd3ZGxz661xs+dzUS/uxk6k6Dc3xTOnpXeeIlbYr4Z6wexxYratFYuHIrggd2W6tHZ3gDcwexyabWJ3FVnPhVaz/x0FgkSYY73Yup1xE0ncs3fm8UjN132dypByDgGech3g7zHFdadZ0fGfE/v/xGjeoAfSXSYEZQUb34m3PC1FQUEsqiIudskfSiztGKWyTteGpMkB8MCrrDcM37yyJ8LyUBIQljRWuEgV3PWZVHdwn7TaVMrV89cNUGfdokjKaOn+Zds0xSBHq+yJ5rB4hpqFYMySxZJkHK22BS4jgqzeGtqKj8Gh2nru1frJjiGQgnp/cuKDP/pzsgvQ=
MIME-Version: 1.0
X-OriginatorOrg: aampglobal.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74876760-2732-4621-1172-08d6ef46eedb
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 15:02:06.2951 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e20e3a66-8b9e-46e9-b859-cb654c1ec6ea
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ken.sloat@aampglobal.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR07MB5555
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 06
X-MS-Exchange-CrossPremises-AuthSource: BL0PR07MB4115.namprd07.prod.outlook.com
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-TransportTrafficSubType: 
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-mapi-admin-submission: 
X-MS-Exchange-CrossPremises-messagesource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-originalclientipaddress: 100.3.71.115
X-MS-Exchange-CrossPremises-transporttraffictype: Email
X-MS-Exchange-CrossPremises-transporttrafficsubtype: 
X-MS-Exchange-CrossPremises-antispam-scancontext: DIR:Originating; SFV:NSPM;
 SKIP:0; 
X-MS-Exchange-CrossPremises-processed-by-journaling: Journal Agent
X-OrganizationHeadersPreserved: BL0PR07MB5555.namprd07.prod.outlook.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_080212_445474_3473B21E 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.121 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 Ken Sloat <KSloat@aampglobal.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ken Sloat <ksloat@aampglobal.com>

Currently, the atmel-sama5d4-wdt continues to run after system suspend.
Unless the system resumes within the watchdog timeout period so the
userspace can kick it, the system will be reset. This change disables
the watchdog on suspend if it is active and re-enables on resume. These
actions occur during the late and early phases of suspend and resume
respectively to minimize chances where a lock could occur while the
watchdog is disabled.

Signed-off-by: Ken Sloat <ksloat@aampglobal.com>
---
 drivers/watchdog/sama5d4_wdt.c | 31 +++++++++++++++++++++++++++++--
 1 file changed, 29 insertions(+), 2 deletions(-)

diff --git a/drivers/watchdog/sama5d4_wdt.c b/drivers/watchdog/sama5d4_wdt.c
index 111695223aae..84eb4db23993 100644
--- a/drivers/watchdog/sama5d4_wdt.c
+++ b/drivers/watchdog/sama5d4_wdt.c
@@ -280,6 +280,18 @@ static const struct of_device_id sama5d4_wdt_of_match[] = {
 MODULE_DEVICE_TABLE(of, sama5d4_wdt_of_match);
 
 #ifdef CONFIG_PM_SLEEP
+static int sama5d4_wdt_suspend_late(struct device *dev)
+{
+	struct sama5d4_wdt *wdt;
+
+	wdt = dev_get_drvdata(dev);
+
+	if (watchdog_active(&wdt->wdd))
+		sama5d4_wdt_stop(&wdt->wdd);
+
+	return 0;
+}
+
 static int sama5d4_wdt_resume(struct device *dev)
 {
 	struct sama5d4_wdt *wdt = dev_get_drvdata(dev);
@@ -293,10 +305,25 @@ static int sama5d4_wdt_resume(struct device *dev)
 
 	return 0;
 }
+
+static int sama5d4_wdt_resume_early(struct device *dev)
+{
+	struct sama5d4_wdt *wdt;
+
+	wdt = dev_get_drvdata(dev);
+
+	if (watchdog_active(&wdt->wdd))
+		sama5d4_wdt_start(&wdt->wdd);
+
+	return 0;
+}
 #endif
 
-static SIMPLE_DEV_PM_OPS(sama5d4_wdt_pm_ops, NULL,
-			 sama5d4_wdt_resume);
+static const struct dev_pm_ops sama5d4_wdt_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(NULL, sama5d4_wdt_resume)
+	SET_LATE_SYSTEM_SLEEP_PM_OPS(sama5d4_wdt_suspend_late,
+			sama5d4_wdt_resume_early)
+};
 
 static struct platform_driver sama5d4_wdt_driver = {
 	.probe		= sama5d4_wdt_probe,
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
