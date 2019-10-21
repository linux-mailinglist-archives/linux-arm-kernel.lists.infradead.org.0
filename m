Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 588EEDE794
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:14:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPa4W9/YM0wX8c2lYCYb48en0CmAztgGuCJhhmsStTg=; b=J5FeWImD+JxzlY
	UWqdv+hqp/RuBY/MZ51FDBjAEPAgwg1Ig0Dtfi6vqdstn4lrxZwdeUeNQuWbz02Ysn8NAiovb0hMi
	AWnvGaj8Cz89tVIg7o6wXNT93Ux1D7Yq232SSjMwWrheTcKcnFkGpBCPFFlKAYZrKNQjEeB5zeDdS
	/p023k3gUrItnC15F4xHP8PyXxIFoK22FHXOkFMZF01ffNjd03o60tSdQbhwSjAWomfJEZxd2pzU5
	PzVABmg8K7RkfXzT5gDsvbJChg6TENcaJXIVCIsxraMxeyvXGnMgUAArZTEbYhhNbXr4eGLQCEIul
	qeM5TDdmZLIURFXS0yEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTlv-00012Z-NA; Mon, 21 Oct 2019 09:14:39 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTlW-0000ol-FA
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 09:14:16 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: WdvsopDsFN38YokG5xZpg6pDE587KdfL3p8vhkaTrRhsSWph4uSpbOrtBAv5BT7BKRntrdHhNi
 SbyW2n5jemdtlgkcZ7jkvUfznwwtWyOX9tNQzSIKgnUzPAwSezbDIRjJvkQ+u067xTssrOoqJ8
 mhmw19L2Wn/LGnKN3PppkYAl7lH6d0eHaxhNmPcHzMGwirtkOHFbxPkPgdX0qcxtd2dSd6wS2Q
 IvwSVckXHNU63Q+llObaq++HrFsa9typRQKctfP+ZxFCy8O9ipnOAhSIcEPPyJgd1ZTVjoHCxt
 eCQ=
X-IronPort-AV: E=Sophos;i="5.67,323,1566889200"; d="scan'208";a="50865775"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Oct 2019 02:14:12 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 21 Oct 2019 02:14:12 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 21 Oct 2019 02:14:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hGbnTe/SaFhjQEgSFAp0rHvt9mHT3GymvxU1TOVdfX/HfzqsS975bV5jfr8WOuAfuTVRfXA7IKTsBdCHUbicFdc3X8NH37i5R4136c0+d1nLSErQl6/lJvcRZowdA9VgWfpOa7blO+OFARBz8jZxEwqhZEElgwxfVThr3I1qkEr3l98lF/3pb8stfIKyUVI44gcuF5ej0WvFhshoS+LWTBhds4Yr2KPqxzAcDf5CTgROLdvjGayxHfycsr+vVrcouq1r7oOnFYrE33Bz4hLvAXTZTQD+lJUVjot2ffsqjwr+XKtpW/wv4bAA4NO/KSX4RK9/LT3wi+EWR66gRqYr8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8qwS2OXBW+0c8Ryns1zeCwV1J5SG3xD2SqXlp6NGW4g=;
 b=jFWJcfSS/ytiKMKRNIiVLnS/Fag4xlTtklmSUJ8dpyY6vIFVgvOMUc54lU+NJ6XjASlnJalPlRFK+bNpnLm9IZrpIsEAtgR0Z+CPJa5Ye5yZQghCYFjSa9laNwpcMg2Mw9rw0Ab1PovSOsyAEW8ouw3soQwghxIcb7cLh+j3DBtviFjUtWgEi03y1Fcm/cbCv4PylTTWRbkR9uQ7RKvxCP+jMQGmOSDL8sz29oDOuk4ScsDrg/ayDOLL4GFWWrfzFwfYlsCI/wPTm3DHiB3w38WuB5ZvG7OlLJ0uytY18w8zK5A4L+cxrXKCwxkTVZp2jh3lIQDpnJQP5K+xbIA5vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8qwS2OXBW+0c8Ryns1zeCwV1J5SG3xD2SqXlp6NGW4g=;
 b=J+UVfSOsAGpV3vO+pY0mCA1mH2ZQvSq7hb+5PdNMtG8epLJ1QFNyimprvMPUtOEZ3Gi0dJCnk+VhEXImU2KlcNrCZnjbSOIlBcFYfSDXX6fMfOU/KvHtP7T2ovwVlkSgykpL5XW/SS+2DNDI0o05ZGnp8rcKxmqYYEXrkR2HyX8=
