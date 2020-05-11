Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D51C1CDCFB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 16:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7KydwOySYm5nL0mvDMi7I9L7vDwGb0BlFrDDHnJbQ8=; b=hKceLIb9V8pMnm
	2GcZr0u2mvk6yph5sCA46GqqHtCq718UD/YY2Nxe0sxl5zIe32YfNUuzrbHXiHQ+rWaKu24T75doo
	pTbabN2iHzbEQCvhKy4T/odK870OVNV63LnS4e6SlQmRPV/P31Z6hkLEgr9qOELxdNeXV9bXVW+Vt
	DfgvrVceLVSZiP2T6p7KFNbJ7yNdIryDdrDqE34delXRpLIhGTGs/CF/bPepdV1XjLmBFh6yJU3mg
	vxLvThp1OOJ0sAVQbsWIwnyo4uPDF/tQMi+eowP9FHL4DFOLPPyd2h9ALZCi0e0hbJQYCztOqXBhc
	apgyMssM5CujPMn6dcig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY9JA-00057n-Ei; Mon, 11 May 2020 14:21:28 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY9Iz-00056e-QL
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 14:21:20 +0000
Received: by mail-pl1-x644.google.com with SMTP id t7so4007269plr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 07:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sV15Q/FPo0j4ZxFPtLoM2GMC6Onv5A/wnn8BczrjGEw=;
 b=cm043rBqCqvqd1opVpUgq2L/3lCpidT32n6/lo2Ym/0vxW9KCGjzvGx6Hyr9dwO/hR
 mTS76R6FLUFInxtm5S/X1lsVmZbqk7IdVYyVWVyq4mr/Gjft304pHoNO/ivKxsXrnDNU
 vmWFfSWGTcTWLglJMHm7jN4FSnla2brFxUrb3qTSdrZlScXM1fi9bRDdc14BREWLG1ag
 9dAR260UrdmQTYJCal8So5lxqZdldjDUG8XVt3rR2O2PxlagvVYCa71+o0SQeUZ/Zgp8
 cMZVKxUu2VlNjlYk82RsynEfEPf6AmCLY3ANcKcsf4KVbMvnFNDC0XZz+s0tuZNJG6qr
 eBNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sV15Q/FPo0j4ZxFPtLoM2GMC6Onv5A/wnn8BczrjGEw=;
 b=L44YM908dyeA4AdatsPgofy4pTe1CARmbXbNLbDsfPz8RLWec+R5mh28dKY/U4pXxA
 4xA8HkjexDBJ63R95/bHBlOC+35S79ERLdgLchc8tJCKhdp1ckaYjZd4QjlxElCk7Ipm
 PZbVfxo75SbZymRH5L/Rhpivuimiw07/d7n46ahecKctbrY3HVyDi3W7tg0O6zpH6+gY
 9yiEK9fkNc4zNaliASA05vlYIh7pC5ylqBYCw92fkvM3+hroYiUlW+3fhe8LmPFfdnhy
 CyfrhEu5YTfF4ABygtubjpz73lvX6E7RmLH/R/D6GASIQWb0acoocG9PnbqyUx2EW6VB
 66Jw==
X-Gm-Message-State: AGi0PuYQpoweOtQo72Y3wX9vJFjyP82Azly5z355YuJ7cztm11MB7KxX
 BSyIsPL6Ku5mhTxX+XyWqrY=
X-Google-Smtp-Source: APiQypK6M0sY19Gtjy7nS1sphRME3KWyAkkX+Ju1Bt8IOthxt3PBOdurOtvEddUJ/prhJmyU7Koa0A==
X-Received: by 2002:a17:90a:f98b:: with SMTP id
 cq11mr22426402pjb.193.1589206876520; 
 Mon, 11 May 2020 07:21:16 -0700 (PDT)
Received: from localhost ([183.82.184.32])
 by smtp.gmail.com with ESMTPSA id 4sm9592345pff.18.2020.05.11.07.21.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 11 May 2020 07:21:15 -0700 (PDT)
