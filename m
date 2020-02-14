Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B1315F296
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 19:15:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G00neZnWFHLEaRxXY8zUS726Awqh8s0m7Q5+Kd2vGxk=; b=rGNA4NXbL0UgAV
	G8K6obiauPDChRkQlt3PTjMm6BvUrqmuvB1b2jyUlsbsD1DzJVpqMZe7pVaEG2vHYBD5IA32osy23
	b0JL369SumFqfhd8M01cVDbcuZh7fMCejs1ED2znn5TTfConnPbtrg1S3j2hey6EAx4uWq4yzvuMh
	ZEy78EFHMHX14+qdnHxHmwEWzkiPF0DVRlCgeq1pqfUwg0dhnmiFS3c0dYV19cDS1FQy08X+h2xVI
	007NES6UbUi2aU4i5ilS+THJ76r0KLzsL9mgnQmXgGDdHcDiLRMpPP37mz5KvZFfUEXpGnfHV69iz
	lTAVScCnct6VrBaLTu/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2fV3-0002UH-3U; Fri, 14 Feb 2020 18:15:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2fUv-0002Tj-R6; Fri, 14 Feb 2020 18:15:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5531C328;
 Fri, 14 Feb 2020 10:15:29 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6F09B3F68E;
 Fri, 14 Feb 2020 10:15:28 -0800 (PST)
Subject: Re: RPI4: fail too boot with an initrd
To: LABBE Corentin <clabbe@baylibre.com>
References: <20200214132748.GA23276@Red>
From: James Morse <james.morse@arm.com>
Message-ID: <b726290c-1038-3771-5187-6ac370bc92c9@arm.com>
Date: Fri, 14 Feb 2020 18:15:27 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200214132748.GA23276@Red>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_101529_920554_EEB06B45 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: nsaenzjulienne@suse.de, linux-kernel@vger.kernel.org, u-boot@lists.denx.de,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Corentin,

On 14/02/2020 13:27, LABBE Corentin wrote:
> Since the inclusion of the "enable network support in RPi4 config" serie on uboot, I
> have started to work on adding the rpi4 in kernelCI.
> But I fail to succeed in using a kernel/dtb/ramdisk downloaded via tftp.
> 
> Using booti I hit:
> [    0.000000] Linux version 5.6.0-rc1-next-20200212 (clabbe@build2-bionic-1804) (gcc version 7.4.1 20181213 [linaro-7.4-2019.02 revision 56ec6f6b99cc167ff0c2f8e1a2eed33b1edc85d4] (Linaro    GCC 7.4-2019.02)) #66 SMP PREEMPT Wed Feb 12 10:14:20 UTC 2020
> [    0.000000] Machine model: Raspberry Pi 4 Model B
> [    0.000000] earlycon: uart0 at MMIO32 0x00000000fe215040 (options '')
> [    0.000000] printk: bootconsole [uart0] enabled
> [    0.000000] efi: Getting EFI parameters from FDT:
> [    0.000000] efi: UEFI not found.

So no EFI,

> [    0.000000] OF: reserved mem: failed to allocate memory for node 'linux,cma'

Out of memory.

> [    0.000000] cma: Failed to reserve 32 MiB
> [    0.000000] Kernel panic - not syncing: Failed to allocate page table page

Out of memory...

> [    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.6.0-rc1-next-20200212 #66
> [    0.000000] Hardware name: Raspberry Pi 4 Model B (DT)
> [    0.000000] Call trace:
> [    0.000000]  dump_backtrace+0x0/0x1a0
> [    0.000000]  show_stack+0x14/0x20
> [    0.000000]  dump_stack+0xbc/0x104
> [    0.000000]  panic+0x16c/0x37c
> [    0.000000]  early_pgtable_alloc+0x30/0xa0

... really early!

> [    0.000000]  __create_pgd_mapping+0x36c/0x588
> [    0.000000]  map_kernel_segment+0x70/0xa4
> [    0.000000]  paging_init+0xf4/0x528
> [    0.000000]  setup_arch+0x250/0x5d8
> [    0.000000]  start_kernel+0x90/0x6d8
> 
>  
> Since the same kernel boot with bootefi and that bootefi lack ramdisk address,

Booting with EFI will cause linux to use the EFI memory map.

Does your DT have a memory node? (or does it expect EFI to provide the information)


> I tried to add the address in the dtb via:
> fdt addr 0x02400000; fdt resize; fdt set /chosen linux,initrd-start 0x02700000; fdt set /chosen linux,initrd-end 0x10000000; bootefi 0x00080000 0x02400000
> But with that, I get:
> initrd not fully accessible via the linear mapping -- please check your bootloader ...

So this one is an EFI boot, but you can't find where to put the initramfs such that the
kernel agrees its in memory.

If you boot with 'efi=debug', linux will print the EFI memory map. Could you compare that
to where U-Boot thinks memory is?

(it sounds like your DT memory node is missing, and your EFI memory map is surprisingly small)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
