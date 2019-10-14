Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D72DD675B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 18:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vC0yvi3INp3EKnNfm87c+izNXvQR1l0v/c1g6GvNWb0=; b=J2iUc9ZPfWsFir
	qJ/57y2se21N+Bjkql3oBEFALLlBx9US0ypWEmxTu7TAHua7XfnykW70p0ISJtcF7EkUfl0SqujoX
	RXntrubZCuQzMxssdKtK3YNri9axeV4pLanBFgcWKC7NnG9CqHZJKhfIaB63tvsATH2rtPqMn9wqz
	3YMJEQWUhSeVOQ473x8Gt3zlPhp5GahxccZm7sRZPKe2zXcqm45+pN/G0KlsFBL3LidZIJg57l0qi
	n/L072fbTrGThqxEb+zibGzgBeLwI13RSURDRLa+cx7LviILEJJJLawONsbvGiiL3FYif/hTlgiiL
	LOwE9nCrZmZRDcllrTJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK3Gp-0000lL-Hy; Mon, 14 Oct 2019 16:32:31 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK3Gb-0000Pq-8s; Mon, 14 Oct 2019 16:32:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HLu3purYX0JB53V3v3/eufMBSqZLm81/yhIhQpRqDJA=; b=sjHlUL/wz1klEREvUiNpJbBpL
 xit9EmVwJ7vWJQCJW1WlVJozCJuYKFg1LnX3wYBLYEN1lQ+2UNLbEI4EnjzQpopHPiuRc10OcWFSe
 zr+qDksI8rlNAox05flWarrHhIbVZq0z9A3F8MGOsBlky7ShRevHYCD1WWhh5LxEIrdY3lPBIBhPU
 EPSTi/hOpsJzfVQRBwIcAfDyBJk4n+ICLJ6WI4w0SyYw1hq+cFL2kzhKkkcDI8Z3rocS17SFm/Alq
 1aAlHdo77f5cu8B+XZnk0gdqyX7NQj2wFTTJ7SwucEf8vCqSxmLOM+np4E1myUsusb0anTjAr9K6F
 U3WN4tcVA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:43722)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iK3ET-0007GI-TJ; Mon, 14 Oct 2019 17:30:06 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iK3ES-0004bZ-8r; Mon, 14 Oct 2019 17:30:04 +0100
Date: Mon, 14 Oct 2019 17:30:04 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Daniel Wagner <dwagner@suse.de>
Subject: Re: lan78xx and phy_state_machine
Message-ID: <20191014163004.GP25745@shell.armlinux.org.uk>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_093218_731952_CD9F4310 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 04:06:04PM +0200, Daniel Wagner wrote:
> Hi,
> 
> I've trying to boot a RPi 3 Model B+ in 64 bit mode. While I can get
> my configuratin booting with v5.2.20, the current kernel v5.3.6 hangs
> when initializing the eth interface.
> 
> Is this a know issue? Some configuration issues?

I don't see any successfully probed ethernet devices in the boot log, so
I've no idea which of the multitude of ethernet drivers to look at.  I
thought maybe I could look at the DT, but I've no idea where
"arm/bcm2837-rpi-3-b-plus.dts" is located, included by
arch/arm64/boot/dts/broadcom/bcm2837-rpi-3-b-plus.dts.

The oops is because the PHY state machine has been started, but there
is no phydev->adjust_link set.  Can't say much more than that without
knowing what the driver is doing.

