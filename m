Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A82114242F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 08:25:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eRitZyhxU71EswvUWTgv7EbGqIyX+KxvYuITRl1F37Q=; b=S1OM6kZsgAD/zp
	Olhuvt7GuIzwOpJh4ctN11D6EA/3ZwjgimdBvsM1dpiSbLmssxc3e5PXYNLMcwoTxB2VBjdnyol17
	SE8xVAOO4g/yo0nbRxo6+h8oFWPbnzGP8iy6rnP87Gn5D4mrNrfSiyNOAt6/0oBmRphUZ6Qk+Jw8J
	8yfq6A1RB9p9t4ru1rtUgCbBs9lOcbLkAcdK3cK78uqCsMPVd/l89tr8N1eN0/1jcsn9lBM79W46J
	D4mBbZJTr6Yz5WHgo9qLDwKb59IZv/do6/3RUmkaddYKsSWKhNP3af3rgRbVU04VTwPZa3N4xCL5f
	PUIjIbb7js9zj7sCv8UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itRQy-0004Fl-Cp; Mon, 20 Jan 2020 07:25:16 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itRQh-0003ik-3Y
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 07:25:03 +0000
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
IronPort-SDR: hAV2Qb2TyZ1EON0HQxIJ5jdjp4pPbFR//j0uhz01lLmmNCfrDVa1eL4tMXEA/L60eo1VK8On9o
 aSk6FI6FaDveW7DAy2KyI5VElB5uqkhDR+e7TAnclz4h8JjH75xasDBrLykt0xMRnWj5V6Vo+5
 CK5fcA8lBVR/4jpusl94AdeTUkMPx55KAR/u8jo8OmQIC+mQd4OIXHWKGfae9ktpb6V+QT6USc
 ePOZXnSzLxYUR2H5vmelqeRRaljGTmR0ck11hihao0Vf7dTrzzDpTA0ZtO35tbjOAh4vOylxTz
 Gd0=
X-IronPort-AV: E=Sophos;i="5.70,341,1574146800"; d="scan'208";a="61551494"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Jan 2020 00:24:53 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Jan 2020 00:24:53 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 20 Jan 2020 00:24:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bpLZ0JF+ItHsgJ2A1FLhIs60GUj4TfZ6A5sG3g9aDraoGxnKULTcbo8ztfdbL/vFPdlULJz3YonNLMS2aB5fqy70g0JG5jl/q7n+EC2w0XQQf2PShazmXD5YZNWsgsVSrr6aCziZqDId3UhZ/qWDyjKf8ym0gUZn2pPeu+euUjbZfP318Q6q5+iRCfQn2ZLGbIL9VPxAs6wPqAdtKG0jF/tYiGpNPpNP1DFbn6dMvwulvGQEXGCT7AEZEEHXXpT4ItdRC+1JQktlDEI7VpNhN44BKi5LreetLKXWDVLIpvglFh1KE/5Y6IOnDvk+DRCeep75oX30pNRhrzxesbRsag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HzW1hfTvD/mQZ3CIT+BZvGODJgbswQL8Mv1XaeWj4hY=;
 b=FyfYUtrh0tyzHiJkqCDWadZESAuU2+bXqQ86RoDNZtLQquGvYN+Mzn46joADYW4ERc3ckMg8BSMMGWIZj5BDXnqedLklywXLb8qgFmtoslC/wh6v0jt6IjlYdaFVvYB2j4o9ctK1J9O/8HCGP+UULNxDU0tiLXHzqxPd65gB8B8UN7F/S/uBakn/LAFisxdb/d5HhnPJ7bp3nNnJ94PjP6Isf9qR9audt9pykLyEU0caDCJglZjfk0QfJYoF7nxPxR9+hXhgRsGtZ44QC/2d6R5y5W0VbfoOezsAp5XpoDTrAEum14I8rz1lst4UPIPdgjI3DTh0wG4YRH8sklLvWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HzW1hfTvD/mQZ3CIT+BZvGODJgbswQL8Mv1XaeWj4hY=;
 b=ZWFEfb5BAk4ECoKPtLE3h9cBv0ZHg5WyUOpN19NhLduaJSvguPq9CFjo1vAJ7+Lx2vA5jKFuxH7CFJrnrluUYzT2fidlGlWG1+ygt0cz3EGvtDhfuvqJgf3EVYU2ENdj4Wtue8pktybpajK1m5cvkQEbgPxw/nfeGBw/Z7LavXA=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0010.namprd11.prod.outlook.com (10.164.155.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.25; Mon, 20 Jan 2020 07:24:51 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79%6]) with mapi id 15.20.2644.024; Mon, 20 Jan 2020
 07:24:51 +0000
