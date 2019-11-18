Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F2E1000C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 09:51:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWc4MAkHdZt0UhQulW+0tlaWDR3Bw8nt+7Z0yVFf4us=; b=psrps0/R36T84N
	J3Nt5zoxwsNc853HD0h4tHEuK04HTOK1y6pVk4RkV/RDaBQwavJti9HAK1ZRyyjcj8V8Gr3YT2Bn0
	PfZR5vgC7AftXt7RzeJ7cRsXFE3edGSmb5GCV4F3sE/zy/o4yZlvgAEdiAkyV76lgP/zhq+2rb7rc
	f9TgqHheIJZYjkKTyHxnDF92htrIlodkqOCXetVUuRUoJkhbFvNARfKMohTZrTrosgqCYCqa8iA63
	a1sQTAnp9Nz2oOYqFnvM2FyKoHeGqAXJz2sqkv4CvyXxxDa0EJbHbxZio3j0R784to7SxhivrE0qa
	MTU8C1hugzG2oTmZhnJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWckd-0003RV-E9; Mon, 18 Nov 2019 08:51:15 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWck6-000322-L2
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 08:50:44 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: bWXkhqeLQ3cuPByW4LVhwq958SSdsjt0F8+tBQUq9wg1SQ4Qh5R5skARkoSD60TvCX3Dlk9C2N
 6X5sB76c4HMhrWGiENlYtfJEuLRRHzJR4wWVzL/lf7FvTL9mv7NvRXDZkmUth3AyymhxOg2a4/
 EaoxxoZy7Xg0PeuBObQzG5r50MrpNizWRI5eQNX2djGmkBS8GLzAo7bKB6IgDIe8mFq30WmJ/n
 yi825c80qPaSsCQO3aN87QvGVxiakWxVoaNKvk5bqMYJ/rKZJ5V/yILYBzm0h+UNIAWp9pJI9V
 ya8=
X-IronPort-AV: E=Sophos;i="5.68,319,1569308400"; d="scan'208";a="55779485"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Nov 2019 01:50:38 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 18 Nov 2019 01:50:38 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 18 Nov 2019 01:50:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ily/4leFPg0tj6TvNxqayoJFHZCITW8YP25rzb6fcCo6UC6qQk4sW4hbul6AQugUMLa+SLLdMDIKoPiDIvIQcZeeIHHp9BYVyuZy8O4JWSaCugC+Ldnd363wHw4QJ1t06s5SNboM163kqZozTwxdV+6OBhBm9YR/UfAYL3HdahEG4hivdJ+gyZW2T4hh/b7Um72oJuhjqX5BYjjowPBzEhGKzlTpl5YvMiHrcJRXO7gqg5eXkmGHNdWSUruVZ1mJMDXKtQT+tLju7wubQ9QpoaxKIzXfoJWoZup5TAMzAYqzgoM9BV82eGiXROWaMmJtPU00s2BIz+FU5V6rokifEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q9KsLDUP8z/683tnUbgj33udnjICE4ZRjYinXV7mI8g=;
 b=cofDP9H7DX8dP1/2HDcw+w91KwOxsslKHv1JnSNuBNq1Pj2cGAqaDkGUuUv11/DOL5jfHoWKBzsm9oUe/JuIdUwa4ApHBgae6BLa0rZ+k8f3KlJQL8uu4ra8szaLGmkKLKqCgar+HUUaDaqpk57lm93f0QNLoSnvYJM/IF49S7XjPNJkqCe5efdTOqexegpWmzz5nm5Q747q9bVYTnXAshNoXZFvUPU5Y2NUySr55N/z7ti2pwZ7oDTZveDfYeQ9aT22+sFtCzS2vkHGKukLx8UuMcwGRNmDt7UMlguMgxHM6r+vsQQHO0Xl68k/jIzC/HVjmh7dvE2qly/CaLT9ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q9KsLDUP8z/683tnUbgj33udnjICE4ZRjYinXV7mI8g=;
 b=tYYDm6XnjB+Wl9lSpUi+5Pgj9EoA3sGajFt1WdEehy4VJdj7S9CKxg4qTe6s9wOLAmaI1pVrSLilsJmZRHA6VQxXtNJPoJxJPONGsWj/TFGMB6OVpjuYZTjqN97MltsOiQCt9Q9EnTkubQEPw5KlxmgAqn7vJksxvV7E7wh2X1g=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1659.namprd11.prod.outlook.com (10.172.35.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Mon, 18 Nov 2019 08:50:36 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8%4]) with mapi id 15.20.2451.029; Mon, 18 Nov 2019
 08:50:36 +0000
