Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A72CF2E7F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 13:51:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5JKUc5iY7MnGXq5wtTdJYrzjCLsQNSN10xK51bm4+aA=; b=nWXrdNrz7V6woL
	E2sp5KejEjRinmGsFlR6AFYjAVLrLdPIsk9TtlzTImLWPU5QZ0EQAJlw2gqdqLOXha0grvMj68CTJ
	/z6YDSfIk0uaaEjdxWJtwgkc+Us9qA6Z+usF8a/o0GgwOwqlVYMF25LV3ObBBoeDB7L+7jaj4She0
	Y8T1VuE+SKuQth4W5jYQyw7J6eGBnUAfFVi1W0471L5mFLVU+F7JCZdrICAuPB6h6r+rkP0dU6wIL
	ozpj+/vFjjjPNCN8HLl8AXFCA4YovsI6rzEv6as9GTHMOeJCh7mOFObg7Uphs8H1qM3WdCWtatEqf
	x4j+13Fxjhy6TaCpvkHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iShG6-0006ut-S2; Thu, 07 Nov 2019 12:51:30 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iShFw-0006tr-9a
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 12:51:22 +0000
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
IronPort-SDR: /n0qrCz4xafRieHbuYbzq7swH/AkMQ84pfDn4yxoZoLza+1LpIBuQKwc05YhHuQQUnb0dSgFhD
 Rj5qE3kqaS6PX+xwz8w3NKDko43X5Cb+335CaP8AYkzp8DmX7kKNp460nOBwdH8dEUF0UjGQFd
 CtgWC106QcpiGvWkmU6szcQ02AIQBWDsXM6OJZgOgLX9tdBvH9dyfdtGJ9OGn7czptOGO39YjD
 9kOzal1prOATq+69WKM/u5zCV4YrhONs1rMDS+NvnQtzlw+5F+W+VfmTWONA4aJXNsy69O/Ljh
 8AA=
X-IronPort-AV: E=Sophos;i="5.68,278,1569308400"; d="scan'208";a="57393785"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Nov 2019 05:51:16 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 Nov 2019 05:51:16 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 7 Nov 2019 05:51:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kLhN264rEpNZK258izqNfbE6nfDAk6pHLeniUcEcK4mdxyWBwT+CfMMXtzxOisr/16TaSMrF2vorBRKRlhTPetG2ePeUrwEEnkj2VtoUZU2KeJJg59q0SP0thdJVTv7VhGsitsOEjKINDq13eLi0hRqpg7JZOUChhtSBzqF/vEBSiurEtvuNln4v+v4S0ji9zOCqQ+2jHqeTLUFNlBVOSfFbjXc+mvQkzr7KHiOh3+fQ1hdR7qk+KS27jA/bnOMFl5KYpp369InvUAoGf5xdi0FKV9U8Kfep+0qdOSeCQYPAm9m9sYZWmfI9XpsTnmR0TYtGvuuD8jPeBofs9RoL5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tFrRdD1/R0Wefr9SwtS70mNQP1aXDYysDXlOk7By3Uw=;
 b=jgYewyBGBrA0xGmV9SttnkEi1mi76DYgG0x1Abe/O+GEArbjeMI5DwcoBX9a+GYthd4wS1o6honQsENl9GBrPz2jPw+C7ABpSrJDED317/q/EW94VKSzSF55WlxhGhJ+QJJADxE8hzQ/5TBgJ4hroOHhMGIp3PeIDw1Fi9I4+d7xVvGyLWTSeCd5lJVU3PlrQdIvXQGkheAo5++A1kKF5McStIVI31UavunhrqN70BZSak+oHC4L+2pdpl+K+D1bPVzFic+aOr3saO7Hb8wx9C0T4e8yLSBp6vytjk0h8OskSK+ibGyn3vk3u8mSqUPjzH3VPA5mBSInfJoSByzNUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tFrRdD1/R0Wefr9SwtS70mNQP1aXDYysDXlOk7By3Uw=;
 b=TH1suZxd71XzfHGNxsOECnk6MjLszPOgdk1cY5EleroZDrS94gcxHsqDEQQk8m9yP5mmzbSM74hNT2v2zez3laj9vv9GkUQGPZezklnOw0s5oI+byvHtbH9zCNoK4t7rRolQpYVqzVX5D81dtE+tMSzuLrAT7Ix+YyXUbpYDYOc=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1388.namprd11.prod.outlook.com (10.168.107.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Thu, 7 Nov 2019 12:51:15 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8%4]) with mapi id 15.20.2408.028; Thu, 7 Nov 2019
 12:51:15 +0000
