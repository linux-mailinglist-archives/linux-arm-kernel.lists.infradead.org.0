Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D1318F311
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 11:42:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jz/D+w/y86PK6TgcTxeYNG1vaac/6z5QQfJp/jWxbtk=; b=CDm+S02S+L1OWE
	6uBzJ+fDNdgOMEZ9cLuXVZFOMZkuT15ZBzHDt90VEnOI2CRL6SLtMeX1fIbnUbDt1gcEHJl/Q+jg/
	cH4ML8bLrwBt9thxjsr7GLtwsPnEK4aLm5Q9YiGQzWaUk8HvFUZwYnh+YEhmiHqVNS8lTvWsRBsNP
	v59yUud2jPDPuSaOm6Z10Jk9L0x7MjPtt5Raobt36SzmcHjyNrBPOIPEoKolft/OWMTd6qA3H5Mfo
	5IJkJdeblMIrQV8ieCVart/f16xWRU5XesZwvxnCBHPmnB9RLjWxMSP7VdCcTLRMQvxiYI5+FIWHV
	785QIMz2q4uKPeG7K20A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGKXQ-0004x1-T0; Mon, 23 Mar 2020 10:42:32 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGKXI-0004wa-Bu
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 10:42:25 +0000
IronPort-SDR: v57Mr7kaObUdgeBj/f/KUMoUJ5j3R81yPUWLIXllIZuBYkmbhu8SijGbAoIik9MP0Wlxa58Zzj
 yCYAAsARq00rFcHl4TvxKWPg+AUIw+ohD5xWZ62/8r7YvatmFoCio+uK/Yt4tnNYD1lqf81of7
 nxrmBSffhHdM2N+6tmn+331+XqgIEFdfUfHgQaqTv9/xxsWyqYTU7zmUKwmDzcCLYtVlsMNhkh
 yq9tB6bPmQ7ERPe+03yANDh9tXEFNmyXtRO6DiJFbGHZdqfCZiiddc1tlVYpNJuIwiLZnFLj+0
 M/U=
X-IronPort-AV: E=Sophos;i="5.72,296,1580799600"; d="scan'208";a="69815413"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Mar 2020 03:42:21 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 23 Mar 2020 03:42:26 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 23 Mar 2020 03:42:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AKWfHIH7TB9nXwC4AlOtDgs4PKFHwITddf3ABQDHvOOgQNhNwMXuFPt0UJ2sqrrsbhXRsoTFdY2zUKVqRyWVu9c0oZZ21di60q99kK5bmXrTx3HuQuEsut7o75xHml666Cwuhmd6XkcXoZcrpLt6b0Q2+IznWTszH0adxqwDHIQ8D/0Y4JRoEaEN7eYS57tnOyk1XFHXZ/32eQXnPZqdQKU7TSitaKpwfu5yepxu8JTwiolx3wwOO5F+cIf4N+yr4oAtNukTMV4Fh6D7upVlmO+gKbQWdMpA0pTkJVL9TTntcYUjh2N6y0tiLxAA417NlMoE+N5FuD6ZBd4aMGAGYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3JY6qpyo+yshj9POOfT2uMlso2WMNE9dwzh6iOCCVtg=;
 b=eLqEj5rllA67O3nTGSFGFzwoHhcRux385fNKLhQ1cuMGpewa+Kd3Ig7TmrTjJUtqzO749P+ybuevb45wJR91ebnGqWcDtbeGvM6iFlhPhcpXWr94cUlyaxGwkg1M90bDAAFKX4Pznf8+FWIhPkpT4mHj0zqbNpDRbjM8UyYd5m5JB5T1aV69bV4KFR5A3BUC6UofSab8oL2h/qpxmopb0kmbV6x+2HIVX+ZiMzvyL2b3cqP294sf6hcbn89hJ5n/T4gvZQKqeDNUYhge+OFJQ9gglAz9QcRSJOUxmi/IAVc/W1UaaVoLuyiCoN5gHG5S6ah4e9NgQz7RFpCDLZVnkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3JY6qpyo+yshj9POOfT2uMlso2WMNE9dwzh6iOCCVtg=;
 b=UcMP+iACD/ogI04kIkb/xFMbt59Qxsr5YnghPjGCqyvDI2dZzb0tJIOk6SgypIoRjmzcpiNShn/qw7xfNFqZee8nUKqzwSVBDZ0uaEj+ZlIbJvSBZUAFAzLJbXA/kybaujHDABC0BDAUTZxAEcjSiYetmS+KXUws+4hKrS9l50Q=
