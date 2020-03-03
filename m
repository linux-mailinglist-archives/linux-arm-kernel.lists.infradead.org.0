Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 784B0177E22
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 18:50:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=umaXRhKtfW4273XPatf+YVDiwlB6zmjo+XeehPDpWA8=; b=uFTr8VD6LyQOP/EuA7rGOqL2W
	+erjysM0v2QdwETg0W8IKoLhM22IgiGyoJVjuqt3MxUcyPzH1dokAcgKyqb6IUtPkNpeD7zjR2yGe
	OkaB8GcevuvAF/uUIm3basQPfN0EHMm+AVMjFvAsyTShtuaHQjP2aahw8WVtRUQ1tNbLAx3NHq2Wh
	ym7Ds/nIJnOJgw+k8VFfublFGrHS4dIrNkic7fgV8dgijko5twTZ4Ak2h/QuWooSMromhpRKQhhbN
	60MYcE/+sQXMm3hWEQw9ezIy0T0ZsnFR8xSNKLbUBNKlU+7SEasge6t+TTXL2S7NXR7RvXmmDR/L/
	08RZjbu6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Bgg-0004oD-JZ; Tue, 03 Mar 2020 17:50:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9BgW-0004nS-GH
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 17:50:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D124A2F;
 Tue,  3 Mar 2020 09:50:23 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6C8BC3F534;
 Tue,  3 Mar 2020 09:50:22 -0800 (PST)
Subject: Re: sunxi: a83t: does not boot anymore in BigEndian
To: Corentin Labbe <clabbe.montjoie@gmail.com>
References: <20200303074326.GA9935@Red>
 <65498b8e-a6c3-9edb-873f-6c011582a2eb@arm.com> <20200303142104.GA8327@Red>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <598b6e3a-5dc1-16d6-fdfe-4a02ef5889b2@arm.com>
Date: Tue, 3 Mar 2020 17:50:20 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200303142104.GA8327@Red>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_095024_629480_AC26A497 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, maz@kernel.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, linux@armlinux.org.uk,
 wens@csie.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/03/2020 2:21 pm, Corentin Labbe wrote:
