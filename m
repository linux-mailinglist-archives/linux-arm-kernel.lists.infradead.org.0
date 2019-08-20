Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBA296995
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 21:41:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gD3h2Z5s9j+142mYkdpq9nTJLYRsiuQcfW6w0ozfOIY=; b=Qtuz+l7XulDhmI
	AU81TpaRoWnWTgJaFs9lcfOXWlk+TDcUEl3txa95fuhjaX9wdV+87/hROkc81YxOkaSFOj1X7x/gd
	POszPxj/ZH94W+InZ7+kfbY4f/Iyj40pyIbaedsfOoj2DvGU5RkEFZBDt73y4U0HeZA+ISa4mbLrf
	+LNOcAYdDbU34qF5XPrfRZ37Ppa5oElsO88avbmBnQiIgTkY8AYTz3WY+pNCOvN/PwwhoAxLe6hNx
	u/yTJfJjUUwTnSwomarvZBor+yn0EcbJrJ+U/doHGFbU9Z9zAEUeVvrqpOgeJ7I3K3oVMnEgDDHUY
	f3dYgU3lA5e53/vDwrPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0A06-00016l-7o; Tue, 20 Aug 2019 19:41:02 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i09zx-00015x-9x
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 19:40:55 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 1691AE0003;
 Tue, 20 Aug 2019 19:40:39 +0000 (UTC)
Date: Tue, 20 Aug 2019 21:40:39 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v3 6/7] ARM: dts: at91: at91sam9x5: switch to new clock
 bindings
Message-ID: <20190820194039.GU3545@piout.net>
References: <20181112133108.31021-1-alexandre.belloni@bootlin.com>
 <20181112133108.31021-7-alexandre.belloni@bootlin.com>
 <20190727153943.abjyfhkdnafq2u5w@pengutronix.de>
 <20190728205615.lgxyfwzqcftb6e77@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190728205615.lgxyfwzqcftb6e77@pengutronix.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_124053_649001_0B32F1AC 
