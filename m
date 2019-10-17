Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A25C5DAEBC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 15:49:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I3XAqH/Nl8KeqKht/Kgs3v0ecgQchqCdwK9kgMaGMBU=; b=cb197hEegvG/3Z
	EeZSuj47j7JOzSqJTRSJszEI8bwezHF2LjSAX0teYdqKvoqa6hvaipV/r7FI4Lp+Q7B2rvADAxehD
	pimDdj/rOnUkb+kA1Xu6PTgbTaQdUqpbnyzSzXaLMRkgXiLUPhEAQg+Dc6/7sJfvkUAVVKmE2n3+K
	Gc6IsOcNOv65Is6jVJoYCjO0PoDh4VwnHw6+CLxbIPezgDF/XVhPYrzpmEo7L74uRMzb/vG744NXa
	wPBvETMPeYAzEOrTTOmUpMU2iGQO03YwsMgjmxj/zlpxFM9VtvAxIio8PJ6cCGo0lcvkrxBP0WHaE
	VuMiC/7bCLref5V2Yl4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL69w-000469-4W; Thu, 17 Oct 2019 13:49:44 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL69V-0003yc-Ol
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 13:49:20 +0000
Received: by mail-il1-x143.google.com with SMTP id a5so2080205ilh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 06:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Son4OYF2Y1agrYSzVjXzdtqWR13KfwPc90XQEzvHzJY=;
 b=R5kUAa28wdXHnMAHTg1Cwt7oJ8I+/1ddwLuXV4RHs0SAknbj80dbqg5xu/VAf+D9k1
 RRmgg7qu3HyZJqMuguPBKjd67pJbQ7ZUdSgvMuYnwjnjfp6mjYkeDTSXirAxJSpKMJbl
 ZJoVz77GPl1uI99Vd03i/OxLtuao7qNL307jY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Son4OYF2Y1agrYSzVjXzdtqWR13KfwPc90XQEzvHzJY=;
 b=JKyh2kSEvoS9XYK5F8IsZqamG6QeVnNADXvTnBmT80wKXE8zCWPUsepo1TBUJ2fnML
 X5Ib+NR2F+iZLAHM6ixopFzSDhVm9GfbPOszyDI96h68ACDT2D8oW4y2KHJ2tSd/gDkK
 EP9+M4Cw/owSEsvAo5QV/E6ERkeBF00MZ4Hnb57nSaoYrMduoEY47N2fd7UZM+MQ/O0N
 qmGsusUvhHLvUoa+S3t4ojBUSRGg9e1RZiQNt/sjHikB5sohR06k6YbhCO2OyAd3mpxT
 MteogNIIqOFgxghKE22LgFCplTl5FWXeM0DuEqshsBC6fF9mVL+3wtjc4z7NgwvdFztV
 N+ag==
X-Gm-Message-State: APjAAAWhhdi6kYi2iKrlZGuxwIrCUTohsOu/PyXvMlqZs9lrFNs+FPYV
 46js0QPtWfaiNMZ6jDPFx3dX04Tq3xd4CwkqEA5bMg==
X-Google-Smtp-Source: APXvYqz6JUSGUI7GEkDLMmO5W2uSstaHjxwDXL88+sXpB3FTcGOaQSu5XtGh0s5YjrEy9ojzal0OC/Xpya/A553NzIo=
X-Received: by 2002:a92:b604:: with SMTP id s4mr3858585ili.28.1571320156027;
 Thu, 17 Oct 2019 06:49:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
 <20190919052822.10403-2-jagan@amarulasolutions.com> <6797961.eJj5WIFbM9@phil>
 <CAMty3ZDKaywoPxCSD-5N2pLjtGmZ-dZ7ZgUOJqiB1V_9rfR26A@mail.gmail.com>
 <87eezolynl.fsf@archiso.i-did-not-set--mail-host-address--so-tickle-me>
 <CAMty3ZD8uHsj0Jzs08sKG0JXfC6MU0MHdKs=kw4m5rupnoTtqg@mail.gmail.com>
 <109d708e-d182-fafa-44ad-0e6e0f813e0d@fivetechno.de>
