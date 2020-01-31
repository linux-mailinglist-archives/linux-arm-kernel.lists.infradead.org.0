Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACFD14EC0F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 12:52:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t8RY6ht9OfURXcufMr6LBKAgEEKLUtFd1o6vthKKS6o=; b=H2ukXa/wFfyD6I
	NIZ/MLxx5hd1XWiooFe3CAQS96dShvt+dtvs2CagX8bDFuB8tZ9bmX47PtKFLBzUsYdhEqNzk18A0
	jOcGIlCAE9R/ICnonNN8JAUSus7ilOsQHxQIGTOsIXODD4bg9pjZ1xf2Q9l44GLxzNo/pA5lGvO3F
	mQ5U4DxdVOvh1n7BgbfJ4WYqWZ/iGpVo8VOiep1MUsnKjW9I2SqEKeP8o++8anarAwbtgaFNjQHNt
	+OeYRa/WivgCSawR7xGrKOZuR8ipM4tPoX8XqELq5acdgBUd3p+jeUFOuAnGtpq7ZFd5+/gMq9CEB
	2IBzbDevjlC7e9cJPyzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixUqi-0003PS-3B; Fri, 31 Jan 2020 11:52:36 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixUq6-00033z-CS
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 11:52:01 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: pCbvZI+pQxvpmKCau0MZ8eSC7D4NWUD6k91O7fmqcOBWE8RyOwCmYEdmOXf6nDB9r2+LUHezG/
 oaZd1v+9niUiiMMevdy34Z1q1Ug9drM4MAGeYEXMQMzpep2TLnLdF2/vX/rMQwAaeBrn0gmhiQ
 NobN6zKPwixVFYTe4i3x4+OJXBD43wEMQWaq5nLtGjC6z3QoeTaLBYKWWx+BxW85+m61BgnFfM
 cMb8asEQEWTyv/9CLUVc737vccMmBXhjkBUlvMJjvFzkKhSPNY4zRVD3RksL5eiwdg2hKEt5D1
 mvQ=
X-IronPort-AV: E=Sophos;i="5.70,385,1574146800"; d="scan'208";a="64373245"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Jan 2020 04:51:53 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jan 2020 04:51:53 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 31 Jan 2020 04:51:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U2w6GHzWquV2g/KXhEHisbMyZSjHWIaCfgE7MY0j5MWuvMNCAP6yFUO3BgwG/VTfIGnNTbGOWmlQTkhwUfpboKl7jAhJGhFZS/0S2UqBghHfy9b096RaGd8cYMwj+v2GTvllhAowkjY/wnMsyFVTzt3HilULfDNy5w3vO7pwfISD/7Eytvhis0NLkVsxN599Hu/43MbupLPLteFtE8w7t5Nhn2qWxdNMMx3m2mdjIl2szaDseRKoVe5zJolhlnoGeGNA6DUPJaZ2iy+fDF1j3fR3w7vThcHNEiX/Jm8WaanbVNmiVlvEKQieNYuoxlaWdSwdXXyqDArgk9S6X1urlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KR9FK1LsKvjX2gKIcxaxFJXj4+xWoVOqu3uEO1yPI4M=;
 b=W4/MuyMnkFMs3SH08gU5Xc09YO2OCMVLNt1pYdxyVU9OCbR4JWIx3ccjQoWCpzgyigGH88PjnQj+hrsXtkI5ibBkYJxqxhqWdKnpAMo6Jk7a3S2IlJcoIoBw+WTNTD9hws9zyXc2DoP3jVeJdqJO+acGITKn2uGXzFFZissfqVxhabIizoCFPwJ16uak0G6NDypsBk9mpRaRR1wwXVEUQePD6wIHUs2BVyHq7hmMqfzj9rmVdqF6DSC2GdhxG/sjYbFIoWGr9DWBGVEzzOKxk+u+pArvEOdNof1+xhj+E0KqR8zDYLt32iGXPeAHVDftIRH9IyIAk5CW9N5mdNYB1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KR9FK1LsKvjX2gKIcxaxFJXj4+xWoVOqu3uEO1yPI4M=;
 b=kBajOvlCib1r+ktXfpKQ/tWoU0I0bLS3XJmHuT44h4p5AS8teTlCbES0re3JW4OL2DV14TShD0eTyGrFtdT6wHPTLsW2mL44mWO/EwKBc7rIXDXhV8EagObinelRsugItLW6Me8knHiwC+Mn5BXAwmMdSuGTT4o2qThd6pvf2wQ=
Received: from BY5PR11MB4497.namprd11.prod.outlook.com (52.132.255.220) by
 BY5PR11MB4168.namprd11.prod.outlook.com (10.255.154.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.26; Fri, 31 Jan 2020 11:51:52 +0000
Received: from BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd]) by BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd%5]) with mapi id 15.20.2665.027; Fri, 31 Jan 2020
 11:51:51 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <Claudiu.Beznea@microchip.com>, <linux-clk@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] clk: at91: sam9x60: Don't use audio PLL