> 
> Thanks,
> Daniel
> 
> 
> [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
> [    0.000000] Linux version 5.3.6 (wagi@beryllium) (gcc version 9.2.1 20190827 (Red Hat Cross 9.2.1-1) (GCC)) #16 SMP PREEMPT Mon Oct 14 14:36:09 CEST 2019
> [    0.000000] Machine model: Raspberry Pi 3 Model B+
> [    0.000000] efi: Getting EFI parameters from FDT:
> [    0.000000] efi: UEFI not found.
> [    0.000000] cma: Reserved 32 MiB at 0x0000000039400000
> [    0.000000] NUMA: No NUMA configuration found
> [    0.000000] NUMA: Faking a node at [mem 0x0000000000000000-0x000000003b3fffff]
> [    0.000000] NUMA: NODE_DATA [mem 0x3920d840-0x3920efff]
> [    0.000000] Zone ranges:
> [    0.000000]   DMA32    [mem 0x0000000000000000-0x000000003b3fffff]
> [    0.000000]   Normal   empty
> [    0.000000] Movable zone start for each node
> [    0.000000] Early memory node ranges
> [    0.000000]   node   0: [mem 0x0000000000000000-0x000000003b3fffff]
> [    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x000000003b3fffff]
> [    0.000000] percpu: Embedded 22 pages/cpu s52632 r8192 d29288 u90112
> [    0.000000] Detected VIPT I-cache on CPU0
> [    0.000000] CPU features: detected: ARM erratum 845719
> [    0.000000] CPU features: detected: ARM erratum 843419
> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 238896
> [    0.000000] Policy zone: DMA32
> [    0.000000] Kernel command line: console=ttyS1,115200 root=/dev/nfs rw nfsroot=192.168.19.2:/srv/nfs/rpi3,vers=3 ip=dhcp earlyprintk selinux=0 dtparam=eth_max_speed=100
> [    0.000000] Dentry cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
> [    0.000000] Inode-cache hash table entries: 65536 (order: 7, 524288 bytes, linear)
> [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
> [    0.000000] Memory: 890956K/970752K available (11388K kernel code, 1794K rwdata, 6032K rodata, 4992K init, 445K bss, 47028K reserved, 32768K cma-reserved)
> [    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
> [    0.000000] rcu: Preemptible hierarchical RCU implementation.
> [    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=4.
> [    0.000000]  Tasks RCU enabled.
> [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
> [    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=4
> [    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
> [    0.000000] random: get_random_bytes called from start_kernel+0x300/0x494 with crng_init=0
> [    0.000000] arch_timer: cp15 timer(s) running at 19.20MHz (phys).
> [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x46d987e47, max_idle_ns: 440795202767 ns
> [    0.000006] sched_clock: 56 bits at 19MHz, resolution 52ns, wraps every 4398046511078ns
> [    0.000212] Console: colour dummy device 80x25
> [    0.000318] Calibrating delay loop (skipped), value calculated using timer frequency.. 38.40 BogoMIPS (lpj=76800)
> [    0.000334] pid_max: default: 32768 minimum: 301
> [    0.000452] LSM: Security Framework initializing
> [    0.000556] Mount-cache hash table entries: 2048 (order: 2, 16384 bytes, linear)
> [    0.000584] Mountpoint-cache hash table entries: 2048 (order: 2, 16384 bytes, linear)
> [    0.024054] ASID allocator initialised with 32768 entries
> [    0.032047] rcu: Hierarchical SRCU implementation.
> [    0.041750] EFI services will not be available.
> [    0.048094] smp: Bringing up secondary CPUs ...
> [    0.080241] Detected VIPT I-cache on CPU1
> [    0.080304] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
> [    0.112316] Detected VIPT I-cache on CPU2
> [    0.112358] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
> [    0.144406] Detected VIPT I-cache on CPU3
> [    0.144445] CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
> [    0.144577] smp: Brought up 1 node, 4 CPUs
> [    0.144604] SMP: Total of 4 processors activated.
> [    0.144615] CPU features: detected: 32-bit EL0 Support
> [    0.144625] CPU features: detected: CRC32 instructions
> [    0.145440] CPU: All CPU(s) started at EL2
> [    0.145470] alternatives: patching kernel code
> [    0.147393] devtmpfs: initialized
> [    0.154060] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
> [    0.154087] futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
> [    0.156059] pinctrl core: initialized pinctrl subsystem
> [    0.157658] DMI not present or invalid.
> [    0.158213] NET: Registered protocol family 16
> [    0.160618] audit: initializing netlink subsys (disabled)
> [    0.160874] audit: type=2000 audit(0.160:1): state=initialized audit_enabled=0 res=1
> [    0.162316] cpuidle: using governor menu
> [    0.162898] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
> [    0.165744] DMA: preallocated 256 KiB pool for atomic allocations
> [    0.167385] Serial: AMBA PL011 UART driver
> [    0.193511] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
> [    0.193529] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
> [    0.193539] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
> [    0.193549] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
> [    0.196549] cryptd: max_cpu_qlen set to 1000
> [    0.202153] ACPI: Interpreter disabled.
> [    0.204040] vgaarb: loaded
> [    0.204527] SCSI subsystem initialized
> [    0.205116] usbcore: registered new interface driver usbfs
> [    0.205179] usbcore: registered new interface driver hub
> [    0.205270] usbcore: registered new device driver usb
> [    0.205516] usb_phy_generic phy: phy supply vcc not found, using dummy regulator
> [    0.206466] pps_core: LinuxPPS API ver. 1 registered
> [    0.206475] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
> [    0.206500] PTP clock support registered
> [    0.206673] EDAC MC: Ver: 3.0.0
> [    0.208080] FPGA manager framework
> [    0.208204] Advanced Linux Sound Architecture Driver Initialized.
> [    0.209336] clocksource: Switched to clocksource arch_sys_counter
> [    0.209560] VFS: Disk quotas dquot_6.6.0
> [    0.209638] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
> [    0.209909] pnp: PnP ACPI: disabled
> [    0.218443] thermal_sys: Registered thermal governor 'step_wise'
> [    0.218448] thermal_sys: Registered thermal governor 'power_allocator'
> [    0.218861] NET: Registered protocol family 2
> [    0.219414] tcp_listen_portaddr_hash hash table entries: 512 (order: 1, 8192 bytes, linear)
> [    0.219454] TCP established hash table entries: 8192 (order: 4, 65536 bytes, linear)
> [    0.219571] TCP bind hash table entries: 8192 (order: 5, 131072 bytes, linear)
> [    0.219766] TCP: Hash tables configured (established 8192 bind 8192)
> [    0.219973] UDP hash table entries: 512 (order: 2, 16384 bytes, linear)
> [    0.220022] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes, linear)
> [    0.220223] NET: Registered protocol family 1
> [    0.220840] RPC: Registered named UNIX socket transport module.
> [    0.220850] RPC: Registered udp transport module.
> [    0.220857] RPC: Registered tcp transport module.
> [    0.220864] RPC: Registered tcp NFSv4.1 backchannel transport module.
> [    0.220879] PCI: CLS 0 bytes, default 64
> [    0.222244] hw perfevents: enabled with armv8_cortex_a53 PMU driver, 7 counters available
> [    0.222365] kvm [1]: IPA Size Limit: 40bits
> [    0.223574] kvm [1]: Hyp mode initialized successfully
> [    0.227279] Initialise system trusted keyrings
> [    0.227452] workingset: timestamp_bits=44 max_order=18 bucket_order=0
> [    0.238041] squashfs: version 4.0 (2009/01/31) Phillip Lougher
> [    0.239123] NFS: Registering the id_resolver key type
> [    0.239183] Key type id_resolver registered
> [    0.239192] Key type id_legacy registered
> [    0.239210] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
> [    0.239436] 9p: Installing v9fs 9p2000 file system support
> [    0.265575] Key type asymmetric registered
> [    0.265588] Asymmetric key parser 'x509' registered
> [    0.265642] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 245)
> [    0.265653] io scheduler mq-deadline registered
> [    0.265661] io scheduler kyber registered
> [    0.280081] EINJ: ACPI disabled.
> [    0.297540] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
> [    0.299929] printk: console [ttyS1] disabled
> [    0.300015] 3f215040.serial: ttyS1 at MMIO 0x0 (irq = 61, base_baud = 31250000) is a 16550
> [    1.052375] printk: console [ttyS1] enabled
> [    1.058256] SuperH (H)SCI(F) driver initialized
> [    1.063646] msm_serial: driver initialized
> [    1.069282] cacheinfo: Unable to detect cache hierarchy for CPU 0
> [    1.086263] loop: module loaded
> [    1.090803] bcm2835-power bcm2835-power: Broadcom BCM2835 power domains driver
> [    1.104040] libphy: Fixed MDIO Bus: probed
> [    1.108676] tun: Universal TUN/TAP device driver, 1.6
> [    1.114924] thunder_xcv, ver 1.0
> [    1.118267] thunder_bgx, ver 1.0
> [    1.121600] nicpf, ver 1.0
> [    1.125190] hclge is initializing
> [    1.128566] hns3: Hisilicon Ethernet Network Driver for Hip08 Family - version
> [    1.135903] hns3: Copyright (c) 2017 Huawei Corporation.
> [    1.141392] e1000e: Intel(R) PRO/1000 Network Driver - 3.2.6-k
> [    1.147319] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> [    1.153389] igb: Intel(R) Gigabit Ethernet Network Driver - version 5.6.0-k
> [    1.160462] igb: Copyright (c) 2007-2014 Intel Corporation.
> [    1.166174] igbvf: Intel(R) Gigabit Virtual Function Network Driver - version 2.4.0-k
> [    1.174129] igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
> [    1.180598] sky2: driver version 1.30
> [    1.185129] usbcore: registered new interface driver lan78xx
> [    1.191096] VFIO - User Level meta-driver version: 0.3
> [    1.198581] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
> [    1.205222] ehci-pci: EHCI PCI platform driver
> [    1.209783] ehci-platform: EHCI generic platform driver
> [    1.215260] ehci-orion: EHCI orion driver
> [    1.219471] ehci-exynos: EHCI EXYNOS driver
> [    1.223839] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
> [    1.230142] ohci-pci: OHCI PCI platform driver
> [    1.234715] ohci-platform: OHCI generic platform driver
> [    1.240181] ohci-exynos: OHCI EXYNOS driver
> [    1.245102] usbcore: registered new interface driver usb-storage
> [    1.254986] i2c /dev entries driver
> [    1.264418] bcm2835-wdt bcm2835-wdt: Broadcom BCM2835 watchdog timer
> [    1.272210] sdhci: Secure Digital Host Controller Interface driver
> [    1.278494] sdhci: Copyright(c) Pierre Ossman
> [    1.283487] Synopsys Designware Multimedia Card Interface Driver
> [    1.291142] sdhost-bcm2835 3f202000.mmc: unable to initialise DMA channel. Falling back to PIO
> [    1.378755] sdhost-bcm2835 3f202000.mmc: loaded - DMA disabled
> [    1.384841] sdhci-pltfm: SDHCI platform and OF driver helper
> [    1.393472] ledtrig-cpu: registered to indicate activity on CPUs
> [    1.401408] usbcore: registered new interface driver usbhid
> [    1.407077] usbhid: USB HID core driver
> [    1.411537] bcm2835-mbox 3f00b880.mailbox: mailbox enabled
> [    1.421774] NET: Registered protocol family 17
> [    1.426552] 9pnet: Installing 9P2000 support
> [    1.430965] Key type dns_resolver registered
> [    1.436278] registered taskstats version 1
> [    1.440503] Loading compiled-in X.509 certificates
> [    1.455164] 3f201000.serial: ttyAMA0 at MMIO 0x3f201000 (irq = 66, base_baud = 0) is a PL011 rev2
> [    1.464574] serial serial0: tty port ttyAMA0 registered
> [    1.483031] raspberrypi-firmware soc:firmware: Attached to firmware from 2019-02-12 19:42
> [    1.499081] mmc0: host does not support reading read-only switch, assuming write-enable
> [    1.507385] dwc2 3f980000.usb: 3f980000.usb supply vusb_d not found, using dummy regulator
> [    1.515926] dwc2 3f980000.usb: 3f980000.usb supply vusb_a not found, using dummy regulator
> [    1.524433] mmc0: new high speed SDHC card at address 0001
> [    1.531599] mmcblk0: mmc0:0001 00000 29.8 GiB 
> [    1.537645]  mmcblk0: p1 p2
> [    1.587119] dwc2 3f980000.usb: DWC OTG Controller
> [    1.591942] dwc2 3f980000.usb: new USB bus registered, assigned bus number 1
> [    1.599148] dwc2 3f980000.usb: irq 41, io mem 0x3f980000
> [    1.605312] hub 1-0:1.0: USB hub found
> [    1.609175] hub 1-0:1.0: 1 port detected
> [    1.618259] sdhci-iproc 3f300000.sdhci: allocated mmc-pwrseq
> [    1.656043] mmc1: SDHCI controller on 3f300000.sdhci [3f300000.sdhci] using PIO
> [    1.668752] hctosys: unable to open rtc device (rtc0)
> [    1.687551] mmc1: queuing unknown CIS tuple 0x80 (2 bytes)
> [    1.694825] mmc1: queuing unknown CIS tuple 0x80 (3 bytes)
> [    1.702087] mmc1: queuing unknown CIS tuple 0x80 (3 bytes)
> [    1.710674] mmc1: queuing unknown CIS tuple 0x80 (7 bytes)
> [    1.772568] random: fast init done
> [    1.782306] mmc1: new high speed SDIO card at address 0001
> [    2.005367] usb 1-1: new high-speed USB device number 2 using dwc2
> [    2.218143] hub 1-1:1.0: USB hub found
> [    2.222028] hub 1-1:1.0: 4 ports detected
> [    2.513361] usb 1-1.1: new high-speed USB device number 3 using dwc2
> [    2.618275] hub 1-1.1:1.0: USB hub found
> [    2.622394] hub 1-1.1:1.0: 3 ports detected
> [    3.281367] usb 1-1.1.1: new high-speed USB device number 4 using dwc2
> [    3.652279] lan78xx 1-1.1.1:1.0 (unnamed net_device) (uninitialized): No External EEPROM. Setting MAC Speed
> [    3.663653] libphy: lan78xx-mdiobus: probed
> [    3.746032] Unable to handle kernel NULL pointer dereference at virtual address 0000000000000000
> [    3.754976] Mem abort info:
> [    3.757818]   ESR = 0x86000004
> [    3.760913]   Exception class = IABT (current EL), IL = 32 bits
> [    3.766926]   SET = 0, FnV = 0
> [    3.770031]   EA = 0, S1PTW = 0
> [    3.773213] [0000000000000000] user address but active_mm is swapper
> [    3.779670] Internal error: Oops: 86000004 [#1] PREEMPT SMP
> [    3.785319] Modules linked in:
> [    3.788421] CPU: 2 PID: 122 Comm: kworker/u8:2 Not tainted 5.3.6 #16
> [    3.794863] Hardware name: Raspberry Pi 3 Model B+ (DT)
> [    3.800174] Workqueue: events_power_efficient phy_state_machine
> [    3.806181] pstate: 00000005 (nzcv daif -PAN -UAO)
> [    3.811039] pc : 0x0
> [    3.813257] lr : phy_link_change+0x54/0x60
> [    3.817408] sp : ffff000011be3d00
> [    3.820765] x29: ffff000011be3d00 x28: ffff000011677000 
> [    3.826154] x27: ffff0000119ebcd8 x26: ffff80003700ee38 
> [    3.831542] x25: 0000000000000000 x24: ffff800036ec93d8 
> [    3.836931] x23: ffff800036ec9000 x22: 0000000000000003 
> [    3.842318] x21: ffff800036ec9428 x20: ffff800037834000 
> [    3.847707] x19: ffff800036ec9000 x18: 0000000000000001 
> [    3.853094] x17: 0000000000000000 x16: ffff800037115280 
> [    3.858483] x15: ffffffffffffffff x14: ffffff0000000000 
> [    3.863872] x13: 001e5a16738ba03e x12: 0000000000000001 
> [    3.869259] x11: 0000000000000000 x10: 0000000000000990 
> [    3.874647] x9 : ffff000011be3920 x8 : ffff800037115c70 
> [    3.880035] x7 : ffff800037fda340 x6 : ffff8000372125a0 
> [    3.885422] x5 : ffff000011be3af0 x4 : 0000000000000000 
> [    3.890810] x3 : ffff0000107610e0 x2 : ffff800037834000 
> [    3.896198] x1 : 0000000000000000 x0 : ffff800037834000 
> [    3.901586] Call trace:
> [    3.904064]  0x0
> [    3.905926]  phy_check_link_status+0xa0/0xd8
> [    3.910257]  phy_start_aneg+0x78/0xc0
> [    3.913970]  phy_state_machine+0x158/0x170
> [    3.918125]  process_one_work+0x198/0x2e8
> [    3.922189]  worker_thread+0x48/0x400
> [    3.925904]  kthread+0xf8/0x128
> [    3.929089]  ret_from_fork+0x10/0x18
> [    3.932717] Code: bad PC value
> [    3.935813] ---[ end trace 165a0066483ae974 ]---
> [    3.971518] random: crng init done
> [   23.725351] Waiting up to 100 more seconds for network.
> [   43.733350] Waiting up to 80 more seconds for network.
> [   63.741349] Waiting up to 60 more seconds for network.
> [   83.749350] Waiting up to 40 more seconds for network.
> [  103.757350] Waiting up to 20 more seconds for network.
> [  123.737353] Sending DHCP requests ...... timed out!
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
