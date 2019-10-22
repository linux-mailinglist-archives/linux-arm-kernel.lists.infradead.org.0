Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F47DFDA6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 08:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4GyYH06sQC08l8dSyzt3NhiXfmqgiLv1fVknbIHSho=; b=D76roYw70SjlPM
	y8bJu/QG80LipYLJwZteBV6tgNzNdTtQK0Yf4CCa/dUeFnPRPUVJPpAaiZYtQ7sf2cWlNV9dShQaj
	/4SsJI0y/h6wJJizBjwvclRrakjvJXP1PkkcuJu38IFWyzcVhkWljcvuEgfe1b0LSpW6XLgRUBYTb
	nqCCYuoG4Isd/VaL24CmXnhux7x7LZSNiphCkkwa4WIMcbBTb+XhWOwDqMmxLkNfcQ6C6WwTdsJn+
	XJvgyTgYI2VB1vrxuVKh92XISeB20PIt9y5yJhUzG/4ppZeSHRArq7PLUum/Pl6sH9tBgO4RygXX0
	lcGCKIUYF9Lvuban8YQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMnWD-0002Ew-Q2; Tue, 22 Oct 2019 06:19:45 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMnW2-0002EO-BP; Tue, 22 Oct 2019 06:19:38 +0000
Received: from localhost (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id 7BBE62E6;
 Tue, 22 Oct 2019 14:19:24 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from localhost (unknown [183.57.25.242])
 by smtp.263.net (postfix) whith ESMTP id
 P18673T140581686720256S1571725161829533_; 
 Tue, 22 Oct 2019 14:19:22 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7e1e1f1d547a20d678fefdada55cf472>
X-RL-SENDER: djw@t-chip.com.cn
X-SENDER: djw@t-chip.com.cn
X-LOGIN-NAME: djw@t-chip.com.cn
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 183.57.25.242
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: djw@t-chip.com.cn
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
Organization: Firefly Team
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
 <109d708e-d182-fafa-44ad-0e6e0f813e0d@fivetechno.de>
 <CAMty3ZBu2WRJV9X6_ZAXBfpBs42p04Ph7amFpfO64iOQM-Sw_w@mail.gmail.com>
 <3560168.eQioKvBMyi@phil>
Date: Tue, 22 Oct 2019 14:19:21 +0800
In-Reply-To: <3560168.eQioKvBMyi@phil> (Heiko Stuebner's message of "Fri, 18
 Oct 2019 01:33:23 +0200")
Message-ID: <87mudtuwt2.fsf@archiso.i-did-not-set--mail-host-address--so-tickle-me>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_231934_884154_5D9AB733 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Markus Reichl <m.reichl@fivetechno.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Da Xue <da@lessconfused.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sorry for the late reply, been stung by the mismatch use of ATF and U-Boot. If
you're using U-Boot version before v2019.10, make sure to use the ATF version
before this commit:

    commit 0aad563c74807195cc7fe2208d17e2d889157f1e (HEAD, tag: blacksheep, refs/bisect/bad)
    Author: Kever Yang <kever.yang@rock-chips.com>
    Date:   Thu Sep 19 10:37:36 2019 +0800

        rockchip: Update BL31_BASE to 0x40000

or use the master branch in git://git.denx.de/u-boot-rockchip.git .

This is very important, or you'll be stuck at:

    U-Boot TPL 2019.10-djw (Oct 22 2019 - 03:08:48)
    Trying to boot from BOOTROM
    Returning to boot ROM...

    U-Boot SPL 2019.10-djw (Oct 22 2019 - 03:08:48 +0000)
    Trying to boot from MMC1

I have tried the following combination:

 - U-Boot: v2019.10
 - ATF: 382ddb3dd46a rockchip: Fix typo for TF content text
 - Kernel: 5.4.0-rc3-next-20191017

*Without* the pwm patch, all boot fine. Here's the full log:

#+begin_src text
U-Boot TPL 2019.10-djw (Oct 22 2019 - 03:51:17)
Trying to boot from BOOTROM
Returning to boot ROM...

U-Boot SPL 2019.10-djw (Oct 22 2019 - 03:51:17 +0000)
Trying to boot from MMC1


U-Boot 2019.10-djw (Oct 22 2019 - 03:51:20 +0000)

Model: Firefly ROC-RK3399-PC Board
DRAM:  3.9 GiB
MMC:   dwmmc@fe320000: 1, sdhci@fe330000: 0
Loading Environment from EXT4... Card did not respond to voltage select!
In:    serial@ff1a0000
Out:   serial@ff1a0000
Err:   serial@ff1a0000
Model: Firefly ROC-RK3399-PC Board
rockchip_dnl_key_pressed: adc_channel_single_shot fail!
Net:
Error: ethernet@fe300000 address not set.
eth-1: ethernet@fe300000
Hit any key to stop autoboot:  0
Card did not respond to voltage select!
switch to partitions #0, OK
mmc1 is current device
Scanning mmc 1:1...
Found U-Boot script /boot/boot.scr
2995 bytes read in 5 ms (585 KiB/s)
## Executing script at 00500000
Boot script loaded from mmc 1
186 bytes read in 4 ms (44.9 KiB/s)
6748991 bytes read in 290 ms (22.2 MiB/s)
26163712 bytes read in 1110 ms (22.5 MiB/s)
53831 bytes read in 10 ms (5.1 MiB/s)
2698 bytes read in 8 ms (329.1 KiB/s)
Applying kernel provided DT fixup script (rockchip-fixup.scr)
## Executing script at 39000000
## Loading init Ramdisk from Legacy Image at 04000000 ...
   Image Name:   uInitrd
   Image Type:   AArch64 Linux RAMDisk Image (gzip compressed)
   Data Size:    6748927 Bytes = 6.4 MiB
   Load Address: 00000000
   Entry Point:  00000000
   Verifying Checksum ... OK
## Flattened Device Tree blob at 01f00000
   Booting using the fdt blob at 0x1f00000
   Loading Ramdisk to f58b0000, end f5f1faff ... OK
   Loading Device Tree to 00000000f583a000, end 00000000f58affff ... OK

Starting kernel ...

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
[    0.000000] Linux version 5.4.0-rc3-next-20191017-05460-g3ef845da3c3b-dirty (dujw@tchip14) (gcc version 5.4.0 20160609 (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.9)) #8 SMP PREEMPT Tue Oct 22 12:08:35 CST 2019
[    0.000000] Machine model: Firefly ROC-RK3399-PC Board
[    0.000000] earlycon: uart8250 at MMIO32 0x00000000ff1a0000 (options '')
[    0.000000] printk: bootconsole [uart8250] enabled
[    0.000000] efi: Getting EFI parameters from FDT:
[    0.000000] efi: UEFI not found.
[    0.000000] cma: Reserved 32 MiB at 0x000000003e000000
[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem 0x0000000000200000-0x00000000f7ffffff]
[    0.000000] NUMA: NODE_DATA [mem 0xf77ef100-0xf77f0fff]
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000000200000-0x000000003fffffff]
[    0.000000]   DMA32    [mem 0x0000000040000000-0x00000000f7ffffff]
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000200000-0x00000000f7ffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000200000-0x00000000f7ffffff]
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.1 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: MIGRATE_INFO_TYPE not supported.
[    0.000000] psci: SMC Calling Convention v1.1
[    0.000000] percpu: Embedded 22 pages/cpu s52952 r8192 d28968 u90112
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: ARM erratum 845719
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] Speculative Store Bypass Disable mitigation not required
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 999432
[    0.000000] Policy zone: DMA32
[    0.000000] Kernel command line: root=UUID=78f156fe-c41f-4fdc-93f1-5d30f67659c8 rootwait rootfstype=ext4 console=ttyS2,1500000 earlycon=uart8250,mmio32,0xff1a0000 swiotlb=1 console=tty1 panic=10 consoleblank=0 loglevel=7 ubootpart=e636e926-01 usb-storage.quirks=0x2537:0x1066:u,0x2537:0x1068:u   cgroup_enable=cpuset cgroup_memory=1 cgroup_enable=memory swapaccount=1
[    0.000000] Dentry cache hash table entries: 524288 (order: 10, 4194304 bytes, linear)
[    0.000000] Inode-cache hash table entries: 262144 (order: 9, 2097152 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] software IO TLB: mapped [mem 0x3dfc0000-0x3e000000] (0MB)
[    0.000000] Memory: 3915000K/4061184K available (12092K kernel code, 1870K rwdata, 6464K rodata, 5056K init, 451K bss, 113416K reserved, 32768K cma-reserved)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=6, Nodes=1
[    0.000000] rcu: Preemptible hierarchical RCU implementation.
[    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=6.
[    0.000000]  Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=6
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
[    0.000000] GICv3: 256 SPIs implemented
[    0.000000] GICv3: 0 Extended SPIs implemented
[    0.000000] GICv3: Distributor has no Range Selector support
[    0.000000] GICv3: 16 PPIs implemented
[    0.000000] GICv3: no VLPI support, no direct LPI support
[    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x00000000fef00000
[    0.000000] ITS [mem 0xfee20000-0xfee3ffff]
[    0.000000] ITS@0x00000000fee20000: allocated 65536 Devices @f6880000 (flat, esz 8, psz 64K, shr 0)
[    0.000000] ITS: using cache flushing for cmd queue
[    0.000000] GICv3: using LPI property table @0x00000000f6840000
[    0.000000] GIC: using cache flushing for LPI property table
[    0.000000] GICv3: CPU0: using allocated LPI pending table @0x00000000f6850000
[    0.000000] GICv3: GIC: PPI partition interrupt-partition-0[0] { /cpus/cpu@0[0] /cpus/cpu@1[1] /cpus/cpu@2[2] /cpus/cpu@3[3] }
[    0.000000] GICv3: GIC: PPI partition interrupt-partition-1[1] { /cpus/cpu@100[4] /cpus/cpu@101[5] }
[    0.000000] random: get_random_bytes called from start_kernel+0x2bc/0x458 with crng_init=0
[    0.000000] arch_timer: cp15 timer(s) running at 24.00MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x588fe9dc0, max_idle_ns: 440795202592 ns
[    0.000007] sched_clock: 56 bits at 24MHz, resolution 41ns, wraps every 4398046511097ns
[    0.003549] Console: colour dummy device 80x25
[    0.003991] printk: console [tty1] enabled
[    0.004387] printk: bootconsole [uart8250] disabled
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
[    0.000000] Linux version 5.4.0-rc3-next-20191017-05460-g3ef845da3c3b-dirty (dujw@tchip14) (gcc version 5.4.0 20160609 (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.9)) #8 SMP PREEMPT Tue Oct 22 12:08:35 CST 2019
[    0.000000] Machine model: Firefly ROC-RK3399-PC Board
[    0.000000] earlycon: uart8250 at MMIO32 0x00000000ff1a0000 (options '')
[    0.000000] printk: bootconsole [uart8250] enabled
[    0.000000] efi: Getting EFI parameters from FDT:
[    0.000000] efi: UEFI not found.
[    0.000000] cma: Reserved 32 MiB at 0x000000003e000000
[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem 0x0000000000200000-0x00000000f7ffffff]
[    0.000000] NUMA: NODE_DATA [mem 0xf77ef100-0xf77f0fff]
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000000200000-0x000000003fffffff]
[    0.000000]   DMA32    [mem 0x0000000040000000-0x00000000f7ffffff]
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000200000-0x00000000f7ffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000200000-0x00000000f7ffffff]
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.1 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: MIGRATE_INFO_TYPE not supported.
[    0.000000] psci: SMC Calling Convention v1.1
[    0.000000] percpu: Embedded 22 pages/cpu s52952 r8192 d28968 u90112
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: ARM erratum 845719
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] Speculative Store Bypass Disable mitigation not required
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 999432
[    0.000000] Policy zone: DMA32
[    0.000000] Kernel command line: root=UUID=78f156fe-c41f-4fdc-93f1-5d30f67659c8 rootwait rootfstype=ext4 console=ttyS2,1500000 earlycon=uart8250,mmio32,0xff1a0000 swiotlb=1 console=tty1 panic=10 consoleblank=0 loglevel=7 ubootpart=e636e926-01 usb-storage.quirks=0x2537:0x1066:u,0x2537:0x1068:u   cgroup_enable=cpuset cgroup_memory=1 cgroup_enable=memory swapaccount=1
[    0.000000] Dentry cache hash table entries: 524288 (order: 10, 4194304 bytes, linear)
[    0.000000] Inode-cache hash table entries: 262144 (order: 9, 2097152 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] software IO TLB: mapped [mem 0x3dfc0000-0x3e000000] (0MB)
[    0.000000] Memory: 3915000K/4061184K available (12092K kernel code, 1870K rwdata, 6464K rodata, 5056K init, 451K bss, 113416K reserved, 32768K cma-reserved)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=6, Nodes=1
[    0.000000] rcu: Preemptible hierarchical RCU implementation.
[    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=6.
[    0.000000]  Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=6
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
[    0.000000] GICv3: 256 SPIs implemented
[    0.000000] GICv3: 0 Extended SPIs implemented
[    0.000000] GICv3: Distributor has no Range Selector support
[    0.000000] GICv3: 16 PPIs implemented
[    0.000000] GICv3: no VLPI support, no direct LPI support
[    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x00000000fef00000
[    0.000000] ITS [mem 0xfee20000-0xfee3ffff]
[    0.000000] ITS@0x00000000fee20000: allocated 65536 Devices @f6880000 (flat, esz 8, psz 64K, shr 0)
[    0.000000] ITS: using cache flushing for cmd queue
[    0.000000] GICv3: using LPI property table @0x00000000f6840000
[    0.000000] GIC: using cache flushing for LPI property table
[    0.000000] GICv3: CPU0: using allocated LPI pending table @0x00000000f6850000
[    0.000000] GICv3: GIC: PPI partition interrupt-partition-0[0] { /cpus/cpu@0[0] /cpus/cpu@1[1] /cpus/cpu@2[2] /cpus/cpu@3[3] }
[    0.000000] GICv3: GIC: PPI partition interrupt-partition-1[1] { /cpus/cpu@100[4] /cpus/cpu@101[5] }
[    0.000000] random: get_random_bytes called from start_kernel+0x2bc/0x458 with crng_init=0
[    0.000000] arch_timer: cp15 timer(s) running at 24.00MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x588fe9dc0, max_idle_ns: 440795202592 ns
[    0.000007] sched_clock: 56 bits at 24MHz, resolution 41ns, wraps every 4398046511097ns
[    0.003549] Console: colour dummy device 80x25
[    0.003991] printk: console [tty1] enabled
[    0.004387] printk: bootconsole [uart8250] disabled
[    0.004976] Calibrating delay loop (skipped), value calculated using timer frequency.. 48.00 BogoMIPS (lpj=96000)
[    0.005011] pid_max: default: 32768 minimum: 301
[    0.005161] LSM: Security Framework initializing
[    0.005273] Mount-cache hash table entries: 8192 (order: 4, 65536 bytes, linear)
[    0.005319] Mountpoint-cache hash table entries: 8192 (order: 4, 65536 bytes, linear)
[    0.027598] ASID allocator initialised with 32768 entries
[    0.035594] rcu: Hierarchical SRCU implementation.
[    0.043750] Platform MSI: interrupt-controller@fee20000 domain created
[    0.044174] PCI/MSI: /interrupt-controller@fee00000/interrupt-controller@fee20000 domain created
[    0.049783] EFI services will not be available.
[    0.055773] smp: Bringing up secondary CPUs ...
[    0.088001] Detected VIPT I-cache on CPU1
[    0.088041] GICv3: CPU1: found redistributor 1 region 0:0x00000000fef20000
[    0.088059] GICv3: CPU1: using allocated LPI pending table @0x00000000f6860000
[    0.088110] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
[    0.120075] Detected VIPT I-cache on CPU2
[    0.120107] GICv3: CPU2: found redistributor 2 region 0:0x00000000fef40000
[    0.120122] GICv3: CPU2: using allocated LPI pending table @0x00000000f6870000
[    0.120154] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
[    0.152178] Detected VIPT I-cache on CPU3
[    0.152206] GICv3: CPU3: found redistributor 3 region 0:0x00000000fef60000
[    0.152220] GICv3: CPU3: using allocated LPI pending table @0x00000000f6900000
[    0.152252] CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
[    0.184290] CPU features: detected: EL2 vector hardening
[    0.184315] Detected PIPT I-cache on CPU4
[    0.184347] GICv3: CPU4: found redistributor 100 region 0:0x00000000fef80000
[    0.184361] GICv3: CPU4: using allocated LPI pending table @0x00000000f6910000
[    0.184397] CPU4: Booted secondary processor 0x0000000100 [0x410fd082]
[    0.216396] Detected PIPT I-cache on CPU5
[    0.216422] GICv3: CPU5: found redistributor 101 region 0:0x00000000fefa0000
[    0.216435] GICv3: CPU5: using allocated LPI pending table @0x00000000f6920000
[    0.216464] CPU5: Booted secondary processor 0x0000000101 [0x410fd082]
[    0.216579] smp: Brought up 1 node, 6 CPUs
[    0.216911] SMP: Total of 6 processors activated.
[    0.216932] CPU features: detected: 32-bit EL0 Support
[    0.216953] CPU features: detected: CRC32 instructions
[    0.231355] CPU: All CPU(s) started at EL2
[    0.231417] alternatives: patching kernel code
[    0.234632] devtmpfs: initialized
[    0.251858] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.251915] futex hash table entries: 2048 (order: 5, 131072 bytes, linear)
[    0.253910] pinctrl core: initialized pinctrl subsystem
[    0.256273] DMI not present or invalid.
[    0.256848] NET: Registered protocol family 16
[    0.259401] DMA: preallocated 256 KiB pool for atomic allocations
[    0.259440] audit: initializing netlink subsys (disabled)
[    0.259661] audit: type=2000 audit(0.256:1): state=initialized audit_enabled=0 res=1
[    0.261941] cpuidle: using governor menu
[    0.262782] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
[    0.265709] Serial: AMBA PL011 UART driver
[    0.316763] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    0.316790] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
[    0.316807] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.316823] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
[    0.320105] cryptd: max_cpu_qlen set to 1000
[    0.325843] ACPI: Interpreter disabled.
[    0.327922] dc_12v: supplied by vcc_vbus_typec0
[    0.329430] vcc_sys: supplied by dc_12v
[    0.330330] iommu: Default domain type: Translated
[    0.332313] vgaarb: loaded
[    0.332696] SCSI subsystem initialized
[    0.333164] usbcore: registered new interface driver usbfs
[    0.333222] usbcore: registered new interface driver hub
[    0.333309] usbcore: registered new device driver usb
[    0.334563] pps_core: LinuxPPS API ver. 1 registered
[    0.334578] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    0.334606] PTP clock support registered
[    0.334824] EDAC MC: Ver: 3.0.0
[    0.336545] FPGA manager framework
[    0.336636] Advanced Linux Sound Architecture Driver Initialized.
[    0.337584] clocksource: Switched to clocksource arch_sys_counter
[    0.337772] VFS: Disk quotas dquot_6.6.0
[    0.337842] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    0.338047] pnp: PnP ACPI: disabled
[    0.345726] thermal_sys: Registered thermal governor 'step_wise'
[    0.345730] thermal_sys: Registered thermal governor 'power_allocator'
[    0.346251] NET: Registered protocol family 2
[    0.346695] tcp_listen_portaddr_hash hash table entries: 2048 (order: 3, 32768 bytes, linear)
[    0.346790] TCP established hash table entries: 32768 (order: 6, 262144 bytes, linear)
[    0.347148] TCP bind hash table entries: 32768 (order: 7, 524288 bytes, linear)
[    0.347824] TCP: Hash tables configured (established 32768 bind 32768)
[    0.347954] UDP hash table entries: 2048 (order: 4, 65536 bytes, linear)
[    0.348100] UDP-Lite hash table entries: 2048 (order: 4, 65536 bytes, linear)
[    0.348491] NET: Registered protocol family 1
[    0.352990] RPC: Registered named UNIX socket transport module.
[    0.353008] RPC: Registered udp transport module.
[    0.353021] RPC: Registered tcp transport module.
[    0.353033] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.353053] PCI: CLS 0 bytes, default 64
[    0.353218] Unpacking initramfs...
[    0.791121] Freeing initrd memory: 6588K
[    0.792233] hw perfevents: enabled with armv8_cortex_a53 PMU driver, 7 counters available
[    0.792578] hw perfevents: enabled with armv8_cortex_a72 PMU driver, 7 counters available
[    0.792994] kvm [1]: IPA Size Limit: 40bits
[    0.793782] kvm [1]: vgic-v2@fff20000
[    0.793818] kvm [1]: GIC system register CPU interface enabled
[    0.794016] kvm [1]: vgic interrupt IRQ10
[    0.794241] kvm [1]: Hyp mode initialized successfully
[    0.884124] Initialise system trusted keyrings
[    0.884329] workingset: timestamp_bits=44 max_order=20 bucket_order=0
[    0.891824] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.892624] NFS: Registering the id_resolver key type
[    0.892658] Key type id_resolver registered
[    0.892671] Key type id_legacy registered
[    0.892692] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    0.892878] 9p: Installing v9fs 9p2000 file system support
[    0.920345] Key type asymmetric registered
[    0.920367] Asymmetric key parser 'x509' registered
[    0.920423] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 245)
[    0.920442] io scheduler mq-deadline registered
[    0.920456] io scheduler kyber registered
[    0.926994] vcc5v0_host: supplied by vcc_sys
[    0.928594] vcc_vbus_typec1: supplied by vcc_sys
[    0.943953] EINJ: ACPI disabled.
[    0.953391] dma-pl330 ff6d0000.dma-controller: Loaded driver for PL330 DMAC-241330
[    0.953419] dma-pl330 ff6d0000.dma-controller:       DBUFF-32x8bytes Num_Chans-6 Num_Peri-12 Num_Events-12
[    0.954648] dma-pl330 ff6e0000.dma-controller: Loaded driver for PL330 DMAC-241330
[    0.954674] dma-pl330 ff6e0000.dma-controller:       DBUFF-128x8bytes Num_Chans-8 Num_Peri-20 Num_Events-16
[    0.961527] pwm-regulator: supplied by regulator-dummy
[    0.961783] vcc3v3_sys: supplied by vcc_sys
[    0.967643] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    0.969899] ff180000.serial: ttyS0 at MMIO 0xff180000 (irq = 35, base_baud = 1500000) is a 16550A
[    0.970665] ff1a0000.serial: ttyS2 at MMIO 0xff1a0000 (irq = 36, base_baud = 1500000) is a 16550A
[    1.070498] printk: console [ttyS2] enabled
[    1.072690] SuperH (H)SCI(F) driver initialized
[    1.074098] msm_serial: driver initialized
[    1.076752] cacheinfo: Unable to detect cache hierarchy for CPU 0
[    1.085950] loop: module loaded
[    1.093551] libphy: Fixed MDIO Bus: probed
[    1.094237] tun: Universal TUN/TAP device driver, 1.6
[    1.095944] thunder_xcv, ver 1.0
[    1.096279] thunder_bgx, ver 1.0
[    1.096609] nicpf, ver 1.0
[    1.097937] hclge is initializing
[    1.098241] hns3: Hisilicon Ethernet Network Driver for Hip08 Family - version
[    1.098884] hns3: Copyright (c) 2017 Huawei Corporation.
[    1.099409] e1000e: Intel(R) PRO/1000 Network Driver - 3.2.6-k
[    1.099928] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    1.100494] igb: Intel(R) Gigabit Ethernet Network Driver - version 5.6.0-k
[    1.101112] igb: Copyright (c) 2007-2014 Intel Corporation.
[    1.101664] igbvf: Intel(R) Gigabit Virtual Function Network Driver - version 2.4.0-k
[    1.102360] igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
[    1.103463] sky2: driver version 1.30
[    1.104946] VFIO - User Level meta-driver version: 0.3
[    1.112306] OF: graph: no port node found in /syscon@ff770000/usb2-phy@e450/otg-port
[    1.122046] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.122637] ehci-pci: EHCI PCI platform driver
[    1.123070] ehci-platform: EHCI generic platform driver
[    1.125777] ehci-platform fe380000.usb: EHCI Host Controller
[    1.126303] ehci-platform fe380000.usb: new USB bus registered, assigned bus number 1
[    1.127102] ehci-platform fe380000.usb: irq 27, io mem 0xfe380000
[    1.141619] ehci-platform fe380000.usb: USB 2.0 started, EHCI 1.00
[    1.142803] hub 1-0:1.0: USB hub found
[    1.143180] hub 1-0:1.0: 1 port detected
[    1.146012] ehci-platform fe3c0000.usb: EHCI Host Controller
[    1.146535] ehci-platform fe3c0000.usb: new USB bus registered, assigned bus number 2
[    1.147342] ehci-platform fe3c0000.usb: irq 29, io mem 0xfe3c0000
[    1.161610] ehci-platform fe3c0000.usb: USB 2.0 started, EHCI 1.00
[    1.162711] hub 2-0:1.0: USB hub found
[    1.163078] hub 2-0:1.0: 1 port detected
[    1.163962] ehci-orion: EHCI orion driver
[    1.164545] ehci-exynos: EHCI EXYNOS driver
[    1.165087] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.165682] ohci-pci: OHCI PCI platform driver
[    1.166131] ohci-platform: OHCI generic platform driver
[    1.166788] ohci-platform fe3a0000.usb: Generic Platform OHCI controller
[    1.167402] ohci-platform fe3a0000.usb: new USB bus registered, assigned bus number 3
[    1.168187] ohci-platform fe3a0000.usb: irq 28, io mem 0xfe3a0000
[    1.230303] hub 3-0:1.0: USB hub found
[    1.230677] hub 3-0:1.0: 1 port detected
[    1.231464] ohci-platform fe3e0000.usb: Generic Platform OHCI controller
[    1.232077] ohci-platform fe3e0000.usb: new USB bus registered, assigned bus number 4
[    1.232859] ohci-platform fe3e0000.usb: irq 30, io mem 0xfe3e0000
[    1.294303] hub 4-0:1.0: USB hub found
[    1.294681] hub 4-0:1.0: 1 port detected
[    1.295532] ohci-exynos: OHCI EXYNOS driver
[    1.296673] xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
[    1.297184] xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 5
[    1.298024] xhci-hcd xhci-hcd.0.auto: hcc params 0x0220fe64 hci version 0x110 quirks 0x0000000002010010
[    1.298874] xhci-hcd xhci-hcd.0.auto: irq 221, io mem 0xfe800000
[    1.300138] hub 5-0:1.0: USB hub found
[    1.300508] hub 5-0:1.0: 1 port detected
[    1.301147] xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
[    1.301672] xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 6
[    1.302368] xhci-hcd xhci-hcd.0.auto: Host supports USB 3.0 SuperSpeed
[    1.303008] usb usb6: We don't know the algorithms for LPM for this host, disabling LPM.
[    1.304247] hub 6-0:1.0: USB hub found
[    1.304615] hub 6-0:1.0: 1 port detected
[    1.305401] xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
[    1.305931] xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 7
[    1.306740] xhci-hcd xhci-hcd.1.auto: hcc params 0x0220fe64 hci version 0x110 quirks 0x0000000002010010
[    1.307613] xhci-hcd xhci-hcd.1.auto: irq 222, io mem 0xfe900000
[    1.308849] hub 7-0:1.0: USB hub found
[    1.309217] hub 7-0:1.0: 1 port detected
[    1.309891] xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
[    1.310392] xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 8
[    1.311082] xhci-hcd xhci-hcd.1.auto: Host supports USB 3.0 SuperSpeed
[    1.311718] usb usb8: We don't know the algorithms for LPM for this host, disabling LPM.
[    1.312952] hub 8-0:1.0: USB hub found
[    1.313323] hub 8-0:1.0: 1 port detected
[    1.314480] usbcore: registered new interface driver usb-storage
[    1.320093] i2c /dev entries driver
[    1.324485] rk808 0-001b: chip id: 0x0
[    1.328883] rk808-regulator rk808-regulator: there is no dvs0 gpio
[    1.329459] rk808-regulator rk808-regulator: there is no dvs1 gpio
[    1.330110] DCDC_REG1: supplied by vcc_sys
[    1.331413] DCDC_REG2: supplied by vcc_sys
[    1.332396] DCDC_REG3: supplied by vcc_sys
[    1.332977] DCDC_REG4: supplied by vcc_sys
[    1.333911] LDO_REG1: supplied by vcc_sys
[    1.335603] LDO_REG2: supplied by vcc_sys
[    1.336986] LDO_REG3: supplied by vcc_sys
[    1.338510] LDO_REG4: supplied by vcc_sys
[    1.340068] LDO_REG5: supplied by vcc_sys
[    1.341447] LDO_REG6: supplied by vcc_sys
[    1.343009] LDO_REG7: supplied by vcc_sys
[    1.344422] LDO_REG8: supplied by vcc_sys
[    1.345946] SWITCH_REG1: supplied by vcc3v3_sys
[    1.346700] SWITCH_REG2: supplied by vcc3v3_sys
[    1.348527] fan53555-regulator 0-0040: FAN53555 Option[8] Rev[1] Detected!
[    1.349169] fan53555-reg: supplied by vcc_sys
[    1.350855] vcc1v8_s3: supplied by vcc_1v8
[    1.351881] fan53555-regulator 0-0041: FAN53555 Option[8] Rev[1] Detected!
[    1.352511] fan53555-reg: supplied by vcc_sys
[    1.368314] sdhci: Secure Digital Host Controller Interface driver
[    1.368862] sdhci: Copyright(c) Pierre Ossman
[    1.369505] Synopsys Designware Multimedia Card Interface Driver
[    1.370641] dwmmc_rockchip fe320000.dwmmc: IDMAC supports 32-bit address mode.
[    1.371285] dwmmc_rockchip fe320000.dwmmc: Using internal DMA controller.
[    1.371886] dwmmc_rockchip fe320000.dwmmc: Version ID is 270a
[    1.372413] dwmmc_rockchip fe320000.dwmmc: DW MMC controller at irq 25,32 bit host data width,256 deep fifo
[    1.373324] dwmmc_rockchip fe320000.dwmmc: Got CD GPIO
[    1.385648] mmc_host mmc0: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
[    1.399877] sdhci-pltfm: SDHCI platform and OF driver helper
[    1.401041] mmc1: CQHCI version 5.10
[    1.401266] random: fast init done
[    1.426404] mmc1: SDHCI controller on fe330000.sdhci [fe330000.sdhci] using ADMA
[    1.428236] ledtrig-cpu: registered to indicate activity on CPUs
[    1.429501] usbcore: registered new interface driver usbhid
[    1.430031] usbhid: USB HID core driver
[    1.433350] NET: Registered protocol family 17
[    1.433842] 9pnet: Installing 9P2000 support
[    1.434243] Key type dns_resolver registered
[    1.435281] registered taskstats version 1
[    1.435649] Loading compiled-in X.509 certificates
[    1.451542] hctosys: unable to open rtc device (rtc0)
[    1.452769] ALSA device list:
[    1.453036]   No soundcards found.
[    1.455546] Freeing unused kernel memory: 5056K
[    1.457774] Run /init as init process
[    1.463868] mmc_host mmc0: Bus speed (slot 0) = 50000000Hz (slot req 50000000Hz, actual 50000000HZ div = 0)
[    1.464836] mmc0: new high speed SDHC card at address aaaa
[    1.465825] mmcblk0: mmc0:aaaa SC16G 14.8 GiB
[    1.473051]  mmcblk0: p1
[    1.917928] EXT4-fs (mmcblk0p1): mounted filesystem with writeback data mode. Opts: (null)
[    2.460565] systemd[1]: System time before build time, advancing clock.
[    2.486504] systemd[1]: systemd 237 running in system mode. (+PAM +AUDIT +SELINUX +IMA +APPARMOR +SMACK +SYSVINIT +UTMP +LIBCRYPTSETUP +GCRYPT +GNUTLS +ACL +XZ +LZ4 +SECCOMP +BLKID +ELFUTILS +KMOD -IDN2 +IDN -PCRE2 default-hierarchy=hybrid)
[    2.488625] systemd[1]: Detected architecture arm64.
[    2.529981] systemd[1]: Set hostname to <roc>.
[    2.560455] ttyS2 - failed to request DMA
[    2.674962] systemd[1]: File /lib/systemd/system/systemd-journald.service:36 configures an IP firewall (IPAddressDeny=any), but the local system does not support BPF/cgroup based firewalling.
[    2.676456] systemd[1]: Proceeding WITHOUT firewalling in effect! (This warning is only shown for the first loaded unit using IP firewalling.)
[    2.748456] systemd[1]: /lib/systemd/system/rk3399-bluetooth.service:11: Support for option SysVStartPriority= has been removed and it is ignored
[    2.794574] random: systemd: uninitialized urandom read (16 bytes read)
[    2.795190] systemd[1]: Reached target System Time Synchronized.
[    2.795997] random: systemd: uninitialized urandom read (16 bytes read)
[    2.796650] systemd[1]: Started Dispatch Password Requests to Console Directory Watch.
[    2.797433] random: systemd: uninitialized urandom read (16 bytes read)
[    2.798109] systemd[1]: Started Forward Password Requests to Wall Directory Watch.
[    2.798858] systemd[1]: Reached target Local Encrypted Volumes.
[    2.902750] EXT4-fs (mmcblk0p1): re-mounted. Opts: commit=600,errors=remount-ro