From: <Eugen.Hristev@microchip.com>
To: <wim@linux-watchdog.org>, <linux@roeck-us.net>, <robh+dt@kernel.org>,
 <alexandre.belloni@bootlin.com>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 3/3] watchdog: sama5d4_wdt: addition of sam9x60 compatible
 watchdog
Thread-Topic: [PATCH v5 3/3] watchdog: sama5d4_wdt: addition of sam9x60
 compatible watchdog
Thread-Index: AQHVne0+qwcE0YQphUGGkPZGE8egcg==
Date: Mon, 18 Nov 2019 08:50:36 +0000
Message-ID: <1574067012-18559-3-git-send-email-eugen.hristev@microchip.com>
References: <1574067012-18559-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1574067012-18559-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR05CA0030.eurprd05.prod.outlook.com
 (2603:10a6:208:55::43) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 76cafce6-ee83-4c02-19df-08d76c04613c
x-ms-traffictypediagnostic: DM5PR11MB1659:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1659D9F997FDA34413445962E84D0@DM5PR11MB1659.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 0225B0D5BC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(346002)(136003)(39860400002)(376002)(189003)(199004)(5660300002)(50226002)(478600001)(446003)(11346002)(81166006)(81156014)(4326008)(8676002)(2906002)(36756003)(486006)(6486002)(8936002)(66066001)(14444005)(256004)(6116002)(6512007)(54906003)(3846002)(2201001)(7736002)(305945005)(71190400001)(316002)(71200400001)(6436002)(52116002)(25786009)(110136005)(76176011)(476003)(102836004)(6506007)(386003)(186003)(2501003)(86362001)(99286004)(66476007)(66556008)(64756008)(66446008)(66946007)(2616005)(107886003)(26005)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1659;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 10Date1rKPmV+G58JoqF4p4/rAVqW73UoHPK6fcJ/emPdC7GaXt4ob3WzQMVDMuLeBFjt/2gD+CszSeAwn2GaxJzsCdpXWiFEnfxsaNohUctFPlif0tr7QehAi2FSfR/Kt0IlZDQu7P9DfCbbCh5UtGXCED68LuMi3lqnfDTkoKPsdtBbOK8VcqJpOZMTocwDK9ljXR3oTXrIYeGd73iQqZuiVkIeom5nbXSAwZis41HBDanx51p0igkulpMGKDoXtr8npqA7pCQ2BWUWY7nEWwtGlWgzHaBQLO6BWaDdfzjySYXbphlXDqAYV1zhESk+VV74AkyDcn22DgODzzHejxjOZtM6obik1I8sthTPNz/6lHu6hExs1/tflyzX8lmMLqJ2yfcIbQzUGSjvHakNot1FgdwTQvrKnYNKa6F0xmWGGROXdHhjQVioJLVpZKj
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 76cafce6-ee83-4c02-19df-08d76c04613c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2019 08:50:36.6320 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mF/p35r1/pOF+j0WUyXiLRUOJqV1Z8Fy7r3yDghzRvHXIkkKm4m8WRfkuckYTowzuiZAiWeDC+xcr9JxAD9u6/A3/NZhnKy03FTzmGbARFU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1659
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_005042_772327_296C79BA 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Changes in v5:
- Fixed checkpatch issues for excessive long lines in header file

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

 drivers/watchdog/at91sam9_wdt.h |  21 ++++++++
 drivers/watchdog/sama5d4_wdt.c  | 109 +++++++++++++++++++++++++++++++---------
 2 files changed, 105 insertions(+), 25 deletions(-)

diff --git a/drivers/watchdog/at91sam9_wdt.h b/drivers/watchdog/at91sam9_wdt.h
index abfe34d..298d545 100644
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
@@ -37,4 +40,22 @@
 #define  AT91_WDT_WDUNF		BIT(0)		/* Watchdog Underflow */
 #define  AT91_WDT_WDERR		BIT(1)		/* Watchdog Error */
 
+/* Watchdog Timer Value Register */
+#define AT91_SAM9X60_VR		0x08
+
+/* Watchdog Window Level Register */
+#define AT91_SAM9X60_WLR	0x0c
+/* Watchdog Period Value */
+#define  AT91_SAM9X60_COUNTER	(0xfffUL << 0)
+#define  AT91_SAM9X60_SET_COUNTER(x)	((x) & AT91_SAM9X60_COUNTER)
+
+/* Interrupt Enable Register */
+#define AT91_SAM9X60_IER	0x14
+/* Period Interrupt Enable */
+#define  AT91_SAM9X60_PERINT	BIT(0)
+/* Interrupt Disable Register */
+#define AT91_SAM9X60_IDR	0x18
+/* Interrupt Status Register */
+#define AT91_SAM9X60_ISR	0x1c
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