> On Tue, Mar 03, 2020 at 01:47:02PM +0000, Robin Murphy wrote:
>> On 03/03/2020 7:43 am, Corentin Labbe wrote:
>>> Hello
>>>
>>> My sun8i-a83t-bananapi-m3 does not boot anymore in BE.
>>> Others sunxi platform I have seems not affected (a10, a20, a64, h3, h5, h6)
>>>
>>> I have bisected this problem:
>>> git bisect start
>>> # bad: [98d54f81e36ba3bf92172791eba5ca5bd813989b] Linux 5.6-rc4
>>> git bisect bad 98d54f81e36ba3bf92172791eba5ca5bd813989b
>>> # bad: [d5226fa6dbae0569ee43ecfc08bdcd6770fc4755] Linux 5.5
>>> git bisect bad d5226fa6dbae0569ee43ecfc08bdcd6770fc4755
>>> # good: [219d54332a09e8d8741c1e1982f5eae56099de85] Linux 5.4
>>> git bisect good 219d54332a09e8d8741c1e1982f5eae56099de85
>>> # bad: [8c39f71ee2019e77ee14f88b1321b2348db51820] Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net
>>> git bisect bad 8c39f71ee2019e77ee14f88b1321b2348db51820
>>> # bad: [3b397c7ccafe0624018cb09fc96729f8f6165573] Merge tag 'regmap-v5.5' of git://git.kernel.org/pub/scm/linux/kernel/git/broonie/regmap
>>> git bisect bad 3b397c7ccafe0624018cb09fc96729f8f6165573
>>> # good: [924ea58dadea23cc28b60d02b9c0896b7b168a6f] Merge tag 'mt76-for-kvalo-2019-11-20' of https://github.com/nbd168/wireless
>>> git bisect good 924ea58dadea23cc28b60d02b9c0896b7b168a6f
>>> # good: [3f3c8be973af10875cfa1e7b85a535b6ba76b44f] Merge tag 'for-linus-5.5a-rc1-tag' of git://git.kernel.org/pub/scm/linux/kernel/git/xen/tip
>>> git bisect good 3f3c8be973af10875cfa1e7b85a535b6ba76b44f
>>> # bad: [642356cb5f4a8c82b5ca5ebac288c327d10df236] Merge git://git.kernel.org/pub/scm/linux/kernel/git/herbert/crypto-2.6
>>> git bisect bad 642356cb5f4a8c82b5ca5ebac288c327d10df236
>>> # good: [57d8154f15e89f53dfb412f4ed32ebe3c3d755a0] crypto: atmel-aes - Change data type for "lastc" buffer
>>> git bisect good 57d8154f15e89f53dfb412f4ed32ebe3c3d755a0
>>> # bad: [752272f16dd18f2cac58a583a8673c8e2fb93abb] Merge tag 'for-linus' of git://git.kernel.org/pub/scm/virt/kvm/kvm
>>> git bisect bad 752272f16dd18f2cac58a583a8673c8e2fb93abb
>>> # good: [9477f4449b0b011ce1d058c09ec450bfcdaab784] KVM: VMX: Add helper to check reserved bits in IA32_PERF_GLOBAL_CTRL
>>> git bisect good 9477f4449b0b011ce1d058c09ec450bfcdaab784
>>> # bad: [cd7056ae34af0e9424da97bbc7d2b38246ba8a2c] Merge remote-tracking branch 'kvmarm/misc-5.5' into kvmarm/next
>>> git bisect bad cd7056ae34af0e9424da97bbc7d2b38246ba8a2c
>>> # bad: [c7892db5dd6afe921ead502aff7440a1e450d947] KVM: arm64: Select TASK_DELAY_ACCT+TASKSTATS rather than SCHEDSTATS
>>> git bisect bad c7892db5dd6afe921ead502aff7440a1e450d947
>>> # bad: [8564d6372a7d8a6d440441b8ed8020f97f744450] KVM: arm64: Support stolen time reporting via shared structure
>>> git bisect bad 8564d6372a7d8a6d440441b8ed8020f97f744450
>>> # bad: [55009c6ed2d24fc0f5521ab2482f145d269389ea] KVM: arm/arm64: Factor out hypercall handling from PSCI code
>>> git bisect bad 55009c6ed2d24fc0f5521ab2482f145d269389ea
>>> # bad: [6a7458485b390f48e481fcd4a0b20e6c5c843d2e] KVM: arm64: Document PV-time interface
>>> git bisect bad 6a7458485b390f48e481fcd4a0b20e6c5c843d2e
>>> # bad: [dcac930e9901d765234bc15004db4f7d4416db71] Merge remote-tracking branch 'arm64/for-next/smccc-conduit-cleanup' into kvm-arm64/stolen-time
>>> git bisect bad dcac930e9901d765234bc15004db4f7d4416db71
>>> # first bad commit: [dcac930e9901d765234bc15004db4f7d4416db71] Merge remote-tracking branch 'arm64/for-next/smccc-conduit-cleanup' into kvm-arm64/stolen-time
>>>
>>> But bisect lead to a merge request.
>>
>> FWIW once you've bisected to a merge commit, you can always then try
>> bisecting down the merged branch itself (i.e. between 5.4-rc3 and
>> e6ea46511b1a in this case) to narrow things down further.
>>
>> Given that that branch is supposed to be a functionally-inert cleanup,
>> and (judging by the DTS) this platform apparently isn't using PSCI
>> anyway, it does seem a bit odd. Can you get any earlycon/earlyprintk
>> output to suggest what the actual cause of the boot failure is?
>>
> 
> Hello
> 
> With earlycon I got:
> 
> bootz 0x42000000 0x43300000 0x43000000
> ## Loading init Ramdisk from Legacy Image at 43300000 ...
>     Image Name:
>     Image Type:   ARM Linux RAMDisk Image (uncompressed)
>     Data Size:    32397255 Bytes = 30.9 MiB
>     Load Address: 00000000
>     Entry Point:  00000000
>     Verifying Checksum ... OK
> ## Flattened Device Tree blob at 43000000
>     Booting using the fdt blob at 0x43000000
>     Using Device Tree in place at 43000000, end 43008f07
> Starting kernel ...
> [    0.000000] Booting Linux on physical CPU 0x0
> [    0.000000] Linux version 5.6.0-rc4 (compile@Red) (gcc version 8.3.0 (Gentoo 8.3.0-r1 p1.1)) #21 SMP Tue Mar 3 15:07:20 CET 2020
> [    0.000000] CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7), cr=12c5387d
> [    0.000000] CPU: div instructions available: patching division code
> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
> [    0.000000] OF: fdt: Machine model: Banana Pi BPI-M3
> [    0.000000] earlycon: uart0 at MMIO32 0x01c28000 (options '')
> [    0.000000] printk: bootconsole [uart0] enabled
> [    0.000000] Memory policy: Data cache writealloc
> [    0.000000] cma: Reserved 16 MiB at 0xbf000000
> [    0.000000] percpu: Embedded 15 pages/cpu s31320 r8192 d21928 u61440
> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 522752
> [    0.000000] Kernel command line: console=ttyS0,115200n8 root=/dev/ram0 earlycon=uart,mmio32,0x01c28000 ip=dhcp
> [    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes, linear)
> [    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes, linear)
> [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
> [    0.000000] Memory: 2019352K/2097152K available (7168K kernel code, 485K rwdata, 2832K rodata, 1024K init, 248K bss, 61416K reserved, 16384K cma-reserved, 1294336K highmem)
> [    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=8, Nodes=1
> [    0.000000] rcu: Hierarchical RCU implementation.
> [    0.000000] rcu: 	RCU event tracing is enabled.
> [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 10 jiffies.
> [    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
> [    0.000000] random: get_random_bytes called from start_kernel+0x2a4/0x440 with crng_init=0
> [    0.000000] arch_timer: cp15 timer(s) running at 24.00MHz (virt).
> [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x588fe9dc0, max_idle_ns: 440795202592 ns
> [    0.000008] sched_clock: 56 bits at 24MHz, resolution 41ns, wraps every 4398046511097ns
> [    0.008636] Switching to timer-based delay loop, resolution 41ns
> [    0.015439] clocksource: timer: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 79635851949 ns
> [    0.025876] Console: colour dummy device 80x30
> [    0.030743] Calibrating delay loop (skipped), value calculated using timer frequency.. 48.00 BogoMIPS (lpj=240000)
> [    0.041927] pid_max: default: 32768 minimum: 301
> [    0.047093] Mount-cache hash table entries: 2048 (order: 1, 8192 bytes, linear)
> [    0.055003] Mountpoint-cache hash table entries: 2048 (order: 1, 8192 bytes, linear)
> [    0.064553] CPU: Testing write buffer coherency: ok
> [    0.070534] /cpus/cpu@0 missing clock-frequency property
> [    0.076282] /cpus/cpu@1 missing clock-frequency property
> [    0.082071] /cpus/cpu@2 missing clock-frequency property
> [    0.087816] /cpus/cpu@3 missing clock-frequency property
> [    0.093560] /cpus/cpu@100 missing clock-frequency property
> [    0.099498] /cpus/cpu@101 missing clock-frequency property
> [    0.105441] /cpus/cpu@102 missing clock-frequency property
> [    0.111363] /cpus/cpu@103 missing clock-frequency property
> [    0.117292] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
> [    0.124164] Setting up static identity map for 0x40100000 - 0x40100060
> [    0.131496] ARM CCI driver probed
> [    0.135832] sunxi multi cluster SMP support installed
> [    0.141784] rcu: Hierarchical SRCU implementation.
> [    0.147537] smp: Bringing up secondary CPUs ...
> 
> I will try to redo the bisect

Hmm, if there was a horribly subtle endianness/uninitialised data bug 
(or combination thereof) that led to somehow falling into the middle of 
the PSCI or spectre code and issuing a spurious SMC/HVC to non-existent 
firmware at secondary bringup, it might well look exactly like that...

If different values of CONFIG_PSCI and CONFIG_HARDEN_BRANCH_PREDICTOR 
make any difference to a failing build then that might lend weight to 
that theory. Assuming the initial bisection is reliable then 
6848253ddeae and/or a5520eac4d2d would seem like the most likely 
suspects for perturbing whatever subtlety is at play in this case.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
