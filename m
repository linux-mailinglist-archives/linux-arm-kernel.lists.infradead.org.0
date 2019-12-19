Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6E3125D6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 10:15:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wytvVOzP7YyMBdmLIsinvlTXqLJgXiA0wUmHxnXq41o=; b=c0ZsTkgoWFplue
	VTnW/ptScDdRi0BealfStTAnHkETIKI94Dy4dFO/MvfzZjjozrAcf4hWAj61HFwWC/DzX1749exsy
	okmDx8bCsSzDXEobnre0yNCcRq/fUbtcKYNOwjgpLHheaw+iReCKM3SN0+Gw3LlIYfIATky1OmZgB
	0TkXw9uu6Q3bYbQ04PJeTvy2bJN2g0Cn7jbN2PvVzlCXqVxOjHhmTtS1rtuH7XC1opBvNuH/xSmUg
	/knx0zA0n2MSSF767d3zVUhxCTJbdyiylFVCPWhtBywp3GD6umQLP0YvGnO4W10ztW2IZuFSWc69j
	cT+Ou+GiksLRNlZdyJGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihru1-0005uW-K6; Thu, 19 Dec 2019 09:15:25 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihrtp-0005tD-4Z
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 09:15:15 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
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
IronPort-SDR: F/FQchJLdDY1R2vAdyYFxU6MCdwmtS3eQTq4wFFNSZyCmvop9landZkK6hfmY5FG0LCAgo8EbM
 o059HnC4Yq8jgBfpAYhxlXv2H6Kfy4KW1NLA+DbCcuTB/Y5x7Byp4yyQHslqFQ4bXqsEgB9FDv
 UxtoeguWGSlO2yuu3KygAwUDU/kyvEat2qxwwNoTFGnVbtYF5PO7w/E2NOW1Y2lAoXY0KKd2wQ
 sQxgN3/k+wcY/u4VvnkvD+GZ5Fp00SZvJ5h5idWAkvXdzOHBBNFnk9vTc0hc1H3U91Dz8TsjoM
 gDQ=
X-IronPort-AV: E=Sophos;i="5.69,331,1571727600"; d="scan'208";a="59010997"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Dec 2019 02:15:09 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Dec 2019 02:15:03 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 19 Dec 2019 02:15:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ScqlVI2JfuXSEWH9r+kpDum4sqr5XzrkYza24C+6N+gltvLciCOFMXnI0QIcEdhACYu4xgvoBztHD9HS9zDKaMa7lyqXV35BY6k3iOxGjYKiGZwR9oeP/gfZC6SVhgowpONOGs3a2M6Q5IOR4cas3GjLAtqbnb6gFuuM3vgf42+uLQaMYn8ctLbyAIXUib1SJrskvZlu+LxTPg3JtURX18D4CCOzJ/Wg4YJMsOVMKxjvcEfvqbhLxwTUzAg8wcmAgjiE3y3UrCcLUwbjpv0wU3S/1WzGFR2JL1LhMp39OiRIXm8XSjN74rQT+sS0DU0MQuivOwaOedxWfBqneezGig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mTmaT4Dbw9ErdnHi+2Fo1iCrO78QIOIPp/13Yms+YSI=;
 b=nP1/qV/ppzyjBnsU13VRBvs1AP2duOUqTs0BlFFe7YtBWkVar/aTtlWXEiNRyyYAZ6vjq7kaU2+DRAJjjZDd1g8H2XhxVFHgryVz0j5KKVkaYqX3oBprja9cl1nX4rm7hWXbPexhEMM653XkeUdpTRA7RZmPe9x6WWwjwRQ8QgMGySe1gMu2AH/4Kc1pbKUsarTRn+L/Eg4sdg9CcUIesdho1qwA3jBc79c4AUgeiAnwHO6HvnN4PFXRlXzFbQ8oMpWfuAvc5v4hDG4FBafl4UHjcL4WsC+YF8OrefTiHnacZkhYxayWxUniHjhADL0A0zGbF1EaG9mhj6I+6Z2gzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mTmaT4Dbw9ErdnHi+2Fo1iCrO78QIOIPp/13Yms+YSI=;
 b=WzStBP9cILMTUYo7/wAe2tRJNZDGsDBTD6IICIXZnsh1Cw+o+gy1gMmm4g+UlRorVZenZ6oyMzc3D/ZTgeTh/hKu/PNNboqL1fWk22YInc2PVbqC+mfJfuzLGPbKdR2MSOu4BgJcSJ9bzpy1omDEvUuCFKRonQAN1wzu6PrdCpk=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1803.namprd11.prod.outlook.com (10.175.89.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Thu, 19 Dec 2019 09:15:02 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2559.012; Thu, 19 Dec
 2019 09:15:02 +0000
From: <Eugen.Hristev@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 04/10] rtc: at91rm9200: use of_platform_populate as return
 value
Thread-Topic: [PATCH 04/10] rtc: at91rm9200: use of_platform_populate as
 return value
