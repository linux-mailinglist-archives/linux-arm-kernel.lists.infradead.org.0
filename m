Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0406C7819F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 22:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZ6LWX9C2Tast+ioYkA6bNufao1YVeI3uOYQQtsdJLM=; b=DUumGjpJpY4i8y
	zHy5UXHhtIQ9mUE6jFTghEeAVoRDhU6mp2fkHSDo4Nfi+ZAf/CvTVMJ3Zsd26z9HzQ92R0CdPwMLd
	A+C6lEKC/1PDQQr4jXjY4CivRf1c1yHGw6NOZOrSfZVkhL7TNPdNJw4VCQCp8pFr+BR4iDUkF1j2M
	R0UV7OJ+hfXGyyq4SgRk8YEDPxNgdYiJhYssEOjnsclx3DLFqcNFpapLwEDyZIeAOmlbGG+l72rDd
	3r7D27/zJ3CyuJMHq2vohiEpAEj3A4AvjWMb7UCehFyHWx8ivASAVorl2mrR7tBI2MwKr3iRYGLqQ
	rT7PmNP444JtP5Ma5eig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrqDe-0003oD-Sy; Sun, 28 Jul 2019 20:56:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrqDR-0003mn-23
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 20:56:27 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hrqDI-00082E-NO; Sun, 28 Jul 2019 22:56:16 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hrqDH-0007RD-35; Sun, 28 Jul 2019 22:56:15 +0200
Date: Sun, 28 Jul 2019 22:56:15 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v3 6/7] ARM: dts: at91: at91sam9x5: switch to new clock
 bindings
Message-ID: <20190728205615.lgxyfwzqcftb6e77@pengutronix.de>
References: <20181112133108.31021-1-alexandre.belloni@bootlin.com>
 <20181112133108.31021-7-alexandre.belloni@bootlin.com>
 <20190727153943.abjyfhkdnafq2u5w@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190727153943.abjyfhkdnafq2u5w@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_135625_275643_F28D40F5 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hello,

