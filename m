Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB76F142432
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 08:27:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oV70kLygY4Kx3OUm9JK65Z5Rpm93nbkTAZGS9TlxNt8=; b=Y4BWEpkGfFenYT
	38f7YdTxq9B+KWRS2HpAf/C2DuQ0sAKjglOjNrw0KdJdKHxhp5vePaVJf3xWZ3WXUJzsR1xybaZPb
	oNfP58rk/Mo+f8GCe+Mdz9VyZC2cLfK5yW0MYKAtMja7oGh699EC6KGOowIy/dJ1euoMerhdFvGB5
	7DsHl+aY6F9r744ypcFQ+yr/MaH0xABe7SOhYkNs0mCXcIt+hAWbKo4rgZa6K6mKch5eFk2nerVnf
	LHtGBrOT0b0cswfi4ZfIj20/pr7KebFozApEobDwFY8MY7SfjXOcphJzCBGvgTee9u8TRrBWhNmFi
	N2EhSP4gF8tbpBonuOKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itRSx-0005G1-F1; Mon, 20 Jan 2020 07:27:19 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itRSg-0005F5-TY
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 07:27:08 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: iPVQCVzOuRNEZJxM9V3TDR7hGWf9bGoOxujIoJo7tqWyAOmkicDIN3BiKBMFO8UkgPCtNqRhg5
 ia8Uw2Uoctmpgh8zLx0sE7wosOXp9xH2rO9Wha0KSak2gpA/XJnTZOiyf2xsTG89FyJHhOSNNZ
 Asq3SweRs74IEMDyvHieRor15851M3sz19nDU6SFlGtqIee5iZkjwjE4Xb8hbNHSC66fEKyhYG
 B5/FIs+QCjbYlJiMV9owCifBb+fNbQAKTUroqg/1seNDlocr+I1cArXs6sTQC0Z0v+N5h7nOaV
 CaU=
X-IronPort-AV: E=Sophos;i="5.70,341,1574146800"; d="scan'208";a="61551599"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Jan 2020 00:27:02 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Jan 2020 00:27:02 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 20 Jan 2020 00:27:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S7nr3px/daUb7cA5qSN31dYBEnKqo3ye2GJlSlmoQIDVjbc82dM4gje9A5eK4DnE2OMHdJ1UOt8O0HsCdpfBLB6wcH2VON2BLjX6ba9qEHnbiFVgj0z2QXKGK7UqybENFoarOgWmXV5o7hGU/4xr/SGMmur5Y9YlinDnfNYhRqR8Snhysx//KGJCq7GMfm+UAEAd2QcHx7aRsZW5IPR+mR/Ne09I4rx653P/8FHRG/n5qEpJVvwMOyA0W6fLhy2GRvJJQhw/FA7JpyGNCqRX+Y7tXgkvGlV0hYXaSs6FdITna3OrB0SlZB41VMFF4FuKy8iXjXvsM7yzHDYT/FbEbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kd3IiBE1yLUinxwwwnkV53cCrCWK5JpCfNbsStthh8E=;
 b=l4xt2krw4K0EgnltiPx/izZMWft9fQrzRXvhWYAwySyvQvQUJffxlp2HXU4XKx+KrNOj6ydC8Gmem+24Isl+IWzVAafM7Z2MfYVzpmkvvvt4Y5Y2Iv24/XXvBc2ysKGCMs/5NT/Rx3zwXnQ7BEIAy9Kd1R0RBF1dC5h3fElKnhZHakENxa0mD6A4M+stghU4ytHJ3he1oZT1GRsYalnXkxiyNJgFSwaa3h7jbwYTx9WeqjGQDf3vzU4E7zu5J3Oi7rjju6RRtKqFtqp2BoEYT6VrecsXMHAu12gL8x9UyKlu/OLxybCGXzjG9C4TsBwxk2FVgxwDpv3vQN5UX9l3fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kd3IiBE1yLUinxwwwnkV53cCrCWK5JpCfNbsStthh8E=;
 b=V+fgeQ4w69+SqInpBplZUmOeBpA3PJhxss2stuc4bmT0dlmKjV9M7/r/tD7RW51AE2e+0eyUJiTCZEPnMAXtG+Ixqf1WN4o/zMEyp9DuhRaQcFGt3hgVtnZr9VZK05ZMCXZdyqo0unyXuwhr2W41oVhMaQOKvEqa7H2XCB2TohI=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0010.namprd11.prod.outlook.com (10.164.155.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.25; Mon, 20 Jan 2020 07:27:00 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79%6]) with mapi id 15.20.2644.024; Mon, 20 Jan 2020
 07:27:00 +0000
