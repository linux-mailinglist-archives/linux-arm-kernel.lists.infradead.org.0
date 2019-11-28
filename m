Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5845D10C53A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 09:36:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=78bYNcnVHbyb/qdsqUtQplxpfqFuKRgGBBvUlWZrpEQ=; b=HWjnkGLZDGx0mN
	Cr4tuCVYOyvHDceK5E7pPm0hN9Kx5oaMVS+cqibMGXnNgGS0kYY5Rhn60nXAOMN8504vGdmpELnet
	p9gus/EEgwLHbK6p8gLqPm5eMfK3+/re6esdEAdDDAAuoDDXZ4HNayCuGntlqX3HowqL/FctZTy9c
	nr/YMZAYKlJ81LiMw2RAPJ8cZd4NGVLGyD5sZdyZQDbpDvHzshiVsHqNghx/07jHJcZru4gvATIcE
	Ex9tCZlnU8x+8VcD4FSGoQ1Yws5W0ljvRTWEOPZfFScAk4CUwXck2CY9UKDfb7mWaxhBY1s4s5byK
	KQTJOGQf7lnJ/SSN4mCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaFHw-0005rd-B1; Thu, 28 Nov 2019 08:36:36 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaFHk-0005qn-92
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 08:36:25 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: dJT9flTQuajuGPGe9ikQ7RX6lakOYUnFzYzl7MfYerXbegq1GoAPteeE2PSsWE37CkVJQKIQiM
 vxuFuRCEHrf8ozJz8hlBrNPKebHkUkwoNQGBcS6UNMPbXFF6lIOmR1Kr4FsZ6yZY+KKcJefEZ+
 PJlQiuY77hWc/q32MJtpEXj4Xo9wqrF3YMqAkEMb5mX2AJuakRPlBKdMBg4HtiZHAPZdquO70k
 0zjHvsGndYS9DFJPfmt6jmUyItq7/NBUgXSsDwzoov3QJi0Fe45r5BnskSPHrk9rAItNKCGfFw
 SgE=
X-IronPort-AV: E=Sophos;i="5.69,252,1571727600"; d="scan'208";a="60025842"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 Nov 2019 01:36:18 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 28 Nov 2019 01:36:17 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 28 Nov 2019 01:36:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nuZ1DdwGQQ/hrWPS2/eIkps/d9D9L8GXmr0h6WqbeCwEA2Xe6e1D3RYQg5uM6beLTzQ6d55UaIfXJ9FzUIZjxEl5M8hbffyqGr6QxFTA01n3aeaKcD60HCH3zqY27mXPMMxJ3JrGueFE9y0WmMZNYqPHDd8s0y/RUG7eNN16S5EGDzPn0n0JqN+9ngojOsbNKV0smC0/rsBWpUOvsYbnCLtprXXP1vw2Bs36iZugpytXeN583zI31a9k1KZfny9RhwwOXamP6jYK71/B8jhuhxh+kkl3/X3IIAFzMduBjfIKHTnJs2VNu9S9EnCIhp7xS1xa6M74dcZduzaZFuStWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4rmW3pOsLIa/N0sXbp6pIG1p/LSBpD1ES5YlAlAuRQM=;
 b=la3j/3NGPP+WAs3QUWu711yMH9B0TmCGhuQdS6gahZpqaulNJn98xsDAYscyK5vBMeclipAZzRm0Zzy+38dD5i74LNh8RPFvtPwdXZDltxgtdl7mo3OtccCehduwcE9DSljv41beMIYqkIKbxSiSoZVZQ5ZFu9Z+swuqBo4Q28J5VpVt9PtF/Utbj6B7T8Yhv0I4H7WHYknyhNDHLo8yTr60TPNhkVMNIfIzRgGr9nTCrsjZqa6vOmR0hYo1FVhQHE+UBozhjZqTkx9cQWaIhoMhmNieU884xsg2AH6XmCyBYUBvrbjdQCnUbCiEe6+oAjH802l6+CJ0FE8gt3zLOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4rmW3pOsLIa/N0sXbp6pIG1p/LSBpD1ES5YlAlAuRQM=;
 b=jAYtcaVOBgKO46HRfQSNyE9duMR0QM2Yvjhy6BBCjsQ2b0OKoj1YWaMcKqnjvAY4SzYy23tWzUqUJc7XNNTXpBoEy0rYoWcnUKuOk6K4mFK0aLdeImV974yu/eoY79UXaUFpapXS7zh+LAKUj+GRa21CehiT0MNVEsofmn4lAp8=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18; Thu, 28 Nov 2019 08:36:16 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2495.014; Thu, 28 Nov
 2019 08:36:16 +0000
