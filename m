Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C155CFD7F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 09:30:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PyBxQZUh8K0KrjHF9DxT1js5BPbkTadTQXCgXK4WAY4=; b=Mlk9HTGxfRpu1D
	NjXrjMlij/NEYA78fSYfKtoPrcOlw0Xk9b7pybjdXYjokMgVO9aCNq6AV+4DtgiZb0qOmn09tv1cD
	SqYMbb7kWii0JeQw2Ql1K2drN8jLfc6E4sT4aBzRgwnN32585nsujpthCa+TXFmrEp3G0JrEJ5OYz
	juaqbQWPNVCuZU/P20MsOA5LWjWXklFVix1pAfzbzkuCSH/YEmETc04jlh1hSLUULK34/GUiZ1Rfy
	TrcSl9XSHgEqQ2b5ySNM12PKsRtEgVPIffcGBER7l6Dqh5K2cjbHjqlvefU8JK7Is74c+p1QYLxCY
	tgIDoOojgVZoOesOvGkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVX0H-0002zz-5Z; Fri, 15 Nov 2019 08:30:53 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVWzp-0002oj-Ke
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 08:30:27 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 7t+ra5HW8XTURQ4eH7aCcabt9UzKf2/Wcg6vguYGkSVaxdUQx87Aldu7mewBLLtZQsfWmWEyqB
 +s46ZrR82DKUg2Y0BsKUjdOX8J5HAiVOxT3PFJ5zOt9qYnMp0TFc2ozWJX5uPDTGbemQrV2lAm
 LjyJt3cWPkg3u0krJB7m041seSSzgv3t04mD/EGAi8IAiY/W8bcnGqCqAx873hFpuF3gYITA8q
 Yz+2YhIfzNIdRD3jxok3WbgWuBiUJgbJSKLLSMhjekXnKy7LXM2niPPOyXAWh9RnIoDrAW85E3
 gVs=
X-IronPort-AV: E=Sophos;i="5.68,307,1569308400"; d="scan'208";a="55730353"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Nov 2019 01:30:23 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 Nov 2019 01:30:19 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 15 Nov 2019 01:30:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DIf79czaU6wc6a61SrqvF+0IARh5ns1GM2IhfGYFF3Cpmozwv801Zz9JnfRL3Vp0x6qIwWWzaGHzxL0VM8nBUZtBNKE4bz/MtG01wxncskV8feeQtmtaiW627UFfaHQbORICFI6LYwBKWuBd5Bqv1XvmTz7levXZND991c+aOavG1okfdEHDJ/+fuGx8NNgk/ruWlABACwDzhXn7eVeQLkZ/bmlP8AtUdMEopGg5q1e2xkaR7VHqGVTJAi26P4xkWE6gf8kxWOJj+f0TufU4+2sI4Vk6BetCVIIu/VW1kMC2DhXfvBpRFVCE1aRscwgOBFjBmS6cHNacbacDZwEoUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jmvzw8XHw3zMQG94+d57aiMUNpsEi8nYlhBSTgEb2+8=;
 b=YkLFkZ5eIt9AKlXtF6RVs5SpbRaoA9GqonCRrEH7ZQLh4ipviAGIFow+AuFp0Rrze40pb0QIZCTSVVDSnHm86IVJobnIkEgsM1+Yw7l54v1WzEyzLioKVsrKaL2fYLQmz0NQmIoJmpMePTyE1ByBwhHhqSgs+PKQS1gxrcwojbuUMWT8DcU/jxTv69Rx1KLi+ZfjgS2DdjD9xCC/nofN4g5gxP1ZAbT9P3+D664mZG+u+qXcyVO2f5ab8Cm5FNyMahWRNLZ6Wd+vEBcVdz2W1mNF/LznK7XjyrM4XHzjQTQuKuzzoU7hBpz3+wXwTc4pxBzCte/NOAM1+s/thOCHYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jmvzw8XHw3zMQG94+d57aiMUNpsEi8nYlhBSTgEb2+8=;
 b=YA0aS6AHbI5yj68WZGoRMHK6HmjYpv7GTG1X7bMv6hYT0zkfdnLOTtkVvvhV+PsgLYYto3j1g2AGI77OoK31/YXEDhI2CVPqe1Wp2mTafmki+CIituYHm9CiiXxyae6ce+xgTkqvfLD+TIGfdOzKfoEXjBqHvGeDiyi9zEjnJIM=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0059.namprd11.prod.outlook.com (10.164.155.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Fri, 15 Nov 2019 08:30:18 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8%4]) with mapi id 15.20.2451.029; Fri, 15 Nov 2019
 08:30:18 +0000
