Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 692661FCE8D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 15:37:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=234HyXndaycwJbKr95+8UQ9RK9m21mQmH2VOtBd5+X8=; b=k/8ZkX+r/L97iO
	g2P7w9AMdby3e6da/aMS0OF/zucobecQIxo4PiwByT7ynMuhNghLu7/+4i8J9zs9U0NHV+eA2liUF
	VyDAh2nt1Fo3ad2p5uXVw/yuVP8l+9C+MJ5M9z0Na65JSVAg3zt+etDbDziHkuDD4+TklIbPQZubr
	K7e4QpBMdkqpNhHp24JWjrJ1z3ThtfqxgQd1X8GzjFQRZvziAEqlmSxdu6KQJjz9qMByvdmslk76T
	iMS7A6kA0tNmbSvAr/0OmAJuXTyVFthM1DE+AiehFMeGnIL2WkdZT/rowINxpOcq2bQ5qwHVAyY3k
	LrQZltFaU0PznZx3wnVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlYFz-0002pM-Hm; Wed, 17 Jun 2020 13:37:35 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlYFn-0002oJ-H1
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 13:37:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592401043; x=1623937043;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=4kXpZB9P0pBc+yiLVeSjIxvlobE5TiSDapH3MZnS004=;
 b=Vf8mqMwO4I3eRwJKFdbz9WIHwZKZz8vJ2jrWFeovRPzOBei+R0JiCsZC
 nvK1QEl69lbpnd9rIpcZKFJHgSj+ijG0JeYpurCRVVaUS7pryBzGukXQA
 0mdaq9AHyAhgin3/9WlxtOidNZBUsRS7kWbTmlzvkNfV176FN4qk37P+1
 puuLaQ4oPcp6m63+suyvtIgO7V3wN5E21fckxpAQxL3bKl2Rhfp17o048
 xXPDhaZqTwi+oV6g/lEzZPfUNHdPsmMmUyThLbGPHlt2Vdp/c50kXedW+
 tKZnTFcNodw7C/rLeCvHSRbXXSlobaqzhRv5hb4Qq1KzJQA/E6PUAzCcm Q==;
IronPort-SDR: fILc0E98FNgaklmPfaeOkcY184oGfxyq90TKXYKr7NpEsHdv7OiKLWCrkiHSHzmWEvAk1FBa3n
 uGPz0f8ncif2vg900EeBWJVgsh1ICd+9TOpHYbai2U6v+O4Dxe5GBZ5uQld4QiZ7Jr04N3ZrRd
 g9c+fAOMQDTtFBiWzLw0aZYWnLlkhkJUxx38kasik1gFGPW08eCP8hAkuzu1OKS6zyNveKKAIp
 iYBN82+7qicsA7d6V5D7z1wuDZB9b4W63gQ7wKbZbLk8KioCo1g05yrPyGiSQYu3ehUO410K7Y
 z9U=
