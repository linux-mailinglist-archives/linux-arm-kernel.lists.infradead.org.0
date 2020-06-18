Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A24B1FF28A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 15:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTiEETCplVY3gg3uUadZvFdKNW6pbGUrwwpwOV06afc=; b=tOh5WFDLF9NYms
	a0Ib8HYrh4S1pue4CVawSaKztvXgTZjAl4HWPdZGL/TJdmR32DfyvB/rtxEaRAP1ohy2gaYgV30RE
	CjXRwXsQoFpU5nzldSYQqQ3w5r9c5tXc/apa7hIUh/A5NagmrxPzWHV96CjllgQV3uhuqtI/+0b9z
	dGvNETaM6A/yEeRpT3eAATZbTU3tNSBERMPLaDethKBKqBEj3LrBKKUOvKt7O8Cdd77KOxKkeLnfv
	XfzOVXQ5t6PLcYHnR5qr/fZ1EvQWQCb3a6IyC9qvMbWx7t1ToY2rhNIMa3K2iM9eawvpRIIjpOjgF
	KfJlCNLrEnnRZUb+WDlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jluB1-0007y2-65; Thu, 18 Jun 2020 13:01:55 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jluAs-0007wz-46
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 13:01:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592485306; x=1624021306;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=D0bexiqExjDBtzYS36YvG7cgtzZAYUqLMQBMUFMY0iY=;
 b=QxXeOk7LcDX0KOa3Ve5IUFM8hyLIogN6dn03VmzKuBUuDD/QSrH6Totu
 ZdfPQ+4OviagFZDUD2XW5aar6bpIAkYuTE1M+R2BwE4etK9T1roH0WA5f
 2TGohAVwamrubdH4uhVwNTVYfeP4WpuEbVL/+bqJYYPmovYZGmIN8fXl2
 FHbFPYrP1OqBa3F9CA+aof5KMytrNilKXILtPYgMWw948XhcC489kxfCl
 Mkx550BUCSIp4fGh3frPfaTE6FIxgO7WZYZZgtlUtZHHmb7XN/TxdSGgN
 RDBor1Tm/LJvC8ieYx9x5qD3cu7ISXeu08toKqxebFOKaTaonFarO8ngL A==;
IronPort-SDR: Zz9yOX4MgCkdjwVzelJKJk7hhVbncrHAc7g2gJcRTOyBL3dRsfyQ4vjfj1J/7ekYzI/+VMLfyY
 CT1a4vxslCaLrJUypr2Lcle9/e7SHfB2y1eOxmWCxkB1XaU9jGvpAgENvnpiAmQed+4PrY0HUh
 /zbgisEru2obLcuRx7qT7rPaLofkUP6+NromKsajVwxRpXRfAJ09cKm57It0IpYihghRnTFCt3
 BEc2096h5HKiu71r7dmhiGbM3eomPvN9tPwOalBG1JNp0Wo+M4wmgz8qf+8IUMjnkhajXYgSBv
 uT8=
X-IronPort-AV: E=Sophos;i="5.73,526,1583218800"; d="scan'208";a="79973001"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Jun 2020 06:01:41 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 18 Jun 2020 06:01:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3 via Frontend
 Transport; Thu, 18 Jun 2020 06:01:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UKlzhSbwsDJJFFncnsxsynLgJBcD2E/psbK/c7FP4gczjHUBkfyLPFsZ9xF6oEXvjXRPRAH8xPaArhCt253Pl7c3dUgxSczPBAAeuBHDuE39XLZ5HILBqRHrVB6OrGUO82Doq/JbDTgKB1wZUEuNDEm+2zVm9P68qaAr56PQ/HrZA3+3HKKIxffwX1rCNe2SEKwwBBC9qGrhQ0WC+BG5kVKC+UA6qBQBrbx/R2/OEyiFeaigMOw6Q+CxjqZlHsnXI2zdQrcMeJvJmaLVgUnQ+HuYUit+K1xlMKjTowbGkw16bCsH+DIoL7q4Ho2/NLfRZ3WOM2DuurFY662RuERvjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D0bexiqExjDBtzYS36YvG7cgtzZAYUqLMQBMUFMY0iY=;
 b=jVrnJKxQixzBcM2JclAkt9anBfVJ6/iAYhHXq/LCW5erm6RTcoYyqI7+FxAiFweDmfR94eoiVmJnyx389j63MGLFb5sM/LZa3HN+S/N5F9lvbwZXg/22l+PObMXuHFsvVsYn4r0vS78pIn7kNLxD2Ap4Beupk+Fn0GcQcfvWryXje/ejIReMNF7+osoXzpaSklpbE3SmiJsBTevtCUkUmhPzyVCu5vYfCS5vpcJgDm1KB4zjkCyPFhgGk5zF6xx35miJwW+QeXi1uaJ05R4fKaGk0p0oAOBtMJ8Zp3buzyHdeH7PMlaAzgKiGg2HCvMCh+3Mmvp+Y0qcynx+9VhsTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D0bexiqExjDBtzYS36YvG7cgtzZAYUqLMQBMUFMY0iY=;
 b=MIbghvb7NstHpBWD13BADTLwH2C1Iuc/+6YV+q2/lfh4DyEXilnC1Qy4ppa27lGqJd8R6QBh9GmXNYP8L70PAnneWyaBRu7J7o45K3i97S4/pus2PenpxcfeOXMrYY8I59pN1esZVLMWvmsM59niG80az/EGdt4xzAesCVb3Z2M=
