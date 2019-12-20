Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D46271282E5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 20:52:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7kCND6biiTnk/dkdaPbFm+2gU7dUs1o8Hrk6wAYpHLg=; b=ftIu2xoRZghVoX
	YoLMK/imwsKnUKEe8pBVACqyHNQ9Va/Xavhbs7+rcZE1Jl1xN2cpNTEk+EiqNzQWdxtpxzt3SThg6
	ESbW1/p09c/4AnXTOhfI5Vj/feY9AvRSsk0/XgAdfRsYnYezkBUOIeXN/gYkjuz6xt/NNRDfGrnIj
	DZeurOPF/rBdTrDfbKt5iy0B4a8EZjHg/k9NxWtxIx4/YroYZsQR4B9USeFZ8sFCm6OvgPhxft29x
	VUWPVr28YitNnSXAAXi/Uqwwn83Ko6Wr4xjm4KktIVsWYwjHCK9ckSP4T2pzQppGaWaRq6KSJa6Lh
	MLN0frkRapbTZktEqfrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiOKD-0005RW-9J; Fri, 20 Dec 2019 19:52:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiOK1-0005Qa-2N
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 19:52:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ED55D1FB;
 Fri, 20 Dec 2019 11:52:17 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0EE0B3F67D;
 Fri, 20 Dec 2019 11:52:16 -0800 (PST)
Subject: Re: Arm64 Crashkernel doesn't work with FLATMEM anymore
To: "Saeed Karimabadi (skarimab)" <skarimab@cisco.com>,
 Catalin Marinas <catalin.marinas@arm.com>
