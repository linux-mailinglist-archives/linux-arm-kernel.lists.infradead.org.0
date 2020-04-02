Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B80019BF16
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 12:08:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fpuq1cqdfWZqarV34VitZfQa7QUu6Lnv/H8RzQOIMjE=; b=nejtb1XOdnPH4L
	C9BKbpoiXiiYHyJ0XgF4S2Dh+UtL2rSn8OF1b7EcvT3LwM36/aNJmqmVb5Y65cQUY6Xi7cPZwdttF
	JWcUwHMbv+cxdGTQotQ2oBVr1ZOoc7jJn1B52AQF/x3QFoD3jqyzfTUJAHyJIUt6Ex2yLCd+PMcqE
	Ht2FhDfN9icA+opQjIAeDXTeh2CIhvDlTGHDo+9UoRYx4qCYhkTAioLJOEBpLIbFoSfVxcIkaV0YV
	WZ3gqzXigPy/JtBTeTwSLSVS1vPo281Vvf/wj8X8/2l0/9jz1XvpmP8a5D/JJ8Wa5nnmZpBlU16yy
	oiz+ZuiuUhzBuDwQvqGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJwlP-0000rC-GA; Thu, 02 Apr 2020 10:07:55 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJwlJ-0000qO-Lb
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 10:07:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585822069; x=1617358069;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=MKZR/RB3na+J3TRzmd+RKfsjGXibvkM8M/kiXa7rRa0=;
 b=0f5OJDcKSTwVDFlOa9Huav9GKw2bxVs+7afMDcXxH7bkzTDIllhmC1kH
 BiwypZYOEZGf2ZMfnUUEquWcbLycHXl020wAAgsi6hFcrQAvu4aPEQIfH
 0ma+h8yUPq78i8mJ3Qysbhn0ihhymvKYH1ypABcZcI2Q+qxFS/pCo/nK/
 wjV+cFlSl5lYfdY9SgCi1C1v5n8kzQ2wL0ueMruAIqRBZd8kXmkG7EPlS
 xHDIevNoZ3ToYnt8P6cqPs2BKr/zpdKRur/AoxDiREOvPug6MLwU5S9xt
 IEKVukFAxN5SQM5e7xRYL2avcHtbXh0j+sajzInJglczvqzDtQTLVPuCK g==;
IronPort-SDR: 8xHe2f95JAIDo8Dd/bjKXKlyixn1j0H4P605U5wfFMTKEwWgwoYB39EQRzPRAHiXFDPy+BaS4z
 DPj7NUedmc+eF+HimYbw6Mgz6deFDqA49rYwc3HEQVaup1wu/NNMdrHy44Uv5VTUczk4JmC9MU
 jYOOvC0N6KZZyER1aBv46jacbu+MotZoFNQptoNq7rli2UDzdhF06QHqLtMHzKVmE6JPQlLH9U
 WSpGw7YiPSqKTrmq2aN16o5m3wm1h1rzG3PMHW8uL3q2bvnevuoBN199fAS/r/cahNPBah63vx
 QIs=
