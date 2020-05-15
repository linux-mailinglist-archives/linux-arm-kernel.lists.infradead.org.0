Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E37B1D49B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 11:35:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GmlHvoSyht049t764RPkZeTPpQoyn/3DysmHzfLXgo=; b=c609FR03MlBDZh
	tuK+duLzyoDcJegu2eYuCG6hqmEaPfaP5A1xlNjABIS91wLvRIjkoHndnPAXp//car8e7UPk5h8E6
	p3fsKREaJNtjvqzmZJKr64oxnXIre377vUgSZvVVVivu39e8joVP8jsWrgf1ufjTrhucn1DNdswHm
	r46BZ6kGsFP41/A9OG+3OOEK/bePQMjCTBt9TzMoqU2F8GBuHsWGDkWiyy2DpF+4leYbP9Vys1DyC
	5dITY+WYCCz8OFk7qlJYG0XEHD7oOaCapR33krET8GWaJxHcrvaXJsGz9V/rGXR8krwPfEbQ5HN32
	M9CtG4FU4XRSAxCl0AHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZWk5-0001UX-VA; Fri, 15 May 2020 09:34:57 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZWji-0001KW-6K
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 09:34:39 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04F9XUpx013573; Fri, 15 May 2020 11:34:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=kIbCUmvZzrGEvYKM2nyNwIpvOBCS9R6qDI14SIm99HY=;
 b=qv0C9Up+c497UY6N2ziLJc3ApOSQNAM75XtYD6T2/6y8Jlakdsu/EmVRaprMU8ITFnE1
 3MuALblx7smSCoTAhEEq15RncLzSd9yve0IxzlPoTlhWV4O+1/Fs7Zy8CucXZ3HqKOvf
 EX7hUPNGGl9G8FYFnAFBXYNFZCZsKkE9HET5bjYbaOgCW1EBHeMKhWSxmUK1wid5a+xt
 1XzB36ug1w7ZY6kDnhYXF1X7+ppYyTX3ckP0f2pBQVOUjVzrfmlsn9/GkoHtBuE8fdp8
 C+KOPb7c2TaN74ITOg2935FP9dzjXPl+ImNM/ttnN78xZ9t7DfInkOIddd9OJtOvQLJl eA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3100vys8ue-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 May 2020 11:34:17 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7128F100034;
 Fri, 15 May 2020 11:34:16 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 55B332AF960;
 Fri, 15 May 2020 11:34:16 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 15 May
 2020 11:34:15 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Fri, 15 May 2020 11:34:15 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: dillon min <dillon.minfei@gmail.com>
Subject: Re: [Linux-stm32] [PATCH v3 3/5] ARM: dts: stm32: enable ltdc binding
 with ili9341 on stm32429-disco board
Thread-Topic: [Linux-stm32] [PATCH v3 3/5] ARM: dts: stm32: enable ltdc
 binding with ili9341 on stm32429-disco board
Thread-Index: AQHWKckeJCttwtJ4Q0KZXBBPInzZ9ainaAuAgAAEJgCAAUVIgIAADrKAgAACuQA=
Date: Fri, 15 May 2020 09:34:15 +0000
Message-ID: <2afd2853-e3bc-0c69-a0e5-8d4aa631a634@st.com>
References: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
 <1589267017-17294-4-git-send-email-dillon.minfei@gmail.com>
 <CACRpkda5VjjBdbruXTi33QBNb=VU6vK2zDE8yyQXoWw7=NQFeg@mail.gmail.com>
 <a4ebd7cd-5756-0683-135f-0f96be8a4a7b@st.com>
 <CAL9mu0Jt_xwo5pJfcx6G3grBuOaxLXvakpEjiB4gV3=bkiq2fg@mail.gmail.com>
 <818b93b4-4431-8338-cd90-ed125ecac615@st.com>
 <CAL9mu0L6d2V5qypPfOSeMdhc=DdHkcsaF4GysNG-vfDe5npkhw@mail.gmail.com>
In-Reply-To: <CAL9mu0L6d2V5qypPfOSeMdhc=DdHkcsaF4GysNG-vfDe5npkhw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <26620BBF7B05D942A1AF671AA1D5FAE6@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-15_03:2020-05-14,
 2020-05-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_023434_785947_01762B8B 
