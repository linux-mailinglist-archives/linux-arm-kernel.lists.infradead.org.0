Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BE2DBA34
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 01:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MNZHoyb15PrQr990UE00+RVETC4kCfU6MIkswXFHfQ0=; b=ropKnUwhWvAk2Y
	YBJocEzEn43WGAt/KzXLKeBNxi9Bt8/vxHz6CZc/pGWR9akNTSJrGjsfVrPJGhoi/SR44v1IC4V1K
	RjOX5pHEYPCGoifAwMliDX3bFv1gqLLfWu+VGcLcxoAtawJfNdEHauG+Eo58xYOnJUs4evgY7Gzp+
	jEK/e0Wt7IZr4cewEPLAxnPD6A3uaWb7nNL+3ILjWsKvvXiZ2Jhx0yDKpQnLbzmDS2qh+J9PtHNeJ
	vPCHhWl82MQv6uOt+kB6yoTq1rqFHh5Orhin21SMZ9ZfkzW3X3BmNvi7LKA0UTVn0EDK0qhbsOalG
	MZwsouCy5bgNowqEfOsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLFHF-0001JI-Bo; Thu, 17 Oct 2019 23:33:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLFGy-0001Hj-Ar; Thu, 17 Oct 2019 23:33:38 +0000
Received: from remote.shanghaihotelholland.com ([46.44.148.63]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iLFGm-0004MT-Il; Fri, 18 Oct 2019 01:33:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
Date: Fri, 18 Oct 2019 01:33:23 +0200
Message-ID: <3560168.eQioKvBMyi@phil>
In-Reply-To: <CAMty3ZBu2WRJV9X6_ZAXBfpBs42p04Ph7amFpfO64iOQM-Sw_w@mail.gmail.com>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
 <109d708e-d182-fafa-44ad-0e6e0f813e0d@fivetechno.de>
 <CAMty3ZBu2WRJV9X6_ZAXBfpBs42p04Ph7amFpfO64iOQM-Sw_w@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_163336_527076_F7CF09CA 
X-CRM114-Status: GOOD (  34.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Da Xue <da@lessconfused.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Markus Reichl <m.reichl@fivetechno.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Levin Du <djw@t-chip.com.cn>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, 17. Oktober 2019, 15:49:04 CEST schrieb Jagan Teki:
> Hi Markus,
> 
> On Thu, Oct 17, 2019 at 6:56 PM Markus Reichl <m.reichl@fivetechno.de> wrote:
> >
> > Hi Jagan,
> >
> > your patch fixes booting my rk3399-roc-pc with 5.4.0-rc3-next-20191017.
> > Without your patch roc-pc hangs here:
> > [    9.703526] pwm-regulator: supplied by regulator-dummy
> 
> Thanks for testing this.
> 
> Indeed the same change available in BSP
> https://github.com/FireflyTeam/kernel/blob/stable-4.4-rk3399-linux/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi#L1184

Still there is no "active" pinctrl for the mainline pwm driver at all.
So while that may cause a different handling in the vendor kernel in
mainline you just cause the driver to not set any pinctrl setting at all.
Aka the pin settings stay at what they are when coming from the bootloader.

So maybe you just need to compare the state the pin is on in comparison
to what the new (failing?) pinctrl setting is doing.

Heiko


> I'm waiting for Levin response on this issue, need to update commit
> information accordingly.
> 
> >
> > Am 16.10.19 um 19:09 schrieb Jagan Teki:
> > > Hi Levin,
> > >
> > > On Tue, Oct 8, 2019 at 8:42 AM <djw@t-chip.com.cn> wrote:
> > >>
> > >> Jagan Teki <jagan@amarulasolutions.com> writes:
> > >>
> > >> > Hi Heiko,
> > >> >
> > >> > On Mon, Sep 30, 2019 at 2:51 AM Heiko Stuebner <heiko@sntech.de> wrote:
> > >> >>
> > >> >> Hi Jagan,
> > >> >>
> > >> >> Am Donnerstag, 19. September 2019, 07:28:17 CEST schrieb Jagan Teki:
> > >> >> > ROC-PC is not able to boot linux console if PWM2_d is
> > >> >> > unattached to any pinctrl logic.
> > >> >> >
> > >> >> > To be precise the linux boot hang with last logs as,
> > >> >> > ...
> > >> >> > .....
> > >> >> > [    0.003367] Console: colour dummy device 80x25
> > >> >> > [    0.003788] printk: console [tty0] enabled
> > >> >> > [    0.004178] printk: bootconsole [uart8250] disabled
> > >> >> >
> > >> >> > In ROC-PC the PWM2_d pin is connected to LOG_DVS_PWM of
> > >> >> > VDD_LOG. So, for normal working operations this needs to
> > >> >> > active and pull-down.
> > >> >> >
> > >> >> > This patch fix, by attaching pinctrl active and pull-down
> > >> >> > the pwm2.
> > >> >>
> > >> >> This looks highly dubious on first glance. The pwm subsystem nor
> > >> >> the Rockchip pwm driver do not do any pinctrl handling.
> > >> >>
> > >> >> So I don't really see where that "active" pinctrl state is supposed
> > >> >> to come from.
> > >> >>
> > >> >> Comparing with the pwm driver in the vendor tree I see that there
> > >> >> is such a state defined there. But that code there also looks strange
> > >> >> as that driver never again leaves this active state after entering it.
> > >> >>
> > >> >> Also for example all the Gru devices run with quite a number of pwm-
> > >> >> regulators without needing additional fiddling with the pwm itself, so
> > >> >> I don't really see why that should be different here.
> > >> >
> > >> > I deed, I was supposed to think the same. but the vendor kernel dts
> > >> > from firefly do follow the pwm2 pinctrl [1]. I wouldn't find any
> > >> > information other than this vensor information, ie one of the reason I
> > >> > have marked "Levin Du" who initially supported this board.
> > >> >
> > >> > One, think I have seen was this pinctrl active fixed the boot hang.
> > >> > any inputs from would be very helpful.
> > >> >
> > >> > Levin Du, any inputs?
> > >> >
> > >> > [1] https://github.com/FireflyTeam/kernel/blob/stable-4.4-rk3399-linux/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi#L1184
> > >> >
> > >>
> > >> A grep of the `pwm2` shows that there's such block in rk3399-nanopi4.dtsi:
> > >>
> > >>     &pwm2 {
> > >>             pinctrl-names = "active";
> > >>             pinctrl-0 = <&pwm2_pin_pull_down>;
> > >>             status = "okay";
> > >>     };
> > >>
> > >> But last time I checked, using the mainline U-Boot (the roc-rk3399-pc is
> > >> in mainline now) with mainline linux v5.2-rc7, no such setting is
> > >> necessary, and the board boots happily.
> > >>
> > >> I cannot find the use of "active" pinctrl state in the
> > >> `drivers/pwm/pwm-rockchip.c`. If the pinctrl state needs to be setup as
> > >> default, the `pinctrl-names` needs to be "default" or "init" (see
> > >> `drivers/base/pinctrl.c`) .
> > >>
> > >> Jagan, what version of board do you use? I checked with
> > >> "ROC-RK3399-PC-V1.0-A 2018-07-12".
> > >
> > > I have ROC-RK3399-PC-V1.A 2018.09.25 and powering with TYPE-C0 port.
> > >
> > > And here the boot log
> > >
> > > [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
> > > [    0.000000] Linux version 5.4.0-rc3-next-20191016
> > > (jagan@jagan-XPS-13-9350) (gcc version 6.3.1 20170109 (Linaro GCC
> > > 6.3-2017.02)) #1 SMP PREEMPT Wed Oct 16 21:17:23 IST 2019
> > > [    0.000000] Machine model: Firefly ROC-RK3399-PC Board
> > > [    0.000000] earlycon: uart8250 at MMIO32 0x00000000ff1a0000 (options '')
> > > [    0.000000] printk: bootconsole [uart8250] enabled
> > > [    0.000000] efi: Getting EFI parameters from FDT:
> > > [    0.000000] efi: UEFI not found.
> > > [    0.000000] cma: Reserved 32 MiB at 0x000000003e000000
> > > [    0.000000] NUMA: No NUMA configuration found
> > > [    0.000000] NUMA: Faking a node at [mem
> > > 0x0000000000200000-0x00000000f7ffffff]
> > > [    0.000000] NUMA: NODE_DATA [mem 0xf77ef100-0xf77f0fff]
> > > [    0.000000] Zone ranges:
> > > [    0.000000]   DMA      [mem 0x0000000000200000-0x000000003fffffff]
> > > [    0.000000]   DMA32    [mem 0x0000000040000000-0x00000000f7ffffff]
> > > [    0.000000]   Normal   empty
> > > [    0.000000] Movable zone start for each node
> > > [    0.000000] Early memory node ranges
> > > [    0.000000]   node   0: [mem 0x0000000000200000-0x00000000f7ffffff]
> > > [    0.000000] Initmem setup node 0 [mem 0x0000000000200000-0x00000000f7ffffff]
> > > [    0.000000] psci: probing for conduit method from DT.
> > > [    0.000000] psci: PSCIv1.1 detected in firmware.
> > > [    0.000000] psci: Using standard PSCI v0.2 function IDs
> > > [    0.000000] psci: MIGRATE_INFO_TYPE not supported.
> > > [    0.000000] psci: SMC Calling Convention v1.1
> > > [    0.000000] percpu: Embedded 22 pages/cpu s52952 r8192 d28968 u90112
> > > [    0.000000] Detected VIPT I-cache on CPU0
> > > [    0.000000] CPU features: detected: ARM erratum 845719
> > > [    0.000000] CPU features: detected: GIC system register CPU interface
> > > [    0.000000] Speculative Store Bypass Disable mitigation not required
> > > [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 999432
> > > [    0.000000] Policy zone: DMA32
> > > [    0.000000] Kernel command line:
> > > earlycon=uart8250,mmio32,0xff1a0000 root=/dev/mmcblk1p1 rootwait
> > > [    0.000000] Dentry cache hash table entries: 524288 (order: 10,
> > > 4194304 bytes, linear)
> > > [    0.000000] Inode-cache hash table entries: 262144 (order: 9,
> > > 2097152 bytes, linear)
> > > [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
> > > [    0.000000] software IO TLB: mapped [mem 0x3a000000-0x3e000000] (64MB)
> > > [    0.000000] Memory: 3856004K/4061184K available (12028K kernel
> > > code, 1870K rwdata, 6440K rodata, 5056K init, 451K bss, 172412K
> > > reserved, 32768K cma-reserved)
> > > [    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=6, Nodes=1
> > > [    0.000000] rcu: Preemptible hierarchical RCU implementation.
> > > [    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=6.
> > > [    0.000000]  Tasks RCU enabled.
> > > [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay
> > > is 25 jiffies.
> > > [    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=6
> > > [    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
> > > [    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
> > > [    0.000000] GICv3: 256 SPIs implemented
> > > [    0.000000] GICv3: 0 Extended SPIs implemented
> > > [    0.000000] GICv3: Distributor has no Range Selector support
> > > [    0.000000] GICv3: 16 PPIs implemented
> > > [    0.000000] GICv3: no VLPI support, no direct LPI support
> > > [    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x00000000fef00000
> > > [    0.000000] ITS [mem 0xfee20000-0xfee3ffff]
> > > [    0.000000] ITS@0x00000000fee20000: allocated 65536 Devices
> > > @f6880000 (flat, esz 8, psz 64K, shr 0)
> > > [    0.000000] ITS: using cache flushing for cmd queue
> > > [    0.000000] GICv3: using LPI property table @0x00000000f6840000
> > > [    0.000000] GIC: using cache flushing for LPI property table
> > > [    0.000000] GICv3: CPU0: using allocated LPI pending table
> > > @0x00000000f6850000
> > > [    0.000000] GICv3: GIC: PPI partition interrupt-partition-0[0] {
> > > /cpus/cpu@0[0] /cpus/cpu@1[1] /cpus/cpu@2[2] /cpus/cpu@3[3] }
> > > [    0.000000] GICv3: GIC: PPI partition interrupt-partition-1[1] {
> > > /cpus/cpu@100[4] /cpus/cpu@101[5] }
> > > [    0.000000] random: get_random_bytes called from
> > > start_kernel+0x2b8/0x454 with crng_init=0
> > > [    0.000000] arch_timer: cp15 timer(s) running at 24.00MHz (phys).
> > > [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff
> > > max_cycles: 0x588fe9dc0, max_idle_ns: 440795202592 ns
> > > [    0.000006] sched_clock: 56 bits at 24MHz, resolution 41ns, wraps
> > > every 4398046511097ns
> > > [    0.003201] Console: colour dummy device 80x25
> > > [    0.003624] printk: console [tty0] enabled
> > > [    0.004020] printk: bootconsole [uart8250] disabled
> >
> > I had to put "console=ttyS2,1500000" in kernel command line to get further logging beyond this point.
> 
> Noted, thanks.
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
