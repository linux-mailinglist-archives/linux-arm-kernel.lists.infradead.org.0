Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2391D21D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 00:15:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mktFLNMEPau3du19A6U3XvHMcOI7TdYcfja3pzmVajk=; b=EpVpvvhcAB4xE6
	wx0fRzgGVYWTD7uVo6muULLgsoLPZp8b1v+s3JYBiqEn/r+IffcPxcJ9EwnT9WHfb5z1Gz3LVWXN3
	Pk6gkmz41aSraDtiyQz+d7csapwF+iYbFDulml7YxoNFDwi9dbouRINgvQ86dm9kTpaHhF9SjryKX
	dc2ZrhF5TOt/+LzrHDzxhRfr0DKQNmErnNECUK+drzgmJlIhS6bP37p7NxexFFvpfn3Z8vXkWZmtt
	vkhiu0qHwt3nVfo1wzVDLnyXfrTOFIEj2GpZEJkrJ73NMPqEL5MgASe9ExKTid0IN/WhGEkcV6Ytb
	DOtPaK08PIthFykAiGYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYzfG-0001Wh-Oz; Wed, 13 May 2020 22:15:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYzf6-0001W3-Hm
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 22:15:39 +0000
Received: by mail-wr1-x442.google.com with SMTP id s8so1373273wrt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 15:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=7Iv6PYxu5cfSjm4m8dePYu9tH/0KBaKmL1vQnjhkWHE=;
 b=Q59q49bMRsRfvYtTPpeENTH1WAs8ihB/IaScCduP/vRD2ukkMuU3wMJnmcpvBY4HbN
 1BuXeq6/AIvRGkjAR014cP1Q972w6zb1JYROshsqFI7tPfv4n/bPftOhIt30yc6Fab5T
 g8C6Bx7te2p+mNT6ENcft5O5EjXpsoZsYMYq9+2Jp29JiPJW2wrwWiDUWPu6I3zcCH8P
 J3m0DJseQvQqepMcNXAR2yIFZdvp+EjUnC+zhkTjcysVIfEscL0M/m1A04DOvBi1UISX
 1PdBAicNAfLxPLNmL2UKd4Hbo6FwqAayL8d/BH8tiDsc1L/NNVsrgOes4+wofsRBgM8u
 c9xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=7Iv6PYxu5cfSjm4m8dePYu9tH/0KBaKmL1vQnjhkWHE=;
 b=IT/ZVTkU9SoRxH+8/t6P9CkLbX0JcjfuUrWUvKQFzMKwCg2fOlgnXCH21zanCG28hT
 7SBdmQNImz1a4Lx33EDQyLWRayqefceLiSvEdNLq/P6jNzT0YwYIMP29Jnoiaf4+RgKd
 3OITnNKuo7EfZIEj1aJIrdjNLoUeGke7pUnnRTlN9llwGNCCRyTLSVHqr44+83HoZpPX
 miVLaOjPpB42t2cNkBO3vU+JZC1qbcMoKmHEM/+p/dmp8+UlFqPjHM+Fm19jJ96dsa2u
 puu5jaSI3cdafm2+6WerVbU4uxpfbzeczj5FkSfwpt1YVcOhbSQvfksGYGJDjxVL8uSA
 retQ==
X-Gm-Message-State: AOAM533D5jVBEvx6xU6Z9TF/3IWMuIoCfJYWt8OIyHGoHB4wyZDC4vH+
 XVntteamKx29MnP2j5zlnNg=
X-Google-Smtp-Source: ABdhPJwDXnRj2XYR/swfSqkmBTPtcq5l5DvCXk8aucbfSjWm7WzefMmt11mn1pnNYT4PBH8BnUEWUg==
X-Received: by 2002:a5d:448e:: with SMTP id j14mr1588763wrq.261.1589408133524; 
 Wed, 13 May 2020 15:15:33 -0700 (PDT)