From: <Eugen.Hristev@microchip.com>
To: <Jonathan.Cameron@Huawei.com>
Subject: Re: [PATCH v2 2/3] iio: adc: at91-sama5d2_adc: handle unfinished
 conversions
Thread-Topic: [PATCH v2 2/3] iio: adc: at91-sama5d2_adc: handle unfinished
 conversions
Thread-Index: AQHVygn79EXDODWs2EKzXEoIhEzLM6fvJKMAgAQNDwA=
Date: Mon, 20 Jan 2020 07:27:00 +0000
Message-ID: <b8eb32be-a3dd-795c-8352-a4155621d10c@microchip.com>
References: <1578917098-9674-1-git-send-email-eugen.hristev@microchip.com>
 <1578917098-9674-3-git-send-email-eugen.hristev@microchip.com>
 <20200117173424.0000244f@Huawei.com>
In-Reply-To: <20200117173424.0000244f@Huawei.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 15b38ed2-8038-49f4-fc2f-08d79d7a237f
x-ms-traffictypediagnostic: DM5PR11MB0010:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB0010FA80713961F9F149C689E8320@DM5PR11MB0010.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0288CD37D9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(366004)(136003)(346002)(39860400002)(189003)(199004)(478600001)(2906002)(36756003)(54906003)(2616005)(64756008)(66446008)(76116006)(91956017)(31686004)(8676002)(6916009)(6506007)(4326008)(107886003)(53546011)(5660300002)(71200400001)(31696002)(6512007)(66946007)(86362001)(26005)(186003)(66556008)(66476007)(8936002)(6486002)(316002)(81166006)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB0010;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Evq6ZTqoJVxvNP1TCCYJkhc4IjeTYeZwNmFnCvQ5nuFmNkBfPHNTJdO219Ms0NFGCaamqF78lRiOsS3mXJT1yaBSAX9KalT1dOTrLaK9WqKWFs9o65Zw3hlaubn2UutxZfzeJ35mMiXA2n1VlXyx6421U/UA1Kn9Er5C8/w9V89iae8kWZZbenv8/2KitMbbkBb4RTFy/VQAauot+NtkFjcH+lSUuYKN7YoLYJ5dKgdhaKv1EgDHgzTNWWQuvHZQR1ZBqAQoHrfOC8qe28nFwtifQ6AYT1TfCHE0znZqWQmL/KNq6FEwog608ciLz7kG5085RDDACMT+aAQVQwZUuD3mhU1J/A8utLf2pmK6cogzmXHvhIUtHJp4oOsONtZgtPF9kAldIZwCnDoZctlqQpOieUjJFsgIqVy+qPIXQBraNDMFwjrQrYluiw7bXpal
Content-ID: <713FA20D778A0A45BA236D9042BCDA5D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 15b38ed2-8038-49f4-fc2f-08d79d7a237f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2020 07:27:00.2196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Po2suxSfdF07eHC2ra4dYEv2nrXRnK80L0our0sKdGYKxW40mOn6Olay7TOWxi1Rdx8XBVbkgFn6XuMF/xjewLGnjiu59n8/+40Kvv0m5vA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_232703_007913_E52D3F4A 
X-CRM114-Status: GOOD (  18.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: linux-iio@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org, jic23@kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 17.01.2020 19:34, Jonathan Cameron wrote:

> On Mon, 13 Jan 2020 12:07:09 +0000
> <Eugen.Hristev@microchip.com> wrote:
> 
>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>
>> It can happen that on IRQ trigger, not all conversions are done if
>> we are enabling multiple channels.
>> The IRQ is triggered on first EOC (end of channel), but it can happen
>> that not all channels are done. This leads into erroneous reports to
>> userspace (zero values or previous values).
>> To solve this, in trigger handler, check if the mask of done channels
>> is the same as the mask of active scan channels.
>> If it's the same, proceed and push to buffers. Otherwise, use usleep
>> to sleep until the conversion is done or we timeout.
>> Normally, it should happen that in a short time fashion, all channels are
>> ready, since the first IRQ triggered.
>> If a hardware fault happens (for example the clock suddently dissappears),
>> the handler will not be completed, in which case we do not report anything to
>> userspace anymore.
>> Also, change from using the EOC interrupts to DRDY interrupt.
>> This helps with the fact that not 'n' interrupt statuses are enabled,
>> each being able to trigger an interrupt, and instead only data ready
>> interrupt can wake up the CPU. Like this, when data is ready, check in
>> handler which and how many channels are done. While the DRDY is raised,
>> other IRQs cannot occur. Once the channel data is being read, we ack the
>> IRQ and finish the conversion.
>>
>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
>> ---
>> Changes in v2:
>> - move start of conversion to threaded irq, removed specific at91 pollfunc
>> - add timeout to channel mask readiness check in trigger handler
>> - use DRDY irq instead of EOC irqs.
>> - move enable irq after DRDY has been acked in reenable_trigger
>>
>>   drivers/iio/adc/at91-sama5d2_adc.c | 62 ++++++++++++++++++++++++++++----------
>>   1 file changed, 46 insertions(+), 16 deletions(-)
>>
>> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
>> index 2a6950a..454a493 100644
>> --- a/drivers/iio/adc/at91-sama5d2_adc.c
>> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
>> @@ -8,6 +8,7 @@
>>
>>   #include <linux/bitops.h>
>>   #include <linux/clk.h>
>> +#include <linux/delay.h>
>>   #include <linux/dma-mapping.h>
>>   #include <linux/dmaengine.h>
>>   #include <linux/interrupt.h>
>> @@ -100,6 +101,8 @@
>>   #define AT91_SAMA5D2_IER_YRDY   BIT(21)
>>   /* Interrupt Enable Register - TS pressure measurement ready */
>>   #define AT91_SAMA5D2_IER_PRDY   BIT(22)
>> +/* Interrupt Enable Register - Data ready */
>> +#define AT91_SAMA5D2_IER_DRDY   BIT(24)
>>   /* Interrupt Enable Register - general overrun error */
>>   #define AT91_SAMA5D2_IER_GOVRE BIT(25)
>>   /* Interrupt Enable Register - Pen detect */
>> @@ -486,6 +489,21 @@ static inline int at91_adc_of_xlate(struct iio_dev *indio_dev,
>>        return at91_adc_chan_xlate(indio_dev, iiospec->args[0]);
>>   }
>>
>> +static unsigned int at91_adc_active_scan_mask_to_reg(struct iio_dev *indio_dev)
>> +{
>> +     u32 mask = 0;
>> +     u8 bit;
>> +
>> +     for_each_set_bit(bit, indio_dev->active_scan_mask,
>> +                      indio_dev->num_channels) {
>> +             struct iio_chan_spec const *chan =
>> +                      at91_adc_chan_get(indio_dev, bit);
>> +             mask |= BIT(chan->channel);
>> +     }
>> +
>> +     return mask & GENMASK(11, 0);
>> +}
>> +
>>   static void at91_adc_config_emr(struct at91_adc_state *st)
>>   {
>>        /* configure the extended mode register */
>> @@ -746,24 +764,19 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
>>                        at91_adc_writel(st, AT91_SAMA5D2_COR, cor);
>>                }
>>
>> -             if (state) {
>> +             if (state)
>>                        at91_adc_writel(st, AT91_SAMA5D2_CHER,
>>                                        BIT(chan->channel));
>> -                     /* enable irq only if not using DMA */
>> -                     if (!st->dma_st.dma_chan) {
>> -                             at91_adc_writel(st, AT91_SAMA5D2_IER,
>> -                                             BIT(chan->channel));
>> -                     }
>> -             } else {
>> -                     /* disable irq only if not using DMA */
>> -                     if (!st->dma_st.dma_chan) {
>> -                             at91_adc_writel(st, AT91_SAMA5D2_IDR,
>> -                                             BIT(chan->channel));
>> -                     }
>> +             else
>>                        at91_adc_writel(st, AT91_SAMA5D2_CHDR,
>>                                        BIT(chan->channel));
>> -             }
>>        }
>> +     /* enable irq only if not using DMA */
>> +     if (state && !st->dma_st.dma_chan)
>> +             at91_adc_writel(st, AT91_SAMA5D2_IER, AT91_SAMA5D2_IER_DRDY);
>> +     /* disable irq only if not using DMA */
>> +     if (!state && !st->dma_st.dma_chan)
>> +             at91_adc_writel(st, AT91_SAMA5D2_IDR, AT91_SAMA5D2_IER_DRDY);
> Hmm. Would have been nicer to avoid the refactor and just have the change to
> what was written. If you want to keep it, perhaps:
> 
>          /* Nothing to do if using DMA */
>          if (!st->dma_st.dma_chan)
>                  return 0;
> 
>          if (state)
>                  at91...
>          else
>                  at91...
> 