Received: from MWHPR11MB1248.namprd11.prod.outlook.com (10.169.235.138) by
 MWHPR11MB1551.namprd11.prod.outlook.com (10.172.54.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.20; Mon, 21 Oct 2019 09:14:10 +0000
Received: from MWHPR11MB1248.namprd11.prod.outlook.com
 ([fe80::a96a:d3d4:a05b:b88]) by MWHPR11MB1248.namprd11.prod.outlook.com
 ([fe80::a96a:d3d4:a05b:b88%2]) with mapi id 15.20.2347.029; Mon, 21 Oct 2019
 09:14:10 +0000
From: <Eugen.Hristev@microchip.com>
To: <wim@linux-watchdog.org>, <linux@roeck-us.net>, <robh+dt@kernel.org>,
 <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <linux-watchdog@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 2/2] watchdog: sama5d4_wdt: addition of sam9x60 compatible
 watchdog
Thread-Topic: [PATCH v2 2/2] watchdog: sama5d4_wdt: addition of sam9x60
 compatible watchdog
Thread-Index: AQHVh+/l2gK286N5pUWI+AtpzaiEgw==
Date: Mon, 21 Oct 2019 09:14:09 +0000
Message-ID: <1571648890-15140-2-git-send-email-eugen.hristev@microchip.com>
References: <1571648890-15140-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1571648890-15140-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0701CA0042.eurprd07.prod.outlook.com
 (2603:10a6:800:90::28) To MWHPR11MB1248.namprd11.prod.outlook.com
 (2603:10b6:300:27::10)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 88374393-0310-4c47-66a6-08d756070812
x-ms-traffictypediagnostic: MWHPR11MB1551:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB155186A7ED069D034AB93A87E8690@MWHPR11MB1551.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:313;
x-forefront-prvs: 0197AFBD92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(376002)(136003)(39860400002)(396003)(199004)(189003)(71200400001)(71190400001)(5660300002)(110136005)(99286004)(14454004)(2906002)(2501003)(316002)(478600001)(186003)(386003)(25786009)(52116002)(26005)(6506007)(102836004)(7736002)(305945005)(256004)(14444005)(76176011)(6116002)(3846002)(81166006)(81156014)(66476007)(66946007)(446003)(11346002)(66066001)(8676002)(2616005)(66446008)(2201001)(86362001)(64756008)(66556008)(4326008)(107886003)(6436002)(6486002)(8936002)(6512007)(50226002)(476003)(486006)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1551;
 H:MWHPR11MB1248.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ot75tY+7/WnG6ibT4mjmKElcQaYN1iLZ9uVHWAuEKQ7lZZVkaW5Q+7Q/I66mblLqstBPPIqVqaiXr7LEcNTF6K/2qB5rOG10gUJqHKXIZR4PDhgOqmXIYV6DNXOcthrsU23b9M8h6RHRCuytOASr2QyFzW12kz9mNJk8PsGmsDUv5f3CYLlYOv7hIalm0NVz0g5nvtqleLJ8tGzcebAY3vGwmk8ItKFpaP3X4JHk4MdMOJbNq5HA0un5wa0rEfzaoZWBJCKKI4wRIIOstI0Q6txOez0XybV6t2FNFxyYyKZIG7ZySF+VUtTcl5+KBAH4Pq5jVWDsOPJQMduD8H4YX5TRnMVcYz+66DHyF+n077PrC9naWMo4HkF3kCYu/XlKasX4Y9zhy61a59UdaPXSDnLFumplaNmGP+Cs87teCv8W082Dy2zktAe3JWIA8YzT
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 88374393-0310-4c47-66a6-08d756070812
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2019 09:14:09.9216 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1r8qyDyGbfpNHziJeq19Kf0YI+9zYwTMopXE3iywgaN6eESYan/J5Dqi3NzYF8+DaE9OuRSj5QU3CufttdBvhqyMxhmTjevpQDR3mUYRIYo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1551
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_021414_577579_DDCA1D84 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Add support for SAM9X60 WDT into sama5d4_wdt.
This means that this driver will have a platform data that will
hold differences.
Added definitions of different bits.
The ops functions will differentiate between the two hardware blocks.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---