From: <Eugen.Hristev@microchip.com>
To: <Jonathan.Cameron@Huawei.com>
Subject: Re: [PATCH v2 3/3] iio: adc: at91-sama5d2_adc: update for other
 trigger usage
Thread-Topic: [PATCH v2 3/3] iio: adc: at91-sama5d2_adc: update for other
 trigger usage
Thread-Index: AQHVygn7rEZ0ai+1ZkerXwetHJ8ZDqfvJv2AgAQKGgA=
Date: Mon, 20 Jan 2020 07:24:50 +0000
Message-ID: <feaf0731-331d-6aaf-fe34-4b60e2ef24ba@microchip.com>
References: <1578917098-9674-1-git-send-email-eugen.hristev@microchip.com>
 <1578917098-9674-4-git-send-email-eugen.hristev@microchip.com>
 <20200117174249.000011af@Huawei.com>
In-Reply-To: <20200117174249.000011af@Huawei.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0c5a91b8-8d7e-4952-c951-08d79d79d698
x-ms-traffictypediagnostic: DM5PR11MB0010:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB00102E5FD075967B4702BA63E8320@DM5PR11MB0010.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0288CD37D9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(366004)(136003)(346002)(39860400002)(189003)(199004)(478600001)(2906002)(36756003)(54906003)(2616005)(64756008)(66446008)(76116006)(91956017)(31686004)(8676002)(6916009)(6506007)(4326008)(53546011)(5660300002)(71200400001)(31696002)(6512007)(66946007)(86362001)(26005)(186003)(66556008)(66476007)(8936002)(6486002)(316002)(81166006)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB0010;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0OQh/R6efW0KeYu72jDw360/b+ejGJ9VhL4OSuAXrtY6MW9SKQWYi1RdKKzHBc1a1omIHYXs1HIE6wVpDMMDABHhYBb/mOUXjKp/Vu+B0OXpMkl9JhZGwIH5GEql2OcAXPq6fHBi+7BmqKapS9omzOWTarl9O2O2OH93WdWU991b7btqATZFn2D5mtpi98/GdsoDsJJUu0t8fXRSk/ijTtWHwpx9cP9O4WQWJ8Yy1JrOvgbLiv99k83PyTM0mQsb2KbjH5Ius/2uqq9qayuiFA2SM80M4zUB/PQewCi86xN15XBLx+uGDvdBoTAH1ZHxLuOLe26AStRHXkkCvnwvs1LD3+hGSC6XeraChFxM/CvtCXkp+imdqePSD7cobBQfeYtLtfOy0EdLL8UHNUouOUo8KcDKJqONaVaUnhUGjM+nJSzDczPwCyyvMBzRtLNz
Content-ID: <80D85FE49E55E24CAD0610C48B9A2629@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c5a91b8-8d7e-4952-c951-08d79d79d698
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2020 07:24:51.0806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o3FtrMRU+pwqDs2nevNPAhp/oghuuxeoRYkrxcnVEsBf39Qclf88vongYHjS1KiWtm0CTtIMLNKMZ8xB9pPJYg+JrrbMmH1L9LKpalm0D3k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_232459_202148_BF10F847 
X-CRM114-Status: GOOD (  18.03  )
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
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, jic23@kernel.org,
 alexandru.ardelean@analog.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 17.01.2020 19:42, Jonathan Cameron wrote:

