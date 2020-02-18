Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7A916241D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 11:01:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LCjNaQ6iDx6224sOQb/+s8+4Xa1+PnLi6j5ytMJ3ebs=; b=Gbd4WcEkrVfeQG
	bSueHXxPbaAwUzBCRPknk473MArvcJNvXdIiFb7jUHFiy6w0eTTc2U3+zkBDhZzBs6bJp9YQaBXl/
	QOPS1Y7mzfY5G5VCvVQaxKndzgV7BWCgyFeBnBSBJ0z9tf1JUMEBXzocN8azUzsI0UIRnU4YyJ5N2
	yWo27Q21bJ0U8bgRYZDDCPHQHSFqFxAG5VbNkewfZvYSo5jwVDyssoQ0oTi8VO4d/JayZi61ct8HX
	Ty/0ktElBU+5/Sb8wpwPWYY3FjUlMu/LpGzniJ6hpVxAvK5YCXyDvZy6EbXLo+TCqTmaepRPq/Ixk
	GhrQdyXUjAuEPs4ZAR6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3zhJ-0001im-F6; Tue, 18 Feb 2020 10:01:45 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3zh6-0001hK-9Y
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 10:01:34 +0000
Received: by mail-wm1-x344.google.com with SMTP id c84so2149238wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 02:01:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8jbBtKgyBhIwFGIT+8sjpsB6jtwpVCvsQcBSC4TtqqM=;
 b=C0LZVYum0P4wm2ftH/cfvhrBK/7igtgfDMc4hJsSBPAgOWE34HJ/xnm6wtjp1zLFtd
 tJ8kdU5wbCwnBDwFG/Dbk+G8qF3T3Qw4nFgv/vJ6FWvWf14P5oBAaZ5Ox7yFn32ThF0P
 WDMeReG1eyCz3F46brENp8NLoMona0npa8ptFT4BpeuLxg+JExUH0vDB3DgKyetHvw6O
 aSREn2jQUAHe7Zzy3ADvyxSXCOA38waCKVgUF4CdZw8vPhswi9LNVqCum5BzPcQs3DRS
 2ly21PjPc0QKRMp3iwfbKnIyYt2J1FTc5On5SPT41EoLmdEhaczb3R/eEWj/XVWJSCig
 HeEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8jbBtKgyBhIwFGIT+8sjpsB6jtwpVCvsQcBSC4TtqqM=;
 b=dl1SKhcpPmy1hFBS1Ddz1bX1wfhrzh7EwsMBQ30B+9wfDr1aZdLe3gmQkjrVsoUXpE
 eiDIvEe9l970QWCYcyOjeNXuNPE0W9o2ZQQJRR+zbnFN9sT7zjOUEKejqI3pMiPNTIgj
 bc3CFnXE/T8c9oCgZTJasgPlBE6MdRysnd+aYQwrRXjoaVG0HXAq3yHZ7cfWsnyCuba/
 2IJgCRFNvTCzwMvdr9bcJmgB0IrmjO8VAbDxDZhuGTnOFuoXYCAXUZsTa/666YqSr0yP
 iv5LvDjPaSciCBnYEb2mstiqCHn83G7tTMZpD56cz14uQn6mDu9KNHwNY1LPkA+HqKzm
 Ny1A==
X-Gm-Message-State: APjAAAWHfWq5AueqgV7dKw9WtSA99Z1pHZhs6Suqh4kbziwwjQUmhHBj
 PJ/34nVJ+KnQahsmzX7cP0HwMA==
X-Google-Smtp-Source: APXvYqxYJDmh63jmfkm2GOW8w8Ijc3bfBXuFlOT6L5xNu7HJtOjFb6+k4K1dSuLWZGR0pXtox+y5eA==
X-Received: by 2002:a05:600c:2104:: with SMTP id
 u4mr2239205wml.93.1582020090596; 
 Tue, 18 Feb 2020 02:01:30 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id d9sm5256014wrx.94.2020.02.18.02.01.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 02:01:30 -0800 (PST)