Received: from BYAPR11MB2999.namprd11.prod.outlook.com (2603:10b6:a03:90::17)
 by BYAPR11MB3319.namprd11.prod.outlook.com (2603:10b6:a03:77::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.25; Thu, 18 Jun
 2020 13:01:37 +0000
Received: from BYAPR11MB2999.namprd11.prod.outlook.com
 ([fe80::996a:3417:7ea7:2b8f]) by BYAPR11MB2999.namprd11.prod.outlook.com
 ([fe80::996a:3417:7ea7:2b8f%7]) with mapi id 15.20.3109.021; Thu, 18 Jun 2020
 13:01:37 +0000
From: <Eugen.Hristev@microchip.com>
To: <alexandru.Ardelean@analog.com>, <Jonathan.Cameron@Huawei.com>
Subject: Re: [PATCH v2 3/3] iio: remove
 iio_triggered_buffer_postenable()/iio_triggered_buffer_predisable()
Thread-Topic: [PATCH v2 3/3] iio: remove
 iio_triggered_buffer_postenable()/iio_triggered_buffer_predisable()
Thread-Index: AQHWMotBwkWaCEB0Gky7JFtHaSPpIajCXn4AgAKhXICAABHNAIAX4hqAgAAERoCAAYQUAA==
Date: Thu, 18 Jun 2020 13:01:37 +0000
Message-ID: <e17fc5b3-fc6b-5980-7294-6d0a151138da@microchip.com>
References: <20200525113855.178821-1-alexandru.ardelean@analog.com>
 <20200525113855.178821-3-alexandru.ardelean@analog.com>
 <20200531164020.765822dc@archlinux>
 <a0253d719a4390f65668789e5fc182ec19355f17.camel@analog.com>
 <20200602095406.00005add@Huawei.com>
 <37ef45f4-9330-86ea-77c1-3138bb88601b@microchip.com>
 <0eeae8e8c2c1a3f21e15c1931bacb197a8245104.camel@analog.com>
In-Reply-To: <0eeae8e8c2c1a3f21e15c1931bacb197a8245104.camel@analog.com>
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
x-ms-office365-filtering-correlation-id: 8ad7d74c-c9ab-4509-e4dc-08d81387bc7b
x-ms-traffictypediagnostic: BYAPR11MB3319:
x-microsoft-antispam-prvs: <BYAPR11MB33198AC36EE2919D87388F45E89B0@BYAPR11MB3319.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 11pHK80xLkNKwrX5KvZ1XhCnOhugN09KMZ+MkQpYG/DtGy7NRoGWg4JLMGpf1h3sfvfMMxMgV+6Oxr4g2Tv518QjEPUyVOAhtZhvBw2Is/XDVD6oXpcjD55LujRQEX5jtyO/2vggfEgXRXZXXGHOQxB2KUVQ5eWWPx5ZYxlNJ0nTD3QBnOz7eKQ5w2Sqaw0cYbtqFZnF8MoubS8A0CReYfBxHJjtfKahC/FSRnHOMWxs4IrsChnoHwiSeUgs6ti1XlAE4OANn6TQ+sLXnlK8YrszF2PDR1KFLvDXsDjEa9bRB4teWDWwsRN1gTg4qCik+NoTiK3QkNhvxF9rDSgS9RbDYa6woSAzgAA5HhF1LJ1m1mvgVNPN4uvL4XDn0xgtf7j7oeyHnmngG+zPODiJM/CiKn54QdMNFxH17E3V9mAIe+Dn+NRdP/nR7vc/kCUog0yTb5Wtxe1MyXkaSDltyg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2999.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(366004)(136003)(396003)(376002)(39860400002)(4326008)(6486002)(31686004)(66556008)(110136005)(478600001)(6512007)(64756008)(66946007)(186003)(2616005)(316002)(6506007)(66446008)(83380400001)(71200400001)(66476007)(26005)(966005)(53546011)(5660300002)(7416002)(86362001)(31696002)(76116006)(54906003)(91956017)(8676002)(8936002)(2906002)(36756003)(43740500002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: pfdnT7m/lTXmSjHTYEhUsuntORRhfGEhrBj8vBx/NN5k55pdwkhk0fwFzlGmwd0UCd47QHjQhmDT2Ae7VzInYJfyJxQF6hOfdCjplky+r6EjIhLtBY9AEm3+Ls1LUMj/fNSXASjS8bTl7tQtACiqRbAnG730DygY3xfUV4EmFGgpsEIVQDUhzMKLQ0x8NWgj82HojW4vv9ZkOO08y31+qzt9WUy8xCuNc6VkpIGtHE3Cjd/YKDe81FqxJCWWBBVXZnw0faPTy4za6FLh6/u0vncoYCA0Qz/22u4pkGuuOTCPZG0X6+tNWmLNrnANSdbjyDJ3isL78LmWefUUnYXCCABnkpx+GT89MMd9EkWDcky9GPYG1tRc2YvNZ0+7Cs6o9q/DJkGGtDqE9vy+POxxnT2+0EngfSghHd1ork2KRlmdgsOmfi+ifAjtIegXQ7ZkLOivyRuh+9bpNtqd44ZV8fH8sc1zrrB2Dka6Li76XK4=
x-ms-exchange-transport-forked: True
Content-ID: <B0EDB4575451B74D81B9CB5687756C3B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ad7d74c-c9ab-4509-e4dc-08d81387bc7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 13:01:37.5644 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TyXc4vwIMAPOUQJ2mjNySZWG4vraRH8/Jyjzl3jsiFLHr9L8QEotTwXxNCRIJQrXXG7bX0MetsUB9IOLKoZRCuFfIkzOfcayej982wLVs0k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3319
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_060146_183358_17E2A50E 
X-CRM114-Status: GOOD (  21.43  )
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
Cc: linus.walleij@linaro.org, lars@metafoo.de, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, songqiang1304521@gmail.com, jic23@kernel.org,
 mcoquelin.stm32@gmail.com, lorenzo.bianconi83@gmail.com, shawnguo@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17.06.2020 16:52, Ardelean, Alexandru wrote:
> On Wed, 2020-06-17 at 13:37 +0000, Eugen.Hristev@microchip.com wrote:
>> [External]
>>
>> On 02.06.2020 11:54, Jonathan Cameron wrote:
>>> On Tue, 2 Jun 2020 07:50:23 +0000
>>> "Ardelean, Alexandru" <alexandru.Ardelean@analog.com> wrote:
>>>
>>>> On Sun, 2020-05-31 at 16:40 +0100, Jonathan Cameron wrote:
>>>>> On Mon, 25 May 2020 14:38:55 +0300
>>>>> Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:
>>>>>
>>>>>> From: Lars-Peter Clausen <lars@metafoo.de>
>>>>>>
>>>>>> This patch should be squashed into the first one, as the first one is
>>>>>> breaking the build (intentionally) to make the IIO core files easier
>>>>>> to
>>>>>> review.
>>>>>>
>>>>>> Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
>>>>>> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
>>>>>> ---
>>>>>
>>>>> Friend poke.  Version log?
>>>>
>>>> Version log is in the first patch.
>>>> I was wondering if I omitted it.
>>>> Seems, this time I didn't. But I admit, it probably would have been better
>>>> here.
>>> Ah fair enough.  That works fine if there is a cover letter but not
>>> so much just putting things in the first patch!
>>>>> Other than the wistful comment below (which I'm not expecting you to
>>>>> do anything about btw!) whole series looks good to me.
>>>>>
>>>>> These are obviously no functional changes (I think) so it's only really
>>>>> patch 2 that
>>>>> could do with more eyes and acks.
>>>>>
>>>>> Far as I can tell that case is fine as well because of the protections
>>>>> on being in the right mode, but more eyes on that would be great.
>>>>>
>>>>> So assuming that's fine, what commit message do you want me to use for
>>>>> the fused single patch?
>>>>
>>>> Commit message-wise: I think the message in the first commit would be
>>>> mostly sufficient.
>>>> No idea what other description would be needed.
>>>>
>>>> So, maybe something like:
>>>>
>>>> ----------------------------------------------------------------------
>>>> All devices using a triggered buffer need to attach and detach the trigger
>>>> to the device in order to properly work. Instead of doing this in each and
>>>> every driver by hand move this into the core.
>>>>
>>>> At this point in time, all drivers should have been resolved to
>>>> attach/detach the poll-function in the same order.
>>>>
>>>> This patch removes all explicit calls of iio_triggered_buffer_postenable()
>>>> & iio_triggered_buffer_predisable() in all drivers, since the core handles
>>>> now the pollfunc attach/detach.
>>>>
>>>> The more peculiar change is for the 'at91-sama5d2_adc' driver, since it's
>>>> not obvious that removing the hooks doesn't break anything**
>>>> ----------------------------------------------------------------------
>>>>
>>>
>>> Looks good.
>>>
>>>> ** for the comment about 'at91-sama5d2_adc', we really do need to get some
>>>> testing; otherwise this risks breaking it.
>>
>> Hi,
>>
>> I can test it, do we have any patchwork so I can easily download the
>> patches ?
>> I have issues when applying them.
> 
> Is this good?
> 
> https://patchwork.kernel.org/patch/11568743/
> Series:
> https://patchwork.kernel.org/project/linux-iio/list/?series=293141
> 
> Many thanks
> Alex

On at91-sama5d2-adc driver, sama5d2-xplained board,
Tested-by: Eugen Hristev <eugen.hristev@microchip.com>

I applied all three patches and tested together with the other patch on 
sama5d2-adc driver.
It looks to be working fine. If I discover something later, I will let 
you know.
Thanks

> 
>>
>> Thanks !
>>
>>> Agreed.
>>>
>>>>
>>>>> Thanks,
>>>>>
>>>>> Jonathan
>>>>>
>>>>>>    static const struct iio_trigger_ops atlas_interrupt_trigger_ops = {
>>>>>> diff --git a/drivers/iio/dummy/iio_simple_dummy_buffer.c
>>>>>> b/drivers/iio/dummy/iio_simple_dummy_buffer.c
>>>>>> index 17606eca42b4..8e13c53d4360 100644
>>>>>> --- a/drivers/iio/dummy/iio_simple_dummy_buffer.c
>>>>>> +++ b/drivers/iio/dummy/iio_simple_dummy_buffer.c
>>>>>> @@ -99,20 +99,6 @@ static irqreturn_t iio_simple_dummy_trigger_h(int
>>>>>> irq, void *p)
>>>>>>    }
>>>>>>
>>>>>>    static const struct iio_buffer_setup_ops
>>>>>> iio_simple_dummy_buffer_setup_ops = {
>>>>>> - /*
>>>>>> -  * iio_triggered_buffer_postenable:
>>>>>> -  * Generic function that simply attaches the pollfunc to the
>>>>>> trigger.
>>>>>> -  * Replace this to mess with hardware state before we attach the
>>>>>> -  * trigger.
>>>>>> -  */
>>>>>> - .postenable = &iio_triggered_buffer_postenable,
>>>>>> - /*
>>>>>> -  * iio_triggered_buffer_predisable:
>>>>>> -  * Generic function that simple detaches the pollfunc from the
>>>>>> trigger.
>>>>>> -  * Replace this to put hardware state back again after the trigger
>>>>>> is
>>>>>> -  * detached but before userspace knows we have disabled the ring.
>>>>>> -  */
>>>>>> - .predisable = &iio_triggered_buffer_predisable,
>>>>>>    };
>>>>>>
>>>>> Hmm. Guess we should probably 'invent' a reason to illustrate the bufer
>>>>> ops in the dummy example.  Anyone feeling creative?
>>>> _______________________________________________
>>>> linux-arm-kernel mailing list
>>>> linux-arm-kernel@lists.infradead.org
>>>> https://urldefense.com/v3/__http://lists.infradead.org/mailman/listinfo/linux-arm-kernel__;!!A3Ni8CS0y2Y!ulH92S3o_JWLMQfg5VBrFknwc_-a0K5AHpJBrTEB-RtYEp7PnRJ9jA_EacOzFQmbNIKO-Q$
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
