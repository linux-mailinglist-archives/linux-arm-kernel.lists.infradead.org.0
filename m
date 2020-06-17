Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C319A1FCE58
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 15:26:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jT2WoCvs0AtZHuQNuFmuUh2meD9HZs2Ba1qZT4sbhfA=; b=AbiWxLmlPRs+mi
	qfg/bebeP9einFEYiIMwA95IbR4htleathoUVluhzjCdbso4p5n+3Y/tI3lmID8wnIkwhS7iLXWhS
	GJIckDchrKXFe8m0fzfSMJI9JQ0pkC3pA//OHPU3JjVgWWW8NW5hnEpl1tNLwvGcgERCfsjdwejDi
	B0AtK0kSGtEsua1MUpUeQTIHoT7mBoj+xfZRinm2ZbPSCGO/QF+Kfc5X/YTK0LtDqky5ebK3uZ68S
	M1UplhJbfafl/u7yd9C+/ZbpceUC50MmG+SgZ/ggs7p1TyyeUe7VR+mL8pjqQTJLWY41DoNIIxIqt
	05yLgncVZ7KbPcs7CyRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlY4k-0004iQ-IB; Wed, 17 Jun 2020 13:25:58 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlY4b-0004hU-6m
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 13:25:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592400350; x=1623936350;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QW0EFpT3Zt5PkJP62KQXQ2cNBF8SL9szvlIjoT/VUU0=;
 b=hVKFacskuJbl+cvEaEBWzdYSPVn+B9d6JgwHrqcqJ3ouFYd4cQLHrtEJ
 nWKhTIvJP7Hqxf26PyP8cPsNK0QcoJWC0sq5/YjxecECKoMHjXYfxzXpV
 1l00taLQFpyVrEWmnjjQV5srNxvhgMgAujemtFHTxVi339VjaqZSs8ct2
 3JpV6MwOKu/QyG8uXBikEotSkxFK+3eNoDgLTIyNN6VfjhLU//PoPsyIh
 XbuEzTMAl1xx80EmRW/sVAgI+ZxauNhycs9CyXz3VtQHe6mHHYfwpYeVX
 +WMpHvjLYoN39DVNrJMuWj2QHGXIUgdhY/pgfGW737EHaBqBvulakqys2 Q==;
IronPort-SDR: PZxtwgueBjwKA7yEgB8ViIk5/Sii7fxRhjeRYsun1/f7enEhaANkqh+OBKOePnzMfM1crWzP4+
 4G4+ZOAB3jyMwEopyXo0lpo3KJdhQZY9pHRXmetPR0d68HFpBwILZl14nFlhEO97noLGY5mNRn
 KqQceMyrxfX3aLE+esAbpuwtn2qT0a6xI8D0Ezn+1GeeEkkEX7xfqb4bH1vjYk3dVS8B3R5kQa
 steNwnbRPMqJkBTq8smy7979INMBMFpfmwbJYvGYBYZs2fBgEkxNgzx97FJpVzrvW4Sg3uyJQx
 BW0=
