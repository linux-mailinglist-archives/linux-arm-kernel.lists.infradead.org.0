Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D06219D511
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 12:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uoySMgldwgVNexoS+ElWH9rqm6KQNlC8KSZUMLKEYBw=; b=YSoOYcLDX9dO6x
	K182VqZ2USr+F+EvibUn1INRXvqvCB0Oh5wOYrIBE3YXoELoI5v62UMM9DSHdtKjJ57CWo290KsZz
	jOC+2xw9C07LJi6A4jnVo70r7vUo2FyIAgDOPZdYkkz8mL5w8QQEJB8bPjDaBCtDbf7yqYlpeBDSf
	fYff6s6n3HtWy0OUyoIu5phKmFpLsWzBr/hI9SksImIkEGceJqptpAiAMP6vNvZsjrNb0UXZspmXy
	BCM0EyvfsTeLGItRbKzfRn5favq0lbwSZBItULZCmvSBsXHGEBKjh1xk9EH91niSC6U8c6RJ0fmHG
	BWbnDxRZJyxWEYGgH36g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKJad-0002zj-9o; Fri, 03 Apr 2020 10:30:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKJaV-0002Jf-KR
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 10:30:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6044630E;
 Fri,  3 Apr 2020 03:30:07 -0700 (PDT)
Received: from [192.168.3.111] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 788253F71E;
 Fri,  3 Apr 2020 03:30:06 -0700 (PDT)
Subject: Re: Actions: Question about S700 pin controller
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <CABHD4K_LPKp4LP5yH=HmjBzbTnO4ih=AwK_XHJWCy-vAv1-QNQ@mail.gmail.com>
From: =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Autocrypt: addr=andre.przywara@arm.com; prefer-encrypt=mutual; keydata=
 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
 i4aIXCH3Wv6K
Organization: ARM Ltd.
Message-ID: <a1d57a0a-6a65-fb53-b438-790bfae1dab8@arm.com>
Date: Fri, 3 Apr 2020 11:29:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CABHD4K_LPKp4LP5yH=HmjBzbTnO4ih=AwK_XHJWCy-vAv1-QNQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_033011_759150_FFE2288F 
X-CRM114-Status: GOOD (  19.84  )
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
Cc: robh@kernel.org, Amit Tomer <amittomer25@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/04/2020 11:02, Amit Tomer wrote:

Hi,

> While booting mainline Kernel on Cubieboard7-lite(based on S700), see
> the following logs
> that suggests S700 pin controller is not probed well.
> 
> [    0.257415] pinctrl-s700 e01b0000.pinctrl: can't request region for
> resource [mem 0xe01b0000-0xe01b0fff]
> [    0.266902] pinctrl-s700: probe of e01b0000.pinctrl failed with error -16
> 
> Register range defined for pin controller seems to be huge and causing
> this failure.
> 
> reg = <0x0 0xe01b0000 0x0 0x1000>;

To summarise the discussion I had with Amit over IRC:

