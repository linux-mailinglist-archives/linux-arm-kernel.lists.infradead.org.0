Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7125E1A0ED3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 16:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WzZ5qAv2zkS9xhym514EzX+uXkjH1WR/ua/AzKwEId0=; b=J/o582aDxHHhd0
	P+JBoLrSTH97xqJxrziDc6jA9+B1m0Qvbg05vzmGxZQr9VcV+UnKpKIhXV0Lgri+jCdKBXzMRX/oq
	fJJXjCiUQXr19g/pzsPgLeLmXPtD12xHaliyeasGw2sJrFadt0zVBUJUXo6jNssHNHCKDalVT5vUE
	L5ptHgAJXO4wCbqqCGwLhGeGfmvUjYwn6QaEzqKedaiqC5pO86jcPUlrT8jlkJA8/+yo46mD6MXK9
	mfFRqr2J1VHhNqC0EP1To9oAbtKO9pGELtVgD0MY0Tc6hZf2g7tvjMBZbvWH5WjxkrKguRx3WIX7N
	3c6rpUuvvW4NVNi+cCqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLoq0-0001oJ-9n; Tue, 07 Apr 2020 14:04:24 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLops-0001lF-Ft
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 14:04:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586268256; x=1617804256;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=cu2xeQUDjBBE37z76xOQ1L3cq1QISnJEKLlf7ySpSyQ=;
 b=hjlaedXbcC0uZ+BErRHN9yhbsBQEWl3B+xbMXu/GjhtYe1tLMIWwokId
 dEQ0N3tEJMYI9LPKr6/SNEnpVOhxlG47/7VN3lAksL3cW49tz7xo747Mg
 zUOKHLZtfN15Vbj38dTgE8jGDxdd1FHZMKNljO6igItGjmlsy3XGj3yob
 SbcGKwGTbe3H4Qdk8lVVcu6vEvgVkw+roJ4gPoQ+E66UiRzkOCQ+HFhBq
 YQ92q2NXtCYAE4UCWRUAW1w2ivR0Sfgwi1oOr1wLrorTg6DSsCKNNd2MH
 cHQNuEkGJKZYyhtWylkyc22ZU81EXszYZV6cNkoRn5NT5G3E8/UeS5RQ+ g==;
IronPort-SDR: aSAo+oYOClxrezj4gEVQp7X6DcTZni2yl7sVJjYswQ3G+cA43Ss+vAQIL0O+51GeF5WCXeYxrD
 JNQbofB4p/wSTZtlskakSHDEbTwAVfSfIwBL2Mhr1NtnRACWcawtvAeRg2pHcwjsmVnxKFnu2x
 Cx1bpjWzjehbKqGZ8SQVCT7vWXY7ab1Qa6WllU6TFJgDHvHbzqBZzeSWnGkyUhwCkr/s+JKWbd
 BS/4etpy9wr0hmMHZ8C9cJmo6+KNnGdUce2TnF3ut+w6ouGpuaSUI5ilSHoh2NVl18+pfKe7Kd
 C+k=
X-IronPort-AV: E=Sophos;i="5.72,354,1580799600"; d="scan'208";a="69648868"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Apr 2020 07:04:14 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 7 Apr 2020 07:04:14 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 7 Apr 2020 07:04:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FD6bBR+mqnMGYUbctwUbCDBg7Hr7OqK+/CsjLftqAqCmfVWxcBv0D+GBA5BwX1S3VW+ZfB1m+3rQIaZFqj7V68Oi3tEuRFERaLts6W+zeTSNy7gmAmbKga22IxRHAElRocZ/Zr7iBY/B7IZoVbRvVrK0FTlw0AaVAaoYK/JnA5Y1DG3WpSYfFGK8UM8lMD6UZa/DrqGorYFTAgUzOn33iEUBlLKGwle3fdzz6ypmXzS2LxA/wOHJzjy+hcshApWfX6FB1rVRD92D3NfanK9Ek/8g9T4N3FgMg8ujHrHG/3PnTeylxQvLEq8PllM43+HAqK3Fox5RyxrNk5ZIezoMbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cu2xeQUDjBBE37z76xOQ1L3cq1QISnJEKLlf7ySpSyQ=;
 b=DgcC2Wo8sBhk7eyGwA0KK7Jhrxz394bES/RVz69mxy2rj0d76Rr3le6vGOThHt6kvPf5VvFnAulvdC2XVP58lxHxaUqRnbaCvQCMATzyrF2qo7vMoJG6EfPopqdExIi7P/NhCnLC2Q/Unao3wD4lYkyGEMS7S3fFV+uX47yqrbvxWAZse2LgLX2XChgqd4xA6uefTVTAIRhoNPaKC31uvxKtptH8VRzEezV5IOvL/kCQ1/orja8BwFjb29tVLhf1hJQrDiky+XnwLq4HkEhGjnt6jiz3weDBOQAqoq1SxhJx5GhmLU9h1rbdaJgjm+VNphplavbOMLJzV5qu9klV6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cu2xeQUDjBBE37z76xOQ1L3cq1QISnJEKLlf7ySpSyQ=;
 b=vDidLKvzYak2rtQTgnTeen1SdXL2kBvBsJY7k+vSwadAVmg7WeUqSJOLD61xVc50EGjSQZL1OW/WVhzv/gcfLPgDGGz96dAdppFNN0x7eeynr3KxfkJ64WpHJ+IOexf8iOgEFUrGRUCha2X5plT1L5ndRVIyjjCXAr7h8d/UKqI=
