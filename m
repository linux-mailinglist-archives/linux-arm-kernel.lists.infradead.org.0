Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B66BB95F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 18:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XZzzlj7cEtrqjAVF5U7FY75QnNZlTd8qPrbAHr+IgY=; b=SYzQuM3zLiUYWG
	fuBRKhRo7OvxLGagZmXS65eOiD/X4VjyvNFEZGb+zBKNgv00kmupCuY1kt4oLzp478iQ0JIN0ak0n
	x5nxqm5aH0UbRgFi6SoMZwCq2gZH8Y8xjBdETDR1OYJkcp0cWEWhmNvF/zzwzskvXrk25481jVa8u
	GHdVgaljCu/WiKez1vlx03WhG36Y0z4V9ai/2+93aqvgYtfNwBm8u+cSjvEMsIemNBAc6Ot7bmY5Y
	FMjhGbioMBMPz+x2Nl5s2pyT5gMW8bBCSiK/xTa08Bc/EqOIPh5/L/vjJbNMmu5dh8J2UkAraqkDx
	hw7t9ocoT6Bg7yWmnB6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCR0U-0005b3-Ks; Mon, 23 Sep 2019 16:16:10 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQz3-0003HK-Jf
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 16:14:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OJEmNf/6r2qtkXIfVrPmpva5EoufV6jod8KLHG9h6gM=; b=Rw0IgWoW0+9k0wMNQDBPTFk01
 nLcgyOb0SqyfsWOFPedthgYbckCvJ/doCJoXesxesimDVoQiWJBVdglrO2LddCgGVJy6cs6rD+Dtx
 5JOGo+GRM/PR7Z3cyrCj/uXJFHGq55UDbEXhUHI1/zAYd7TZu0mxJ3S9noBmPX/YLC116sFTUuHx3
 xCQR1rFbrtAlL/Ofu53WhFT+3g6oXGQhrf4NcQE2iwmTfsw0IadK/IytKqLRGYTf51h3UyWhlar+w
 B6zjaj21EB+eaariw061nVefGY3TeuX7JKUlQacI+0LRomltvdASsGSKX1cWE08KGLzVLYFKdLUkM
 /xbEWosHA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:43164)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iCQyq-0005FM-5z; Mon, 23 Sep 2019 17:14:28 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iCQyl-0000RY-Py; Mon, 23 Sep 2019 17:14:23 +0100