X-IronPort-AV: E=Sophos;i="5.73,522,1583218800"; d="scan'208";a="79804425"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Jun 2020 06:25:48 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 17 Jun 2020 06:25:41 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3 via Frontend
 Transport; Wed, 17 Jun 2020 06:25:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j8wOSI2bWtJKfSG2x8UNsaoYGSEtjf9BSwa3hultGjZU+9QuWrUGz1YlnQahKSX8Y+5OWBUFGl8GFsORHor4IWE21/6cvdYv59BdkCrjj3xF3esbANZt34b4RwlSJg0FIG2rV9PENbxNcMcquYf0bPFL04Ueg2w6EWBoLdgfuesU/xiwA8vYs7Ryws2jZlH5nFDYvo7JzdO8h6jUXb31FzcvqttiiVV8SoDgt1JuMIhajsdb4h1uHrpHhxsXQG9oM7ixhU/YdC7TNCTUUrigJkb1dJ7qZS63cd4KxdqzOCWS+x8oD0gUuL60ws5P9V7AQlqNCU92fIWx7g1FbqU6Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QW0EFpT3Zt5PkJP62KQXQ2cNBF8SL9szvlIjoT/VUU0=;
 b=ibL5yQKyb4TZHgQuJ4EMbGKQgE4keQyh9g0RrwkyDfq8bZ304lKDIxPRF0RZ3VWN4V+Mv5Tr5nv7uWAKUW9d+iMDKwSRWLRg01dEi99iqpDnvhAZfDZnXOmfOS2c/1V6N4JUAxDJVquigNZWxlW+hWxoufaEFAHrHG+DZ6lRf0I4ceeX+Ia4my03CGNXFN7G5eKGm4imZIR6CW9CJtxU96m/aE5fO0xrlMkI8jNZu5Fr+BpSJ9RjwLUylVwavLpyb30gcrl/3kofT5Q5RjTC0n8iS99eTH3wuOG63EbZdRTw0ulaGwbcfSGLqM1YdKeUvmvF8JnninNYTHBnWEIUxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QW0EFpT3Zt5PkJP62KQXQ2cNBF8SL9szvlIjoT/VUU0=;
 b=n/chiQd5mc0mmlA47LMTu6o3+N5zDLbcE/HeflZbRx4DqoaX9D4j1FmasZ+u5Xxap5jKlrKSaZzdg/P5vHM2KUdLhAwiRNAXvuWQ8KoINIn5bDyTY4Kz0Fd90+V53sPE1RhIR5ZnQDWHhmvpzAJgK/UUQwowf87n/UVdjUi5DSQ=
