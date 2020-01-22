Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB18144E95
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 10:22:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Wp7amVjZiuHI96yxgUjqYyTHyHZ0OE4nBwhbw3M9yw=; b=a7tgX+ScFJxiNq
	s7Gkbujel4hgPvL63tUPieTctSP1SKAy+w2VHyYCzvYB+yscwiSnlBSQkaCd9lFDU9hFMNZ9TkqjO
	naXd5jDkkttXmx8fM+0jsB4R0z0yTQHsO41M05wzMYSbYmr/3affyggiMPtP61O0fUxUIShfFLPmm
	rhQ4Is2TRRedtLck7tfHB7yu+gOy7fgj+NecaMOjBI+vDyR40mh/W+bPicWpvT0YBq/XKR1XDkQPI
	l3ARd6sM/mf+yF0r4cKbTIWlnNXV9S1sxM6RzbmhLXYyGNFODQX2lhB73aXMp0XLLTXSzbnq8P9Ju
	tVFCu9tV8RDq0d3WkLnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuCDl-0004gV-7I; Wed, 22 Jan 2020 09:22:45 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuCDV-0004Wz-ER
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 09:22:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bZLYZJXrEaz+jQOkNIoCqZRe5JHYpdYQ9pv55rpzWsc=; b=d3fRwpGTfnDC6AxeOw+NBL9o8
 LlD3kws24JusDtvbdCPiqp6a+wv/x6gXi2e0S6Fz+7JxD4w6vW7q9UusOoN6QkAsP7y3fGciKa8at
 nR3ayy1SUcxeeNH6KcJtJGS7AG0HNiYXYwoGAF7SkszcGdG6gyMrPGP3PKEnqMcAhW1XrJPDUiXaL
 OKkBiWbsVwdgoqLwk2wTC93p1vQZWCB7CTi9k835nGW/HF5SxP0FD+6i4GfLefjuT9Ma+BnyqNZW0
 QtaZ4lHAgI1CgwNu4w4vrHl1uhJ8zIJaCkMJDhkPC1jmP5Ypxpt7zVt5hIkdjazAmfdqfAlcDyJ19
 h1HVHpekA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:58304)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iuCDO-0001yU-ID; Wed, 22 Jan 2020 09:22:22 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iuCDN-0004iq-Jk; Wed, 22 Jan 2020 09:22:21 +0000