Date: Mon, 23 Sep 2019 17:14:23 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Yu Chen <33988979@163.com>
Subject: Re: [PATCH] arm: export memblock_reserve()d regions via /proc/iomem
Message-ID: <20190923161423.GU25745@shell.armlinux.org.uk>
References: <1569253374-3631-1-git-send-email-33988979@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569253374-3631-1-git-send-email-33988979@163.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_091443_706417_60C359EC 
X-CRM114-Status: GOOD (  21.56  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: yu.chen3@zte.com.cn, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 11:42:54PM +0800, Yu Chen wrote:
> From: Yu Chen <yu.chen3@zte.com.cn>
> 
> On Sat, 21 Sep 2019 15:51:38, Russell King - ARM Linux admin wrote:
> > On Sat, Sep 21, 2019 at 09:02:49PM +0800, Yu Chen wrote:
> > > From: Yu Chen <yu.chen3@zte.com.cn> 
> > >  
> > > memblock reserved regions are not reported via /proc/iomem on ARM, kexec's
> > > user-space doesn't know about memblock_reserve()d regions and thus
> > > possible for kexec to overwrite with the new kernel or initrd.
> > 
> > Many reserved regions come from the kernel allocating memory during
> > boot.  We don't want to prevent kexec re-using those regions.
> > 
> > > [    0.000000] Booting Linux on physical CPU 0xf00
> > > [    0.000000] Linux version 4.9.115-rt93-dirty (yuchen@localhost.localdomain) (gcc version 6.2.0 (ZTE Embsys-TSP V3.07.2
> > > 0) ) #62 SMP PREEMPT Fri Sep 20 10:39:29 CST 2019
> > > [    0.000000] CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7), cr=30c5387d
> > > [    0.000000] CPU: div instructions available: patching division code
> > > [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
> > > [    0.000000] OF: fdt:Machine model: LS1021A TWR Board
> > > [    0.000000] INITRD: 0x80f7f000+0x03695e40 overlaps in-use memory region - disabling initrd
> > 
> > Is the overlapping region one that is marked as reserved in DT?
> 
> the overlapping region is not reserved in DT.
> 
> > Where is the reserved region that overlaps the initrd coming from?
> 
> I found the reserved region that overlaps the initrd is kernel code & data, 
> with memblock=debug cmdline start new kerne:
> 
> / # kexec -l uImage-ls1021a --ramdisk=ramdisk-ls1021a --dtb=fdt --append="root=/
> dev/ram0 rw console=ttyS0,115200 earlyprintk memblock=debug" -d
> Try gzip decompression.
> Try LZMA decompression.
> lzma_decompress_file: read on uImage-ls1021a of 65536 bytes failed
> kernel: 0xb6c71008 kernel_size: 0x317ab8
> MEMORY RANGES
> 0000000080000000-00000000bfffffff (0)
> 0000000080003000-0000000080007fff (1)
> 0000000080e00000-0000000080ffffff (1)
> 00000000810c45a4-00000000810c4fff (1)
> 0000000081ac4000-0000000085159fff (1)
> 000000008515a000-000000008515ffff (1)
> 0000000088000000-000000008b695fff (1)
> 000000008f000000-000000008f004fff (1)
> 00000000af709000-00000000af7eafff (1)
> 00000000af7ed000-00000000afffbfff (1)
> 00000000afffc000-00000000afffcfff (1)
> 00000000afffd000-00000000afffffff (1)
> 00000000bc000000-00000000bfffffff (1)
> zImage header: 0x016f2818 0x00000000 0x00317a78
> zImage size 0x317a78, file size 0x317a78

I see nothing here that suggests either a new kexec or a sufficiently
new kernel.  Hence, kexec lacks all the information to correctly layout
the images in physical memory.

The kernel was augmented with additional information around the
v4.15 time.  See commits:

c772568788b5 ARM: add additional table to compressed kernel
429f7a062e3b ARM: decompressor: fix BSS size calculation
99cf8f903148 ARM: better diagnostics with missing/corrupt dtb

There may be some others also needed, but I forget now, it was two
years ago.

For kexec, you need at least 2.0.17 (2.0.16 merged the wrong version
of one of my patches.)

> kexec_load: entry = 0x80008000 flags = 0x280000
> nr_segments = 3
> segment[0].buf   = 0xb6c71048
> segment[0].bufsz = 0x317a78
> segment[0].mem   = 0x80008000
> segment[0].memsz = 0x318000
> segment[1].buf   = 0xb35db048
> segment[1].bufsz = 0x3695e40
> segment[1].mem   = 0x80f7f000
> segment[1].memsz = 0x3696000
> segment[2].buf   = 0x100b108
> segment[2].bufsz = 0x5090
> segment[2].mem   = 0x84615000
> segment[2].memsz = 0x6000
> / # kexec -e
> [  126.583598] kexec_core: Starting new kernel
> [  126.587815] Disabling non-boot CPUs ...
> [  126.626917] CPU1: shutdown
> [  126.656344] Retrying again to check for CPU kill
> [  126.660947] CPU1 killed.
> [  126.687585] Bye!
> [    0.000000] Booting Linux on physical CPU 0xf00
> [    0.000000] Linux version 4.9.115-rt93-CGEL-V6.02.10.R4-dirty (yuchen@localhost.localdomain) (gcc version 6.2.0 (ZTE Embsys-TSP V3.07.20) ) #62 SMP PREEMPT Fri Sep 20 10:39:29 CST 2019
> [    0.000000] CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7), cr=30c5387d
> [    0.000000] CPU: div instructions available: patching division code
> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
> [    0.000000] OF: fdt:Machine model: LS1021A TWR Board
> [    0.000000] memblock_reserve: [0x00000080200000-0x000000810c45a3] flags 0x0 arm_memblock_init+0x44/0x23c
> [    0.000000] INITRD: 0x80f7f000+0x03695e40 overlaps in-use memory region - disabling initrd
> [    0.000000] memblock_reserve: [0x00000080003000-0x00000080007fff] flags 0x0 arm_mm_memblock_reserve+0x2c/0x30
> [    0.000000] memblock_reserve: [0x00000084615000-0x0000008461a08f] flags 0x0 early_init_dt_reserve_memory_arch+0x24/0x28
> [    0.000000] memblock_reserve: [0x0000008f000000-0x0000008f004fff] flags 0x0 early_init_dt_reserve_memory_arch+0x24/0x28
> [    0.000000] memblock_reserve: [0x00000088000040-0x0000008b695e3f] flags 0x0 early_init_dt_reserve_memory_arch+0x24/0x28
> [    0.000000] memblock_reserve: [0x000000bc000000-0x000000bfffffff] flags 0x0 memblock_alloc_range_nid+0x78/0x90
>  ... 
>  ---[ end Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(1,0)
> 
> this overlay region is [0x00000080200000-0x000000810c45a3]
> 
> Corresponding kernel source code:
> 264 void __init arm_memblock_init(const struct machine_desc *mdesc)
> 265 {
> 266         /* Register the kernel text, kernel data and initrd with memblock. */
> 267         memblock_reserve(__pa(KERNEL_START), KERNEL_END - KERNEL_START);
> 
> > 
> > Thanks.
> > 
> > --  
> > RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> > FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> > According to speedtest.net: 11.9Mbps down 500kbps up
> 
> And Sorry, I sent the wrong arm64 patch. if possible, I will resend the second version of the patch.
> 
> Yu Chen
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
