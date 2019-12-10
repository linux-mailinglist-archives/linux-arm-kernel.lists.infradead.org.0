Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AF1118BD7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 16:00:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bs9VbGPauahMATq/itoENWf4bxc20Tt4gp0SEmnmEM4=; b=Wq9udcr1qFBtij
	8ERb8P+Ep7jAjSxwgxrUh5hXhrU/+pMk0VA23tOSiHuqJCybF2RatJQK1ggbdT3CRZUJxHcQ19g67
	FL2dCBUQ7ra+BFWmolc09LPIOmPBNbwXW4/dn8X6Z9mr7PpkARsy5oQF7zk3TLULJy/d34aB+PmyM
	/aRZ+J+htNNURV9ua58Vr219sG2J/jMJ87/p+wYLBZw8ismFv+an/oBUF4To/2hBA+C7pSg3x27Rf
	5et50nAMRhQ5GMtcWl6xXnvRTtm3X02ql4CDfd3SgC+ijSJpspgKMxFMK7JEygdzRyEqGfHqftkKj
	MtekVw+lYTYWxaA16uXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegzb-0003Kq-2U; Tue, 10 Dec 2019 15:00:03 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegzN-0003K8-6M
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:59:53 +0000
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
IronPort-SDR: 7roWAOhkkK2F7v04El7QQMCEgRT9+xvYktYFbUDfyj5SVevskspWdtR5+sf1Xibh8b94bEU7zy
 /4OkI+DpROWAccKSdQoZ3lOpL+C3+0u8reMwpucAZ19J0FOcfHhYqeIjK35zheZ1TwEdvcjpRd
 BiGtxrJPvnOFeyzHu5uuTHHInQ9gyEyvyPmGonkJklqmAnT9W4A/uvCOEFKZg0xHlpGtlULGr7
 PpuqQoJwiy1YPP7FGZ2xFriiGDGbYCfBsAQ/JONTLXN0CtkCQP4mLFXkfrIKoURQmfEBQvxaSp
 dSY=
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="59858321"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Dec 2019 07:59:40 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Dec 2019 07:59:40 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 10 Dec 2019 07:59:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iIwlj1rEfO/c5Mew/klr+ih3kLDtfHRNfNYOM1h/JsMaOqL0A3II+b3lp65gBVdQkXEccbZKhnNbyJW4OdOGJPPRsc1zy7oySqS42a12HCqPIFyaIESwQo8kTaQtPDBlEH/c0qAt8p32So9yMC3Fk/b+3rdMgcaPjVcHGFSrnRwEDLx5MaILrvamUcKsdsqpNrnCvKIGUwIw6AhmRL+XkHEjo+Y4uuP11mDVi5JyOFTNvKiKtRva73Bor7lWXMV0r9ZH3YNUL2K5qSJhhOmJGCXcSkagNnv9/VkB+R0yZDlviGk0XAaWuD0DMxP/03+lxqmBeelXpd/sQUUP/lWl6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xanWn/6iTYztMNLTMXYbWTOedVTOOPlaQFk4RqIf2Ng=;
 b=ocmLWJ56subOZoXF+AMflcm0x94M9OnaIbO/ptxQRvjLzeg2CsEgUmt6ykV4z71S7Vc7O7FHGuzkT61BXiAD1iH8AYuN5sfQBicJ0XhXpitz32bgAzCmXMoIOikPtxPmTcBW6L61+Sb4DEFoFhbEbgwvMBh6HL7mwyiQjF+7g/m6TLp2ohPoSI7ootdo8RHuKv4WxnSLyKj/SbD+lUBF/MIEAl5CiKX1Crw/C3uimPj0aXZs9A8e/GHX0l6TXZl+MMsRygv2HihhlwWqY7boNx1VaUF4q799zCNQ+7/5EXRtgK/4bpq16G0vlwSpfaBtLKjV0evxUE+bEursNx1rmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xanWn/6iTYztMNLTMXYbWTOedVTOOPlaQFk4RqIf2Ng=;
 b=hDWiG9NVHSt2QQKslgKXLcmE1GSwGLvoM3IKNC4b4IQFy4E2JqduvmFWazQnMbkdcVfxdd88oVZzY6i13uOAnkIow+gi6A5+kt8rWB7LkdvEwKbXYTy8ez2Ghc4Ge3uTzYH0ZAEsT25VS1m1ytiyxDfQpAaS3Z6pa/CsHzBKX4M=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB3131.namprd11.prod.outlook.com (20.177.219.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.12; Tue, 10 Dec 2019 14:59:27 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::ed7d:d06f:7d55:cbe2]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::ed7d:d06f:7d55:cbe2%6]) with mapi id 15.20.2538.012; Tue, 10 Dec 2019
 14:59:27 +0000