Thread-Topic: [PATCH] clk: at91: sam9x60: Don't use audio PLL
Thread-Index: AQHV15VVIDkmNUG+JUKhk0TyXrfZaKgElv4AgAATfAA=
Date: Fri, 31 Jan 2020 11:51:51 +0000
Message-ID: <588e7513-4d24-2775-3eb7-271d18cbffaa@microchip.com>
References: <20200130174708.12448-1-codrin.ciubotariu@microchip.com>
 <72d97d68-690b-7f18-0dca-a5aa131e1c29@microchip.com>
In-Reply-To: <72d97d68-690b-7f18-0dca-a5aa131e1c29@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [188.25.143.200]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5584ae9f-952b-4220-3a5a-08d7a643f616
x-ms-traffictypediagnostic: BY5PR11MB4168:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4168265A6E5E847CE6395315E7070@BY5PR11MB4168.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 029976C540
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(396003)(376002)(136003)(346002)(199004)(189003)(31696002)(2616005)(26005)(4326008)(186003)(6506007)(53546011)(107886003)(6486002)(6512007)(478600001)(86362001)(91956017)(316002)(76116006)(8936002)(5660300002)(66446008)(64756008)(66556008)(66476007)(66946007)(54906003)(110136005)(8676002)(31686004)(2906002)(71200400001)(81166006)(36756003)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4168;
 H:BY5PR11MB4497.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9z8nBUUzooZhESRYN/jwYVBthumQ0xnYyclLJAsax3Jj8qfvHeriJF7hYnkoqQ/GmfNF4mvsUyxh3EsztU5LHJMEQJy4tKgOFl3REyK9/csyPFNfLJKrQIz6cibeNLRIFwBEEsYLb2KCwajgzZe2X0KK2LTdmST79FcvuijUKnwtlhdKjF2F3uvuHVtBB/zT1FTxpChaZ3UzAeOx0bSoav6WVsARIm1u1sRCndhnRkg8wdItQsNC8263E8MKpkJOLnc6Zh/PWnwFShKzBt6f/q6jfdhUHjq1cBrFfEBsq5bh4G1lYr4Iun/O59BjPI7s8A+ksz+7t9cSYK/A3P3oj5YwEMB3tkkXC20wSQ5XQNzmHgMqL/haoSnS1MLUiaPbFL7qrb1O+1RqlTdh4e36MYuBA1haDCahAa0rsKGXYvnhMFFSVhzcsDlm1k5fwjpy
x-ms-exchange-antispam-messagedata: nTcswR6ADU3jAoojZAC184jE6ahmLHAF6OWS8OewFyabW7KxH8Bj1FOqoEXJjPDda+on3I4Fsgu5CqLO1wwNHxWC14wdydqVd+tSbh/YykwjPc51u54I0+NqKhDY9PsEDPRYsN+AZ6cinckr7+BOww==
Content-ID: <C35DA20027454842AAF237A0F739C193@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5584ae9f-952b-4220-3a5a-08d7a643f616
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2020 11:51:51.6526 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sydoJ/fl2yxgUAiFMi/GoT12Ffsz2D7i98csP3Y9Kgl4B5htlNF2l50ESGA2liydlvOVTVdss2Gvwq8xUP90aAU96Th+3AjqaqZM3GM/azk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_035158_547604_33B65942 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: sboyd@kernel.org, Eugen.Hristev@microchip.com,
 alexandre.belloni@bootlin.com, Ludovic.Desroches@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31.01.2020 12:42, Claudiu Beznea - M18063 wrote:
> Hi Codrin,
> 
> On 30.01.2020 19:47, Codrin Ciubotariu wrote:
>> On sam9x60, there is not audio PLL and so I2S and classD have to use one
>> of the best matching parents for their generated clock.
>>
>> Fixes: 01e2113de9a5 ("clk: at91: add sam9x60 pmc driver")
>> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
>> ---
>>   drivers/clk/at91/sam9x60.c | 6 ++----
>>   1 file changed, 2 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/clk/at91/sam9x60.c b/drivers/clk/at91/sam9x60.c
>> index 77398aefeb6d..0aeb44fed9de 100644
>> --- a/drivers/clk/at91/sam9x60.c
>> +++ b/drivers/clk/at91/sam9x60.c
>> @@ -144,11 +144,9 @@ static const struct {
>>          { .n = "sdmmc1_gclk", .id = 26, .r = { .min = 0, .max = 105000000 }, },
>>          { .n = "flex11_gclk", .id = 32, },
>>          { .n = "flex12_gclk", .id = 33, },
>> -       { .n = "i2s_gclk",    .id = 34, .r = { .min = 0, .max = 105000000 },
>> -               .pll = true, },
>> +       { .n = "i2s_gclk",    .id = 34, .r = { .min = 0, .max = 105000000 }, },
>>          { .n = "pit64b_gclk", .id = 37, },
>> -       { .n = "classd_gclk", .id = 42, .r = { .min = 0, .max = 100000000 },
>> -               .pll = true, },
>> +       { .n = "classd_gclk", .id = 42, .r = { .min = 0, .max = 100000000 }, },
>>          { .n = "tcb1_gclk",   .id = 45, },
>>          { .n = "dbgu_gclk",   .id = 47, },
>>   };
> 
> Please remove also the pll member of:
> 
> static const struct {
>          char *n;
>          u8 id;
>          struct clk_range r;
>          bool pll;
> }

Sure, will send v2.

Thanks and best regards,
Codrin
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