Date: Mon, 11 May 2020 19:51:13 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: ARM: static kernel in vmalloc space (was Re: [PATCH 0/3] Highmem
 support for 32-bit RISC-V)
Message-ID: <20200511142113.GA31707@afzalpc>
References: <CAK8P3a3LokurC0n9XiwtPQh9ZgQcswMKY4b+TEsQh1VgYDNeWA@mail.gmail.com>
 <20200408035118.GA1451@andestech.com>
 <CAK8P3a1JS3_2fWrhNTZx0eTWjJa-GTb4AscTPqydpSP5EB15Yw@mail.gmail.com>
 <20200414151748.GA5624@afzalpc>
 <CAK8P3a0JW9x-Wk9Ec3+zLjPHbWAvPQx8MF-xe-PnWUgEjRAuTg@mail.gmail.com>
 <20200415135407.GA6553@afzalpc> <20200503145017.GA5074@afzalpc>
 <CAK8P3a3OC5UO72rTDWi6+XgmExJmkATEjscq8hns8Bng06OpcQ@mail.gmail.com>
 <20200504091018.GA24897@afzalpc>
 <CAK8P3a25sZ9B+AE=EJyJZSU91CkBLLR6p2nixw_=UAbczg3RiQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a25sZ9B+AE=EJyJZSU91CkBLLR6p2nixw_=UAbczg3RiQ@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_072117_881754_586B401D 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
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
Cc: Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Kernel now boots to prompt w/ static kernel mapping moved to vmalloc
space.

Changes currently done have a couple of platform specific things, this
has to be modified to make it multiplatform friendly (also to be taken
care is ARM_PATCH_PHYS_VIRT case). Module address space has to be
taken care as well.

Logs follows

Regards
afzal

