Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A01FD7F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 09:31:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E7G9+2rQ5vXysF68V/OVhmbCJ18K+aXTNOGM+rq+1zs=; b=Rsz+Uvl/uMTxsL
	2PxXuY7hi1qZu2tKEvLmZB+CBhICmov1NPyZLsx/QlV1X6Mv1G1aiaVjQ/4Z5wAkjBS6rahzTbfOg
	upMNzlqVbh66T0fHCQAZuFKOGO0fJN2NF+c9kvukBRJ4EeXnzi8/7FzMGauQjaZ4vR6fi7XfQeqkR
	uBDrO6ZfHrrpGvujOnUdHq9if+BwLegfU8gpRz/4GKyJhA+zA3wOs88veAnsi72ocF5NoV3bVDwIx
	5YCtNcsnRE5QFFmVaVW+t96mDTGy99TtwBgkAb0PxAmVHPrDlmVb+0sYrE+0w4Sa4wFV2Pua0fZFc
	oz0snHbVWKSebzQV1Pfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVX0X-0003J2-8k; Fri, 15 Nov 2019 08:31:09 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVWzp-0002oh-Gz
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 08:30:27 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: XgNQGMW/MYGuqt4vFx8ArInO9twOeyA062aH5l14Xm0ID6/1clbMJWx2aPmXgY0hNuWqeZIhHq
 VXUSvm//8gK4ujIi426myr529hRUDT+6TIM+Po3LLxden9i3Tye7piPvVhpc7ir3u5HlvivRWx
 AXJu4Nte/WIP/CuQck9tqa826vpiSPIWw83PS7UGh+Ryzv3I/UnXUdvI2TXLg+m1uBOkfIX0Hl
 Hy/gpUJX50MZYZKqTSFuA1ry+P+kvsxRlRjAsp5ElOagiKszQ5zEdgaMq1NfYskiZFk4PqAcTT
 Wg0=
X-IronPort-AV: E=Sophos;i="5.68,307,1569308400"; d="scan'208";a="58548501"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Nov 2019 01:30:20 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 Nov 2019 01:30:16 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 15 Nov 2019 01:30:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sve1R6+BathGZxuY2K0UWnBRxXmF+2HT+K+/FnNiV4+DVoh7CbmTIXezJnSMY4lwmojohoZpAlCvszwAN0yxNaqU4jIAzp5nH3qZKSvk+1YQ+SdImGnKflubDGwEHyRN7RVxlJ09w2QUC8fxu6kwt/WQkTjFCfFs0TTX7CTJ0L5MnppmWndNFcZzc/P0x5Dmi8HwdfUWxW+sIq3gWYWDTj7MfhalDBc/FlBPbQ4Xv7fuJq816cHFcPCMSWzeTsj2/pPPseRB2VSuQfgDKaNiJthpL2U1O81V8LPgeVVNZNZC7jA+KlRXtH+EPuOY43QTk4oUpNdYJ45NzDpjU3wsEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m4AwzKoBcKbCF4ttvH6xIXZgTb1ptM2Vio8Add60AOA=;
 b=kC6rGfWayBAHpUy+j3PwWSRtIMGvDXsv2RM+fQUhNtZbCibzU8vzpVioarAzy51opY7Tne5DJ3vBbo9UDUF4Wp6HvG1l93sPTeJr5VMy7ITyq2B5IqfUQuutn0AoF6NlVHJ/qMj9MuHqGYZY+NCZOrB+OnrIAbsytpibvYf4X9Ztjs65mUh1mvqTqxm7CNS5glWBz9db29x/Rcd1N+TcJkCaaR1qf5NDen994xGAPdgtbzJFPXAPNQj5sy5qmkrQojbSHJPKdeNh6XfoIavELd5uWpm+T6EVZR89fHxVWn+giwSrggqdRqrHQru0AtefLzeltD/uGJa89SWJJI67rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m4AwzKoBcKbCF4ttvH6xIXZgTb1ptM2Vio8Add60AOA=;
 b=t5en0VS9p3BXVeemvvN56Sn49Mac9B13V05/yAUD1ITEcsQuoYq74M+bxbLeV2fbnNT7IX8Mks2xTHBEeuxmft78QDd4l4XWo03P/VLA9yipiJCeYTAmFP1cwVYZURDrFmGFeotnnJhfGlS61ccfIqvrIHUbrRtRVpOLGdIwDV4=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0059.namprd11.prod.outlook.com (10.164.155.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Fri, 15 Nov 2019 08:30:13 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8%4]) with mapi id 15.20.2451.029; Fri, 15 Nov 2019
 08:30:13 +0000
