Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E57941A6455
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 10:51:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LM0NHqvB3ZAsdQNpZKOEMmISg3IeVNFIKcygs9a8diw=; b=UHTuSiBSegVw4O
	mV/iUGULppvIV1L1Iqf3Gc6/xZM+W80iXHmoEs2X3f2As4d9HGF46o22A9AFNNC7WbiiIOVvsgHLh
	Anakp2XJ9RzGm0Td93nPxWA9ybkZ/NQksigqKi2VU1Q7judA8EIXUeatXa6R9SqdCDNpVVvD87zPK
	jUDH6zvpx/OkXBIxeL/RYjlPTpl+qDmXQq7KlGHMpgRbC6MW8e3doDtkYNXIGaInB9TPCmRTiwR0L
	sFnxAoxS+wUf6N4xKlMJGtM/pvTeJmyZ4e8nvGtSioTnxga9/KEVvMAAhQSKIP4J8cAOi/Mgi+Qt/
	mhtaBtHrlnCxiIjHVT9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNuoO-0000Mx-Ao; Mon, 13 Apr 2020 08:51:24 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNuoF-0000MT-3i
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 08:51:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586767874; x=1618303874;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=A/BfzDM0SiCjl7M5EmTj6SXKtRysbudhvxwHBw3R5e0=;
 b=cBIRhc2iMCHKJ9bNEsCFhOrUsRDPwweiNtJooFRnTntH+WkkeCJB0pZf
 ULA9xzd5X2kCSE6KCsrCfGcz66G3X1ix8RG5GH5sf8MYKEISm18JMGo7W
 ItjOtvLqWVSXm7Vq1B4ksV94xHLMij8yDcQO11mCEoUcls8iF+zPJ7ICL
 zgIL5ZXSsiDYVlplioHTw5Nb7N2XUBZJbKMkL4FRPzcMFQEZWC58XB09y
 fiCCOYlE20zGbg95Sz1mCdc3+CZkphwFZxpSqgVqhLJYbQ4Vutub4GZUk
 2gwm3vQ7CnIQuqBq8GcM+yCF43nb5TbGNyRcY2AbWUhWMu03RcSYa5mAv A==;
IronPort-SDR: xrUkWg1bsWSDOG6w7WtiCZPrRWeNBNoIXhHzxedhOKwm8saNQuq9RXXOXoiuZiBT8llRaD2tL/
 khwulhjYm0DAEF8+8FQ6lnZmzspwSYnIyblitMksIOibZdn3sFnkPJP8C2cAxIxgZXpz4bnUx8
 PxtNul+f2hRX7gJa1CVMQVkRaGjA6Y/3Wk3d1ZcIXaN6x+bxMV/vt5KnkN67ivbOXRXuyb7S3a
 d4J2+qRWneqCCGSHOG04rr0mUBH5N7DlPDzC6ltvbuXfcOwwAsmuOa43kUEYoJSfpO0zfHLttS
 wJw=
