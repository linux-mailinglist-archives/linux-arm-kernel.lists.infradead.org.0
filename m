Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B43131669
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 17:59:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEO0O7dF0DPfU8RUl7117riSi4KsQ0L3Aaa/nvMetzU=; b=Fh1IGqDO0Z72qw
	zviszxq7VcLxroCSCDDo4z1Zt2vYTpd9ZatwJRRYcBC+lqJcqFgYXra5sdSGXF4Uv27xMPZ40ZWzP
	6e6w03PdxW31suo6YATe33woe0IfaAObV8Pfs6IhV19J3bRq6uP9DgJogf0iQqMh3BpFUMNdK4j+0
	x+b5gdkm286Ysux8PQ5Ri7znBiaE/y9lupoafpZVhkoycULHATqwTDfG4pahsTo3lbGeh7laAE3fd
	72kPhU8aGuXm6oKe/1VxN37jSlQ7Z1ge3CwZEbIYSw+lhK36mlM7pFP1mGFGZ2DJtyyXogHZVrcZ6
	C/Pg3uE9CC1hOgABW5Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioViU-00005r-GQ; Mon, 06 Jan 2020 16:58:58 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioViM-0008WV-AM
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 16:58:51 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: azee5UyKdEK2ILetTgSIC6OO6pyUjMEwJezZOOKaHLNZd+A70LUkKWH64UbuuD5Rgp6l4HJhrh
 9UILhV5APyEIKIE1HFdP4gE1KuX23RzUd/v/S1qbUllUFAn0ReDK1nU3gM7mlSDaBL/GssHDZN
 LD00gXbTItnyu02P4stB3IzJrSQsH+eZnaQMiqYgsFsitIzKjlTFlxotoqCj6l4xkaqmYrs4k0
 Fn6s4K+zM4kaQapUtUFIXitx7pKBEa26cwmwdnohqYtT3C6bGDrW5o1fbJ5i6ezFxKaeihogdD
 wwg=
X-IronPort-AV: E=Sophos;i="5.69,403,1571727600"; d="scan'208";a="63769199"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Jan 2020 09:58:45 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 6 Jan 2020 09:58:43 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 6 Jan 2020 09:58:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MHBks47M+hTrQ1CVlZlY0bKY8VFB1pLgarvH+bIUt1uwBBH08aI+g85KM3dkMELY7joZ/P4Gc3DFBDWZZlgbZCCLy3HBK97B0GBKDsooPWhNLgzlDfUXxZOap7Vr5JSZjgX9uDQX32l8AxN8gDeTVd9lPJ11E3uPA/RDguga+m9xE6oQCQTVoKFquuOheJS3MLD0XA2eAYxF5N9NYv0IEjwmIlnm6u5U9mFtRI9IqP0ol0+CHtY8Ny+K4gDQkIpvxYmO1KAkfP5asrVLeDx28waWPfwcycysT2xK9UzEZBxw3oqD4ro8jcr+Q1sK1OGU5UnNBDZnLDLct6yoC8C2ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jgnq/i1Hdrrizale9zkzOkgt4qn3+C35nAgN3CJSW6k=;
 b=kjSLQkdJfrxsv91kiggJYOPpwCtO1HLUD/k4bV+CSRDI8D7QaJfjR/XU/jFXFbk0fBtHYtc1TymLeXVMjvRKo8ZotgiCf5i16j5bGhB0gGsBrZfZ/tUIGn1r4phU74to2yZdPmPav9Yz4ksPqp3TEu7Ws2Ex2jTMOL1V8q0CVOxbl6oS+jeU8INXmikmtK/dR3O47XexIv8rjKRIULNmyuDXWLjeGDCQp4zXGfeF/Cy6t3fxcmqixv3DdBLlgc2x8P0qTyQC8iyolctH6I1WUfOAz4XTy97Hg6r8QNYsOGSraT0PQ2EGmO4ZIeapjn4QRLW2JIz3GKy5VklsC2RBxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jgnq/i1Hdrrizale9zkzOkgt4qn3+C35nAgN3CJSW6k=;
 b=PsC3/LNJ2MkQYzU+eGR0/50n0SGHWXUKXwXWXdXSO/ID7mrGVNliXG++e0fZ1CAtmbYmSo3NyJsH4j/ioeokiojSB0038qs1T5RHQd4Mep6A5zJDh8F4+ciPKRgZ/sKYHRfX/V9wj7JvyFq+ioQ6IiJbsHtcCUcE7dZJlLQ4gc8=
Received: from BY5PR11MB4497.namprd11.prod.outlook.com (52.132.255.220) by
 BY5PR11MB3944.namprd11.prod.outlook.com (10.255.162.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Mon, 6 Jan 2020 16:58:40 +0000
Received: from BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd]) by BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd%5]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 16:58:40 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <peda@axentia.se>, <linux-i2c@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 4/6] ARM: at91/dt: sama5d3: add i2c gpio pinctrl
Thread-Topic: [PATCH v2 4/6] ARM: at91/dt: sama5d3: add i2c gpio pinctrl
Thread-Index: AQHVwhsLdxsZpEnI6UWudjXfEFHmN6fbG4OAgALFWoA=
Date: Mon, 6 Jan 2020 16:58:39 +0000
Message-ID: <91f1362e-590d-4592-bc16-5d2393f73199@microchip.com>
References: <20200103094821.13185-1-codrin.ciubotariu@microchip.com>
 <20200103094821.13185-5-codrin.ciubotariu@microchip.com>
 <e22772f8-9e6d-002d-98d7-414136a32439@axentia.se>
