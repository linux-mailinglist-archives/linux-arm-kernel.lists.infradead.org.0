Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A18410CCD5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:29:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:MIME-Version:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=D2BQ/72zTpqHxZNVC/fzkD8GgJwo4ycaV3j7Xh8swWU=; b=gPXeK7853Clxi3YsL6K4R9fUz6
	iSirrVsbPml516K7Pb6ONAhujkgYa7ko77BPJdRYcMBFKsoBUC7MBeHAXvczcaz8rcszWrFS2Tv/a
	hSzzLEoSQRGsN6//TdmDI6MPtT89iHZVK7C61tNSLrqRNYhLaKwkNPGIIIWFnrWKMjYLSapLSsPiz
	FSOQ5aCBYstd95HsKoyehBY4sEeoKMhap2hJTtajp+n5EjZrJ3DH77TeR8N1bEuebQJZh0Rsm1kZT
	rhAEWZWvqfPNoGMOQfYff9VgVSqP2fzBG5sPuXAMUi4wgSoU95OwqZ/qjt03uAHPor6tkuf9V288b
	3KLXoZyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaMfJ-00042E-0i; Thu, 28 Nov 2019 16:29:13 +0000
Received: from doppler.thel33t.co.uk ([185.153.207.61])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMf8-00041c-K9
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:29:05 +0000
Received: from doppler.thel33t.co.uk (localhost [127.0.0.1])
 by doppler.thel33t.co.uk (Postfix) with ESMTP id E92922092E;
 Thu, 28 Nov 2019 16:28:40 +0000 (GMT)
MIME-Version: 1.0
Date: Thu, 28 Nov 2019 16:28:40 +0000
From: Leigh Brown <leigh@solinno.co.uk>
To: Linux-arm Kernel <linux-arm-kernel@lists.infradead.org>
Subject: Turris MOX Mainline Kernel
Message-ID: <8165fdeb5583069d893436e95cac5436@solinno.co.uk>
X-Sender: leigh@solinno.co.uk
User-Agent: Roundcube Webmail/1.3.8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_082902_950162_5F7DBE34 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Marek Behun <marek.behun@nic.cz>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

I have a Turris MOX Classic and would like to run Debian Linux on it (it 
will replace my aging Mirabox).  I have installed Debian using 
debootstrap and it is working well enough to boot using the original 
kernel. However, that kernel is not really suitable for Debian, and I 
would like to compile my own.

I noticed there were some updates in v5.4 for the MOX, so I tried to 
build my own kernel. I trimmed a lot of things out of the configuration 
in order to test it, with the aim of adding things back in once it was 
working.

The configuration is at 
https://www.solinno.co.uk/public/moxboot/config-5.4.0

However, it is hanging during boot, a log of which I've pasted below.  
Is there a known-working config or a set of patches that I can use to 
obtain a working kernel (as new as possible, preferably)?

Any help would be gratefully received.

Regards,

Leigh.


U-Boot 2018.11 (Dec 16 2018 - 12:50:19 +0000), Build: 
jenkins-turris-os-packages-kittens-mox-90

DRAM:  512 MiB
Enabling Armada 3720 wComphy-0: SGMII1        3.125 Gbps
Comphy-1: PEX0          5 Gbps
Comphy-2: USB3_HOST0    5 Gbps
MMC:   sdhci@d8000: 0
Loading Environment from SPI Flash... SF: Detected w25q64dw with page 
size 256 Bytes, erase size 4 KiB, total 8 MiB
OK
Model: CZ.NIC Turris Mox Board
Net:   eth0: neta@30000
Turris Mox:
   Board version: 22
   RAM size: 512 MiB
   Serial Number: 0000000D300047B1
   ECDSA Public Key: 
0200d47c6be637dd555e8f8811bc5595befd7a0c3cfaeb4d2e75ff4642dccf8ea9078e543f6f975387176c5358b7ded85988bb1507d69254415017ce9ead665ad4479b
   SD/eMMC version: SD
Module Topology:
    1: Mini-PCIe Module
    2: Topaz Switch Module (4-port)