X-IronPort-AV: E=Sophos;i="5.72,335,1580799600"; d="scan'208";a="71003402"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Apr 2020 03:07:45 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 2 Apr 2020 03:07:45 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 2 Apr 2020 03:07:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nfhPBpxtoSWS8q8BZ8wYSh1b+PWt8Aj+dlGVESWXk1S/1EmtoEhudx07YxqnXStv4PlKf7jJluK8LFaqIhTIM0jIhTpoIL1iixqKEHB8c8Sa6nDQPCd6T359yK5GMhuKy3zasK0yH9T2QYgbPsTvUg+6iPiFhogVV+butBBCZbBqvBvl92Z4IS5BH5r38To1tvqkdS4ZM/uPbPYuqQbiQfWaFepTXtQito4kSIuxBV/VQL0COcbftalDj8woJ6UFln+ttaUjFO1CN3QsvadNsZPmU7D/zoERrLFLHwMFe/uWQXfiuJfwjGyHWhuBUjpJkDbpxgIXuof7qB7N85OGzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MKZR/RB3na+J3TRzmd+RKfsjGXibvkM8M/kiXa7rRa0=;
 b=EgyyQQH+qnGUm2U67CM+JkeTtiTrwpEi0bqnNSVMgCJ4AOuRMlDlVqSO75rVwsuUsDVZPGhnDs1HnHiYHZCTiWb3gU+MDFSdiFl3plyORSsmzca25eVwg8D+/xbvJEt+mBJXUDUday9UvS/8E3pA1ywzpkmBOG68tqpOnsOKDLMyZzYXE+ZYfiJyJ+Z1nqlkP4tVO2sjbbuOpb3qqDMtWpHNtBfu5NrbiwiYxbFMTRcvK98QZg6blpOyiV1ejdv/4neMBMMycWYsQ7MA48qlJzYXEn7oWI46ho4E9jfOw1pxdLA0N4BBw7h+z5+NTaGaSa7yB7Uo3EXT8raMeSVfOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MKZR/RB3na+J3TRzmd+RKfsjGXibvkM8M/kiXa7rRa0=;
 b=rD1gW5CSqpZiM/KD5sEOAwR4no+GhMax4UjphLk7nqKqcuqanCs83yJ4Pe9h5FbxafQDP1wAd5J0d249i+J3BUoIDbdf8URiLAD2zC7HLZody1GQR4jmQmFtsTBtyLxAy02+fYaOeRLNC9UFoHL2dY+yniv5u/+A5f9fVF8YIg8=