[    0.000000] Booting Linux on physical CPU 0x0
[    0.000000] Linux version 5.7.0-rc1-00043-ge8ffd99475b9c (afzal@afzalpc) (gcc version 8.2.0 (GCC_MA), GNU ld (GCC_MA) 2.31.1) #277 SMP Mon May 11 18:16:51 IST 2020
[    0.000000] CPU: ARMv7 Processor [412fc0f1] revision 1 (ARMv7), cr=10c5387d
[    0.000000] CPU: div instructions available: patching division code
[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, PIPT instruction cache
[    0.000000] OF: fdt: Machine model: V2P-CA15
[    0.000000] printk: bootconsole [earlycon0] enabled
[    0.000000] Memory policy: Data cache writealloc
[    0.000000] efi: UEFI not found.
[    0.000000] Reserved memory: created DMA memory pool at 0x18000000, size 8 MiB
[    0.000000] OF: reserved mem: initialized node vram@18000000, compatible id shared-dma-pool
[    0.000000] percpu: Embedded 20 pages/cpu s49164 r8192 d24564 u81920
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 522751
[    0.000000] Kernel command line: console=ttyAMA0,115200 rootwait root=/dev/mmcblk0 earlyprintk
[    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes, linear)
[    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 2057032K/2097148K available (12288K kernel code, 1785K rwdata, 5188K rodata, 2048K init, 403K bss, 40116K reserved, 0K cma-reserved, 1310716K highmem)
[    0.000000] Virtual kernel memory layout:
[    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
[    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
[    0.000000]     vmalloc : 0xf1000000 - 0xff800000   ( 232 MB)
[    0.000000]     lowmem  : 0xc0000000 - 0xf0000000   ( 768 MB)
[    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
[    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
[    0.000000]       .text : 0xf1208000 - 0xf1f00000   (13280 kB)
[    0.000000]       .init : 0xf2500000 - 0xf2700000   (2048 kB)
[    0.000000]       .data : 0xf2700000 - 0xf28be558   (1786 kB)
[    0.000000]        .bss : 0xf28be558 - 0xf29231a8   ( 404 kB)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] rcu: 	RCU event tracing is enabled.
[    0.000000] rcu: 	RCU restricting CPUs from NR_CPUS=16 to nr_cpu_ids=2.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 10 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=2
[    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
[    0.000000] random: get_random_bytes called from start_kernel+0x304/0x49c with crng_init=0
[    0.000311] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps every 89478484971ns
[    0.006788] clocksource: arm,sp804: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1911260446275 ns
[    0.008479] Failed to initialize '/bus@8000000/motherboard/iofpga@3,00000000/timer@120000': -22
[    0.013414] arch_timer: cp15 timer(s) running at 62.50MHz (virt).
[    0.013875] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x1cd42e208c, max_idle_ns: 881590405314 ns
[    0.014610] sched_clock: 56 bits at 62MHz, resolution 16ns, wraps every 4398046511096ns
[    0.015199] Switching to timer-based delay loop, resolution 16ns
[    0.020168] Console: colour dummy device 80x30
[    0.022219] Calibrating delay loop (skipped), value calculated using timer frequency.. 125.00 BogoMIPS (lpj=625000)
[    0.026998] pid_max: default: 32768 minimum: 301
[    0.028835] Mount-cache hash table entries: 2048 (order: 1, 8192 bytes, linear)
[    0.029319] Mountpoint-cache hash table entries: 2048 (order: 1, 8192 bytes, linear)
[    0.044484] CPU: Testing write buffer coherency: ok
[    0.045452] CPU0: Spectre v2: firmware did not set auxiliary control register IBE bit, system vulnerable
[    0.057536] /cpus/cpu@0 missing clock-frequency property
[    0.058065] /cpus/cpu@1 missing clock-frequency property
[    0.058538] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
[    0.066972] Setting up static identity map for 0x80300000 - 0x803000ac
[    0.074772] rcu: Hierarchical SRCU implementation.
[    0.083336] EFI services will not be available.
[    0.085605] smp: Bringing up secondary CPUs ...
[    0.090454] CPU1: thread -1, cpu 1, socket 0, mpidr 80000001
[    0.090560] CPU1: Spectre v2: firmware did not set auxiliary control register IBE bit, system vulnerable
[    0.096711] smp: Brought up 1 node, 2 CPUs
[    0.097132] SMP: Total of 2 processors activated (250.00 BogoMIPS).
[    0.097557] CPU: All CPU(s) started in SVC mode.
[    0.120848] devtmpfs: initialized
[    0.142952] VFP support v0.3: implementor 41 architecture 4 part 30 variant f rev 0
[    0.163536] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
[    0.165733] futex hash table entries: 512 (order: 3, 32768 bytes, linear)
[    0.171110] pinctrl core: initialized pinctrl subsystem
[    0.212940] thermal_sys: Registered thermal governor 'step_wise'
[    0.214839] DMI not present or invalid.
[    0.224963] NET: Registered protocol family 16
[    0.229817] DMA: preallocated 256 KiB pool for atomic coherent allocations
[    0.465443] cpuidle: using governor menu
[    0.467208] No ATAGs?
[    0.469397] hw-breakpoint: found 5 (+1 reserved) breakpoint and 4 watchpoint registers.
[    0.470084] hw-breakpoint: maximum watchpoint size is 8 bytes.
[    0.485193] Serial: AMBA PL011 UART driver
[    0.518698] 1c090000.uart: ttyAMA0 at MMIO 0x1c090000 (irq = 33, base_baud = 0) is a PL011 rev1
[    0.520790] printk: console [ttyAMA0] enabled
[    0.520790] printk: console [ttyAMA0] enabled
[    0.521639] printk: bootconsole [earlycon0] disabled
[    0.521639] printk: bootconsole [earlycon0] disabled
[    0.529010] 1c0a0000.uart: ttyAMA1 at MMIO 0x1c0a0000 (irq = 34, base_baud = 0) is a PL011 rev1
[    0.532819] 1c0b0000.uart: ttyAMA2 at MMIO 0x1c0b0000 (irq = 35, base_baud = 0) is a PL011 rev1
[    0.536532] 1c0c0000.uart: ttyAMA3 at MMIO 0x1c0c0000 (irq = 36, base_baud = 0) is a PL011 rev1
[    0.540655] OF: amba_device_add() failed (-19) for /bus@8000000/motherboard/iofpga@3,00000000/wdt@f0000
[    0.551052] OF: amba_device_add() failed (-19) for /memory-controller@2b0a0000
[    0.552311] OF: amba_device_add() failed (-19) for /memory-controller@7ffd0000
[    0.553945] OF: amba_device_add() failed (-19) for /dma@7ffb0000
[    0.662992] AT91: Could not find identification node
[    0.672222] iommu: Default domain type: Translated 
[    0.674784] vgaarb: loaded
[    0.679204] SCSI subsystem initialized
[    0.683940] usbcore: registered new interface driver usbfs
[    0.684662] usbcore: registered new interface driver hub
[    0.685326] usbcore: registered new device driver usb
[    0.689559] pps_core: LinuxPPS API ver. 1 registered
[    0.689914] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    0.690916] PTP clock support registered
[    0.691941] EDAC MC: Ver: 3.0.0
[    0.718934] clocksource: Switched to clocksource arch_sys_counter
[    1.933420] NET: Registered protocol family 2
[    1.940976] tcp_listen_portaddr_hash hash table entries: 512 (order: 0, 6144 bytes, linear)
[    1.941657] TCP established hash table entries: 8192 (order: 3, 32768 bytes, linear)
[    1.942394] TCP bind hash table entries: 8192 (order: 4, 65536 bytes, linear)
[    1.943048] TCP: Hash tables configured (established 8192 bind 8192)
[    1.945065] UDP hash table entries: 512 (order: 2, 16384 bytes, linear)
[    1.945726] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes, linear)
[    1.947919] NET: Registered protocol family 1
[    1.953266] RPC: Registered named UNIX socket transport module.
[    1.953707] RPC: Registered udp transport module.
[    1.954027] RPC: Registered tcp transport module.
[    1.954329] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    1.954838] PCI: CLS 0 bytes, default 64
[    1.963271] hw perfevents: no interrupt-affinity property for /pmu, guessing.
[    1.967592] hw perfevents: enabled with armv7_cortex_a15 PMU driver, 1 counters available
[    1.973260] Initialise system trusted keyrings
[    1.976327] workingset: timestamp_bits=30 max_order=19 bucket_order=0
[    2.004549] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    2.009700] NFS: Registering the id_resolver key type
[    2.010286] Key type id_resolver registered
[    2.010606] Key type id_legacy registered
[    2.011037] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    2.011896] ntfs: driver 2.1.32 [Flags: R/O].
[    2.014565] Key type asymmetric registered
[    2.014933] Asymmetric key parser 'x509' registered
[    2.015464] bounce: pool size: 64 pages
[    2.016042] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 248)
[    2.016684] io scheduler mq-deadline registered
[    2.017084] io scheduler kyber registered
[    2.750925] Serial: 8250/16550 driver, 5 ports, IRQ sharing enabled
[    2.768719] SuperH (H)SCI(F) driver initialized
[    2.772315] msm_serial: driver initialized
[    2.773272] STMicroelectronics ASC driver initialized
[    2.777155] STM32 USART driver initialized
[    2.844599] brd: module loaded
[    2.892007] loop: module loaded
[    2.910637] physmap-flash 8000000.flash: physmap platform flash device: [mem 0x08000000-0x0bffffff]
[    2.912893] 8000000.flash: Found 2 x16 devices at 0x0 in 32-bit bank. Manufacturer ID 0x000000 Chip ID 0x000000
[    2.913992] Intel/Sharp Extended Query Table at 0x0031
[    2.914976] Using buffer write method
[    2.918471] physmap-flash 8000000.flash: physmap platform flash device: [mem 0x0c000000-0x0fffffff]
[    2.919575] 8000000.flash: Found 2 x16 devices at 0x0 in 32-bit bank. Manufacturer ID 0x000000 Chip ID 0x000000
[    2.920202] Intel/Sharp Extended Query Table at 0x0031
[    2.920911] Using buffer write method
[    2.921294] Concatenating MTD devices:
[    2.921588] (0): "8000000.flash"
[    2.921811] (1): "8000000.flash"
[    2.922032] into device "8000000.flash"
[    2.937990] physmap-flash 14000000.psram: physmap platform flash device: [mem 0x14000000-0x15ffffff]
[    2.940888] physmap-flash 14000000.psram: map_probe failed
[    2.967104] libphy: Fixed MDIO Bus: probed
[    2.972770] CAN device driver interface
[    2.975546] bgmac_bcma: Broadcom 47xx GBit MAC driver loaded
[    2.979445] e1000e: Intel(R) PRO/1000 Network Driver - 3.2.6-k
[    2.979877] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    2.980464] igb: Intel(R) Gigabit Ethernet Network Driver - version 5.6.0-k
[    2.980903] igb: Copyright (c) 2007-2014 Intel Corporation.
[    3.060434] libphy: smsc911x-mdio: probed
[    3.063490] smsc911x 1a000000.ethernet eth0: MAC Address: 52:54:00:12:34:56
[    3.073487] pegasus: v0.9.3 (2013/04/25), Pegasus/Pegasus II USB Ethernet driver
[    3.074171] usbcore: registered new interface driver pegasus
[    3.074716] usbcore: registered new interface driver asix
[    3.075172] usbcore: registered new interface driver ax88179_178a
[    3.075782] usbcore: registered new interface driver cdc_ether
[    3.076321] usbcore: registered new interface driver smsc75xx
[    3.076838] usbcore: registered new interface driver smsc95xx
[    3.077343] usbcore: registered new interface driver net1080
[    3.077813] usbcore: registered new interface driver cdc_subset
[    3.078734] usbcore: registered new interface driver zaurus
[    3.079352] usbcore: registered new interface driver cdc_ncm
[    3.199902] isp1760 1b000000.usb: bus width: 32, oc: digital
[    3.201761] isp1760 1b000000.usb: NXP ISP1760 USB Host Controller
[    3.202801] isp1760 1b000000.usb: new USB bus registered, assigned bus number 1
[    3.205096] isp1760 1b000000.usb: Scratch test failed.
[    3.205605] isp1760 1b000000.usb: can't setup: -19
[    3.206685] isp1760 1b000000.usb: USB bus 1 deregistered
[    3.209178] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    3.209645] ehci-pci: EHCI PCI platform driver
[    3.210241] ehci-platform: EHCI generic platform driver
[    3.211257] ehci-orion: EHCI orion driver
[    3.212078] SPEAr-ehci: EHCI SPEAr driver
[    3.212843] ehci-st: EHCI STMicroelectronics driver
[    3.213655] ehci-exynos: EHCI Exynos driver
[    3.214447] ehci-atmel: EHCI Atmel driver
[    3.215263] tegra-ehci: Tegra EHCI driver
[    3.216089] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    3.216616] ohci-pci: OHCI PCI platform driver
[    3.217214] ohci-platform: OHCI generic platform driver
[    3.218371] SPEAr-ohci: OHCI SPEAr driver
[    3.219194] ohci-st: OHCI STMicroelectronics driver
[    3.220017] ohci-atmel: OHCI Atmel driver
[    3.222828] usbcore: registered new interface driver usb-storage
[    3.247467] rtc-pl031 1c170000.rtc: registered as rtc0
[    3.249524] rtc-pl031 1c170000.rtc: setting system clock to 2020-05-11T12:47:12 UTC (1589201232)
[    3.255627] i2c /dev entries driver
[    3.306738] mmci-pl18x 1c050000.mmci: Got CD GPIO
[    3.307311] mmci-pl18x 1c050000.mmci: Got WP GPIO
[    3.311750] mmci-pl18x 1c050000.mmci: mmc0: PL181 manf 41 rev0 at 0x1c050000 irq 29,30 (pio)
[    3.343018] sdhci: Secure Digital Host Controller Interface driver
[    3.343731] sdhci: Copyright(c) Pierre Ossman
[    3.354530] Synopsys Designware Multimedia Card Interface Driver
[    3.360247] sdhci-pltfm: SDHCI platform and OF driver helper
[    3.380790] input: AT Raw Set 2 keyboard as /devices/platform/bus@8000000/bus@8000000:motherboard/bus@8000000:motherboard:iofpga@3,00000000/1c060000.kmi/serio0/input/input0
[    3.387235] ledtrig-cpu: registered to indicate activity on CPUs
[    3.392136] usbcore: registered new interface driver usbhid
[    3.392544] usbhid: USB HID core driver
[    3.406774] drop_monitor: Initializing network drop monitor service
[    3.412034] NET: Registered protocol family 10
[    3.413410] mmc0: new SD card at address 4567
[    3.417368] mmcblk0: mmc0:4567 QEMU! 60.0 MiB 
[    3.422359] Segment Routing with IPv6
[    3.423208] sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
[    3.427555] NET: Registered protocol family 17
[    3.428389] can: controller area network core (rev 20170425 abi 9)
[    3.429451] NET: Registered protocol family 29
[    3.429872] can: raw protocol (rev 20170425)
[    3.430260] can: broadcast manager protocol (rev 20170425 t)
[    3.430729] can: netlink gateway (rev 20190810) max_hops=1
[    3.432999] Key type dns_resolver registered
[    3.433966] ThumbEE CPU extension supported.
[    3.434334] Registering SWP/SWPB emulation handler
[    3.436377] Loading compiled-in X.509 certificates
[    3.467861] uart-pl011 1c090000.uart: no DMA platform data
[    4.027279] input: ImExPS/2 Generic Explorer Mouse as /devices/platform/bus@8000000/bus@8000000:motherboard/bus@8000000:motherboard:iofpga@3,00000000/1c070000.kmi/serio1/input/input2
[    4.053481] EXT4-fs (mmcblk0): mounting ext2 file system using the ext4 subsystem
[    4.056802] random: fast init done
[    4.095798] EXT4-fs (mmcblk0): mounted filesystem without journal. Opts: (null)
[    4.098373] VFS: Mounted root (ext2 filesystem) readonly on device 179:0.
[    4.103806] devtmpfs: mounted
[    6.986226] Freeing unused kernel memory: 2048K
[    7.082498] Run /sbin/init as init process
[    7.141076] process '/bin/busybox' started with executable stack
[    7.887228] random: crng init done
[    8.519622] EXT4-fs (mmcblk0): warning: mounting unchecked fs, running e2fsck is recommended
[    8.523397] EXT4-fs (mmcblk0): re-mounted. Opts: (null)
[    8.524252] ext2 filesystem being remounted at / supports timestamps until 2038 (0x7fffffff)
Starting syslogd: OK
Starting klogd: OK
Running sysctl: OK
Initializing random number generator... done.
Starting network: [   10.177578] SMSC LAN911x Internal PHY 1a000000.ethernet-ffffffff:01: attached PHY driver [SMSC LAN911x Internal PHY] (mii_bus:phy_addr=1a000000.ethernet-ffffffff:01, irq=POLL)
[   10.208699] smsc911x 1a000000.ethernet eth0: SMSC911x/921x identified at 0xf2b30000, IRQ: 26
[   10.216383] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
udhcpc: started, v1.31.0
udhcpc: sending discover
udhcpc: sending select for 10.0.2.15
udhcpc: lease of 10.0.2.15 obtained, lease time 86400
deleting routers
adding dns 10.0.2.3
OK

Welcome to Buildroot

buildroot login: root
# uname -a
Linux buildroot 5.7.0-rc1-00043-ge8ffd99475b9c #277 SMP Mon May 11 18:16:51 IST 2020 armv7l GNU/Linux

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
