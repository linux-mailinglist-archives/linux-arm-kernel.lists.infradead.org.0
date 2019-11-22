Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3935610755F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 17:03:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7JhUHrkXUtrXDKxvnOx/72IFETVj480e3b1Z1ukfuw=; b=Q5FIlbDFj2DGAJ
	Q0LDUabVxcuoT13pYU3Pq6ZuR1HAtxEqcxGzeTJV+pnbYYMRE8tFy45C+KQj7whb6c4P2aBkyNjth
	B3gPOe/aenZlaHlLJasVjqFhaaZid6HO+Dklfk9XQu+L97jwtQoONb0ch4DptyZQpsnn6HV5zPFWZ
	5mNb7WRsnkZOkBqDnN4JnezkB5SNLDBPqXkS4LECtLl6xkeGYg8bYGA3+tLxUA7xBDy/FWGZHm7BA
	gsO8fAkt/w2lYDnMLHTvIlcfSccUjSd0/4q9uTcj50J+36cvj2mRqk27oIYMRmeSfdMnoD5bMy17B
	DB36SzXJ1JhYC6UXChcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYBOk-0006Qj-HY; Fri, 22 Nov 2019 16:03:06 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYBOX-0006Ph-FR
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 16:02:58 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Cristian.Birsan@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Cristian.Birsan@microchip.com";
 x-sender="Cristian.Birsan@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Cristian.Birsan@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Cristian.Birsan@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Nx0V0K1OKIv/oESW+yKOLgwogyrHhASJn1qeSnkzITBbqYwuDwhjUsU9mOR+XtV0A1Wshk74Jr
 s3hZ+fxIxF3aVpz+qkK4P3mutXHI+qUDy/BpMcUA2jnC/sNtAK7064PPkHrLAC6NYQqtDH9hSA
 Vx5t225tEjvQblYZg5OIsvfrk7QAmf99EaEpBrwifMA8ljyMbwmcbLx9F7vBdqJ0swL98+Win1
 7LRrxm2ks/mc+Uh36d/1V/76hqhu78NqapZbxnSpv5tMXZKohJ8OGlXkKsR42yj4eGJMoF2gzc
 xZE=
X-IronPort-AV: E=Sophos;i="5.69,230,1571727600"; d="scan'208";a="55322565"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Nov 2019 09:02:48 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 22 Nov 2019 09:02:47 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 22 Nov 2019 09:02:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OlZ+0Gqe5yZ+BAFXy0YUhVg5y2eOiMngxTPUyKfvs7umYFLE1+N0Td80zKfx/FeIT7wXblKF0QnupcB1BO/f1XQP9CImvvB6zcRP3yZdUAOfhwRhRHsWl7YukvhkImqCmrhQmzS7t5nRxS91/j9bdVoKL1g5ORN8w7Z1DUN9f4PyUUB+cxtNhHfUS16mXHiDlHRU4ugha8KSsFNBmpRAUM6YROel+bdTeN/rccbNVhTHsvctZyfXeJiInW2Q5Fz4ju5PozCUc+YfW6QyMLMHeS783UtT3lrIkXMtGpPcSt6R0vr0eLvNYldPLD+C2N47iwofLMWdgDg+D2Zx9w8p3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fo/Rvvrpa/8nEUxevI4UpzHCzKCHXPdxxvoNeoWemE0=;
 b=Bp8ORDsQlzATXp32MfO3+KDCZJwQxA1ud+VwPVgKgT5dHmplMGDW1p/aPm4ZZxSiSQgtnGOByKTkF2BkjF39YB8ztrbJZp8qAxtOl5khQoFa5eJWAUaWs45BTmhVwl94yFvzAl5HjON4v4oOw0rHWfRmz6laAEwivXrhBg1lmMImCcc/k4ufhsh7nW52QRSk4aJfcN7bB7DTDEQgXsErjr8fr7EAIsunGSs2zGQi3SKzA8WRelMzM5zXEtQrKaIB6aTtfsh4n/JakgGmb3crEDONsE22oGBQsk/VkviNoUa7joYxeYgCrhTXFwqlILh0xwHrUI4H5lpZOz1tX8/FSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fo/Rvvrpa/8nEUxevI4UpzHCzKCHXPdxxvoNeoWemE0=;
 b=F2Z57Yn6P/C8f2KhsC4QcdqDOqIj63bAxZIjl35Vm+yoOWr/1BObwESJF6+SLEakIK02C5mLKq/Xg3tKYqNjwY6tk9bA2V4Mr4VNQcsCMYvY5EHcp437CtipXrY2vZrIAtc9StYe4Nzr5vWx9vt7t4mn+Io9MT9nWGtWEbxEu90=