In-Reply-To: <e22772f8-9e6d-002d-98d7-414136a32439@axentia.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bfebed43-aad4-411e-9baf-08d792c9aded
x-ms-traffictypediagnostic: BY5PR11MB3944:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB3944642680D73CD82EF6C8A0E73C0@BY5PR11MB3944.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0274272F87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(396003)(39860400002)(346002)(376002)(199004)(189003)(52314003)(6512007)(2906002)(6486002)(8936002)(31686004)(71200400001)(478600001)(86362001)(81156014)(81166006)(2616005)(6506007)(8676002)(76116006)(91956017)(53546011)(31696002)(66946007)(186003)(36756003)(5660300002)(110136005)(4326008)(26005)(66556008)(66476007)(66446008)(64756008)(54906003)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB3944;
 H:BY5PR11MB4497.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w7iRiAWtIsamMT87zvbbtcEKFv8LPcwz8t/5wO4nT+OQFuWy6OYZtKPrhmY7IHxP8Whd8+JkpgTiRPcJoUX5jks2iIvKbwPrxDL8DivNcGJMT9J86+CirrfKpSS/ErVJlOexivT0ZRsq9dfhBLlQ6DQh8ClvN92dSArCm10ykS6eek1FNEVCi9qW/7GGz7zuxz+Kb/+5x03giNk/hDtMn3yVyz329yJWeQ/nxCgkBKiqvVdCLpfllcFICJG7GfDnbtkxHL2/FBbW5a04Awja4HXPUK1sI1h7pR2uCrrdWiGtc1cYfXOo5daQXR8Fv0Vw/bOIR9KiwRCZymM9ogUgFMK0aQTOQpYF3Uj7OUWNDF/ab+I5RSsrESDXKfE6gL2VI/k1wrEFL6tBi8zSCT45Igpx9taUZOd9z8/O/71OnEmARK6jZokaXc8aCBMDa/nUiYAEj7laU64y+7z3kkOHpHB3UXYUm0uTaQUXDuhj59jxQ2u9LMp5R11uWnYXqJTW
Content-ID: <25D5C0D394FFCB4AB26D9D6D5890582B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bfebed43-aad4-411e-9baf-08d792c9aded
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 16:58:39.9437 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /Buq0qagEN8yNoOPRFNPc/ruIBR7ia0hL7Qijl3L5Qc9wXUmL+pvOEbsikFxpeoLp+Qe4xBW8q/j1SKX8MdS8x6BHu/uKhlmMaVZNBfXfCk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3944
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_085850_365493_929933A1 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: robh@kernel.org, alexandre.belloni@bootlin.com, kamel.bouhara@bootlin.com,
 wsa@the-dreams.de, Ludovic.Desroches@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05.01.2020 00:39, Peter Rosin wrote:
> On 2020-01-03 10:49, Codrin.Ciubotariu@microchip.com wrote:
>> From: Kamel Bouhara <kamel.bouhara@bootlin.com>
>>
>> Add the i2c gpio pinctrls to support the i2c bus recovery
>>
>> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
>> ---
>>
>> Changes in v2:
>>   - none;
>>
>>   arch/arm/boot/dts/sama5d3.dtsi | 33 ++++++++++++++++++++++++++++++---
>>   1 file changed, 30 insertions(+), 3 deletions(-)
>>
> 
> *snip*
> 
>> @@ -639,6 +648,12 @@
>>                                                        <AT91_PIOA 30 AT91_PERIPH_A AT91_PINCTRL_NONE   /* PA30 periph A TWD0 pin, conflicts with URXD1, ISI_VSYNC */
>>                                                         AT91_PIOA 31 AT91_PERIPH_A AT91_PINCTRL_NONE>; /* PA31 periph A TWCK0 pin, conflicts with UTXD1, ISI_HSYNC */
>>                                        };
>> +
>> +                                     pinctrl_i2c0_gpio: i2c0-gpio {
>> +                                             atmel,pins =
>> +                                                     <AT91_PIOA 30 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP
>> +                                                      AT91_PIOA 31 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP>;
>> +                                     };
> 
> I'm curious, but why are pull-ups suddenly needed just because the pins are
> used for GPIO recovery? Why are pull-ups not needed when the pins are used
> by the I2C peripheral device(s)?
> 
> Given figure 27-2 "I/O Line Control Logic" in my SAMA5D3 datasheet, I see
> no difference as to how and why the pull-ups are applied depending on what
> the current function of the pin is. So, if the I2C bus works w/o pulls, bus
> recovery using GPIO must also work w/o pulls.
> 
> I.e. the device tree requires you to have external pull-ups on the I2C bus
> anyway, so why bother with internal pull-ups for the recovery case?
> 
> Changing pull-up settings just for recovery feels like something that will
> inevitably create hard to debug surprises at the least opportune time...
> 
> Or am I missing something?
> 
> (I'm focusing on SAMA5D3 since that is what I happen to work with,
>   but the same question appears to apply for SAMA5D2 and SAMA5D4...)

I don't think we need the pull-ups. I will remove them in v3.

Thanks and best regards,
Codrin
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
