Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E8376C1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 16:54:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qa0FrCcBTSEXqrk7fkQsTaIumJk7mDoJS+qezMgATlM=; b=Rrt62d0y+jesLQ
	RMCXJsS5UjO3YeRMTqL9mkscsW0sad495oivNR4Bz57bCQVMy6ZG9JN1OLNzNY1P8aBtc+WVVe/8c
	kxKYgy66LrMmAA5SGD0DIeFHJu6cm1kvOYpUUZPT3IyXj+MKcuC56lSEjowNr70aa9BH4UCEhQaLN
	6QYlyHQLIi70b8pSKBqrC9ce+OIYBQbqmHC4BeySTwUu8pODdafWGB81L3slmkkWYkKK0Y6ynG6Wl
	zt6YJPu7kwWsPCa1h3FOuiFfY9pBVGtVH46K2vsrrL8zPFrY2U396hAtYjg83s7D43WXupOwevB1p
	W8hAVOROF5Wwn2oh9e+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr1c1-0000Gv-17; Fri, 26 Jul 2019 14:54:25 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr1bo-0000GH-MO
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 14:54:14 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 45wBrt6PVbzB2;
 Fri, 26 Jul 2019 16:52:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1564152767; bh=g4cOfgjR/WfJw6HerlFwPtrCtA2W6IRWK76Io5TBVAw=;
 h=Date:From:To:Cc:Subject:From;
 b=Y/Mg5M+88KL9olixgLp7Np2MYAsWtdr7VJfI++YVkCirlgQ8duxODk2aohCWhzvUF
 yQaSEKxmhnZhchWJN3QUBcFKTpkdDn070ZiWOQxG1SKpZwjtUgD3f3R0rTicYt3pQ4
 6SGoelwotZXrBkS/Rwy9CdaTUfFWhX7jfppzz7q0wKYUnws69cKwFQCRRTD3fXZ74e
 MaYby1Jt8SHx53KxJAWWS5i2TNLLvUsk9Z7tPGfSiheZ1iLZX6F4s3WTgKmZqD8inx
 r0ARgKCqeG77BPb4Cbhep1WTc3A3FtEZh66Lzs4ckfNVGPCw3E7JkmQdOix3Ocfd9c
 cBOZTZvoRwUHQ==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at mail
Date: Fri, 26 Jul 2019 16:54:06 +0200
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: linux-arm-kernel@lists.infradead.org
Subject: AT91: sama5d2: lockdep splat in sama5d2_pmc_of_clk_init_driver()
Message-ID: <20190726145406.GA16744@qmqm.qmqm.pl>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_075413_058659_53F156DC 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, Matthias Wieloch <matthias.wieloch@few-bauer.de>,
 Ludovic Desroches <ludovic.desroches@microchip.com>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Developers

Since upgrading to v5.2.2 from v5.1.x I keep getting lockdep complaints
(below) from clk initialization on SAMA5D2 board. Have you seen this?
Can you help me in finding a fix?

Best Regards,
Micha=B3 Miros=B3aw

------- dmesg START ------