X-IronPort-AV: E=Sophos;i="5.73,522,1583218800"; d="scan'208";a="80465785"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Jun 2020 06:37:21 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 17 Jun 2020 06:37:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3
 via Frontend Transport; Wed, 17 Jun 2020 06:37:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LZg5aNbSiHMVqyj+lnIgZOsprEM6Ijouq7A2ylsuGj1/PjRpcSVI/xTNv7Vs73Y0y8aRTxy+riFuU7VP9HUiIzHT6GVl1FrmVOtHhdMoQrxcckneD7yNb8R/R1+ZPOfWobHy6s9tog91I2fNunWOxdJHKpdMJkomW+pEmz55XTfBCLSk68h+jn+DV44aiovEw/MsbDqSxZ0y/LbLfv0FdKre4YJclDS9inujlfd6FV2cf3pkeCFkcc+EVgM4sz6uFXZ4T4towCKtVSIyszx4tQ4kns+S6G3C6A1yBTVF+jEbB4/yfFen3LSnjZxtxepMsTuJTkX+Bg9gjwy1RGhm6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4kXpZB9P0pBc+yiLVeSjIxvlobE5TiSDapH3MZnS004=;
 b=BNpBLrYADI0+f5ML8RcSbxJ0Tmo61Pi/1/ag6R4EZKVjU+gOGkvnRGYr/MUvW1t5NdYbniDYSggG0BNYChBUsY1q2fBlVndyVw/QYqy1A3SBmLjzJtWNlIw0SILT3k4fbDqc2PaD7kjl5dtUZJBJ8qhJ9C3CosmMLWiFz508NUKP9Y3aUXmGhiUEXlMTTQwy5aMt9xfie0fRmv8XD7yh5c7x92Xid8HME5BBuR2/9VFPyiYJgrj+cEz+UfQRNTlfV/LDWH64Ic/V4Vcqi7C0p7Y2CI+xYEwU/bw0TCt9ev5m3uN433rZ+ZrViapOraBCtfd2OIuKeouHDj04ybPymA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4kXpZB9P0pBc+yiLVeSjIxvlobE5TiSDapH3MZnS004=;
 b=ElJIaWxrMDq/lLdYxQK/1VRqFhlbOAmYJu+vbf2Hh7313LaKs+IVFTMsvjZ7F9DfEjwO6fdQ5vAWb80Wz5A/wekOxqra1cZzxCMQk/EEhpeBDf2JcP6rb+d9abAzDzqCU8mBEHySYDcyKP/AZr19IajsrIxBibCrJ9RpGnqGR8k=