Received: from dumbo ([2a00:1768:1001:21::32a3:201a])
 by smtp.gmail.com with ESMTPSA id l1sm1227493wrc.24.2020.05.13.15.15.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 15:15:32 -0700 (PDT)
Received: from cavok by dumbo with local (Exim 4.92)
 (envelope-from <cavok@dumbo>)
 id 1jYzf0-0000mK-TH; Thu, 14 May 2020 00:15:30 +0200
Date: Thu, 14 May 2020 00:15:30 +0200
From: Domenico Andreoli <domenico.andreoli@linux.com>
To: Marek Behun <marek.behun@nic.cz>
Subject: Re: [PATCH mvebu-dt64] arm64: dts: armada-3720-turris-mox.dts: fix
 sdhci1 pins
Message-ID: <20200513221530.GA6855@dumbo>
Mail-Followup-To: Marek Behun <marek.behun@nic.cz>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, soc@kernel.org,
 arm@kernel.org, Leigh Brown <leigh@solinno.co.uk>
References: <20200513175648.GA7561@dumbo>
 <20200513210825.0f8bc9ec@nic.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513210825.0f8bc9ec@nic.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_151536_625470_8712F5DD 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [domenico.andreoli.it[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
 Leigh Brown <leigh@solinno.co.uk>, soc@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 09:08:25PM +0200, Marek Behun wrote:
> Hi Domenico,
> 

Hi Merek,

> I am not aware of such bug. The link from you message does not work (it
> says Message-ID <165fdeb5583069d893436e95cac5436@solinno.co.uk> not
> found).
> 

I apologize, the correct url is:
https://lore.kernel.org/linux-arm-kernel/8165fdeb5583069d893436e95cac5436@solinno.co.uk/

As Leigh Brown already pointed out, it is his message (although I'm
not 100% sure any more that it's the same issue he mentioned there).

Please ignore that patch, if you agree I'll post a new one with some
more explaination of the issue it fixes.

> Could you please resend the message describing the problem?
> 

This is the boot log:

U-Boot 2018.11 (Dec 16 2018 - 12:50:19 +0000), Build: jenkins-turris-os-packages-kittens-mox-90

DRAM:  1 GiB
Enabling Armada 3720 wComphy-0: SGMII1        3.125 Gbps
Comphy-1: PEX0          5 Gbps
Comphy-2: USB3_HOST0    5 Gbps
MMC:   sdhci@d8000: 0
Loading Environment from SPI Flash... SF: Detected w25q64dw with page size 256 Bytes, erase size 4 KiB, total 8 MiB
OK
Model: CZ.NIC Turris Mox Board
Net:   eth0: neta@30000
Turris Mox:
  Board version: 22
  RAM size: 1024 MiB
  Serial Number: ...
  ECDSA Public Key: ...
  SD/eMMC version: SD

Hit any key to stop autoboot:  0
gpio: pin GPIO221 (gpio 57) value is 0
gpio: pin GPIO220 (gpio 56) value is 1
SF: Detected w25q64dw with page size 256 Bytes, erase size 4 KiB, total 8 MiB
device 0 offset 0x7f0000, size 0x10000
SF: 65536 bytes @ 0x7f0000 Read: OK
switch to partitions #0, OK
mmc0 is current device
** No partition table - mmc 0 **
starting USB...
USB0:   Register 2000104 NbrPorts 2
Starting the controller
USB XHCI 1.00
USB1:   USB EHCI 1.00
scanning bus 0 for devices... 2 USB Device(s) found
scanning bus 1 for devices... 1 USB Device(s) found
       scanning usb for storage devices... 1 Storage Device(s) found

Device 0: Vendor: SanDisk  Rev: 8.01 Prod: Cruzer
            Type: Removable Hard Disk
            Capacity: 7681.4 MB = 7.5 GB (15731711 x 512)
... is now current device
Scanning usb 0:1...
Found /extlinux/extlinux.conf
Retrieving file: /extlinux/extlinux.conf
144 bytes read in 15 ms (8.8 KiB/s)
Debian-Installer
1:      Debian-Installer
Enter choice: 1:        Debian-Installer
Retrieving file: /initrd.gz
29148126 bytes read in 1233 ms (22.5 MiB/s)
Retrieving file: /vmlinuz
21411696 bytes read in 900 ms (22.7 MiB/s)
Retrieving file: /dtbs/mvebu-turris_mox.dtb
20095 bytes read in 41 ms (478.5 KiB/s)
## Flattened Device Tree blob at 04f00000
   Booting using the fdt blob at 0x4f00000
   Loading Ramdisk to 3a350000, end 3bf1c3de ... OK
   Loading Device Tree to 000000003a348000, end 000000003a34fe7e ... OK

Starting kernel ...

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
[    0.000000] Linux version 5.6.0-1-arm64 (debian-kernel@lists.debian.org) (gcc version 9.3.0 (Debian 9.3.0-11)) #1 SMP Debian 5.6.7-1 (2020-04-29)
[    0.000000] Machine model: CZ.NIC Turris Mox Board
[    0.000000] efi: Getting EFI parameters from FDT:
[    0.000000] efi: UEFI not found.
[    0.000000] cma: Reserved 64 MiB at 0x000000003c000000
[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem 0x0000000000000000-0x000000003fffffff]
[    0.000000] NUMA: NODE_DATA [mem 0x3a21d0c0-0x3a21efff]
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000000000000-0x000000003fffffff]
[    0.000000]   DMA32    empty
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000000000-0x0000000003ffffff]
[    0.000000]   node   0: [mem 0x0000000004200000-0x000000003fffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x000000003fffffff]
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.1 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: MIGRATE_INFO_TYPE not supported.
[    0.000000] psci: SMC Calling Convention v1.1
[    0.000000] percpu: Embedded 32 pages/cpu s93976 r8192 d28904 u131072
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: ARM erratum 845719
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] Speculative Store Bypass Disable mitigation not required
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 257536
[    0.000000] Policy zone: DMA
[    0.000000] Kernel command line:
[    0.000000] Dentry cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    0.000000] Inode-cache hash table entries: 65536 (order: 7, 524288 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 910716K/1046528K available (10108K kernel code, 1836K rwdata, 3752K rodata, 5184K init, 557K bss, 70276K reserved, 65536K cma-reserved)
[    0.000000] random: get_random_u64 called from __kmem_cache_create+0x44/0x5c8 with crng_init=0
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
[    0.000000] ftrace: allocating 36361 entries in 143 pages
[    0.000000] ftrace: allocated 143 pages with 5 groups
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=2.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=2
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
[    0.000000] GICv3: 192 SPIs implemented
[    0.000000] GICv3: 0 Extended SPIs implemented
[    0.000000] GICv3: Distributor has no Range Selector support
[    0.000000] GICv3: 16 PPIs implemented
[    0.000000] GICv3: no VLPI support, no direct LPI support, no RVPEID support
[    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x00000000d1d40000
[    0.000000] arch_timer: cp15 timer(s) running at 12.50MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x2e2049cda, max_idle_ns: 440795202628 ns
[    0.000004] sched_clock: 56 bits at 12MHz, resolution 80ns, wraps every 4398046511080ns
[    0.000334] Console: colour dummy device 80x25
[    0.000685] printk: console [tty0] enabled
[    0.000810] Calibrating delay loop (skipped), value calculated using timer frequency.. 25.00 BogoMIPS (lpj=50000)
[    0.000830] pid_max: default: 32768 minimum: 301
[    0.000964] LSM: Security Framework initializing
[    0.001000] Yama: disabled by default; enable with sysctl kernel.yama.*
[    0.001111] AppArmor: AppArmor initialized
[    0.001125] TOMOYO Linux initialized
[    0.001204] Mount-cache hash table entries: 2048 (order: 2, 16384 bytes, linear)
[    0.001227] Mountpoint-cache hash table entries: 2048 (order: 2, 16384 bytes, linear)
[    0.003093] rcu: Hierarchical SRCU implementation.
[    0.004920] EFI services will not be available.
[    0.005428] smp: Bringing up secondary CPUs ...
[    0.006046] Detected VIPT I-cache on CPU1
[    0.006080] GICv3: CPU1: found redistributor 1 region 0:0x00000000d1d60000
[    0.006125] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
[    0.006256] smp: Brought up 1 node, 2 CPUs
[    0.006298] SMP: Total of 2 processors activated.
[    0.006310] CPU features: detected: 32-bit EL0 Support
[    0.006321] CPU features: detected: CRC32 instructions
[    0.020447] CPU: All CPU(s) started at EL2
[    0.020562] alternatives: patching kernel code
[    0.022090] devtmpfs: initialized
[    0.024819] Registered cp15_barrier emulation handler
[    0.024855] Registered setend emulation handler
[    0.024869] KASLR disabled due to lack of seed
[    0.025239] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.025273] futex hash table entries: 512 (order: 3, 32768 bytes, linear)
[    0.027687] pinctrl core: initialized pinctrl subsystem
[    0.028551] thermal_sys: Registered thermal governor 'fair_share'
[    0.028555] thermal_sys: Registered thermal governor 'step_wise'
[    0.028702] DMI not present or invalid.
[    0.029382] NET: Registered protocol family 16
[    0.030872] DMA: preallocated 256 KiB pool for atomic allocations
[    0.030920] audit: initializing netlink subsys (disabled)
[    0.031209] audit: type=2000 audit(0.028:1): state=initialized audit_enabled=0 res=1
[    0.032295] cpuidle: using governor ladder
[    0.032333] cpuidle: using governor menu
[    0.032441] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
[    0.032516] ASID allocator initialised with 65536 entries
[    0.032864] Serial: AMBA PL011 UART driver
[    0.045732] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    0.045764] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
[    0.045776] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.045788] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
[    0.729432] ACPI: Interpreter disabled.
[    0.729661] iommu: Default domain type: Translated
[    0.729933] vgaarb: loaded
[    0.730286] EDAC MC: Ver: 3.0.0
[    0.731897] NetLabel: Initializing
[    0.731925] NetLabel:  domain hash size = 128
[    0.731933] NetLabel:  protocols = UNLABELED CIPSOv4 CALIPSO
[    0.731995] NetLabel:  unlabeled traffic allowed by default
[    0.732085] clocksource: Switched to clocksource arch_sys_counter
[    0.794093] VFS: Disk quotas dquot_6.6.0
[    0.794197] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    0.794938] AppArmor: AppArmor Filesystem Enabled
[    0.795189] pnp: PnP ACPI: disabled
[    0.802148] NET: Registered protocol family 2
[    0.802776] tcp_listen_portaddr_hash hash table entries: 512 (order: 1, 8192 bytes, linear)
[    0.802822] TCP established hash table entries: 8192 (order: 4, 65536 bytes, linear)
[    0.802902] TCP bind hash table entries: 8192 (order: 5, 131072 bytes, linear)
[    0.803044] TCP: Hash tables configured (established 8192 bind 8192)
[    0.803216] UDP hash table entries: 512 (order: 2, 16384 bytes, linear)
[    0.803254] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes, linear)
[    0.803473] NET: Registered protocol family 1
[    0.803507] NET: Registered protocol family 44
[    0.803526] PCI: CLS 0 bytes, default 64
[    0.803753] Trying to unpack rootfs image as initramfs...
[    2.495222] Freeing initrd memory: 28464K
[    2.495731] hw perfevents: enabled with armv8_pmuv3 PMU driver, 7 counters available
[    2.496008] kvm [1]: IPA Size Limit: 40bits
[    2.496615] kvm [1]: vgic-v2@d1da0000
[    2.496647] kvm [1]: GIC system register CPU interface enabled
[    2.496712] kvm [1]: vgic interrupt IRQ1
[    2.496808] kvm [1]: Hyp mode initialized successfully
[    2.498502] Initialise system trusted keyrings
[    2.498571] Key type blacklist registered
[    2.498898] workingset: timestamp_bits=44 max_order=18 bucket_order=0
[    2.505309] zbud: loaded
[    2.506089] Platform Keyring initialized
[    2.506119] Key type asymmetric registered
[    2.506130] Asymmetric key parser 'x509' registered
[    2.506172] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 250)
[    2.506475] io scheduler mq-deadline registered
[    2.510091] armada-37xx-pinctrl d0013800.pinctrl: invalid or no IRQ
[    2.510820] armada-37xx-pinctrl d0018800.pinctrl: invalid or no IRQ
[    2.512816] shpchp: Standard Hot Plug PCI Controller Driver version: 0.4
[    2.517067] mv_xor d0060900.xor: Marvell shared XOR driver
[    2.553169] mv_xor d0060900.xor: Marvell XOR (Descriptor Mode): ( xor cpy intr )
[    2.585164] mv_xor d0060900.xor: Marvell XOR (Descriptor Mode): ( xor cpy intr )
[    2.587296] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    2.589332] Serial: AMBA driver
[    2.589595] msm_serial: driver initialized
[    2.590240] cacheinfo: Unable to detect cache hierarchy for CPU 0
[    2.590936] mousedev: PS/2 mouse device common for all mice
[    2.592710] ledtrig-cpu: registered to indicate activity on CPUs
[    2.593666] drop_monitor: Initializing network drop monitor service
[    2.594467] NET: Registered protocol family 10
[    2.620001] Segment Routing with IPv6
[    2.620225] mip6: Mobile IPv6
[    2.620250] NET: Registered protocol family 17
[    2.620497] mpls_gso: MPLS GSO support
[    2.620895] registered taskstats version 1
[    2.620912] Loading compiled-in X.509 certificates
[    2.779390] Loaded X.509 cert 'Debian Secure Boot CA: 6ccece7e4c6c0d1f6149f3dd27dfcc5cbb419ea1'
[    2.779534] Loaded X.509 cert 'Debian Secure Boot Signer: 00a7468def'
[    2.779707] zswap: loaded using pool lzo/zbud
[    2.780420] Key type ._fscrypt registered
[    2.780444] Key type .fscrypt registered
[    2.780453] Key type fscrypt-provisioning registered
[    2.780549] AppArmor: AppArmor sha1 policy hashing enabled
[    2.783937] d0012000.serial: ttyMV0 at MMIO 0xd0012000 (irq = 0, base_baud = 1562500) is a mvebu-uart
[    3.722664] printk: console [ttyMV0] enabled
[    3.729581] hctosys: unable [    3.739633] Freeing unused kernel memory: 5184K
[    3.766818] Checked W+X mappings: passed, no W+X pages found
[    3.769847] Run /init as init process
[    3.914731] gpio-keys gpio-keys: Unable to get irq number for GPIO 0, error -6
[    4.038227] libphy: Fixed MDIO Bus: probed
[    4.047081] libphy: orion_mdio_bus: probed
[    4.080792] sdhci: Secure Digital Host Controller Interface driver
[    4.084416] sdhci: Copyright(c) Pierre Ossman
[    4.106276] sdhci-pltfm: SDHCI platform and OF driver helper
[    4.131038] xenon-sdhci d00d0000.sdhci: allocated mmc-pwrseq
[    4.138300] mvneta d0030000.ethernet eth0: Using hardware mac address d8:58:d7:00:ca:86
[    4.148875] usbcore: registered new interface driver usbfs
[    4.153650] usbcore: registered new interface driver hub
[    4.160001] usbcore: registered new device driver usb
[    4.180021] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    4.187134] ehci-orion: EHCI orion driver
[    4.188656] mmc0: SDHCI controller on d00d0000.sdhci [d00d0000.sdhci] using ADMA
[    4.196502] orion-ehci d005e000.usb: EHCI Host Controller
[    4.204661] xenon-sdhci d00d8000.sdhci: Got CD GPIO
[    4.208951] orion-ehci d005e000.usb: new USB bus registered, assigned bus number 1
[    4.214975] orion-ehci d005e000.usb: irq 14, io mem 0xd005e000
[    4.242605] orion-ehci d005e000.usb: USB 2.0 started, EHCI 1.00
[    4.248357] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 5.06
[    4.254504] usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    4.261863] usb usb1: Product: EHCI Host Controller
[    4.266868] usb usb1: Manufacturer: Linux 5.6.0-1-arm64 ehci_hcd
[    4.272589] mmc1: SDHCI controller on d00d8000.sdhci [d00d8000.sdhci] using ADMA
[    4.273029] usb usb1: SerialNumber: d005e000.usb
[    4.291438] hub 1-0:1.0: USB hub found
[    4.293208] hub 1-0:1.0: 1 port detected
[   14.564084] mmc1: Timeout waiting for hardware cmd interrupt.
[   14.567173] mmc1: sdhci: ============ SDHCI REGISTER DUMP ===========
[   14.573790] mmc1: sdhci: Sys addr:  0x00000000 | Version:  0x00000002
[   14.580419] mmc1: sdhci: Blk size:  0x00000000 | Blk cnt:  0x00000000
[   14.587050] mmc1: sdhci: Argument:  0x41200000 | Trn mode: 0x00000000
[   14.593680] mmc1: sdhci: Present:   0x01f20000 | Host ctl: 0x00000001
[   14.600310] mmc1: sdhci: Power:     0x0000000f | Blk gap:  0x00000000
[   14.606940] mmc1: sdhci: Wake-up:   0x00000000 | Clock:    0x0000f447
[   14.613570] mmc1: sdhci: Timeout:   0x00000000 | Int stat: 0x00000001
[   14.620201] mmc1: sdhci: Int enab:  0x00ff0043 | Sig enab: 0x00ff0043
[   14.626832] mmc1: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000001
[   14.633462] mmc1: sdhci: Caps:      0x25ec0099 | Caps_1:   0x0000af77
[   14.640093] mmc1: sdhci: Cmd:       0x00002902 | Max curr: 0x00000000
[   14.646723] mmc1: sdhci: Resp[0]:   0xc1ff8000 | Resp[1]:  0x00000000
[   14.653353] mmc1: sdhci: Resp[2]:   0x00000000 | Resp[3]:  0x00000000
[   14.659983] mmc1: sdhci: Host ctl2: 0x00000000
[   14.664552] mmc1: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0x00000000
[   14.671183] mmc1: sdhci: ============================================
[   24.804075] mmc1: Timeout waiting for hardware cmd interrupt.
[   24.807152] mmc1: sdhci: ============ SDHCI REGISTER DUMP ===========
[   24.813774] mmc1: sdhci: Sys addr:  0x00000000 | Version:  0x00000002
[   24.820404] mmc1: sdhci: Blk size:  0x00000000 | Blk cnt:  0x00000000
[   24.827034] mmc1: sdhci: Argument:  0x00000000 | Trn mode: 0x00000000
[   24.833666] mmc1: sdhci: Present:   0x01f20001 | Host ctl: 0x00000001
[   24.840295] mmc1: sdhci: Power:     0x0000000f | Blk gap:  0x00000000
[   24.846925] mmc1: sdhci: Wake-up:   0x00000000 | Clock:    0x0000f447
[   24.853555] mmc1: sdhci: Timeout:   0x00000000 | Int stat: 0x00018000
[   24.860187] mmc1: sdhci: Int enab:  0x00ff0043 | Sig enab: 0x00ff0043
[   24.866816] mmc1: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000001
[   24.873447] mmc1: sdhci: Caps:      0x25ec0099 | Caps_1:   0x0000af77
[   24.880078] mmc1: sdhci: Cmd:       0x0000371a | Max curr: 0x00000000
[   24.886708] mmc1: sdhci: Resp[0]:   0xc1ff8000 | Resp[1]:  0x00000000
[   24.893338] mmc1: sdhci: Resp[2]:   0x00000000 | Resp[3]:  0x00000000
[   24.899968] mmc1: sdhci: Host ctl2: 0x00000000
[   24.904538] mmc1: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0x00000000
[   24.911168] mmc1: sdhci: ============================================
[   25.324070] rcu: INFO: rcu_sched detected stalls on CPUs/tasks:
[   25.327319] rcu:     0-...0: (1 GPs behind) idle=74a/1/0x4000000000000000 softirq=891/901 fqs=2597
[   25.336365]  (detected by 1, t=5252 jiffies, g=-195, q=163)
[   25.342095] Task dump for CPU 0:
[   25.345408] systemd-udevd   R  running task        0   109    100 0x00000022
[   25.352668] Call trace:
[   25.355184]  __switch_to+0xf8/0x160
[   25.358764]  platform_drv_probe+0x58/0xa8
[   25.362884]  really_probe+0xe0/0x440
[   25.366556]  driver_probe_device+0xe4/0x138
[   25.370855]  device_driver_attach+0x74/0x80
[   25.375156]  __driver_attach+0xa4/0x170
[   25.379100]  bus_for_each_dev+0x74/0xc8
[   25.383043]  driver_attach+0x28/0x30
[   25.386715]  bus_add_driver+0x144/0x228
[   25.390658]  driver_register+0x68/0x118
[   25.394600]  __platform_driver_register+0x4c/0x58
[   25.399449]  xhci_plat_init+0x38/0x1000 [xhci_plat_hcd]
[   25.404816]  do_one_initcall+0x4c/0x218
[   25.408758]  do_init_module+0x5c/0x248
[   25.412608]  load_module+0x1eec/0x2348
[   25.416462]  __do_sys_finit_module+0xac/0x110
[   25.420942]  __arm64_sys_finit_module+0x24/0x30
[   25.425605]  el0_svc_common.constprop.0+0x70/0x168
[   25.430531]  do_el0_svc+0x28/0x88
[   25.433935]  el0_sync_handler+0x10c/0x180
[   25.438056]  el0_sync+0x140/0x180

