Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4A616B6C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 01:36:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JUgdiIDfuPOqY2g3mfoMQT7ha3VM9Smp0yMDpi3e8Dg=; b=C/+
	Ll6MLoVzhmptlmSGAmWb4rxcVJLIYf5lI5XsscFyPxJyNaqRxbiFhtCB7ubl83aAINE+Put1KMamp
	KpWCXohciX32sb/YuLFFmiG7SGVa3RiVr/XfzXtn6S80wNCwK2qyaSwvWFfWBShISoqE8eRBZvxhI
	4hVZSJW8mLHFtffjPXHVNp9X89TKH727efGmadqqaZAFSiKSjr9/7HCP79sICafUsXU6uxoSEBhl7
	vPO0EJbpXD9qTqbVc2aaUcsQgJo8JCPl/Tc615XM2neMZB2m0j/V9AmsOXr9VQbuaGcuB+xpHRvWq
	apHvzJ1gQIZsfWMgovA9lJ8jfQUzvew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6OCd-0001Xo-1e; Tue, 25 Feb 2020 00:35:59 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6OCT-0001XL-51
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 00:35:51 +0000
Received: by mail-oi1-x22e.google.com with SMTP id j132so10860227oih.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 16:35:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=ZAG7rr2LvlfqKlrmt0FCbyh36G1noNK8QGCDRefUyGU=;
 b=gNiBW4CKLw8UDOOzCgRSfWTJ4l2FMXHq7J59zgKYZ1sdwRD6vArizcMK5oRL9BpbtK
 YaJsinhEx49bjjwjhUPyI18H7JftYF7DFOJomnW9RhAlkuiCzldJJqczayOZMwNywMNq
 uknXhV/tTmA5hqFOjMxyEGjcvJmyCWd755e3XSzncR6FNOOzKe3Ooq29xygKJMmkgRPj
 2ryoj9nc4lTXWkJOV2KrhVp+soH07iN49Zc1i9uqQgRjXmct2KhqVKXQq8dlbsmizxio
 X7oUV9/z+Eyn1BKjPoa5UVgRkz66iKlq5JjU4biHqlTdWQxSdbSU+j/xWlEb0kg/UJ8H
 1TVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ZAG7rr2LvlfqKlrmt0FCbyh36G1noNK8QGCDRefUyGU=;
 b=tTLcACRsD0kAyZ1afsPTbh1amfToE10Qq3NPgQN9abaAgckX6zOt1mdHC0UaoHYRt3
 F+qltaq25TVac4at6iX4zxtLwJ/9Pw89WXMgeTRxNUy4EYjqYMXOQICZFHIPSzwzG9dI
 yYclbc3mwE5RTvuOpo0M/1PQeP88nqt1YAoaf+eYVQc1PCDSg1ruyBKpq+ekmDn8wjJQ
 8pGL7jQeCv0oWljQhlLxAeo2NfF7Zku6xnas/EVAlubiks2XJFHqU1DDzOaFzPgDCIer
 1C845J5nRywTGj1aPOpuFMDT4YTud/JyFAjy5l1hij1yfxazAM5OqbVeSbrmhZ0LSa/9
 8nmQ==
X-Gm-Message-State: APjAAAV6pR1EvvBAPI/iJbEe69ePvKPgKX7JaIR14SAmSMd4nXBLUWkN
 ALF7hxp5RsCjRGd5yTc2aK+fS95daidKt6NXjW1pHLWI02E=
X-Google-Smtp-Source: APXvYqw6c7UULIumq1uJZpB7Xwl8dPitKOeVv/3oZQaxq/AAP4Mf+z6xkwIUCKBkjP5iFHAmqz7U8PBRFWzRGfZt5pA=
X-Received: by 2002:a05:6808:4d3:: with SMTP id
 a19mr1301436oie.119.1582590947124; 
 Mon, 24 Feb 2020 16:35:47 -0800 (PST)
MIME-Version: 1.0
From: Tim Harvey <tharvey@gateworks.com>
Date: Mon, 24 Feb 2020 16:35:32 -0800
Message-ID: <CAJ+vNU3mhhFbE6ZZTNUbnQVLAepffzba9Dsm4uwccQ_cH8RrtA@mail.gmail.com>
Subject: ARM64_SW_TTBR0_PAN enabled causing hangs on OcteonTX
To: linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Sunil Goutham <sgoutham@marvell.com>,
 Robert Richter <rrichter@marvell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_163549_257358_47EB4149 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Greetings,