> On Mon, 13 Jan 2020 12:07:10 +0000
> <Eugen.Hristev@microchip.com> wrote:
> 
>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>
>> This change will allow the at91-sama5d2_adc driver to use other triggers
>> than it's own.
>> In particular, tested with the sysfs trigger.
>> To be able to achieve this functionality, some changes were required:
>> 1) Do not enable/disable channels when enabling/disabling the trigger.
>> This is because the trigger is enabled/disabled only for our trigger
>> (obviously). We need channels enabled/disabled regardless of what trigger is
>> being used.
>> 2) Cope with DMA : DMA cannot be used when using another type of trigger.
>> Other triggers work through pollfunc, so we get polled anyway on every trigger.
>> Thus we have to obtain data at every trigger.
>> 3) When to start conversion? The usual pollfunc (store time from subsystem)
>> would be in hard irq and this would be a good way, but current iio subsystem
>> recommends to have it in the threaded irq. Thus adding software start
>> code in this handler.
>> 4) Buffer config: we need to setup buffer regardless of our own device's
>> trigger. We may get one attached later.
>> 5) IRQ handling: we use our own device IRQ only if it's our own trigger
>> and we do not use DMA . If we use DMA, we use the DMA controller's IRQ.
>>
>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> 
> +CC Alexandru as he's doing a lot of cleanup around the buffer functions.
> I'd like Alex to take a look at this.
> 
> A few comments inline from me.
> 
> Thanks,
> 
> Jonathan
> 
> 
> 
>> ---
>> Changes in v2:
>> - adapt to the situation of having the previous two patches ahead in the series
>>
>>   drivers/iio/adc/at91-sama5d2_adc.c | 140 +++++++++++++++++++------------------
>>   1 file changed, 73 insertions(+), 67 deletions(-)
>>
>> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
>> index 454a493..34df043 100644
>> --- a/drivers/iio/adc/at91-sama5d2_adc.c
>> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
>> @@ -728,7 +728,6 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
>>        struct iio_dev *indio = iio_trigger_get_drvdata(trig);
>>        struct at91_adc_state *st = iio_priv(indio);
>>        u32 status = at91_adc_readl(st, AT91_SAMA5D2_TRGR);
>> -     u8 bit;
>>
>>        /* clear TRGMOD */
>>        status &= ~AT91_SAMA5D2_TRGR_TRGMOD_MASK;
>> @@ -739,45 +738,6 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
>>        /* set/unset hw trigger */
>>        at91_adc_writel(st, AT91_SAMA5D2_TRGR, status);
>>
>> -     for_each_set_bit(bit, indio->active_scan_mask, indio->num_channels) {
>> -             struct iio_chan_spec const *chan = at91_adc_chan_get(indio, bit);
>> -             u32 cor;
>> -
>> -             if (!chan)
>> -                     continue;
>> -             /* these channel types cannot be handled by this trigger */
>> -             if (chan->type == IIO_POSITIONRELATIVE ||
>> -                 chan->type == IIO_PRESSURE)
>> -                     continue;
>> -
>> -             if (state) {
>> -                     cor = at91_adc_readl(st, AT91_SAMA5D2_COR);
>> -
>> -                     if (chan->differential)
>> -                             cor |= (BIT(chan->channel) |
>> -                                     BIT(chan->channel2)) <<
>> -                                     AT91_SAMA5D2_COR_DIFF_OFFSET;
>> -                     else
>> -                             cor &= ~(BIT(chan->channel) <<
>> -                                    AT91_SAMA5D2_COR_DIFF_OFFSET);
>> -
>> -                     at91_adc_writel(st, AT91_SAMA5D2_COR, cor);
>> -             }
>> -
>> -             if (state)
>> -                     at91_adc_writel(st, AT91_SAMA5D2_CHER,
>> -                                     BIT(chan->channel));
>> -             else
>> -                     at91_adc_writel(st, AT91_SAMA5D2_CHDR,
>> -                                     BIT(chan->channel));
>> -     }
>> -     /* enable irq only if not using DMA */
>> -     if (state && !st->dma_st.dma_chan)
>> -             at91_adc_writel(st, AT91_SAMA5D2_IER, AT91_SAMA5D2_IER_DRDY);
>> -     /* disable irq only if not using DMA */
>> -     if (!state && !st->dma_st.dma_chan)
>> -             at91_adc_writel(st, AT91_SAMA5D2_IDR, AT91_SAMA5D2_IER_DRDY);
>> -
>>        return 0;
>>   }
>>
>> @@ -901,9 +861,22 @@ static int at91_adc_dma_start(struct iio_dev *indio_dev)
>>        return 0;
>>   }
>>
>> +static bool at91_adc_buffer_check_use_irq(struct iio_dev *indio,
>> +                                       struct at91_adc_state *st)
>> +{
>> +     /* if using DMA, we do not use our own IRQ (we use DMA-controller) */
>> +     if (st->dma_st.dma_chan)
>> +             return false;
>> +     /* if the trigger is not ours, then it has its own IRQ */
>> +     if (iio_trigger_validate_own_device(indio->trig, indio))
>> +             return false;
>> +     return true;
>> +}
>> +
>>   static int at91_adc_buffer_postenable(struct iio_dev *indio_dev)
>>   {
>>        int ret;
>> +     u8 bit;
>>        struct at91_adc_state *st = iio_priv(indio_dev);
>>
>>        /* check if we are enabling triggered buffer or the touchscreen */
>> @@ -921,9 +894,40 @@ static int at91_adc_buffer_postenable(struct iio_dev *indio_dev)
>>        ret = at91_adc_dma_start(indio_dev);
>>        if (ret) {
>>                dev_err(&indio_dev->dev, "buffer postenable failed\n");
>> +             iio_triggered_buffer_predisable(indio_dev);
> 
> This seems odd given you have called the iio_triggered_buffer_postenable yet..
> That is below.

Hi Jonathan,

You are right, I will remove this.

> 
>>                return ret;
>>        }
>>
>> +     for_each_set_bit(bit, indio_dev->active_scan_mask,
>> +                      indio_dev->num_channels) {
>> +             struct iio_chan_spec const *chan =
>> +                                     at91_adc_chan_get(indio_dev, bit);
>> +             u32 cor;
>> +
>> +             if (!chan)
>> +                     continue;
>> +             /* these channel types cannot be handled by this trigger */
>> +             if (chan->type == IIO_POSITIONRELATIVE ||
>> +                 chan->type == IIO_PRESSURE)
>> +                     continue;
>> +
>> +             cor = at91_adc_readl(st, AT91_SAMA5D2_COR);
>> +
>> +             if (chan->differential)
>> +                     cor |= (BIT(chan->channel) | BIT(chan->channel2)) <<
>> +                             AT91_SAMA5D2_COR_DIFF_OFFSET;
>> +             else
>> +                     cor &= ~(BIT(chan->channel) <<
>> +                            AT91_SAMA5D2_COR_DIFF_OFFSET);
>> +
>> +             at91_adc_writel(st, AT91_SAMA5D2_COR, cor);
>> +
>> +             at91_adc_writel(st, AT91_SAMA5D2_CHER, BIT(chan->channel));
>> +     }
>> +
>> +     if (at91_adc_buffer_check_use_irq(indio_dev, st))
>> +             at91_adc_writel(st, AT91_SAMA5D2_IER, AT91_SAMA5D2_IER_DRDY);
>> +
>>        return iio_triggered_buffer_postenable(indio_dev);
>>   }
>>
>> @@ -944,21 +948,11 @@ static int at91_adc_buffer_predisable(struct iio_dev *indio_dev)
>>        if (!(indio_dev->currentmode & INDIO_ALL_TRIGGERED_MODES))
>>                return -EINVAL;
>>
>> -     /* continue with the triggered buffer */
>> -     ret = iio_triggered_buffer_predisable(indio_dev);
>> -     if (ret < 0)
>> -             dev_err(&indio_dev->dev, "buffer predisable failed\n");
>> -
>> -     if (!st->dma_st.dma_chan)
>> -             return ret;
>> -
>> -     /* if we are using DMA we must clear registers and end DMA */
>> -     dmaengine_terminate_sync(st->dma_st.dma_chan);
>> -
>>        /*
>> -      * For each enabled channel we must read the last converted value
>> +      * For each enable channel we must disable it in hardware.
>> +      * In the case of DMA, we must read the last converted value
>>         * to clear EOC status and not get a possible interrupt later.
>> -      * This value is being read by DMA from LCDR anyway
>> +      * This value is being read by DMA from LCDR anyway, so it's not lost.
>>         */
>>        for_each_set_bit(bit, indio_dev->active_scan_mask,
>>                         indio_dev->num_channels) {
>> @@ -971,12 +965,28 @@ static int at91_adc_buffer_predisable(struct iio_dev *indio_dev)
>>                if (chan->type == IIO_POSITIONRELATIVE ||
>>                    chan->type == IIO_PRESSURE)
>>                        continue;
>> +
>> +             at91_adc_writel(st, AT91_SAMA5D2_CHDR, BIT(chan->channel));
>> +
>>                if (st->dma_st.dma_chan)
>>                        at91_adc_readl(st, chan->address);
>>        }
>>
>> +     if (at91_adc_buffer_check_use_irq(indio_dev, st))
>> +             at91_adc_writel(st, AT91_SAMA5D2_IDR, AT91_SAMA5D2_IER_DRDY);
>> +
>>        /* read overflow register to clear possible overflow status */
>>        at91_adc_readl(st, AT91_SAMA5D2_OVER);
>> +
>> +     /* continue with the triggered buffer */
>> +     ret = iio_triggered_buffer_predisable(indio_dev);
>> +     if (ret < 0)
>> +             dev_err(&indio_dev->dev, "buffer predisable failed\n");
>> +
>> +     /* if we are using DMA we must clear registers and end DMA */
>> +     if (st->dma_st.dma_chan)
>> +             dmaengine_terminate_sync(st->dma_st.dma_chan);
> 
> This ordering is going to stop Alex doing his rework to remove the need
> to manually call iio_triggered_buffer_predisable.  Why does it make
> sense to do the dma stuff after that?
> 
> Ah I see it always did and the postenable is the opposite of what Alex
> has been moving to as well.

