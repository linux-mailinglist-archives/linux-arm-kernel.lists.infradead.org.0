Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 107841D482B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 10:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9eVbjVq9C9RLl/TlZLwXnZ5ibNAyvcOE56giEHS4Jh8=; b=t9jBW/ai3EzvKT
	j7ULGN3miT83ORn5hoJI97zE1OuXvXJF+mnKrHMRO2hfggscl/prk5yXXUADgbETMMnbRzocRO412
	4S4waiUVMF2PLzZUIqNtJbLw00EaoVqX8NcbERlW0YhdnlLyHVhPaePt/s4AGnBrAw2syF35YzocJ
	OiJmceyl1Hkwpw6kHls+IYKJUE19dl5l2aAtu5BrbLhLaveYhcJiYsUK/a1hiE1uJ36wtgoJTQpkT
	fjW0gjMO7fHds3jFqOzCXD8yxcEH5sWjLfFBb4baeovgncy43Fs5q+0jfpyRoY0Rgf0dB98ujKGbM
	E1P+CGF+I1cmRAOz/c0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZVlW-0007gZ-T9; Fri, 15 May 2020 08:32:22 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZVlL-0007fp-RT
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 08:32:16 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04F8RKCf008633; Fri, 15 May 2020 10:31:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=eJdDgRjKpklAGeIMtYx/P/MnYN9oSC9vUDGlJU7uW3M=;
 b=tSlFRvwIszSbH0n6EGhT1cOhcWrR9N2lmFcwsg/0R87FHKn48HaYPpw5Pd1UipFyXSQf
 o1WT15VZt4K04hoYJfOVeGJS0OyBw72LcR736Vyq5gavdNH19bZr8EQhYDHOa3vvq4w/
 XHHgKFeWfc2w6eTVqh35Qw27A+tji4plzvhLdiIs1gnBniHPcQ5R2u+rIZaxdSUMe3BO
 HGoaa12AGYiq2WH6HHLFbfFFZZbq0guYb3R4WaZQHPGf2yX1VuSFO07Eudozax+s4wyS
 WDQWn6+PwKlqIoLgYaB5lFQfjiJOEZwtU/+r+maXSYYGhIMdApxU38rRUoVDx3cEvGvQ bQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3100vyrw43-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 May 2020 10:31:56 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DC686100034;
 Fri, 15 May 2020 10:31:54 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B664E2208D2;
 Fri, 15 May 2020 10:31:54 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 15 May
 2020 10:31:54 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Fri, 15 May 2020 10:31:54 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: dillon min <dillon.minfei@gmail.com>, Alexandre TORGUE
 <alexandre.torgue@st.com>
Subject: Re: [Linux-stm32] [PATCH v3 3/5] ARM: dts: stm32: enable ltdc binding
 with ili9341 on stm32429-disco board
Thread-Topic: [Linux-stm32] [PATCH v3 3/5] ARM: dts: stm32: enable ltdc
 binding with ili9341 on stm32429-disco board
Thread-Index: AQHWKckeJCttwtJ4Q0KZXBBPInzZ9ainaAuAgAAEJgCAAUVIgA==
Date: Fri, 15 May 2020 08:31:54 +0000
Message-ID: <818b93b4-4431-8338-cd90-ed125ecac615@st.com>
References: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
 <1589267017-17294-4-git-send-email-dillon.minfei@gmail.com>
 <CACRpkda5VjjBdbruXTi33QBNb=VU6vK2zDE8yyQXoWw7=NQFeg@mail.gmail.com>
 <a4ebd7cd-5756-0683-135f-0f96be8a4a7b@st.com>
 <CAL9mu0Jt_xwo5pJfcx6G3grBuOaxLXvakpEjiB4gV3=bkiq2fg@mail.gmail.com>
In-Reply-To: <CAL9mu0Jt_xwo5pJfcx6G3grBuOaxLXvakpEjiB4gV3=bkiq2fg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.49]
Content-ID: <EEC9925CAF78A046ADDC74F9DCF8557D@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-15_03:2020-05-14,
 2020-05-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_013212_366892_B651C603 
X-CRM114-Status: GOOD (  22.25  )
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>, Dave Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sam
 Ravnborg <sam@ravnborg.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/14/20 3:07 PM, dillon min wrote:
> Hi Alexandre,
>
> On Thu, May 14, 2020 at 8:53 PM Alexandre Torgue
> <alexandre.torgue@st.com> wrote:
>>
>>
>> On 5/14/20 10:24 AM, Linus Walleij wrote:
>>> On Tue, May 12, 2020 at 9:04 AM <dillon.minfei@gmail.com> wrote:
>>>
>>>> From: dillon min <dillon.minfei@gmail.com>
>>>>
>>>> Enable the ltdc & ili9341 on stm32429-disco board.
>>>>
>>>> Signed-off-by: dillon min <dillon.minfei@gmail.com>
>>> This mostly looks good but...
>>>
>>>> +&spi5 {
>>>> +       status = "okay";
>>>> +       pinctrl-0 = <&spi5_pins>;
>>>> +       pinctrl-names = "default";
>>>> +       #address-cells = <1>;
>>>> +       #size-cells = <0>;
>>>> +       cs-gpios = <&gpioc 2 GPIO_ACTIVE_LOW>;
>>>> +       dmas = <&dma2 3 2 0x400 0x0>,
>>>> +              <&dma2 4 2 0x400 0x0>;
>>>> +       dma-names = "rx", "tx";
>>> These DMA assignments seem to be SoC things and should
>>> rather be in the DTS(I) file where &spi5 is defined, right?
>>> stm32f429.dtsi I suppose?
>> I agree with Linus, DMA have to be defined in SoC dtsi. And if a board
>> doesn't want to use it, we use the "delete-property".
> Yes, will move to Soc dtsi in next submits.
>
> i'm working on write a v4l2-m2m driver for dma2d of stm32 to support
> pixel conversion
> alpha blending between foreground and background graphics.
>
> as you know, some soc's engineer trying to add this function to drm system.
>
> do you know st's planning about soc's hardware accelerator driver on stm32mp?
> such as chrom-art, will add to drm subsystem via ioctl to access, or to v4l2,
On stm32mp we do not plan to use chrom-art in drm or v4l2 because it 
does fit
with userland way of working. We use the GPU to do conversion, scaling, 
blending
and composition in only one go.
As explain here [1] DRM subsytem it isn't a solution and v4l2-m2m isn't 
used in any
mainline compositors like Weston or android surfaceflinger.

Benjamin

[1] 
https://www.phoronix.com/scan.php?page=news_item&px=Linux-DRM-No-2D-Accel-API
>
> thanks.
>
>>> It is likely the same no matter which device is using spi5.
>>>
>>> Yours,
>>> Linus Walleij
>>>
> _______________________________________________
> Linux-stm32 mailing list
> Linux-stm32@st-md-mailman.stormreply.com
> https://st-md-mailman.stormreply.com/mailman/listinfo/linux-stm32
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
