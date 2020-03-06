Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E1417C0CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 15:45:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGKpsPw/wz+f/F8mhq32F8Hm2zWmG6olp4XUe74tBhk=; b=an7tOCpoVLFiD6
	Ty9+rOLDCEoonvN3o3WePiCtoaPNaabzMUS/+UsRn42uErmP2u64Cd8C/JKkZJMa8bPulN8qVORmq
	tjFgyh4UudCgTjaVBFmPir3L3Kz2wyFilAR7xv1eKOpXYjKnmyaLeUQ4Qyz5Ipx+8jDsUlIKgE4Ea
	Kt1uGOdDxr9+kEMMdZK4E2PIHbmj3Z0uvqWhNMmnvJIXLaOrpA3u+9T5YSFRMxQpYa7It3vPYOHvf
	siIKLprP1DOU7epCKmlIcmzwdiHgKv2UWQhWZgGAVD4iMaHSwrA3A9TJqZwlq+hJXhA39MCDb9OLA
	ZjkPnPfSzC7FM5eHE1sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAEE3-00061V-Fo; Fri, 06 Mar 2020 14:45:19 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAEDt-0005R9-7K
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 14:45:11 +0000
Received: by mail-wm1-x341.google.com with SMTP id a5so2746361wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 06:45:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UjwH+F4EFE5ZPY0u/FLEs95F1VspWdP0F4bVhd3nr2w=;
 b=B+zf0sDcb4xMLI61XDok06G8EfxTA5ZNJqiOs0E+2yJxhpzb/sCW0zYukWqp3pr0w8
 GNAKWGCHelCZfioi7BkDJsA0TanfwkeYnwn6ME+38vwyc7y2w6pc0OjrR7UY3HJRmer3
 gNFWlucF58+0DPMB0/AOl86ocMYqdSMxEQJS619hTFlgU6oeXOlHzNxA7Lx593C2Dz9K
 oK7sat47mRTEbwhdgQ0PwPtW/cq69SdjzyfdIhvlK4pZ/KsI1ru+Cf+tgRN0/ShctbEY
 nA59Jr9zQpXh2uhsNSWSGT2LSvldGlkmQMTlMQoZ4V8fzO7YJHsqu9m6A74ReM2oROsl
 RaDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UjwH+F4EFE5ZPY0u/FLEs95F1VspWdP0F4bVhd3nr2w=;
 b=XLz/LYekVwMIMzmWLL9Rs2Q0xoQFiDMCEuwMTJ1dawmU1bQfjnMvQ4aBGYdN8gbCLl
 kra2po9EzJ7t4gv0zqcDiSZ6ff8bOlAYW7OkU/nYlz3msPhDRnqye5FJxZYA0WOtilyb
 PV12o7fpbh14ncookJ+hmIk/gSgTVs7/iuQ004odtyxVSEjiQ0h5uPCxPoUyiu/x6fg9
 GQBcznwCXcWrEeNLgoITi07nRVieugJ2rhDFoZHwDsBx9QBDf8BKpYsg1rcms+sXVzP+
 b9YCpwl4rzagkFSQLaDdwrnUrMZG0P6fuRZKnTnPlW7croA8Y+JHXDnR/K39AF5WOFAW
 dH8Q==
X-Gm-Message-State: ANhLgQ2IIknIiMvvkQGos1/ny3Huho6r8ylWyflWq34tgvtpWcGt67/Z
 0IXKja7vX6KHChztIidMRcw=
X-Google-Smtp-Source: ADFU+vvfeL5ZrjosE8Wx7P9WCTbhxPaO8AEpBGLoGHGM/s722yvvP4/x9vf1mFjRAc6HdMS/GMBsOw==
X-Received: by 2002:a05:600c:2f01:: with SMTP id
 r1mr4260476wmn.31.1583505906891; 
 Fri, 06 Mar 2020 06:45:06 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id u17sm24912074wrq.74.2020.03.06.06.45.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 06:45:06 -0800 (PST)
