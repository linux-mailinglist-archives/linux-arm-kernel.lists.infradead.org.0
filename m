Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F18E6CBED9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 17:16:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SOse2pP+qKOyF1Jl88qux7RXLwX0SEJWQjKeIXZhvHQ=; b=psY426wPepapPJ
	fZjNj0OvWKvZ90TL5WU82MjDBhFaYRyQC6378XdkD/9fvNhvEZQOpi/m+hSVa/tesrS5rTanEAOu0
	RcrYqhfDBppt8XHVphUiRdBpHb4dpKDtMXKQBIOc571/rYfQdvxrvpUFkZHVKJrptDWlb2+vHrQJA
	roLOrV+4J2gaQeBI3qU6RUtNxdUBLFXPzWXmwI3UGYRZ/gisxpIDe8Nedt3hBlfrWWL49E2WoUx9K
	Iyt9l9vUQ/ZP3RZDv0L5IYZzAXPfuqywS3j9DYXJc/0PGrV6sbsURAYhMZTfjuxBDZdaHExw7dtV+
	XbRS9PlyFpOB1vjuwMbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGPJy-0000Oy-1Q; Fri, 04 Oct 2019 15:16:42 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGPJp-0000OS-Rw
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 15:16:35 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 2c4Zp1LAYYDbPD6p7Kwo0rCvm+M+cx+CUh67adEiguZKwqc5krfBeLSH6r9l91ucWJ7wq1wncu
 CyoA5fGEFQgp+9cN/TG5uvGTUPEWeV9DK+kT/lBYzVaDmomRIz9vLBrNnXCme4doZi/35Zaol8
 QMz3MGGdi0s1af1+r5qkVLpXzvCckwYTW78bAIR/r9Hgyj9IlzgylgFUNnYKrIvJA10TGFyLzM
 B3EDLO+AqP3alvuwTbCu/tYi1qVMmuWRzfXMtDAoIo24HOK7smuRbtBZgxPYGPqMymRamVUhrT
 Wkg=
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="50215217"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Oct 2019 08:16:34 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Oct 2019 08:16:31 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 4 Oct 2019 08:16:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SsHZUZW27eaLAYx7suipxQmwW8hFmqILO1A/sNXmhBWz6ayi0P9ZsqzucwRziOyjcwVYxp3dMLCPwCFnARkilwqR8r/kqcelJDpBjXbtVhQ28I0TCGsC8nCtaBNsupcyY3y7FFAmS6/PMnMaSxvuil9QktLHaFtSG2pW+NxQdVgLpdkhFA6NYbSBmtWbuUeRNsXTwSrC9dky+KNP01oPdakbyhmCA7h5BVDApLkvMM0Guf2T4loQi9JTCBoPUAsqGT/UdfAGp+QYrSPBMpr4xr20jy0RIf7r3lOsRyNGLpPQRtyt7TXoWnruEbzShuI79lFa5lN2N6LSexqKN41SLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vz6OL+WjYHOVlk070Vse05Nd3HzzUg5+ePkeJr2Kqvc=;
 b=fpu5aEMfbO0KKoNCs4ZHsYP4qEmB09QyULCfZwQYFG2i5bbbyUBwUCbx3rX6NA+KbkY2KYAtlZ4DR7CdAU2vvNXF6WUBNuiD/ZpTlP5pDkMjBqt7+fDkoOxVe2a0m9AWinIChvxqzqJa31cy02ZjtLWpdfjFRk+yexGTsDIiXjtrRxRgHc19V22cCZoOCGbzoWaYqf7MMDIRH0xksRPlB9UJEB/NwczL5738NdByoEkljZt9/oSwkthiDi5vUpaRMOZYxsqUil4+fordgakGfiS94OqOIa4zn2/n0LJw/KlaT1ba1ZVBtTMR7e4HsRXl6xo09A36gdU5uITgooXpaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vz6OL+WjYHOVlk070Vse05Nd3HzzUg5+ePkeJr2Kqvc=;
 b=d/l+GxT0GC6MWhu7ZhZ0rFdx5nlH2Ch943osOGNfCqNOrl6oU4fu26tv93/HYGHoSHQzthChMzkBXp7gHpbIEhS0pXsS8APb+XgvwQQ0PRT1emt39oqCFdGOVedaeIaNnmN/lPMPmqc1wO9ueXbKI2QCLAiSDdgqwYrbYzs40YU=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4013.namprd11.prod.outlook.com (10.255.181.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Fri, 4 Oct 2019 15:16:31 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::340d:5a33:dc79:1184]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::340d:5a33:dc79:1184%5]) with mapi id 15.20.2305.023; Fri, 4 Oct 2019
 15:16:31 +0000