Received: from BYAPR11MB2647.namprd11.prod.outlook.com (52.135.223.12) by
 BYAPR11MB2616.namprd11.prod.outlook.com (52.135.227.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.22; Fri, 22 Nov 2019 16:02:45 +0000
Received: from BYAPR11MB2647.namprd11.prod.outlook.com
 ([fe80::3cf1:2353:86d8:d2e3]) by BYAPR11MB2647.namprd11.prod.outlook.com
 ([fe80::3cf1:2353:86d8:d2e3%6]) with mapi id 15.20.2474.021; Fri, 22 Nov 2019
 16:02:45 +0000
From: <Cristian.Birsan@microchip.com>
To: <gregory.clement@bootlin.com>, <balbi@kernel.org>,
 <gregkh@linuxfoundation.org>, <stern@rowland.harvard.edu>,
 <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/3] usb: gadget: udc: atmel: Don't use DT to configure
 end point
Thread-Topic: [PATCH 1/3] usb: gadget: udc: atmel: Don't use DT to configure
 end point
Thread-Index: AQHVlYDym5rdrdrQREOsK+cV/BK4VqeXXUWAgAAUNIA=
Date: Fri, 22 Nov 2019 16:02:45 +0000
Message-ID: <b207c8d3-4ab3-101f-e0c2-b715becfcc78@microchip.com>
References: <20191107153128.11038-1-gregory.clement@bootlin.com>
 <20191107153128.11038-2-gregory.clement@bootlin.com>
 <871ru0x8ws.fsf@FE-laptop>
In-Reply-To: <871ru0x8ws.fsf@FE-laptop>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-originating-ip: [94.177.32.156]
x-clientproxiedby: AM3PR05CA0117.eurprd05.prod.outlook.com
 (2603:10a6:207:2::19) To BYAPR11MB2647.namprd11.prod.outlook.com
 (2603:10b6:a02:be::12)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191122180229186
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e7506c7b-d586-4cbe-7b09-08d76f6569b8
x-ms-traffictypediagnostic: BYAPR11MB2616:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB26162F901C047426314B7F5CEF490@BYAPR11MB2616.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02296943FF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(136003)(396003)(376002)(346002)(199004)(189003)(11346002)(53546011)(7416002)(14454004)(2906002)(86362001)(76176011)(6506007)(446003)(99286004)(478600001)(52116002)(25786009)(316002)(2171002)(110136005)(5660300002)(58126008)(31686004)(14444005)(3846002)(6436002)(54906003)(4326008)(966005)(6246003)(6306002)(6486002)(6512007)(6116002)(2616005)(229853002)(8936002)(31696002)(26005)(71190400001)(102836004)(71200400001)(81166006)(65806001)(66066001)(186003)(66446008)(8676002)(2501003)(81156014)(7736002)(66476007)(386003)(305945005)(65956001)(256004)(66556008)(66946007)(36756003)(2201001)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB2616;
 H:BYAPR11MB2647.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7ZiB7ROXpTIZrAt6Tap/lWmFMBVaZdaJ/BppJFb68c8TfriMLmK69MaHdPyOVupJQe11aqGte0uHOqDAGzCTjWpOklmRyGhLQNopk28FuKBiAjanviFyJqW4b8CKOKGS2le5/08l0jM2kn6YPtNgLyZPHKvsELuvjHFPn5fzIFyYHD39Y4urblmYFT/Sfs53VWY8ydpHlWmCEnNZ0rTi55rA3WyW5VxaP8O8IF/nXVUuy4Rgq1qloToR8SRuunRx05PvgLhGTdI4AOj4PTylZ3DfLM4rw8teYRJq6Ppuyy5JT2FeTTPtNW9v4Hihz2mw6/EgvB909So4F7oDOJl9u1dsxMz2qvL9zCH+ZLSYmi0jtg5T8aTDPIsDYGMfcsEcKf2/B5jqSUjiEJan41nR18IRDJ6uiqmDjXuLH+fmiQOab/8jV3/2hMuqX/8P1MKR