I'm trying to understand why enabling CONFIG_ARM64_SW_TTBR0_PAN on an
OcteonTX (CN80XX) SoC would cause the kernel to hang.

Here's what I'm seeing using arch/arm64/defconfig +
CONFIG_ARM64_SW_TTBR0_PAN=y on a Gateworks Newport board with a
CN8030-1500BG676-SCP-P12-G SoC using the Marvell SDK-10.1.1.0 boot
firmware:

Starting kernel ...

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x430f0a22]
[    0.000000] Linux version 5.5.0-00001-g2028a3b (tharvey@tharvey)
(gcc version 7.3.0 (Marvell Inc. Version: Marvell GCC7 build 238.0))
#2 SMP PREEMPT Mon Feb 24 16:20:24 PST 2020
[    0.000000] Machine model: Gateworks Newport CN80XX GW6404
[    0.000000] efi: Getting EFI parameters from FDT:
[    0.000000] efi: UEFI not found.
[    0.000000] cma: Reserved 64 MiB at 0x000000007c000000
[    0.000000] NUMA: NODE_DATA [mem 0x7bbe5100-0x7bbe6fff]
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000000500000-0x000000003fffffff]
[    0.000000]   DMA32    [mem 0x0000000040000000-0x000000007fffffff]
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000500000-0x000000007fffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000500000-0x000000007fffffff]
[    0.000000] On node 0 totalpages: 523008
[    0.000000]   DMA zone: 4076 pages used for memmap
[    0.000000]   DMA zone: 0 pages reserved
[    0.000000]   DMA zone: 260864 pages, LIFO batch:63
[    0.000000]   DMA32 zone: 4096 pages used for memmap
[    0.000000]   DMA32 zone: 262144 pages, LIFO batch:63
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.1 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: Trusted OS resident on physical CPU 0x0
[    0.000000] psci: SMC Calling Convention v1.1
[    0.000000] percpu: Embedded 22 pages/cpu s53016 r8192 d28904 u90112
[    0.000000] pcpu-alloc: s53016 r8192 d28904 u90112 alloc=22*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] CPU features: detected: Cavium erratum 30115
[    0.000000] CPU features: detected: Kernel page table isolation (KPTI)
[    0.000000] ARM_SMCCC_ARCH_WORKAROUND_1 missing from firmware
[    0.000000] Speculative Store Bypass Disable mitigation not required
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 514836
[    0.000000] Policy zone: DMA32
[    0.000000] Kernel command line: cma=64M coherent_pool=16M
net.ifnames=0 debug
[    0.000000] Dentry cache hash table entries: 262144 (order: 9,
2097152 bytes, linear)
[    0.000000] Inode-cache hash table entries: 131072 (order: 8,
1048576 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] software IO TLB: mapped [mem 0x3bfff000-0x3ffff000] (64MB)
[    0.000000] Memory: 1887632K/2092032K available (12732K kernel
code, 1922K rwdata, 6844K rodata, 10496K init, 455K bss, 138864K
reserved, 65536K cma-reserved)
[    0.000000] SLUB: HWalign=128, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
[    0.000000] rcu: Preemptible hierarchical RCU implementation.
[    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=4.
[    0.000000]  Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay
is 25 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=4
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
[    0.000000] GICv3: 128 SPIs implemented
[    0.000000] GICv3: 0 Extended SPIs implemented
[    0.000000] GICv3: Distributor has no Range Selector support
[    0.000000] GICv3: 16 PPIs implemented
[    0.000000] GICv3: no VLPI support, direct LPI support
[    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x0000801080000000
[    0.000000] ITS [mem 0x801000020000-0x80100021ffff]
[    0.000000] ITS@0x0000801000020000: Devices Table too large, reduce
ids 21->19
[    0.000000] ITS@0x0000801000020000: allocated 524288 Devices
@78c00000 (flat, esz 8, psz 64K, shr 1)
[    0.000000] GICv3: using LPI property table @0x000000007b440000
[    0.000000] GICv3: CPU0: using allocated LPI pending table
@0x000000007b450000
[    0.000000] random: get_random_bytes called from
start_kernel+0x2b8/0x448 with crng_init=0
[    0.000000] arch_timer: cp15 timer(s) running at 100.00MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff
max_cycles: 0x171024e7e0, max_idle_ns: 440795205315 ns
[    0.000003] sched_clock: 56 bits at 100MHz, resolution 10ns, wraps
every 4398046511100ns
[    0.000397] Console: colour dummy device 80x25
[    0.000899] printk: console [tty0] enabled
[    0.000973] Calibrating delay loop (skipped), value calculated
using timer frequency.. 200.00 BogoMIPS (lpj=400000)
[    0.000992] pid_max: default: 32768 minimum: 301
[    0.001059] LSM: Security Framework initializing
[    0.001112] Mount-cache hash table entries: 4096 (order: 3, 32768
bytes, linear)
[    0.001132] Mountpoint-cache hash table entries: 4096 (order: 3,
32768 bytes, linear)
[    0.024042] ASID allocator initialised with 32768 entries
[    0.032035] rcu: Hierarchical SRCU implementation.
[    0.040106] Platform MSI: gic-its@801000020000 domain created
[    0.040179] PCI/MSI:
/interrupt-controller@801000000000/gic-its@801000020000 domain created
[    0.040900] EFI services will not be available.
[    0.048064] smp: Bringing up secondary CPUs ...
[    0.080236] Detected VIPT I-cache on CPU1
[    0.080252] GICv3: CPU1: found redistributor 1 region 0:0x0000801080020000
[    0.080260] GICv3: CPU1: using allocated LPI pending table
@0x000000007b460000
[    0.080286] CPU1: Booted secondary processor 0x0000000001 [0x430f0a22]
[    0.112272] Detected VIPT I-cache on CPU2
[    0.112284] GICv3: CPU2: found redistributor 2 region 0:0x0000801080040000
[    0.112290] GICv3: CPU2: using allocated LPI pending table
@0x000000007b470000
[    0.112308] CPU2: Booted secondary processor 0x0000000002 [0x430f0a22]
[    0.144330] Detected VIPT I-cache on CPU3
[    0.144341] GICv3: CPU3: found redistributor 3 region 0:0x0000801080060000
[    0.144348] GICv3: CPU3: using allocated LPI pending table
@0x000000007b480000
[    0.144366] CPU3: Booted secondary processor 0x0000000003 [0x430f0a22]
[    0.144435] smp: Brought up 1 node, 4 CPUs
[    0.144545] SMP: Total of 4 processors activated.
[    0.144557] CPU features: detected: Data cache clean to the PoU not
required for I/D coherence
[    0.144570] CPU features: detected: CRC32 instructions
[    0.174519] CPU features: emulated: Privileged Access Never (PAN)
using TTBR0_EL1 switching
[    0.174546] CPU: All CPU(s) started at EL2
[    0.174584] alternatives: patching kernel code
[    0.175748] devtmpfs: initialized
[    0.178091] KASLR disabled due to lack of seed
[    0.178381] clocksource: jiffies: mask: 0xffffffff max_cycles:
0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.178406] futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
[    0.179731] pinctrl core: initialized pinctrl subsystem
[    0.180547] thermal_sys: Registered thermal governor 'step_wise'
[    0.180549] thermal_sys: Registered thermal governor 'power_allocator'
[    0.180649] DMI not present or invalid.
[    0.180927] NET: Registered protocol family 16
[    0.190295] DMA: preallocated 16384 KiB pool for atomic allocations
[    0.190324] audit: initializing netlink subsys (disabled)
[    0.190449] audit: type=2000 audit(0.172:1): state=initialized
audit_enabled=0 res=1
[    0.191143] cpuidle: using governor menu
[    0.191351] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
[    0.192244] Serial: AMBA PL011 UART driver
[    0.193776] 87e028000000.serial: ttyAMA0 at MMIO 0x87e028000000
(irq = 7, base_baud = 0) is a PL011 rev3
[    0.870244] printk: console [ttyAMA0] enabled
[    0.875094] 87e029000000.serial: ttyAMA1 at MMIO 0x87e029000000
(irq = 8, base_baud = 0) is a PL011 rev3
[    0.884998] 87e02a000000.serial: ttyAMA2 at MMIO 0x87e02a000000
(irq = 9, base_baud = 0) is a PL011 rev3
[    0.894899] 87e02b000000.serial: ttyAMA3 at MMIO 0x87e02b000000
(irq = 10, base_baud = 0) is a PL011 rev3
[    0.914346] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    0.921074] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
[    0.927786] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.934490] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
[    0.942887] cryptd: max_cpu_qlen set to 1000
[    0.950168] ACPI: Interpreter disabled.
[    0.954674] iommu: Default domain type: Translated
[    0.959697] vgaarb: loaded
[    0.962633] SCSI subsystem initialized
[    0.966531] libata version 3.00 loaded.
[    0.970558] usbcore: registered new interface driver usbfs
[    0.976086] usbcore: registered new interface driver hub
[    0.981451] usbcore: registered new device driver usb
[    0.986809] pps_core: LinuxPPS API ver. 1 registered
[    0.991781] pps_core: Software ver. 5.3.6 - Copyright 2005-2007
Rodolfo Giometti <giometti@linux.it>
[    1.000926] PTP clock support registered
[    1.004903] EDAC MC: Ver: 3.0.0
[    1.008604] FPGA manager framework
[    1.012074] Advanced Linux Sound Architecture Driver Initialized.
[    1.018680] clocksource: Switched to clocksource arch_sys_counter
[    1.024959] VFS: Disk quotas dquot_6.6.0
[    1.028928] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    1.035947] pnp: PnP ACPI: disabled
[    1.044258] NET: Registered protocol family 2
[    1.048877] tcp_listen_portaddr_hash hash table entries: 1024
(order: 2, 16384 bytes, linear)
[    1.057446] TCP established hash table entries: 16384 (order: 5,
131072 bytes, linear)
[    1.065456] TCP bind hash table entries: 16384 (order: 6, 262144
bytes, linear)
[    1.072894] TCP: Hash tables configured (established 16384 bind 16384)
[    1.079491] UDP hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    1.086236] UDP-Lite hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    1.093503] NET: Registered protocol family 1
[    1.098213] RPC: Registered named UNIX socket transport module.
[    1.104150] RPC: Registered udp transport module.
[    1.108856] RPC: Registered tcp transport module.
[    1.113560] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    1.120006] PCI: CLS 0 bytes, default 64
[    2.543115] hw perfevents: enabled with armv8_cavium_thunder PMU
driver, 7 counters available
[    2.551759] kvm [1]: IPA Size Limit: 48bits
[    2.556697] kvm [1]: GICv3: no GICV resource entry
[    2.561499] kvm [1]: disabling GICv2 emulation
[    2.565945] kvm [1]: GICv3 sysreg trapping enabled ([G0G1], reduced
performance)
[    2.573361] kvm [1]: GIC system register CPU interface enabled
[    2.579277] kvm [1]: vgic interrupt IRQ1
[    2.583329] kvm [1]: Hyp mode initialized successfully
[   23.590677] rcu: INFO: rcu_preempt detected stalls on CPUs/tasks:
[   23.596780] rcu:     3-...0: (72 GPs behind)
idle=8ea/1/0x4000000000000000 softirq=24/24 fqs=2625
[   23.605480]  (detected by 0, t=5252 jiffies, g=-847, q=4)
[   23.610874] Task dump for CPU 3:
[   23.614097] modprobe        R  running task        0   101      7 0x00000002
[   23.621146] Call trace:
[   23.623593]  ret_from_fork+0x0/0x1c
[   86.610673] rcu: INFO: rcu_preempt detected stalls on CPUs/tasks:
[   86.616769] rcu:     3-...0: (72 GPs behind)
idle=8ea/1/0x4000000000000000 softirq=24/24 fqs=10498
[   86.625553]  (detected by 0, t=21007 jiffies, g=-847, q=4)
[   86.631034] Task dump for CPU 3:
[   86.634256] modprobe        R  running task        0   101      7 0x00000002
[   86.641304] Call trace:
[   86.643746]  ret_from_fork+0x0/0x1c
...

With the standard arm64 defconfig (with Emulate Privileged Access
Never using TTBR0_EL1 switching disabled) the board will continue on
enumerating PCI etc without this stall.

Any ideas what's going on here?

Best Regards,

Tim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
