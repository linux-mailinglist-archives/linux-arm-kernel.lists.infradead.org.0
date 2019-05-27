Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1B92AE54
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 07:57:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQFQLg+iSfSwlw2+LVJZgKL3G87th0jQMPLhdjdfhhk=; b=rO9zubu80qISZh
	J7a4exv1jwWRlSUNrIj6OMudIjdZt0aAvmepFUsIkQIC+7iqyv29KHIo+jqcmmHzbXOVeD+zjyBt+
	w8nN3wku07f7CYzEaxhkOLcXlFObd7UJgGBmVgHr6uDlzCCIE543RIxBdI5tfycoua1SfiKpeV4oX
	jQ7ivNxT23EUtZDt+H4KRJwInSxT4qcwHgPn81ZS4pP8wCa5xSL97Com9y266PiYO4p9aCm3zfJHj
	BWAgoSo1UFQafTKQ6fPhvBceb15V9PLMH0GGv6TxGbT4Bo0GgQPW41RM7NnEkS8dpuDXE7HH/tzr6
	IFBOPDSMbFMbIDFOVdEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV8dw-0003tu-Rh; Mon, 27 May 2019 05:57:56 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV8dq-0003tU-8v
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 05:57:51 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 3583E80D4;
 Mon, 27 May 2019 05:58:09 +0000 (UTC)
Date: Sun, 26 May 2019 22:57:46 -0700
From: Tony Lindgren <tony@atomide.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: omap2plus_defconfig broken on ARMv6
Message-ID: <20190527055746.GH5447@atomide.com>
References: <20190524220731.GB4597@t60.musicnaut.iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524220731.GB4597@t60.musicnaut.iki.fi>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_225750_353873_7B8FA094 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-omap@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

* Aaro Koskinen <aaro.koskinen@iki.fi> [190524 22:07]:
> Hi,
> 
> Noticed today that booting omap2plus_defconfig on N8x0 crashes
> early. Disabling CONFIG_SMP makes it work.

OK. It sure used to work when I last tested but that's been quite
a while now. Any ideas which commit caused the ldrexd regression?

Regards,

Tony