Date: Wed, 22 Jan 2020 09:22:21 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Stefan Lehner <stefan-lehner@aon.at>
Subject: Re: StrongARM SA-1110 / SA-1111 and Kernel 4.9.210 (Jornada 720)
Message-ID: <20200122092221.GL25745@shell.armlinux.org.uk>
References: <001a01d5d0fb$5f85ca70$1e915f50$@at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <001a01d5d0fb$5f85ca70$1e915f50$@at>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_012230_762309_B13DF5E0 
X-CRM114-Status: GOOD (  24.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 22, 2020 at 09:10:13AM +0100, Stefan Lehner wrote:
> Hi!
> I like to get a newer Linux Kernel running on my Jornada 720. It has a
> StrongArm SA-1110 CPU and the SA-1111 companion chip. =

> I patched the kernel source with the BX emulation to run a newer Debian
> userland. The kernel compiled fine. =

> It starts to boot on the Jornada with the linexec bootloader. But it seems
> that it doesnt detect any CF or PCMCIA card. I managed to get the
> jornada720_pcmcia_configure_socket() running and it detects the card and
> powers it up with the correct voltage (3V for the CF card in socket 1).

What was required for that?

> But
> thats all. No CF card is being recognized and so the IDE driver cannot lo=
ad
> the card. The same thing happens if i insert a PCMCIA card into socket 0,
> jornada720_pcmcia_configure_socket() powers it up with the correct voltage
> but the card itself is not recognized. =A0I hope that somebody can help m=
e or
> give me a hint to solve this!

Have you tried "rootdelay=3D2" on the kernel command line, just in case
it needs a bit of time to run other threads to probe the card?

> =

> Thanks =

> Stefan
> =

> Here ist the console output:
> =

> --------linexec--------
> LinExec: UART Initialized.
> LinExec: UART Initialized.
> LinExec: UART Initialized.
> LinExec: Beginning boot_linux.
> LinExec: Passing the point of no return.. Now.
> LinExec: Entering DRAMloader...
> Booting Linux on physical CPU 0x0
> Linux version 4.9.210 (stefan@spnub1804work) (gcc version 7.4.0
> (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) ) #2 Tue Jan 21 09:37:28 UTC 2020
> CPU: StrongARM-1110 [6901b118] revision 8 (ARMv4), cr=3Dc020717f
> CPU: VIVT data cache, VIVT instruction cache
> Machine: HP Jornada 720
> Memory policy: Data cache writeback
> Built 1 zonelists in Zone order, mobility grouping on.=A0 Total pages: 32=
512
> Kernel command line: root=3D/dev/hda2 mem=3D128m console=3DttySA0,115200n8
> PID hash table entries: 512 (order: -1, 2048 bytes)
> Dentry cache hash table entries: 16384 (order: 4, 65536 bytes)
> Inode-cache hash table entries: 8192 (order: 3, 32768 bytes)
> Memory: 126100K/131072K available (2844K kernel code, 114K rwdata, 596K
> rodata, 120K init, 83K bss, 4972K reserved, 0K cma-reserved)
> Virtual kernel memory layout:
> =A0=A0=A0 vector=A0 : 0xffff0000 - 0xffff1000=A0=A0 (=A0=A0 4 kB)
> =A0=A0=A0 fixmap=A0 : 0xffc00000 - 0xfff00000=A0=A0 (3072 kB)
> =A0=A0=A0 vmalloc : 0xc8800000 - 0xff800000=A0=A0 ( 880 MB)
> =A0=A0=A0 lowmem=A0 : 0xc0000000 - 0xc8000000=A0=A0 ( 128 MB)
> =A0=A0=A0 modules : 0xbf000000 - 0xc0000000=A0=A0 (=A0 16 MB)
> =A0=A0=A0=A0=A0 .text : 0xc0208000 - 0xc04cf390=A0=A0 (2845 kB)
> =A0=A0=A0=A0=A0 .init : 0xc0566000 - 0xc0584000=A0=A0 ( 120 kB)
> =A0=A0=A0=A0=A0 .data : 0xc0584000 - 0xc05a09a0=A0=A0 ( 115 kB)
> =A0=A0=A0=A0=A0=A0 .bss : 0xc05a09a0 - 0xc05b5828=A0=A0 (=A0 84 kB)
> SLUB: HWalign=3D32, Order=3D0-3, MinObjects=3D0, CPUs=3D1, Nodes=3D1
> NR_IRQS:16 nr_irqs:61 61
> irq: Cannot allocate irq_descs @ IRQ1, assuming pre-allocated
> irq: Cannot allocate irq_descs @ IRQ33, assuming pre-allocated
> sched_clock: 32 bits at 3686kHz, resolution 271ns, wraps every
> 582542222200ns
> clocksource: oscr0: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns:
> 518462577799 ns
> Console: colour dummy device 30x40
> console [ttySA0] enabled
> Calibrating delay loop... 136.60 BogoMIPS (lpj=3D683008)
> pid_max: default: 32768 minimum: 301
> Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
> Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)
> CPU: Testing write buffer coherency: ok
> Setting up static identity map for 0xc0208240 - 0xc0208298
> clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_n=
s:
> 19112604462750000 ns
> futex hash table entries: 256 (order: -1, 3072 bytes)
> NET: Registered protocol family 16
> DMA: preallocated 256 KiB pool for atomic coherent allocations
> SA1111 Microprocessor Companion Chip: silicon revision 1, metal revision 1
> sa1111 sa1111.0: Providing IRQ61-115
> sa1111-rab 0400: dmabounce: registered device
> sa1111-rab 0600: dmabounce: registered device
> clocksource: Switched to clocksource oscr0
> genirq: Setting trigger mode 3 for irq 112 failed (sa1111_type_irq+0x0/0x=
8c)
> genirq: Setting trigger mode 3 for irq 114 failed (sa1111_type_irq+0x0/0x=
8c)
> jornada720_pcmcia_configure_socket(): config socket 0 vcc 0 vpp 0
> genirq: Setting trigger mode 3 for irq 113 failed (sa1111_type_irq+0x0/0x=
8c)
> genirq: Setting trigger mode 3 for irq 115 failed (sa1111_type_irq+0x0/0x=
8c)
> jornada720_pcmcia_configure_socket(): config socket 1 vcc 0 vpp 0
> NET: Registered protocol family 2
> TCP established hash table entries: 1024 (order: 0, 4096 bytes)
> TCP bind hash table entries: 1024 (order: 0, 4096 bytes)
> TCP: Hash tables configured (established 1024 bind 1024)
> UDP hash table entries: 256 (order: 0, 4096 bytes)
> UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
> NET: Registered protocol family 1
> NetWinder Floating Point Emulator V0.97 (double precision)
> SSP: device initialized with irq
> workingset: timestamp_bits=3D30 max_order=3D15 bucket_order=3D0
> io scheduler noop registered
> io scheduler deadline registered
> io scheduler cfq registered (default)
> Epson S1D13XXX FB Driver
> s1d13xxxfb: chip production id 4 =3D S1D13506
> s1d13xxxfb: chip revision 1
> s1d13xxxfb: regs mapped at 0xf0000000, fb 512 KiB mapped at 0xf1000000
> Console: switching to colour frame buffer device 80x30
> fb0: S1D13xxx frame buffer device
> Serial: SA11x0 driver
> sa11x0-uart.1: ttySA1 at MMIO 0x80010000 (irq =3D 16, base_baud =3D 23040=
0) is a
> SA1100
> sa11x0-uart.3: ttySA0 at MMIO 0x80050000 (irq =3D 18, base_baud =3D 23040=
0) is a
> SA1100
> loop: module loaded
> jornada720_pcmcia_configure_socket(): config socket 1 vcc 33 vpp 33
> nbd: registered device at major 43
> Uniform Multi-Platform E-IDE driver
> ide-gd driver 1.18
> mousedev: PS/2 mouse device common for all mice
> input: HP Jornada 720 keyboard as
> /devices/platform/jornada720_kbd/input/input0
> input: HP Jornada 7xx Touchscreen as
> /devices/platform/jornada_ts/input/input1
> sa1100-rtc sa1100-rtc: rtc core: registered sa1100-rtc as rtc0
> NET: Registered protocol family 17
> Registering BX emulation handler
> sa1100-rtc sa1100-rtc: setting system clock to 1970-01-01 00:00:22 UTC (2=
2)
> VFS: Cannot open root device "hda2" or unknown-block(0,0): error -6
> Please append a correct "root=3D" boot option; here are the available
> partitions:
> Kernel panic - not syncing: VFS: Unable to mount root fs on
> unknown-block(0,0)
> CPU: 0 PID: 1 Comm: swapper Not tainted 4.9.210 #2
> Hardware name: HP Jornada 720
> Backtrace:
> [<c0212f30>] (dump_backtrace) from [<c02131e4>] (show_stack+0x18/0x1c)
> r6:00008000 r5:00000000 r4:c05a0c08
> [<c02131cc>] (show_stack) from [<c036b604>] (dump_stack+0x20/0x28)
> [<c036b5e4>] (dump_stack) from [<c0271640>] (panic+0xb8/0x23c)
> [<c027158c>] (panic) from [<c0567204>] (mount_block_root+0x22c/0x310)
> r3:00000000 r2:00000000 r1:c0131ee0 r0:c052296c
> r7:c7a99000
> [<c0566fd8>] (mount_block_root) from [<c0567344>] (mount_root+0x5c/0x78)
> r10:c057c838 r9:00000009 r8:c0563ee0 r7:c057c834 r6:00000008 r5:c057c86d
> r4:00000000
> [<c05672e8>] (mount_root) from [<c0567484>] (prepare_namespace+0x124/0x17=
4)
> r4:c05a09c4
> [<c0567360>] (prepare_namespace) from [<c0566dfc>]
> (kernel_init_freeable+0x180/0x1c8)
> r5:c05a09a0 r4:00000052
> [<c0566c7c>] (kernel_init_freeable) from [<c04cb5e4>]
> (kernel_init+0x10/0xf8)
> r10:00000000 r9:00000000 r8:00000000 r7:00000000 r6:00000000 r5:c04cb5d4
> r4:00000000
> [<c04cb5d4>] (kernel_init) from [<c0210268>] (ret_from_fork+0x14/0x2c)
> r4:00000000
> ---[ end Kernel panic - not syncing: VFS: Unable to mount root fs on
> unknown-block(0,0)
> random: fast init done
> random: crng init done
> =

> =

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> =


-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