Hello,

This is a rework of the separate sam9x60 watchdog driver into a single driver
that supports both hardware blocks (sam9x60 and sama5d4)
This was done as suggested on the original patches on the mailing list.

Thanks,
Eugen

 drivers/watchdog/at91sam9_wdt.h |  14 +++++
 drivers/watchdog/sama5d4_wdt.c  | 127 +++++++++++++++++++++++++++++++---------
 2 files changed, 112 insertions(+), 29 deletions(-)

diff --git a/drivers/watchdog/at91sam9_wdt.h b/drivers/watchdog/at91sam9_wdt.h
index 390941c..7a053fd 100644
--- a/drivers/watchdog/at91sam9_wdt.h
+++ b/drivers/watchdog/at91sam9_wdt.h
@@ -20,7 +20,10 @@
 #define AT91_WDT_MR		0x04			/* Watchdog Mode Register */
 #define		AT91_WDT_WDV		(0xfff << 0)		/* Counter Value */
 #define			AT91_WDT_SET_WDV(x)	((x) & AT91_WDT_WDV)
+#define		AT91_SAM9X60_PERIODRST	BIT(4)		/* Period Reset */
+#define		AT91_SAM9X60_RPTHRST	BIT(5)		/* Minimum Restart Period */
 #define		AT91_WDT_WDFIEN		(1     << 12)		/* Fault Interrupt Enable */
+#define		AT91_SAM9X60_WDDIS		BIT(12)		/* Disable */
 #define		AT91_WDT_WDRSTEN	(1     << 13)		/* Reset Processor */
 #define		AT91_WDT_WDRPROC	(1     << 14)		/* Timer Restart */
 #define		AT91_WDT_WDDIS		(1     << 15)		/* Watchdog Disable */
@@ -33,4 +36,15 @@
 #define		AT91_WDT_WDUNF		(1 << 0)		/* Watchdog Underflow */
 #define		AT91_WDT_WDERR		(1 << 1)		/* Watchdog Error */
 
+#define AT91_SAM9X60_VR		0x08			/* Watchdog Timer Value Register */
+
+#define AT91_SAM9X60_WLR		0x0c
+#define		AT91_SAM9X60_COUNTER	(0xfff << 0)		/* Watchdog Period Value */
+#define		AT91_SAM9X60_SET_COUNTER(x)	((x) & AT91_SAM9X60_COUNTER)
+
+#define AT91_SAM9X60_IER		0x14			/* Interrupt Enable Register */
+#define		AT91_SAM9X60_PERINT		BIT(0)		/* Period Interrupt Enable */
+#define AT91_SAM9X60_IDR		0x18			/* Interrupt Disable Register */
+#define AT91_SAM9X60_ISR		0x1c			/* Interrupt Status Register */
+
 #endif
diff --git a/drivers/watchdog/sama5d4_wdt.c b/drivers/watchdog/sama5d4_wdt.c
index d193a60..b92afd7 100644
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
@@ -25,11 +26,18 @@
 
 #define WDT_SEC2TICKS(s)	((s) ? (((s) << 8) - 1) : 0)
 