From: <Claudiu.Beznea@microchip.com>
To: <peda@axentia.se>, <sam@ravnborg.org>, <bbrezillon@kernel.org>,
 <airlied@linux.ie>, <daniel@ffwll.ch>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <lee.jones@linaro.org>
Subject: Re: [PATCH 4/5] Revert "drm/atmel-hlcdc: allow selecting a higher
 pixel-clock than requested"
Thread-Topic: [PATCH 4/5] Revert "drm/atmel-hlcdc: allow selecting a higher
 pixel-clock than requested"
Thread-Index: AQHVr11ICLJHO/IKjE+yoyNQ0RZUOKezaMEAgAANUIA=
Date: Tue, 10 Dec 2019 14:59:27 +0000
Message-ID: <5fbad2cd-0dbe-0be5-833a-f7a612d48012@microchip.com>
References: <1575984287-26787-1-git-send-email-claudiu.beznea@microchip.com>
 <1575984287-26787-5-git-send-email-claudiu.beznea@microchip.com>
 <4c3ffc48-7aa5-1e48-b0e9-a50c4eea7c38@axentia.se>
In-Reply-To: <4c3ffc48-7aa5-1e48-b0e9-a50c4eea7c38@axentia.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR05CA0092.eurprd05.prod.outlook.com
 (2603:10a6:208:136::32) To DM6PR11MB3225.namprd11.prod.outlook.com
 (2603:10b6:5:5b::32)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191210165919625
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a640e656-4db3-4a8f-bc62-08d77d818d83
x-ms-traffictypediagnostic: DM6PR11MB3131:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3131144BB573F8B249368331875B0@DM6PR11MB3131.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02475B2A01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(396003)(346002)(376002)(189003)(199004)(52116002)(186003)(36756003)(2616005)(66446008)(64756008)(66476007)(66556008)(54906003)(478600001)(71200400001)(316002)(5660300002)(110136005)(66946007)(6506007)(31696002)(86362001)(53546011)(31686004)(4001150100001)(6486002)(26005)(2906002)(4326008)(8936002)(6512007)(8676002)(7416002)(81156014)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3131;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MKeENpO2+WW08vUOP3lK9gK+Fq5DR/eV4Vs+13ZKdCWnDdc9BjW+UIjhu9RdA/nL/lb2eVzPH8B1F1X7AcrAcqn5xHsRlfT6bG6aOyFb/zFgAWwoRU/x6XnPOVUqbB4gkWl2DUVFUtCd5cAaK/SxXYU22pFlZWUUh5GAXYOZA4pguwsafrNSu1l2RxXiFma+oUS8JRefGwqvuUC+KpCCF2dWW+LCN3ENVMDHgwdji0gCvrfIBfJoLvCY7Kk3XmJZahD4qkChuvGntzYbyLB/SzCy2kshMRW9JKk/i/WN7qYnSjewffQ1H8lR1hi46XgJeHmWK6QbuzWATZPRMwZ1twA9MKZH5pNkwsXy8bqrYa8ZxMasgrszXSrxV8ehPM1+M0tn0ZpXczXeHdCjpQ2DQfHFIu0ZaR1QokHNbTfOVlXeRKWOo9+l80Sm9he78qhm
Content-ID: <0D14EA4E3298C047A1E4CAA6748AAF3D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a640e656-4db3-4a8f-bc62-08d77d818d83
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2019 14:59:27.6227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NVQKx4QjGYqDvmzur9cGSbH9MuGBoR9+q9DscqQ0Q8NjHDpCpJSTTNH2wo9gs8RI6fEGam8Fe2AvKKDhSBRrN8KQWzAvvjHQ3DYaj292VPs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_065949_288890_75FFC29A 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10.12.2019 16:11, Peter Rosin wrote:
> On 2019-12-10 14:24, Claudiu Beznea wrote:
>> This reverts commit f6f7ad3234613f6f7f27c25036aaf078de07e9b0.
>> ("drm/atmel-hlcdc: allow selecting a higher pixel-clock than requested")
>> because allowing selecting a higher pixel clock may overclock
>> LCD devices, not all of them being capable of this.
> 
> Without this patch, there are panels that are *severly* underclocked (on the
> magnitude of 40MHz instead of 65MHz or something like that, I don't remember
> the exact figures). 