Received: from BYAPR11MB2999.namprd11.prod.outlook.com (2603:10b6:a03:90::17)
 by BYAPR11MB3735.namprd11.prod.outlook.com (2603:10b6:a03:b4::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Wed, 17 Jun
 2020 13:37:20 +0000
Received: from BYAPR11MB2999.namprd11.prod.outlook.com
 ([fe80::996a:3417:7ea7:2b8f]) by BYAPR11MB2999.namprd11.prod.outlook.com
 ([fe80::996a:3417:7ea7:2b8f%7]) with mapi id 15.20.3109.021; Wed, 17 Jun 2020
 13:37:20 +0000
From: <Eugen.Hristev@microchip.com>
To: <Jonathan.Cameron@Huawei.com>, <alexandru.Ardelean@analog.com>
Subject: Re: [PATCH v2 3/3] iio: remove
 iio_triggered_buffer_postenable()/iio_triggered_buffer_predisable()
Thread-Topic: [PATCH v2 3/3] iio: remove
 iio_triggered_buffer_postenable()/iio_triggered_buffer_predisable()
Thread-Index: AQHWMotBwkWaCEB0Gky7JFtHaSPpIajCXn4AgAKhXICAABHNAIAX4hqA
Date: Wed, 17 Jun 2020 13:37:20 +0000
Message-ID: <37ef45f4-9330-86ea-77c1-3138bb88601b@microchip.com>
References: <20200525113855.178821-1-alexandru.ardelean@analog.com>
 <20200525113855.178821-3-alexandru.ardelean@analog.com>
 <20200531164020.765822dc@archlinux>
 <a0253d719a4390f65668789e5fc182ec19355f17.camel@analog.com>
 <20200602095406.00005add@Huawei.com>
In-Reply-To: <20200602095406.00005add@Huawei.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
authentication-results: Huawei.com; dkim=none (message not signed)
 header.d=none;Huawei.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ef27a1b7-5097-4a13-22b7-08d812c38f1d
x-ms-traffictypediagnostic: BYAPR11MB3735:
x-microsoft-antispam-prvs: <BYAPR11MB373561FEDC78EF5B875C87ACE89A0@BYAPR11MB3735.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Tsr+jiuG8/VpaQSmIBJ2Qa/y9libdgNUF4GnItW04o6UtMwQY1im5bMNjhfma3/AWWR9rbw6j18dZ2Jod5ORMSOngoJKyuj5LJ1avGB0PurWXBkG+Sp/m1nUl3YZNaibXzQ+3vdKImh7ow3lzQ1uQuKO4/4eqpIxvpSPQfJPfRco5Eo4Pe+Y1iy1c997bNDiMGHkY92xi8UNhBbV+9aUvRCNcTEzkCxIdhb20VJqW5BYWVle6hbdFoAZywjX3Xse1JTvhq1/t3/Qy9ksuFYa5/ASJU7o4E3FxJqm4zo4BtGXgvcrS2Y1Wyk2DURf0OwuFZkN4vxsWcjqkIx6xaMfJk/Ecd7Cj3F6zqqfki9s9XkaBr/1l3xO/+IXxKu/xZcstwHzan/gvZaBh3Yp6n9gv/wHAY3QL2uMqtEMgY+pECyi/vUQB39+cCRkJbAFTLuSqZfbJ6g3yxnLa7t6yytpgw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2999.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(366004)(346002)(39860400002)(136003)(396003)(5660300002)(316002)(86362001)(31686004)(6512007)(110136005)(54906003)(31696002)(4326008)(186003)(71200400001)(26005)(76116006)(66446008)(91956017)(66946007)(8676002)(2616005)(966005)(478600001)(6486002)(6506007)(64756008)(36756003)(53546011)(66476007)(66556008)(83380400001)(8936002)(7416002)(2906002)(43740500002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Sjk2i0SLQ0CK9cJyAaulNF0mmbRePUV3JiIqCptjxEwO7da4J/Pv7Z9Qxbp6wZwTVi2pd2F1wlshqIW37wO5jIEy2JRyek0naQp3I/9xCasG6iIUWg1J/0RQXmksI9E0pEZzyb43M6gUtaex3bn+gQ+LimLx18RyM1/Dx9yAAa5XmskItfJt+OF/u8iZb5nja0PC51x6E7SpHKfWTiW+vkwhoCHV9HYIW6NXR9Cqwt9gv5yYhlmyAbDpMmpRHG37bLWiqxtkYiQzQ0bXeVBKb3ZGNK5uwAWAsit8kwwNj1+TsPqQH1ni2uLCw0U88OXkLgKzNBvL9sF0N9zroxqYjaZH/NO0qYKJYe1zf4lb21D0iEir3weWz/RMPtaiYc8w5GT4Gc1LbC39HX7iSK7/X+0627Tn73c1UvLQ2ER2CL6z80/stmPgd3nu34XQFzrS24n7u+iyoTB0n9X653vR93c16XiBvA6x7qUaX/lbJ7c=
x-ms-exchange-transport-forked: True
Content-ID: <D88C4ED3D8692B41936B609D729F0945@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ef27a1b7-5097-4a13-22b7-08d812c38f1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 13:37:20.1109 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sjqaIn2a+IUb/KYp16Lx6nMTqgOmCkuDa12SmdM023JKEjj6NM+mKPb41/byS74gsSbn6jpUydRgGvbjesIVKve8ZYMub3W+ljI039nYpHQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3735
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_063723_585544_E367AC4C 
X-CRM114-Status: GOOD (  21.42  )
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
Cc: lars@metafoo.de, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 songqiang1304521@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 lorenzo.bianconi83@gmail.com, shawnguo@kernel.org, linus.walleij@linaro.org,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02.06.2020 11:54, Jonathan Cameron wrote:
> On Tue, 2 Jun 2020 07:50:23 +0000
> "Ardelean, Alexandru" <alexandru.Ardelean@analog.com> wrote:
> 
>> On Sun, 2020-05-31 at 16:40 +0100, Jonathan Cameron wrote:
>>> On Mon, 25 May 2020 14:38:55 +0300
>>> Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:
>>>
>>>> From: Lars-Peter Clausen <lars@metafoo.de>
>>>>
>>>> This patch should be squashed into the first one, as the first one is
>>>> breaking the build (intentionally) to make the IIO core files easier to
>>>> review.
>>>>
>>>> Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
>>>> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
>>>> ---
>>>
>>> Friend poke.  Version log?
>>
>> Version log is in the first patch.
>> I was wondering if I omitted it.
>> Seems, this time I didn't. But I admit, it probably would have been better
>> here.
> Ah fair enough.  That works fine if there is a cover letter but not
> so much just putting things in the first patch!
>>
>>>
>>> Other than the wistful comment below (which I'm not expecting you to
>>> do anything about btw!) whole series looks good to me.
>>>
>>> These are obviously no functional changes (I think) so it's only really
>>> patch 2 that
>>> could do with more eyes and acks.
>>>
>>> Far as I can tell that case is fine as well because of the protections
>>> on being in the right mode, but more eyes on that would be great.
>>>
>>> So assuming that's fine, what commit message do you want me to use for
>>> the fused single patch?
>>
>> Commit message-wise: I think the message in the first commit would be
>> mostly sufficient.
>> No idea what other description would be needed.
>>
>> So, maybe something like:
>>
>> ----------------------------------------------------------------------
>> All devices using a triggered buffer need to attach and detach the trigger
>> to the device in order to properly work. Instead of doing this in each and
>> every driver by hand move this into the core.
>>
>> At this point in time, all drivers should have been resolved to
>> attach/detach the poll-function in the same order.
>>
>> This patch removes all explicit calls of iio_triggered_buffer_postenable()
>> & iio_triggered_buffer_predisable() in all drivers, since the core handles
>> now the pollfunc attach/detach.
>>
>> The more peculiar change is for the 'at91-sama5d2_adc' driver, since it's
>> not obvious that removing the hooks doesn't break anything**
>> ----------------------------------------------------------------------
>>
> 
> Looks good.
> 
>> ** for the comment about 'at91-sama5d2_adc', we really do need to get some
>> testing; otherwise this risks breaking it.
> 

Hi,

I can test it, do we have any patchwork so I can easily download the 
patches ?
I have issues when applying them.

Thanks !

> Agreed.
> 
>>
>>
>>>
>>> Thanks,
>>>
>>> Jonathan
>>>
>>>>   static const struct iio_trigger_ops atlas_interrupt_trigger_ops = {
>>>> diff --git a/drivers/iio/dummy/iio_simple_dummy_buffer.c
>>>> b/drivers/iio/dummy/iio_simple_dummy_buffer.c
>>>> index 17606eca42b4..8e13c53d4360 100644
>>>> --- a/drivers/iio/dummy/iio_simple_dummy_buffer.c
>>>> +++ b/drivers/iio/dummy/iio_simple_dummy_buffer.c
>>>> @@ -99,20 +99,6 @@ static irqreturn_t iio_simple_dummy_trigger_h(int
>>>> irq, void *p)
>>>>   }
>>>>
>>>>   static const struct iio_buffer_setup_ops
>>>> iio_simple_dummy_buffer_setup_ops = {
>>>> - /*
>>>> -  * iio_triggered_buffer_postenable:
>>>> -  * Generic function that simply attaches the pollfunc to the
>>>> trigger.
>>>> -  * Replace this to mess with hardware state before we attach the
>>>> -  * trigger.
>>>> -  */
>>>> - .postenable = &iio_triggered_buffer_postenable,
>>>> - /*
>>>> -  * iio_triggered_buffer_predisable:
>>>> -  * Generic function that simple detaches the pollfunc from the
>>>> trigger.
>>>> -  * Replace this to put hardware state back again after the trigger
>>>> is
>>>> -  * detached but before userspace knows we have disabled the ring.
>>>> -  */
>>>> - .predisable = &iio_triggered_buffer_predisable,
>>>>   };
>>>>
>>> Hmm. Guess we should probably 'invent' a reason to illustrate the bufer
>>> ops in the dummy example.  Anyone feeling creative?
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