[added tglx to Cc because Alexandre said in irc: 4 or 5 years ago, there
was some discussion (with tglx) to make the driver not sleep when early
in the boot process I'll try to dig that up]

On Sat, Jul 27, 2019 at 05:39:43PM +0200, Uwe Kleine-K=F6nig wrote:
> Hello Alexandre,
> =

> On Mon, Nov 12, 2018 at 02:31:07PM +0100, Alexandre Belloni wrote:
> > Switch at91sam9x5 boards to the new PMC clock bindings.
> =

> This patch results in a broken dtb for my AriettaG25[1]. It compiles
> fine, but booting results in:
> =

> 	SD/MMC: dt blob: Read file acme-arietta.dtb to 0x21000000
> 	SD: Card Capacity: Standard
> 	SD: Specification Version 3.0X
> =

> 	Booting zImage ......
> 	zImage magic: 0x16f2818 is found
> =

> 	Using device tree in place at 0x21000000
> =

> 	Starting linux kernel ..., machid: 0xffffffff
> =

> 	Uncompressing Linux... done, booting the kernel.
> 	Booting Linux on physical CPU 0x0
> 	Linux version 5.3.0-rc1+ (uwe@taurus) (gcc version 7.3.1 20180201 (OSELA=
S.Toolchain-2018.02.0 7-20180201)) #4 Sat Jul 27 15:47:15 CEST 2019
> 	CPU: ARM926EJ-S [41069265] revision 5 (ARMv5TEJ), cr=3D0005317f
> 	CPU: VIVT data cache, VIVT instruction cache
> 	OF: fdt: Machine model: Acme Systems Arietta G25
> 	printk: bootconsole [earlycon0] enabled
> 	printk: debug: ignoring loglevel setting.
> 	Memory policy: Data cache writeback
> 	On node 0 totalpages: 32768
> 	  Normal zone: 256 pages used for memmap
> 	  Normal zone: 0 pages reserved
> 	  Normal zone: 32768 pages, LIFO batch:7
> 	pcpu-alloc: s0 r0 d32768 u32768 alloc=3D1*32768
> 	pcpu-alloc: [0] 0 =

> 	Built 1 zonelists, mobility grouping on.  Total pages: 32512
> 	Kernel command line: earlyprintk ignore_loglevel  mem=3D128M console=3Dt=
tyS0,115200 root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rw rootwait
> 	Dentry cache hash table entries: 16384 (order: 4, 65536 bytes, linear)
> 	Inode-cache hash table entries: 8192 (order: 3, 32768 bytes, linear)
> 	mem auto-init: stack:off, heap alloc:off, heap free:off
> 	Memory: 121352K/131072K available (5826K kernel code, 199K rwdata, 1892K=
 rodata, 232K init, 125K bss, 9720K reserved, 0K cma-reserved)
> 	NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
> 	random: get_random_bytes called from start_kernel+0x294/0x474 with crng_=
init=3D0
> 	bad: scheduling from the idle thread!
> 	CPU: 0 PID: 0 Comm: swapper Not tainted 5.3.0-rc1+ #4
> 	Hardware name: Atmel AT91SAM9
> 	[<c000fc4c>] (unwind_backtrace) from [<c000d654>] (show_stack+0x10/0x18)
> 	[<c000d654>] (show_stack) from [<c059db74>] (dump_stack+0x18/0x24)
> 	[<c059db74>] (dump_stack) from [<c00386e8>] (dequeue_task_idle+0x1c/0x34)
> 	[<c00386e8>] (dequeue_task_idle) from [<c05b5818>] (__schedule+0x250/0x3=
8c)
> 	[<c05b5818>] (__schedule) from [<c05b59e8>] (schedule+0x94/0xc8)
> 	[<c05b59e8>] (schedule) from [<c05b876c>] (schedule_hrtimeout_range_cloc=
k+0xf4/0x13c)
> 	[<c05b876c>] (schedule_hrtimeout_range_clock) from [<c05b87cc>] (schedul=
e_hrtimeout_range+0x18/0x24)
> 	[<c05b87cc>] (schedule_hrtimeout_range) from [<c05b8240>] (usleep_range+=
0x70/0x98)
> 	[<c05b8240>] (usleep_range) from [<c02a18a0>] (clk_slow_rc_osc_prepare+0=
x28/0x34)
> 	[<c02a18a0>] (clk_slow_rc_osc_prepare) from [<c029af78>] (clk_core_prepa=
re+0x84/0xa0)
> 	[<c029af78>] (clk_core_prepare) from [<c029af54>] (clk_core_prepare+0x60=
/0xa0)
> 	[<c029af54>] (clk_core_prepare) from [<c029b790>] (clk_prepare+0x1c/0x30)
> 	[<c029b790>] (clk_prepare) from [<c02f1310>] (regmap_mmio_attach_clk+0x1=
c/0x24)
> 	[<c02f1310>] (regmap_mmio_attach_clk) from [<c02f7a98>] (of_syscon_regis=
ter+0x218/0x268)
> 	[<c02f7a98>] (of_syscon_register) from [<c02f7b18>] (syscon_node_to_regm=
ap+0x30/0x58)
> 	[<c02f7b18>] (syscon_node_to_regmap) from [<c07d2f7c>] (at91sam9x5_pmc_s=
etup+0x78/0x430)
> 	[<c07d2f7c>] (at91sam9x5_pmc_setup) from [<c07cfe88>] (of_clk_init+0x188=
/0x21c)
> 	[<c07cfe88>] (of_clk_init) from [<c07c062c>] (time_init+0x1c/0x2c)
> 	[<c07c062c>] (time_init) from [<c07bcbec>] (start_kernel+0x2c4/0x474)
> 	[<c07bcbec>] (start_kernel) from [<00000000>] (0x0)
> 	bad: scheduling from the idle thread!
> 	CPU: 0 PID: 0 Comm: swapper Not tainted 5.3.0-rc1+ #4
> 	Hardware name: Atmel AT91SAM9
> 	[<c000fc4c>] (unwind_backtrace) from [<c000d654>] (show_stack+0x10/0x18)
> 	[<c000d654>] (show_stack) from [<c059db74>] (dump_stack+0x18/0x24)
> 	[<c059db74>] (dump_stack) from [<c00386e8>] (dequeue_task_idle+0x1c/0x34)
> 	[<c00386e8>] (dequeue_task_idle) from [<c05b5818>] (__schedule+0x250/0x3=
8c)
> 	[<c05b5818>] (__schedule) from [<c05b59e8>] (schedule+0x94/0xc8)
> 	[<c05b59e8>] (schedule) from [<c05b876c>] (schedule_hrtimeout_range_cloc=
k+0xf4/0x13c)
> 	[<c05b876c>] (schedule_hrtimeout_range_clock) from [<c05b87cc>] (schedul=
e_hrtimeout_range+0x18/0x24)
> 	[<c05b87cc>] (schedule_hrtimeout_range) from [<c05b8240>] (usleep_range+=
0x70/0x98)
> 	[<c05b8240>] (usleep_range) from [<c02a18a0>] (clk_slow_rc_osc_prepare+0=
x28/0x34)
> 	[<c02a18a0>] (clk_slow_rc_osc_prepare) from [<c029af78>] (clk_core_prepa=
re+0x84/0xa0)
> 	[<c029af78>] (clk_core_prepare) from [<c029af54>] (clk_core_prepare+0x60=
/0xa0)
> 	[<c029af54>] (clk_core_prepare) from [<c029b790>] (clk_prepare+0x1c/0x30)
> 	[<c029b790>] (clk_prepare) from [<c02f1310>] (regmap_mmio_attach_clk+0x1=
c/0x24)
> 	[<c02f1310>] (regmap_mmio_attach_clk) from [<c02f7a98>] (of_syscon_regis=
ter+0x218/0x268)
> 	[<c02f7a98>] (of_syscon_register) from [<c02f7b18>] (syscon_node_to_regm=
ap+0x30/0x58)
> 	[<c02f7b18>] (syscon_node_to_regmap) from [<c07d2f7c>] (at91sam9x5_pmc_s=
etup+0x78/0x430)
> 	[<c07d2f7c>] (at91sam9x5_pmc_setup) from [<c07cfe88>] (of_clk_init+0x188=
/0x21c)
> 	[<c07cfe88>] (of_clk_init) from [<c07c062c>] (time_init+0x1c/0x2c)
> 	[<c07c062c>] (time_init) from [<c07bcbec>] (start_kernel+0x2c4/0x474)
> 	[<c07bcbec>] (start_kernel) from [<00000000>] (0x0)
> 	bad: scheduling from the idle thread!
> 	CPU: 0 PID: 0 Comm: swapper Not tainted 5.3.0-rc1+ #4
> 	Hardware name: Atmel AT91SAM9
> 	...
> =

> The error message repeats without end. (I obviously didn't test until
> the end :-), but after 10 minutes the machine still prints this message.)
> =

> With the old dtb Linux 5.3-rc1 boots just fine. I assume this is not
> related to my dts or .config so I'm not attaching these here. If you're
> interested I can provide them of course.

With the following diff applied, the machine boots just fine:

diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index 9bfe9a28294a..4d2be45be916 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -187,7 +187,7 @@ static int clk_slow_rc_osc_prepare(struct clk_hw *hw)
 =

 	writel(readl(sckcr) | osc->bits->cr_rcen, sckcr);
 =

-	usleep_range(osc->startup_usec, osc->startup_usec + 1);
+	udelay(osc->startup_usec);
 =

 	return 0;
 }

Best regards
Uwe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