In order to reproduce:

 1. $ wget https://d-i.debian.org/daily-images/arm64/daily/netboot/SD-card-images/firmware.none.img.gz
 2. $ wget https://d-i.debian.org/daily-images/arm64/daily/netboot/SD-card-images/partition.img.gz
 3. $ wget https://d-i.debian.org/daily-images/arm64/daily/device-tree/marvell/armada-3720-turris-mox.dtb
 4. # zcat firmware.none.img.gz partition.img.gz | dd of=<usb_stick_dev>
 5. # mount <usb_stick_dev> /mnt
 6. # cp armada-3720-turris-mox.dtb /mnt/dtbs/mvebu-turris_mox.dtb
 7. # umount /mnt
 8. plug the usb stick into the MOX
 9. make sure to have a non-bootable sdcard inserted, better if it's unpartitioned
10. power on the MOX

I don't get this issue every time (it seems that having some partition
on the sdcard that can be searched by u-boot can make some difference
but frankly... I don't know), there is something else going wrong with
the xhci initialization that anyway blocks the boot.

After some investigation in the Turris kernel repository, I spotted the
missing configuration of the sdio0 in pinctrl_nb [0] and its reference
in sdhci1 [1].

The patch is just an adaptation to the mainline kernel (but seems to
work fine also with the Debian Installer's kernel 5.6.7-1).

Regards,
Domenico

[0] https://gitlab.labs.nic.cz/turris/mox-kernel/-/blob/master/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts#L128
[1] https://gitlab.labs.nic.cz/turris/mox-kernel/-/blob/master/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts#L769

> 
> Marek
> 

-- 
rsa4096: 3B10 0CA1 8674 ACBA B4FE  FCD2 CE5B CF17 9960 DE13
ed25519: FFB4 0CC3 7F2E 091D F7DA  356E CC79 2832 ED38 CB05

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
