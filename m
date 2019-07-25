Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5CA75A68
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 00:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YGa3Io/Yd4/Pk5JybVr1EdcfPkBZqxK6/6ajdbsuqQk=; b=nHPHBcTkJ2/iTE
	No/J0/z8H+1u7qxZ2Jf1SSIsnrOd4/fsMixr1SkQIddC/2aXwHqtFsZpsKOADsgwlQDK65XF/OzHK
	a6CnYDYIWQ3HUuCXLzv6SXDI1q3mma68KMVGWe3em3xLZIWyPnWJVHsQw/t7EE9I0bnkrwTwfl3UP
	1me/cPLcBgDFqa/QtjywwPHCbvJ1IVulMKRqNHR8NYR/psMoumykXXH43VbJATdMhj0OyEZblqt+U
	FcxSei4c4cxcjLtsFXcB2xdd3hQKABjza/3F8yPVnVtw3U+vRL5xVbJM5sDIFFU0FpNtuRh/TV2Kf
	oFocbU9A/gOAoTiWXidg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqlvm-00073s-3E; Thu, 25 Jul 2019 22:09:46 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqlvX-000731-Lv; Thu, 25 Jul 2019 22:09:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1564092544;
 bh=CgmEYIvDk3I3knMSyUk+7CNBDmfXp5LzXinnEdg9AyA=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=QYHUv3oFe1g/Q6ePRfVlz+bRJzLrmw/yn3GI5qZrRxiSqT/TVPduJnWGXiUPrM+e6
 VuhxbDGRHcH/zVDl3qYT9W6giOjSJo4e/SgjYfNSzD8XoURn2pzaG/v980iH3gkEx2
 h5NL2pjh9Fm8XXZ4n+Cg0mL9/dGwt3g5KO1R0F0o=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.115]) by mail.gmx.com (mrgmx002
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0Mb7lL-1i5xWG46Q7-00Kgpn; Fri, 26
 Jul 2019 00:09:04 +0200
Subject: Re: [PATCH 00/18] ARM: Add minimal Raspberry Pi 4 support
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Christoph Hellwig <hch@lst.de>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
 <96113adb5fcab9c2f4bb5fa82b84ff5f9c07fd07.camel@suse.de>
 <bc650090-db86-ccac-01dc-23f08ad7b19b@gmx.net>
 <20190723093442.GA27239@lst.de>
 <04c5eaa03f3a124dbbce6186e11e19acc4539cc8.camel@suse.de>
 <b15509d6-bc2e-3d06-0eea-943e6e456d62@gmx.net>
 <5f9b11f54c66fd0487837f7e58af3adf7f86635f.camel@suse.de>
 <c642de0a85d67f7f758735f1bba083156cca0ddb.camel@suse.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <d4fb1feb-78a7-e860-cfdb-21d814bdcfd1@gmx.net>
Date: Fri, 26 Jul 2019 00:09:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <c642de0a85d67f7f758735f1bba083156cca0ddb.camel@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:UZPhbPF+DqUgkp0A7S6rrjGrIV7lZeH0Nz126cwMBLRkfMcW3Tl
 68zb2GOUtsNuTmg8DcDhuer/tLQgluO3++bq6kUbBbRmtSBZWqtwzdJXQifqCRqNLutSSVK
 CMj576Q9DC7P1snpVNBKx1xa9WEcLJ8CxxzOr2ptIjvOQFmlvXIZSgEeOA0Ms1/AfhrCxv/
 YjD4qQx0vqgSI15093GyA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KFgCwpAgLh4=:1mClpPp2VcKxf0DVo08l1v
 sSAnq9bPx/88+DIyq/c7AsxYRoUrddiplBe9KIFPeAjzSloZciQ8d5fU57RLP/aWac1rKnDsQ
 RmW1eHlIqngjg00QK6xuApWPls3p0z/y2WkKbwL526db3+r3ORDBX2r3r0mI+mIz/JGmDmicq
 +Vk9mv+X2TDQPrS+KiWC73dEo/6xVJaevN1Bw/fmdJTdaW2nrsuI6Z/4faVyedvL1w7ethBL1
 Xb831bIKEG2hq/Um9W74LQFjgPCkymvURZXbDiV8H6gq6I/kpAt3KegaW1juy6mRPEAsjVwBH
 mTUbWHqidmJB1nZii0dsmSJD39rKsP+opG+gY861l+tLaKM6sCDlWQLjiAccqQV76+V5XPBqr
 1CYHelXGAPNREc1DiyS+3h93qgiELMBLsdO7GExkb61DX52rpuw8tntVknotCw7d2fNK1672a
 U2sicCiW5e7CQ14EYxFBHtAEvKYgEySQUStbgZRkEbquiLICOavG7I7i/JLMMDjIHrF6SgNeS
 53639YTsMaY4rfOT+sAPuYEXj28NYIOZ0n7rJM6PpPPAuVudZi49sM+DaX9IYh75GYRNmTQMa
 aoOMU0wbZ4go2tvUXMaaoKJA7rwLd3B8OfG+KmWhAbrxhnNDemJZk96PpQWx5GKheI2qDq+3b
 D2ac4tR/46kyEnUxCxdLdrnksYTwx5oJgN9yatYWeaBEnOMsojYqjCt0P0Z1gtjAkBT4Yd3LR
 xSiVWLwZHzrvdEs7HdERogCOaw7oaTP7yQGFwwuUb4tAp4hvbiXmwnjwPKCEEvhzPqvydBXfv
 3esQvQFjfF1e76E87QvxRlOx8HsE6gpUUG+aEnpcHFV2AdnvrKKBm23pDDIMZhcQTxLmNppFH
 gy7/IOaUmdibL5F4W0u+L1x+xMGk7YLZgBVZVq7CLeHBcuN+5v0QWAoIH9FxpJZVWvegJBcqr
 V0QIL3MpEdkqrAcIXj7Ke+ghu4kOnHaL4Dj8eWLctSKv4gY2rMmKbpznxxsc2hDG7Ujr6s0rQ
 paIqmnsXIuLaeXpkpMPHS7o5N+M6I2cy7GhVRz9RwYbUewugFKfsrkTVAtO1m/3D/CXEoKgud
 gdQg4VfpZlMK1A=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_150932_046601_914226A3 
X-CRM114-Status: GOOD (  23.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Matthias Brugger <mbrugger@suse.com>, Stephen Boyd <sboyd@kernel.org>,
 Ray Jui <rjui@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 25.07.19 um 10:22 schrieb Nicolas Saenz Julienne:
>>>> Any thoughts on this?
>>>>
>>>> diff --git a/arch/arm/mach-bcm/Kconfig b/arch/arm/mach-bcm/Kconfig
>>>> index 5e5f1fabc3d4..3db8deed83a6 100644
>>>> --- a/arch/arm/mach-bcm/Kconfig
>>>> +++ b/arch/arm/mach-bcm/Kconfig
>>>> @@ -168,6 +168,7 @@ config ARCH_BCM2835
>>>>         select PINCTRL
>>>>         select PINCTRL_BCM2835
>>>>         select MFD_CORE
>>>> +       select DMABOUNCE
>>>>         help
>>>>           This enables support for the Broadcom BCM2835 and BCM2836 SoCs.
>>>>           This SoC is used in the Raspberry Pi and Roku 2 devices.
>>>> diff --git a/arch/arm/mach-bcm/board_bcm2835.c b/arch/arm/mach-
>>>> bcm/board_bcm2835.c
>>>> index c09cf25596af..be788849c4bb 100644
>>>> --- a/arch/arm/mach-bcm/board_bcm2835.c
>>>> +++ b/arch/arm/mach-bcm/board_bcm2835.c
>>>> @@ -3,6 +3,8 @@
>>>>   * Copyright (C) 2010 Broadcom
>>>>   */
>>>>
>>>> +#include <linux/device.h>
>>>> +#include <linux/dma-mapping.h>
>>>>  #include <linux/init.h>
>>>>  #include <linux/irqchip.h>
>>>>  #include <linux/of_address.h>
>>>> @@ -24,8 +26,37 @@ static const char * const bcm2835_compat[] = {
>>>>         NULL
>>>>  };
>>>>
>>>> +static int bcm2835_needs_bounce(struct device *dev, dma_addr_t dma_addr,
>>>> size_t size)
>>>> +{
>>>> +       /*
>>>> +        * The accepted dma addresses are [0xc0000000, 0xffffffff] which
>>>> map
>>>> to
>>>> +        * ram's [0x00000000, 0x3fffffff].
>>>> +        */
>>>> +       return dma_addr < 3ULL * SZ_1G;
>>>> +}
>>>> +
>>>> +/*
>>>> + * Setup DMA mask to 1GB on devices hanging from soc interconnect
>>>> + */
>>>> +static int bcm2835_platform_notify(struct device *dev)
>>>> +{
>>>> +       if (dev->parent && !strcmp("soc", dev_name(dev->parent))) {
>>>> +               dev->dma_mask = &dev->coherent_dma_mask;
>>>> +               dev->coherent_dma_mask = DMA_BIT_MASK(30); /* 1GB */
>>> Shouldn't this come from the device tree?
>> Yes, actually I could use the 'dma-ranges' parsing code I suggested on the
>> arm64 RFC. The same goes with 'dma_zone_size = SZ_1G', it ideally should be
>> calculated based on the device-tree.
>>
>> The way I see it I'm not sure it's worth the effort, in arm64 we have no
>> choice
>> as there are no board files. But here we seem to be the only ones with this
>> specific DMA addressing constraint, so fixing it in arm/common doesn't seem
>> like it's going to benefit anyone else. Let's see how the arm arch maintainers
>> react though.
>>
>> There is one catch though. I missed it earlier as I was excited to see the
>> board boot, but some devices are failing to set their DMA masks:
>>
>> [    1.989576] dwc2 fe980000.usb: can't set coherent DMA mask: -5
>>
>> It seems that other users of dmabounce also implement their own
>> dma_supported(). I have to look into it.
> Sadly it seems there are some limitations in dmabounce I didn't take into
> account earlier. Among other things it can't deal with HighMem out of the box
> and even when trying to adapt it to our needs, fails to do so as it allocates
> using GFP_ATOMIC, which rules out using the CMA when allocating coherent
> memory. Sorry for the noise, I got carried away too soon.
>
> I did a dirty hack hooking up dma-direct/swiotlb to the board. It seems to be
> working fine after some tweaks in arm's dma_capable(). That said I want to test
> it further before sending anything ;).
>
Take your time.

But please inform about possible modifications to the devicetree. I will
sent out V2 of my series in a few days.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