[    0.000000] Booting Linux on physical CPU 0x0
[    0.000000] Linux version 5.2.3+ (mirq@qmqm) (gcc version 8.3.0 (Debian =
8.3.0-2)) #312 Fri Jul 26 15:32:06 CEST 2019
[    0.000000] CPU: ARMv7 Processor [410fc051] revision 1 (ARMv7), cr=3D10c=
53c7d
[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instr=
uction cache
[    0.000000] OF: fdt: Machine model: SAMA5D2 proto3
[    0.000000] printk: bootconsole [earlycon0] enabled
[    0.000000] Memory policy: Data cache writeback
[    0.000000] On node 0 totalpages: 65536
[    0.000000]   Normal zone: 512 pages used for memmap
[    0.000000]   Normal zone: 0 pages reserved
[    0.000000]   Normal zone: 65536 pages, LIFO batch:15
[    0.000000] CPU: All CPU(s) started in SVC mode.
[    0.000000] pcpu-alloc: s0 r0 d32768 u32768 alloc=3D1*32768
[    0.000000] pcpu-alloc: [0] 0 =

[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 65024
[    0.000000] Kernel command line: console=3DttyS0,115200 root=3D/dev/mmcb=
lk0p1 rootfstype=3Dsquashfs debug loglevel=3D9 earlyprintk
[    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072 byt=
es)
[    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)
[    0.000000] Memory: 239752K/262144K available (8192K kernel code, 578K r=
wdata, 2312K rodata, 1024K init, 7103K bss, 22392K reserved, 0K cma-reserve=
d)
[    0.000000] ftrace: allocating 25429 entries in 50 pages
[    0.000000] Running RCU self tests
[    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
[    0.000000] L2C-310 ID prefetch enabled, offset 2 lines
[    0.000000] L2C-310 dynamic clock gating enabled, standby mode enabled
[    0.000000] L2C-310 cache controller enabled, 8 ways, 128 kB
[    0.000000] L2C-310: CACHE_ID 0x410000c9, AUX_CTRL 0x36020000
[    0.000000] random: get_random_bytes called from start_kernel+0x2b8/0x45=
0 with crng_init=3D0

[    0.000000] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
[    0.000000] WARNING: possible circular locking dependency detected
[    0.000000] 5.2.3+ #312 Not tainted
[    0.000000] ------------------------------------------------------
[    0.000000] swapper/0 is trying to acquire lock:
[    0.000000] (ptrval) (pmc_pcr_lock){....}, at: clk_sam9x5_peripheral_ena=
ble+0x28/0xac
[    0.000000] =

               but task is already holding lock:
[    0.000000] (ptrval) (enable_lock){....}, at: clk_enable_lock+0x38/0xf4
[    0.000000] =

               which lock already depends on the new lock.

[    0.000000] =

               the existing dependency chain (in reverse order) is:
[    0.000000] =

               -> #2 (enable_lock){....}:
[    0.000000]        clk_enable_lock+0x38/0xf4
[    0.000000]        clk_core_enable_lock+0x14/0x34
[    0.000000]        regmap_mmio_read+0x54/0x6c
[    0.000000]        _regmap_read+0x68/0x160
[    0.000000]        regmap_read+0x44/0x64
[    0.000000]        at91_clk_register_sam9x5_main+0xb0/0x108
[    0.000000]        sama5d2_pmc_of_clk_init_driver+0x15c/0x654
[    0.000000]        of_clk_init+0x154/0x21c
[    0.000000]        time_init+0x30/0x38
[    0.000000]        start_kernel+0x2ec/0x450
[    0.000000]        0x0
[    0.000000] =

               -> #1 (syscon:113:(&syscon_config)->lock){....}:
[    0.000000]        regmap_lock_spinlock+0x14/0x1c
[    0.000000]        regmap_write+0x34/0x64
[    0.000000]        clk_sam9x5_peripheral_recalc_rate+0x60/0xf4
[    0.000000]        __clk_register+0x28c/0x7f4
[    0.000000]        clk_hw_register+0x20/0x2c
[    0.000000]        at91_clk_register_sam9x5_peripheral+0xec/0x14c
[    0.000000]        sama5d2_pmc_of_clk_init_driver+0x42c/0x654
[    0.000000]        of_clk_init+0x154/0x21c
[    0.000000]        time_init+0x30/0x38
[    0.000000]        start_kernel+0x2ec/0x450
[    0.000000]        0x0
[    0.000000] =

               -> #0 (pmc_pcr_lock){....}:
[    0.000000]        _raw_spin_lock_irqsave+0x44/0x58
[    0.000000]        clk_sam9x5_peripheral_enable+0x28/0xac
[    0.000000]        clk_core_enable+0x88/0x258
[    0.000000]        clk_core_enable_lock+0x20/0x34
[    0.000000]        clk_prepare_enable+0x1c/0x34
[    0.000000]        tcb_clksrc_init+0x13c/0x4b8
[    0.000000]        timer_probe+0x78/0xe0
[    0.000000]        start_kernel+0x2ec/0x450
[    0.000000]        0x0
[    0.000000] =

               other info that might help us debug this:

[    0.000000] Chain exists of:
                 pmc_pcr_lock --> syscon:113:(&syscon_config)->lock --> ena=
ble_lock

[    0.000000]  Possible unsafe locking scenario:

[    0.000000]        CPU0                    CPU1
[    0.000000]        ----                    ----
[    0.000000]   lock(enable_lock);
[    0.000000]                                lock(syscon:113:(&syscon_conf=
ig)->lock);
[    0.000000]                                lock(enable_lock);
[    0.000000]   lock(pmc_pcr_lock);
[    0.000000] =

                *** DEADLOCK ***

[    0.000000] 1 lock held by swapper/0:
[    0.000000]  #0: (ptrval) (enable_lock){....}, at: clk_enable_lock+0x38/=
0xf4
[    0.000000] =

               stack backtrace:
[    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.2.3+ #312
[    0.000000] Hardware name: Atmel SAMA5
[    0.000000] [<c010edc0>] (unwind_backtrace) from [<c010c1a8>] (show_stac=
k+0x18/0x1c)
[    0.000000] [<c010c1a8>] (show_stack) from [<c01515c4>] (print_circular_=
bug+0x220/0x25c)
[    0.000000] [<c01515c4>] (print_circular_bug) from [<c0154264>] (__lock_=
acquire+0x1600/0x1a80)
[    0.000000] [<c0154264>] (__lock_acquire) from [<c0154f08>] (lock_acquir=
e+0xc4/0x168)
[    0.000000] [<c0154f08>] (lock_acquire) from [<c08330a8>] (_raw_spin_loc=
k_irqsave+0x44/0x58)
[    0.000000] [<c08330a8>] (_raw_spin_lock_irqsave) from [<c042fabc>] (clk=
_sam9x5_peripheral_enable+0x28/0xac)
[    0.000000] [<c042fabc>] (clk_sam9x5_peripheral_enable) from [<c0424990>=
] (clk_core_enable+0x88/0x258)
[    0.000000] [<c0424990>] (clk_core_enable) from [<c0425c4c>] (clk_core_e=
nable_lock+0x20/0x34)
[    0.000000] [<c0425c4c>] (clk_core_enable_lock) from [<c058d788>] (clk_p=
repare_enable+0x1c/0x34)
[    0.000000] [<c058d788>] (clk_prepare_enable) from [<c0c358bc>] (tcb_clk=
src_init+0x13c/0x4b8)
[    0.000000] [<c0c358bc>] (tcb_clksrc_init) from [<c0c35718>] (timer_prob=
e+0x78/0xe0)
[    0.000000] [<c0c35718>] (timer_probe) from [<c0c00dc4>] (start_kernel+0=
x2ec/0x450)
[    0.000000] [<c0c00dc4>] (start_kernel) from [<00000000>] (0x0)
[    0.000000] clocksource: timer@f800c000: mask: 0xffffffff max_cycles: 0x=
ffffffff, max_idle_ns: 184217874325 ns
[    0.000021] sched_clock: 32 bits at 10MHz, resolution 96ns, wraps every =
206986376143ns
[    0.009762] Lock dependency validator: Copyright (c) 2006 Red Hat, Inc.,=
 Ingo Molnar
[    0.018365] ... MAX_LOCKDEP_SUBCLASSES:  8
[    0.022911] ... MAX_LOCK_DEPTH:          48
[    0.027546] ... MAX_LOCKDEP_KEYS:        8191
[    0.032367] ... CLASSHASH_SIZE:          4096
[    0.037190] ... MAX_LOCKDEP_ENTRIES:     32768
[    0.042109] ... MAX_LOCKDEP_CHAINS:      65536
[    0.047028] ... CHAINHASH_SIZE:          32768
[    0.051944]  memory used by lock dependency info: 4411 kB
[    0.057913]  per task-struct memory footprint: 1536 bytes
[    0.063965] Calibrating delay loop... 358.40 BogoMIPS (lpj=3D179200)
[    0.081133] pid_max: default: 32768 minimum: 301
[    0.086831] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.094201] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 by=
tes)
[    0.104331] CPU: Testing write buffer coherency: ok
[    0.112611] Setting up static identity map for 0x20100000 - 0x20100060
[    0.122704] devtmpfs: initialized
[    0.151047] VFP support v0.3: implementor 41 architecture 2 part 30 vari=
ant 5 rev 1
[    0.160466] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffffff=
f, max_idle_ns: 1911260446275000 ns
[    0.171341] futex hash table entries: 256 (order: 1, 11264 bytes)
[    0.178738] pinctrl core: initialized pinctrl subsystem
[    0.186405] regulator-dummy: no parameters, enabled
[    0.194206] NET: Registered protocol family 16
[    0.207208] DMA: preallocated 256 KiB pool for atomic coherent allocatio=
ns
[    0.292223] AT91: PM: standby: standby, suspend: ulp0
[    0.300092] atmel_tcb: probe of f800c000.timer failed with error -16
[    0.422319] random: fast init done
[    0.496218] at_xdmac f0010000.dma-controller: 16 channels, mapped at 0x(=
ptrval)
[    0.511573] at_xdmac f0004000.dma-controller: 16 channels, mapped at 0x(=
ptrval)
[    0.521731] AT91: Detected SoC family: sama5d2
[    0.526738] AT91: Detected SoC: sama5d27, revision 2
[...]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