With patch that switches by default to 2xsystem clock for pixel clock, if
using 133MHz system clock (as you specified in the patch I proposed for
revert here) that would go, without this patch at 53MHz if 65MHz is
requested. Correct me if I'm wrong.

> And they are of course not capable of that. All panels
> have *some* slack as to what frequencies are supported, and the patch was
> written under the assumption that the preferred frequency of the panel was
> requested, which should leave at least a *little* headroom.

I see, but from my point of view, the upper layers should decide what
frequency settings should be done on the LCD controller and not let this at
 the driver's latitude.

> 
> So, I'm curious as to what panel regressed. Or rather, what pixel-clock it needs
> and what it gets with/without the patch?

I have 2 use cases:
1/ system clock = 200MHz and requested pixel clock (mode_rate) ~71MHz. With
the reverted patch the resulted computed pixel clock would be 80MHz.
Previously it was at 66MHz
2/ system clock = 133MHz and the requested pixel clock (mode_rate) 60MHz.
With the reverted patch the computed pixel clock would be 66MHz.

I took into account the patch that uses by default 2xsystem clock as pixel
clock (and this was on a system that supported it).

> 
> Or is the revert based on some theory of a perceived risk of toasting a panel?

It's based on the use cases I mentioned above.

> 
> In short, this revert regresses my use case and I would like at least a hook to
> re-enable the removed logic.

I see, but, FMPOV, you have to take into account that some of the devices
don't support it.

Thank you,
Claudiu Beznea

> 
> Cheers,
> Peter
> 
>> Cc: Peter Rosin <peda@axentia.se>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
>> ---
>>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c | 12 ------------
>>  1 file changed, 12 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
>> index 721fa88bf71d..1a70dff1a417 100644
>> --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
>> +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
>> @@ -117,18 +117,6 @@ static void atmel_hlcdc_crtc_mode_set_nofb(struct drm_crtc *c)
>>               div = DIV_ROUND_UP(prate, mode_rate);
>>               if (ATMEL_HLCDC_CLKDIV(div) & ~ATMEL_HLCDC_CLKDIV_MASK)
>>                       div = ATMEL_HLCDC_CLKDIV_MASK;
>> -     } else {
>> -             int div_low = prate / mode_rate;
>> -
>> -             if (div_low >= 2 &&
>> -                 ((prate / div_low - mode_rate) <
>> -                  10 * (mode_rate - prate / div)))
>> -                     /*
>> -                      * At least 10 times better when using a higher
>> -                      * frequency than requested, instead of a lower.
>> -                      * So, go with that.
>> -                      */
>> -                     div = div_low;
>>       }
>>
>>       cfg |= ATMEL_HLCDC_CLKDIV(div);
>>
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