> Uncompressing Linux... done, booting the kernel.
> [    0.000000] Booting Linux on physical CPU 0x0
> [    0.000000] Linux version 5.2.0-rc1-n8x0-los_925980+-00233-g0a72ef899014 (aaro@amd-fx-6350) (gcc version 8.3.0 (GCC)) #2 SMP Fri May 24 23:55:08 EEST 2019
> [    0.000000] CPU: ARMv6-compatible processor [4107b362] revision 2 (ARMv6TEJ), cr=00c5387d
> [    0.000000] CPU: VIPT aliasing data cache, VIPT aliasing instruction cache
> [    0.000000] OF: fdt: Machine model: Nokia N810
> [    0.000000] printk: bootconsole [earlycon0] enabled
> [    0.000000] Memory policy: Data cache writeback
> [    0.000000] CPU: All CPU(s) started in SVC mode.
> [    0.000000] OMAP2420
> [    0.000000] percpu: Embedded 16 pages/cpu s33996 r8192 d23348 u65536
> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 32512
> [    0.000000] Kernel command line: console=ttyO2,115200 earlyprintk
> [    0.000000] Dentry cache hash table entries: 16384 (order: 4, 65536 bytes)
> [    0.000000] Inode-cache hash table entries: 8192 (order: 3, 32768 bytes)
> [    0.000000] Memory: 119992K/131072K available (4717K kernel code, 153K rwdata, 1488K rodata, 2080K init, 1128K bss, 11080K reserved, 0K cma-reserved, 0K highmem)
> [    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
> [    0.000000] rcu: Hierarchical RCU implementation.
> [    0.000000] rcu: 	RCU restricting CPUs from NR_CPUS=4 to nr_cpu_ids=1.
> [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 10 jiffies.
> [    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=1
> [    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
> [    0.000000] IRQ: Found an INTC at 0x(ptrval) (revision 2.0) with 96 interrupts
> [    0.000000] random: get_random_bytes called from start_kernel+0x250/0x424 with crng_init=0
> [    0.000000] Clocking rate (Crystal/DPLL/MPU): 19.2/658/329 MHz
> [    0.000000] OMAP clockevent source: timer1 at 32768 Hz
> [    0.000000] clocksource: 32k_counter: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 58327039986419 ns
> [    0.000030] sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps every 65535999984741ns
> [    0.008605] OMAP clocksource: 32k_counter at 32768 Hz
> [    0.014007] hw-breakpoint: CPUID feature registers not supported. Assuming v6 debug is present.
> [    0.023468] Console: colour dummy device 80x30
> [    0.028137] Calibrating delay loop... 326.86 BogoMIPS (lpj=1634304)
> [    0.088439] pid_max: default: 32768 minimum: 301
> [    0.093658] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
> [    0.100494] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)
> [    0.108276] Internal error: Oops - undefined instruction: 0 [#1] SMP ARM
> [    0.115203] Modules linked in:
> [    0.118377] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.2.0-rc1-n8x0-los_925980+-00233-g0a72ef899014 #2
> [    0.128021] Hardware name: Generic OMAP2420 (Flattened Device Tree)
> [    0.134521] PC is at lockref_get+0x2c/0xd0
> [    0.138732] LR is at 0x0
> [    0.141357] pc : [<c023701c>]    lr : [<00000000>]    psr: 60000053
> [    0.147796] sp : c0843ea0  ip : 00000001  fp : c0666a38
> [    0.153198] r10: 00000001  r9 : c0868700  r8 : c0669624
> [    0.158569] r7 : 00000000  r6 : c00de694  r5 : 00000002  r4 : 00010001
> [    0.165283] r3 : 00000001  r2 : 00010001  r1 : 00010001  r0 : c7402050
> [    0.172027] Flags: nZCv  IRQs on  FIQs off  Mode SVC_32  ISA ARM  Segment none
> [    0.179473] Control: 00c5387d  Table: 80004000  DAC: 00000051
> [    0.185394] Process swapper/0 (pid: 0, stack limit = 0x(ptrval))
> [    0.191558] Stack: (0xc0843ea0 to 0xc0844000)
> [    0.196075] 3ea0: c7402000 00000000 c00de694 00000000 c0669624 c0122f4c 00000000 c0843ee8
> [    0.204528] 3ec0: c04b9c20 c7825600 c00de890 00000000 00000004 c0154c00 c7825600 00000000
> [    0.212951] 3ee0: 00000000 c0121b88 c05a91bc 00000002 c7825600 00000000 00000000 c0669624
> [    0.221405] 3f00: c0868700 c0141e2c c7825600 c0141eb4 00000000 c0970728 c0842000 c0141f00
> [    0.229858] 3f20: 00000000 c064b73c c00de8a0 c014031c c0847388 00000000 00000000 c063b070
> [    0.238281] 3f40: c0847388 c064f8f8 00000004 c0847388 c0847390 00000000 00000000 00000001
> [    0.246734] 3f60: c0666a38 c024af58 00000000 9ac7f44c 00000000 c0847360 00000021 c0847080
> [    0.255187] 3f80: c0868700 c064f590 0000002c 00000024 00000000 00000000 c086874c c086874c
> [    0.263610] 3fa0: ffffffff c063ac94 ffffffff ffffffff 00000000 c063a584 00000000 c7ffcd80
> [    0.272064] 3fc0: 00000000 c0666a38 9ac2f64c 00000000 00000000 c063a330 00000051 00c0387d
> [    0.280487] 3fe0: ffffffff 82009000 4107b362 00c5387d 00000000 00000000 00000000 00000000
> [    0.288970] [<c023701c>] (lockref_get) from [<c0122f4c>] (mount_nodev+0x6c/0x94)
> [    0.296600] [<c0122f4c>] (mount_nodev) from [<c0154c00>] (legacy_get_tree+0x28/0x54)
> [    0.304595] [<c0154c00>] (legacy_get_tree) from [<c0121b88>] (vfs_get_tree+0x24/0xf8)
> [    0.312713] [<c0121b88>] (vfs_get_tree) from [<c0141e2c>] (fc_mount+0xc/0x30)
> [    0.320068] [<c0141e2c>] (fc_mount) from [<c0141eb4>] (vfs_kern_mount.part.3+0x64/0x80)
> [    0.328338] [<c0141eb4>] (vfs_kern_mount.part.3) from [<c0141f00>] (kern_mount+0x1c/0x34)
> [    0.336791] [<c0141f00>] (kern_mount) from [<c064b73c>] (shmem_init+0x64/0xb4)
> [    0.344268] [<c064b73c>] (shmem_init) from [<c063b070>] (init_rootfs+0x44/0x88)
> [    0.351837] [<c063b070>] (init_rootfs) from [<c064f8f8>] (mnt_init+0x104/0x268)
> [    0.359374] [<c064f8f8>] (mnt_init) from [<c064f590>] (vfs_caches_init+0x6c/0x88)
> [    0.367095] [<c064f590>] (vfs_caches_init) from [<c063ac94>] (start_kernel+0x368/0x424)
> [    0.375366] [<c063ac94>] (start_kernel) from [<00000000>] (0x0)
> [    0.381469] Code: e3a0e000 e1a04001 e28c5001 f5d0f000 (e1b06f9f) 
> [    0.387786] ---[ end trace 57f1c61709eb3312 ]---
> [    0.392547] Kernel panic - not syncing: Attempted to kill the idle task!
> [    0.399475] ---[ end Kernel panic - not syncing: Attempted to kill the idle task! ]---
> 
> It seems lockref_get+0x2c is __cmpxchg64:
> 
> c0236ff0 <lockref_get>:
> [...]
> 	__asm__ __volatile__(
> c023701c:	e1b06f9f 	ldrexd	r6, [r0]
> c0237020:	e1360002 	teq	r6, r2
> c0237024:	01370003 	teqeq	r7, r3
> c0237028:	1a000002 	bne	c0237038 <lockref_get+0x48>
> c023702c:	e1a01f94 	strexd	r1, r4, [r0]
> c0237030:	e3310000 	teq	r1, #0
> c0237034:	1afffff8 	bne	c023701c <lockref_get+0x2c>
> 
> and ldrexd is not supported on ARMv6.
> 
> A.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
