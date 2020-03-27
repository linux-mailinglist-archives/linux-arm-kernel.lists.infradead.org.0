Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE38195A0E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 16:40:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TClXYF24aTLiXDGUnaaSH8lyr+j/9oDnC3hJGN6hTYM=; b=RNDI7Uw2LtIOuE
	v7Fh92+DBhpVrbeD+QTkDL5X9QyxiBcFNi1afEubvFT12GiHH1jVfIw4283IhBs3eJObmDgyCNsnx
	95dlxmFIGigfD77WCQCpI9pI4W/iCLPN2j0k9XbEbHPKo5u4/n/cMLV2BZhyYYIYCBiqrWi6uL8mb
	BZzca007MP4AczOLmxDzSC090Jw+Gpl57j4ORXln7vrNq8Y5ve1mIpO7E2ukSna3UuXcwoN2Pk9/C
	cQB8Xpaq/MYI5zKHXaZMkw/ooQO/Di3lHvs8T5ZvJxS65dysbzyU35Akj/kbTrZ1Ni9MSqA/BJQTc
	7DjWGnMrP5QU0U+mqSfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHr5k-0006ap-A4; Fri, 27 Mar 2020 15:40:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHr5M-0006Za-Gp; Fri, 27 Mar 2020 15:39:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2332C1FB;
 Fri, 27 Mar 2020 08:39:46 -0700 (PDT)
Received: from [172.16.1.108] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2C5293F71F;
 Fri, 27 Mar 2020 08:39:44 -0700 (PDT)
Subject: Re: [PATCH 2/3] mm/memory_hotplug: Allow arch override of non boot
 memory resource names
To: David Hildenbrand <david@redhat.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-3-james.morse@arm.com>
 <52d6fd33-c15d-b842-84ed-b4a74265199f@redhat.com>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <25aa3f43-5aa9-653f-0910-dd7b75527e08@arm.com>
Date: Fri, 27 Mar 2020 15:39:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <52d6fd33-c15d-b842-84ed-b4a74265199f@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_083952_649141_FFF2C11E 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi David,

On 3/27/20 9:59 AM, David Hildenbrand wrote:
> On 26.03.20 19:07, James Morse wrote:
>> Memory added to the system by hotplug has a 'System RAM' resource created
>> for it. This is exposed to user-space via /proc/iomem.
>>
>> This poses problems for kexec on arm64. If kexec decides to place the
>> kernel in one of these newly onlined regions, the new kernel will find
>> itself booting from a region not described as memory in the firmware
>> tables.
>>
>> Arm64 doesn't have a structure like the e820 memory map that can be
>> re-written when memory is brought online. Instead arm64 uses the UEFI
>> memory map, or the memory node from the DT, sometimes both. We never
>> rewrite these.
>>
>> Allow an architecture to specify a different name for these hotplug
>> regions.


>> diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
>> index 0a54ffac8c68..69b03dd7fc74 100644
>> --- a/mm/memory_hotplug.c
>> +++ b/mm/memory_hotplug.c
>> @@ -42,6 +42,10 @@
>>  #include "internal.h"
>>  #include "shuffle.h"
>>  
>> +#ifndef MEMORY_HOTPLUG_RES_NAME
>> +#define MEMORY_HOTPLUG_RES_NAME "System RAM"
>> +#endif
> 
> So I assume changing this for all architectures would result in some
> user space tool breaking? Are we aware of any?

Last time we had to touch arm64's /proc/iomem strings I went through debian's
codesearch for stuff that reads it, kexec-tools was the only thing that parsed
it in anger. (From memory, the other tools were looking for PCIe windows to do
firmware flashing..)

Looking again, having qualifiers on the end of 'System RAM' looks like it could
confuse 's390-tools's detect_mem_chunks parser.

It looks like the strings that come out of 'FIRMWARE_MEMMAP' are a duplicate set.


> I do wonder if we should simply change it for all architectures if possible.

If its possible that would be great. But I suspect that ship has sailed,
changing it on other architectures could break some fragile parsing code.

I'm wary of changing it on arm64, the only thing that makes it tolerable is that
memory hot-add was relatively recently merged, and we don't anticipate it being
widely used until you can remove memory as well.

Changing it on arm64 is to prevent today's versions of kexec-tools from
accidentally placing the new kernel in memory that wasn't described at boot.
This leads to an unhandled exception during boot[0] because the kernel can't
access itself via the mapping of all memory. (hotpluggable regions are only
discovered by suitably configured ACPI systems much later)


Thanks,

James

[0]
| NUMA: NODE_DATA [mem 0x7fdf1780-0x7fdf3fff]
| Unable to handle kernel paging request at virtual address ffff00004230aff8
| Mem abort info:
|   ESR = 0x96000006
|   EC = 0x25: DABT (current EL), IL = 32 bits
|   SET = 0, FnV = 0
|   EA = 0, S1PTW = 0
| Data abort info:
|   ISV = 0, ISS = 0x00000006
|   CM = 0, WnR = 0
| swapper pgtable: 4k pages, 48-bit VAs, pgdp=000000008181d000
| [ffff00004230aff8] pgd=000000007fff9003, pud=000000007fdf7003,
pmd=0000000000000000
| Internal error: Oops: 96000006 [#1] PREEMPT SMP
| Modules linked in:
| CPU: 0 PID: 0 Comm: swapper Not tainted 5.6.0-rc3-00098-g3f6c690f5dfe
#11618
| Hardware name: linux,dummy-virt (DT)
| pstate: 80400085 (Nzcv daIf +PAN -UAO BTYPE=--)
| pc : vmemmap_pud_populate+0x2c/0xa0
| lr : vmemmap_populate+0x78/0x154

| Call trace:
|  vmemmap_pud_populate+0x2c/0xa0
|  vmemmap_populate+0x78/0x154
|  __populate_section_memmap+0x3c/0x60
|  sparse_init_nid+0x29c/0x414
|  sparse_init+0x154/0x170
|  bootmem_init+0x78/0xdc
|  setup_arch+0x280/0x5d0
|  start_kernel+0x98/0x4f8
| Code: f9469a84 92748e73 8b010e61 cb040033 (f9400261)
| random: get_random_bytes called from print_oops_end_marker+0x34/0x60
with crng_init=0
| ---[ end trace 0000000000000000 ]---
| Kernel panic - not syncing: Attempted to kill the idle task!
| ---[ end Kernel panic - not syncing: Attempted to kill the idle task!



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
