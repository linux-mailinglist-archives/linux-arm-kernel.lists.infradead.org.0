Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0AD18512
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 08:06:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iuGOEr009fKY+ukH67JryDQaIpRl43OOtKKUcyyL+EI=; b=Sh5vFjKTVe9uka
	NVUZ29rQxm+ve3elxBWGspt23HdXybwIol0Bd8DuYoRQQkZKVxh2LxZk4g7Qak9rFfvvwyKuzAdr+
	jDMI2enAmGpN5PKrH0hyfu4BzuE+1hSoXkaMnC+87nqqdzeREvaZZH1698NSrrwPsjIAdqkHW0HyI
	KMK0g2eqFzuudzvAvDO96sQWJKIcn5hwvoQc7QOcBLG0KI5yFPo2D1ugGvliSxORTFAwo+Xp5rbPs
	fw5A9JUEm03G1uIpzxE7SHUtd80cie4+WChzMAWrnAMhebr/1WZjmfIXhwr3+4PYgQhO2HEkMwSbp
	NnIkRWXsKHPouq/BqLSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOcCS-0005m9-Bj; Thu, 09 May 2019 06:06:36 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOcBq-0005lg-5b
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 06:06:00 +0000
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
X-IronPort-AV: E=Sophos;i="5.60,448,1549954800"; d="scan'208";a="29738518"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 08 May 2019 23:05:56 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.106) with Microsoft SMTP Server (TLS)
 id 14.3.352.0; Wed, 8 May 2019 23:05:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+nm1JMbpmGdWJCF3Ve/sJh27Ed620DPL4MeIriGZU+E=;
 b=dzedssQZfo1hUlze28U5oQsLoHFI7p6GmQP+mJ+opha5ov8L6sot2TBpwaC6uDZV4o8nW1Oxzes1qCbCpg7VkmwYfh05vbFj0aRtapXNl0ae66uUFHCAHaPorEjIYZEF3My+q8YRjnHOfpkA/11GYdyv/Rhpm8fFFoYFBC9BHvk=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0027.namprd11.prod.outlook.com (10.164.155.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Thu, 9 May 2019 06:04:51 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e0e3:1d51:9e3e:6dc]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e0e3:1d51:9e3e:6dc%3]) with mapi id 15.20.1856.012; Thu, 9 May 2019
 06:04:51 +0000
From: <Eugen.Hristev@microchip.com>
To: <linux@roeck-us.net>
Subject: Re: [PATCH] watchdog: sama5d4: fix WDD value to be always set to max
Thread-Topic: [PATCH] watchdog: sama5d4: fix WDD value to be always set to max
Thread-Index: AQHVBahu/JHAOFdIPEa7ks2ptdaG2qZhbGKAgADhN4A=
Date: Thu, 9 May 2019 06:04:51 +0000
Message-ID: <5fa08492-a2c1-0ebb-9399-4aa6519c358e@microchip.com>
References: <1557324535-9050-1-git-send-email-eugen.hristev@microchip.com>
 <20190508163405.GB5495@roeck-us.net>