From: <Eugen.Hristev@microchip.com>
To: <linux@roeck-us.net>
Subject: Re: [PATCH v2 2/2] watchdog: sama5d4_wdt: addition of sam9x60
 compatible watchdog
Thread-Topic: [PATCH v2 2/2] watchdog: sama5d4_wdt: addition of sam9x60
 compatible watchdog
Thread-Index: AQHVh+/l2gK286N5pUWI+AtpzaiEg6dxqaQAgA4aiYA=
Date: Thu, 7 Nov 2019 12:51:15 +0000
Message-ID: <28c6b394-ae88-f913-312e-6b38be1dc5a8@microchip.com>
References: <1571648890-15140-1-git-send-email-eugen.hristev@microchip.com>
 <1571648890-15140-2-git-send-email-eugen.hristev@microchip.com>
 <20191029132831.GA5643@roeck-us.net>
In-Reply-To: <20191029132831.GA5643@roeck-us.net>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR1PR01CA0032.eurprd01.prod.exchangelabs.com
 (2603:10a6:102::45) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191107145109252
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 15ce9a58-e627-4ba8-1ccf-08d763812cd9
x-ms-traffictypediagnostic: DM5PR11MB1388:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB138854C2BBE8E7A1A1B3BC05E8780@DM5PR11MB1388.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 0214EB3F68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(366004)(39860400002)(376002)(346002)(199004)(189003)(52116002)(6246003)(53546011)(6506007)(76176011)(386003)(66066001)(6116002)(102836004)(3846002)(316002)(6512007)(486006)(30864003)(81166006)(81156014)(476003)(5660300002)(86362001)(229853002)(25786009)(26005)(99286004)(31696002)(71200400001)(6436002)(186003)(11346002)(446003)(6916009)(4326008)(66946007)(54906003)(36756003)(6486002)(66556008)(256004)(305945005)(2906002)(8936002)(31686004)(64756008)(66476007)(7736002)(2616005)(14444005)(66446008)(14454004)(71190400001)(8676002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1388;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WrBNUrxoQuxGTSNm+8ztFG8RlBRUn3G2ZnSTpstVplg69tfdYw4/odqIFhH6+50LUT43EYgqchgyZIhoG9WNgl2vpNRHQZf7osU5YbRZtRXo4qZTi9W+D7ILZV8WdNoIhWZIP1UPEsTDYps+Tj/96nY+I+666r01YAwP0VmTx8sUOYYs2fahd1LfeaFSqag250+NcQS93LJ6vxHHTU6XiRSHhWFEoA6XCIUP6mzMxOe9oy+clsrVERo3PusZMLf90F+/hkPKAHwCmELpQZbPAxfPY+dY81d7A/pFwZ+SnQOP8VKFzuYZtqSqDldr4Mkx1U7Qiq3haPgxXC8Z1BtyP8vbwiRN6yScqHSbGbn1Tk47EiItpqIWYcRCD+7DcnP2t2IgbJub851CxWB58KTUTLG0/AwKxY6W0+4L21J7q3I4SA5jFiFWuaZC/H5WEAnn
Content-ID: <2B321725AF48D541885DE06E39F709BD@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 15ce9a58-e627-4ba8-1ccf-08d763812cd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2019 12:51:15.2091 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: imJouWvK5Q+Rrxi4JZ2hnlyBwHq//SpafPYk5TNY/i66V6JEhrdLvzriuGlPoRMcLTbg8FjaUv+BWH8werCwyF85TnSmkI+PdL7RWtVLda8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1388
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_045120_388228_4AE7951E 
X-CRM114-Status: GOOD (  17.27  )
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 29.10.2019 15:28, Guenter Roeck wrote:

> 
> On Mon, Oct 21, 2019 at 09:14:09AM +0000, Eugen.Hristev@microchip.com wrote:
>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>
>> Add support for SAM9X60 WDT into sama5d4_wdt.
>> This means that this driver will have a platform data that will
>> hold differences.
>> Added definitions of different bits.
>> The ops functions will differentiate between the two hardware blocks.
>>
>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
>> ---
>>
>> Hello,
>>
>> This is a rework of the separate sam9x60 watchdog driver into a single driver
>> that supports both hardware blocks (sam9x60 and sama5d4)
>> This was done as suggested on the original patches on the mailing list.
>>
>> Thanks,
>> Eugen
>>
>>   drivers/watchdog/at91sam9_wdt.h |  14 +++++
>>   drivers/watchdog/sama5d4_wdt.c  | 127 +++++++++++++++++++++++++++++++---------
>>   2 files changed, 112 insertions(+), 29 deletions(-)
>>
>> diff --git a/drivers/watchdog/at91sam9_wdt.h b/drivers/watchdog/at91sam9_wdt.h
>> index 390941c..7a053fd 100644
>> --- a/drivers/watchdog/at91sam9_wdt.h
>> +++ b/drivers/watchdog/at91sam9_wdt.h
>> @@ -20,7 +20,10 @@
>>   #define AT91_WDT_MR		0x04			/* Watchdog Mode Register */
>>   #define		AT91_WDT_WDV		(0xfff << 0)		/* Counter Value */
>>   #define			AT91_WDT_SET_WDV(x)	((x) & AT91_WDT_WDV)
>> +#define		AT91_SAM9X60_PERIODRST	BIT(4)		/* Period Reset */
>> +#define		AT91_SAM9X60_RPTHRST	BIT(5)		/* Minimum Restart Period */
>>   #define		AT91_WDT_WDFIEN		(1     << 12)		/* Fault Interrupt Enable */
>> +#define		AT91_SAM9X60_WDDIS		BIT(12)		/* Disable */
>>   #define		AT91_WDT_WDRSTEN	(1     << 13)		/* Reset Processor */
>>   #define		AT91_WDT_WDRPROC	(1     << 14)		/* Timer Restart */
>>   #define		AT91_WDT_WDDIS		(1     << 15)		/* Watchdog Disable */
>> @@ -33,4 +36,15 @@
>>   #define		AT91_WDT_WDUNF		(1 << 0)		/* Watchdog Underflow */
>>   #define		AT91_WDT_WDERR		(1 << 1)		/* Watchdog Error */
>>   
>> +#define AT91_SAM9X60_VR		0x08			/* Watchdog Timer Value Register */
>> +
>> +#define AT91_SAM9X60_WLR		0x0c
>> +#define		AT91_SAM9X60_COUNTER	(0xfff << 0)		/* Watchdog Period Value */
>> +#define		AT91_SAM9X60_SET_COUNTER(x)	((x) & AT91_SAM9X60_COUNTER)
>> +
>> +#define AT91_SAM9X60_IER		0x14			/* Interrupt Enable Register */
>> +#define		AT91_SAM9X60_PERINT		BIT(0)		/* Period Interrupt Enable */
>> +#define AT91_SAM9X60_IDR		0x18			/* Interrupt Disable Register */
>> +#define AT91_SAM9X60_ISR		0x1c			/* Interrupt Status Register */
>> +
> 
> Those tabs are getting messy, and the mix of BIT() and shift is messy too.
> Mind cleaning it up a bit ? Especially, two tabs after #define doesn't really
> add value (use two spaces), and use BIT() throughout or not at all.
> 
>>   #endif
>> diff --git a/drivers/watchdog/sama5d4_wdt.c b/drivers/watchdog/sama5d4_wdt.c
>> index d193a60..b92afd7 100644
>> --- a/drivers/watchdog/sama5d4_wdt.c
>> +++ b/drivers/watchdog/sama5d4_wdt.c
>> @@ -2,7 +2,7 @@
>>   /*
>>    * Driver for Atmel SAMA5D4 Watchdog Timer
>>    *
>> - * Copyright (C) 2015 Atmel Corporation
>> + * Copyright (C) 2015-2019 Microchip Technology Inc. and its subsidiaries
>>    */
>>   
>>   #include <linux/delay.h>
>> @@ -11,6 +11,7 @@
>>   #include <linux/kernel.h>
>>   #include <linux/module.h>
>>   #include <linux/of.h>
>> +#include <linux/of_device.h>
>>   #include <linux/of_irq.h>
>>   #include <linux/platform_device.h>
>>   #include <linux/reboot.h>
>> @@ -25,11 +26,18 @@
>>   
>>   #define WDT_SEC2TICKS(s)	((s) ? (((s) << 8) - 1) : 0)
>>   
>> +struct sama5d4_wdt_data {
>> +	const unsigned int		sam9x60_support;
>> +};
>> +
>>   struct sama5d4_wdt {
>> -	struct watchdog_device	wdd;
>> -	void __iomem		*reg_base;
>> -	u32			mr;
>> -	unsigned long		last_ping;
>> +	struct watchdog_device		wdd;
>> +	const struct sama5d4_wdt_data	*data;
>> +	void __iomem			*reg_base;
>> +	u32				mr;
>> +	u32				ir;
>> +	unsigned long			last_ping;
>> +	unsigned int			need_irq:1;
> 
> This can be a bool. Making it a bit just adds complexity to the code.
> 
>>   };
>>   
>>   static int wdt_timeout;
>> @@ -78,7 +86,12 @@ static int sama5d4_wdt_start(struct watchdog_device *wdd)
>>   {
>>   	struct sama5d4_wdt *wdt = watchdog_get_drvdata(wdd);
>>   
>> -	wdt->mr &= ~AT91_WDT_WDDIS;
>> +	if (wdt->data->sam9x60_support) {
>> +		writel_relaxed(wdt->ir, wdt->reg_base + AT91_SAM9X60_IER);
>> +		wdt->mr &= ~AT91_SAM9X60_WDDIS;
>> +	} else {
>> +		wdt->mr &= ~AT91_WDT_WDDIS;
>> +	}
>>   	wdt_write(wdt, AT91_WDT_MR, wdt->mr);
>>   
>>   	return 0;
>> @@ -88,7 +101,12 @@ static int sama5d4_wdt_stop(struct watchdog_device *wdd)
>>   {
>>   	struct sama5d4_wdt *wdt = watchdog_get_drvdata(wdd);
>>   
>> -	wdt->mr |= AT91_WDT_WDDIS;
>> +	if (wdt->data->sam9x60_support) {
>> +		writel_relaxed(wdt->ir, wdt->reg_base + AT91_SAM9X60_IDR);
>> +		wdt->mr |= AT91_SAM9X60_WDDIS;
>> +	} else {
>> +		wdt->mr |= AT91_WDT_WDDIS;
>> +	}
>>   	wdt_write(wdt, AT91_WDT_MR, wdt->mr);
>>   
>>   	return 0;
>> @@ -109,6 +127,14 @@ static int sama5d4_wdt_set_timeout(struct watchdog_device *wdd,
>>   	struct sama5d4_wdt *wdt = watchdog_get_drvdata(wdd);
>>   	u32 value = WDT_SEC2TICKS(timeout);
>>   
>> +	if (wdt->data->sam9x60_support) {
>> +		wdt_write(wdt, AT91_SAM9X60_WLR,
>> +			  AT91_SAM9X60_SET_COUNTER(value));
>> +
>> +		wdd->timeout = timeout;
>> +		return 0;
>> +	}
>> +
>>   	wdt->mr &= ~AT91_WDT_WDV;
>>   	wdt->mr |= AT91_WDT_SET_WDV(value);
>>   
>> @@ -143,8 +169,14 @@ static const struct watchdog_ops sama5d4_wdt_ops = {
>>   static irqreturn_t sama5d4_wdt_irq_handler(int irq, void *dev_id)
>>   {
>>   	struct sama5d4_wdt *wdt = platform_get_drvdata(dev_id);
>> +	u32 reg;
>>   
>> -	if (wdt_read(wdt, AT91_WDT_SR)) {
>> +	if (wdt->data->sam9x60_support)
>> +		reg = wdt_read(wdt, AT91_SAM9X60_ISR);
>> +	else
>> +		reg = wdt_read(wdt, AT91_WDT_SR);
>> +
>> +	if (reg) {
>>   		pr_crit("Atmel Watchdog Software Reset\n");
>>   		emergency_restart();
>>   		pr_crit("Reboot didn't succeed\n");
>> @@ -157,13 +189,14 @@ static int of_sama5d4_wdt_init(struct device_node *np, struct sama5d4_wdt *wdt)
>>   {
>>   	const char *tmp;
>>   
>> -	wdt->mr = AT91_WDT_WDDIS;
>> +	if (wdt->data->sam9x60_support)
>> +		wdt->mr = AT91_SAM9X60_WDDIS;
>> +	else
>> +		wdt->mr = AT91_WDT_WDDIS;
>>   
>>   	if (!of_property_read_string(np, "atmel,watchdog-type", &tmp) &&
>>   	    !strcmp(tmp, "software"))
>> -		wdt->mr |= AT91_WDT_WDFIEN;
>> -	else
>> -		wdt->mr |= AT91_WDT_WDRSTEN;
>> +		wdt->need_irq = 1;
>>   
>>   	if (of_property_read_bool(np, "atmel,idle-halt"))
>>   		wdt->mr |= AT91_WDT_WDIDLEHLT;
>> @@ -176,21 +209,46 @@ static int of_sama5d4_wdt_init(struct device_node *np, struct sama5d4_wdt *wdt)
>>   
>>   static int sama5d4_wdt_init(struct sama5d4_wdt *wdt)
>>   {
>> -	u32 reg;
>> +	u32 reg, val;
>> +
>> +	val = WDT_SEC2TICKS(WDT_DEFAULT_TIMEOUT);
>>   	/*
>>   	 * When booting and resuming, the bootloader may have changed the
>>   	 * watchdog configuration.
>>   	 * If the watchdog is already running, we can safely update it.
>>   	 * Else, we have to disable it properly.
>>   	 */
>> -	if (wdt_enabled) {
>> -		wdt_write_nosleep(wdt, AT91_WDT_MR, wdt->mr);
>> -	} else {
>> +	if (!wdt_enabled) {
>>   		reg = wdt_read(wdt, AT91_WDT_MR);
>> -		if (!(reg & AT91_WDT_WDDIS))
>> +		if (wdt->data->sam9x60_support && (!(reg & AT91_SAM9X60_WDDIS)))
>> +			wdt_write_nosleep(wdt, AT91_WDT_MR,
>> +					  reg | AT91_SAM9X60_WDDIS);
>> +		else if (!wdt->data->sam9x60_support &&
>> +			 (!(reg & AT91_WDT_WDDIS)))
>>   			wdt_write_nosleep(wdt, AT91_WDT_MR,
>>   					  reg | AT91_WDT_WDDIS);
>>   	}
>> +
>> +	if (wdt->data->sam9x60_support) {
>> +		if (wdt->need_irq)
>> +			wdt->ir = AT91_SAM9X60_PERINT;
>> +		else
>> +			wdt->mr |= AT91_SAM9X60_PERIODRST;
>> +
>> +		wdt_write(wdt, AT91_SAM9X60_IER, wdt->ir);
>> +		wdt_write(wdt, AT91_SAM9X60_WLR, AT91_SAM9X60_SET_COUNTER(val));
>> +	} else {
>> +		wdt->mr |= AT91_WDT_SET_WDD(WDT_SEC2TICKS(MAX_WDT_TIMEOUT));
>> +		wdt->mr |= AT91_WDT_SET_WDV(val);
>> +
>> +		if (wdt->need_irq)
>> +			wdt->mr |= AT91_WDT_WDFIEN;
>> +		else
>> +			wdt->mr |= AT91_WDT_WDRSTEN;
>> +	}
>> +
>> +	wdt_write_nosleep(wdt, AT91_WDT_MR, wdt->mr);
>> +
>>   	return 0;
>>   }
>>   
>> @@ -201,13 +259,14 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
>>   	struct sama5d4_wdt *wdt;
>>   	void __iomem *regs;
>>   	u32 irq = 0;
>> -	u32 timeout;
>>   	int ret;
>>   
>>   	wdt = devm_kzalloc(dev, sizeof(*wdt), GFP_KERNEL);
>>   	if (!wdt)
>>   		return -ENOMEM;
>>   
>> +	wdt->data = of_device_get_match_data(&pdev->dev);
>> +
>>   	wdd = &wdt->wdd;
>>   	wdd->timeout = WDT_DEFAULT_TIMEOUT;
>>   	wdd->info = &sama5d4_wdt_info;
>> @@ -224,15 +283,17 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
>>   
>>   	wdt->reg_base = regs;
>>   
>> -	irq = irq_of_parse_and_map(dev->of_node, 0);
>> -	if (!irq)
>> -		dev_warn(dev, "failed to get IRQ from DT\n");
>> -
>>   	ret = of_sama5d4_wdt_init(dev->of_node, wdt);
>>   	if (ret)
>>   		return ret;
>>   
>> -	if ((wdt->mr & AT91_WDT_WDFIEN) && irq) {
>> +	irq = irq_of_parse_and_map(dev->of_node, 0);
>> +	if (!irq) {
>> +		dev_warn(dev, "failed to get IRQ from DT\n");
>> +		wdt->need_irq = 0;
> 
> Does it make sense to ignore that ?

Hi Guenter,

Can you detail what exactly is ignored ?

> 
>> +	}
>> +
>> +	if (wdt->need_irq) {
>>   		ret = devm_request_irq(dev, irq, sama5d4_wdt_irq_handler,
>>   				       IRQF_SHARED | IRQF_IRQPOLL |
>>   				       IRQF_NO_SUSPEND, pdev->name, pdev);
>> @@ -244,11 +305,6 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
>>   
>>   	watchdog_init_timeout(wdd, wdt_timeout, dev);
>>   
>> -	timeout = WDT_SEC2TICKS(wdd->timeout);
>> -
>> -	wdt->mr |= AT91_WDT_SET_WDD(WDT_SEC2TICKS(MAX_WDT_TIMEOUT));
>> -	wdt->mr |= AT91_WDT_SET_WDV(timeout);
>> -
>>   	ret = sama5d4_wdt_init(wdt);
>>   	if (ret)
>>   		return ret;
>> @@ -268,8 +324,21 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
>>   	return 0;
>>   }
>>   
>> +static struct sama5d4_wdt_data sama5d4_config;
>> +
>> +static struct sama5d4_wdt_data sam9x60_config = {
>> +	.sam9x60_support = 1,
>> +};
> 
> Unless there is reason to believe that there will be other
> configuration data, please just assign the flag value directly
> to .data and add a variable to struct sama5d4_wdt to access it.
> Please make that variable a bool.

There will be more configuration data for future products, but not at 
this moment. Do the change or keep it this way ?

I will do the other changes as requested.
Thanks for reviewing,

Eugen
> 
>> +
>>   static const struct of_device_id sama5d4_wdt_of_match[] = {
>> -	{ .compatible = "atmel,sama5d4-wdt", },
>> +	{
>> +		.compatible = "atmel,sama5d4-wdt",
>> +		.data = &sama5d4_config,
>> +	},
>> +	{
>> +		.compatible = "microchip,sam9x60-wdt",
>> +		.data = &sam9x60_config,
>> +	},
>>   	{ }
>>   };
>>   MODULE_DEVICE_TABLE(of, sama5d4_wdt_of_match);
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