Received: from DM6PR11MB2777.namprd11.prod.outlook.com (2603:10b6:5:bf::31) by
 DM6PR11MB4548.namprd11.prod.outlook.com (2603:10b6:5:2ad::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.15; Thu, 2 Apr 2020 10:07:43 +0000
Received: from DM6PR11MB2777.namprd11.prod.outlook.com
 ([fe80::3903:ed89:1141:fca6]) by DM6PR11MB2777.namprd11.prod.outlook.com
 ([fe80::3903:ed89:1141:fca6%5]) with mapi id 15.20.2878.016; Thu, 2 Apr 2020
 10:07:43 +0000
From: <Ludovic.Desroches@microchip.com>
To: <Eugen.Hristev@microchip.com>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <robh+dt@kernel.org>
Subject: Re: [PATCH 1/5] ARM: dts: at91: sama5d2_ptc_ek: fix sdmmc0 node
 description
Thread-Topic: [PATCH 1/5] ARM: dts: at91: sama5d2_ptc_ek: fix sdmmc0 node
 description
Thread-Index: AQHWCHML62OsZNg8VU2miyKNJtKsbKhljvEAgAANUoA=
Date: Thu, 2 Apr 2020 10:07:43 +0000
Message-ID: <5f762bdc-fe07-adbc-af8d-7670b5b4b286@microchip.com>
References: <20200401221504.41196-1-ludovic.desroches@microchip.com>
 <b4fe14af-a812-8798-187e-704541a6a75f@microchip.com>
In-Reply-To: <b4fe14af-a812-8798-187e-704541a6a75f@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ludovic.Desroches@microchip.com; 
x-originating-ip: [109.210.131.96]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7f2c0146-7ad5-495e-309c-08d7d6edaf83
x-ms-traffictypediagnostic: DM6PR11MB4548:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4548D2AA6EE3BF7158D37286EFC60@DM6PR11MB4548.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0361212EA8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(376002)(366004)(39860400002)(396003)(136003)(346002)(91956017)(66556008)(31696002)(81166006)(76116006)(4326008)(81156014)(66476007)(186003)(66946007)(64756008)(8936002)(86362001)(66446008)(31686004)(6512007)(478600001)(8676002)(26005)(6506007)(107886003)(53546011)(54906003)(36756003)(71200400001)(2616005)(316002)(110136005)(2906002)(5660300002)(6486002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: agTtK3k9w0v5q5DOtDSxjp0caRBzEKGzClQh5X7AValvxjPzlmT+7OhZiMneA1Hon/3449aN/ddOpYF0BgRtujo9gE4bQkPYhVzVX2h9AtDTp45kU8fPYDxPEXfeksjVonkaLdjnh/wMu6PG4oxSPDGQjQAr3Wrn9jk9RTbiE9glZUDT3jDazcZvOG48nPEZa8T6zZnTR+TQ33QBKLZlXHQ/AReCm83u/raHVpNLOY1svwcJtXlyhMT9QS0Whxso5RRkG7OjZVAVacHaOUk6uwjYmtW0iTxINHP3G2WGXCpxUZbLETT6NJmeqQHA777bxYGMefoor23+nYyoC2Z6mmSEh9GVOvropvVnWQVkDTCMxAbS9/SFGkbOchZRlFaRgSkp0srNbuUHtyJZFSHIwHcGOyh5sC4lggcnncYmzvgdwOwsS0Vpg09utkx1+qow
x-ms-exchange-antispam-messagedata: LamDJTfUIdE+uVA+jrhgja2yavZa0po5Xs+M69GUyf0vbzvM7/IdlLNc4LhNHGDzl5+d6jnbbJQMpwIa9kkZBaX/FLNrhckHsC9BQtTOGepa2amILcgJWQPYYfp202TkSE+6RMaI3rkTfx0kBnHyhA==
Content-ID: <CCB1BF68517C7F41994CBD4EB142EED8@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f2c0146-7ad5-495e-309c-08d7d6edaf83
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2020 10:07:43.4999 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IvFukyciQ5VYh1EYVcxvspOVJB/ofLIzyAvdv1qb1rRyn7e5r+j9f3soaO3k3SoRCFcFwxomRrL7dttSu+x9w7ZfXrpJOF7SWoD8vmmBa24=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4548
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_030749_743329_AAF5F413 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Cristian.Birsan@microchip.com, Codrin.Ciubotariu@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/2/2020 11:20 AM, Eugen Hristev - M18282 wrote:
> On 02.04.2020 01:15, Ludovic Desroches wrote:
>> Remove non-removable and mmc-ddr-1_8v properties from the sdmmc0
>> node which come probably from an unchecked copy/paste.
>>
>> Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
>> Fixes:42ed535595ec "ARM: dts: at91: introduce the sama5d2 ptc ek board"
>> Cc: stable@vger.kernel.org # 4.19 and later
>> ---
>>    arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts | 2 --
>>    1 file changed, 2 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
>> index 1c24ac8019ba7..772809c54c1f3 100644
>> --- a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
>> +++ b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
>> @@ -125,8 +125,6 @@ sdmmc0: sdio-host@a0000000 {
>>    			bus-width = <8>;
>>    			pinctrl-names = "default";
>>    			pinctrl-0 = <&pinctrl_sdmmc0_default>;
>> -			non-removable;
>> -			mmc-ddr-1_8v;
> 
> Hi Ludovic,
> 
> I am not sure about the removal of mmc-ddr-1_8v; this means eMMCs
> connected on this slot won't work in high speed mode, some people use
> eMMC to SD-Card adapters and stick them into SD-Card slots.
> Would it be a problem to keep this property here ?

Hi Eugen,

It's not a problem to keep it, but I don't think it makes sense. In this 
case mmc-ddr-3_3v should be added too.

Will it work 'out of the box' with any eMMC to SD-Card adapters and 
eMMCs? I remember discussions where we said HW changes were needed to be 
able to select the voltage for the IOs other than using the VDDSEL 
signal of the controller.

Regards

Ludovic


> 
> Thanks,
> Eugen
> 
>>    			status = "okay";
>>    		};
>>    
>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