In-Reply-To: <20190508163405.GB5495@roeck-us.net>
Accept-Language: ro-RO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR08CA0120.eurprd08.prod.outlook.com
 (2603:10a6:800:d4::22) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190509090009158
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 475a828b-78d8-4cf9-678e-08d6d4443fcb
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:DM5PR11MB0027; 
x-ms-traffictypediagnostic: DM5PR11MB0027:
x-microsoft-antispam-prvs: <DM5PR11MB002786C7BE93EA91D932E2E2E8330@DM5PR11MB0027.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(136003)(376002)(39860400002)(366004)(199004)(189003)(53936002)(31686004)(6246003)(478600001)(446003)(72206003)(2906002)(76176011)(102836004)(53546011)(73956011)(6506007)(386003)(26005)(6486002)(186003)(68736007)(4326008)(11346002)(5660300002)(66556008)(64756008)(66946007)(66476007)(66446008)(25786009)(6116002)(6512007)(486006)(3846002)(86362001)(14454004)(81156014)(81166006)(6436002)(71190400001)(8676002)(71200400001)(316002)(8936002)(7736002)(31696002)(66066001)(54906003)(6916009)(305945005)(476003)(52116002)(2616005)(99286004)(229853002)(256004)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB0027;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: g3wj3NydAmygsxt9/IOt/Z7kzvCkfLbvQx20pVyJXxj1uV50MrlG0KSqpoCnAJiLp9VlNMekGtpcmPT/w1omxG48idL+mHs93McWIEa5BWa1ahDwRcyXRKahlqDiTEOQSCR/9XArugp+E+E827xoeI1z9HH2AJCaZ+I3OHe3lQMIbhcb281PEU+O3EG/7TYOTjM1FZ8/jxCuFs/AraqYEIQh8cvtIJ/tMctyGdEyv2TBAOQ3SuzDTM0o72/YrjAIqfZ7DtPPUg2e8PX5Lf6WBEhVNAkefX1m0U+JL+zeyWcWhPw7rRtE4nch0zECbmVvO4Z2bpRCXt2q1DnpIyuMhf1KmoiETLg++4e6WnBstANFJzLymm2NOuBcURP1jwrWbO6pq33BuWmjvPRDe3SLKJSpBDeSthuPGsq9rHr1l0s=
Content-ID: <7CBDBF6FD9780E489D1CE63BD08C6BEF@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 475a828b-78d8-4cf9-678e-08d6d4443fcb
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 06:04:51.5715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0027
X-OriginatorOrg: microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_230558_638498_21E7C567 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-watchdog@vger.kernel.org, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 08.05.2019 19:34, Guenter Roeck wrote:
> On Wed, May 08, 2019 at 02:15:03PM +0000, Eugen.Hristev@microchip.com wrote:
>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>
>> WDD value must be always set to max (0xFFF) otherwise the hardware
>> block will reset the board on the first ping of the watchdog.
>>
> Not sure why setting WDD to the same value as WDV would do that,
> but on the other side it looks like setting WDD to anything but
> the maximum doesn't add any value either, so

It's a hardware issue.
Normally, setting a WDD lower would allow the system for a little time 
to print out something, before the inevitable reset happens...
In our case, setting WDD lower than max would not allow a single 
watchdog feed, as the first attempt to write the CR would trigger the reset.
This bug was not obvious because the driver was always setting both WDD 
and WDV to max... until timeout-sec property came up in DT which changes 
this.

Eugen
> 
> Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> 
> Guenter
> 
>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
>> ---
>>   drivers/watchdog/sama5d4_wdt.c | 4 +---
>>   1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/watchdog/sama5d4_wdt.c b/drivers/watchdog/sama5d4_wdt.c
>> index 1e93c1b..d495336 100644
>> --- a/drivers/watchdog/sama5d4_wdt.c
>> +++ b/drivers/watchdog/sama5d4_wdt.c
>> @@ -111,9 +111,7 @@ static int sama5d4_wdt_set_timeout(struct watchdog_device *wdd,
>>   	u32 value = WDT_SEC2TICKS(timeout);
>>   
>>   	wdt->mr &= ~AT91_WDT_WDV;
>> -	wdt->mr &= ~AT91_WDT_WDD;
>>   	wdt->mr |= AT91_WDT_SET_WDV(value);
>> -	wdt->mr |= AT91_WDT_SET_WDD(value);
>>   
>>   	/*
>>   	 * WDDIS has to be 0 when updating WDD/WDV. The datasheet states: When
>> @@ -251,7 +249,7 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
>>   
>>   	timeout = WDT_SEC2TICKS(wdd->timeout);
>>   
>> -	wdt->mr |= AT91_WDT_SET_WDD(timeout);
>> +	wdt->mr |= AT91_WDT_SET_WDD(WDT_SEC2TICKS(MAX_WDT_TIMEOUT));
>>   	wdt->mr |= AT91_WDT_SET_WDV(timeout);
>>   
>>   	ret = sama5d4_wdt_init(wdt);
>> -- 
>> 2.7.4
>>
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
