Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A88CD137097
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:03:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQPKKwfxthb29Mz7RqlKc3c3UXv+cwczOIuF4TNEqvo=; b=Nt1f1/e0Q8i7P8
	Kq5eJUemlUxJMPBY60RJccGXLHFAKKaJRT5fMy2kP0dVAXTCkOROmG7d3vtbqWtY5vh2oHzjV+o3w
	GeVkXH09Qv/oFNcad1DxGYiZjEVX/ZY9jpbB/9sm9cVLel27XgKAvluZ+t75Wwyzy0cFRSwJ4gh7t
	2DbDqut1mhHAhdWV7wGBiihHkzr8NVbNuKKXh5coopeCXAYvzhuZC7TE4BqtArHAYLY14m9+s9qDt
	vE0RyaD5lxy1TJ1pAA6Q3B1aCEqCxJGP4L7kzcRbz3mx4l4K/M4yq5hyUcrfMRGzTJDBAMijEg4iI
	xDDLmht6CTZRwCbO8UEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvot-0002yX-C0; Fri, 10 Jan 2020 15:03:27 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvoR-0002mR-7m; Fri, 10 Jan 2020 15:03:00 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: q1mZVEN9+9nW+41vxWAi9UpPaolO36Gv6BAftDCUtxI9Vs+WlxZ+r9Mt14bSknsGsG5e9CWlT5
 GUOEqYpVdaJTX6RGfbeKYdrSIYqx9T6gj+foUKu4P/Ofdq7mPWdys8NrkrX9y42aCZSY4Hg6iX
 OVtsUuuauqEFqqwrjejtqKe75XqvXJHv8oVd6oZENCHuwIxMoh7J+3R7n/2mcsZ2ozbePmnEl2
 3PACBOOhyXFJQ/K3CgpJGMhmbiSZ6HOiWhKRpdjwSnVjCWGSoI+7P1HT/CI67Qv0r1q7ns2WFW
 hBc=
X-IronPort-AV: E=Sophos;i="5.69,417,1571727600"; d="scan'208";a="62881054"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Jan 2020 08:02:57 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Jan 2020 08:02:56 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 10 Jan 2020 08:02:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lswe8IrsffHQnGEOc/m08k4TFkyhASIbI9pLP6ZP2SUMgxlht8kOovEEVcmJ4yWRwdyVeOtRZmkeDv45nlY2bzGxvtZRNEaaYQFUiE3VkrTnjHIllvWdq/Uc74H6JMM92/gHliW4o4yPy/P4BUL4sJZXoxG6qtWIzR4b+7KSENVYEUIMmMBxgYH7ogVCUMk1i/vIcCUXPYAh4Q/p0Glhw4DvkLFQrc0TsR/p8g8NdDDATRD666Yty2aD8r2eByhKgxdigyGuTjy/lRjfYBiOnJhSdX7GbG+xWJqzWdCdqd/brn3PefDRVOlXAxhWUHfHJN64sK+AihX5+rYrShSigQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ROYUQMPp03uT25P58fK2sBlfAea5ZRoYtOpcKJhSISs=;
 b=LJAbNACXHrIL1ZOgru/FlYDYtHSbDZlz4TNkRIyjjALHC3sZbaAVjfi7lkUiomU62b7NzM959T6TATPshzX6b5caUnj7jDRQBCrGaY84L/zAwflQsrK3Jdvk95xbNZWXD+gBZ9wIO1hkoQUEfWPJ9fHK4oDvY5XGni0g6DObq/hlsZayX0h+bLSRahhXDBlI5xU+9h65jBIaXNSWPCJ9av1PINBkANLhrG7Eazp2hFGgJosGfTkv7SgTdsjF1OtQF+rW2yTMGFrccLM+gwU1F//G2kJLPjLTnybYWNp8rb1F8wcsb7hQ2ZXzjmpSEEK7NymestctrNnH1es7VjofTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ROYUQMPp03uT25P58fK2sBlfAea5ZRoYtOpcKJhSISs=;
 b=WPUm0YU5eWGC/DgvWkZMio4tPNbVPq899Z9fw6fILUacE1XLRZNfmq8dc290WXJZ3uDua0/2NFCNfRQzAWiPBAQhh2OHk2aMBbNNMaqSD4xWkR+1MiGnJqUDw15E7r8BzbcDJNO/Y2xs6DHLVPnTwhV68HDEfbG9h2GFuhEHqJ8=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB4073.namprd11.prod.outlook.com (10.255.61.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Fri, 10 Jan 2020 15:02:55 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::106f:424f:ac54:1dbb]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::106f:424f:ac54:1dbb%7]) with mapi id 15.20.2623.008; Fri, 10 Jan 2020
 15:02:55 +0000
From: <Claudiu.Beznea@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 11/16] dt-bindings: atmel,at91rm9200-rtc: add
 microchip,sam9x60-rtc
Thread-Topic: [PATCH 11/16] dt-bindings: atmel,at91rm9200-rtc: add
 microchip,sam9x60-rtc