+struct sama5d4_wdt_data {
+	const unsigned int		sam9x60_support;
+};
+
 struct sama5d4_wdt {
-	struct watchdog_device	wdd;
-	void __iomem		*reg_base;
-	u32			mr;
-	unsigned long		last_ping;
+	struct watchdog_device		wdd;
+	const struct sama5d4_wdt_data	*data;
+	void __iomem			*reg_base;
+	u32				mr;
+	u32				ir;
+	unsigned long			last_ping;
+	unsigned int			need_irq:1;
 };
 
 static int wdt_timeout;
@@ -78,7 +86,12 @@ static int sama5d4_wdt_start(struct watchdog_device *wdd)
 {
 	struct sama5d4_wdt *wdt = watchdog_get_drvdata(wdd);
 
-	wdt->mr &= ~AT91_WDT_WDDIS;
+	if (wdt->data->sam9x60_support) {
+		writel_relaxed(wdt->ir, wdt->reg_base + AT91_SAM9X60_IER);
+		wdt->mr &= ~AT91_SAM9X60_WDDIS;
+	} else {
+		wdt->mr &= ~AT91_WDT_WDDIS;
+	}
 	wdt_write(wdt, AT91_WDT_MR, wdt->mr);
 
 	return 0;
@@ -88,7 +101,12 @@ static int sama5d4_wdt_stop(struct watchdog_device *wdd)
 {
 	struct sama5d4_wdt *wdt = watchdog_get_drvdata(wdd);
 
-	wdt->mr |= AT91_WDT_WDDIS;
+	if (wdt->data->sam9x60_support) {
+		writel_relaxed(wdt->ir, wdt->reg_base + AT91_SAM9X60_IDR);
+		wdt->mr |= AT91_SAM9X60_WDDIS;
+	} else {
+		wdt->mr |= AT91_WDT_WDDIS;
+	}
 	wdt_write(wdt, AT91_WDT_MR, wdt->mr);
 
 	return 0;
@@ -109,6 +127,14 @@ static int sama5d4_wdt_set_timeout(struct watchdog_device *wdd,
 	struct sama5d4_wdt *wdt = watchdog_get_drvdata(wdd);
 	u32 value = WDT_SEC2TICKS(timeout);
 
+	if (wdt->data->sam9x60_support) {
+		wdt_write(wdt, AT91_SAM9X60_WLR,
+			  AT91_SAM9X60_SET_COUNTER(value));
+
+		wdd->timeout = timeout;
+		return 0;
+	}
+
 	wdt->mr &= ~AT91_WDT_WDV;
 	wdt->mr |= AT91_WDT_SET_WDV(value);
 
@@ -143,8 +169,14 @@ static const struct watchdog_ops sama5d4_wdt_ops = {
 static irqreturn_t sama5d4_wdt_irq_handler(int irq, void *dev_id)
 {
 	struct sama5d4_wdt *wdt = platform_get_drvdata(dev_id);
+	u32 reg;
 
-	if (wdt_read(wdt, AT91_WDT_SR)) {
+	if (wdt->data->sam9x60_support)
+		reg = wdt_read(wdt, AT91_SAM9X60_ISR);
+	else
+		reg = wdt_read(wdt, AT91_WDT_SR);
+
+	if (reg) {
 		pr_crit("Atmel Watchdog Software Reset\n");
 		emergency_restart();
 		pr_crit("Reboot didn't succeed\n");
@@ -157,13 +189,14 @@ static int of_sama5d4_wdt_init(struct device_node *np, struct sama5d4_wdt *wdt)
 {
 	const char *tmp;
 
-	wdt->mr = AT91_WDT_WDDIS;
+	if (wdt->data->sam9x60_support)
+		wdt->mr = AT91_SAM9X60_WDDIS;
+	else
+		wdt->mr = AT91_WDT_WDDIS;
 
 	if (!of_property_read_string(np, "atmel,watchdog-type", &tmp) &&
 	    !strcmp(tmp, "software"))
-		wdt->mr |= AT91_WDT_WDFIEN;
-	else
-		wdt->mr |= AT91_WDT_WDRSTEN;
+		wdt->need_irq = 1;
 
 	if (of_property_read_bool(np, "atmel,idle-halt"))
 		wdt->mr |= AT91_WDT_WDIDLEHLT;
@@ -176,21 +209,46 @@ static int of_sama5d4_wdt_init(struct device_node *np, struct sama5d4_wdt *wdt)
 
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
+		if (wdt->data->sam9x60_support && (!(reg & AT91_SAM9X60_WDDIS)))
+			wdt_write_nosleep(wdt, AT91_WDT_MR,
+					  reg | AT91_SAM9X60_WDDIS);
+		else if (!wdt->data->sam9x60_support &&
+			 (!(reg & AT91_WDT_WDDIS)))
 			wdt_write_nosleep(wdt, AT91_WDT_MR,
 					  reg | AT91_WDT_WDDIS);
 	}
+
+	if (wdt->data->sam9x60_support) {
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
 
@@ -201,13 +259,14 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
 	struct sama5d4_wdt *wdt;
 	void __iomem *regs;
 	u32 irq = 0;
-	u32 timeout;
 	int ret;
 
 	wdt = devm_kzalloc(dev, sizeof(*wdt), GFP_KERNEL);
 	if (!wdt)
 		return -ENOMEM;
 
+	wdt->data = of_device_get_match_data(&pdev->dev);
+
 	wdd = &wdt->wdd;
 	wdd->timeout = WDT_DEFAULT_TIMEOUT;
 	wdd->info = &sama5d4_wdt_info;
@@ -224,15 +283,17 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
 
 	wdt->reg_base = regs;
 
-	irq = irq_of_parse_and_map(dev->of_node, 0);
-	if (!irq)
-		dev_warn(dev, "failed to get IRQ from DT\n");
-
 	ret = of_sama5d4_wdt_init(dev->of_node, wdt);
 	if (ret)
 		return ret;
 
-	if ((wdt->mr & AT91_WDT_WDFIEN) && irq) {
+	irq = irq_of_parse_and_map(dev->of_node, 0);
+	if (!irq) {
+		dev_warn(dev, "failed to get IRQ from DT\n");
+		wdt->need_irq = 0;
+	}
+
+	if (wdt->need_irq) {
 		ret = devm_request_irq(dev, irq, sama5d4_wdt_irq_handler,
 				       IRQF_SHARED | IRQF_IRQPOLL |
 				       IRQF_NO_SUSPEND, pdev->name, pdev);
@@ -244,11 +305,6 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
 
 	watchdog_init_timeout(wdd, wdt_timeout, dev);
 
-	timeout = WDT_SEC2TICKS(wdd->timeout);
-
-	wdt->mr |= AT91_WDT_SET_WDD(WDT_SEC2TICKS(MAX_WDT_TIMEOUT));
-	wdt->mr |= AT91_WDT_SET_WDV(timeout);
-
 	ret = sama5d4_wdt_init(wdt);
 	if (ret)
 		return ret;
@@ -268,8 +324,21 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static struct sama5d4_wdt_data sama5d4_config;
+
+static struct sama5d4_wdt_data sam9x60_config = {
+	.sam9x60_support = 1,
+};
+
 static const struct of_device_id sama5d4_wdt_of_match[] = {
-	{ .compatible = "atmel,sama5d4-wdt", },
+	{
+		.compatible = "atmel,sama5d4-wdt",
+		.data = &sama5d4_config,
+	},
+	{
+		.compatible = "microchip,sam9x60-wdt",
+		.data = &sam9x60_config,
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
