Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D7445D2E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:53:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8nBxdAomKrmlGt5bwbSyOirvcr11SnqBiFrPj/huuVY=; b=HIwfK6NI2z2v6F
	T9UYLKneMMp6/4cbhqo+R4IidOBdGu9AfZrkwaQSE1XBiXY6XOfRm/pceAwCmhuDMnjixkUjmUT1C
	mAbQ2pxAGz3WKd7TvINPUeTE62ZCHP1E0EOX3o+wOBuuwUng/tCnRgwOqfWosJpD9ZHK39smAqIou
	BNSqyMTu/lNnUZlBcv5VDBgo5T3IlakCqUlGTm8YdSSmCCvw7fZbfzEO0o6+bVCXAampWItaqNiey
	6kl37KKVumbZj+5X4HV4E/Kpa/mJS4vrLe8M5vLc4UPh4uxdv9Ym9SJ8jwPbDF+QUE6TjIiS4IkHq
	zXA79uhhWVeHow0KB/8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbli9-0003O4-EV; Fri, 14 Jun 2019 12:53:41 +0000
Received: from mail-eopbgr730115.outbound.protection.outlook.com
 ([40.107.73.115] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hblhy-0003NZ-5M
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:53:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aampusa.onmicrosoft.com; s=selector2-aampusa-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MrLeNhTOMV/5b5VUsNtYNMV9IHI5LroPmp/odYruiOA=;
 b=FtuccU556ayc6hnWqXgj/B1T8KdfPMsuV7CpbFJlsRDTPv4i5pcvnCaoVNqyFYDnokx6UaeTOBPqoDjNilSmtiGbaL9Ed+n9D76Ihyf+WWc1RPFxozvNjIIzD06s3vz+Vs/8shlCROG2c/pdufoGMM/8Rib5dnI2Eghcp8MAbuE=
Received: from BL0PR07MB4115.namprd07.prod.outlook.com (52.132.10.149) by
 BL0PR07MB5713.namprd07.prod.outlook.com (20.177.243.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.17; Fri, 14 Jun 2019 12:53:22 +0000
Received: from BL0PR07MB4115.namprd07.prod.outlook.com
 ([fe80::f064:5129:63c6:d3e]) by BL0PR07MB4115.namprd07.prod.outlook.com
 ([fe80::f064:5129:63c6:d3e%6]) with mapi id 15.20.1965.019; Fri, 14 Jun 2019
 12:53:22 +0000
From: Ken Sloat <KSloat@aampglobal.com>
To: "nicolas.ferre@microchip.com" <nicolas.ferre@microchip.com>
Subject: [PATCH v2 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable watchdog
 on system suspend
Thread-Topic: [PATCH v2 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
 watchdog on system suspend
Thread-Index: AQHVIrAmpSe7ef5LPkq+gtVGV8yaCA==
Date: Fri, 14 Jun 2019 12:53:22 +0000
Message-ID: <20190614125310.29458-1-ksloat@aampglobal.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [100.3.71.115]
x-clientproxiedby: BN6PR2001CA0008.namprd20.prod.outlook.com
 (2603:10b6:404:b4::18) To BL0PR07MB4115.namprd07.prod.outlook.com
 (2603:10b6:207:4c::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=KSloat@aampglobal.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: defbe8bb-55e7-4ea6-771c-08d6f0c7484e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR07MB5713; 
x-ms-traffictypediagnostic: BL0PR07MB5713:
x-microsoft-antispam-prvs: <BL0PR07MB571385E3D0B3A804456B66F3ADEE0@BL0PR07MB5713.namprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0068C7E410
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(376002)(366004)(396003)(136003)(39850400004)(199004)(189003)(66066001)(305945005)(81166006)(4326008)(6486002)(66946007)(81156014)(80792005)(486006)(8936002)(72206003)(2501003)(7736002)(478600001)(476003)(6916009)(14454004)(2351001)(8676002)(50226002)(2616005)(99286004)(6512007)(68736007)(6436002)(86362001)(15650500001)(66556008)(6116002)(71190400001)(386003)(316002)(66476007)(53936002)(102836004)(3846002)(2906002)(71200400001)(25786009)(5640700003)(36756003)(5660300002)(256004)(1076003)(73956011)(26005)(186003)(66446008)(14444005)(52116002)(64756008)(54906003)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR07MB5713;
 H:BL0PR07MB4115.namprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: aampglobal.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tQ3SjGDxPiV0Bm0djYMEuUhQuCYzxUvFDkWyGq0yOeNWanhqqF2ZF5wrQJVhNQYSKUTPUc/vSPA7g7XgPcWDT/A+zBRI/Ylg+pqkdzgqoJsBiw4l9HUtHeo6pR4Osz+HsB2vkB+Z2rhmKw4Mp9XJ6bvRoR0TC1Mj9ssph3nk0bALi7Tyvjs+e5iyYj+Tt9gUGt4d5cGH5d1WBdekUzOu9/r+Ee7NTIzIzBXoyengA/svowvkKqJR/QqxBpwuLK1VADPWIBqNBwAsRQId+D4bNLU0WQKMq9YakeFAjaexDNYatObiX3LjtVg+7LFBKlrCPaVc8UFfSrIWORRKWJC5ySUhy87KCe3Sk8bhAu3cQfT2Yoy0F3tbGIUB8DAQ0Mic9VJrAraGFwg/PgqTMTIGPbIVIq5wSJ369EVvgKAIXcg=
MIME-Version: 1.0
X-OriginatorOrg: aampglobal.com
X-MS-Exchange-CrossTenant-Network-Message-Id: defbe8bb-55e7-4ea6-771c-08d6f0c7484e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2019 12:53:22.6691 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e20e3a66-8b9e-46e9-b859-cb654c1ec6ea
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ken.sloat@aampglobal.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR07MB5713
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
X-OrganizationHeadersPreserved: BL0PR07MB5713.namprd07.prod.outlook.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_055330_257810_32AC5911 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Changes in v2:
 -Consolidate resume and resume early statements.

 drivers/watchdog/sama5d4_wdt.c | 21 ++++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/watchdog/sama5d4_wdt.c b/drivers/watchdog/sama5d4_wdt.c
index 111695223aae..0d123f8cbcc6 100644
--- a/drivers/watchdog/sama5d4_wdt.c
+++ b/drivers/watchdog/sama5d4_wdt.c
@@ -280,7 +280,17 @@ static const struct of_device_id sama5d4_wdt_of_match[] = {
 MODULE_DEVICE_TABLE(of, sama5d4_wdt_of_match);
 
 #ifdef CONFIG_PM_SLEEP
-static int sama5d4_wdt_resume(struct device *dev)
+static int sama5d4_wdt_suspend_late(struct device *dev)
+{
+	struct sama5d4_wdt *wdt = dev_get_drvdata(dev);
+
+	if (watchdog_active(&wdt->wdd))
+		sama5d4_wdt_stop(&wdt->wdd);
+
+	return 0;
+}
+
+static int sama5d4_wdt_resume_early(struct device *dev)
 {
 	struct sama5d4_wdt *wdt = dev_get_drvdata(dev);
 
@@ -291,12 +301,17 @@ static int sama5d4_wdt_resume(struct device *dev)
 	 */
 	sama5d4_wdt_init(wdt);
 
+	if (watchdog_active(&wdt->wdd))
+		sama5d4_wdt_start(&wdt->wdd);
+
 	return 0;
 }
 #endif
 
-static SIMPLE_DEV_PM_OPS(sama5d4_wdt_pm_ops, NULL,
-			 sama5d4_wdt_resume);
+static const struct dev_pm_ops sama5d4_wdt_pm_ops = {
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