The "sps" power domain controller is overlapping with the pinctrl:
sps: power-controller@e01b0100 {
	compatible = "actions,s700-sps";
	reg = <0x0 0xe01b0100 0x0 0x100>;
	#power-domain-cells = <1>;
};
pinctrl: pinctrl@e01b0000 {
	compatible = "actions,s700-pinctrl";
	reg = <0x0 0xe01b0000 0x0 0x1000>;
	...

This is not the case on the S900, where most of the S700 support seemed
to be lifted from.

Looking at the datasheet there is also other IP sharing the MMIO region
with the GPIO/pinctrl:
GPIO/MFP Controller (include PWM, SPS, RMU, AVS)

Seems to be a pretty nasty hardware design, at least when it comes to
mapping this to the Linux:
- The PWM controller uses register offsets 0x50-0x60, and 0x78 - 0x80
- The SPS controller uses offsets 0x100 - 0x108
- The pinctrl uses 0x00 - 0x50, 0x60-0x78, 0x80-0x8c and 0x200 - 0x254

So at least the PWM sits in the middle of the pinctrl, in two chunks.

What is the typical solution for those kind of problems? One device
exporting a regmap? Or using a MFD?

Cheers,
Andre


> 
> Complete logs are below
> 
> Starting kernel ...
> 
> [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
> [    0.000000] Linux version 5.6.0-02330-g458ef2a-dirty
> (amit@amit-ThinkPad-X230) (gcc version 7.3.1 20180425
> [linaro-7.3-2018.05 revision d29120a424ecfbc167ef90065c0eeb7f91977701]
> (Linaro GCC 7.3-2018.05)) #12 SMP PREEMPT Fri Apr 3 14:19:08 IST 2020
> [    0.000000] Machine model: CubieBoard7
> [    0.000000] earlycon: owl0 at MMIO 0x00000000e0126000 (options '')
> [    0.000000] printk: bootconsole [owl0] enabled
> [    0.000000] efi: UEFI not found.
> [    0.000000] cma: Reserved 32 MiB at 0x000000003e000000
> [    0.000000] NUMA: No NUMA configuration found
> [    0.000000] NUMA: Faking a node at [mem
> 0x0000000000000000-0x000000003fffffff]
> [    0.000000] NUMA: NODE_DATA [mem 0x3ddfc100-0x3ddfdfff]
> [    0.000000] Zone ranges:
> [    0.000000]   DMA      [mem 0x0000000000000000-0x000000003fffffff]
> [    0.000000]   DMA32    empty
> [    0.000000]   Normal   empty
> [    0.000000] Movable zone start for each node
> [    0.000000] Early memory node ranges
> [    0.000000]   node   0: [mem 0x0000000000000000-0x000000001effffff]
> [    0.000000]   node   0: [mem 0x0000000020000000-0x000000003fffffff]
> [    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x000000003fffffff]
> [    0.000000] psci: probing for conduit method from DT.
> [    0.000000] psci: PSCIv0.2 detected in firmware.
> [    0.000000] psci: Using standard PSCI v0.2 function IDs
> [    0.000000] psci: Trusted OS migration not required
> [    0.000000] percpu: Embedded 23 pages/cpu s53272 r8192 d32744 u94208
> [    0.000000] Detected VIPT I-cache on CPU0
> [    0.000000] CPU features: detected: ARM erratum 845719
> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 253952
> [    0.000000] Policy zone: DMA
> [    0.000000] Kernel command line: console=ttyOWL,115200
> earlycon=owl,0xe0126000 root=/dev/mmcblk0p2
> [    0.000000] Dentry cache hash table entries: 131072 (order: 8,
> 1048576 bytes, linear)
> [    0.000000] Inode-cache hash table entries: 65536 (order: 7, 524288
> bytes, linear)
> [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
> [    0.000000] Memory: 951668K/1032192K available (12604K kernel code,
> 1948K rwdata, 6964K rodata, 5312K init, 462K bss, 47756K reserved,
> 32768K cma-reserved)
> [    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
> [    0.000000] rcu: Preemptible hierarchical RCU implementation.
> [    0.000000] rcu:     RCU event tracing is enabled.
> [    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=4.
> [    0.000000]     Tasks RCU enabled.
> [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay
> is 25 jiffies.
> [    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=4
> [    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
> [    0.000000] GIC: Using split EOI/Deactivate mode
> [    0.000000] random: get_random_bytes called from
> start_kernel+0x2a8/0x444 with crng_init=0
> [    0.000000] arch_timer: cp15 timer(s) running at 24.00MHz (phys).
> [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff
> max_cycles: 0x588fe9dc0, max_idle_ns: 440795202592 ns
> [    0.000000] sched_clock: 56 bits at 24MHz, resolution 41ns, wraps
> every 4398046511097ns
> [    0.008163] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps
> every 89478484971ns
> [    0.015969] clocksource: timer: mask: 0xffffffff max_cycles:
> 0xffffffff, max_idle_ns: 79635851949 ns
> [    0.025300] Console: colour dummy device 80x25
> [    0.029821] Calibrating delay loop (skipped), value calculated
> using timer frequency.. 48.00 BogoMIPS (lpj=96000)
> [    0.040069] pid_max: default: 32768 minimum: 301
> [    0.044785] LSM: Security Framework initializing
> [    0.049465] Mount-cache hash table entries: 2048 (order: 2, 16384
> bytes, linear)
> [    0.056857] Mountpoint-cache hash table entries: 2048 (order: 2,
> 16384 bytes, linear)
> [    0.066496] rcu: Hierarchical SRCU implementation.
> [    0.072035] EFI services will not be available.
> [    0.076832] smp: Bringing up secondary CPUs ...
> [    0.082027] Detected VIPT I-cache on CPU1
> [    0.082093] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
> [    0.082792] Detected VIPT I-cache on CPU2
> [    0.082834] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
> [    0.083500] Detected VIPT I-cache on CPU3
> [    0.083540] CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
> [    0.083627] smp: Brought up 1 node, 4 CPUs
> [    0.119242] SMP: Total of 4 processors activated.
> [    0.123938] CPU features: detected: 32-bit EL0 Support
> [    0.129087] CPU features: detected: CRC32 instructions
> [    0.143064] CPU: All CPU(s) started at EL2
> [    0.147207] alternatives: patching kernel code
> [    0.153187] devtmpfs: initialized
> [    0.158590] KASLR disabled due to lack of seed
> [    0.163472] clocksource: jiffies: mask: 0xffffffff max_cycles:
> 0xffffffff, max_idle_ns: 7645041785100000 ns
> [    0.173211] futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
> [    0.181589] pinctrl core: initialized pinctrl subsystem
> [    0.188064] thermal_sys: Registered thermal governor 'step_wise'
> [    0.188068] thermal_sys: Registered thermal governor 'power_allocator'
> [    0.194183] DMI not present or invalid.
> [    0.205285] NET: Registered protocol family 16
> [    0.211593] DMA: preallocated 256 KiB pool for atomic allocations
> [    0.217696] audit: initializing netlink subsys (disabled)
> [    0.223266] audit: type=2000 audit(0.144:1): state=initialized
> audit_enabled=0 res=1
> [    0.231024] cpuidle: using governor menu
> [    0.235203] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
> [    0.242077] ASID allocator initialised with 65536 entries
> [    0.248650] Serial: AMBA PL011 UART driver
> [    0.257415] pinctrl-s700 e01b0000.pinctrl: can't request region for
> resource [mem 0xe01b0000-0xe01b0fff]
> [    0.266902] pinctrl-s700: probe of e01b0000.pinctrl failed with error -16
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