In-Reply-To: <109d708e-d182-fafa-44ad-0e6e0f813e0d@fivetechno.de>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 17 Oct 2019 19:19:04 +0530
Message-ID: <CAMty3ZBu2WRJV9X6_ZAXBfpBs42p04Ph7amFpfO64iOQM-Sw_w@mail.gmail.com>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
To: Markus Reichl <m.reichl@fivetechno.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_064918_244899_DABAC74D 
X-CRM114-Status: GOOD (  29.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Da Xue <da@lessconfused.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Levin Du <djw@t-chip.com.cn>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Markus,

On Thu, Oct 17, 2019 at 6:56 PM Markus Reichl <m.reichl@fivetechno.de> wrote:
>
> Hi Jagan,
>
> your patch fixes booting my rk3399-roc-pc with 5.4.0-rc3-next-20191017.
> Without your patch roc-pc hangs here:
> [    9.703526] pwm-regulator: supplied by regulator-dummy

Thanks for testing this.

Indeed the same change available in BSP
https://github.com/FireflyTeam/kernel/blob/stable-4.4-rk3399-linux/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi#L1184

I'm waiting for Levin response on this issue, need to update commit
information accordingly.

>
> Am 16.10.19 um 19:09 schrieb Jagan Teki:
> > Hi Levin,
> >
> > On Tue, Oct 8, 2019 at 8:42 AM <djw@t-chip.com.cn> wrote:
> >>
> >> Jagan Teki <jagan@amarulasolutions.com> writes:
> >>
> >> > Hi Heiko,
> >> >
> >> > On Mon, Sep 30, 2019 at 2:51 AM Heiko Stuebner <heiko@sntech.de> wrote:
> >> >>
> >> >> Hi Jagan,
> >> >>
> >> >> Am Donnerstag, 19. September 2019, 07:28:17 CEST schrieb Jagan Teki:
> >> >> > ROC-PC is not able to boot linux console if PWM2_d is
> >> >> > unattached to any pinctrl logic.
> >> >> >
> >> >> > To be precise the linux boot hang with last logs as,
> >> >> > ...
> >> >> > .....
> >> >> > [    0.003367] Console: colour dummy device 80x25
> >> >> > [    0.003788] printk: console [tty0] enabled
> >> >> > [    0.004178] printk: bootconsole [uart8250] disabled
> >> >> >
> >> >> > In ROC-PC the PWM2_d pin is connected to LOG_DVS_PWM of
> >> >> > VDD_LOG. So, for normal working operations this needs to
> >> >> > active and pull-down.
> >> >> >
> >> >> > This patch fix, by attaching pinctrl active and pull-down
> >> >> > the pwm2.
> >> >>
> >> >> This looks highly dubious on first glance. The pwm subsystem nor
> >> >> the Rockchip pwm driver do not do any pinctrl handling.
> >> >>
> >> >> So I don't really see where that "active" pinctrl state is supposed
> >> >> to come from.
> >> >>
> >> >> Comparing with the pwm driver in the vendor tree I see that there
> >> >> is such a state defined there. But that code there also looks strange
> >> >> as that driver never again leaves this active state after entering it.
> >> >>
> >> >> Also for example all the Gru devices run with quite a number of pwm-
> >> >> regulators without needing additional fiddling with the pwm itself, so
> >> >> I don't really see why that should be different here.
> >> >
> >> > I deed, I was supposed to think the same. but the vendor kernel dts
> >> > from firefly do follow the pwm2 pinctrl [1]. I wouldn't find any
> >> > information other than this vensor information, ie one of the reason I
> >> > have marked "Levin Du" who initially supported this board.
> >> >
> >> > One, think I have seen was this pinctrl active fixed the boot hang.
> >> > any inputs from would be very helpful.
> >> >
> >> > Levin Du, any inputs?
> >> >
> >> > [1] https://github.com/FireflyTeam/kernel/blob/stable-4.4-rk3399-linux/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi#L1184
> >> >
> >>
> >> A grep of the `pwm2` shows that there's such block in rk3399-nanopi4.dtsi:
> >>
> >>     &pwm2 {
> >>             pinctrl-names = "active";
> >>             pinctrl-0 = <&pwm2_pin_pull_down>;
> >>             status = "okay";
> >>     };
> >>
> >> But last time I checked, using the mainline U-Boot (the roc-rk3399-pc is
> >> in mainline now) with mainline linux v5.2-rc7, no such setting is
> >> necessary, and the board boots happily.
> >>
> >> I cannot find the use of "active" pinctrl state in the
> >> `drivers/pwm/pwm-rockchip.c`. If the pinctrl state needs to be setup as
> >> default, the `pinctrl-names` needs to be "default" or "init" (see
> >> `drivers/base/pinctrl.c`) .
> >>
> >> Jagan, what version of board do you use? I checked with
> >> "ROC-RK3399-PC-V1.0-A 2018-07-12".
> >
> > I have ROC-RK3399-PC-V1.A 2018.09.25 and powering with TYPE-C0 port.
> >
> > And here the boot log
> >
> > [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
> > [    0.000000] Linux version 5.4.0-rc3-next-20191016
> > (jagan@jagan-XPS-13-9350) (gcc version 6.3.1 20170109 (Linaro GCC
> > 6.3-2017.02)) #1 SMP PREEMPT Wed Oct 16 21:17:23 IST 2019
> > [    0.000000] Machine model: Firefly ROC-RK3399-PC Board
> > [    0.000000] earlycon: uart8250 at MMIO32 0x00000000ff1a0000 (options '')
> > [    0.000000] printk: bootconsole [uart8250] enabled
> > [    0.000000] efi: Getting EFI parameters from FDT:
> > [    0.000000] efi: UEFI not found.
> > [    0.000000] cma: Reserved 32 MiB at 0x000000003e000000
> > [    0.000000] NUMA: No NUMA configuration found
> > [    0.000000] NUMA: Faking a node at [mem
> > 0x0000000000200000-0x00000000f7ffffff]
> > [    0.000000] NUMA: NODE_DATA [mem 0xf77ef100-0xf77f0fff]
> > [    0.000000] Zone ranges:
> > [    0.000000]   DMA      [mem 0x0000000000200000-0x000000003fffffff]
> > [    0.000000]   DMA32    [mem 0x0000000040000000-0x00000000f7ffffff]
> > [    0.000000]   Normal   empty
> > [    0.000000] Movable zone start for each node
> > [    0.000000] Early memory node ranges
> > [    0.000000]   node   0: [mem 0x0000000000200000-0x00000000f7ffffff]
> > [    0.000000] Initmem setup node 0 [mem 0x0000000000200000-0x00000000f7ffffff]
> > [    0.000000] psci: probing for conduit method from DT.
> > [    0.000000] psci: PSCIv1.1 detected in firmware.
> > [    0.000000] psci: Using standard PSCI v0.2 function IDs
> > [    0.000000] psci: MIGRATE_INFO_TYPE not supported.
> > [    0.000000] psci: SMC Calling Convention v1.1
> > [    0.000000] percpu: Embedded 22 pages/cpu s52952 r8192 d28968 u90112
> > [    0.000000] Detected VIPT I-cache on CPU0
> > [    0.000000] CPU features: detected: ARM erratum 845719
> > [    0.000000] CPU features: detected: GIC system register CPU interface
> > [    0.000000] Speculative Store Bypass Disable mitigation not required
> > [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 999432
> > [    0.000000] Policy zone: DMA32
> > [    0.000000] Kernel command line:
> > earlycon=uart8250,mmio32,0xff1a0000 root=/dev/mmcblk1p1 rootwait
> > [    0.000000] Dentry cache hash table entries: 524288 (order: 10,
> > 4194304 bytes, linear)
> > [    0.000000] Inode-cache hash table entries: 262144 (order: 9,
> > 2097152 bytes, linear)
> > [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
> > [    0.000000] software IO TLB: mapped [mem 0x3a000000-0x3e000000] (64MB)
> > [    0.000000] Memory: 3856004K/4061184K available (12028K kernel
> > code, 1870K rwdata, 6440K rodata, 5056K init, 451K bss, 172412K
> > reserved, 32768K cma-reserved)
> > [    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=6, Nodes=1
> > [    0.000000] rcu: Preemptible hierarchical RCU implementation.
> > [    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=6.
> > [    0.000000]  Tasks RCU enabled.
> > [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay
> > is 25 jiffies.
> > [    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=6
> > [    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
> > [    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
> > [    0.000000] GICv3: 256 SPIs implemented
> > [    0.000000] GICv3: 0 Extended SPIs implemented
> > [    0.000000] GICv3: Distributor has no Range Selector support
> > [    0.000000] GICv3: 16 PPIs implemented
> > [    0.000000] GICv3: no VLPI support, no direct LPI support
> > [    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x00000000fef00000
> > [    0.000000] ITS [mem 0xfee20000-0xfee3ffff]
> > [    0.000000] ITS@0x00000000fee20000: allocated 65536 Devices
> > @f6880000 (flat, esz 8, psz 64K, shr 0)
> > [    0.000000] ITS: using cache flushing for cmd queue
> > [    0.000000] GICv3: using LPI property table @0x00000000f6840000
> > [    0.000000] GIC: using cache flushing for LPI property table
> > [    0.000000] GICv3: CPU0: using allocated LPI pending table
> > @0x00000000f6850000
> > [    0.000000] GICv3: GIC: PPI partition interrupt-partition-0[0] {
> > /cpus/cpu@0[0] /cpus/cpu@1[1] /cpus/cpu@2[2] /cpus/cpu@3[3] }
> > [    0.000000] GICv3: GIC: PPI partition interrupt-partition-1[1] {
> > /cpus/cpu@100[4] /cpus/cpu@101[5] }
> > [    0.000000] random: get_random_bytes called from
> > start_kernel+0x2b8/0x454 with crng_init=0
> > [    0.000000] arch_timer: cp15 timer(s) running at 24.00MHz (phys).
> > [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff
> > max_cycles: 0x588fe9dc0, max_idle_ns: 440795202592 ns
> > [    0.000006] sched_clock: 56 bits at 24MHz, resolution 41ns, wraps
> > every 4398046511097ns
> > [    0.003201] Console: colour dummy device 80x25
> > [    0.003624] printk: console [tty0] enabled
> > [    0.004020] printk: bootconsole [uart8250] disabled
>
> I had to put "console=ttyS2,1500000" in kernel command line to get further logging beyond this point.

Noted, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
