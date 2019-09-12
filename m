Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 957C4B0DC9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 13:28:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQJT2cPSX04aTMeqSntA3uEQz10U0o9QWnUQ5U1Fiaw=; b=Q/dinkHDszTqbS
	DQKDw3tfSJqLnS5ixiCywGi6XYN2uNJWzCrzst2c3evME7Saf5gFVPzLwBVXfqFTo1bHboJERoWrr
	VAMIZl9TmNIkEnv5P9e8kHkStkh704o2B9kPRS5t+E/DxuOEs9Uqunyxl0xVUHDGR467G62QotTvT
	pe54vKo4ab/3xyyq20WLfY0EUzA2bZbWDQQAmZyGB2LCe5tRehMBsFu0/ICKfzP8tw2iuH0kUjPda
	MTa7KRivq5wg+sOtcBf/Z0li0g/ThTFHb6XWApxwJS4a3BwuKRJrTQiihNKQ949RNlOMvGTyKnxBE
	tDc2absel9dy0uNRAMVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8NHC-0000Yz-Pt; Thu, 12 Sep 2019 11:28:39 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8NGz-0000Y8-M5
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 11:28:27 +0000
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
IronPort-SDR: 0aMsjrkhRmOEsqOEo6VQRljS3wYjxSGCIfonEs1oTcY3L9sYbOPsZQtjtlk0697voh5BcHKDZi
 gDb9AfM53v4qHg6cLGvcr/9qE7sYjobapEUau6RUwPPBsoIt9QJjcjeXjgmwyIyUQNtHIqyCEf
 kJpBx9/ENOIzOJPMt5SG57W53ExgVMvMpvVCbCfx1ryBBrNvMI+h3hbfzQ6EyfFsA/9fAnr405
 j1Ep2L4MR5MpK6Nt5U+53g3yZ+0Iivvqus5xlgxmTe4NITVZBMPpOBXCzbnCOyytHn50Oy3jIy
 Rdo=
X-IronPort-AV: E=Sophos;i="5.64,495,1559545200"; d="scan'208";a="45911495"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Sep 2019 04:28:10 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 12 Sep 2019 04:28:03 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 12 Sep 2019 04:28:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nldYeHXQU1hzeZ0pNLDYTRxZF3sxtaI/xWWCQfyeGoTuLvD/S94ouBZ52pfSPdO3aAeL1oianGNXUV156UOK2qMpLeqEWePYWtE1vj/1u41oPCGoWgrxbs6ydaqy//oFuRcD9a4mfiRRYXDfQattvViN224/P3PsyNlYxAVKIy38k+88H4C8HsMWaV/N8sEBANHxf4NvjBu9rO2xnHB5NZ+/CPnBdQXTAv49DSFZ1JFXF4hVdnE5qwPi4c3uH1drGph49RJoitvp0zAXSmzfZ1VqQYpuKr9SxItbIcorthIKbnFAe04Ypl3NypEU3inZovQCMlfb6Safbt0Mtzzguw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SikDPOhLa8tGXW00dhauu18ANaTEp8htUxr5fHSTJVM=;
 b=Yy+rvwODkpKJXfcxCT0z5KLMAnvo7mxAu4sxcRRxnM7aEmgoOAIoi+l6tQxN4XB/U4IEfrAFTZkNior4B/JpXHyeD/nEMMPIeaSZ/9mKwct2ncPJIMIpu28Ers4OH71FqQ8IKI2lfaW752Yptc1C9Z9ugoCWA1D5/eOLvZFBfWOauN8jsPAMKXBl4IVNU0RdOTAjW59uK01NDSjRp6fnmV25IiGhrjdQD2ZdomNY/tvX2dLdnc0lCvmhycLC1PRAN4E3CFh2sIuD1EHSRvSNW7hNbbkBtufWuhb8Uxc7svm2ervZZmTOFxHmcqeSIOYsq7/Lr4vcaySbZhPzpg2kzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SikDPOhLa8tGXW00dhauu18ANaTEp8htUxr5fHSTJVM=;
 b=rHaL8KzJhabd03orwulCBj0Fd/tijAfSCVAah18ihaU5dlHO8KVtuSHD2uWz2n4CH8lQV0P1WBSB3fZ/vvieXCeXHCHFRzaMlqjDAhJqQXO8hyYmHHpv5/nnUARPVr7c/Yh0+XQ9437UZ3pTK1JgSxD/Bp1nXBMnS5hFCzVjgj4=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1417.namprd11.prod.outlook.com (10.168.103.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.20; Thu, 12 Sep 2019 11:28:00 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2%12]) with mapi id 15.20.2241.022; Thu, 12 Sep
 2019 11:28:00 +0000
From: <Eugen.Hristev@microchip.com>
To: <ada@thorsis.com>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] clk: at91: allow 24 Mhz clock as input for PLL
Thread-Topic: [PATCH] clk: at91: allow 24 Mhz clock as input for PLL
Thread-Index: AQHVaGukjPTRbry/ckGMFC3Lf3IeQKcn414AgAAEhwA=
Date: Thu, 12 Sep 2019 11:28:00 +0000
Message-ID: <a208cec2-7aa6-e6e8-e6e0-f37769273d5d@microchip.com>
References: <1568183622-7858-1-git-send-email-eugen.hristev@microchip.com>
 <30755021.BkS3ObC0RA@ada>