From: <Eugen.Hristev@microchip.com>
To: <wim@linux-watchdog.org>, <linux@roeck-us.net>, <robh+dt@kernel.org>,
 <alexandre.belloni@bootlin.com>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 1/3] watchdog: sama5d4_wdt: cleanup the bit definitions
Thread-Topic: [PATCH v4 1/3] watchdog: sama5d4_wdt: cleanup the bit definitions
Thread-Index: AQHVm47mrdt0TEc0UU6bOrM4Tw2r3w==
Date: Fri, 15 Nov 2019 08:30:13 +0000
Message-ID: <1573806579-7981-1-git-send-email-eugen.hristev@microchip.com>
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
x-ms-office365-filtering-correlation-id: 528c7047-88ce-4c28-c1bd-08d769a608d3
x-ms-traffictypediagnostic: DM5PR11MB0059:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB0059AC0BF222265C1E075FD3E8700@DM5PR11MB0059.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 02229A4115
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(366004)(39860400002)(136003)(376002)(189003)(199004)(2906002)(64756008)(4326008)(2201001)(107886003)(36756003)(25786009)(6506007)(6436002)(186003)(386003)(99286004)(476003)(26005)(7736002)(102836004)(316002)(486006)(305945005)(86362001)(110136005)(14454004)(2616005)(54906003)(256004)(8936002)(66446008)(3846002)(52116002)(66476007)(478600001)(6512007)(6486002)(14444005)(5660300002)(6116002)(2501003)(66066001)(66556008)(50226002)(71200400001)(71190400001)(66946007)(81166006)(8676002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB0059;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xH9ZvU4v5KgxAYgwYA5fXUJb/Eq1C2Tt5rKKAkaJXSdxdhY4/TAI9hfrGSHRzv336aCpSpxpwz8z+if6KypHapA0fACy4OY9bDvW6kX27HSWO0MXxaeBNGnqfCp7/KHRMLIiP+VP33ii4f+L/8zoW2IIvb7abALyjj7iY/HZ/GaDOtgi/0GLVzJtCobib4Sjn+7xBgOqbmJaaBuM8gyGym4tiHef1l5EFLP6RyiBsDuus/2kBH3PJwLebxD/Ky/LsNg1mq+A7TdMpl7mEm+n8HG18FxcfMlGQszgIlEWDSBouAEHzCEriG/jfHJzjA4WrMahZyVfDpLB8BLqxliwFWNLwUrTZ4yVrCofDV8vkhOz6enMmreVWui8JXM/KC0MY2FYTsUo7K/flTp/RRFY/EZa0rddkPe2yP+Od1HaESynjuI9/oamOwrtBHAlM/Mj
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 528c7047-88ce-4c28-c1bd-08d769a608d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2019 08:30:13.3475 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eB3oA9STSdWEPRUmB6ZCA/W97bQ4TNbht8xn2t+NMmufIcczWAJ8l3cDH1SDl5R9nmWczEu9reZR8FNpBnq9gJNQF5b2jZfY7Nupj/v2HSU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_003025_571069_DFD992DA 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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

Cleanup the macro definitions to use BIT and align with two spaces.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
Changes in v4:
- added UL suffix to value macros to avoid compile warnings
- modified file header to include new copyright and datasheet
- include linux/bits.h

Changes in v3:
- new patch as requested from review on ML

 drivers/watchdog/at91sam9_wdt.h | 34 +++++++++++++++++++---------------
 1 file changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/watchdog/at91sam9_wdt.h b/drivers/watchdog/at91sam9_wdt.h
index 390941c..abfe34d 100644
--- a/drivers/watchdog/at91sam9_wdt.h
+++ b/drivers/watchdog/at91sam9_wdt.h
@@ -4,33 +4,37 @@
  *
  * Copyright (C) 2007 Andrew Victor
  * Copyright (C) 2007 Atmel Corporation.
+ * Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries
  *
  * Watchdog Timer (WDT) - System peripherals regsters.
  * Based on AT91SAM9261 datasheet revision D.
+ * Based on SAM9X60 datasheet.
  *
  */
 
 #ifndef AT91_WDT_H
 #define AT91_WDT_H
 
+#include <linux/bits.h>
+
 #define AT91_WDT_CR		0x00			/* Watchdog Control Register */
-#define		AT91_WDT_WDRSTT		(1    << 0)		/* Restart */
-#define		AT91_WDT_KEY		(0xa5 << 24)		/* KEY Password */
+#define  AT91_WDT_WDRSTT	BIT(0)			/* Restart */
+#define  AT91_WDT_KEY		(0xa5UL << 24)		/* KEY Password */
 
 #define AT91_WDT_MR		0x04			/* Watchdog Mode Register */
-#define		AT91_WDT_WDV		(0xfff << 0)		/* Counter Value */
-#define			AT91_WDT_SET_WDV(x)	((x) & AT91_WDT_WDV)
-#define		AT91_WDT_WDFIEN		(1     << 12)		/* Fault Interrupt Enable */
-#define		AT91_WDT_WDRSTEN	(1     << 13)		/* Reset Processor */
-#define		AT91_WDT_WDRPROC	(1     << 14)		/* Timer Restart */
-#define		AT91_WDT_WDDIS		(1     << 15)		/* Watchdog Disable */
-#define		AT91_WDT_WDD		(0xfff << 16)		/* Delta Value */
-#define			AT91_WDT_SET_WDD(x)	(((x) << 16) & AT91_WDT_WDD)
-#define		AT91_WDT_WDDBGHLT	(1     << 28)		/* Debug Halt */
-#define		AT91_WDT_WDIDLEHLT	(1     << 29)		/* Idle Halt */
+#define  AT91_WDT_WDV		(0xfffUL << 0)		/* Counter Value */
+#define  AT91_WDT_SET_WDV(x)	((x) & AT91_WDT_WDV)
+#define  AT91_WDT_WDFIEN	BIT(12)		/* Fault Interrupt Enable */
+#define  AT91_WDT_WDRSTEN	BIT(13)		/* Reset Processor */
+#define  AT91_WDT_WDRPROC	BIT(14)		/* Timer Restart */
+#define  AT91_WDT_WDDIS		BIT(15)		/* Watchdog Disable */
+#define  AT91_WDT_WDD		(0xfffUL << 16)		/* Delta Value */
+#define  AT91_WDT_SET_WDD(x)	(((x) << 16) & AT91_WDT_WDD)
+#define  AT91_WDT_WDDBGHLT	BIT(28)		/* Debug Halt */
+#define  AT91_WDT_WDIDLEHLT	BIT(29)		/* Idle Halt */
 
-#define AT91_WDT_SR		0x08			/* Watchdog Status Register */
-#define		AT91_WDT_WDUNF		(1 << 0)		/* Watchdog Underflow */
-#define		AT91_WDT_WDERR		(1 << 1)		/* Watchdog Error */
+#define AT91_WDT_SR		0x08		/* Watchdog Status Register */
+#define  AT91_WDT_WDUNF		BIT(0)		/* Watchdog Underflow */
+#define  AT91_WDT_WDERR		BIT(1)		/* Watchdog Error */
 
 #endif
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
