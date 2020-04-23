Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F36091B617B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 19:00:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AEKpuGWtVow6Cdpw0LKy9svzcB5N0EDiP+quMH88p2U=; b=l+pD9T3Ty+8HKd
	naRpiPDM17QBjry5DElEY0RXGkg0+QBiqNv0bQjJUnzHhNIPHLVuGU51QJ2YpSgelj/HGmMl6/u99
	eShNM5wGjJZaz7o+jqP4sIM4Z70uaXaMkBQshzb7sujVN0VV0iq345j2XzBpEXYmwwiq6viGzyXQo
	/chBNF2scJWfYezIryocUkgzedg52qto4QCjcakKNJStUcSOL0B2iSFCMyh7cMjwrxrO4bbatvitm
	9amMWNiYzBNZXv0gV5Y6IFkqtFzyYeATqXO88a6CIMbsf5WLim4e0XO7ALc5qgERkMpC/8tO/cYHV
	zQK/B5E8e3wuCsimG8Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRfCe-0006iC-Gg; Thu, 23 Apr 2020 16:59:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRfCU-0006hA-3i
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 16:59:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 51C0530E;
 Thu, 23 Apr 2020 09:59:45 -0700 (PDT)
Received: from bogus (unknown [10.37.12.118])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 017993F68F;
 Thu, 23 Apr 2020 09:59:40 -0700 (PDT)
Date: Thu, 23 Apr 2020 17:58:47 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 08/17] clk: vexpress-osc: Support building as a module
Message-ID: <20200423165847.GA19124@bogus>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-9-robh@kernel.org>
 <20200422210802.GH25585@bogus> <20200423133342.GA10628@bogus>
 <CAL_JsqLnKd5_ifeARuc8RfsUCnc37jNBOkGSeWEp6EPA4J9tqA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqLnKd5_ifeARuc8RfsUCnc37jNBOkGSeWEp6EPA4J9tqA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_095946_238122_33A885CB 
