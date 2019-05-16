Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D014204E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 13:42:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BRRSy8vquV4QSb5cBMWSsfKdXP3AS7q/OxhYfDJ/Uyo=; b=sS1vD1KRXf6Y8M
	EwxLEZfNIRmNnG5lj0SsEvajXMdITeC2W3Sua7teEzXf0F0GauLUrQO7FF+OR+kc9+xZvq/DPvqly
	X5wcT3rxhnXR5WLQWCr4KaR10WC+q0ULZjYw1bvo2ubYi4MGk3GKczQCtQAC8IgVpzzLwk7dHF2A2
	qADzsuDrp7H2N00QYT8iQCfEaORoib2TE1n1Py3ZgowPR+/VROXrSjws1Uow07y7v5GSZq9c1O4x7
	HU1dYOj4NLvfIixajcpvo5AGu8S36ukRZJs6wp5Kk81oIZR6uWsWBBrwjql/UB1L72Mi6vMR2yDKi
	uIY4HLouScpyeJ8/GP2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hREmZ-0001bp-Qw; Thu, 16 May 2019 11:42:43 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hREmP-0001as-Su
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 11:42:35 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4GBgRoh069525;
 Thu, 16 May 2019 06:42:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1558006947;
 bh=Gajbcnq9Ky1kil/9jXaOfoRYVSXkLQUg9JCI9rz4lwo=;
 h=From:Subject:To:CC:Date;
 b=JKKi3Cty1qvlBesd4fU/BaOzsf9unfVOf/gBzemq5HyPHJwVhmI8sBBL4guRgELXE
 ZpwomLCdBVTwnTSyPEBaLx1AFkW/og3kj38QtqvjfTOt5rHQkyL16Bhrsb8DJLUyrF
 2hRzPsxSNvgQj8mihkcvCBFhyPnUSN+H70jH+F9A=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4GBgRMC075989
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 16 May 2019 06:42:27 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 16
 May 2019 06:42:27 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 16 May 2019 06:42:27 -0500
Received: from [172.24.190.172] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4GBgOIw085183;
 Thu, 16 May 2019 06:42:25 -0500
From: Sekhar Nori <nsekhar@ti.com>
Subject: boot regression on da850-evm with commit f979c08f7624
To: Axel Lin <axel.lin@ingics.com>
Message-ID: <9268a4db-f643-c33f-87a5-b622b91330a4@ti.com>
Date: Thu, 16 May 2019 17:12:24 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_044234_057926_F3DFFE03 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Brown <broonie@kernel.org>, Adam Ford <aford173@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Axel Lin,

