Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A7219D48E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 12:03:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5lfVO4rbPHv0YFhOIl0Zxh0r+P55ear9QXqyYlfUyWY=; b=QXkrBkfQ+2pBq3
	bktUvb2FV8wGjWyPZ/+4iRJHbv+ypo4TNoJweS4vJO0dxzdLhYs78BXCYgT9v2jqjIbZpFNClBrrN
	v3fx2hWZqioBcYmSeKv4Hl5orKsunW9BY4ZgADEQmzpdN5RvWwa+GkX92jhvDvsEdCYjiSmlXCnvY
	4noOnQONCzeEkqqZr80EU/lLYdR/4XYHQ8z8TILwTRqBwBz9yNiB981is1x2DMG8EkDMegETimugz
	5E8MqYxgNz+FWzcpvxkrpU745KzrMaIeppabePalR1etH/na3GQ1jXl7kyv/KWbz7YNXv2vA4Aqfm
	JCRJgHhF9NktcHwK1mJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKJAx-0001PI-QI; Fri, 03 Apr 2020 10:03:47 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKJAr-0001Om-1U
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 10:03:42 +0000
Received: by mail-lf1-x144.google.com with SMTP id f8so3917645lfe.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 03:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=MPMPRE0D4kKnSECrzyOIrs5hR+bkv3Lkl4ZJOAfAG28=;
 b=awqQvB/sPlvG7QFTXdPlCsLu1Zl8AbI8xkMZze8/fS7oyAVRG5QWwu9ETnC+AMXTgv
 cEL1DqKzFfU1jE2k/IeenG81vn2AN+YEeqeM71l4PQXXUzQ4bjbX81Tw79rA/5zVDRWj
 muP8rJAI5t4uMhii6A3vxatFjvVuY2rKmd8bzlTsix1HwUwgMPraXohHBiFcKQ/V625h
 0cXyvUr54pUpklLFUn+qQkRP0mTQL0Q0jHciG1zczzW7pHDRwOzpahzqpH5asvZFwVbt
 ts1VhjtWNAjnQ+tv5SvIjUVKY5KaCe+C0a5Ede3aPcGsCgw/7CUEHB3Jk++JKCzhyW0t
 SeYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=MPMPRE0D4kKnSECrzyOIrs5hR+bkv3Lkl4ZJOAfAG28=;
 b=WLgU3/tjulS+IdMdxSsYzOzgM8pcOcXHzcSDKL+lKMkGBPqZoPmN9sh322eZnPGDsM
 bvN2VM60Qa1Pr45u5Dx5BrzAOPC8+XwUkT4UiBh7O6LyEXPAU69m1djFr0GHdmj03vJs
 5taqnFDlUXMlvOnA9Ql3Nsii5+sbATLr1tCpjK025DHLoK6RNQ8AUevXG+upPY19wmww
 aC4X2Z2oizA07bhf0z96tiwEAsuihUv0F5uiAmtrsskIo8lJgyajTGk2nVj/yNoc5Xw0
 s9SZZOIZlyrsfV5SXFcdg2vYRcmvKXxiG4qLVRS+xi4e2rpRnmePDN3ud6wUG94K7fFO
 CvJA==
X-Gm-Message-State: AGi0PuYM3FJwF3RLjjsWDhVjU+ZAF/zH17PIaoV/vPno8UYIzakKuQfP
 o4yarSR+Y+KBSOHg6pI+Monj8H73jZTnXWY9SirdexVP
X-Google-Smtp-Source: APiQypINuW2tNRoxCjjuiH52U6H/HBo4h/qrWaO+bTMGKrZMdSvjFhKC2k5pjYY4YFVk1eLDUeADwnX6200IOwMmU8c=
X-Received: by 2002:ac2:545b:: with SMTP id d27mr4766563lfn.187.1585908216846; 
 Fri, 03 Apr 2020 03:03:36 -0700 (PDT)