Received: from DM6PR11MB4123.namprd11.prod.outlook.com (2603:10b6:5:196::12)
 by DM6PR11MB4252.namprd11.prod.outlook.com (2603:10b6:5:201::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.22; Mon, 23 Mar
 2020 10:42:19 +0000
Received: from DM6PR11MB4123.namprd11.prod.outlook.com
 ([fe80::f42c:82b3:ecda:5ff4]) by DM6PR11MB4123.namprd11.prod.outlook.com
 ([fe80::f42c:82b3:ecda:5ff4%6]) with mapi id 15.20.2835.021; Mon, 23 Mar 2020
 10:42:19 +0000
From: <Eugen.Hristev@microchip.com>
To: <jic23@kernel.org>
Subject: Re: [PATCH v3 1/3] iio: adc: at91-sama5d2_adc: fix differential
 channels in triggered mode
Thread-Topic: [PATCH v3 1/3] iio: adc: at91-sama5d2_adc: fix differential
 channels in triggered mode
Thread-Index: AQHV1dqFsAVAQA8Fs0errk5mUZMqBagHxLQAgE6PCoA=
Date: Mon, 23 Mar 2020 10:42:19 +0000
Message-ID: <5c0829d6-3b8d-0efc-0ffc-042727cb9115@microchip.com>
References: <1580216189-27418-1-git-send-email-eugen.hristev@microchip.com>
 <1580216189-27418-2-git-send-email-eugen.hristev@microchip.com>
 <20200202110206.7326ce4d@archlinux>
In-Reply-To: <20200202110206.7326ce4d@archlinux>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Eugen.Hristev@microchip.com; 
x-originating-ip: [86.120.188.33]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fc701c65-661d-444a-6655-08d7cf16dcdf
x-ms-traffictypediagnostic: DM6PR11MB4252:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB42521138B6FB150BE11F41DFE8F00@DM6PR11MB4252.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0351D213B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(396003)(366004)(376002)(346002)(199004)(31696002)(53546011)(8676002)(86362001)(8936002)(2616005)(81166006)(6512007)(81156014)(66476007)(71200400001)(76116006)(64756008)(5660300002)(66446008)(26005)(66556008)(66946007)(36756003)(2906002)(316002)(6916009)(6506007)(31686004)(6486002)(478600001)(186003)(4326008)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB4252;
 H:DM6PR11MB4123.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JvBOvfVO/BC8FxbqhQXfNnUJdePCA/yMZ9axu8sh9NDRUBO19Z4Df8dNacPrbwXcq61YdwsgDTJm9sVgyODHVr4DUv4oSGzMFUqc5dbYPDWi3W2L26BcO6hf8TCApZxjKEZqP6/yMuB2vqlF7Q5cVL/giUmS+DV8AQUmh8bqe+H5WvDps7V02q8X9ZproFBYpJhWwr1/ulKT6AtddnikyPgTyiVVyKmVtAPml4nFEe/+i/4Ms7Mcyp1f4BjEHxMmVICK5yz+yH6iH4hAXoGa1pfbzwwz1frbaKR3YjbwyVCvJXkSiU+0+TWHubQWu7bl2Bdrx/s8N8lVmAp7kxkAPnd/Lhek2zaqaZD2EMgqOBSt7Oiqt1hzM9mrDw9fwca/L1HM0DInyZCRGcpI1V3DFzezX1PSvP2CAjLyDNoeyGc7UZvukmQi8XilJDQjF+TT
x-ms-exchange-antispam-messagedata: 9+k+keZboyXtSN6dUN3nDXfwCVX4yEgA8Z9eoe/yOk7vyZPl4iZPRdPP/XfOxOaivi4B338tYh0MZA8uGMaoHdUBNl07yldwsfSPrV/E2lk64M8TZljyme4Bk0jXtc66x2bCb1VQAbHFZN6UlhrycQ==
Content-ID: <E38F89B21C5D104882476C94951021F4@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fc701c65-661d-444a-6655-08d7cf16dcdf
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2020 10:42:19.7403 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fZjISqWR4GoN3fr5nLREkbwa/alkp+jC7j2kAUWVoyUKAJjciAAkIvtofL6x76OqkKvPVHD8I++PR1MBPk3Owh3DxQAV+8FMQpJwRz9VvFQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4252
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_034224_470301_F98BF53E 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-iio@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 alexandru.ardelean@analog.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02.02.2020 13:02, Jonathan Cameron wrote:
> On Tue, 28 Jan 2020 12:57:39 +0000
> <Eugen.Hristev@microchip.com> wrote:
> 
>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>
>> The differential channels require writing the channel offset register (COR).
>> Otherwise they do not work in differential mode.
>> The configuration of COR is missing in triggered mode.
>>
>> Fixes: 5e1a1da0f8c9 ("iio: adc: at91-sama5d2_adc: add hw trigger and buffer support")
>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> Applied to the fixes-togreg branch of iio.git.  Normally I avoid rebasing that
> branch but I may do so this time given it's currently mid merge window.
> 
> The other two patches will have to wait for this one to get upstream of
> my togreg branch which will take a few weeks.
> 
> Please give me a poke if I seem to have forgotten about them!
> 

Poke !

Eugen

> Thanks,
> 
> Jonathan
> 
>> ---
>> Changes in v2:
>> - moved to the start of the list
>>
>>   drivers/iio/adc/at91-sama5d2_adc.c | 15 +++++++++++++++
>>   1 file changed, 15 insertions(+)
>>
>> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
>> index e1850f3..2a6950a 100644
>> --- a/drivers/iio/adc/at91-sama5d2_adc.c
>> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
>> @@ -723,6 +723,7 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
>>
>>        for_each_set_bit(bit, indio->active_scan_mask, indio->num_channels) {
>>                struct iio_chan_spec const *chan = at91_adc_chan_get(indio, bit);
>> +             u32 cor;
>>
>>                if (!chan)
>>                        continue;
>> @@ -732,6 +733,20 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
>>                        continue;
>>
>>                if (state) {
>> +                     cor = at91_adc_readl(st, AT91_SAMA5D2_COR);
>> +
>> +                     if (chan->differential)
>> +                             cor |= (BIT(chan->channel) |
>> +                                     BIT(chan->channel2)) <<
>> +                                     AT91_SAMA5D2_COR_DIFF_OFFSET;
>> +                     else
>> +                             cor &= ~(BIT(chan->channel) <<
>> +                                    AT91_SAMA5D2_COR_DIFF_OFFSET);
>> +
>> +                     at91_adc_writel(st, AT91_SAMA5D2_COR, cor);
>> +             }
>> +
>> +             if (state) {
>>                        at91_adc_writel(st, AT91_SAMA5D2_CHER,
>>                                        BIT(chan->channel));
>>                        /* enable irq only if not using DMA */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