Content-ID: <93AA6D7AF16C4A478500CE5392E3DC27@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e7506c7b-d586-4cbe-7b09-08d76f6569b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2019 16:02:45.4241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NPWgItXqFhKS9d8yke9nPV7QHwB6kqZf8WY3ny3U4ITk8PWXCgapEee6JLOA+eo9uyvfL2BdIK7rvTbfBd+aiyqNO/nOYSaIZudgNxyIfYU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2616
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_080253_699792_844F3912 
X-CRM114-Status: GOOD (  18.99  )
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org,
 thomas.petazzoni@bootlin.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/22/19 4:50 PM, Gregory CLEMENT wrote:

> Hello,
> 
>> The endpoint configuration used to be stored in the device tree,
>> however the configuration depend on the "version" of the controller
>> itself.
>>
>> This information is already documented by the compatible string. It
>> then possible to just rely on the compatible string and completely
>> remove the full ep configuration done in the device tree as it was
>> already the case for all the other USB device controller.
> 
> Do you have any feedback about this patch ?
> 
> The binding being reviewed is there any chance that this patch will be
> merged?

Hi Gregory,

Thank you for sending the patch. It looks good to me.

I checked it briefly on sama5d2 with the in kernel cdc-acm.

> 
> Thanks,
> 
> Gregory
> 
> 
>>
>> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
Acked-by: Cristian Birsan <cristian.birsan@microchip.com>

