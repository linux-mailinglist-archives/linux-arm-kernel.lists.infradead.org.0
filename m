Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB25410CBA0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:20:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vlAaP/EYTSNqBuAInW7QgHwmc+AK8Tlz+ylXNxxUkXU=; b=ATNtGgUbGAljxK
	kIEElkmHI+hZlXHMel1zdnal58ODv38dFa97XHePq5nQaRpqxIzrxVDaYJeSlj8iJ8UpCsd2+80JQ
	OQYpyoPdqmUJwYfP8zDv6KOTxN0eK2/Q/0HEQbHWTMzTpOVG17W8qIwMi2kIxY+9ctu0eKRkSMMej
	dG5kOr/867VSqEjedd9kSrQl8M95cZHgydX/CI4bzLzMO/6ySzdoUOBr3mjx6vG1Vh5Vq9hwyF174
	d5J4YWwf5sqBAfCxzFbCpjDmqHEhJrxAJzCEhKuPXBggYo4/SIAAiQqC7siqKXxHV/bxedJ19a58D
	c2xW8w+sN1yogeujqJtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLaa-0001wp-MB; Thu, 28 Nov 2019 15:20:16 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLaN-0001RJ-JI
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 15:20:05 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 4nv0DCCB4m3p6tKqhG7xG4lR7D9yvzbbYoOcrazrMx2cMDrlp6sch4KKuDxFO8t8MWpjYtiYw6
 dA00QXNprVmwk/hAga3Cs74CzOluylTJWrfnGy8gq+uX5Dp+i3bgmltpju50eZ2OHfzvP5vW0G
 o1HtV5O0gzjejlq8u55mk0EwSKLsz6r9zCZvPi0jXHJBKc/lxpxsZMu4naMwqRcncjSI10+4MA
 TW5dDCjvyuo07EcLWGv0HnYEcFMKPfqHeImdLVEqPUnM+M5SbQW4ofEjEO76HIA7r4vaPt5L1d
 tok=