References: <BYAPR11MB2582CB879F0B7DE06A351685CC500@BYAPR11MB2582.namprd11.prod.outlook.com>
From: James Morse <james.morse@arm.com>
Message-ID: <c4d7ea82-7736-4cbd-4568-83473a7c2d11@arm.com>
Date: Fri, 20 Dec 2019 19:52:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <BYAPR11MB2582CB879F0B7DE06A351685CC500@BYAPR11MB2582.namprd11.prod.outlook.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_115225_202367_1A502A2D 
X-CRM114-Status: GOOD (  28.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "xe-linux-external\(mailer list\)" <xe-linux-external@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Saeed,

Thanks for the bug report,

(CC: +Ard, KASLR+FLATMEM?)

On 17/12/2019 00:02, Saeed Karimabadi (skarimab) wrote:
> Crash dump  Kernel doesn't work with FLATMEM memory model since version 4.11.0-rc3 and it

v4.11? FLATMEM wasn't enabled until e7d4bac428edb in v4.19!

Kdump support wasn't added until v4.12. Catalin's pull request here:
http://lkml.iu.edu/hypermail/linux/kernel/1705.0/03077.html


You can't use a kernel that doesn't know about kdump as the kdump kernel. It must
understand the elfcorehdr and usable-memory-range DT properties, otherwise it can't know
not to trample on all of memory.


> will panic at boot time with a page request exception. The crash happens while kernel is initializing
> the memmap zones inside memmap_init_zone function. FLATMEM memory model is very useful
> for systems with limited memory resources where it is desirable to reserve as minimum as possible
> memory for the crash kernel. 

(I'd love to know how FLATMEM affects this... but we can save that for later)


> I'm wondering if this is a known issue or there is a patch to fix it?

No, I think this is new,


> -- Crash Dump Kernel starts here--
> [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x411fd070]
> [    0.000000] Linux version 5.5.0-rc1 (user@host) (gcc version 4.7.0 (GCC)) #163 SMP PREEMPT Tue Dec 10 11:12:37 PST 2019

gcc 4.7!

> [    0.000000] Machine model: linux,dummy-virt
> [    0.000000] earlycon: pl11 at MMIO 0x0000000009000000 (options '')
> [    0.000000] printk: bootconsole [pl11] enabled

> [    0.000000] efi: Getting EFI parameters from FDT:
> [    0.000000] efi: UEFI not found.

Hmmm,


> [    0.000000] Reserving 1KB of memory at 0xbfdff000 for elfcorehdr
> [    0.000000] On node 0 totalpages: 8192
> [    0.000000]   DMA zone: 128 pages used for memmap
> [    0.000000]   DMA zone: 0 pages reserved
> [    0.000000]   DMA zone: 8192 pages, LIFO batch:0
> [    0.000000] Unable to handle kernel paging request at virtual address ffffff8040ccf0b8
> [    0.000000] Mem abort info:
> [    0.000000]   ESR = 0x96000045
> [    0.000000]   EC = 0x25: DABT (current EL), IL = 32 bits
> [    0.000000]   SET = 0, FnV = 0
> [    0.000000]   EA = 0, S1PTW = 0
> [    0.000000] Data abort info:
> [    0.000000]   ISV = 0, ISS = 0x00000045
> [    0.000000]   CM = 0, WnR = 1
> [    0.000000] swapper pgtable: 4k pages, 39-bit VAs, pgdp=00000000bf068000
> [    0.000000] [ffffff8040ccf0b8] pgd=0000000000000000, pud=0000000000000000
> [    0.000000] Internal error: Oops: 96000045 [#1] PREEMPT SMP
> [    0.000000] Modules linked in:
> [    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.5.0-rc1 #163
> [    0.000000] Hardware name: linux,dummy-virt (DT)
> [    0.000000] pstate: 20000085 (nzCv daIf -PAN -UAO)
> [    0.000000] pc : memmap_init_zone+0x68/0xe0
> [    0.000000] lr : memmap_init+0x14/0x1c

> [    0.000000] Call trace:
> [    0.000000]  memmap_init_zone+0x68/0xe0
> [    0.000000]  memmap_init+0x14/0x1c
> [    0.000000]  free_area_init_node+0x39c/0x3ec
> [    0.000000]  bootmem_init+0x158/0x174
> [    0.000000]  setup_arch+0x290/0x64c
> [    0.000000]  start_kernel+0x5c/0x480
> [    0.000000] Code: f945c705 cb813061 d37ae421 8b0100a0 (f9001c1f)
> [    0.000000] random: get_random_bytes called from init_oops_id+0x3c/0x48 with crng_init=0
> [    0.000000] ---[ end trace 0000000000000000 ]---
> [    0.000000] Kernel panic - not syncing: Attempted to kill the idle task!
> [    0.000000] ---[ end Kernel panic - not syncing: Attempted to kill the idle task! ]---

I've managed to reproduce something like this. In my case its trying to zero a bogus
struct page.


> FLATMEM became broken after submission of these two patches: 
> commit 8f579b1c4e347b23bfa747bc2cc0a55dd1b7e5fa      arm64: limit memory regions based on DT property, usable-memory-range
> commit a7f8de168ace487fa7b88cb154e413cf40e87fc6       arm64: allow kernel Image to be loaded anywhere in physical memory

Those commits are in v4.12 and v4.6 respectively.
FLATMEM wasn't enabled until e7d4bac428edb in v4.19.

By 'after', you mean 'because of'?
Given the order of events here, 'FLATMEM has never work for kdump' seems a fair summary.


[..]

> The crash happens inside mm/page_alloc.c:memmap_init_zone() when kernel tries to initialize the first pfn of ZONE_DMA. The code
>  would calculate a wrong page structure pointer which is pointing beyond the end address of available memory.

> Breakpoint 3 at 0xffffff8008d463f0: file mm/page_alloc.c, line 5196.
> <-- Snip -->

> for FLATMEM model pfn_to_page is defined as:
> #define __pfn_to_page(pfn)       (mem_map + ((pfn) - ARCH_PFN_OFFSET))
>  (gdb) p/x mem_map
> $17 = 0xffffffc03fd5d780
>  (gdb) x 0xffffffc040cd5780
> 0xffffffc040cd5780:     Cannot access memory at address 0xffffffc040cd5780
> 
> It looks like in expansion of the pfn_to_page() macro, if the kernel start address is not 1GB
> aligned, this part of macro ((pfn)-ARCH_PFN_OFFSET) can create a huge offset from the base address
> of mem_map which will cause the calculated page address to point a location outside of the 
> available memory boundaries.

huge offset is the cause of the problem here. ARCH_PFN_OFFSET comes from memstart_addr.

We use memstart_addr is for shifting memory's physical addresses to their offset in the
linear map's range. Otherwise if memory started at 0x8000000000, we'd always lose a chunk
of address space because of this.

CONFIG_RANDOMIZE_BASE tinkers with this to randomise the placement of memory in the linear
map's range.

Catalin found disabling CONFIG_RANDOMIZE_BASE solved the issue for him. (evidently
kexec-tools is passing a random seed for kdump).

Do you have this option enabled in your kdump kernel?


The values are getting unbalanced because of FLATMEM's __page_to_pfn(). In particular
index-0 in the mem_map array causes it to return ARCH_PFN_OFFSET which leads to
memstart_addr, which is a value that may have been modified by CONFIG_RANDOMIZE_BASE.

FLATMEM's __page_to_pfn() can ignore KASLR because its page and mem_map both exist in the
randomised linear map.
Instead it wants to know memblock_start_of_DRAM() so the first DRAM page is index zero in
the array.

I think ARCH_PFN_OFFSET's meaning is different for FLATMEM.

Ugly hack[0] works for me. With this page_to_pfn() and pfn_to_page() seem to be producing
better results.


But! There are bigger problems here. memstart_addr starts out as memblock's idea of the
base of DRAM after kdumps usable-memory-range restrictions have been applied.

memblock_cap_memory_range() wont remove nomap blocks. We need to remember these are
memory, and they are nomap. Drivers depend on this when they want to use some exotic
memory-attributes later on. (is it memory? yes, do we have it mapped with conflicting
attributes? no)

These nomap blocks do influence memblock's idea of the base of DRAM meaning you can get a
large hole in the flatmem mem_map...

For kdump on Seattle, I see:
| memblock_cap_memory_range(0x80bfe00000, 0x40000000)

but
| memblock_start_of_DRAM == 0x8000000000

which is well below the first page.

Because of these nomap memblocks, I don't think kdump is isolated enough from the systems
memory map for the flatmem illusion to hold just because its kdump. You still need to
access firmware table that describe the system, as well as any memory that was reserved
with mechanisms like this. This exposes you to the platform's not-really-flatmem memory
layout.

I think the real fix here is to remove FLATMEM.


Thanks,

James


[0]
--------------------%<--------------------
diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index a4f9ca5479b0..bebeca58eda6 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -172,6 +172,7 @@ extern u64                  vabits_actual;
 #include <linux/bitops.h>
 #include <linux/mmdebug.h>

+extern u64                     arm64_memblock_start;
 extern s64                     physvirt_offset;
 extern s64                     memstart_addr;
 /* PHYS_OFFSET - the physical address of the start of memory. */
@@ -307,7 +308,11 @@ static inline void *phys_to_virt(phys_addr_t x)
  *  virt_to_page(x)    convert a _valid_ virtual address to struct page *
  *  virt_addr_valid(x) indicates whether a virtual address is valid
  */
+#ifdef CONFIG_FLATMEM
+#define ARCH_PFN_OFFSET                ((unsigned long)arm64_memblock_start >> PAGE_SHIFT)
+#else
 #define ARCH_PFN_OFFSET                ((unsigned long)PHYS_PFN_OFFSET)
+#endif /* CONFIG_FLATMEM */

 #if !defined(CONFIG_SPARSEMEM_VMEMMAP) || defined(CONFIG_DEBUG_VIRTUAL)
 #define virt_to_page(x)                pfn_to_page(virt_to_pfn(x))
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index b65dffdfb201..8e29ca9cc9ed 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -44,6 +44,9 @@

 #define ARM64_ZONE_DMA_BITS    30

+u64 arm64_memblock_start;
+EXPORT_SYMBOL(arm64_memblock_start);
+
 /*
  * We need to be able to catch inadvertent references to memstart_addr
  * that occur (potentially in generic code) before arm64_memblock_init()
@@ -427,6 +430,8 @@ void __init arm64_memblock_init(void)
                }
        }

+       arm64_memblock_start = memblock_start_of_DRAM();
+
        /*
         * Register the kernel text, kernel data, initrd, and initial
         * pagetables with memblock.
--------------------%<--------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