From: <Eugen.Hristev@microchip.com>
To: <alexandru.Ardelean@analog.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <linux-iio@vger.kernel.org>
Subject: Re: [PATCH] iio: at91-sama5d2_adc: fix
 iio_triggered_buffer_{predisable,postenable} positions
Thread-Topic: [PATCH] iio: at91-sama5d2_adc: fix
 iio_triggered_buffer_{predisable,postenable} positions
Thread-Index: AQHVo6GcybDu2MmyfkWfKAIGUFGv9aegRneA
Date: Thu, 28 Nov 2019 08:36:16 +0000
Message-ID: <9df3d999-0ec6-a282-d24b-8f7df5f14f6d@microchip.com>
References: <20191023082508.17583-1-alexandru.ardelean@analog.com>
 <17cf55869cc418795d0013c0594ed8fc04381d46.camel@analog.com>
In-Reply-To: <17cf55869cc418795d0013c0594ed8fc04381d46.camel@analog.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM3PR05CA0094.eurprd05.prod.outlook.com
 (2603:10a6:207:1::20) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191128103601424
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b2eafbe-ef3a-439e-bab2-08d773de089e
x-ms-traffictypediagnostic: DM5PR11MB1242:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1242B222E70CA55BD75E8494E8470@DM5PR11MB1242.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0235CBE7D0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(376002)(366004)(396003)(136003)(199004)(189003)(51914003)(36756003)(99286004)(5660300002)(2501003)(4001150100001)(8936002)(26005)(53546011)(6506007)(25786009)(102836004)(14444005)(5024004)(186003)(386003)(256004)(54906003)(110136005)(316002)(4326008)(76176011)(66556008)(66446008)(64756008)(66476007)(2906002)(66946007)(6246003)(229853002)(6306002)(6512007)(6436002)(6486002)(31696002)(2201001)(52116002)(6116002)(3846002)(71190400001)(71200400001)(478600001)(81156014)(81166006)(8676002)(966005)(305945005)(11346002)(14454004)(446003)(2616005)(31686004)(7736002)(86362001)(66066001)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1242;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cs6ctQ9weDkRgardJfydV7Sn6vSaMyV7kJzrFzn3gSh9zHCw2XnJtltgwM6rCYUGV5xURuwAzK8gR1gJeBEPdsLoGHTEEwckpWOvRk5qW5lPrsW8FRJSvvGCZONSjOka7Odp7/lJO+FnXMCLbRXaJEJJ6V2oXzW4v46ZODfbokW2j7uXvajqcbKPd/C9cHBvNgQFaumDRJgRMbfg1fn1SEj5cxzfVSeQpdSbuq3eA3ilRf0uli8Nc8nIBHOeTSWdoc4gxuPXR2Ayxy9cVvdboA4ZO9yAXwSSYkwDSKABBZ9Nktn8CKPQ4SyTY2RIuTqzHE0FoYrk8U5PpkEdmqvib6dmGQQMifWuxx0w4TFGjip/YXFqBx+/KrUWVQqpTIy8nFyqw5rxo3RsuJx3r9c70e8//mhBeAJznlxE5We47KA+AbciCNkgdk+wMOSlvIjfmDavlGJ6m1XVzieG81pMcAaM/GpAKtAApUrW5cRySEQ=
Content-ID: <8739BBE5179FFC4A98A2E10F7E17C8FE@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b2eafbe-ef3a-439e-bab2-08d773de089e
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2019 08:36:16.3657 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fTGlS321QWkZBFrY/YH40zmVe2fiyYeQcgR2/RetLUyBPYd0+LxSHwLjR7mSsQOA9PU4ahpWxCuBAT17KjdzNUX++4qgiZNLqgyIWdcggj4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1242
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_003624_331977_6ED94AA1 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, lars@metafoo.de,
 Ludovic.Desroches@microchip.com, pmeerw@pmeerw.net, knaack.h@gmx.de,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 25.11.2019 17:03, Ardelean, Alexandru wrote:
> On Wed, 2019-10-23 at 11:25 +0300, Alexandru Ardelean wrote:
>> The iio_triggered_buffer_{predisable,postenable} functions attach/detach
>> poll functions.
>>
>> The iio_triggered_buffer_postenable() should be called first to attach
>> the
>> poll function, and then the driver can init the data to be triggered.
>>
>> Similarly, iio_triggered_buffer_predisable() should be called last to
>> first
>> disable the data (to be triggered) and then the poll function should be
>> detached.

Hi Alexandru,

Sorry for this late reply,

I remember that by adding specific at91_adc code for 
predisable/postenable , I was replacing the existing standard callback 
with my own, and have my specific at91 code before postenable and then 
calling the subsystem postenable,
and in similar way, for predisable, first call the subsystem predisable 
then doing my predisable code (in reverse order as in postenable)

If you say the order should be reversed (basically have the pollfunction 
first), how is current code working ?
Should current code fail if the poll function is not attached in time ? 
Or there is a race between triggered data and the attachment of the 
pollfunc ?

I am thinking that attaching the pollfunc later makes it work because 
the DMA is not started yet. What happens if we have the pollfunc 
attached but DMA is not started (basically the trigger is not started) , 
can this lead to unexpected behavior ? Like the pollfunc polling but no 
trigger started/no DMA started.

>>
>> For this driver, the predisable & postenable hooks are also need to take
>> into consideration the touchscreen, so the hooks need to be put in places
>> that avoid the code for that cares about it.
>>
> 
> ping here
> 
>> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
>> ---
>>   drivers/iio/adc/at91-sama5d2_adc.c | 19 ++++++++++---------
>>   1 file changed, 10 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-
>> sama5d2_adc.c
>> index e1850f3d5cf3..ac3e5c4c9840 100644
>> --- a/drivers/iio/adc/at91-sama5d2_adc.c
>> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
>> @@ -889,20 +889,24 @@ static int at91_adc_buffer_postenable(struct
>> iio_dev *indio_dev)
>>        if (!(indio_dev->currentmode & INDIO_ALL_TRIGGERED_MODES))
>>                return -EINVAL;
>>
>> +     ret = iio_triggered_buffer_postenable(indio_dev);
>> +     if (ret)
>> +             return ret;
>> +
>>        /* we continue with the triggered buffer */
>>        ret = at91_adc_dma_start(indio_dev);
>>        if (ret) {
>>                dev_err(&indio_dev->dev, "buffer postenable failed\n");
>> +             iio_triggered_buffer_predisable(indio_dev);
>>                return ret;
>>        }
>>
>> -     return iio_triggered_buffer_postenable(indio_dev);
>> +     return 0;
>>   }
>>
>>   static int at91_adc_buffer_predisable(struct iio_dev *indio_dev)
>>   {
>>        struct at91_adc_state *st = iio_priv(indio_dev);
>> -     int ret;
>>        u8 bit;
>>
>>        /* check if we are disabling triggered buffer or the touchscreen */
>> @@ -916,13 +920,8 @@ static int at91_adc_buffer_predisable(struct iio_dev
>> *indio_dev)
>>        if (!(indio_dev->currentmode & INDIO_ALL_TRIGGERED_MODES))
>>                return -EINVAL;
>>
>> -     /* continue with the triggered buffer */
>> -     ret = iio_triggered_buffer_predisable(indio_dev);
>> -     if (ret < 0)
>> -             dev_err(&indio_dev->dev, "buffer predisable failed\n");
>> -
>>        if (!st->dma_st.dma_chan)
>> -             return ret;
>> +             goto out;
>>
>>        /* if we are using DMA we must clear registers and end DMA */
>>        dmaengine_terminate_sync(st->dma_st.dma_chan);
>> @@ -949,7 +948,9 @@ static int at91_adc_buffer_predisable(struct iio_dev
>> *indio_dev)
>>
>>        /* read overflow register to clear possible overflow status */
>>        at91_adc_readl(st, AT91_SAMA5D2_OVER);
>> -     return ret;
>> +
>> +out:


I would prefer if this label is named with a function name prefix, 
otherwise 'out' is pretty generic and can collide with other things in 
the file... I want to avoid having an out2 , out3 later if code changes.

Thanks for the patch,
Eugen

>> +     return iio_triggered_buffer_predisable(indio_dev);
>>   }
>>
>>   static const struct iio_buffer_setup_ops at91_buffer_setup_ops = {
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
