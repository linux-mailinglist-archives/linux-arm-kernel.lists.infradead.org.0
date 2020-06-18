Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4431FF240
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 14:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+SfQhJvI27EG+pcMExGY6Ed2v/GE9KH36Q/555QHnqc=; b=S9ipI7HhLsEZcd
	xpFikpY2hKWXkpCvy/7SCic5T9hSkKgsxeEE2gIlAtngf5mzRGHUC3A66Y3Ms9Wm7Ke5uGSwPJHTA
	pDd8aAzmKk7l+LUVZjcEuAsAA7rdKT2ovXp+8VBl7pnwMso22TOL/UFCs0aACKJK09RHmRFID1r9F
	NtBzudfO851K79ajwvQPKQZxzssK/v+jdZgAR2DAPrcDYIJYO9F/+KxB5EAEmWji8zzJAh/8d3MGV
	zYmmDhutcEm9W3cYGF7oOPanqzmFRrnBOk3iE6Y+FPbJEoZIlUPewcAC/jw+LhLqor+8CnmbXomIl
	iNg3PB1iZFeU6PcMrtRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jltxd-0005pR-Nt; Thu, 18 Jun 2020 12:48:05 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jltxU-0005lI-Nk
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 12:47:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592484476; x=1624020476;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=dpFaj30ju9l3PqMCd6v2VoqGy27pxTWz0AQc1T0r24E=;
 b=O5R8IWw+y1Aq6SKw5/f/J2fz4M/1fwGJcxnOLPxHdxrDoGKjxHo15dMB
 5qpPvysuUWtmegZfmLU65VRU215Eb+vZnBFz63Qi+3K2ISYH0dRZdMoVE
 zNiq8ChDtIaAjFIJRqG1CERFoxkQ8NO53ZPHWU/TW6JXwmXdSUbtwlghu
 iEuLCM6QENEsYAZhCkMTgDAsWAl+NCwZnTvgel9K6FXNwr3KA0++L01O8
 3dOOVRDpeRx+piRALNCJFwZM05nc08/z9LwoGKqu1b948zHjsoi2RKtKN
 cEsUc3CG/sed7ngTaWTjelHlyRHKIdH7DEMP+av1V0HhRhqTdpmVuM2Dl g==;
IronPort-SDR: fjzAlQr4L2MeS81euBuH1N4m+FuGp59M0t53srQNrvGUIp8xNxamhR4YEJIDzbgdinKz7QQ/EV
 MGQe7i96Zh7B21nXvfSScQACHhPuOG25cx32BUxXZiznmtR58Pbxc6eZrCau0oTu651YQsLhgM
 sRi06lbxtfS8Wwn4etWNsZsfZk0ZCH81urJg++rhRF0ZbIAafn6sKdoapJiaoiH3damMXdYy3L
 0L8bQzWTd3hzaA9Jyxsue6voBFWYqqWC4Vo/L8vA5kVldVn9oe6F9PtJbwoErvZJfs5oNYAOUn
 md4=
X-IronPort-AV: E=Sophos;i="5.73,526,1583218800"; d="scan'208";a="80628292"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Jun 2020 05:47:53 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 18 Jun 2020 05:47:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3 via Frontend
 Transport; Thu, 18 Jun 2020 05:47:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MjbAZmfLJyvdqWi59dJo7nGQfCvwpaML8con7xU5NgXSdIaLznm/F85L64e9qaoqHlfxvQLD9UjgJKQ2psmMOQmPTomb6aeZUdWfbThjKZJu/t0XRpz2MwBFK7AgHTOHHiN1AUKccd8azdMn75KbPBydIK9C+1T4vgDFwH429NqU438oirIJkCxqP1XdOSKuZmIsPHvK+RWAqiEHlc869WxM0IBLMcaWfJdJthFS0hQ/VlLZDSaT4E/9l5m5HDNuFH2BftcThp5Ln7T2ISeNRPMeoSW5uEsCU7Q++F+1t2C/S8Bmkr5V6D3HvUtpNAPr0skYtmrg/ukk/OXUbgsIDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dpFaj30ju9l3PqMCd6v2VoqGy27pxTWz0AQc1T0r24E=;
 b=mNg3lxaiVmGFCke1XIDvy62CAFohG4dwYSvkaWP1Kza5PxqNLBI95ZQsXNFbVjaVQscWaWQZYY7KKQguw3HOaCs7c3EfDhJUwJyo291Sx0YhiJ9d4FPDd+Rdv1VjDGiY/ZE0Lmo7K79j8ZXxcV970zWqliFPFSS+Ddv5jXKtM1D/6rHzAZTsY06Mv35/tgvKoFCcUoKgl6j4dg1VWt8PwZ54CRvQa7s8pFOC7cSojEvVUQUE2pkAhiu/mB12YDl5ldAaQrVR0vGV1BKHiJmGD4nUeqsNTIsBycYiEQ5Ak8yAZ3WrZEKmfiQeegdBpWTi+rtxJOrGZ1OUAUhWw6xcgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dpFaj30ju9l3PqMCd6v2VoqGy27pxTWz0AQc1T0r24E=;
 b=r+ZxYd/rQAZZTh3wGDFZPotsxo+LRjaotP6dZ7Uz82ros2OUEl0wOwIOss06rxKODIgvl1U8Zsxt039LtD8zgeWCw+9nm6BqowcPmwckbgWso/DxJ54ws9suN9IpGNV6xAk9TixVNPfAdNscDVOByRg3iKCscK/fDF3WpD6tqLs=