Thread-Index: AQHVtb+OEQqavda3i02bVS64GBIv7afAGSQAgAACToCAAAHPgIABEL4A
Date: Thu, 19 Dec 2019 09:15:02 +0000
Message-ID: <91cc67e1-7e14-f7b9-da77-b16d9e158f20@microchip.com>
References: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
 <1576686157-11939-5-git-send-email-eugen.hristev@microchip.com>
 <20191218164348.GN695889@piout.net>
 <04264cb0-61a9-aba3-82ad-e7d12fd8441e@microchip.com>
 <20191218165831.GO695889@piout.net>
In-Reply-To: <20191218165831.GO695889@piout.net>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6ce2a8df-4e50-44da-04f8-08d78463ede4
x-ms-traffictypediagnostic: DM5PR11MB1803:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB180300021EF177867108C72AE8520@DM5PR11MB1803.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0256C18696
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(346002)(376002)(136003)(396003)(199004)(189003)(316002)(2616005)(66556008)(53546011)(966005)(71200400001)(107886003)(66476007)(8936002)(26005)(2906002)(8676002)(6506007)(66446008)(64756008)(6486002)(81166006)(66946007)(76116006)(81156014)(5660300002)(31696002)(478600001)(54906003)(6916009)(31686004)(6512007)(186003)(4326008)(86362001)(91956017)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1803;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9YKs5mU4tt4gZBK9x5T1ypnLc7iuJ+FmsoSwwZ0p6c44S6LoYIOrHqV4Mmyk7hYfCrnTPypdRgKzBso6URWVQ7fPhnOvIiWzx3QOAlO5UdsAIVwrUBDW3lTH8ldQFO50m4Sp8VltXLgD3EOq67oPOByJPcnx+MpUjfCqvCZf/6+7QKyte0eLB3uEJvuqx+XCDGNW35nubdyHNF9nL35qRk8UyewTm03I4qmmf9nbx1KGzpgpuBJH3wgjruGh5a9bnGLngiOAc0L8J04QYFQXWNGUSh6GjbYoXb0A135GYAiAuVQgNE5iU8qJSj94Q+nb2l89Etld0w72mhByG8n52jLvPAOmB5NRWyTXER3wD+Pp9swSVWIVVo3TVC3aMttfUYHZxlMPn4Mdg4eN1aSvMeGZWdoYDNDmCyTkioXMtnIl3EEpGRfrcCnlxKlzuIxHr6G8i1jq/FaVypLORrbdIJDMUnHnQNT7+8PMxVgWvxg=
Content-ID: <D714D64720BC224783739E60B0E26B02@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ce2a8df-4e50-44da-04f8-08d78463ede4
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2019 09:15:02.2807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WEziUnSqvcl+pBAEOtLUTmp9fYPc2I3FICVf7Vh3nt73cYBkCr3D08jeSILKDI4MYwluIxQs45kVEX+hGJIdN+a+Mtd2vBYtQrB4lAq7huw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1803
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_011513_354909_E29890E3 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, a.zummo@towertech.it,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 18.12.2019 18:58, Alexandre Belloni wrote:
> On 18/12/2019 16:52:21+0000, Eugen.Hristev@microchip.com wrote:
>>
>>
>> On 18.12.2019 18:43, Alexandre Belloni wrote:
>>
>>> Hi,
>>>
>>> On 18/12/2019 16:24:00+0000, Eugen.Hristev@microchip.com wrote:
>>>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>>>
>>>> This allows the RTC node to have child nodes in DT.
>>>> This allows subnodes to be probed.
>>>>
>>>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
>>>> ---
>>>>    drivers/rtc/rtc-at91rm9200.c | 2 +-
>>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/rtc/rtc-at91rm9200.c b/drivers/rtc/rtc-at91rm9200.c
>>>> index 3b833e0..f1b5b3d 100644
>>>> --- a/drivers/rtc/rtc-at91rm9200.c
>>>> +++ b/drivers/rtc/rtc-at91rm9200.c
>>>> @@ -421,7 +421,7 @@ static int __init at91_rtc_probe(struct platform_device *pdev)
>>>>         at91_rtc_write_ier(AT91_RTC_SECEV);
>>>>
>>>>         dev_info(&pdev->dev, "AT91 Real Time Clock driver.\n");
>>>> -     return 0;
>>>> +     return of_platform_populate(pdev->dev.of_node, NULL, NULL, &pdev->dev);
>>>>
>>>
>>> You can avoid the DT binding change and DT parsing by using
>>> platform_add_device here. I don't think there is any point describing
>>> the trigger as a child node (a watchdog functionality wouldn't be
>>> described for example).
>>>
>>
>> Hi,
>>
>> It's needed because the ADC needs a link to the trigger device. This is
>> a hardware link inside the SoC, so I thought the best way is to describe
>> this hardware is in the Device Tree.
>> Otherwise the ADC node is unaware of the RTC triggering possibility.
>> If we just assign the RTC trigger device to the ADC through the sysfs,
>> the ADC cannot distinguish between the RTC trigger and other various
>> triggers which can be attached.
>>
> 
> I'm not sure this links is required but I will let Jonathan review. Even
> if it is needed, you can still use the rtc node to describe that link.

Actually, the RTC node could potentially have two different ADC 
triggers. There is another OUT1 field that can do a second trigger for 
the ADC only for the last channel. Future development might add this 
trigger, so, with that in mind, I think it's best to link the exact 
trigger and not the RTC node.

> 
> --
> Alexandre Belloni, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