From: <Tudor.Ambarus@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v5] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Topic: [PATCH v5] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Index: AQHVer306XO6kcXuKUGETx77Y8Bgb6dKkcWAgAABzICAAAEXgIAAAZ+AgAABmQA=
Date: Fri, 4 Oct 2019 15:16:31 +0000
Message-ID: <f0f98c17-b44b-de57-f66c-a7887d997101@microchip.com>
References: <20191004141256.14491-1-kamel.bouhara@bootlin.com>
 <a8c16919-9842-8a2a-81b0-16551c6a7944@microchip.com>
 <20191004150057.GZ4106@piout.net>
 <2d7083bf-c21e-af95-69d8-640aa08d8964@microchip.com>
 <20191004151039.GA4106@piout.net>
In-Reply-To: <20191004151039.GA4106@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0602CA0003.eurprd06.prod.outlook.com
 (2603:10a6:800:bc::13) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 613538a1-2a4a-4f5d-d4c7-08d748ddd5d6
x-ms-traffictypediagnostic: MN2PR11MB4013:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4013F4AE5C12325D96A8E81AF09E0@MN2PR11MB4013.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 018093A9B5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(396003)(366004)(39860400002)(136003)(376002)(346002)(43544003)(189003)(199004)(40224003)(14454004)(305945005)(7736002)(71190400001)(71200400001)(316002)(81166006)(8936002)(52116002)(478600001)(6916009)(66476007)(66946007)(66556008)(36756003)(66446008)(64756008)(81156014)(2906002)(54906003)(3846002)(86362001)(31696002)(6436002)(6512007)(66066001)(256004)(5660300002)(14444005)(8676002)(6116002)(11346002)(476003)(6486002)(229853002)(2616005)(446003)(31686004)(6246003)(25786009)(4326008)(26005)(486006)(102836004)(53546011)(6506007)(386003)(186003)(76176011)(99286004)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4013;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YZbpQI/d8Y1QC2sXznc1Z4gSISPp9OY2ofT0sYjQmXu91ioyRCswMI80ys3gHQ/RlVG4NKp+sv6ohzp8ICTQ7ntJIHuwjkC6AZAt2kJnSMMCFwyNRknKvJfdqvvP1PoU8DUdwJw6N2hWDiF2+7XwmI02gWNOTUlgllMZGDa58arX5gxo2kmhh1LhXcd3PFNvm70TyQIjEUy1iXozpZIf5ik7QvZFpA6ulQ66AamuEeiLV4sA1AoWzRPclDa4W0ZHNKy3kIjHaTjDbRiTuJmlML+wUnAI4gF1QxztKNLNtQyeDRj4bfUIYukKQKvci5fCG2H3IkCc9LFuoLAK8rzw+f+BNpj/bu3wuzqPcUAlQHAdPDOf8yi5dTfhmGURThO03yFrQHZiJdTLRWsvcYk1iRtX+pUJCRzpKknRv2tnMpc=
Content-ID: <B637338BFF91F94EA09249D3C40F8860@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 613538a1-2a4a-4f5d-d4c7-08d748ddd5d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2019 15:16:31.0292 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JSlIsEeWcQ1GiynZ7irv/ZGLhWayTDx9nMVkfhqtIwMsipjC8R8FuTGki5JcxLwipwdKb/aP8BmxoJf5PJyPKouwppBBrGer03DKKn9hvjk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_081633_969782_A5D0CE61 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: kamel.bouhara@bootlin.com, Ludovic.Desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org, thomas.petazzoni@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/04/2019 06:10 PM, Alexandre Belloni wrote:
> External E-Mail
> 
> 
> On 04/10/2019 15:04:59+0000, Tudor.Ambarus@microchip.com wrote:
>>
>>
>> On 10/04/2019 06:00 PM, Alexandre Belloni wrote:
>>>> The code looks good, with this fixed one can add:
>>>> Tested-by: Tudor Ambarus <tudor.ambarus@microchip.com>
>>>> Reviewed-by: Tudor Ambarus <tudor.ambarus@microchip.com>
>>>>
>>>> As I told in v3, I have some doubts on the use cases for this driver, but let's
>>>> see what the at91 folks think.
>>>>
>>> There is already at least one microchip customer using it so I'm going
>>> to apply it.
>>
>> This is not an use case.
> 
> this avoids adding a ds2401 for example to get a unique serial number on
> the board and reduces production cost because there is no eeprom to
> write as the SN is already on the SoC.
> 

I was not against it, I just wanted to know the reasons. Thanks for sharing this.

> If you are not convinced, maybe you should ask your hardware designers
> why they added this feature (I guess the answer is customer request).

Maybe a CRC should have been added, as in ds2401.

Take care,
ta
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
