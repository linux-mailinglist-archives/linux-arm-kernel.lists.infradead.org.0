Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC32F71CE5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 18:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xuvW3d6y6PwlfVxB4kFgdSlqzyRz3GDe0iwDCZpiTnk=; b=p6JeuXC5FTHkGk
	Sej+u5La5LdP9fbF0zGUCrRZE3vUQ2qTxUPq8MB3xbBfsJmWVQuMHS7auDU02bdNQiCwP2Ulu2let
	6/Xm4V//i194RrsL4A+SszOnlaX2zdlAd75ipJjI3zG+6iLCZ6ljD9e0+Xoi0LH3BJpJMJvxZp9tH
	BCy/rlbVutHakLmGxMlezbI6iyZwB6DV/mdvBsv24SbwLojktfjDmLEJXBOjdgAOPrwIFN8h8yH+0
	tzLu2QXg4DdQuNTpxpT3x2rTAsrTJB3vbSMijFwgmx1mC6ibtdDqiDxxhyhUwg1CB6bk9ugAhACPB
	XyH01Q7GmLP9G/HvIj5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpxdu-0005sn-Mn; Tue, 23 Jul 2019 16:27:58 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpxdQ-0005nt-QQ; Tue, 23 Jul 2019 16:27:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563899218;
 bh=Jen1EfzJ5rD4kdnZYnMjlIRsEBK+m0h595mJTNXA7VY=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=iFPNBrwzU8CzUOKAinL9TqZlmT5EQIee8Q4F+v/NswopYMG65TpV/Dym09qmGEXh1
 V9Wk1aUzu0Wvehp133mrLp8mqgLumuFF7JjE4hW3uwGxN+JHmXQjayV/AP7rj3jeeA
 9fXwo+CR/+YjA7eSMOAU3UXDgHIbVtKNQS1RMrwc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.104]) by mail.gmx.com (mrgmx002
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0Lu8Ri-1iWThs0Pxu-011P3P; Tue, 23
 Jul 2019 18:26:58 +0200
Subject: Re: [PATCH 00/18] ARM: Add minimal Raspberry Pi 4 support
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Christoph Hellwig <hch@lst.de>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
 <96113adb5fcab9c2f4bb5fa82b84ff5f9c07fd07.camel@suse.de>
 <bc650090-db86-ccac-01dc-23f08ad7b19b@gmx.net>
 <20190723093442.GA27239@lst.de>
 <04c5eaa03f3a124dbbce6186e11e19acc4539cc8.camel@suse.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <b15509d6-bc2e-3d06-0eea-943e6e456d62@gmx.net>
Date: Tue, 23 Jul 2019 18:26:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <04c5eaa03f3a124dbbce6186e11e19acc4539cc8.camel@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:ga3dtaBpsoyr0+h9XvBeJG8BAk2kvt2J+MNGiw6OSrykFvQYKyV
 nXgjBXu7qRTvTFIoAdbE1zXKBTgu0Ylm1QxGVqCXkwPCQiGF9AteozbGLJqs/D/7skUZQrw
 ASyPPE5mPgA8PjgmIvb39SCrOR9DDg1FjHViNLmckfVo83LyGRoaKkEH6zVBWmg8vO6pSza
 SK/+ZnBsCxslcB0RIwHDg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Dl/doOPU4TI=:otjVYY22uEbr6Tu5mbY2PU
 /YaLgPF1NkLRJM9rDHyt0Mj++TZ701WkxcDTbrXYc1Y4QDKy3+N3nQyhmB5ocZGd7Mi+bwcZE
 ihljxfbZQpyyy/w6vdjnQmrrLXho/BqgWE1W9pF3nnrV49uJtQo5CAMhZNo7Efa1bJvpCSWgU
 xrBd2oMdxvMDpU0eqkDb2UwoUM7osG34QWBuehxYiqvVYVcYtfZ/sf4ghgnSceJ6F/1HBp3o1
 lRUr8DwbEH9UxHyl+hW+3QyUr7l9KP4CB67cLH1x283R98cHUasWKY8OmH/Z/taA91SHzGwgt
 kPhTfrUasAyaJqGSDfM4WY1jU8zUUtUaMaAV3MAzIH2X7p9Y34yVt0wFMmbH8pPzdtrgO9hAg
 YUdPR6B+ZfUYfDQIHx7C3tNED+6JCbmjovf9/Eb1i6Wrd/Hpe6Br+NZwYgGmhSuLmTP4KqCEM
 hkO1SkbBZx2atdqcve5h6CcqI+nEOrW3T19Av4EGS1Xnh1J9PWgT3aGhktxonWvEnyw5hDjPs
 EPT1vMNHmHGo4YdTcNM3ytqO7q8vYI7nk6CnvnCqMo1xfqOUw6DVhI35ULyQJ6c+8pp5Gp5ro
 YXm3vj+smh89FGz5iqLn6K2rUd4xiUa1lJ03vCPGBBhoiE+V1a1tNrel2kGvLrVGGiSGrLwXz
 88n2VdLROe9gzS3CDjnutNx6cIySAaLk+O2OODtRhy9am2nsf3aOxYnZDZJPr004rUZmfc33M
 GIGuE8xrDQUAyyj3+OIOFE7hsQvzFOXf9f7eubjnxygGr48nuaNP4MNt4ZoB72VY8Q5oJpbHu
 8A+c/8GR86E5zf02EdKaV4oAIz7OFI1iQdT6vsc4lS8KJictNZBC5WaFj1P1RM8gh60H89Vcb
 6g1wxDOkj+MeiPlwQr/QYF16mZTmiT9Y5PYETGSGKft4/+Nx5G5dF6ge+T/AhXO1TTB8fncLx
 1cyPrEX7i3+duf3BKABiABubgv0TP7MP3EdBooCtR5tFMR1xZ9CComHsa1B7Gu2JGhYUQvC6/
 2PGcOeWgU9XRPSiDT3ahS1+PcFKkmNLFb1Ge/LDsdWyAQHI0LJoM2rVNDgINzhUtHeJkxHT8g
 fGY5p98Va+Z4TE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_092729_238145_46B5D585 
X-CRM114-Status: GOOD (  29.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Nicolas,

thanks for your work, but i'm a little bit sceptical about these
changes. So here some thoughts.

Am 23.07.19 um 15:32 schrieb Nicolas Saenz Julienne:
> On Tue, 2019-07-23 at 11:34 +0200, Christoph Hellwig wrote:
>> On Mon, Jul 22, 2019 at 08:10:17PM +0200, Stefan Wahren wrote:
>>> i rebased this series also and got this only on the RPi 4.
>>>
>>> After reverting the following:
>>>
>>> 79a986721de dma-mapping: remove dma_max_pfn
>>> 7559d612dff0 mmc: core: let the dma map ops handle bouncing
>>>
>>> This crash disappear, but wifi seems to be still broken.
>>>
>>> Would be nice, if you can investigate further.
>> That means dma addressing on this system doesn't just work for some
>> memory, and the mmc bounce buffering was papering over that just for
>> mmc.  Do you have highmem on this system?
>>
>> You might want to try this series, which has been submitted upstream:
>>
>> http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/arm-swiotlb
> Hi Christoph,
> I tried your series on top of Stefan's, it has no effect. I guess it's no
> surprise as with mult_v7_defconfig, you get SWIOTLB=n & LPAE=n.
>
> FYI DMA addressing constraints for RPi4 are the following: devices can only
> access the first GB of ram even though the board might have up to 4GB of ram.
> The DMA addresses are aliased with a 0xc0000000 offset. So 0x00000000 phys is
> aliased to 0xc0000000 in DMA. This is the same as for an RFC you commented last
> week trying to fix similar issues for arm64.
>
> You state in "arm: use swiotlb for bounce buffer on LPAE configs" that "The DMA
> API requires that 32-bit DMA masks are always supported". If I understand it
> correctly this device breaks that assumption. Which implies we need a bounce
> buffer system in place for any straming DMA user.
>
> It seems we're unable to use dma-direct/swiotlb, so I enabled arm's dmabounce
> on all devices hooked into RPi's limited interconnect, which fixes this issue.
Does it fix the wifi issue too?
> Any thoughts on this?
>
> diff --git a/arch/arm/mach-bcm/Kconfig b/arch/arm/mach-bcm/Kconfig
> index 5e5f1fabc3d4..3db8deed83a6 100644
> --- a/arch/arm/mach-bcm/Kconfig
> +++ b/arch/arm/mach-bcm/Kconfig
> @@ -168,6 +168,7 @@ config ARCH_BCM2835
>         select PINCTRL
>         select PINCTRL_BCM2835
>         select MFD_CORE
> +       select DMABOUNCE
>         help
>           This enables support for the Broadcom BCM2835 and BCM2836 SoCs.
>           This SoC is used in the Raspberry Pi and Roku 2 devices.
> diff --git a/arch/arm/mach-bcm/board_bcm2835.c b/arch/arm/mach-bcm/board_bcm2835.c
> index c09cf25596af..be788849c4bb 100644
> --- a/arch/arm/mach-bcm/board_bcm2835.c
> +++ b/arch/arm/mach-bcm/board_bcm2835.c
> @@ -3,6 +3,8 @@
>   * Copyright (C) 2010 Broadcom
>   */
>
> +#include <linux/device.h>
> +#include <linux/dma-mapping.h>
>  #include <linux/init.h>
>  #include <linux/irqchip.h>
>  #include <linux/of_address.h>
> @@ -24,8 +26,37 @@ static const char * const bcm2835_compat[] = {
>         NULL
>  };
>
> +static int bcm2835_needs_bounce(struct device *dev, dma_addr_t dma_addr, size_t size)
> +{
> +       /*
> +        * The accepted dma addresses are [0xc0000000, 0xffffffff] which map to
> +        * ram's [0x00000000, 0x3fffffff].
> +        */
> +       return dma_addr < 3ULL * SZ_1G;
> +}
> +
> +/*
> + * Setup DMA mask to 1GB on devices hanging from soc interconnect
> + */
> +static int bcm2835_platform_notify(struct device *dev)
> +{
> +       if (dev->parent && !strcmp("soc", dev_name(dev->parent))) {
> +               dev->dma_mask = &dev->coherent_dma_mask;
> +               dev->coherent_dma_mask = DMA_BIT_MASK(30); /* 1GB */
Shouldn't this come from the device tree?
> +               dmabounce_register_dev(dev, 2048, 4096, bcm2835_needs_bounce);
> +       }
> +
> +       return 0;
> +}
> +
> +void __init bcm2835_init_early(void)
> +{
> +       platform_notify = bcm2835_platform_notify;
> +}
> +
>  DT_MACHINE_START(BCM2835, "BCM2835")
>         .dma_zone_size  = SZ_1G,
>         .dt_compat = bcm2835_compat,
>         .smp = smp_ops(bcm2836_smp_ops),
> +       .init_early = bcm2835_init_early,

The sum of all these changes make me think, that we should start a new
board for BCM2711 instead of extending BCM2835.

Best regards
Stefan Wahren

>  MACHINE_END
>
>  Regards,
>  Nicolas
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