Date: Fri, 6 Mar 2020 15:45:04 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: sunxi: a83t: does not boot anymore in BigEndian
Message-ID: <20200306144504.GA18624@Red>
References: <20200303074326.GA9935@Red>
 <65498b8e-a6c3-9edb-873f-6c011582a2eb@arm.com>
 <20200303142104.GA8327@Red>
 <598b6e3a-5dc1-16d6-fdfe-4a02ef5889b2@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <598b6e3a-5dc1-16d6-fdfe-4a02ef5889b2@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_064509_270692_5C0CCC10 
X-CRM114-Status: GOOD (  24.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 05:50:20PM +0000, Robin Murphy wrote:
> On 03/03/2020 2:21 pm, Corentin Labbe wrote:
> > On Tue, Mar 03, 2020 at 01:47:02PM +0000, Robin Murphy wrote:
> >> On 03/03/2020 7:43 am, Corentin Labbe wrote:
> >>> Hello
> >>>
> >>> My sun8i-a83t-bananapi-m3 does not boot anymore in BE.
> >>> Others sunxi platform I have seems not affected (a10, a20, a64, h3, h5, h6)
> >>>
> >>> I have bisected this problem:
> >>> git bisect start
> >>> # bad: [98d54f81e36ba3bf92172791eba5ca5bd813989b] Linux 5.6-rc4
> >>> git bisect bad 98d54f81e36ba3bf92172791eba5ca5bd813989b
> >>> # bad: [d5226fa6dbae0569ee43ecfc08bdcd6770fc4755] Linux 5.5
> >>> git bisect bad d5226fa6dbae0569ee43ecfc08bdcd6770fc4755
> >>> # good: [219d54332a09e8d8741c1e1982f5eae56099de85] Linux 5.4
> >>> git bisect good 219d54332a09e8d8741c1e1982f5eae56099de85
> >>> # bad: [8c39f71ee2019e77ee14f88b1321b2348db51820] Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net
> >>> git bisect bad 8c39f71ee2019e77ee14f88b1321b2348db51820
> >>> # bad: [3b397c7ccafe0624018cb09fc96729f8f6165573] Merge tag 'regmap-v5.5' of git://git.kernel.org/pub/scm/linux/kernel/git/broonie/regmap
> >>> git bisect bad 3b397c7ccafe0624018cb09fc96729f8f6165573
> >>> # good: [924ea58dadea23cc28b60d02b9c0896b7b168a6f] Merge tag 'mt76-for-kvalo-2019-11-20' of https://github.com/nbd168/wireless
> >>> git bisect good 924ea58dadea23cc28b60d02b9c0896b7b168a6f
> >>> # good: [3f3c8be973af10875cfa1e7b85a535b6ba76b44f] Merge tag 'for-linus-5.5a-rc1-tag' of git://git.kernel.org/pub/scm/linux/kernel/git/xen/tip
> >>> git bisect good 3f3c8be973af10875cfa1e7b85a535b6ba76b44f
> >>> # bad: [642356cb5f4a8c82b5ca5ebac288c327d10df236] Merge git://git.kernel.org/pub/scm/linux/kernel/git/herbert/crypto-2.6
> >>> git bisect bad 642356cb5f4a8c82b5ca5ebac288c327d10df236
> >>> # good: [57d8154f15e89f53dfb412f4ed32ebe3c3d755a0] crypto: atmel-aes - Change data type for "lastc" buffer
> >>> git bisect good 57d8154f15e89f53dfb412f4ed32ebe3c3d755a0
> >>> # bad: [752272f16dd18f2cac58a583a8673c8e2fb93abb] Merge tag 'for-linus' of git://git.kernel.org/pub/scm/virt/kvm/kvm
> >>> git bisect bad 752272f16dd18f2cac58a583a8673c8e2fb93abb
> >>> # good: [9477f4449b0b011ce1d058c09ec450bfcdaab784] KVM: VMX: Add helper to check reserved bits in IA32_PERF_GLOBAL_CTRL
> >>> git bisect good 9477f4449b0b011ce1d058c09ec450bfcdaab784
> >>> # bad: [cd7056ae34af0e9424da97bbc7d2b38246ba8a2c] Merge remote-tracking branch 'kvmarm/misc-5.5' into kvmarm/next
> >>> git bisect bad cd7056ae34af0e9424da97bbc7d2b38246ba8a2c
> >>> # bad: [c7892db5dd6afe921ead502aff7440a1e450d947] KVM: arm64: Select TASK_DELAY_ACCT+TASKSTATS rather than SCHEDSTATS
> >>> git bisect bad c7892db5dd6afe921ead502aff7440a1e450d947
> >>> # bad: [8564d6372a7d8a6d440441b8ed8020f97f744450] KVM: arm64: Support stolen time reporting via shared structure
> >>> git bisect bad 8564d6372a7d8a6d440441b8ed8020f97f744450
> >>> # bad: [55009c6ed2d24fc0f5521ab2482f145d269389ea] KVM: arm/arm64: Factor out hypercall handling from PSCI code
> >>> git bisect bad 55009c6ed2d24fc0f5521ab2482f145d269389ea
> >>> # bad: [6a7458485b390f48e481fcd4a0b20e6c5c843d2e] KVM: arm64: Document PV-time interface
> >>> git bisect bad 6a7458485b390f48e481fcd4a0b20e6c5c843d2e
> >>> # bad: [dcac930e9901d765234bc15004db4f7d4416db71] Merge remote-tracking branch 'arm64/for-next/smccc-conduit-cleanup' into kvm-arm64/stolen-time
> >>> git bisect bad dcac930e9901d765234bc15004db4f7d4416db71
> >>> # first bad commit: [dcac930e9901d765234bc15004db4f7d4416db71] Merge remote-tracking branch 'arm64/for-next/smccc-conduit-cleanup' into kvm-arm64/stolen-time
> >>>
> >>> But bisect lead to a merge request.
> >>
> >> FWIW once you've bisected to a merge commit, you can always then try
> >> bisecting down the merged branch itself (i.e. between 5.4-rc3 and
> >> e6ea46511b1a in this case) to narrow things down further.
> >>
> >> Given that that branch is supposed to be a functionally-inert cleanup,
> >> and (judging by the DTS) this platform apparently isn't using PSCI
> >> anyway, it does seem a bit odd. Can you get any earlycon/earlyprintk
> >> output to suggest what the actual cause of the boot failure is?
> >>
> > 
> > Hello
> > 
> > With earlycon I got:
> > 
> > bootz 0x42000000 0x43300000 0x43000000
> > ## Loading init Ramdisk from Legacy Image at 43300000 ...
> >     Image Name:
> >     Image Type:   ARM Linux RAMDisk Image (uncompressed)
> >     Data Size:    32397255 Bytes = 30.9 MiB
> >     Load Address: 00000000
> >     Entry Point:  00000000
> >     Verifying Checksum ... OK
> > ## Flattened Device Tree blob at 43000000
> >     Booting using the fdt blob at 0x43000000
> >     Using Device Tree in place at 43000000, end 43008f07
> > Starting kernel ...
> > [    0.000000] Booting Linux on physical CPU 0x0
> > [    0.000000] Linux version 5.6.0-rc4 (compile@Red) (gcc version 8.3.0 (Gentoo 8.3.0-r1 p1.1)) #21 SMP Tue Mar 3 15:07:20 CET 2020
> > [    0.000000] CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7), cr=12c5387d
> > [    0.000000] CPU: div instructions available: patching division code
> > [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
> > [    0.000000] OF: fdt: Machine model: Banana Pi BPI-M3
> > [    0.000000] earlycon: uart0 at MMIO32 0x01c28000 (options '')
> > [    0.000000] printk: bootconsole [uart0] enabled
> > [    0.000000] Memory policy: Data cache writealloc
> > [    0.000000] cma: Reserved 16 MiB at 0xbf000000
> > [    0.000000] percpu: Embedded 15 pages/cpu s31320 r8192 d21928 u61440
> > [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 522752
> > [    0.000000] Kernel command line: console=ttyS0,115200n8 root=/dev/ram0 earlycon=uart,mmio32,0x01c28000 ip=dhcp
> > [    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes, linear)
> > [    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes, linear)
> > [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
> > [    0.000000] Memory: 2019352K/2097152K available (7168K kernel code, 485K rwdata, 2832K rodata, 1024K init, 248K bss, 61416K reserved, 16384K cma-reserved, 1294336K highmem)
> > [    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=8, Nodes=1
> > [    0.000000] rcu: Hierarchical RCU implementation.
> > [    0.000000] rcu: 	RCU event tracing is enabled.
> > [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 10 jiffies.
> > [    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
> > [    0.000000] random: get_random_bytes called from start_kernel+0x2a4/0x440 with crng_init=0
> > [    0.000000] arch_timer: cp15 timer(s) running at 24.00MHz (virt).
> > [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x588fe9dc0, max_idle_ns: 440795202592 ns
> > [    0.000008] sched_clock: 56 bits at 24MHz, resolution 41ns, wraps every 4398046511097ns
> > [    0.008636] Switching to timer-based delay loop, resolution 41ns
> > [    0.015439] clocksource: timer: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 79635851949 ns
> > [    0.025876] Console: colour dummy device 80x30
> > [    0.030743] Calibrating delay loop (skipped), value calculated using timer frequency.. 48.00 BogoMIPS (lpj=240000)
> > [    0.041927] pid_max: default: 32768 minimum: 301
> > [    0.047093] Mount-cache hash table entries: 2048 (order: 1, 8192 bytes, linear)
> > [    0.055003] Mountpoint-cache hash table entries: 2048 (order: 1, 8192 bytes, linear)
> > [    0.064553] CPU: Testing write buffer coherency: ok
> > [    0.070534] /cpus/cpu@0 missing clock-frequency property
> > [    0.076282] /cpus/cpu@1 missing clock-frequency property
> > [    0.082071] /cpus/cpu@2 missing clock-frequency property
> > [    0.087816] /cpus/cpu@3 missing clock-frequency property
> > [    0.093560] /cpus/cpu@100 missing clock-frequency property
> > [    0.099498] /cpus/cpu@101 missing clock-frequency property
> > [    0.105441] /cpus/cpu@102 missing clock-frequency property
> > [    0.111363] /cpus/cpu@103 missing clock-frequency property
> > [    0.117292] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
> > [    0.124164] Setting up static identity map for 0x40100000 - 0x40100060
> > [    0.131496] ARM CCI driver probed
> > [    0.135832] sunxi multi cluster SMP support installed
> > [    0.141784] rcu: Hierarchical SRCU implementation.
> > [    0.147537] smp: Bringing up secondary CPUs ...
> > 
> > I will try to redo the bisect
> 
> Hmm, if there was a horribly subtle endianness/uninitialised data bug 
> (or combination thereof) that led to somehow falling into the middle of 
> the PSCI or spectre code and issuing a spurious SMC/HVC to non-existent 
> firmware at secondary bringup, it might well look exactly like that...
> 
> If different values of CONFIG_PSCI and CONFIG_HARDEN_BRANCH_PREDICTOR 
> make any difference to a failing build then that might lend weight to 
> that theory. Assuming the initial bisection is reliable then 
> 6848253ddeae and/or a5520eac4d2d would seem like the most likely 
> suspects for perturbing whatever subtlety is at play in this case.
> 

Hello

I have tried to disable CONFIG_PSCI and CONFIG_HARDEN_BRANCH_PREDICTOR without any visible change.

Furthermore, the problem seems to happen on random place but replicable.
For example I hit the problem on v5.3 v5.1 and v5.1-rc4 but not on v5.4 v5.2 and v5.0.

But when the kernel boot, at least SMP is still non-functionnal:
[    0.000000] Booting Linux on physical CPU 0x0
[    0.000000] Linux version 5.2.0 (compile@Red) (gcc version 8.3.0 (Gentoo 8.3.0-r1 p1.1)) #74 SMP Thu Mar 5 18:16:17 CET 2020
[    0.000000] CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7), cr=12c5387d
[    0.000000] CPU: div instructions available: patching division code
[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
[    0.000000] OF: fdt: Machine model: Banana Pi BPI-M3
[    0.000000] earlycon: uart0 at MMIO32 0x01c28000 (options '')
[    0.000000] printk: bootconsole [uart0] enabled
[    0.000000] Memory policy: Data cache writealloc
[    0.000000] cma: Reserved 16 MiB at 0x6f000000
[    0.000000] percpu: Embedded 16 pages/cpu s35288 r8192 d22056 u65536
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 522752
[    0.000000] Kernel command line: console=ttyS0,115200n8 root=/dev/ram0 earlycon=uart,mmio32,0x01c28000 ip=dhcp
[    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)
[    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
[    0.000000] Memory: 2022028K/2097152K available (6144K kernel code, 460K rwdata, 2512K rodata, 1024K init, 243K bss, 58740K reserved, 16384K cma-reserved, 1310720K highmem)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=8, Nodes=1
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] rcu: 	RCU event tracing is enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 10 jiffies.
[    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
[    0.000000] random: get_random_bytes called from start_kernel+0x29c/0x434 with crng_init=0
[    0.000000] arch_timer: cp15 timer(s) running at 24.00MHz (virt).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x588fe9dc0, max_idle_ns: 440795202592 ns
[    0.000010] sched_clock: 56 bits at 24MHz, resolution 41ns, wraps every 4398046511097ns
[    0.008648] Switching to timer-based delay loop, resolution 41ns
[    0.015394] clocksource: timer: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 79635851949 ns
[    0.025772] Console: colour dummy device 80x30
[    0.030645] Calibrating delay loop (skipped), value calculated using timer frequency.. 48.00 BogoMIPS (lpj=240000)
[    0.041811] pid_max: default: 32768 minimum: 301
[    0.046975] Mount-cache hash table entries: 2048 (order: 1, 8192 bytes)
[    0.054128] Mountpoint-cache hash table entries: 2048 (order: 1, 8192 bytes)
[    0.062813] CPU: Testing write buffer coherency: ok
[    0.068770] /cpus/cpu@0 missing clock-frequency property
[    0.074519] /cpus/cpu@1 missing clock-frequency property
[    0.080284] /cpus/cpu@2 missing clock-frequency property
[    0.086015] /cpus/cpu@3 missing clock-frequency property
[    0.091762] /cpus/cpu@100 missing clock-frequency property
[    0.097695] /cpus/cpu@101 missing clock-frequency property
[    0.103626] /cpus/cpu@102 missing clock-frequency property
[    0.109563] /cpus/cpu@103 missing clock-frequency property
[    0.115493] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
[    0.122353] Setting up static identity map for 0x40100000 - 0x40100060
[    0.129704] ARM CCI driver probed
[    0.133988] sunxi multi cluster SMP support installed
[    0.139930] rcu: Hierarchical SRCU implementation.
[    0.145669] smp: Bringing up secondary CPUs ...
[    1.161271] CPU1: failed to come online
[    2.201772] CPU2: failed to come online
[    3.242379] CPU3: failed to come online
[    4.282996] CPU4: failed to come online
[    5.323613] CPU5: failed to come online
[    6.364233] CPU6: failed to come online
[    7.404842] CPU7: failed to come online
[    7.409038] smp: Brought up 1 node, 1 CPU
[    7.413357] SMP: Total of 1 processors activated (48.00 BogoMIPS).
[    7.420045] CPU: All CPU(s) started in SVC mode.

Sometime(5.3 and v5.4-rc3 for example) instead of behing stuck, it reboot with
BUG: spinlock cpu recursion on CPU#0, swapper/0/0

This replicable alternate of working/non-working is very strange.
I have started to run boot multiple times to be sure it is really replicable (2 3 boots is not enough).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