Received: from DM6PR11MB3082.namprd11.prod.outlook.com (2603:10b6:5:6b::19) by
 DM6PR11MB3353.namprd11.prod.outlook.com (2603:10b6:5:a::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.15; Tue, 7 Apr 2020 14:04:12 +0000
Received: from DM6PR11MB3082.namprd11.prod.outlook.com
 ([fe80::b1e1:1148:5130:3e7]) by DM6PR11MB3082.namprd11.prod.outlook.com
 ([fe80::b1e1:1148:5130:3e7%7]) with mapi id 15.20.2878.018; Tue, 7 Apr 2020
 14:04:12 +0000
From: <Cristian.Birsan@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 2/7] usb: gadget: udc: atmel: add compatible for SAM9X60's
 PMC
Thread-Topic: [PATCH 2/7] usb: gadget: udc: atmel: add compatible for
 SAM9X60's PMC
Thread-Index: AQHWDNhiGgvQ+kD9dkSS4M+c+kjssahtqt+AgAAGQ4A=
Date: Tue, 7 Apr 2020 14:04:12 +0000
Message-ID: <9a8920cc-be8e-16f7-3cda-ceb349f84232@microchip.com>
References: <20200407122852.19422-1-cristian.birsan@microchip.com>
 <20200407122852.19422-3-cristian.birsan@microchip.com>
 <20200407134147.GI3628@piout.net>
In-Reply-To: <20200407134147.GI3628@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Cristian.Birsan@microchip.com; 
x-originating-ip: [2a02:2f01:5825:1b00:3c12:302d:fb00:70e]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0adb271f-edd2-4bb2-4a60-08d7dafc8cba
x-ms-traffictypediagnostic: DM6PR11MB3353:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB33530E7A2F341950CF081330EFC30@DM6PR11MB3353.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 036614DD9C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3082.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(366004)(2616005)(8676002)(6916009)(53546011)(81166006)(81156014)(8936002)(6506007)(498600001)(107886003)(31696002)(966005)(36756003)(4326008)(86362001)(6486002)(6512007)(2906002)(66946007)(71200400001)(66446008)(186003)(31686004)(54906003)(91956017)(5660300002)(76116006)(64756008)(66476007)(66556008);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 42Zyvl4X0o7VNnVSAxHIPuisaL+4TWcyIZQ9IxhJv5U070RKnZr11RGx0r21hDm2ntcasv9byulVySVDRcp/wBJWWHX8MoJd4Vfn6c7ckpAsvgbwvWcxCknYWQOlEC66LEwN1FmgkG9Lwlkwf5O5UGH8tLTPd33ggXD0J0Upp9GUNiF9SehSNOb3jl0WefmAKPy8Hn89ypwMU5FKEyujsFTLEZkEjmRBDY9zAQhzcN+P4KE6Fsl15eMByvfv5CmkhBP5jXLmAYj8/jI2XPTOCTdnX9GCTt5SSfm2otjzSqZy7Q7gPSfYzJ7Xv3a4Vc2On1F7WoUP3I7KyqkHCtG2Xkq92FjZh5SeshPQ2BJ4E6twsCaqqZo5/tohSBP7adNAMiscdxXePkxkZvO/GIwiQc0+jJ6ifPCdUiSFLEYxcAbCY3tlkAzRiXliVsIIraUFI0x0NqR54FYjE8/IJJ7gPMhzGYklD9rSpxR9N7TaXQgWvdnppR4/AbSvHHF+krJnQ+IfPO+mh8Ixo7PAZWbgIQ==
x-ms-exchange-antispam-messagedata: S1Bs+/KtBFh9fexRGdbeZFezdFqVzHCruTgZ8jRW2IgoDbH0ENPEpYdcII8KrB+KVK70Ch2u5vYoDIFJuOPayBV4tAt91El34oXC1ERFDhwKbUiP0SBdCh2Pb1vdhoqVCcfDRqFCf/WadSCmt2+pA6CNNy/XiaTXrEURf14ITnKuR3AeVDfgM49GdOT0HHWN2tEk/JTilNH7neoJLAxoFQ==
Content-ID: <B990BB84F197DE4BB0D9D6CE923DE312@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0adb271f-edd2-4bb2-4a60-08d7dafc8cba
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2020 14:04:12.2498 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JzaVR8f7IEeZ4VvWZxNctZqapEefyHRUKGHxdIB1lfCo5PRt0XEoTgB9mOTQ94foi9bUJAFTMb+lP0tif6wq1+gXXMfLOxa70B5MhWhxqx4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3353
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_070416_579662_BB5C27BF 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: balbi@kernel.org, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 Claudiu.Beznea@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/7/20 4:41 PM, Alexandre Belloni wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> Hi,
> 
> On 07/04/2020 15:28:47+0300, cristian.birsan@microchip.com wrote:
>> From: Claudiu Beznea <claudiu.beznea@microchip.com>
>>
>> Add compatible for SAM9X60's PMC.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
>> [cristian.birsan@microchip.com Add sentinel at the end of the array]
>> Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
>> ---
>>  drivers/usb/gadget/udc/atmel_usba_udc.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
>> index 32e5b44d9fbd..c50902b91a96 100644
>> --- a/drivers/usb/gadget/udc/atmel_usba_udc.c
>> +++ b/drivers/usb/gadget/udc/atmel_usba_udc.c
>> @@ -2056,6 +2056,8 @@ static const struct of_device_id atmel_pmc_dt_ids[] = {
>>       { .compatible = "atmel,at91sam9g45-pmc" },
>>       { .compatible = "atmel,at91sam9rl-pmc" },
>>       { .compatible = "atmel,at91sam9x5-pmc" },
>> +     { .compatible = "microchip,sam9x60-pmc" },
>> +     { /* sentinel */ }
> 
> This patch can be squashed in the previous one.

I'll squash it in v2.

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
