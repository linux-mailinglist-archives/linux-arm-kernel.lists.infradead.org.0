Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 251301557C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 13:30:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QLmdWx79VV1u8prOtfbvLg8BH94/+BQ+8CTYuP54Enw=; b=cNRAUjpnGUkA2I
	3qla3Si1dsuuwbVd2pSaqNNlHpFYUAlF/c00rnskX/o3MyNnCrEJ5WaYBVtk/oENbWluSqhuSz3ag
	zs8mxUxMmQBi+LEmsD1Z7SBdyQ6gkyON2DFAkVYDL/ymGQ2b+GngYZE753UIMRVfdru0Ss328efmE
	egpUsz0HTb872hlAlj6EZlyc+B//8rSut9uxsdlnhgAVMz8n8TtTtPdvCg2XYYntwdVyQL9BEsGra
	hFeJ+50q3zfZutyZnvE0yCVjSf4pEEb/2+fb15XHO0k51VNa81E4OP4v+hRZUrHL1wWj1+BUWuWJ8
	8b98hXFI9QNZSYA/bNyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j02lc-0005yV-6h; Fri, 07 Feb 2020 12:29:52 +0000
Received: from smtpout.aon.at ([195.3.96.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j02jN-00040t-4i
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 12:27:36 +0000
Received: (qmail 17647 invoked from network); 7 Feb 2020 12:27:30 -0000
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 WARSBL604.highway.telekom.at
X-Spam-Level: 
Received: from 91-114-188-72.adsl.highway.telekom.at (HELO DESKTOP26LQET5)
 ([91.114.188.72]) (envelope-sender <stefan-lehner@aon.at>)
 by smarthub77.res.a1.net (qmail-ldap-1.03) with DHE-RSA-AES256-GCM-SHA384
 encrypted SMTP
 for <linux-arm-kernel@lists.infradead.org>; 7 Feb 2020 12:27:29 -0000
X-A1Mail-Track-Id: 1581078449:17630:smarthub77:91.114.188.72:1
From: "Stefan Lehner" <stefan-lehner@aon.at>
To: <linux-arm-kernel@lists.infradead.org>
Subject: SA-1111 USB OHCI driver (Jornada 720) - overcurrent condition
Date: Fri, 7 Feb 2020 13:27:27 +0100
Message-ID: <002e01d5ddb1$f5c95520$e15bff60$@at>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Content-Language: de-at
Thread-Index: AdXdsfVk0PhJiLTwSauWoKAr//HDdw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_042733_663592_256D494D 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [195.3.96.112 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [stefan-lehner[at]aon.at]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.3.96.112 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!
I am trying to get USB Host working on my HP Jornada 720. I did some
hardware modifications to access the USB lines on the SA-1111. The hardware
part should be ok, wiring is done as described in the SA-1111 development
module schematics. 
Tested on Kernel 3.16.81 (Debian 5) and Kernel 4.8.7 with BX emulation
(Debian 9).
The driver loads fine and turns on the USB port a short time during boot.
But after that i always get  "hub 1-0:1.0: over-current condition" in dmesg.
And it turns USB_PWRCNTL high. So the USB power gets cut off.
I tested it on my modified mainboard and on two unmodified boards which have
per default USB_PWR_SENSE tied to 3,3V high. So from hardware side there is
no current drawn and no overcurrent signal sent to the SA-1111 .

Anyone has a glue whats wrong here?



dmesg output from a unmodified unit (Kernel 3.16.81):

--------linexec--------
LinExec: UART Initialized.
LinExec: UART Initialized.
LinExec: UART Initialized.
LinExec: Beginning boot_linux.
LinExec: Passing the point of no return.. Now.
LinExec: Entering DRAMloader...
Booting Linux on physical CPU 0x0
Linux version 3.16.81 (stefan@spnub1804work) (gcc version 7.4.0
(Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) ) #3 Fri Feb 7 11:15:16 UTC 2020
CPU: StrongARM-1110 [6901b118] revision 8 (ARMv4), cr=c020717f
CPU: VIVT data cache, VIVT instruction cache
Machine: HP Jornada 720
Memory policy: Data cache writeback
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 8128
Kernel command line: root=/dev/hda2 mem=32m rootdelay=2
console=ttySA0,115200n8
PID hash table entries: 128 (order: -3, 512 bytes)
Dentry cache hash table entries: 4096 (order: 2, 16384 bytes)
Inode-cache hash table entries: 2048 (order: 1, 8192 bytes)
Memory: 28640K/32768K available (2735K kernel code, 121K rwdata, 736K
rodata, 93K init, 77K bss, 4128K reserved)
Virtual kernel memory layout:
    vector  : 0xffff0000 - 0xffff1000   (   4 kB)
    fixmap  : 0xffc00000 - 0xffe00000   (2048 kB)
    vmalloc : 0xc2800000 - 0xff000000   ( 968 MB)
    lowmem  : 0xc0000000 - 0xc2000000   (  32 MB)
    modules : 0xbf000000 - 0xc0000000   (  16 MB)
      .text : 0xc0208000 - 0xc056be64   (3472 kB)
      .init : 0xc056c000 - 0xc0583484   (  94 kB)
      .data : 0xc0584000 - 0xc05a2520   ( 122 kB)
       .bss : 0xc05a2520 - 0xc05b5cd4   (  78 kB)
SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
NR_IRQS:16 nr_irqs:49 49
sched_clock: 32 bits at 3686kHz, resolution 271ns, wraps every
1165084444400ns
Console: colour dummy device 30x40
console [ttySA0] enabled
Calibrating delay loop... 136.60 BogoMIPS (lpj=683008)
pid_max: default: 32768 minimum: 301
Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)
CPU: Testing write buffer coherency: ok
Setting up static identity map for 0xc04b1db8 - 0xc04b1e10
futex hash table entries: 256 (order: -1, 3072 bytes)
NET: Registered protocol family 16
DMA: preallocated 256 KiB pool for atomic coherent allocations
SA1111 Microprocessor Companion Chip: silicon revision 1, metal revision 1
sa1111 sa1111.0: Providing IRQ49-103
sa1111-rab 0400: dmabounce: registered device
sa1111-rab 0600: dmabounce: registered device
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
Switched to clocksource oscr
genirq: Setting trigger mode 3 for irq 100 failed
(sa1111_type_highirq+0x0/0x80)
genirq: Setting trigger mode 3 for irq 102 failed
(sa1111_type_highirq+0x0/0x80)
jornada720_pcmcia_configure_socket(): config socket 0 vcc 0 vpp 0
genirq: Setting trigger mode 3 for irq 101 failed
(sa1111_type_highirq+0x0/0x80)
genirq: Setting trigger mode 3 for irq 103 failed
(sa1111_type_highirq+0x0/0x80)
jornada720_pcmcia_configure_socket(): config socket 1 vcc 0 vpp 0
NET: Registered protocol family 2
TCP established hash table entries: 1024 (order: 0, 4096 bytes)
TCP bind hash table entries: 1024 (order: 0, 4096 bytes)
TCP: Hash tables configured (established 1024 bind 1024)
TCP: reno registered
UDP hash table entries: 256 (order: 0, 4096 bytes)
UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
NET: Registered protocol family 1
NetWinder Floating Point Emulator V0.97 (double precision)
SSP: device initialized with irq
msgmni has been set to 55
io scheduler noop registered
io scheduler deadline registered
io scheduler cfq registered (default)
Epson S1D13XXX FB Driver
s1d13xxxfb: chip production id 4 = S1D13506
s1d13xxxfb: chip revision 1
s1d13xxxfb: regs mapped at 0xf0000000, fb 512 KiB mapped at 0xf1000000
Console: switching to colour frame buffer device 80x30
fb0: S1D13xxx frame buffer device
Serial: SA11x0 driver
sa11x0-uart.1: ttySA1 at MMIO 0x80010000 (irq = 15, base_baud = 230400) is a
SA1100
sa11x0-uart.3: ttySA0 at MMIO 0x80050000 (irq = 17, base_baud = 230400) is a
SA1100
loop: module loaded
nbd: registered device at major 43
Uniform Multi-Platform E-IDE driver
ide-gd driver 1.18
ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
sa1111-ohci 0400: SA-1111 OHCI
sa1111-ohci 0400: new USB bus registered, assigned bus number 1
sa1111-ohci 0400: irq 93, io mem 0x40000400
jornada720_pcmcia_configure_socket(): config socket 1 vcc 33 vpp 33
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 1 port detected
mousedev: PS/2 mouse device common for all mice
input: HP Jornada 720 keyboard as
/devices/platform/jornada720_kbd/input/input0
input: HP Jornada 7xx Touchscreen as
/devices/platform/jornada_ts/input/input1
rtc (null): invalid alarm value: 1900-1-1 0:0:0
sa1100-rtc sa1100-rtc: rtc core: registered sa1100-rtc as rtc0
usbcore: registered new interface driver usbhid
usbhid: USB HID core driver
TCP: cubic registered
NET: Registered protocol family 17
lib80211: common routines for IEEE802.11 drivers
sa1100-rtc sa1100-rtc: setting system clock to 1970-01-01 00:01:33 UTC (93)
Waiting 2 sec before mounting root device...
jornada720_pcmcia_configure_socket(): config socket 1 vcc 33 vpp 33
jornada720_pcmcia_configure_socket(): config socket 1 vcc 33 vpp 33
pcmcia_socket pcmcia_socket1: pccard: PCMCIA card inserted into slot 1
pcmcia 1.0: pcmcia: registering new device pcmcia1.0 (IRQ: 99)
jornada720_pcmcia_configure_socket(): config socket 1 vcc 33 vpp 0
jornada720_pcmcia_configure_socket(): config socket 1 vcc 33 vpp 0
hub 1-0:1.0: over-current condition
hda: TS8GCF133, CFA DISK drive
hdb: probing with STATUS(0x00) instead of ALTSTATUS(0x50)
hdb: probing with STATUS(0x00) instead of ALTSTATUS(0x50)
ide0 at 0xc2880000-0xc2880007,0xc288000e on irq 99
bounce: isa pool size: 16 pages
hda: max request size: 512KiB
hda: 15662304 sectors (8019 MB) w/1KiB Cache, CHS=15538/255/63
 hda: hda1 hda2 hda3
ide-cs 1.0: ide-cs: hda: Vpp = 0.0
VFS: Mounted root (ext2 filesystem) on device 3:2.
Freeing unused kernel memory: 92K (c056c000 - c0583000)
modprobe: FATAL: Could not load /lib/modules/3.16.81/modules.dep: No such
file or directory

INIT: version 2.86 booting...
...



Regards and Thanks
Stefan Lehner


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