>> ---
>>   drivers/usb/gadget/udc/atmel_usba_udc.c | 112 +++++++++++++++---------
>>   drivers/usb/gadget/udc/atmel_usba_udc.h |  12 +++
>>   2 files changed, 84 insertions(+), 40 deletions(-)
>>
>> diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
>> index 86ffc8307864..2db833caeb09 100644
>> --- a/drivers/usb/gadget/udc/atmel_usba_udc.c
>> +++ b/drivers/usb/gadget/udc/atmel_usba_udc.c
>> @@ -2040,10 +2040,56 @@ static const struct usba_udc_errata at91sam9g45_errata = {
>>        .pulse_bias = at91sam9g45_pulse_bias,
>>   };
>>
>> +static const struct usba_ep_config ep_config_sam9[] __initconst = {
>> +     { .nr_banks = 1 },                              /* ep 0 */
>> +     { .nr_banks = 2, .can_dma = 1, .can_isoc = 1 }, /* ep 1 */
>> +     { .nr_banks = 2, .can_dma = 1, .can_isoc = 1 }, /* ep 2 */
>> +     { .nr_banks = 3, .can_dma = 1 },                /* ep 3 */
>> +     { .nr_banks = 3, .can_dma = 1 },                /* ep 4 */
>> +     { .nr_banks = 3, .can_dma = 1, .can_isoc = 1 }, /* ep 5 */
>> +     { .nr_banks = 3, .can_dma = 1, .can_isoc = 1 }, /* ep 6 */
>> +};
>> +
>> +static const struct usba_ep_config ep_config_sama5[] __initconst = {
>> +     { .nr_banks = 1 },                              /* ep 0 */
>> +     { .nr_banks = 3, .can_dma = 1, .can_isoc = 1 }, /* ep 1 */
>> +     { .nr_banks = 3, .can_dma = 1, .can_isoc = 1 }, /* ep 2 */
>> +     { .nr_banks = 2, .can_dma = 1, .can_isoc = 1 }, /* ep 3 */
>> +     { .nr_banks = 2, .can_dma = 1, .can_isoc = 1 }, /* ep 4 */
>> +     { .nr_banks = 2, .can_dma = 1, .can_isoc = 1 }, /* ep 5 */
>> +     { .nr_banks = 2, .can_dma = 1, .can_isoc = 1 }, /* ep 6 */
>> +     { .nr_banks = 2, .can_dma = 1, .can_isoc = 1 }, /* ep 7 */
>> +     { .nr_banks = 2, .can_isoc = 1 },               /* ep 8 */
>> +     { .nr_banks = 2, .can_isoc = 1 },               /* ep 9 */
>> +     { .nr_banks = 2, .can_isoc = 1 },               /* ep 10 */
>> +     { .nr_banks = 2, .can_isoc = 1 },               /* ep 11 */
>> +     { .nr_banks = 2, .can_isoc = 1 },               /* ep 12 */
>> +     { .nr_banks = 2, .can_isoc = 1 },               /* ep 13 */
>> +     { .nr_banks = 2, .can_isoc = 1 },               /* ep 14 */
>> +     { .nr_banks = 2, .can_isoc = 1 },               /* ep 15 */
>> +};
>> +
>> +static const struct usba_udc_config udc_at91sam9rl_cfg = {
>> +     .errata = &at91sam9rl_errata,
>> +     .config = ep_config_sam9,
>> +     .num_ep = ARRAY_SIZE(ep_config_sam9),
>> +};
>> +
>> +static const struct usba_udc_config udc_at91sam9g45_cfg = {
>> +     .errata = &at91sam9g45_errata,
>> +     .config = ep_config_sam9,
>> +     .num_ep = ARRAY_SIZE(ep_config_sam9),
>> +};
>> +
>> +static const struct usba_udc_config udc_sama5d3_cfg = {
>> +     .config = ep_config_sama5,
>> +     .num_ep = ARRAY_SIZE(ep_config_sama5),
>> +};
>> +
>>   static const struct of_device_id atmel_udc_dt_ids[] = {
>> -     { .compatible = "atmel,at91sam9rl-udc", .data = &at91sam9rl_errata },
>> -     { .compatible = "atmel,at91sam9g45-udc", .data = &at91sam9g45_errata },
>> -     { .compatible = "atmel,sama5d3-udc" },
>> +     { .compatible = "atmel,at91sam9rl-udc", .data = &udc_at91sam9rl_cfg },
>> +     { .compatible = "atmel,at91sam9g45-udc", .data = &udc_at91sam9g45_cfg },
>> +     { .compatible = "atmel,sama5d3-udc", .data = &udc_sama5d3_cfg },
>>        { /* sentinel */ }
>>   };
>>
>> @@ -2052,18 +2098,19 @@ MODULE_DEVICE_TABLE(of, atmel_udc_dt_ids);
>>   static struct usba_ep * atmel_udc_of_init(struct platform_device *pdev,
>>                                                    struct usba_udc *udc)
>>   {
>> -     u32 val;
>>        struct device_node *np = pdev->dev.of_node;
>>        const struct of_device_id *match;
>>        struct device_node *pp;
>>        int i, ret;
>>        struct usba_ep *eps, *ep;
>> +     const struct usba_udc_config *udc_config;
>>
>>        match = of_match_node(atmel_udc_dt_ids, np);
>>        if (!match)
>>                return ERR_PTR(-EINVAL);
>>
>> -     udc->errata = match->data;
>> +     udc_config = match->data;
>> +     udc->errata = udc_config->errata;
>>        udc->pmc = syscon_regmap_lookup_by_compatible("atmel,at91sam9g45-pmc");
>>        if (IS_ERR(udc->pmc))
>>                udc->pmc = syscon_regmap_lookup_by_compatible("atmel,at91sam9rl-pmc");
>> @@ -2079,8 +2126,7 @@ static struct usba_ep * atmel_udc_of_init(struct platform_device *pdev,
>>
>>        if (fifo_mode == 0) {
>>                pp = NULL;
>> -             while ((pp = of_get_next_child(np, pp)))
>> -                     udc->num_ep++;
>> +             udc->num_ep = udc_config->num_ep;
>>                udc->configured_ep = 1;
>>        } else {
>>                udc->num_ep = usba_config_fifo_table(udc);
>> @@ -2097,52 +2143,38 @@ static struct usba_ep * atmel_udc_of_init(struct platform_device *pdev,
>>
>>        pp = NULL;
>>        i = 0;
>> -     while ((pp = of_get_next_child(np, pp)) && i < udc->num_ep) {
>> +     while (i < udc->num_ep) {
>> +             const struct usba_ep_config *ep_cfg = &udc_config->config[i];
>> +
>>                ep = &eps[i];
>>
>> -             ret = of_property_read_u32(pp, "reg", &val);
>> -             if (ret) {
>> -                     dev_err(&pdev->dev, "of_probe: reg error(%d)\n", ret);
>> -                     goto err;
>> -             }
>> -             ep->index = fifo_mode ? udc->fifo_cfg[i].hw_ep_num : val;
>> +             ep->index = fifo_mode ? udc->fifo_cfg[i].hw_ep_num : i;
>> +
>> +             /* Only the first EP is 64 bytes */
>> +             if (ep->index == 0)
>> +                     ep->fifo_size = 64;
>> +             else
>> +                     ep->fifo_size = 1024;
>>
>> -             ret = of_property_read_u32(pp, "atmel,fifo-size", &val);
>> -             if (ret) {
>> -                     dev_err(&pdev->dev, "of_probe: fifo-size error(%d)\n", ret);
>> -                     goto err;
>> -             }
>>                if (fifo_mode) {
>> -                     if (val < udc->fifo_cfg[i].fifo_size) {
>> +                     if (ep->fifo_size < udc->fifo_cfg[i].fifo_size)
>>                                dev_warn(&pdev->dev,
>> -                                      "Using max fifo-size value from DT\n");
>> -                             ep->fifo_size = val;
>> -                     } else {
>> +                                      "Using default max fifo-size value\n");
>> +                     else
>>                                ep->fifo_size = udc->fifo_cfg[i].fifo_size;
>> -                     }
>> -             } else {
>> -                     ep->fifo_size = val;
>>                }
>>
>> -             ret = of_property_read_u32(pp, "atmel,nb-banks", &val);
>> -             if (ret) {
>> -                     dev_err(&pdev->dev, "of_probe: nb-banks error(%d)\n", ret);
>> -                     goto err;
>> -             }
>> +             ep->nr_banks = ep_cfg->nr_banks;
>>                if (fifo_mode) {
>> -                     if (val < udc->fifo_cfg[i].nr_banks) {
>> +                     if (ep->nr_banks < udc->fifo_cfg[i].nr_banks)
>>                                dev_warn(&pdev->dev,
>> -                                      "Using max nb-banks value from DT\n");
>> -                             ep->nr_banks = val;
>> -                     } else {
>> +                                      "Using default max nb-banks value\n");
>> +                     else
>>                                ep->nr_banks = udc->fifo_cfg[i].nr_banks;
>> -                     }
>> -             } else {
>> -                     ep->nr_banks = val;
>>                }
>>
>> -             ep->can_dma = of_property_read_bool(pp, "atmel,can-dma");
>> -             ep->can_isoc = of_property_read_bool(pp, "atmel,can-isoc");
>> +             ep->can_dma = ep_cfg->can_dma;
>> +             ep->can_isoc = ep_cfg->can_isoc;
>>
>>                sprintf(ep->name, "ep%d", ep->index);
>>                ep->ep.name = ep->name;
>> diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.h b/drivers/usb/gadget/udc/atmel_usba_udc.h
>> index a0225e4543d4..48e332439ed5 100644
>> --- a/drivers/usb/gadget/udc/atmel_usba_udc.h
>> +++ b/drivers/usb/gadget/udc/atmel_usba_udc.h
>> @@ -290,6 +290,12 @@ struct usba_ep {
>>   #endif
>>   };
>>
>> +struct usba_ep_config {
>> +     u8                                      nr_banks;
>> +     unsigned int                            can_dma:1;
>> +     unsigned int                            can_isoc:1;
>> +};
>> +
>>   struct usba_request {
>>        struct usb_request                      req;
>>        struct list_head                        queue;
>> @@ -307,6 +313,12 @@ struct usba_udc_errata {
>>        void (*pulse_bias)(struct usba_udc *udc);
>>   };
>>
>> +struct usba_udc_config {
>> +     const struct usba_udc_errata *errata;
>> +     const struct usba_ep_config *config;
>> +     const int num_ep;
>> +};
>> +
>>   struct usba_udc {
>>        /* Protect hw registers from concurrent modifications */
>>        spinlock_t lock;
>> --
>> 2.24.0.rc1
>>
> 
> --
> Gregory Clement, Bootlin
> Embedded Linux and Kernel engineering
> http://bootlin.com
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