X-CRM114-Status: GOOD (  23.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Michael Turquette <mturquette@baylibre.com>, Dave Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:DRM
 PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Sam
 Ravnborg <sam@ravnborg.org>, linux-clk <linux-clk@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/15/20 11:24 AM, dillon min wrote:
> Hi Benjamin,
>
> thanks for reply.
>
> On Fri, May 15, 2020 at 4:31 PM Benjamin GAIGNARD
> <benjamin.gaignard@st.com> wrote:
>>
>>
>> On 5/14/20 3:07 PM, dillon min wrote:
>>> Hi Alexandre,
>>>
>>> On Thu, May 14, 2020 at 8:53 PM Alexandre Torgue
>>> <alexandre.torgue@st.com> wrote:
>>>>
>>>> On 5/14/20 10:24 AM, Linus Walleij wrote:
>>>>> On Tue, May 12, 2020 at 9:04 AM <dillon.minfei@gmail.com> wrote:
>>>>>
>>>>>> From: dillon min <dillon.minfei@gmail.com>
>>>>>>
>>>>>> Enable the ltdc & ili9341 on stm32429-disco board.
>>>>>>
>>>>>> Signed-off-by: dillon min <dillon.minfei@gmail.com>
>>>>> This mostly looks good but...
>>>>>
>>>>>> +&spi5 {
>>>>>> +       status = "okay";
>>>>>> +       pinctrl-0 = <&spi5_pins>;
>>>>>> +       pinctrl-names = "default";
>>>>>> +       #address-cells = <1>;
>>>>>> +       #size-cells = <0>;
>>>>>> +       cs-gpios = <&gpioc 2 GPIO_ACTIVE_LOW>;
>>>>>> +       dmas = <&dma2 3 2 0x400 0x0>,
>>>>>> +              <&dma2 4 2 0x400 0x0>;
>>>>>> +       dma-names = "rx", "tx";
>>>>> These DMA assignments seem to be SoC things and should
>>>>> rather be in the DTS(I) file where &spi5 is defined, right?
>>>>> stm32f429.dtsi I suppose?
>>>> I agree with Linus, DMA have to be defined in SoC dtsi. And if a board
>>>> doesn't want to use it, we use the "delete-property".
>>> Yes, will move to Soc dtsi in next submits.
>>>
>>> i'm working on write a v4l2-m2m driver for dma2d of stm32 to support
>>> pixel conversion
>>> alpha blending between foreground and background graphics.
>>>
>>> as you know, some soc's engineer trying to add this function to drm system.
>>>
>>> do you know st's planning about soc's hardware accelerator driver on stm32mp?
>>> such as chrom-art, will add to drm subsystem via ioctl to access, or to v4l2,
>> On stm32mp we do not plan to use chrom-art in drm or v4l2 because it
>> does fit
>> with userland way of working. We use the GPU to do conversion, scaling,
>> blending
>> and composition in only one go.
>> As explain here [1] DRM subsytem it isn't a solution and v4l2-m2m isn't
>> used in any
>> mainline compositors like Weston or android surfaceflinger.
>>
>> Benjamin
>>
> After check stm32mp's datasheets, they don't have chrom-art ip inside. sorry for
> didn't check it yet.
>
> for stm32h7 series with chrom-art, jpeg hardware accelerator inside.
> does st has plan to
> setup a driver to support it ? i prefer v4l2-m2m should be easier to
> implement it.
> co work with dcmi, fbdev.
ST doesn't plan to create a driver for chrom-art because nothing in 
mainline
userland could use it.

Benjamin
>
> thanks.
>
> best regards.
>
> Dillon
>> [1]
>> https://www.phoronix.com/scan.php?page=news_item&px=Linux-DRM-No-2D-Accel-API
>>> thanks.
>>>
>>>>> It is likely the same no matter which device is using spi5.
>>>>>
>>>>> Yours,
>>>>> Linus Walleij
>>>>>
>>> _______________________________________________
>>> Linux-stm32 mailing list
>>> Linux-stm32@st-md-mailman.stormreply.com
>>> https://st-md-mailman.stormreply.com/mailman/listinfo/linux-stm32
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