From: <Eugen.Hristev@microchip.com>
To: <wim@linux-watchdog.org>, <linux@roeck-us.net>, <robh+dt@kernel.org>,
 <alexandre.belloni@bootlin.com>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 3/3] watchdog: sama5d4_wdt: addition of sam9x60 compatible
 watchdog
Thread-Topic: [PATCH v4 3/3] watchdog: sama5d4_wdt: addition of sam9x60
 compatible watchdog
Thread-Index: AQHVm47p7hX5blLoX0SwAXVxQ9tJIQ==
Date: Fri, 15 Nov 2019 08:30:18 +0000
Message-ID: <1573806579-7981-3-git-send-email-eugen.hristev@microchip.com>
References: <1573806579-7981-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1573806579-7981-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR06CA0076.eurprd06.prod.outlook.com
 (2603:10a6:208:fa::17) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 835d4bbe-791f-494c-de3d-08d769a60bf3
x-ms-traffictypediagnostic: DM5PR11MB0059:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB005944C17064A69544F742DEE8700@DM5PR11MB0059.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 02229A4115
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(366004)(39860400002)(136003)(376002)(189003)(199004)(2906002)(64756008)(4326008)(2201001)(107886003)(36756003)(25786009)(6506007)(6436002)(186003)(386003)(99286004)(11346002)(476003)(446003)(26005)(7736002)(76176011)(102836004)(316002)(486006)(305945005)(86362001)(110136005)(14454004)(2616005)(54906003)(256004)(8936002)(66446008)(3846002)(52116002)(66476007)(478600001)(6512007)(6486002)(14444005)(5660300002)(6116002)(2501003)(66066001)(66556008)(50226002)(71200400001)(71190400001)(66946007)(81166006)(8676002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB0059;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4sW/bUB82kBTJb11zSAxQJy5s0UjCVQIp0spNAFITBcntsBfRopuPKc4CTVD3nLDZfhX17/vs0sdEPPDNI3kI5P/YrNvOEc95dlBiG4dwl/3B45iLddK+wf5VPC3VLkUmQuv8LV6Z+o5ZHIgtpNj3S5yFTjdYGUW4H9KFnU7ljb416vUu77IM4ZFhZQCUyRfS7kzBZDdW27et0KF+HehKjhdc03xIn6F+2f9kFU2mXhYwwxIrpkiJmnbDIwpP6z9hSvEGahpq9t8dP4oeY/3wAlkv5quKutSDQH5798jMYN3ZvGEO2oeA3SCAstf7XlwwOIdIcrv6ovws0XmDPzsxf0/55Ckh7UwLJndbQz4XLlDKkKng4j7RlF/17iRlyNqkkbku884HKXMPpdQBSUywI4suU9p6mBiShRK4iBPYwGWNmj2942AyyJxA01advTt
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 835d4bbe-791f-494c-de3d-08d769a60bf3
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2019 08:30:18.4632 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EkZbNd3fYfuQ82QRUmjGvHsHL8SfniSr7hvSl062B8Lg4bewDI1YYQoXbksSEnxA8E0fBDwZnjDeEE/Y6dqN+F0XiTmIfaua/L2mm1186TQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_003025_754424_E0252102 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Eugen.Hristev@microchip.com, linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Add support for SAM9X60 WDT into sama5d4_wdt.
This means that this driver gets a flag inside the data struct
that represents the sam9x60 support.
This flag differentiates between the two hardware blocks, and is set
according to the compatible of the driver instantiation.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
Changes in v4:
- check compatible with different of_ function
- call irq parse and map only if need_irq
- changed tabbing in struct defintion

Changes in v3:
- changed need_irq to bool, instead of a single bit variable.
- the platform data config struct is gone now, changed to a pointer to a bool
to have the sam9x60_support as 'true', pointing to a static bool with true value.
Can have a better solution than this ?
- the specific sam9x60_support flag is assigned at probe time, corresponding
to the flag value in .data

 drivers/watchdog/at91sam9_wdt.h |  14 ++++++
 drivers/watchdog/sama5d4_wdt.c  | 109 +++++++++++++++++++++++++++++++---------
 2 files changed, 98 insertions(+), 25 deletions(-)

diff --git a/drivers/watchdog/at91sam9_wdt.h b/drivers/watchdog/at91sam9_wdt.h
index abfe34d..4b3bd1d 100644
--- a/drivers/watchdog/at91sam9_wdt.h
+++ b/drivers/watchdog/at91sam9_wdt.h
@@ -24,7 +24,10 @@
 #define AT91_WDT_MR		0x04			/* Watchdog Mode Register */
 #define  AT91_WDT_WDV		(0xfffUL << 0)		/* Counter Value */
 #define  AT91_WDT_SET_WDV(x)	((x) & AT91_WDT_WDV)
+#define  AT91_SAM9X60_PERIODRST	BIT(4)		/* Period Reset */
+#define  AT91_SAM9X60_RPTHRST	BIT(5)		/* Minimum Restart Period */
 #define  AT91_WDT_WDFIEN	BIT(12)		/* Fault Interrupt Enable */
+#define  AT91_SAM9X60_WDDIS	BIT(12)		/* Watchdog Disable */
 #define  AT91_WDT_WDRSTEN	BIT(13)		/* Reset Processor */
 #define  AT91_WDT_WDRPROC	BIT(14)		/* Timer Restart */
 #define  AT91_WDT_WDDIS		BIT(15)		/* Watchdog Disable */
@@ -37,4 +40,15 @@
 #define  AT91_WDT_WDUNF		BIT(0)		/* Watchdog Underflow */
 #define  AT91_WDT_WDERR		BIT(1)		/* Watchdog Error */
 
+#define AT91_SAM9X60_VR		0x08			/* Watchdog Timer Value Register */
+
+#define AT91_SAM9X60_WLR		0x0c
+#define  AT91_SAM9X60_COUNTER	(0xfffUL << 0)		/* Watchdog Period Value */
+#define  AT91_SAM9X60_SET_COUNTER(x)	((x) & AT91_SAM9X60_COUNTER)
+
+#define AT91_SAM9X60_IER		0x14		/* Interrupt Enable Register */
+#define  AT91_SAM9X60_PERINT		BIT(0)		/* Period Interrupt Enable */
+#define AT91_SAM9X60_IDR		0x18		/* Interrupt Disable Register */
+#define AT91_SAM9X60_ISR		0x1c		/* Interrupt Status Register */
+
 #endif
diff --git a/drivers/watchdog/sama5d4_wdt.c b/drivers/watchdog/sama5d4_wdt.c
index d193a60..e5d11d6 100644
--- a/drivers/watchdog/sama5d4_wdt.c
+++ b/drivers/watchdog/sama5d4_wdt.c
@@ -2,7 +2,7 @@
 /*
  * Driver for Atmel SAMA5D4 Watchdog Timer
  *
- * Copyright (C) 2015 Atmel Corporation
+ * Copyright (C) 2015-2019 Microchip Technology Inc. and its subsidiaries
  */
 
 #include <linux/delay.h>
@@ -11,6 +11,7 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/of_device.h>
 #include <linux/of_irq.h>
 #include <linux/platform_device.h>
 #include <linux/reboot.h>
@@ -29,7 +30,10 @@ struct sama5d4_wdt {
 	struct watchdog_device	wdd;
 	void __iomem		*reg_base;
 	u32			mr;
+	u32			ir;
 	unsigned long		last_ping;
+	bool			need_irq;
+	bool			sam9x60_support;
 };
 
 static int wdt_timeout;
@@ -78,7 +82,12 @@ static int sama5d4_wdt_start(struct watchdog_device *wdd)
 {
 	struct sama5d4_wdt *wdt = watchdog_get_drvdata(wdd);
 
-	wdt->mr &= ~AT91_WDT_WDDIS;
+	if (wdt->sam9x60_support) {
+		writel_relaxed(wdt->ir, wdt->reg_base + AT91_SAM9X60_IER);
+		wdt->mr &= ~AT91_SAM9X60_WDDIS;
+	} else {
+		wdt->mr &= ~AT91_WDT_WDDIS;
+	}
 	wdt_write(wdt, AT91_WDT_MR, wdt->mr);
 
 	return 0;
@@ -88,7 +97,12 @@ static int sama5d4_wdt_stop(struct watchdog_device *wdd)
 {
 	struct sama5d4_wdt *wdt = watchdog_get_drvdata(wdd);
 
-	wdt->mr |= AT91_WDT_WDDIS;
+	if (wdt->sam9x60_support) {
+		writel_relaxed(wdt->ir, wdt->reg_base + AT91_SAM9X60_IDR);
+		wdt->mr |= AT91_SAM9X60_WDDIS;
+	} else {
+		wdt->mr |= AT91_WDT_WDDIS;
+	}
 	wdt_write(wdt, AT91_WDT_MR, wdt->mr);
 
 	return 0;
@@ -109,6 +123,14 @@ static int sama5d4_wdt_set_timeout(struct watchdog_device *wdd,
 	struct sama5d4_wdt *wdt = watchdog_get_drvdata(wdd);
 	u32 value = WDT_SEC2TICKS(timeout);
 
+	if (wdt->sam9x60_support) {
+		wdt_write(wdt, AT91_SAM9X60_WLR,
+			  AT91_SAM9X60_SET_COUNTER(value));
+
+		wdd->timeout = timeout;
+		return 0;
+	}
+
 	wdt->mr &= ~AT91_WDT_WDV;
 	wdt->mr |= AT91_WDT_SET_WDV(value);
 
@@ -143,8 +165,14 @@ static const struct watchdog_ops sama5d4_wdt_ops = {
 static irqreturn_t sama5d4_wdt_irq_handler(int irq, void *dev_id)
 {
 	struct sama5d4_wdt *wdt = platform_get_drvdata(dev_id);
+	u32 reg;
 
-	if (wdt_read(wdt, AT91_WDT_SR)) {
+	if (wdt->sam9x60_support)
+		reg = wdt_read(wdt, AT91_SAM9X60_ISR);
+	else
+		reg = wdt_read(wdt, AT91_WDT_SR);
+
+	if (reg) {
 		pr_crit("Atmel Watchdog Software Reset\n");
 		emergency_restart();
 		pr_crit("Reboot didn't succeed\n");
@@ -157,13 +185,14 @@ static int of_sama5d4_wdt_init(struct device_node *np, struct sama5d4_wdt *wdt)
 {
 	const char *tmp;
 
-	wdt->mr = AT91_WDT_WDDIS;
+	if (wdt->sam9x60_support)
+		wdt->mr = AT91_SAM9X60_WDDIS;
+	else
+		wdt->mr = AT91_WDT_WDDIS;
 
 	if (!of_property_read_string(np, "atmel,watchdog-type", &tmp) &&
 	    !strcmp(tmp, "software"))
-		wdt->mr |= AT91_WDT_WDFIEN;
-	else
-		wdt->mr |= AT91_WDT_WDRSTEN;
+		wdt->need_irq = true;
 
 	if (of_property_read_bool(np, "atmel,idle-halt"))
 		wdt->mr |= AT91_WDT_WDIDLEHLT;
@@ -176,21 +205,46 @@ static int of_sama5d4_wdt_init(struct device_node *np, struct sama5d4_wdt *wdt)
 
 static int sama5d4_wdt_init(struct sama5d4_wdt *wdt)
 {
-	u32 reg;
+	u32 reg, val;
+
+	val = WDT_SEC2TICKS(WDT_DEFAULT_TIMEOUT);
 	/*
 	 * When booting and resuming, the bootloader may have changed the
 	 * watchdog configuration.
 	 * If the watchdog is already running, we can safely update it.
 	 * Else, we have to disable it properly.
 	 */
-	if (wdt_enabled) {
-		wdt_write_nosleep(wdt, AT91_WDT_MR, wdt->mr);
-	} else {
+	if (!wdt_enabled) {
 		reg = wdt_read(wdt, AT91_WDT_MR);
-		if (!(reg & AT91_WDT_WDDIS))
+		if (wdt->sam9x60_support && (!(reg & AT91_SAM9X60_WDDIS)))
+			wdt_write_nosleep(wdt, AT91_WDT_MR,
+					  reg | AT91_SAM9X60_WDDIS);
+		else if (!wdt->sam9x60_support &&
+			 (!(reg & AT91_WDT_WDDIS)))
 			wdt_write_nosleep(wdt, AT91_WDT_MR,
 					  reg | AT91_WDT_WDDIS);
 	}
+
+	if (wdt->sam9x60_support) {
+		if (wdt->need_irq)
+			wdt->ir = AT91_SAM9X60_PERINT;
+		else
+			wdt->mr |= AT91_SAM9X60_PERIODRST;
+
+		wdt_write(wdt, AT91_SAM9X60_IER, wdt->ir);
+		wdt_write(wdt, AT91_SAM9X60_WLR, AT91_SAM9X60_SET_COUNTER(val));
+	} else {
+		wdt->mr |= AT91_WDT_SET_WDD(WDT_SEC2TICKS(MAX_WDT_TIMEOUT));
+		wdt->mr |= AT91_WDT_SET_WDV(val);
+
+		if (wdt->need_irq)
+			wdt->mr |= AT91_WDT_WDFIEN;
+		else
+			wdt->mr |= AT91_WDT_WDRSTEN;
+	}
+
+	wdt_write_nosleep(wdt, AT91_WDT_MR, wdt->mr);
+
 	return 0;
 }
 
@@ -201,7 +255,6 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
 	struct sama5d4_wdt *wdt;
 	void __iomem *regs;
 	u32 irq = 0;
-	u32 timeout;
 	int ret;
 
 	wdt = devm_kzalloc(dev, sizeof(*wdt), GFP_KERNEL);
@@ -215,6 +268,8 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
 	wdd->min_timeout = MIN_WDT_TIMEOUT;
 	wdd->max_timeout = MAX_WDT_TIMEOUT;
 	wdt->last_ping = jiffies;
+	wdt->sam9x60_support = of_device_is_compatible(dev->of_node,
+						       "microchip,sam9x60-wdt");
 
 	watchdog_set_drvdata(wdd, wdt);
 
@@ -224,15 +279,19 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
 
 	wdt->reg_base = regs;
 
-	irq = irq_of_parse_and_map(dev->of_node, 0);
-	if (!irq)
-		dev_warn(dev, "failed to get IRQ from DT\n");
-
 	ret = of_sama5d4_wdt_init(dev->of_node, wdt);
 	if (ret)
 		return ret;
 
-	if ((wdt->mr & AT91_WDT_WDFIEN) && irq) {
+	if (wdt->need_irq) {
+		irq = irq_of_parse_and_map(dev->of_node, 0);
+		if (!irq) {
+			dev_warn(dev, "failed to get IRQ from DT\n");
+			wdt->need_irq = false;
+		}
+	}
+
+	if (wdt->need_irq) {
 		ret = devm_request_irq(dev, irq, sama5d4_wdt_irq_handler,
 				       IRQF_SHARED | IRQF_IRQPOLL |
 				       IRQF_NO_SUSPEND, pdev->name, pdev);
@@ -244,11 +303,6 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
 
 	watchdog_init_timeout(wdd, wdt_timeout, dev);
 
-	timeout = WDT_SEC2TICKS(wdd->timeout);
-
-	wdt->mr |= AT91_WDT_SET_WDD(WDT_SEC2TICKS(MAX_WDT_TIMEOUT));
-	wdt->mr |= AT91_WDT_SET_WDV(timeout);
-
 	ret = sama5d4_wdt_init(wdt);
 	if (ret)
 		return ret;
@@ -269,7 +323,12 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id sama5d4_wdt_of_match[] = {
-	{ .compatible = "atmel,sama5d4-wdt", },
+	{
+		.compatible = "atmel,sama5d4-wdt",
+	},
+	{
+		.compatible = "microchip,sam9x60-wdt",
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, sama5d4_wdt_of_match);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