Hi Jonathan,

Ok I will rework it in next version

>>
>>        return 0;
>>   }
>> @@ -777,10 +790,10 @@ static int at91_adc_reenable_trigger(struct iio_trigger *trig)
>>        if (st->dma_st.dma_chan)
>>                return 0;
>>
>> -     enable_irq(st->irq);
>> -
>>        /* Needed to ACK the DRDY interruption */
>>        at91_adc_readl(st, AT91_SAMA5D2_LCDR);
>> +
>> +     enable_irq(st->irq);
> 
> Why this change?  I'm not totally following the description above.
> 

The ' reading of the LCDR register ' makes the DRDY bit in ISR 
(interrupt status register) to be cleared.
So, reading that clears the IRQ, but, if we enable the IRQs before this 
clearance, there is a race chance that we get the DRDY IRQ triggered again.
It is best to clear the DRDY first, and then re enable the IRQs.

Does it make sense ?

>>        return 0;
>>   }
>>
>> @@ -1015,6 +1028,22 @@ static void at91_adc_trigger_handler_nodma(struct iio_dev *indio_dev,
>>        int i = 0;
>>        int val;
>>        u8 bit;
>> +     u32 mask = at91_adc_active_scan_mask_to_reg(indio_dev);
>> +     unsigned int timeout = 50;
>> +
>> +     /*
>> +      * Check if the conversion is ready. If not, wait a little bit, and
>> +      * in case of timeout exit with an error.
>> +      */
>> +     while ((at91_adc_readl(st, AT91_SAMA5D2_ISR) & mask) != mask &&
>> +            timeout) {
>> +             usleep_range(50, 100);
>> +             timeout--;
>> +     }
>> +
>> +     /* Cannot read data, not ready. Continue without reporting data */
>> +     if (!timeout)
>> +             return;
>>
>>        for_each_set_bit(bit, indio_dev->active_scan_mask,
>>                         indio_dev->num_channels) {
>> @@ -1281,7 +1310,8 @@ static irqreturn_t at91_adc_interrupt(int irq, void *private)
>>                status = at91_adc_readl(st, AT91_SAMA5D2_XPOSR);
>>                status = at91_adc_readl(st, AT91_SAMA5D2_YPOSR);
>>                status = at91_adc_readl(st, AT91_SAMA5D2_PRESSR);
>> -     } else if (iio_buffer_enabled(indio) && !st->dma_st.dma_chan) {
>> +     } else if (iio_buffer_enabled(indio) &&
>> +                (status & AT91_SAMA5D2_IER_DRDY)) {
>>                /* triggered buffer without DMA */
>>                disable_irq_nosync(irq);
>>                iio_trigger_poll(indio->trig);
> 
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