MIME-Version: 1.0
From: Amit Tomer <amittomer25@gmail.com>
Date: Fri, 3 Apr 2020 15:32:58 +0530
Message-ID: <CABHD4K_LPKp4LP5yH=HmjBzbTnO4ih=AwK_XHJWCy-vAv1-QNQ@mail.gmail.com>
Subject: Actions: Question about S700 pin controller
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_030341_108434_D90FCA4E 
X-CRM114-Status: UNSURE (   6.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: robh@kernel.org, Andre Przywara <andre.przywara@arm.com>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While booting mainline Kernel on Cubieboard7-lite(based on S700), see
the following logs
that suggests S700 pin controller is not probed well.

[    0.257415] pinctrl-s700 e01b0000.pinctrl: can't request region for
resource [mem 0xe01b0000-0xe01b0fff]
[    0.266902] pinctrl-s700: probe of e01b0000.pinctrl failed with error -16

Register range defined for pin controller seems to be huge and causing
this failure.

reg = <0x0 0xe01b0000 0x0 0x1000>;

Complete logs are below

Starting kernel ...

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
[    0.000000] Linux version 5.6.0-02330-g458ef2a-dirty
(amit@amit-ThinkPad-X230) (gcc version 7.3.1 20180425
[linaro-7.3-2018.05 revision d29120a424ecfbc167ef90065c0eeb7f91977701]
(Linaro GCC 7.3-2018.05)) #12 SMP PREEMPT Fri Apr 3 14:19:08 IST 2020
[    0.000000] Machine model: CubieBoard7
[    0.000000] earlycon: owl0 at MMIO 0x00000000e0126000 (options '')
[    0.000000] printk: bootconsole [owl0] enabled
[    0.000000] efi: UEFI not found.
[    0.000000] cma: Reserved 32 MiB at 0x000000003e000000
[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem
0x0000000000000000-0x000000003fffffff]
[    0.000000] NUMA: NODE_DATA [mem 0x3ddfc100-0x3ddfdfff]
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000000000000-0x000000003fffffff]
[    0.000000]   DMA32    empty
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000000000-0x000000001effffff]
[    0.000000]   node   0: [mem 0x0000000020000000-0x000000003fffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x000000003fffffff]
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv0.2 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: Trusted OS migration not required
[    0.000000] percpu: Embedded 23 pages/cpu s53272 r8192 d32744 u94208
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: ARM erratum 845719
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 253952
[    0.000000] Policy zone: DMA
[    0.000000] Kernel command line: console=ttyOWL,115200
earlycon=owl,0xe0126000 root=/dev/mmcblk0p2
[    0.000000] Dentry cache hash table entries: 131072 (order: 8,
1048576 bytes, linear)
[    0.000000] Inode-cache hash table entries: 65536 (order: 7, 524288
bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 951668K/1032192K available (12604K kernel code,
1948K rwdata, 6964K rodata, 5312K init, 462K bss, 47756K reserved,
32768K cma-reserved)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
[    0.000000] rcu: Preemptible hierarchical RCU implementation.
[    0.000000] rcu:     RCU event tracing is enabled.
[    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=4.
[    0.000000]     Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay
is 25 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=4
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GIC: Using split EOI/Deactivate mode
[    0.000000] random: get_random_bytes called from
start_kernel+0x2a8/0x444 with crng_init=0
[    0.000000] arch_timer: cp15 timer(s) running at 24.00MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff
max_cycles: 0x588fe9dc0, max_idle_ns: 440795202592 ns
[    0.000000] sched_clock: 56 bits at 24MHz, resolution 41ns, wraps
every 4398046511097ns
[    0.008163] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps
every 89478484971ns
[    0.015969] clocksource: timer: mask: 0xffffffff max_cycles:
0xffffffff, max_idle_ns: 79635851949 ns
[    0.025300] Console: colour dummy device 80x25
[    0.029821] Calibrating delay loop (skipped), value calculated
using timer frequency.. 48.00 BogoMIPS (lpj=96000)
[    0.040069] pid_max: default: 32768 minimum: 301
[    0.044785] LSM: Security Framework initializing
[    0.049465] Mount-cache hash table entries: 2048 (order: 2, 16384
bytes, linear)
[    0.056857] Mountpoint-cache hash table entries: 2048 (order: 2,
16384 bytes, linear)
[    0.066496] rcu: Hierarchical SRCU implementation.
[    0.072035] EFI services will not be available.
[    0.076832] smp: Bringing up secondary CPUs ...
[    0.082027] Detected VIPT I-cache on CPU1
[    0.082093] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
[    0.082792] Detected VIPT I-cache on CPU2
[    0.082834] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
[    0.083500] Detected VIPT I-cache on CPU3
[    0.083540] CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
[    0.083627] smp: Brought up 1 node, 4 CPUs
[    0.119242] SMP: Total of 4 processors activated.
[    0.123938] CPU features: detected: 32-bit EL0 Support
[    0.129087] CPU features: detected: CRC32 instructions
[    0.143064] CPU: All CPU(s) started at EL2
[    0.147207] alternatives: patching kernel code
[    0.153187] devtmpfs: initialized
[    0.158590] KASLR disabled due to lack of seed
[    0.163472] clocksource: jiffies: mask: 0xffffffff max_cycles:
0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.173211] futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
[    0.181589] pinctrl core: initialized pinctrl subsystem
[    0.188064] thermal_sys: Registered thermal governor 'step_wise'
[    0.188068] thermal_sys: Registered thermal governor 'power_allocator'
[    0.194183] DMI not present or invalid.
[    0.205285] NET: Registered protocol family 16
[    0.211593] DMA: preallocated 256 KiB pool for atomic allocations
[    0.217696] audit: initializing netlink subsys (disabled)
[    0.223266] audit: type=2000 audit(0.144:1): state=initialized
audit_enabled=0 res=1
[    0.231024] cpuidle: using governor menu
[    0.235203] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
[    0.242077] ASID allocator initialised with 65536 entries
[    0.248650] Serial: AMBA PL011 UART driver
[    0.257415] pinctrl-s700 e01b0000.pinctrl: can't request region for
resource [mem 0xe01b0000-0xe01b0fff]
[    0.266902] pinctrl-s700: probe of e01b0000.pinctrl failed with error -16

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