Date: Tue, 18 Feb 2020 11:01:28 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: RPI4: fail too boot with an initrd
Message-ID: <20200218100128.GB10369@Red>
References: <20200214132748.GA23276@Red>
 <b726290c-1038-3771-5187-6ac370bc92c9@arm.com>
 <20200217103733.GA11379@Red>
 <c5a959d7-44b2-fab9-8269-d8e858790925@gmail.com>
 <20200217125301.GA31847@Red>
 <982c710c-d606-2c04-03ee-604626230bbc@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <982c710c-d606-2c04-03ee-604626230bbc@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_020132_341346_BC8B9A4F 
X-CRM114-Status: GOOD (  31.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 u-boot@lists.denx.de, James Morse <james.morse@arm.com>,
 linux-rpi-kernel@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 02:07:09PM +0100, Matthias Brugger wrote:
> 
> 
> On 17/02/2020 13:53, LABBE Corentin wrote:
> > On Mon, Feb 17, 2020 at 11:50:04AM +0100, Matthias Brugger wrote:
> >>
> >>
> >> On 17/02/2020 11:37, LABBE Corentin wrote:
> >>> On Fri, Feb 14, 2020 at 06:15:27PM +0000, James Morse wrote:
> >>>> Hi Corentin,
> >>>>
> >>>> On 14/02/2020 13:27, LABBE Corentin wrote:
> >>>>> Since the inclusion of the "enable network support in RPi4 config" serie on uboot, I
> >>>>> have started to work on adding the rpi4 in kernelCI.
> >>>>> But I fail to succeed in using a kernel/dtb/ramdisk downloaded via tftp.
> >>>>>
> >>>>> Using booti I hit:
> >>>>> [    0.000000] Linux version 5.6.0-rc1-next-20200212 (clabbe@build2-bionic-1804) (gcc version 7.4.1 20181213 [linaro-7.4-2019.02 revision 56ec6f6b99cc167ff0c2f8e1a2eed33b1edc85d4] (Linaro    GCC 7.4-2019.02)) #66 SMP PREEMPT Wed Feb 12 10:14:20 UTC 2020
> >>>>> [    0.000000] Machine model: Raspberry Pi 4 Model B
> >>>>> [    0.000000] earlycon: uart0 at MMIO32 0x00000000fe215040 (options '')
> >>>>> [    0.000000] printk: bootconsole [uart0] enabled
> >>>>> [    0.000000] efi: Getting EFI parameters from FDT:
> >>>>> [    0.000000] efi: UEFI not found.
> >>>>
> >>>> So no EFI,
> >>>>
> >>>>> [    0.000000] OF: reserved mem: failed to allocate memory for node 'linux,cma'
> >>>>
> >>>> Out of memory.
> >>>>
> >>>>> [    0.000000] cma: Failed to reserve 32 MiB
> >>>>> [    0.000000] Kernel panic - not syncing: Failed to allocate page table page
> >>>>
> >>>> Out of memory...
> >>>>
> >>>>> [    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.6.0-rc1-next-20200212 #66
> >>>>> [    0.000000] Hardware name: Raspberry Pi 4 Model B (DT)
> >>>>> [    0.000000] Call trace:
> >>>>> [    0.000000]  dump_backtrace+0x0/0x1a0
> >>>>> [    0.000000]  show_stack+0x14/0x20
> >>>>> [    0.000000]  dump_stack+0xbc/0x104
> >>>>> [    0.000000]  panic+0x16c/0x37c
> >>>>> [    0.000000]  early_pgtable_alloc+0x30/0xa0
> >>>>
> >>>> ... really early!
> >>>>
> >>>>> [    0.000000]  __create_pgd_mapping+0x36c/0x588
> >>>>> [    0.000000]  map_kernel_segment+0x70/0xa4
> >>>>> [    0.000000]  paging_init+0xf4/0x528
> >>>>> [    0.000000]  setup_arch+0x250/0x5d8
> >>>>> [    0.000000]  start_kernel+0x90/0x6d8
> >>>>>
> >>>>>  
> >>>>> Since the same kernel boot with bootefi and that bootefi lack ramdisk address,
> >>>>
> >>>> Booting with EFI will cause linux to use the EFI memory map.
> >>>>
> >>>> Does your DT have a memory node? (or does it expect EFI to provide the information)
> >>>>
> >>>>
> >>>>> I tried to add the address in the dtb via:
> >>>>> fdt addr 0x02400000; fdt resize; fdt set /chosen linux,initrd-start 0x02700000; fdt set /chosen linux,initrd-end 0x10000000; bootefi 0x00080000 0x02400000
> >>>>> But with that, I get:
> >>>>> initrd not fully accessible via the linear mapping -- please check your bootloader ...
> >>>>
> >>>> So this one is an EFI boot, but you can't find where to put the initramfs such that the
> >>>> kernel agrees its in memory.
> >>>>
> >>>> If you boot with 'efi=debug', linux will print the EFI memory map. Could you compare that
> >>>> to where U-Boot thinks memory is?
> >>>>
> >>>> (it sounds like your DT memory node is missing, and your EFI memory map is surprisingly small)
> >>>
> >>> Hello
> >>>
> >>> Thanks for your advices.
> >>>
> >>> In the dtb of mainline linux:
> >>> 	/* Will be filled by the bootloader */
> >>> 	memory@0 {
> >>> 		device_type = "memory";
> >>> 		reg = <0 0 0>;
> >>> 	};
> >>>
> >>> In uboot I have:
> >>> static struct mm_region bcm2711_mem_map[] = {
> >>>         {
> >>>                 .virt = 0x00000000UL,
> >>>                 .phys = 0x00000000UL,
> >>>                 .size = 0xfe000000UL,
> >>>                 .attrs = PTE_BLOCK_MEMTYPE(MT_NORMAL) |
> >>>                          PTE_BLOCK_INNER_SHARE
> >>>         }, {
> >>>                 .virt = 0xfc000000UL,
> >>>                 .phys = 0xfc000000UL,
> >>>                 .size = 0x03800000UL,
> >>>                 .attrs = PTE_BLOCK_MEMTYPE(MT_DEVICE_NGNRNE) |
> >>>                          PTE_BLOCK_NON_SHARE |
> >>>                          PTE_BLOCK_PXN | PTE_BLOCK_UXN
> >>>         }, {
> >>>                 /* List terminator */
> >>>                 0,
> >>>         }
> >>> };
> >>> But I dont know if uboot use that for filling the memory node.
> >>
> >> No it doesn't. U-Boot uses the DT from the firmware and passes this to the
> >> kernel. But it seems you pass instead your own device-tree to the kernel, so you
> >> will need to update the memory node to show the available memory on you board.
> >>
> > 
> > I dont understand, in the Linux commit "ARM: dts: Add minimal Raspberry Pi 4 support" I read:
> > The RPi 4 is available in 3 different variants (1, 2 and 4 GB RAM), so leave the memory size to zero and let the bootloader take care of it.
> > But if uboot dont fill that...
> > So the DTB in mainline is wrong, right ?
> > 
> 
> How do you pass your DTB to the kernel? Does the FW uses your DTB by putting it
> as bcm2711-rpi-4-b.dtb in the first FAT partition? Or do you load it from U-Boot
> afterwards? In the latter case you have to take care to add the needed size of
> memory. In the first case you use what is the default behavior for U-Boot; the
> RPi FW updates the node and then passes it to U-Boot then it get's passed to the
> kernel.
> 

Hello

I load the dtb via uboot/tftp.
On another thread, I got the hint to enable CONFIG_ARCH_FIXUP_FDT_MEMORY and it made my problem solved.

Thanks
Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