X-CRM114-Status: GOOD (  26.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 info@acmesystems.it
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 28/07/2019 22:56:15+0200, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> [added tglx to Cc because Alexandre said in irc: 4 or 5 years ago, there
> was some discussion (with tglx) to make the driver not sleep when early
> in the boot process I'll try to dig that up]
> =


This is the discussion I was referring to:
https://lore.kernel.org/lkml/6120818.MyeJZ74hYa@wuerfel/

Incidentally, I think this is the patch you need to fix your issue but I
doesn't apply because the code moved to sckc.c

Afzal then points to tglx's mail:
https://lore.kernel.org/linux-arm-kernel/alpine.DEB.2.11.1606061448010.2803=
1@nanos/

The whole series took 3 years to get in and this patch slipped through
the cracks. I'll resend it to restart the discussion.

However, could you dump the clock tree before and after the switch to
the new clock binding because it should actually change the behaviour
(it should have crashed before the change)  and I fear something else
is selected the wrong slow clock parent.

> On Sat, Jul 27, 2019 at 05:39:43PM +0200, Uwe Kleine-K=F6nig wrote:
> > Hello Alexandre,
> > =

> > On Mon, Nov 12, 2018 at 02:31:07PM +0100, Alexandre Belloni wrote:
> > > Switch at91sam9x5 boards to the new PMC clock bindings.
> > =

> > This patch results in a broken dtb for my AriettaG25[1]. It compiles
> > fine, but booting results in:
> > =

> > 	SD/MMC: dt blob: Read file acme-arietta.dtb to 0x21000000
> > 	SD: Card Capacity: Standard
> > 	SD: Specification Version 3.0X
> > =

> > 	Booting zImage ......
> > 	zImage magic: 0x16f2818 is found
> > =

> > 	Using device tree in place at 0x21000000
> > =

> > 	Starting linux kernel ..., machid: 0xffffffff
> > =

> > 	Uncompressing Linux... done, booting the kernel.
> > 	Booting Linux on physical CPU 0x0
> > 	Linux version 5.3.0-rc1+ (uwe@taurus) (gcc version 7.3.1 20180201 (OSE=
LAS.Toolchain-2018.02.0 7-20180201)) #4 Sat Jul 27 15:47:15 CEST 2019
> > 	CPU: ARM926EJ-S [41069265] revision 5 (ARMv5TEJ), cr=3D0005317f
> > 	CPU: VIVT data cache, VIVT instruction cache
> > 	OF: fdt: Machine model: Acme Systems Arietta G25
> > 	printk: bootconsole [earlycon0] enabled
> > 	printk: debug: ignoring loglevel setting.
> > 	Memory policy: Data cache writeback
> > 	On node 0 totalpages: 32768
> > 	  Normal zone: 256 pages used for memmap
> > 	  Normal zone: 0 pages reserved
> > 	  Normal zone: 32768 pages, LIFO batch:7
> > 	pcpu-alloc: s0 r0 d32768 u32768 alloc=3D1*32768
> > 	pcpu-alloc: [0] 0 =

> > 	Built 1 zonelists, mobility grouping on.  Total pages: 32512
> > 	Kernel command line: earlyprintk ignore_loglevel  mem=3D128M console=
=3DttyS0,115200 root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rw rootwait
> > 	Dentry cache hash table entries: 16384 (order: 4, 65536 bytes, linear)
> > 	Inode-cache hash table entries: 8192 (order: 3, 32768 bytes, linear)
> > 	mem auto-init: stack:off, heap alloc:off, heap free:off
> > 	Memory: 121352K/131072K available (5826K kernel code, 199K rwdata, 189=
2K rodata, 232K init, 125K bss, 9720K reserved, 0K cma-reserved)
> > 	NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
> > 	random: get_random_bytes called from start_kernel+0x294/0x474 with crn=
g_init=3D0
> > 	bad: scheduling from the idle thread!
> > 	CPU: 0 PID: 0 Comm: swapper Not tainted 5.3.0-rc1+ #4
> > 	Hardware name: Atmel AT91SAM9
> > 	[<c000fc4c>] (unwind_backtrace) from [<c000d654>] (show_stack+0x10/0x1=
8)
> > 	[<c000d654>] (show_stack) from [<c059db74>] (dump_stack+0x18/0x24)
> > 	[<c059db74>] (dump_stack) from [<c00386e8>] (dequeue_task_idle+0x1c/0x=
34)
> > 	[<c00386e8>] (dequeue_task_idle) from [<c05b5818>] (__schedule+0x250/0=
x38c)
> > 	[<c05b5818>] (__schedule) from [<c05b59e8>] (schedule+0x94/0xc8)
> > 	[<c05b59e8>] (schedule) from [<c05b876c>] (schedule_hrtimeout_range_cl=
ock+0xf4/0x13c)
> > 	[<c05b876c>] (schedule_hrtimeout_range_clock) from [<c05b87cc>] (sched=
ule_hrtimeout_range+0x18/0x24)
> > 	[<c05b87cc>] (schedule_hrtimeout_range) from [<c05b8240>] (usleep_rang=
e+0x70/0x98)
> > 	[<c05b8240>] (usleep_range) from [<c02a18a0>] (clk_slow_rc_osc_prepare=
+0x28/0x34)
> > 	[<c02a18a0>] (clk_slow_rc_osc_prepare) from [<c029af78>] (clk_core_pre=
pare+0x84/0xa0)
> > 	[<c029af78>] (clk_core_prepare) from [<c029af54>] (clk_core_prepare+0x=
60/0xa0)
> > 	[<c029af54>] (clk_core_prepare) from [<c029b790>] (clk_prepare+0x1c/0x=
30)
> > 	[<c029b790>] (clk_prepare) from [<c02f1310>] (regmap_mmio_attach_clk+0=
x1c/0x24)
> > 	[<c02f1310>] (regmap_mmio_attach_clk) from [<c02f7a98>] (of_syscon_reg=
ister+0x218/0x268)
> > 	[<c02f7a98>] (of_syscon_register) from [<c02f7b18>] (syscon_node_to_re=
gmap+0x30/0x58)
> > 	[<c02f7b18>] (syscon_node_to_regmap) from [<c07d2f7c>] (at91sam9x5_pmc=
_setup+0x78/0x430)
> > 	[<c07d2f7c>] (at91sam9x5_pmc_setup) from [<c07cfe88>] (of_clk_init+0x1=
88/0x21c)
> > 	[<c07cfe88>] (of_clk_init) from [<c07c062c>] (time_init+0x1c/0x2c)
> > 	[<c07c062c>] (time_init) from [<c07bcbec>] (start_kernel+0x2c4/0x474)
> > 	[<c07bcbec>] (start_kernel) from [<00000000>] (0x0)
> > 	bad: scheduling from the idle thread!
> > 	CPU: 0 PID: 0 Comm: swapper Not tainted 5.3.0-rc1+ #4
> > 	Hardware name: Atmel AT91SAM9
> > 	[<c000fc4c>] (unwind_backtrace) from [<c000d654>] (show_stack+0x10/0x1=
8)
> > 	[<c000d654>] (show_stack) from [<c059db74>] (dump_stack+0x18/0x24)
> > 	[<c059db74>] (dump_stack) from [<c00386e8>] (dequeue_task_idle+0x1c/0x=
34)
> > 	[<c00386e8>] (dequeue_task_idle) from [<c05b5818>] (__schedule+0x250/0=
x38c)
> > 	[<c05b5818>] (__schedule) from [<c05b59e8>] (schedule+0x94/0xc8)
> > 	[<c05b59e8>] (schedule) from [<c05b876c>] (schedule_hrtimeout_range_cl=
ock+0xf4/0x13c)
> > 	[<c05b876c>] (schedule_hrtimeout_range_clock) from [<c05b87cc>] (sched=
ule_hrtimeout_range+0x18/0x24)
> > 	[<c05b87cc>] (schedule_hrtimeout_range) from [<c05b8240>] (usleep_rang=
e+0x70/0x98)
> > 	[<c05b8240>] (usleep_range) from [<c02a18a0>] (clk_slow_rc_osc_prepare=
+0x28/0x34)
> > 	[<c02a18a0>] (clk_slow_rc_osc_prepare) from [<c029af78>] (clk_core_pre=
pare+0x84/0xa0)
> > 	[<c029af78>] (clk_core_prepare) from [<c029af54>] (clk_core_prepare+0x=
60/0xa0)
> > 	[<c029af54>] (clk_core_prepare) from [<c029b790>] (clk_prepare+0x1c/0x=
30)
> > 	[<c029b790>] (clk_prepare) from [<c02f1310>] (regmap_mmio_attach_clk+0=
x1c/0x24)
> > 	[<c02f1310>] (regmap_mmio_attach_clk) from [<c02f7a98>] (of_syscon_reg=
ister+0x218/0x268)
> > 	[<c02f7a98>] (of_syscon_register) from [<c02f7b18>] (syscon_node_to_re=
gmap+0x30/0x58)
> > 	[<c02f7b18>] (syscon_node_to_regmap) from [<c07d2f7c>] (at91sam9x5_pmc=
_setup+0x78/0x430)
> > 	[<c07d2f7c>] (at91sam9x5_pmc_setup) from [<c07cfe88>] (of_clk_init+0x1=
88/0x21c)
> > 	[<c07cfe88>] (of_clk_init) from [<c07c062c>] (time_init+0x1c/0x2c)
> > 	[<c07c062c>] (time_init) from [<c07bcbec>] (start_kernel+0x2c4/0x474)
> > 	[<c07bcbec>] (start_kernel) from [<00000000>] (0x0)
> > 	bad: scheduling from the idle thread!
> > 	CPU: 0 PID: 0 Comm: swapper Not tainted 5.3.0-rc1+ #4
> > 	Hardware name: Atmel AT91SAM9
> > 	...
> > =

> > The error message repeats without end. (I obviously didn't test until
> > the end :-), but after 10 minutes the machine still prints this message=
.)
> > =

> > With the old dtb Linux 5.3-rc1 boots just fine. I assume this is not
> > related to my dts or .config so I'm not attaching these here. If you're
> > interested I can provide them of course.
> =

> With the following diff applied, the machine boots just fine:
> =

> diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
> index 9bfe9a28294a..4d2be45be916 100644
> --- a/drivers/clk/at91/sckc.c
> +++ b/drivers/clk/at91/sckc.c
> @@ -187,7 +187,7 @@ static int clk_slow_rc_osc_prepare(struct clk_hw *hw)
>  =

>  	writel(readl(sckcr) | osc->bits->cr_rcen, sckcr);
>  =

> -	usleep_range(osc->startup_usec, osc->startup_usec + 1);
> +	udelay(osc->startup_usec);
>  =

>  	return 0;
>  }
> =

> Best regards
> Uwe

-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