Ok, so keep it like this ?

> 
>> +
>>        return ret;
>>   }
>>
>> @@ -1131,6 +1141,13 @@ static irqreturn_t at91_adc_trigger_handler(int irq, void *p)
>>        struct iio_dev *indio_dev = pf->indio_dev;
>>        struct at91_adc_state *st = iio_priv(indio_dev);
>>
>> +     /*
>> +      * If it's not our trigger, start a conversion now, as we are
>> +      * actually polling the trigger now.
>> +      */
>> +     if (iio_trigger_validate_own_device(indio_dev->trig, indio_dev))
>> +             at91_adc_writel(st, AT91_SAMA5D2_CR, AT91_SAMA5D2_CR_START);
>> +
>>        if (st->dma_st.dma_chan)
>>                at91_adc_trigger_handler_dma(indio_dev);
>>        else
>> @@ -1143,20 +1160,9 @@ static irqreturn_t at91_adc_trigger_handler(int irq, void *p)
>>
>>   static int at91_adc_buffer_init(struct iio_dev *indio)
>>   {
>> -     struct at91_adc_state *st = iio_priv(indio);
>> -
>> -     if (st->selected_trig->hw_trig) {
>> -             return devm_iio_triggered_buffer_setup(&indio->dev, indio,
>> -                     &iio_pollfunc_store_time,
>> -                     &at91_adc_trigger_handler, &at91_buffer_setup_ops);
>> -     }
>> -     /*
>> -      * we need to prepare the buffer ops in case we will get
>> -      * another buffer attached (like a callback buffer for the touchscreen)
>> -      */
>> -     indio->setup_ops = &at91_buffer_setup_ops;
>> -
>> -     return 0;
>> +     return devm_iio_triggered_buffer_setup(&indio->dev, indio,
>> +             &iio_pollfunc_store_time,
>> +             &at91_adc_trigger_handler, &at91_buffer_setup_ops);
>>   }
>>
>>   static unsigned at91_adc_startup_time(unsigned startup_time_min,
> 
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