X-IronPort-AV: E=Sophos;i="5.69,253,1571727600"; d="scan'208";a="58682137"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 Nov 2019 08:20:00 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 28 Nov 2019 08:20:00 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 28 Nov 2019 08:20:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IP9sve20a2cYhU19w4Ry7fnfu84UseQak+T/iADrMWFFeMowWOVnsNPk3VYkv/1VXjuAAPXJZUa1BV209EGGHofn1dchHZXe3lKBNJTestYp1Hth8h3QMeLuNyPwJp+e0XRdgZN7zqUXF7arDtc72dhj9yKzOBRNdDuHCXbaPVhLRcI8t7OHMnupWS+lPGGAuCnnxgz+YZOO3Kzi+4l4i2Lc+PNc5957CRrRqIJLCLetdCOuiYIUKi+2vSz0R+1cq08QKS+JmDk1rQlHxi7eaEuUE0qJ1uSzEn0gbeD0YnHwMbI+PuIg0sVdJQtF5rw5fbwNKIzNtV4AIQJenXyg1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yXQQR9BgwtQJIc0M+PwHVUIW8T7sb/yTSpPrKpPiTE4=;
 b=OgI8BVMfou2QznnO2ZBuR6JR16jxzOGbF/v7poP7jgih+/4P0cW3mhBDE9LgE8W63XAIkoVxAZMOCIkS+ofzmQ7R3M1QecmzGAnO67O/UsIOcAqkVjya/KOfWvuaWX3g2pUcQlrRUt2DqfmdixpJ5qwkhJrz26xlhX8GPe9Uq3ki0HXcyUvMsPriwxKjYQmbHLzt7OA9tkSuXumPVQvUtpnzM1/10BnnMp6sSQA1/1ue50p/IlXXMD6WQWnXMlhgymlliyBXHW3qJSIoCa6eCU2RxPVP/15N/E2uUXbsZIY/U7VlogA8xOVmqCt8OFw+bP6fLI4KXw6TGvVG26k0pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yXQQR9BgwtQJIc0M+PwHVUIW8T7sb/yTSpPrKpPiTE4=;
 b=aC2KYhqeInVBnsiovLWK1Iem1aW1JZNazk+YFqCjqu6WTLUIF2ecee2F+USWidQqMgNquW7J8hKs/eRnheajxsaj/oJYvs+9EZUf5JMAzUXD+WyM8GYN0ERiny0P4pYRYjBIcp5sCCwqXKoD+gJADHvPI5/sS5KxyyfdiYGvCMM=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1993.namprd11.prod.outlook.com (10.168.107.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.17; Thu, 28 Nov 2019 15:19:58 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2495.014; Thu, 28 Nov
 2019 15:19:58 +0000
From: <Eugen.Hristev@microchip.com>
To: <alexandru.Ardelean@analog.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <linux-iio@vger.kernel.org>
Subject: Re: [PATCH] iio: at91-sama5d2_adc: fix
 iio_triggered_buffer_{predisable,postenable} positions
Thread-Topic: [PATCH] iio: at91-sama5d2_adc: fix
 iio_triggered_buffer_{predisable,postenable} positions
Thread-Index: AQHVo6GcybDu2MmyfkWfKAIGUFGv9aegRneAgABwyQA=
Date: Thu, 28 Nov 2019 15:19:58 +0000
Message-ID: <e43bf58f-223c-0b12-2912-6f353d866ec3@microchip.com>
References: <20191023082508.17583-1-alexandru.ardelean@analog.com>
 <17cf55869cc418795d0013c0594ed8fc04381d46.camel@analog.com>
 <9df3d999-0ec6-a282-d24b-8f7df5f14f6d@microchip.com>
In-Reply-To: <9df3d999-0ec6-a282-d24b-8f7df5f14f6d@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR05CA0024.eurprd05.prod.outlook.com (2603:10a6:205::37)
 To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191128171942538
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 643d9cdf-632b-472a-dba1-08d774166df1
x-ms-traffictypediagnostic: DM5PR11MB1993:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB199356A244B5F3BF0ED9447BE8470@DM5PR11MB1993.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0235CBE7D0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(396003)(346002)(39860400002)(136003)(189003)(199004)(51914003)(3846002)(6436002)(4326008)(6512007)(71190400001)(316002)(229853002)(110136005)(54906003)(6486002)(25786009)(14444005)(14454004)(81166006)(4001150100001)(8936002)(6306002)(81156014)(36756003)(8676002)(99286004)(478600001)(6246003)(5024004)(966005)(2501003)(31686004)(256004)(6116002)(31696002)(76176011)(102836004)(186003)(2616005)(2906002)(71200400001)(386003)(6506007)(53546011)(446003)(11346002)(7736002)(305945005)(66066001)(2201001)(66946007)(66556008)(26005)(52116002)(5660300002)(66446008)(66476007)(64756008)(86362001)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1993;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: E6tA/8Uc0WhY7SnnxCuUHZMmCM+dLPOJC37+hzpnhYLaGWXOY4o5TBKO2rqRb9QPXLVnxXObo+uabwvhgq3GPg82sslRwZHXxGjeZjR4+r38am5AWpdGrvl8YEmwGrHbq0hUr+gs66sm/fO3T513Jv++pcYfjxwxV2tCvraNmNW4UXnFh6zWueLlE5bqZlgw3LCWVot33cLuIcIjyz2L7BNK8Nebnwv3u9JlSehaywnWKMrg1yEe1hqGScVhH645P7sixEjgon5ApriG7GXv3RZwR06N+g9UzMqvKAV6EScLN5bpj5QFP9jmZ9QlpNQj6h1+WRtUBIR6BNtxpLYhPotStC6cyc8+lGiQknNh3kTLVVO4JfekCHjhVPfjvVAs1jJJqLMgW2iGKZiTTEVTPss4m+tiWjQIzm3FxJv227F9frdUTLA8W/fTBeiSx5hD7qyYORhM9sseqBBEKmSkjFzo6ZLESSZq7Q442gBvJf4=
Content-ID: <54978D30D29F124CA874A2D3C0557CF2@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 643d9cdf-632b-472a-dba1-08d774166df1
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2019 15:19:58.3771 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F10/AAKPvlxbJ6yRzTruFWmCKIIi7y2D51HOrN3HqbXkyDNiZpwtqGirtpq4ghi97yjfV6nB+UoMA8uGGr9/5HIvrR/G5Igsavb+ea20WAY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1993
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_072003_647966_B31BBDB1 
X-CRM114-Status: GOOD (  27.51  )
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
Cc: alexandre.belloni@bootlin.com, lars@metafoo.de,
 Ludovic.Desroches@microchip.com, pmeerw@pmeerw.net, knaack.h@gmx.de,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 28.11.2019 10:36, Eugen.Hristev@microchip.com wrote:

> On 25.11.2019 17:03, Ardelean, Alexandru wrote:
>> On Wed, 2019-10-23 at 11:25 +0300, Alexandru Ardelean wrote:
>>> The iio_triggered_buffer_{predisable,postenable} functions attach/detach
>>> poll functions.
>>>
>>> The iio_triggered_buffer_postenable() should be called first to attach
>>> the
>>> poll function, and then the driver can init the data to be triggered.
>>>
>>> Similarly, iio_triggered_buffer_predisable() should be called last to
>>> first
>>> disable the data (to be triggered) and then the poll function should be
>>> detached.
> 
> Hi Alexandru,
> 
> Sorry for this late reply,
> 
> I remember that by adding specific at91_adc code for
> predisable/postenable , I was replacing the existing standard callback
> with my own, and have my specific at91 code before postenable and then
> calling the subsystem postenable,
> and in similar way, for predisable, first call the subsystem predisable
> then doing my predisable code (in reverse order as in postenable)
> 
> If you say the order should be reversed (basically have the pollfunction
> first), how is current code working ?
> Should current code fail if the poll function is not attached in time ?
> Or there is a race between triggered data and the attachment of the
> pollfunc ?
> 
> I am thinking that attaching the pollfunc later makes it work because
> the DMA is not started yet. What happens if we have the pollfunc
> attached but DMA is not started (basically the trigger is not started) ,
> can this lead to unexpected behavior ? Like the pollfunc polling but no
> trigger started/no DMA started.

I looked a bit more into the code and in DMA case, using postenable 
first will lead to calling attach pollfunc, which will also enable the 
trigger, but the DMA is not yet started.
Is this the desired effect ? Normally when using DMA I would say we 
would need to enable DMA first to be ready to carry data (and coherent 
area etc.) and then enable the trigger.

> 
>>>
>>> For this driver, the predisable & postenable hooks are also need to take
>>> into consideration the touchscreen, so the hooks need to be put in places
>>> that avoid the code for that cares about it.
>>>
>>
>> ping here
>>
>>> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
>>> ---
>>>    drivers/iio/adc/at91-sama5d2_adc.c | 19 ++++++++++---------
>>>    1 file changed, 10 insertions(+), 9 deletions(-)
>>>
>>> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-
>>> sama5d2_adc.c
>>> index e1850f3d5cf3..ac3e5c4c9840 100644
>>> --- a/drivers/iio/adc/at91-sama5d2_adc.c
>>> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
>>> @@ -889,20 +889,24 @@ static int at91_adc_buffer_postenable(struct
>>> iio_dev *indio_dev)
>>>         if (!(indio_dev->currentmode & INDIO_ALL_TRIGGERED_MODES))
>>>                 return -EINVAL;
>>>
>>> +     ret = iio_triggered_buffer_postenable(indio_dev);
>>> +     if (ret)
>>> +             return ret;
>>> +
>>>         /* we continue with the triggered buffer */
>>>         ret = at91_adc_dma_start(indio_dev);
>>>         if (ret) {
>>>                 dev_err(&indio_dev->dev, "buffer postenable failed\n");
>>> +             iio_triggered_buffer_predisable(indio_dev);
>>>                 return ret;
>>>         }
>>>
>>> -     return iio_triggered_buffer_postenable(indio_dev);
>>> +     return 0;
>>>    }
>>>
>>>    static int at91_adc_buffer_predisable(struct iio_dev *indio_dev)
>>>    {
>>>         struct at91_adc_state *st = iio_priv(indio_dev);
>>> -     int ret;
>>>         u8 bit;
>>>
>>>         /* check if we are disabling triggered buffer or the touchscreen */
>>> @@ -916,13 +920,8 @@ static int at91_adc_buffer_predisable(struct iio_dev
>>> *indio_dev)
>>>         if (!(indio_dev->currentmode & INDIO_ALL_TRIGGERED_MODES))
>>>                 return -EINVAL;
>>>
>>> -     /* continue with the triggered buffer */
>>> -     ret = iio_triggered_buffer_predisable(indio_dev);
>>> -     if (ret < 0)
>>> -             dev_err(&indio_dev->dev, "buffer predisable failed\n");
>>> -
>>>         if (!st->dma_st.dma_chan)
>>> -             return ret;
>>> +             goto out;
>>>
>>>         /* if we are using DMA we must clear registers and end DMA */
>>>         dmaengine_terminate_sync(st->dma_st.dma_chan);
>>> @@ -949,7 +948,9 @@ static int at91_adc_buffer_predisable(struct iio_dev
>>> *indio_dev)
>>>
>>>         /* read overflow register to clear possible overflow status */
>>>         at91_adc_readl(st, AT91_SAMA5D2_OVER);
>>> -     return ret;
>>> +
>>> +out:
> 
> 
> I would prefer if this label is named with a function name prefix,
> otherwise 'out' is pretty generic and can collide with other things in
> the file... I want to avoid having an out2 , out3 later if code changes.
> 
> Thanks for the patch,
> Eugen
> 
>>> +     return iio_triggered_buffer_predisable(indio_dev);
>>>    }
>>>
>>>    static const struct iio_buffer_setup_ops at91_buffer_setup_ops = {
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