Ubuntu Bionic with Armbian Linux ttyS2

roc login:
#+end_src


Heiko Stuebner <heiko@sntech.de> writes:

> Am Donnerstag, 17. Oktober 2019, 15:49:04 CEST schrieb Jagan Teki:
>> Hi Markus,
>>
>> On Thu, Oct 17, 2019 at 6:56 PM Markus Reichl <m.reichl@fivetechno.de> wrote:
>
>> >
>> > Hi Jagan,
>> >
>> > your patch fixes booting my rk3399-roc-pc with 5.4.0-rc3-next-20191017.
>> > Without your patch roc-pc hangs here:
>> > [    9.703526] pwm-regulator: supplied by regulator-dummy
>>
>> Thanks for testing this.
>>
>> Indeed the same change available in BSP
>> https://github.com/FireflyTeam/kernel/blob/stable-4.4-rk3399-linux/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi#L1184
>
> Still there is no "active" pinctrl for the mainline pwm driver at all.
> So while that may cause a different handling in the vendor kernel in
> mainline you just cause the driver to not set any pinctrl setting at all.
> Aka the pin settings stay at what they are when coming from the bootloader.
>
> So maybe you just need to compare the state the pin is on in comparison
> to what the new (failing?) pinctrl setting is doing.
>
> Heiko
>
>> I'm waiting for Levin response on this issue, need to update commit
>> information accordingly.
>>
>> >
>> > Am 16.10.19 um 19:09 schrieb Jagan Teki:
>> > > Hi Levin,
>> > >
>> > > On Tue, Oct 8, 2019 at 8:42 AM <djw@t-chip.com.cn> wrote:
>> > >>
>> > >> Jagan Teki <jagan@amarulasolutions.com> writes:
>> > >>
>> > >> > Hi Heiko,
>> > >> >
>> > >> > On Mon, Sep 30, 2019 at 2:51 AM Heiko Stuebner <heiko@sntech.de> wrote:
>> > >> >>
>> > >> >> Hi Jagan,
>> > >> >>
>> > >> >> Am Donnerstag, 19. September 2019, 07:28:17 CEST schrieb Jagan Teki:
>> > >> >> > ROC-PC is not able to boot linux console if PWM2_d is
>> > >> >> > unattached to any pinctrl logic.
>> > >> >> >
>> > >> >> > To be precise the linux boot hang with last logs as,
>> > >> >> > ...
>> > >> >> > .....
>> > >> >> > [    0.003367] Console: colour dummy device 80x25
>> > >> >> > [    0.003788] printk: console [tty0] enabled
>> > >> >> > [    0.004178] printk: bootconsole [uart8250] disabled
>> > >> >> >
>> > >> >> > In ROC-PC the PWM2_d pin is connected to LOG_DVS_PWM of
>> > >> >> > VDD_LOG. So, for normal working operations this needs to
>> > >> >> > active and pull-down.
>> > >> >> >
>> > >> >> > This patch fix, by attaching pinctrl active and pull-down
>> > >> >> > the pwm2.
>> > >> >>
>> > >> >> This looks highly dubious on first glance. The pwm subsystem nor
>> > >> >> the Rockchip pwm driver do not do any pinctrl handling.
>> > >> >>
>> > >> >> So I don't really see where that "active" pinctrl state is supposed
>> > >> >> to come from.
>> > >> >>
>> > >> >> Comparing with the pwm driver in the vendor tree I see that there
>> > >> >> is such a state defined there. But that code there also looks strange
>> > >> >> as that driver never again leaves this active state after entering it.
>> > >> >>
>> > >> >> Also for example all the Gru devices run with quite a number of pwm-
>> > >> >> regulators without needing additional fiddling with the pwm itself, so
>> > >> >> I don't really see why that should be different here.
>> > >> >
>> > >> > I deed, I was supposed to think the same. but the vendor kernel dts
>> > >> > from firefly do follow the pwm2 pinctrl [1]. I wouldn't find any
>> > >> > information other than this vensor information, ie one of the reason I
>> > >> > have marked "Levin Du" who initially supported this board.
>> > >> >
>> > >> > One, think I have seen was this pinctrl active fixed the boot hang.
>> > >> > any inputs from would be very helpful.
>> > >> >
>> > >> > Levin Du, any inputs?
>> > >> >
>> > >> > [1] https://github.com/FireflyTeam/kernel/blob/stable-4.4-rk3399-linux/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi#L1184> > >> >
>> > >>
>> > >> A grep of the `pwm2` shows that there's such block in rk3399-nanopi4.dtsi:
>> > >>
>> > >>     &pwm2 {
>> > >>             pinctrl-names = "active";
>> > >>             pinctrl-0 = <&pwm2_pin_pull_down>;
>> > >>             status = "okay";
>> > >>     };
>> > >>
>> > >> But last time I checked, using the mainline U-Boot (the roc-rk3399-pc is
>> > >> in mainline now) with mainline linux v5.2-rc7, no such setting is
>> > >> necessary, and the board boots happily.
>> > >>
>> > >> I cannot find the use of "active" pinctrl state in the
>> > >> `drivers/pwm/pwm-rockchip.c`. If the pinctrl state needs to be setup as
>> > >> default, the `pinctrl-names` needs to be "default" or "init" (see
>> > >> `drivers/base/pinctrl.c`) .
>> > >>
>> > >> Jagan, what version of board do you use? I checked with
>> > >> "ROC-RK3399-PC-V1.0-A 2018-07-12".
>> > >
>> > > I have ROC-RK3399-PC-V1.A 2018.09.25 and powering with TYPE-C0 port.
>> > >
>> > > And here the boot log
>> > >
>> > > [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
>> > > [    0.000000] Linux version 5.4.0-rc3-next-20191016
>> > > (jagan@jagan-XPS-13-9350) (gcc version 6.3.1 20170109 (Linaro GCC
>> > > 6.3-2017.02)) #1 SMP PREEMPT Wed Oct 16 21:17:23 IST 2019
>> > > [    0.000000] Machine model: Firefly ROC-RK3399-PC Board
>> > > [    0.000000] earlycon: uart8250 at MMIO32 0x00000000ff1a0000 (options '')
>> > > [    0.000000] printk: bootconsole [uart8250] enabled
>> > > [    0.000000] efi: Getting EFI parameters from FDT:
>> > > [    0.000000] efi: UEFI not found.
>> > > [    0.000000] cma: Reserved 32 MiB at 0x000000003e000000
>> > > [    0.000000] NUMA: No NUMA configuration found
>> > > [    0.000000] NUMA: Faking a node at [mem
>> > > 0x0000000000200000-0x00000000f7ffffff]
>> > > [    0.000000] NUMA: NODE_DATA [mem 0xf77ef100-0xf77f0fff]
>> > > [    0.000000] Zone ranges:
>> > > [    0.000000]   DMA      [mem 0x0000000000200000-0x000000003fffffff]
>> > > [    0.000000]   DMA32    [mem 0x0000000040000000-0x00000000f7ffffff]
>> > > [    0.000000]   Normal   empty
>> > > [    0.000000] Movable zone start for each node
>> > > [    0.000000] Early memory node ranges
>> > > [    0.000000]   node   0: [mem 0x0000000000200000-0x00000000f7ffffff]
>> > > [    0.000000] Initmem setup node 0 [mem 0x0000000000200000-0x00000000f7ffffff]
>> > > [    0.000000] psci: probing for conduit method from DT.
>> > > [    0.000000] psci: PSCIv1.1 detected in firmware.
>> > > [    0.000000] psci: Using standard PSCI v0.2 function IDs
>> > > [    0.000000] psci: MIGRATE_INFO_TYPE not supported.
>> > > [    0.000000] psci: SMC Calling Convention v1.1
>> > > [    0.000000] percpu: Embedded 22 pages/cpu s52952 r8192 d28968 u90112
>> > > [    0.000000] Detected VIPT I-cache on CPU0
>> > > [    0.000000] CPU features: detected: ARM erratum 845719
>> > > [    0.000000] CPU features: detected: GIC system register CPU interface
>> > > [    0.000000] Speculative Store Bypass Disable mitigation not required
>> > > [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 999432
>> > > [    0.000000] Policy zone: DMA32
>> > > [    0.000000] Kernel command line:
>> > > earlycon=uart8250,mmio32,0xff1a0000 root=/dev/mmcblk1p1 rootwait
>> > > [    0.000000] Dentry cache hash table entries: 524288 (order: 10,
>> > > 4194304 bytes, linear)
>> > > [    0.000000] Inode-cache hash table entries: 262144 (order: 9,
>> > > 2097152 bytes, linear)
>> > > [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
>> > > [    0.000000] software IO TLB: mapped [mem 0x3a000000-0x3e000000] (64MB)
>> > > [    0.000000] Memory: 3856004K/4061184K available (12028K kernel
>> > > code, 1870K rwdata, 6440K rodata, 5056K init, 451K bss, 172412K
>> > > reserved, 32768K cma-reserved)
>> > > [    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=6, Nodes=1
>> > > [    0.000000] rcu: Preemptible hierarchical RCU implementation.
>> > > [    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=6.
>> > > [    0.000000]  Tasks RCU enabled.
>> > > [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay
>> > > is 25 jiffies.
>> > > [    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=6
>> > > [    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
>> > > [    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
>> > > [    0.000000] GICv3: 256 SPIs implemented
>> > > [    0.000000] GICv3: 0 Extended SPIs implemented
>> > > [    0.000000] GICv3: Distributor has no Range Selector support
>> > > [    0.000000] GICv3: 16 PPIs implemented
>> > > [    0.000000] GICv3: no VLPI support, no direct LPI support
>> > > [    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x00000000fef00000
>> > > [    0.000000] ITS [mem 0xfee20000-0xfee3ffff]
>> > > [    0.000000] ITS@0x00000000fee20000: allocated 65536 Devices
>> > > @f6880000 (flat, esz 8, psz 64K, shr 0)
>> > > [    0.000000] ITS: using cache flushing for cmd queue
>> > > [    0.000000] GICv3: using LPI property table @0x00000000f6840000
>> > > [    0.000000] GIC: using cache flushing for LPI property table
>> > > [    0.000000] GICv3: CPU0: using allocated LPI pending table
>> > > @0x00000000f6850000
>> > > [    0.000000] GICv3: GIC: PPI partition interrupt-partition-0[0] {
>> > > /cpus/cpu@0[0] /cpus/cpu@1[1] /cpus/cpu@2[2] /cpus/cpu@3[3] }
>> > > [    0.000000] GICv3: GIC: PPI partition interrupt-partition-1[1] {
>> > > /cpus/cpu@100[4] /cpus/cpu@101[5] }
>> > > [    0.000000] random: get_random_bytes called from
>> > > start_kernel+0x2b8/0x454 with crng_init=0
>> > > [    0.000000] arch_timer: cp15 timer(s) running at 24.00MHz (phys).
>> > > [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff
>> > > max_cycles: 0x588fe9dc0, max_idle_ns: 440795202592 ns
>> > > [    0.000006] sched_clock: 56 bits at 24MHz, resolution 41ns, wraps
>> > > every 4398046511097ns
>> > > [    0.003201] Console: colour dummy device 80x25
>> > > [    0.003624] printk: console [tty0] enabled
>> > > [    0.004020] printk: bootconsole [uart8250] disabled
>> >
>> > I had to put "console=ttyS2,1500000" in kernel command line to get further logging beyond this point.
>>
>> Noted, thanks.
>>
--
Levin Du



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