Received: from BYAPR11MB2999.namprd11.prod.outlook.com (2603:10b6:a03:90::17)
 by BY5PR11MB3991.namprd11.prod.outlook.com (2603:10b6:a03:186::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Thu, 18 Jun
 2020 12:47:51 +0000
Received: from BYAPR11MB2999.namprd11.prod.outlook.com
 ([fe80::996a:3417:7ea7:2b8f]) by BYAPR11MB2999.namprd11.prod.outlook.com
 ([fe80::996a:3417:7ea7:2b8f%7]) with mapi id 15.20.3109.021; Thu, 18 Jun 2020
 12:47:51 +0000
From: <Eugen.Hristev@microchip.com>
To: <alexandru.Ardelean@analog.com>, <jic23@kernel.org>
Subject: Re: [PATCH] iio: at91-sama5d2_adc: remove usage of iio_priv_to_dev()
 helper
Thread-Topic: [PATCH] iio: at91-sama5d2_adc: remove usage of iio_priv_to_dev()
 helper
Thread-Index: AQHWMoLHI4/eaQlnYkWuOywN7eMXsajCTXUAgBqjH4CAAAozgIABfYwA
Date: Thu, 18 Jun 2020 12:47:51 +0000
Message-ID: <272c7ba2-5d04-f241-de11-ab0512c25659@microchip.com>
References: <20200525105341.137945-1-alexandru.ardelean@analog.com>
 <20200531153908.47ccbc37@archlinux>
 <8caaa1f8-ebbe-50ab-a655-d5c487c9a751@microchip.com>
 <8c4c05458e32f56a5d8492482f9f5403feda1894.camel@analog.com>
In-Reply-To: <8c4c05458e32f56a5d8492482f9f5403feda1894.camel@analog.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
authentication-results: analog.com; dkim=none (message not signed)
 header.d=none;analog.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 77357618-8318-4376-241b-08d81385d025
x-ms-traffictypediagnostic: BY5PR11MB3991:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB3991430E9FD84DCA5DA0A658E89B0@BY5PR11MB3991.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xceem4K8puR96QOAgK7SvcOUeMSWCT/zSqqWDP4bzi2QnsmNhxFnIm+KsL72Sk6Xs9n//s0whHXhy7c7JBHqPX1dpXvYmfxNyRGGHxl1ERZhYRMOHs2OQ2h9xedA06k3g0D6s2n58IaV5JUNVhWg/ZUdeFDwuNoC0vYmsggMUuEq+yGhn/VtULz8nMJ2ew9PW/m/Wbq86dnc0Pa7rs04+W9n2WVvTbyWTmwzC6DCmgMPBjhXgd+z/hKTlg7hMZvKLlkAm7kyXSY/G9hgVEQatQbn9RzUV9b2X8nbDJNbM2ncvslrSIdGxLS67gVl0c57g9sujD75G1XzqpAbBd5Q0P/FATG89R7TH5ch4Vq6JSK8DNKp7tueKGzbNQZQDFlki3rbypWhkpxdRoaDA+9mUVq0Wxl8HHhcm/5Ww+3P+ONSMFhXrTKknnAUFdn1RAuFZRhV9UeSBA9qVvjxZnFx6A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2999.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(396003)(136003)(346002)(366004)(376002)(478600001)(8936002)(2906002)(6512007)(6486002)(86362001)(8676002)(31696002)(66946007)(64756008)(76116006)(91956017)(66476007)(71200400001)(66446008)(66556008)(26005)(53546011)(6506007)(5660300002)(2616005)(31686004)(186003)(83380400001)(966005)(54906003)(4326008)(316002)(110136005)(36756003)(43740500002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 1rh0XlUDQvNtmJyBC74ErupP71hDhXEbrtx6bP2DTZCik6Dw1lDbN1nPPgCl1YiY/A0DwmsHouk79gBvbs3GlzrIeQ/B5R/GcaudLGMo4nsGrqpN6AQnsYug+w4WPFWVPhrrBCBH0ogvSa2A4idwLKG1i8QMEkKLk365cKetSJ+z/TzlaaKr+/4fqhX82pSun0epNNYFbhOXSC2x8Ctm53eATvgKzBC6wQ2jsMmDs7Qn4c/jAnsHNwWD9vDoZnQCgSwG1vKYaEfDuqVKApI67lKbHCqTeTgVHJ9IcMsuCH/Prve8NbPEQjRO1TtZKcOOy1ewP3F5tMLnyVhLuYuxUQXvvvfEeDvHakwAxaEuyXt37CV6dzSCp95snDH3KobA539MunGL8KvVJ6YkjYLY4ErmEbIXfBY2bhAyWDnnser4vcYaw/TmWzseBve6XXnpxJBQ6WiJjtoa1owQXdAIOEBwkqpePkWvH62di9LYZ8g=
Content-ID: <70FBAC63E948C1429E6590499E39CAEB@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 77357618-8318-4376-241b-08d81385d025
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 12:47:51.5548 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XOEoCKlN6D4+27YdezQKQg2er0FsGwvhacyXs5dRUh3jrjQppo8X/3ds1FcRxI4xss7QWQCZsrcSYDSftBXAYVPn1Upe8XWWyr+rxJBOIYs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3991
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_054756_875828_E99892C5 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.153.233 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 17.06.2020 17:02, Ardelean, Alexandru wrote:
> On Wed, 2020-06-17 at 13:25 +0000, Eugen.Hristev@microchip.com wrote:
>> On 31.05.2020 17:39, Jonathan Cameron wrote:
>>
>>> On Mon, 25 May 2020 13:53:41 +0300
>>> Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:
>>>
>>>> We may want to get rid of the iio_priv_to_dev() helper. The reason is that
>>>> we will hide some of the members of the iio_dev structure (to prevent
>>>> drivers from accessing them directly), and that will also mean hiding the
>>>> implementation of the iio_priv_to_dev() helper inside the IIO core.
>>>>
>>>> Hiding the implementation of iio_priv_to_dev() implies that some fast-
>>>> paths
>>>> may not be fast anymore, so a general idea is to try to get rid of the
>>>> iio_priv_to_dev() altogether.
>>>> The iio_priv() helper won't be affected by the rework, as the iio_dev
>>>> struct will keep a reference to the private information.
>>>>
>>>> For this driver, not using iio_priv_to_dev(), means reworking some paths
>>>> to
>>>> pass the iio device and using iio_priv() to access the private
>>>> information,
>>>> and also keeping a reference to the iio device for some quirky paths.
>>>>
>>>> One [quirky] path is the at91_adc_workq_handler() which requires the IIO
>>>> device & the state struct to push to buffers.
>>>> Since this requires the back-ref to the IIO device, the
>>>> at91_adc_touch_pos() also uses it. This simplifies the patch a bit. The
>>>> information required in this function is mostly for debugging purposes.
>>>> Replacing it with a reference to the IIO device would have been a slightly
>>>> bigger change, which may not be worth it (for just the debugging purpose
>>>> and given that we need the back-ref to the IIO device anyway).
>>>
>>> That workq is indeed quirky.  This looks fine to me in general. I'll
>>> want an appropriate ack from the at91 side of things if possible so
>>> let's leave this on the list for a while longer.
>>
>> Hi,
>>
>> I am available to test this patch,
>> Can you tell me on which branch to apply it. On 5.8-rc1 it fails for me
>> (or maybe it needs rebasing ?)
>>
> 
> Hmm, weird.
> I rebased the patches on Jonathan's iio/testing.
> It seemed to work.
> https://github.com/commodo/linux/commits/iio-priv-to-dev
> 
> As for which branch to test/apply. Not sure.
> Maybe Jonathan's iio/testing as base?
> Looks like it's based on 5.8.
> 

Tested-by: Eugen Hristev <eugen.hristev@microchip.com>

I have tested the major features of the driver (including the resistive 
touch) and it looks to be working fine.

I did not fully understand the quirkyness of the workq . Something you 
want to change to that ?

> 
>> Eugen
>>
>>> Poke me if no action in a few weeks.
>>>
>>> Thanks,
>>>
>>> Jonathan
>>>
>>>> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
>>>> ---
>>>>    drivers/iio/adc/at91-sama5d2_adc.c | 30 +++++++++++++++++-------------
>>>>    1 file changed, 17 insertions(+), 13 deletions(-)
>>>>
>>>> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-
>>>> sama5d2_adc.c
>>>> index 9abbbdcc7420..7bce18444430 100644
>>>> --- a/drivers/iio/adc/at91-sama5d2_adc.c
>>>> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
>>>> @@ -402,6 +402,7 @@ struct at91_adc_state {
>>>>         wait_queue_head_t               wq_data_available;
>>>>         struct at91_adc_dma             dma_st;
>>>>         struct at91_adc_touch           touch_st;
>>>> +     struct iio_dev                  *indio_dev;
>>>>         u16                             buffer[AT91_BUFFER_MAX_HWORDS];
>>>>         /*
>>>>          * lock to prevent concurrent 'single conversion' requests through
>>>> @@ -642,13 +643,13 @@ static u16 at91_adc_touch_pos(struct at91_adc_state
>>>> *st, int reg)
>>>>         /* first half of register is the x or y, second half is the scale
>>>> */
>>>>         val = at91_adc_readl(st, reg);
>>>>         if (!val)
>>>> -             dev_dbg(&iio_priv_to_dev(st)->dev, "pos is 0\n");
>>>> +             dev_dbg(&st->indio_dev->dev, "pos is 0\n");
>>>>
>>>>         pos = val & AT91_SAMA5D2_XYZ_MASK;
>>>>         result = (pos << AT91_SAMA5D2_MAX_POS_BITS) - pos;
>>>>         scale = (val >> 16) & AT91_SAMA5D2_XYZ_MASK;
>>>>         if (scale == 0) {
>>>> -             dev_err(&iio_priv_to_dev(st)->dev, "scale is 0\n");
>>>> +             dev_err(&st->indio_dev->dev, "scale is 0\n");
>>>>                 return 0;
>>>>         }
>>>>         result /= scale;
>>>> @@ -1204,9 +1205,9 @@ static unsigned at91_adc_startup_time(unsigned
>>>> startup_time_min,
>>>>         return i;
>>>>    }
>>>>
>>>> -static void at91_adc_setup_samp_freq(struct at91_adc_state *st, unsigned
>>>> freq)
>>>> +static void at91_adc_setup_samp_freq(struct iio_dev *indio_dev, unsigned
>>>> freq)
>>>>    {
>>>> -     struct iio_dev *indio_dev = iio_priv_to_dev(st);
>>>> +     struct at91_adc_state *st = iio_priv(indio_dev);
>>>>         unsigned f_per, prescal, startup, mr;
>>>>
>>>>         f_per = clk_get_rate(st->per_clk);
>>>> @@ -1275,9 +1276,9 @@ static void at91_adc_pen_detect_interrupt(struct
>>>> at91_adc_state *st)
>>>>         st->touch_st.touching = true;
>>>>    }
>>>>
>>>> -static void at91_adc_no_pen_detect_interrupt(struct at91_adc_state *st)
>>>> +static void at91_adc_no_pen_detect_interrupt(struct iio_dev *indio_dev)
>>>>    {
>>>> -     struct iio_dev *indio_dev = iio_priv_to_dev(st);
>>>> +     struct at91_adc_state *st = iio_priv(indio_dev);
>>>>
>>>>         at91_adc_writel(st, AT91_SAMA5D2_TRGR,
>>>>                         AT91_SAMA5D2_TRGR_TRGMOD_NO_TRIGGER);
>>>> @@ -1297,7 +1298,7 @@ static void at91_adc_workq_handler(struct
>>>> work_struct *workq)
>>>>                                         struct at91_adc_touch, workq);
>>>>         struct at91_adc_state *st = container_of(touch_st,
>>>>                                         struct at91_adc_state, touch_st);
>>>> -     struct iio_dev *indio_dev = iio_priv_to_dev(st);
>>>> +     struct iio_dev *indio_dev = st->indio_dev;
>>>>
>>>>         iio_push_to_buffers(indio_dev, st->buffer);
>>>>    }
>>>> @@ -1318,7 +1319,7 @@ static irqreturn_t at91_adc_interrupt(int irq, void
>>>> *private)
>>>>                 at91_adc_pen_detect_interrupt(st);
>>>>         } else if ((status & AT91_SAMA5D2_IER_NOPEN)) {
>>>>                 /* nopen detected IRQ */
>>>> -             at91_adc_no_pen_detect_interrupt(st);
>>>> +             at91_adc_no_pen_detect_interrupt(indio);
>>>>         } else if ((status & AT91_SAMA5D2_ISR_PENS) &&
>>>>                    ((status & rdy_mask) == rdy_mask)) {
>>>>                 /* periodic trigger IRQ - during pen sense */
>>>> @@ -1486,7 +1487,7 @@ static int at91_adc_write_raw(struct iio_dev
>>>> *indio_dev,
>>>>                     val > st->soc_info.max_sample_rate)
>>>>                         return -EINVAL;
>>>>
>>>> -             at91_adc_setup_samp_freq(st, val);
>>>> +             at91_adc_setup_samp_freq(indio_dev, val);
>>>>                 return 0;
>>>>         default:
>>>>                 return -EINVAL;
>>>> @@ -1624,8 +1625,10 @@ static int at91_adc_update_scan_mode(struct iio_dev
>>>> *indio_dev,
>>>>         return 0;
>>>>    }
>>>>
>>>> -static void at91_adc_hw_init(struct at91_adc_state *st)
>>>> +static void at91_adc_hw_init(struct iio_dev *indio_dev)
>>>>    {
>>>> +     struct at91_adc_state *st = iio_priv(indio_dev);
>>>> +
>>>>         at91_adc_writel(st, AT91_SAMA5D2_CR, AT91_SAMA5D2_CR_SWRST);
>>>>         at91_adc_writel(st, AT91_SAMA5D2_IDR, 0xffffffff);
>>>>         /*
>>>> @@ -1635,7 +1638,7 @@ static void at91_adc_hw_init(struct at91_adc_state
>>>> *st)
>>>>         at91_adc_writel(st, AT91_SAMA5D2_MR,
>>>>                         AT91_SAMA5D2_MR_TRANSFER(2) |
>>>> AT91_SAMA5D2_MR_ANACH);
>>>>
>>>> -     at91_adc_setup_samp_freq(st, st->soc_info.min_sample_rate);
>>>> +     at91_adc_setup_samp_freq(indio_dev, st->soc_info.min_sample_rate);
>>>>
>>>>         /* configure extended mode register */
>>>>         at91_adc_config_emr(st);
>>>> @@ -1718,6 +1721,7 @@ static int at91_adc_probe(struct platform_device
>>>> *pdev)
>>>>         indio_dev->num_channels = ARRAY_SIZE(at91_adc_channels);
>>>>
>>>>         st = iio_priv(indio_dev);
>>>> +     st->indio_dev = indio_dev;
>>>>
>>>>         bitmap_set(&st->touch_st.channels_bitmask,
>>>>                    AT91_SAMA5D2_TOUCH_X_CHAN_IDX, 1);
>>>> @@ -1829,7 +1833,7 @@ static int at91_adc_probe(struct platform_device
>>>> *pdev)
>>>>                 goto vref_disable;
>>>>         }
>>>>
>>>> -     at91_adc_hw_init(st);
>>>> +     at91_adc_hw_init(indio_dev);
>>>>
>>>>         ret = clk_prepare_enable(st->per_clk);
>>>>         if (ret)
>>>> @@ -1945,7 +1949,7 @@ static __maybe_unused int at91_adc_resume(struct
>>>> device *dev)
>>>>         if (ret)
>>>>                 goto vref_disable_resume;
>>>>
>>>> -     at91_adc_hw_init(st);
>>>> +     at91_adc_hw_init(indio_dev);
>>>>
>>>>         /* reconfiguring trigger hardware state */
>>>>         if (!iio_buffer_enabled(indio_dev))

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