X-IronPort-AV: E=Sophos;i="5.72,378,1580799600"; 
   d="scan'208";a="8939627"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Apr 2020 01:51:13 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 13 Apr 2020 01:51:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 13 Apr 2020 01:51:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UImM2AzJUbKY3D59hPeswaYhddaNanAFeZK6+7q1sg+F05SU/qJ2zcgCdhZOcgLCPiC/VnwwPr75Nwrrxq3keUWdyBUqPEqUC5L50trTr/NDb5tQunuB+ezi6BLNhoMydR01Ya97eqBKor448qCB9WNc1FsQT9KQcSaiKznybH4Y8Ta2bMfSQaMQuX/3cniAw+vnQ51u6bfUJ1uh4jA7YkEJ2seOHj/hHvonNH33moMUALG6emciKOzoRMfnSjS0WNTqmkNN7uxzpgkU94yjpFZ1P4jR2ola+B1dnkRXFxaRzKfrocubHyECtsHc2BelzslPD+DuWL9r0fed9DmPIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A/BfzDM0SiCjl7M5EmTj6SXKtRysbudhvxwHBw3R5e0=;
 b=asdoSECeXzeNWk4pAMfW7pA867/yatqDFAh31/JGC29/rCE9qjGu2nJYndujdjZd8C7QVgpEBixnU3xicHBEh+r7hCW3tjxR7lZsuhHRQEjqg1RzXxdKhQacozgPHbglUo6rfWZznEhWDuK8q3iqRg//fR/SDWvjwS+lu84YXOCvGDIvr4kWC3rXHFDaAnbAU26rwHdN5QS1mElgA6Y9Tv4xgmzUBoMqBreUtZn/fY3IY6j19+2LxB/Ps1AeJVMIta1Z0jig+SpbBvwdJg+XiFIQtYj51/kTKyB0JIe5cqVPu7aNXZ9fXZdiWs28USJIkTh5EDbsvZxvDb4GNXt8lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A/BfzDM0SiCjl7M5EmTj6SXKtRysbudhvxwHBw3R5e0=;
 b=Lr+2Q+eHTG8x6QdQx4l32ePToMureYk69nVutiGhQA+yHxfeajzGHHaWiazNq3h0b9vtRG8IxGhQ60RIg6uKfFu6RiHrd45vUnGbHRfYySBSpLWKf2jhf2xLLzwT0IIj2aT6Zr3O06ROEcHSszdGr+rG8usyA2xmOsmE/oV0/l8=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM6PR11MB4010.namprd11.prod.outlook.com (2603:10b6:5:194::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.26; Mon, 13 Apr 2020 08:51:12 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa%7]) with mapi id 15.20.2900.026; Mon, 13 Apr 2020
 08:51:12 +0000
From: <Claudiu.Beznea@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 4/5] ARM: dts: sam9x60: add rtt
Thread-Topic: [PATCH 4/5] ARM: dts: sam9x60: add rtt
Thread-Index: AQHWEXCuyP8yxRbKYUqiuXPeALwxyw==
Date: Mon, 13 Apr 2020 08:51:12 +0000
Message-ID: <c4d46198-488b-c5d6-2a66-865a16840dc4@microchip.com>
References: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
 <1586536019-12348-5-git-send-email-claudiu.beznea@microchip.com>
 <20200410222658.GB3628@piout.net>