Received: from BYAPR11MB2999.namprd11.prod.outlook.com (2603:10b6:a03:90::17)
 by BY5PR11MB4167.namprd11.prod.outlook.com (2603:10b6:a03:185::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Wed, 17 Jun
 2020 13:25:43 +0000
Received: from BYAPR11MB2999.namprd11.prod.outlook.com
 ([fe80::996a:3417:7ea7:2b8f]) by BYAPR11MB2999.namprd11.prod.outlook.com
 ([fe80::996a:3417:7ea7:2b8f%7]) with mapi id 15.20.3109.021; Wed, 17 Jun 2020
 13:25:43 +0000
From: <Eugen.Hristev@microchip.com>
To: <jic23@kernel.org>, <alexandru.ardelean@analog.com>
Subject: Re: [PATCH] iio: at91-sama5d2_adc: remove usage of iio_priv_to_dev()
 helper
Thread-Topic: [PATCH] iio: at91-sama5d2_adc: remove usage of iio_priv_to_dev()
 helper
Thread-Index: AQHWMoLHI4/eaQlnYkWuOywN7eMXsajCTXUAgBqjH4A=
Date: Wed, 17 Jun 2020 13:25:43 +0000
Message-ID: <8caaa1f8-ebbe-50ab-a655-d5c487c9a751@microchip.com>
References: <20200525105341.137945-1-alexandru.ardelean@analog.com>
 <20200531153908.47ccbc37@archlinux>
In-Reply-To: <20200531153908.47ccbc37@archlinux>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f9df3336-1e97-421f-1453-08d812c1efed
x-ms-traffictypediagnostic: BY5PR11MB4167:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4167DE2079453A3D30DED8B8E89A0@BY5PR11MB4167.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8Eu0fgys0xOOElRiL7u7atebQvtu4cYZ5q9hn7/D5VZJTgmbqN+1o2kTkKk166gG0kcj6ese4MAw1mR07PoyOuRHIyLS5/d+j5+spW1fRIZNkJAiyJDBpZbL5YFsrM8yOZ9UNEZfTmbnEO8I8cuVl2dbAF54kJL98vCA+w3MDuC9ywkjtYZC9DcMKyeG1Gcfa91pAWqFvzYAlYKMFJxgo67k6SyJG6k4daB2v/2E6kBG46j1I7CykBuJt3XEMN9TP6ZzTAN1YE0HRVOC2FZsXE1RdqGc0TNhU3Cm1UqKDVzHYsDaBXmVxEwsUZg1ZrLVe3rJRL2FSa3mL/8knLk0qm1s2rZhykR6jsnhcjIk0UpOeFTNdiQqRZQvAK6+4IVu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2999.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(39860400002)(366004)(376002)(136003)(396003)(31696002)(86362001)(91956017)(54906003)(66946007)(64756008)(66446008)(66476007)(76116006)(316002)(2616005)(66556008)(107886003)(110136005)(31686004)(83380400001)(71200400001)(2906002)(26005)(6486002)(4326008)(8936002)(53546011)(6506007)(6512007)(36756003)(478600001)(8676002)(186003)(5660300002)(43740500002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: MtOLo0wZVxxe2PVbG8MlGS+tfGty456Vxy5WfFbSWnjNhUryCgYDv0j99JzJf8DZ5ch2ZOGuaaJs8DkHK5lSYXXuClAKaVMmENi+DJ2rW3opZpjtNgwxiAnr5UAXwWcNBPSY2u/XDpXJ/0pyNGpISHyWqzvD2orOGtGPGb10g55Eu6Axvlc8WKm89rZFjPpl8v6yMGWLut71evl9eNrqWu1B64BIeiPICUw5Pb482yu4n3c77Lb3GhQRYx5ytuYnd9b7dkeSaMWY+i/3O+AfzWHDNZOypdbnFdsHem5SynfdLNcu7pAGsM1oqpxv/lrxDJgzqn4Cu5Z8hQbnGfeYAzaKKsQjCHD3eD5vsnxCdMBHlfxskjHnxjBV3F6+jngzFtb5Mmz8Csn7yinzD37eBXjfW5xeb4QJm7/CoFXnd6+ooHpovU15ZKWuebfUlqc6NwmeC7Sn/VVdVPFbiFa//R5tNARqLr91ixMplQxAahs=
Content-ID: <63B2A8B577D6D9499EE69BC287E77BC8@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f9df3336-1e97-421f-1453-08d812c1efed
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 13:25:43.4486 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kf4wPAElz3Lz1wjHiFFKZvvixHhCzesDmJo4yz+BfP/SDhymufeXkgrvgHoLINY1sM+OdO7u2thQbqioFNZg7B9CPJJ4yA9xXjizfS2A7Qs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4167
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_062549_350547_11D5A4ED 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.71.150.166 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: alexandre.belloni@bootlin.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31.05.2020 17:39, Jonathan Cameron wrote:

> On Mon, 25 May 2020 13:53:41 +0300
> Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:
> 
>> We may want to get rid of the iio_priv_to_dev() helper. The reason is that
>> we will hide some of the members of the iio_dev structure (to prevent
>> drivers from accessing them directly), and that will also mean hiding the
>> implementation of the iio_priv_to_dev() helper inside the IIO core.
>>
>> Hiding the implementation of iio_priv_to_dev() implies that some fast-paths
>> may not be fast anymore, so a general idea is to try to get rid of the
>> iio_priv_to_dev() altogether.
>> The iio_priv() helper won't be affected by the rework, as the iio_dev
>> struct will keep a reference to the private information.
>>
>> For this driver, not using iio_priv_to_dev(), means reworking some paths to
>> pass the iio device and using iio_priv() to access the private information,
>> and also keeping a reference to the iio device for some quirky paths.
>>
>> One [quirky] path is the at91_adc_workq_handler() which requires the IIO
>> device & the state struct to push to buffers.
>> Since this requires the back-ref to the IIO device, the
>> at91_adc_touch_pos() also uses it. This simplifies the patch a bit. The
>> information required in this function is mostly for debugging purposes.
>> Replacing it with a reference to the IIO device would have been a slightly
>> bigger change, which may not be worth it (for just the debugging purpose
>> and given that we need the back-ref to the IIO device anyway).
> 
> That workq is indeed quirky.  This looks fine to me in general. I'll
> want an appropriate ack from the at91 side of things if possible so
> let's leave this on the list for a while longer.

Hi,

I am available to test this patch,
Can you tell me on which branch to apply it. On 5.8-rc1 it fails for me
(or maybe it needs rebasing ?)

Eugen

> 
> Poke me if no action in a few weeks.
> 
> Thanks,
> 
> Jonathan
> 
>>
>> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
>> ---
>>   drivers/iio/adc/at91-sama5d2_adc.c | 30 +++++++++++++++++-------------
>>   1 file changed, 17 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
>> index 9abbbdcc7420..7bce18444430 100644
>> --- a/drivers/iio/adc/at91-sama5d2_adc.c
>> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
>> @@ -402,6 +402,7 @@ struct at91_adc_state {
>>        wait_queue_head_t               wq_data_available;
>>        struct at91_adc_dma             dma_st;
>>        struct at91_adc_touch           touch_st;
>> +     struct iio_dev                  *indio_dev;
>>        u16                             buffer[AT91_BUFFER_MAX_HWORDS];
>>        /*
>>         * lock to prevent concurrent 'single conversion' requests through
>> @@ -642,13 +643,13 @@ static u16 at91_adc_touch_pos(struct at91_adc_state *st, int reg)
>>        /* first half of register is the x or y, second half is the scale */
>>        val = at91_adc_readl(st, reg);
>>        if (!val)
>> -             dev_dbg(&iio_priv_to_dev(st)->dev, "pos is 0\n");
>> +             dev_dbg(&st->indio_dev->dev, "pos is 0\n");
>>
>>        pos = val & AT91_SAMA5D2_XYZ_MASK;
>>        result = (pos << AT91_SAMA5D2_MAX_POS_BITS) - pos;
>>        scale = (val >> 16) & AT91_SAMA5D2_XYZ_MASK;
>>        if (scale == 0) {
>> -             dev_err(&iio_priv_to_dev(st)->dev, "scale is 0\n");
>> +             dev_err(&st->indio_dev->dev, "scale is 0\n");
>>                return 0;
>>        }
>>        result /= scale;
>> @@ -1204,9 +1205,9 @@ static unsigned at91_adc_startup_time(unsigned startup_time_min,
>>        return i;
>>   }
>>
>> -static void at91_adc_setup_samp_freq(struct at91_adc_state *st, unsigned freq)
>> +static void at91_adc_setup_samp_freq(struct iio_dev *indio_dev, unsigned freq)
>>   {
>> -     struct iio_dev *indio_dev = iio_priv_to_dev(st);
>> +     struct at91_adc_state *st = iio_priv(indio_dev);
>>        unsigned f_per, prescal, startup, mr;
>>
>>        f_per = clk_get_rate(st->per_clk);
>> @@ -1275,9 +1276,9 @@ static void at91_adc_pen_detect_interrupt(struct at91_adc_state *st)
>>        st->touch_st.touching = true;
>>   }
>>
>> -static void at91_adc_no_pen_detect_interrupt(struct at91_adc_state *st)
>> +static void at91_adc_no_pen_detect_interrupt(struct iio_dev *indio_dev)
>>   {
>> -     struct iio_dev *indio_dev = iio_priv_to_dev(st);
>> +     struct at91_adc_state *st = iio_priv(indio_dev);
>>
>>        at91_adc_writel(st, AT91_SAMA5D2_TRGR,
>>                        AT91_SAMA5D2_TRGR_TRGMOD_NO_TRIGGER);
>> @@ -1297,7 +1298,7 @@ static void at91_adc_workq_handler(struct work_struct *workq)
>>                                        struct at91_adc_touch, workq);
>>        struct at91_adc_state *st = container_of(touch_st,
>>                                        struct at91_adc_state, touch_st);
>> -     struct iio_dev *indio_dev = iio_priv_to_dev(st);
>> +     struct iio_dev *indio_dev = st->indio_dev;
>>
>>        iio_push_to_buffers(indio_dev, st->buffer);
>>   }
>> @@ -1318,7 +1319,7 @@ static irqreturn_t at91_adc_interrupt(int irq, void *private)
>>                at91_adc_pen_detect_interrupt(st);
>>        } else if ((status & AT91_SAMA5D2_IER_NOPEN)) {
>>                /* nopen detected IRQ */
>> -             at91_adc_no_pen_detect_interrupt(st);
>> +             at91_adc_no_pen_detect_interrupt(indio);
>>        } else if ((status & AT91_SAMA5D2_ISR_PENS) &&
>>                   ((status & rdy_mask) == rdy_mask)) {
>>                /* periodic trigger IRQ - during pen sense */
>> @@ -1486,7 +1487,7 @@ static int at91_adc_write_raw(struct iio_dev *indio_dev,
>>                    val > st->soc_info.max_sample_rate)
>>                        return -EINVAL;
>>
>> -             at91_adc_setup_samp_freq(st, val);
>> +             at91_adc_setup_samp_freq(indio_dev, val);
>>                return 0;
>>        default:
>>                return -EINVAL;
>> @@ -1624,8 +1625,10 @@ static int at91_adc_update_scan_mode(struct iio_dev *indio_dev,
>>        return 0;
>>   }
>>
>> -static void at91_adc_hw_init(struct at91_adc_state *st)
>> +static void at91_adc_hw_init(struct iio_dev *indio_dev)
>>   {
>> +     struct at91_adc_state *st = iio_priv(indio_dev);
>> +
>>        at91_adc_writel(st, AT91_SAMA5D2_CR, AT91_SAMA5D2_CR_SWRST);
>>        at91_adc_writel(st, AT91_SAMA5D2_IDR, 0xffffffff);
>>        /*
>> @@ -1635,7 +1638,7 @@ static void at91_adc_hw_init(struct at91_adc_state *st)
>>        at91_adc_writel(st, AT91_SAMA5D2_MR,
>>                        AT91_SAMA5D2_MR_TRANSFER(2) | AT91_SAMA5D2_MR_ANACH);
>>
>> -     at91_adc_setup_samp_freq(st, st->soc_info.min_sample_rate);
>> +     at91_adc_setup_samp_freq(indio_dev, st->soc_info.min_sample_rate);
>>
>>        /* configure extended mode register */
>>        at91_adc_config_emr(st);
>> @@ -1718,6 +1721,7 @@ static int at91_adc_probe(struct platform_device *pdev)
>>        indio_dev->num_channels = ARRAY_SIZE(at91_adc_channels);
>>
>>        st = iio_priv(indio_dev);
>> +     st->indio_dev = indio_dev;
>>
>>        bitmap_set(&st->touch_st.channels_bitmask,
>>                   AT91_SAMA5D2_TOUCH_X_CHAN_IDX, 1);
>> @@ -1829,7 +1833,7 @@ static int at91_adc_probe(struct platform_device *pdev)
>>                goto vref_disable;
>>        }
>>
>> -     at91_adc_hw_init(st);
>> +     at91_adc_hw_init(indio_dev);
>>
>>        ret = clk_prepare_enable(st->per_clk);
>>        if (ret)
>> @@ -1945,7 +1949,7 @@ static __maybe_unused int at91_adc_resume(struct device *dev)
>>        if (ret)
>>                goto vref_disable_resume;
>>
>> -     at91_adc_hw_init(st);
>> +     at91_adc_hw_init(indio_dev);
>>
>>        /* reconfiguring trigger hardware state */
>>        if (!iio_buffer_enabled(indio_dev))
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