X-CRM114-Status: GOOD (  26.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>,
 Michael Turquette <mturquette@baylibre.com>, Will Deacon <will@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 10:53:40AM -0500, Rob Herring wrote:
> On Thu, Apr 23, 2020 at 8:45 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Wed, Apr 22, 2020 at 10:08:02PM +0100, Sudeep Holla wrote:
> > > On Sun, Apr 19, 2020 at 12:08:01PM -0500, Rob Herring wrote:
> > > > Enable building the vexpress-osc clock driver as a module.
> > > >
> > > > Cc: Linus Walleij <linus.walleij@linaro.org>
> > > > Cc: Liviu Dudau <liviu.dudau@arm.com>
> > > > Cc: Sudeep Holla <sudeep.holla@arm.com>
> > > > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > > Cc: Michael Turquette <mturquette@baylibre.com>
> > > > Cc: Stephen Boyd <sboyd@kernel.org>
> > > > Cc: linux-clk@vger.kernel.org
> > > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > > ---
> > > >  drivers/clk/versatile/Kconfig            |  4 ++--
> > > >  drivers/clk/versatile/clk-vexpress-osc.c | 10 ++++------
> > > >  2 files changed, 6 insertions(+), 8 deletions(-)
> > > >
> > > > diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
> > > > index 5bdd5c98990b..9de2396dcf9b 100644
> > > > --- a/drivers/clk/versatile/Kconfig
> > > > +++ b/drivers/clk/versatile/Kconfig
> > > > @@ -15,8 +15,8 @@ config CLK_SP810
> > > >       of the ARM SP810 System Controller cell.
> > > >
> > > >  config CLK_VEXPRESS_OSC
> > > > -   bool "Clock driver for Versatile Express OSC clock generators"
> > > > -   depends on VEXPRESS_CONFIG || COMPILE_TEST
> > > > +   tristate "Clock driver for Versatile Express OSC clock generators"
> > > > +   depends on VEXPRESS_CONFIG
> > > >     default y if ARCH_VEXPRESS
> > > >     ---help---
> > > >       Simple regmap-based driver driving clock generators on Versatile
> > > > diff --git a/drivers/clk/versatile/clk-vexpress-osc.c b/drivers/clk/versatile/clk-vexpress-osc.c
> > > > index 5bb1d5a714d0..b2b32fa2d7c3 100644
> > > > --- a/drivers/clk/versatile/clk-vexpress-osc.c
> > > > +++ b/drivers/clk/versatile/clk-vexpress-osc.c
> > > > @@ -7,6 +7,7 @@
> > > >  #include <linux/clkdev.h>
> > > >  #include <linux/clk-provider.h>
> > > >  #include <linux/err.h>
> > > > +#include <linux/module.h>
> > > >  #include <linux/of.h>
> > > >  #include <linux/platform_device.h>
> > > >  #include <linux/slab.h>
> > > > @@ -108,6 +109,7 @@ static const struct of_device_id vexpress_osc_of_match[] = {
> > > >     { .compatible = "arm,vexpress-osc", },
> > > >     {}
> > > >  };
> > > > +MODULE_DEVICE_TABLE(of, vexpress_osc_of_match);
> > > >
> > > >  static struct platform_driver vexpress_osc_driver = {
> > > >     .driver = {
> > > > @@ -116,9 +118,5 @@ static struct platform_driver vexpress_osc_driver = {
> > > >     },
> > > >     .probe = vexpress_osc_probe,
> > > >  };
> > > > -
> > > > -static int __init vexpress_osc_init(void)
> > > > -{
> > > > -   return platform_driver_register(&vexpress_osc_driver);
> > > > -}
> > > > -core_initcall(vexpress_osc_init);
> > > > +module_platform_driver(vexpress_osc_driver);
> > >
> > > I am not 100% sure of this. This might break the boot on CA9 and TC2
> > > at-least. There are loads of MB peripherals that need this. This will
> > > break the boot. We need to check if all the dependent modules are also
> > > at module_initcall level and if they deal with deferred probe correctly.
> > > Lot of them are legacy and may happen to be working by carefully initcall
> > > level adjustments.
> > >
> >
> > OK I managed to try this on my TC2 and it fails to boot. However when I
> > enable earlyprintk as I see no log without it, it boots just fine.
> 
> Well, the uart clocks for TC2 are all dependent on vexpress-osc. The
> console setup is going to fail to get the clocks and just fail as
> there's no deferred probe for consoles. We need some way to retrigger
> the console matching.
> 

Ah right, I didn't bother to look at pl011 as I got it confused with Juno
which has on-chip pl011.

Sorry I don't know details of how early console hands over to the console.
Just wondering how is the dependency resolved when earlyprintk is enabled.
The partial log from

$ dmesg  | grep -i -E "("pl0"|"vexpress"|"console")"

below when it boots earlyprintk. I see that console is enabled after
vexpress_osc_driver_init is called.

--->8
calling  vexpress_syscfg_init+0x1/0xe @ 1
initcall vexpress_syscfg_init+0x1/0xe returned 0 after 0 usecs
calling  vexpress_sysreg_init+0x1/0x48 @ 1
probe of vexpress-syscfg.6.auto returned 1 after 0 usecs
initcall vexpress_sysreg_init+0x1/0x48 returned 0 after 0 usecs
calling  vexpress_config_init+0x1/0xae @ 1
initcall vexpress_config_init+0x1/0xae returned 0 after 0 usecs
calling  pl011_init+0x1/0x38 @ 1
Serial: AMBA PL011 UART driver
initcall pl011_init+0x1/0x38 returned 0 after 9765 usecs
calling  pl022_init+0x1/0xc @ 1
initcall pl022_init+0x1/0xc returned 0 after 0 usecs
calling  pl061_gpio_init+0x1/0xc @ 1
initcall pl061_gpio_init+0x1/0xc returned 0 after 31 usecs
calling  vexpress_osc_driver_init+0x1/0x10 @ 1
initcall vexpress_osc_driver_init+0x1/0x10 returned 0 after 231119 usecs
calling  vexpress_regulator_driver_init+0x1/0xe @ 1
initcall vexpress_regulator_driver_init+0x1/0xe returned 0 after 114764 usecs
calling  pl031_driver_init+0x1/0xc @ 1
initcall pl031_driver_init+0x1/0xc returned 0 after 25 usecs
calling  vexpress_reset_driver_init+0x1/0xe @ 1
initcall vexpress_reset_driver_init+0x1/0xe returned 0 after 594 usecs
1c090000.uart: ttyAMA0 at MMIO 0x1c090000 (irq = 30, base_baud = 0) is a PL011 rev2
printk: console [ttyAMA0] enabled
printk: bootconsole [earlycon0] disabled
1c0a0000.uart: ttyAMA1 at MMIO 0x1c0a0000 (irq = 31, base_baud = 0) is a PL011 rev2
1c0b0000.uart: ttyAMA2 at MMIO 0x1c0b0000 (irq = 32, base_baud = 0) is a PL011 rev2
1c0c0000.uart: ttyAMA3 at MMIO 0x1c0c0000 (irq = 33, base_baud = 0) is a PL011 rev2
rtc-pl031 1c170000.rtc: registered as rtc0
rtc-pl031 1c170000.rtc: setting system clock to 2020-04-23T16:54:46 UTC (1587660886)
--->8

-- 
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