Thread-Index: AQHVx8cJ1Sdz4XPBp0a+PBJp3PSmrg==
Date: Fri, 10 Jan 2020 15:02:55 +0000
Message-ID: <cd8ecfb1-b88a-88c4-205f-45ac7e25c5cc@microchip.com>
References: <1578488123-26127-1-git-send-email-claudiu.beznea@microchip.com>
 <1578488123-26127-12-git-send-email-claudiu.beznea@microchip.com>
 <20200110143001.GE1027187@piout.net>
In-Reply-To: <20200110143001.GE1027187@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3f3eed86-8fd5-4bf0-35f0-08d795de2c78
x-ms-traffictypediagnostic: DM6PR11MB4073:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4073030C1B5DBFA428B71AF787380@DM6PR11MB4073.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 02788FF38E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(376002)(366004)(136003)(199004)(189003)(8676002)(186003)(5660300002)(6486002)(6512007)(2906002)(71200400001)(53546011)(6506007)(2616005)(26005)(478600001)(66556008)(6916009)(66946007)(66446008)(76116006)(64756008)(66476007)(4326008)(8936002)(81166006)(54906003)(91956017)(31686004)(31696002)(7416002)(7406005)(966005)(316002)(86362001)(81156014)(36756003)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB4073;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iwSqYCZiVdt5raWL0+yTz682VYv1qyx7XtWg5eo1oekx5xf+sw34bc+EqB2Vat14SBoqfHBZUhe9AONHULKP8ivYiLSZs7xr+DXzvLR8ttdv2tvPCBpwTma/flzeDtc7Iit+bqLnXKQMep/PIIEDt37PDXTPhqHOoqHvZVSOdoC+rfSP9yQx+BRACJXVCFZQ9tFrbQKqr2GpctWj6kRFS8z+2eX+sBjuu4yjg3anKLa5LX1r07sOqueQo5ZPonA4FULeeAah2U+2kN83Dj9+5nF4KEPY/HGGofbi2Tcqph845d2tmA4ZjQdM7FHfIpU7UN19QOmwRhmOCXxlvVZOVo09I/UiXWjRT47z9AF+29AO/ayrBLKwqpIjt1Ltl7IbS4s++yTfnpkLlDl7RNP5luU6+XeTgwG6SEzdUK7aQoCJnmXwK2AmGNX8cHrnMUqGwaYFLHpCvvHEiOJYOB78PykKqXObMglF01qSpJKVNmY1mEdG8WWlVGqv1NPBEVQbm5TZEP3brumwVq61Foe0yg==
Content-ID: <AE39BBAE4DFACA498B36344FFFF2868E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f3eed86-8fd5-4bf0-35f0-08d795de2c78
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2020 15:02:55.5649 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lstx1sjPtslO9cBwiO8kwk8GOEMvvmTcWCx/9VtduurAc4xi13Z118GNEtPtQAoOyi5efonltgFH80Q7t6LwkHm2VBspvI71Uh+h8ZS3nmM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_070259_298989_251D118A 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, vigneshr@ti.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, pmeerw@pmeerw.net,
 miquel.raynal@bootlin.com, lee.jones@linaro.org, linux-rtc@vger.kernel.org,
 lars@metafoo.de, richard@nod.at, Ludovic.Desroches@microchip.com,
 wg@grandegger.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Tudor.Ambarus@microchip.com, radu_nicolae.pirea@upb.ro,
 linux-can@vger.kernel.org, robh+dt@kernel.org, mkl@pengutronix.de,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org, a.zummo@towertech.it,
 richard.genoud@gmail.com, netdev@vger.kernel.org, linux-spi@vger.kernel.org,
 vkoul@kernel.org, broonie@kernel.org, knaack.h@gmx.de,
 dmaengine@vger.kernel.org, Eugen.Hristev@microchip.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10.01.2020 16:30, Alexandre Belloni wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> Hi,
> 
> On 08/01/2020 14:55:18+0200, Claudiu Beznea wrote:
>> Add microchip,sam9x60-rtc to DT bindings documentation.
> 
> This will have to be rebased on top of
> https://lore.kernel.org/linux-rtc/20191229204421.337612-2-alexandre.belloni@bootlin.com/

This is also not integrated in latest next. Will this postpone the
acceptance of the device tree, until the yaml conversion is accepted?

> 
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
>> ---
>>  Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.txt | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.txt b/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.txt
>> index 5d3791e789c6..35eab9138d0b 100644
>> --- a/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.txt
>> +++ b/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.txt
>> @@ -1,7 +1,8 @@
>>  Atmel AT91RM9200 Real Time Clock
>>
>>  Required properties:
>> -- compatible: should be: "atmel,at91rm9200-rtc" or "atmel,at91sam9x5-rtc"
>> +- compatible: should be: "atmel,at91rm9200-rtc", "atmel,at91sam9x5-rtc" or
>> +  "microchip,sam9x60-rtc"
>>  - reg: physical base address of the controller and length of memory mapped
>>    region.
>>  - interrupts: rtc alarm/event interrupt
>> --
>> 2.7.4
>>
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