Hit any key to stop autoboot:  0
=> load mmc 0 $fdt_addr_r 
/boot/armada-3720-turris-mox.dtb-5.4.0-74f166b6e62f940eed4dd449b16c3142
19952 bytes read in 20 ms (973.6 KiB/s)
=> load mmc 0 $kernel_addr_r 
/boot/vmlinuz-5.4.0-74f166b6e62f940eed4dd449b16c3142
8595464 bytes read in 376 ms (21.8 MiB/s)
=> load mmc 0 $ramdisk_addr_r 
/boot/initrd.img-5.4.0-74f166b6e62f940eed4dd449b16c3142
4573517 bytes read in 199 ms (21.9 MiB/s)
=> setenv bootargs console=ttyMV0,115200 earlycon=ar3700_uart,0xd0012000 
root=/dev/mmcblk1p1 rootwait
=> booti $kernel_addr_r $ramdisk_addr_r:45c94d $fdt_addr_r
## Flattened Device Tree blob at 04f00000
    Booting using the fdt blob at 0x4f00000
    Loading Ramdisk to 1bac2000, end 1bf1e94d ... OK
    Loading Device Tree to 000000001baba000, end 000000001bac1def ... OK

Starting kernel ...

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
[    0.000000] Linux version 5.4.0-74f166b6e62f940eed4dd449b16c3142 
(leigh@dish) (gcc version 8.3.0 (Debian 8.3.0-2)) #13 SMP Thu Nov 28 
15:22:22 GMT 2019
[    0.000000] Machine model: CZ.NIC Turris Mox Board
[    0.000000] earlycon: ar3700_uart0 at MMIO 0x00000000d0012000 
(options '')
[    0.000000] printk: bootconsole [ar3700_uart0] enabled
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.1 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: MIGRATE_INFO_TYPE not supported.
[    0.000000] psci: SMC Calling Convention v1.1
[    0.000000] percpu: Embedded 16 pages/cpu s26648 r8192 d30696 u65536
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] Speculative Store Bypass Disable mitigation not required
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 
128512
[    0.000000] Kernel command line: console=ttyMV0,115200 
earlycon=ar3700_uart,0xd0012000 root=/dev/mmcblk1p1 rootwait
[    0.000000] Dentry cache hash table entries: 65536 (order: 7, 524288 
bytes, linear)
[    0.000000] Inode-cache hash table entries: 32768 (order: 6, 262144 
bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 490684K/522240K available (6142K kernel code, 
394K rwdata, 1440K rodata, 384K init, 274K bss, 31556K reserved, 0K 
cma-reserved)
[    0.000000] random: get_random_u64 called from 
cache_random_seq_create+0x7c/0x150 with crng_init=0
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=2, 
Nodes=1
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] rcu: 	RCU restricting CPUs from NR_CPUS=4 to 
nr_cpu_ids=2.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay 
is 10 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, 
nr_cpu_ids=2
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
[    0.000000] GICv3: 192 SPIs implemented
[    0.000000] GICv3: 0 Extended SPIs implemented
[    0.000000] GICv3: Distributor has no Range Selector support
[    0.000000] GICv3: 16 PPIs implemented
[    0.000000] GICv3: no VLPI support, no direct LPI support
[    0.000000] GICv3: CPU0: found redistributor 0 region 
0:0x00000000d1d40000
[    0.000000] arch_timer: cp15 timer(s) running at 12.50MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff 
max_cycles: 0x2e2049cda, max_idle_ns: 440795202628 ns
[    0.000004] sched_clock: 56 bits at 12MHz, resolution 80ns, wraps 
every 4398046511080ns
[    0.008400] Console: colour dummy device 80x25
[    0.012911] Calibrating delay loop (skipped), value calculated using 
timer frequency.. 25.00 BogoMIPS (lpj=125000)
[    0.023557] pid_max: default: 32768 minimum: 301
[    0.028451] Mount-cache hash table entries: 1024 (order: 1, 8192 
bytes, linear)
[    0.035907] Mountpoint-cache hash table entries: 1024 (order: 1, 8192 
bytes, linear)
[    0.045139] ASID allocator initialised with 32768 entries
[    0.050728] rcu: Hierarchical SRCU implementation.
[    0.056022] smp: Bringing up secondary CPUs ...
[    0.061026] Detected VIPT I-cache on CPU1
[    0.061058] GICv3: CPU1: found redistributor 1 region 
0:0x00000000d1d60000
[    0.061092] CPU1: Booted secondary processor 0x0000000001 
[0x410fd034]
[    0.061182] smp: Brought up 1 node, 2 CPUs
[    0.083239] SMP: Total of 2 processors activated.
[    0.088072] CPU features: detected: 32-bit EL0 Support
[    0.093364] CPU features: detected: CRC32 instructions
[    0.098677] CPU: All CPU(s) started at EL2
[    0.102864] alternatives: patching kernel code
[    0.108102] devtmpfs: initialized
[    0.113815] clocksource: jiffies: mask: 0xffffffff max_cycles: 
0xffffffff, max_idle_ns: 19112604462750000 ns
[    0.123900] futex hash table entries: 512 (order: 3, 32768 bytes, 
linear)
[    0.131006] pinctrl core: initialized pinctrl subsystem
[    0.137451] NET: Registered protocol family 16
[    0.142279] DMA: preallocated 256 KiB pool for atomic allocations
[    0.149020] cpuidle: using governor ladder
[    0.168371] cryptd: max_cpu_qlen set to 1000
[    0.176344] SCSI subsystem initialized
[    0.180334] usbcore: registered new interface driver usbfs
[    0.186045] usbcore: registered new interface driver hub
[    0.191492] usbcore: registered new device driver usb
[    0.198639] clocksource: Switched to clocksource arch_sys_counter
[    0.214616] thermal_sys: Registered thermal governor 'step_wise'
[    0.214879] NET: Registered protocol family 2
[    0.226030] tcp_listen_portaddr_hash hash table entries: 256 (order: 
0, 4096 bytes, linear)
[    0.234583] TCP established hash table entries: 4096 (order: 3, 32768 
bytes, linear)
[    0.242568] TCP bind hash table entries: 4096 (order: 4, 65536 bytes, 
linear)
[    0.249948] TCP: Hash tables configured (established 4096 bind 4096)
[    0.256522] UDP hash table entries: 256 (order: 1, 8192 bytes, 
linear)
[    0.263181] UDP-Lite hash table entries: 256 (order: 1, 8192 bytes, 
linear)
[    0.270494] NET: Registered protocol family 1
[    0.274915] PCI: CLS 0 bytes, default 64
[    0.279095] Unpacking initramfs...
[    0.497206] Freeing initrd memory: 4464K
[    0.502312] workingset: timestamp_bits=46 max_order=17 bucket_order=0
[    0.513721] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.524495] advk-pcie d0070000.pcie: host bridge /soc/pcie@d0070000 
ranges:
[    0.531648] advk-pcie d0070000.pcie:   MEM 0xe8000000..0xe8ffffff -> 
0xe8000000
[    0.539161] advk-pcie d0070000.pcie:    IO 0xe9000000..0xe900ffff -> 
0xe9000000
[    1.538553] advk-pcie d0070000.pcie: link never came up
[    1.544015] advk-pcie d0070000.pcie: PCI host bridge to bus 0000:00
[    1.550404] pci_bus 0000:00: root bus resource [bus 00-ff]
[    1.556032] pci_bus 0000:00: root bus resource [mem 
0xe8000000-0xe8ffffff]
[    1.563117] pci_bus 0000:00: root bus resource [io  0x0000-0xffff] 
(bus address [0xe9000000-0xe900ffff])
[    1.572919] pci 0000:00:00.0: [1b4b:0100] type 01 class 0x060400
[    1.579082] pci 0000:00:00.0: reg 0x38: [mem 0x00000000-0x000007ff 
pref]
[    1.586988] pci 0000:00:00.0: bridge configuration invalid ([bus 
00-00]), reconfiguring
[    1.598544] advk-pcie d0070000.pcie: config read/write timed out
[    1.605462] pci_bus 0000:01: busn_res: [bus 01-ff] end is updated to 
01
[    1.612225] pci 0000:00:00.0: BAR 6: assigned [mem 
0xe8000000-0xe80007ff pref]
[    1.619636] pci 0000:00:00.0: PCI bridge to [bus 01]
[    1.626489] mv_xor d0060900.xor: Marvell shared XOR driver
[    1.709390] mv_xor d0060900.xor: Marvell XOR (Descriptor Mode): ( xor 
cpy intr )
[    1.779372] mv_xor d0060900.xor: Marvell XOR (Descriptor Mode): ( xor 
cpy intr )
[    1.787395] Serial: 8250/16550 driver, 16 ports, IRQ sharing enabled
[    1.795922] cacheinfo: Unable to detect cache hierarchy for CPU 0
[    1.803309] moxtet spi0.1: Found MOX A (CPU) module
[    1.808255] moxtet spi0.1: Found MOX B (Mini-PCIe) module
[    1.813825] moxtet spi0.1: Found MOX C (4 port switch) module
[    1.820808] libphy: Fixed MDIO Bus: probed
[    1.825463] orion-mdio d0032004.mdio: IRQ index 0 not found
[    1.831272] libphy: orion_mdio_bus: probed
[    1.845871] mvneta d0030000.ethernet eth0: Using hardware mac address 
d8:58:d7:00:c0:2a
[    1.854650] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) 
Driver
[    1.861318] ehci-pci: EHCI PCI platform driver
[    1.865917] ehci-platform: EHCI generic platform driver
[    1.871393] ehci-orion: EHCI orion driver
[    1.875624] orion-ehci d005e000.usb: EHCI Host Controller
[    1.881134] orion-ehci d005e000.usb: new USB bus registered, assigned 
bus number 1
[    1.889021] orion-ehci d005e000.usb: irq 15, io mem 0xd005e000
[    1.918595] orion-ehci d005e000.usb: USB 2.0 started, EHCI 1.00
[    1.925258] hub 1-0:1.0: USB hub found
[    1.929156] hub 1-0:1.0: 1 port detected
[    1.933409] uhci_hcd: USB Universal Host Controller Interface driver
[    1.940827] i2c /dev entries driver
[    1.945209] armada_37xx_wdt d0008300.watchdog: Initial timeout 120 
sec, nowayout
[    1.953436] sdhci: Secure Digital Host Controller Interface driver
[    1.959735] sdhci: Copyright(c) Pierre Ossman
[    1.964330] sdhci-pltfm: SDHCI platform and OF driver helper
[    1.970432] xenon-sdhci d00d0000.sdhci: allocated mmc-pwrseq
[    1.976392] xenon-sdhci d00d8000.sdhci: Got CD GPIO
[    1.982839] NET: Registered protocol family 10
[    1.988218] Segment Routing with IPv6
[    1.991996] NET: Registered protocol family 17
[    1.996544] bridge: filtering via arp/ip/ip6tables is no longer 
available by default. Update your scripts to load br_netfilter if you 
need this.
[    2.009846] 8021q: 802.1Q VLAN Support v1.8
[    2.014175] Key type dns_resolver registered
[    2.021049] d0012000.serial: ttyMV0 at MMIO 0xd0012000 (irq = 0, 
base_baud = 1562500) is a mvebu-uart
[    2.030515] printk: console [ttyMV0] enabled
[    2.030515] printk: console [ttyMV0] enabled
[    2.039262] printk: bootconsole [ar3700_uart0] disabled
[    2.039262] printk: bootconsole [ar3700_uart0] disabled
[    2.052998] rtc-ds1307 0-006f: registered as rtc0
[    2.055035] i2c i2c-0:  PXA I2C adapter
[    2.060950] mvneta d0040000.ethernet eth1: Using device tree mac 
address d8:58:d7:00:c0:2b
[   62.078548] rcu: INFO: rcu_sched detected stalls on CPUs/tasks:
[   62.081799] rcu: 	1-...0: (1 GPs behind) 
idle=97a/1/0x4000000000000000 softirq=207/208 fqs=3000
[   62.090842] 	(detected by 0, t=6002 jiffies, g=-1011, q=265)
[   62.096665] Task dump for CPU 1:
[   62.099980] kworker/1:1     R  running task        0    29      2 
0x0000000a
[   62.107253] Workqueue: events deferred_probe_work_func
[   62.112523] Call trace:
[   62.115037]  __switch_to+0xc4/0x108
[   62.118620]  vprintk_emit+0x1ec/0x290
[   62.122382]  dev_vprintk_emit+0x1d0/0x200
[   62.126503]  0xffffffff00567c80




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