Your commit f979c08f7624 ("regulator: tps6507x: Convert to regulator 
core's simplified DT parsing code") causes a boot regression on da850-
evm.

The device-tree file is arch/arm/boot/dts/da850-evm.dts

Full logs below. tps_board in tps6507x_pmic_probe() is NULL. The check 
for init_data introduced in the offending patch:

        for (i = 0; i < TPS6507X_NUM_REGULATOR; i++, info++, init_data++) {
                /* Register the regulators */
                tps->info[i] = info;
-               if (init_data->driver_data) {
+               if (init_data && init_data->driver_data) {
                        struct tps6507x_reg_platform_data *data =
                                        init_data->driver_data;
-                       tps->info[i]->defdcdc_default = data->defdcdc_default;

works only for first iteration of the loop. A NULL init_data once 
incremented will lead to oops.

Reverting the commit solves the issue, but I assume there is a better 
solution. Please advise.

Thanks,
Sekhar

Uncompressing Linux... done, booting the kernel.
Booting Linux on physical CPU 0x0
Linux version 5.1.0-11058-g83f3ef3de625 (a0875516@psplinux063) (gcc version 8.2.1 20180802 (GNU Toolchain for the A-profile Architecture 8.2-2018.11 (arm-rel-8.26))) #60 PREEMPT Thu May 16 17:00:16 IST 2019
CPU: ARM926EJ-S [41069265] revision 5 (ARMv5TEJ), cr=0005317f
CPU: VIVT data cache, VIVT instruction cache
OF: fdt: Machine model: DA850/AM1808/OMAP-L138 EVM
Memory policy: Data cache writethrough
cma: Reserved 16 MiB at 0xc7000000
DaVinci da850/omap-l138 variant 0x0
Built 1 zonelists, mobility grouping on.  Total pages: 32512
Kernel command line: console=ttyS2,115200n8 root=/dev/nfs rw nfsroot=172.24.210.141:/datalocal/Sekhar/new/debian/armel ip=dhcp
Dentry cache hash table entries: 16384 (order: 4, 65536 bytes)
Inode-cache hash table entries: 8192 (order: 3, 32768 bytes)
Memory: 106904K/131072K available (4624K kernel code, 248K rwdata, 1120K rodata, 212K init, 137K bss, 7784K reserved, 16384K cma-reserved)
SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
rcu: Preemptible hierarchical RCU implementation.
        Tasks RCU enabled.
rcu: RCU calculated value of scheduler-enlistment delay is 10 jiffies.
NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
random: get_random_bytes called from start_kernel+0x258/0x428 with crng_init=0
clocksource: timer0_1: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 79635851949 ns
sched_clock: 32 bits at 24MHz, resolution 41ns, wraps every 89478484971ns
Console: colour dummy device 80x30
Calibrating delay loop... 148.88 BogoMIPS (lpj=744448)
pid_max: default: 32768 minimum: 301
Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)
*** VALIDATE proc ***
*** VALIDATE cgroup1 ***
*** VALIDATE cgroup2 ***
CPU: Testing write buffer coherency: ok
Setting up static identity map for 0xc0008400 - 0xc0008458
rcu: Hierarchical SRCU implementation.
devtmpfs: initialized
clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
futex hash table entries: 256 (order: -1, 3072 bytes)
pinctrl core: initialized pinctrl subsystem
NET: Registered protocol family 16
DMA: preallocated 256 KiB pool for atomic coherent allocations
cpuidle: using governor menu
mux: initialized RTC_ALARM
mux: Setting register RTC_ALARM
mux:    PINMUX0 (0x00000000) = 0x44080000 -> 0x24080000
gpiochip_add_data_with_key: GPIOs 368..511 (1e26000.gpio) failed to register, -517
edma 1e30000.edma: memcpy is disabled
edma 1e30000.edma: TI EDMA DMA engine driver
baseboard_3v3: supplied by vbat
baseboard_1v8: supplied by vbat
clocksource: Switched to clocksource timer0_1
NET: Registered protocol family 2
tcp_listen_portaddr_hash hash table entries: 512 (order: 0, 4096 bytes)
TCP established hash table entries: 1024 (order: 0, 4096 bytes)
TCP bind hash table entries: 1024 (order: 0, 4096 bytes)
TCP: Hash tables configured (established 1024 bind 1024)
UDP hash table entries: 256 (order: 0, 4096 bytes)
UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
NET: Registered protocol family 1
RPC: Registered named UNIX socket transport module.
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
workingset: timestamp_bits=30 max_order=15 bucket_order=0
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 251)
io scheduler mq-deadline registered
io scheduler kyber registered
pinctrl-single 1c14120.pinmux: 160 pins, size 80
Serial: 8250/16550 driver, 3 ports, IRQ sharing disabled
1d0c000.serial: ttyS1 at MMIO 0x1d0c000 (irq = 69, base_baud = 8250000) is a TI DA8xx/66AK2x
1d0d000.serial: ttyS2 at MMIO 0x1d0d000 (irq = 77, base_baud = 8250000) is a TI DA8xx/66AK2x
printk: console [ttyS2] enabled
brd: module loaded
libphy: Fixed MDIO Bus: probed
davinci_mdio 1e24000.mdio: davinci mdio revision 1.5, bus freq 2200000
davinci_mdio 1e24000.mdio: detected phy mask fffffffe
libphy: 1e24000.mdio: probed
davinci_mdio 1e24000.mdio: phy[0]: device 1e24000.mdio:00, driver SMSC LAN8710/LAN8720
i2c /dev entries driver
davinci-wdt 1c21000.wdt: heartbeat 60 sec
NET: Registered protocol family 10
Segment Routing with IPv6
sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
NET: Registered protocol family 17
edma 1c00000.edma: memcpy is disabled
edma 1c00000.edma: TI EDMA DMA engine driver
Unable to handle kernel NULL pointer dereference at virtual address 00000164
pgd = (ptrval)
[00000164] *pgd=00000000
Internal error: Oops: 5 [#1] PREEMPT ARM
Modules linked in:
CPU: 0 PID: 13 Comm: kworker/0:1 Not tainted 5.1.0-11058-g83f3ef3de625 #60
Hardware name: Generic DA850/OMAP-L138/AM18x
Workqueue: events deferred_probe_work_func
PC is at tps6507x_pmic_probe+0xb0/0x1c0
LR is at devres_add+0x54/0x84
pc : [<c029bd18>]    lr : [<c02d2860>]    psr: 20000013
sp : c689fa38  ip : 00000002  fp : 00000000
r10: c6b50820  r9 : c6b7f9e0  r8 : 00000001
r7 : c6b50c64  r6 : 000000b4  r5 : c0627aec  r4 : c6b508f8
r3 : c6b50c70  r2 : 00000000  r1 : 00000001  r0 : c6b55c00
Flags: nzCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
Control: 0005317f  Table: c0004000  DAC: 00000053
Process kworker/0:1 (pid: 13, stack limit = 0x(ptrval))
Stack: (0xc689fa38 to 0xc68a0000)
fa20:                                                       00000001 c6b99010
fa40: c6b50c70 c6b99000 00000000 c6b92e20 00000000 c6b50820 00000000 00000000
fa60: 00000000 39c434d0 00000009 c6b99010 00000000 c0627a90 00000000 c0627a90
fa80: 00000009 c6b980e0 00000000 c02d10fc c6b99010 c0655998 00000000 c02cf34c
faa0: c6b99010 c0627a90 c02cf848 c05ff008 00000001 c062c8d0 c6b980e0 c02cf688
fac0: c0627a90 c689fb1c c6b99010 00000000 c689fb1c c02cf848 c05ff008 00000001
fae0: c062c8d0 c6b980e0 00000000 c02cd774 20000013 c6822360 c68f23f4 39c434d0
fb00: 00000000 c6b99010 c6b99054 c05ff008 c05ff008 c02cf1e4 00000000 c6b99010
fb20: 00000001 39c434d0 c6b99010 c062bb88 c6b99010 c05ff008 00000000 c02ce5d8
fb40: c6b99010 00000000 c6b92e20 c02cb98c 00000000 c047351c c05ff008 c6b99000
fb60: c6b99000 39c434d0 c689fb80 c04c642c 00000000 c6b99000 c6b99010 00000000
fb80: 00000010 c02d0f38 c04c642c c6b99000 c6b92e20 00000000 00000000 00000010
fba0: c6b980e0 c02ee5c4 00000000 a0000013 c6b99010 a0000013 00000000 c6b980e0
fbc0: c04c642c 00000000 00000002 c6b92e20 ffffffff 00000000 00000000 c02ee728
fbe0: 00000000 00000000 00000000 c05566b8 c6b980e0 c00dbeec c6b92e20 c6b92e20
fc00: c6b7fa20 ffffffff c04c642c 00000002 00000009 c6b92e20 00000000 c02ee7f4
fc20: 00000000 00000000 00000000 c6b7f9e0 c6b92e20 c6b92e00 c062c874 c6b92e00
fc40: 00000000 c02ee280 00000000 00000000 00000000 c02e3518 c6b92e20 c6b92e20
fc60: c02ee21c c0317584 c6b92e20 c0655998 00000000 00000000 c062c874 c02cf34c
fc80: c6b92e20 c062c874 c02cf848 c05ff008 00000001 c062e3a0 c6b92e20 c02cf688
fca0: c062c874 c689fcfc c6b92e20 00000000 c689fcfc c02cf848 c05ff008 00000001
fcc0: c062e3a0 c6b92e20 00000000 c02cd774 20000013 c68bc4e0 c68f2514 39c434d0
fce0: 00000000 c6b92e20 c6b92e64 c05ff008 c05ff008 c02cf1e4 00000000 c6b92e20
fd00: 00000001 39c434d0 c6b92e20 c062e3e0 c6b92e20 c05ff008 00000000 c02ce5d8
fd20: c6b92e20 00000000 c6b558b0 c02cb98c c6b92e20 c0655974 c6b55850 c05ff008
fd40: c6b92e04 39c434d0 c6b92e20 c6b92e00 c689fda4 c6b55850 c05ff008 c6b92e04
fd60: c6b558b0 c0317f70 c6b558b0 c033e368 00000048 39c434d0 00000000 c6eea1e0
fd80: c6ee9f98 c6b55850 c6b558b0 c05ff008 c055af7c c055afa0 c0619964 c031a028
fda0: 00000000 36737074 78373035 00000000 00000000 00000000 00480000 00000000
fdc0: 00000000 c6eea1e0 00000000 00000000 00000000 00000000 00000000 39c434d0
fde0: c6b55850 00000000 c6b558b0 00000000 c68c8010 c6b55850 c062b974 c0318558
fe00: 00000000 39c434d0 c6b55850 c6b55820 00000000 c68c8000 c05ff008 c68c8010
fe20: c6b55850 c031b3c8 00000000 c68c61a0 c6b55820 00000000 000186a0 39c434d0
fe40: c68c8010 00000000 c062e588 00000000 c062e588 00000009 c062b974 c02d10fc
fe60: c68c8010 c0655998 00000000 c02cf34c c68c8010 c062e588 c02cf848 c05ff008
fe80: 00000001 00000000 c062b974 c02cf688 c062e588 c689feec c68c8010 00000000
fea0: c689feec c02cf848 c05ff008 00000001 00000000 c062b974 c0619964 c02cd774
fec0: 20000013 c6822360 c68f26f4 39c434d0 c0619964 c68c8010 c68c8054 c05ff008
fee0: c062b94c c02cf1e4 c062b93c c68c8010 00000001 39c434d0 c68c8010 c062bb88
ff00: c68c8010 c062b94c c0619964 c02ce5d8 c68c8010 c062b93c c062b93c c02cea58
ff20: c062b970 c68174e0 c6edc300 00000000 c0619964 c0031164 c0619978 c061f220
ff40: c68174e0 c0619964 c68174f4 c0619978 c061f220 00000008 ffffe000 c0031648
ff60: 00000000 c68903c0 c6886ae0 00000000 c689e000 c68174e0 c00313ac c684bec0
ff80: c68903d8 c0036b6c 00000000 c6886ae0 c0036a50 00000000 00000000 00000000
ffa0: 00000000 00000000 00000000 c00090e0 00000000 00000000 00000000 00000000
ffc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
ffe0: 00000000 00000000 00000000 00000000 00000013 00000000 00000000 00000000
[<c029bd18>] (tps6507x_pmic_probe) from [<c02d10fc>] (platform_drv_probe+0x48/0x98)
[<c02d10fc>] (platform_drv_probe) from [<c02cf34c>] (really_probe+0xec/0x2cc)
[<c02cf34c>] (really_probe) from [<c02cf688>] (driver_probe_device+0x5c/0x16c)
[<c02cf688>] (driver_probe_device) from [<c02cd774>] (bus_for_each_drv+0x7c/0xc4)
[<c02cd774>] (bus_for_each_drv) from [<c02cf1e4>] (__device_attach+0xc8/0x13c)
[<c02cf1e4>] (__device_attach) from [<c02ce5d8>] (bus_probe_device+0x84/0x8c)
[<c02ce5d8>] (bus_probe_device) from [<c02cb98c>] (device_add+0x3a8/0x5f4)
[<c02cb98c>] (device_add) from [<c02d0f38>] (platform_device_add+0x100/0x1fc)
[<c02d0f38>] (platform_device_add) from [<c02ee5c4>] (mfd_add_device+0x2bc/0x338)
[<c02ee5c4>] (mfd_add_device) from [<c02ee728>] (mfd_add_devices+0x94/0xfc)
[<c02ee728>] (mfd_add_devices) from [<c02ee7f4>] (devm_mfd_add_devices+0x60/0xa4)
[<c02ee7f4>] (devm_mfd_add_devices) from [<c02ee280>] (tps6507x_i2c_probe+0x64/0x80)
[<c02ee280>] (tps6507x_i2c_probe) from [<c0317584>] (i2c_device_probe+0x230/0x260)
[<c0317584>] (i2c_device_probe) from [<c02cf34c>] (really_probe+0xec/0x2cc)
[<c02cf34c>] (really_probe) from [<c02cf688>] (driver_probe_device+0x5c/0x16c)
[<c02cf688>] (driver_probe_device) from [<c02cd774>] (bus_for_each_drv+0x7c/0xc4)
[<c02cd774>] (bus_for_each_drv) from [<c02cf1e4>] (__device_attach+0xc8/0x13c)
[<c02cf1e4>] (__device_attach) from [<c02ce5d8>] (bus_probe_device+0x84/0x8c)
[<c02ce5d8>] (bus_probe_device) from [<c02cb98c>] (device_add+0x3a8/0x5f4)
[<c02cb98c>] (device_add) from [<c0317f70>] (i2c_new_device+0x148/0x2d8)
[<c0317f70>] (i2c_new_device) from [<c031a028>] (of_i2c_register_devices+0x9c/0x12c)
[<c031a028>] (of_i2c_register_devices) from [<c0318558>] (i2c_register_adapter+0x16c/0x3f0)
[<c0318558>] (i2c_register_adapter) from [<c031b3c8>] (davinci_i2c_probe+0x1c0/0x40c)
[<c031b3c8>] (davinci_i2c_probe) from [<c02d10fc>] (platform_drv_probe+0x48/0x98)
[<c02d10fc>] (platform_drv_probe) from [<c02cf34c>] (really_probe+0xec/0x2cc)
[<c02cf34c>] (really_probe) from [<c02cf688>] (driver_probe_device+0x5c/0x16c)
[<c02cf688>] (driver_probe_device) from [<c02cd774>] (bus_for_each_drv+0x7c/0xc4)
[<c02cd774>] (bus_for_each_drv) from [<c02cf1e4>] (__device_attach+0xc8/0x13c)
[<c02cf1e4>] (__device_attach) from [<c02ce5d8>] (bus_probe_device+0x84/0x8c)
[<c02ce5d8>] (bus_probe_device) from [<c02cea58>] (deferred_probe_work_func+0x60/0x8c)
[<c02cea58>] (deferred_probe_work_func) from [<c0031164>] (process_one_work+0x1e8/0x430)
[<c0031164>] (process_one_work) from [<c0031648>] (worker_thread+0x29c/0x5f4)
[<c0031648>] (worker_thread) from [<c0036b6c>] (kthread+0x11c/0x130)
[<c0036b6c>] (kthread) from [<c00090e0>] (ret_from_fork+0x14/0x34)
Exception stack(0xc689ffb0 to 0xc689fff8)
ffa0:                                     00000000 00000000 00000000 00000000
ffc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
ffe0: 00000000 00000000 00000000 00000000 00000013 00000000
Code: e58a9438 e3560000 e4875004 0a000003 (e59620b0) 
---[ end trace d428dee724d75769 ]---



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