In-Reply-To: <20200410222658.GB3628@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Claudiu.Beznea@microchip.com; 
x-originating-ip: [86.120.235.162]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: accfc48b-0cf1-4354-300d-08d7df87d16e
x-ms-traffictypediagnostic: DM6PR11MB4010:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB401078BB1D2570983A55A3CC87DD0@DM6PR11MB4010.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 037291602B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(396003)(376002)(346002)(136003)(39860400002)(366004)(7416002)(36756003)(66946007)(26005)(2906002)(66446008)(64756008)(66556008)(66476007)(76116006)(91956017)(6512007)(6506007)(478600001)(53546011)(54906003)(316002)(966005)(2616005)(8936002)(8676002)(6486002)(86362001)(31696002)(31686004)(6916009)(5660300002)(186003)(81156014)(4326008)(71200400001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wUjRAC4ni4oCUUqv2n/iw67ziHROVh1ubFZ/6ZOpq5FtjwTNOcbbIe0UNFDpOeaTpvgW8rjDzLn0Kl+27Gsj1DLjveIMVBpsnI7MHXE1aX2oGTonvXrCHikdecVq58vooeiKycSFVUTr+qchN09D25loWgIERQcGjV8O4fGNuCn/W5MNxXodkEDv2I9CB1V+c6r0nKuOm87b1QR4WQA3UBCNYUEAMflUdXWCJbxOk5lTbRhf9Cu3YqPuEs9VraHPpFY/wNp6XHWPdDtHW5825Pc6Xs2fkaZdJHftZxnh26XFOnQl38gJBCfQ2igC+lKbTcPuAh2fnvgThovk0u081/GZkEVaDzNrlnzaPjp2H351Xlv9Zz0RlUde2qKvpkBkBz9QT0NEXn8sxPsYhzdJOdHiAjSkGeqyQXRLPKmbsthWW5UEJl3Q160flDbpTlXF7yZbU5qydswuWou95Y40zLzfKoFqDoiAtWZSnCUS1HCv9eGz/ZExwswAAOyFgM2OVS0Rvph80xiF8LPYdXIeKw==
x-ms-exchange-antispam-messagedata: qFFFvktiDwk+i/JtkkbA2/AbcvJz/5ll1hATFh5TqW/8FTX7SnE9DEPrY+YoBcrXUata5Q7TLVaEA6Lk1aWdmdbuQlCMlqgm0PSKbTJEr6ZRuxiNOeBllxzee+5HhUfdXeYhZdTgj/Zfc19hT6hPgg==
Content-ID: <45CB4E31E730EB459A36BB36E22C6AAA@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: accfc48b-0cf1-4354-300d-08d7df87d16e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2020 08:51:12.1673 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rZabScQp4KvMpaIbQQWh+OYdXA1mP4Ju/91TF/+vcKrezzHXQBadtdlca5bjqDjkInKmMXC/2NCj9ot1/xPbsvixFy0knMqfdADIUGNe/Pc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_015115_204147_7D8E89C7 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, jason@lakedaemon.net,
 devicetree@vger.kernel.org, maz@kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11.04.2020 01:26, Alexandre Belloni wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 10/04/2020 19:26:58+0300, Claudiu Beznea wrote:
>> Add RTT.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
>> ---
>>  arch/arm/boot/dts/at91-sam9x60ek.dts | 5 +++++
>>  arch/arm/boot/dts/sam9x60.dtsi       | 7 +++++++
>>  2 files changed, 12 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts b/arch/arm/boot/dts/at91-sam9x60ek.dts
>> index ab3d2d9a420a..4020e79a958e 100644
>> --- a/arch/arm/boot/dts/at91-sam9x60ek.dts
>> +++ b/arch/arm/boot/dts/at91-sam9x60ek.dts
>> @@ -617,6 +617,11 @@
>>       };
>>  };
>>
>> +&rtt {
>> +     atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
>> +     status = "okay";
> 
> Is there any point using a gpbr register while there is already a much
> better RTC in the system?

Only to have it also enabled.

> 
> In any case, this diff should be merge with the other at91-sam9x60ek.dts
> change instead of being with the dtsi change.

The changes in this patch are related to enabling the RTT. The other dts
change is related to enabling gpbr. The RTT uses that enabled gpbr -> one
change per patch.

If you still want to merge then, I'll do it, but then it becomes mixed.

> 
>> +};
>> +
>>  &shutdown_controller {
>>       atmel,shdwc-debouncer = <976>;
>>       status = "okay";
>> diff --git a/arch/arm/boot/dts/sam9x60.dtsi b/arch/arm/boot/dts/sam9x60.dtsi
>> index 326b39328b58..e1d8e3a4cb0b 100644
>> --- a/arch/arm/boot/dts/sam9x60.dtsi
>> +++ b/arch/arm/boot/dts/sam9x60.dtsi
>> @@ -661,6 +661,13 @@
>>                               status = "disabled";
>>                       };
>>
>> +                     rtt: rtt@fffffe20 {
>> +                             compatible = "microchip,sam9x60-rtt";
>> +                             reg = <0xfffffe20 0x20>;
>> +                             interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
>> +                             clocks = <&clk32k 0>;
>> +                     };
>> +
>>                       pit: timer@fffffe40 {
>>                               compatible = "atmel,at91sam9260-pit";
>>                               reg = <0xfffffe40 0x10>;
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