In-Reply-To: <30755021.BkS3ObC0RA@ada>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR08CA0210.eurprd08.prod.outlook.com
 (2603:10a6:802:15::19) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190912142232678
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d0016782-c69f-4fe0-8aeb-08d7377444c0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1417; 
x-ms-traffictypediagnostic: DM5PR11MB1417:
x-microsoft-antispam-prvs: <DM5PR11MB14174BFE3DF053FD47EE4635E8B00@DM5PR11MB1417.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01583E185C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(136003)(346002)(366004)(376002)(189003)(199004)(229853002)(6486002)(71190400001)(71200400001)(8936002)(6436002)(81166006)(81156014)(8676002)(7736002)(305945005)(102836004)(386003)(6506007)(11346002)(26005)(316002)(53546011)(99286004)(5660300002)(66066001)(476003)(2616005)(31686004)(486006)(76176011)(186003)(446003)(52116002)(14444005)(66946007)(256004)(66476007)(66556008)(66446008)(64756008)(6116002)(2501003)(4326008)(3846002)(86362001)(54906003)(36756003)(478600001)(14454004)(53936002)(2906002)(6512007)(6246003)(110136005)(31696002)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1417;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4EqnHdqYr5JyYvWkmA9ZpIc3r1e+QgDnUXtn8otmdIIvxK+jJA+aJZrbTJgntkut8ks/VQSEh3O1Be7ylanW1LLpHz6LKMkMmYK1pIufKTj7de36VvSelYl71zg0C58P2vIjqbOo3R9PhJpbzFEcRdOkY0kJnv1TNnShc5gpi3upPVKorYm5xG3fdRPEFpat1lYu5Aw6F4ZvFY5uVjZu9isHoAqmRkl6j0zZiXiyCSV9QsR5e0Tdk8XadeaKuezhFdP98nsctynvUgusx5pZnbkgxseUSsgDBLzRmT0Q8mmwqY8HIv+DPmjNCsyid6Kt5C7ZEGSlu8nkOEnLXz/PLhPc9CrSGK38HnYppHfZ4rrQ9ZtMecTXsODH9HNQPOBJjeVRWhQQ4HjypueFz3QBaQLxJwRHCe1ifnHd0KfU6YQ=
x-ms-exchange-transport-forked: True
Content-ID: <D44F0FA8B6EE3A46BC1F3C8CCAAB971D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d0016782-c69f-4fe0-8aeb-08d7377444c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2019 11:28:00.7946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MgiwCBxEuHqE0Gt6qm0M9njoxZQTVDQUzLQZBVEM2l9CaHjBgrad8IvC85erwEA3GI/+wPEjbY2rnEk29rhpZjCBMxdJJuRMbFOmJYEZNZQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1417
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_042825_763750_25E36173 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
Cc: sboyd@kernel.org, linux-kernel@vger.kernel.org, mturquette@baylibre.com,
 alexandre.belloni@bootlin.com, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12.09.2019 14:06, Alexander Dahl wrote:

> 
> Hello,
> 
> out of curiosity: The SAMA5D27-SOM1-EK board has a 24 MHz crystal, that is
> also what /sys/kernel/debug/clk/clk_summary says and the board runs without
> obvious problems. What is this change improving in real practice then?
> 

The board works, but, the characteristics of the PLL are incorrect.
This can lead to unwanted behavior, like calculating wrong minimum 
values for multipliers, or other issues

In this code here in clk-pll.c for example

if (parent_rate > characteristics->input.max) {
                 tmpdiv = DIV_ROUND_UP(parent_rate, 
characteristics->input.max);
                 if (tmpdiv > PLL_DIV_MAX) 

                         return -ERANGE; 

 

                 if (tmpdiv > mindiv) 

                         mindiv = tmpdiv; 

         }

The divisor is capped by checks, but at another possible requested 
parent rate, this may lead to something wrong, like here, the minimum 
divisor might be greater than what is the real possible one. So in some 
cases it can happen that unwanted results occur.

We may consider at some points to rely on these values more, so, it's 
obvious that they should be correct in the characteristics

So short answer: no improve in your case , where the rates required are 
around 492 Mhz cpu/132 mhz bus (IIRC), but the characteristics need to 
be correct to cover all possible cases.

Eugen


> Greets
> Alex
> 
> Am Mittwoch, 11. September 2019, 06:39:20 CEST schrieb
> Eugen.Hristev@microchip.com:
>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>
>> The PLL input range needs to be able to allow 24 Mhz crystal as input
>> Update the range accordingly in plla characteristics struct
>>
>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
>> ---
>>   drivers/clk/at91/sama5d2.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/clk/at91/sama5d2.c b/drivers/clk/at91/sama5d2.c
>> index 6509d09..0de1108 100644
>> --- a/drivers/clk/at91/sama5d2.c
>> +++ b/drivers/clk/at91/sama5d2.c
>> @@ -21,7 +21,7 @@ static const struct clk_range plla_outputs[] = {
>>   };
>>
>>   static const struct clk_pll_characteristics plla_characteristics = {
>> -	.input = { .min = 12000000, .max = 12000000 },
>> +	.input = { .min = 12000000, .max = 24000000 },
>>   	.num_output = ARRAY_SIZE(plla_outputs),
>>   	.output = plla_outputs,
>>   	.icpll = plla_icpll,
> 
> 
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
