Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC40B080B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 06:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jIOrnRZbhWznjUKUqvUxJXr7GZEXAKCKK1o6g0QPmQY=; b=fH/Zv9mf0vdYDX
	vcN/q0ar6sXPANP5mOD0DUQ7CPgzcvUHLvLd22FgVTCQUMJGyDQ5RkpEbfMeuK6ucR4OCj68NqxGD
	euX5pQKAh/LE4dqP7C8tM7Wt6/yaS04NSKgDEGAEcrbhCmeHbwipQBQr6G5u/MpHjTn7LcylZqLWg
	z+7Sob2hgDZmRWQuMGGtGXcGuV1vmzVpgu5Vjlusb/KMfH5nFfi/1eySQZEydJN2l1BfWd/y4pnE/
	WNeCRLWJpgO4+i7irlF7A1bu8FW2VDulLonew7UZ/7dfxVc72j1SdzqCBbuu7oTOtpM8kgBdSn/qH
	ryxGUy02k0CAnbBX7Itw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Gif-0000KJ-W4; Thu, 12 Sep 2019 04:28:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8GiU-0000Jr-IS
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 04:28:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 30E2028;
 Wed, 11 Sep 2019 21:28:16 -0700 (PDT)
Received: from [10.162.41.127] (p8cg001049571a15.blr.arm.com [10.162.41.127])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 C2C3F3F59C; Wed, 11 Sep 2019 21:28:07 -0700 (PDT)
Subject: Re: [PATCH V7 3/3] arm64/mm: Enable memory hot remove
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1567503958-25831-1-git-send-email-anshuman.khandual@arm.com>
 <1567503958-25831-4-git-send-email-anshuman.khandual@arm.com>
 <20190910161759.GI14442@C02TF0J2HF1T.local>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <9a7a82cd-77d0-bcab-3028-7be0599b0a10@arm.com>
Date: Thu, 12 Sep 2019 09:58:17 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190910161759.GI14442@C02TF0J2HF1T.local>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_212822_699177_EBF15CB5 
X-CRM114-Status: GOOD (  29.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, mhocko@suse.com, david@redhat.com, linux-mm@kvack.org,
 arunks@codeaurora.org, cpandya@codeaurora.org, ira.weiny@intel.com,
 will@kernel.org, steven.price@arm.com, valentin.schneider@arm.com,
 suzuki.poulose@arm.com, Robin.Murphy@arm.com, broonie@kernel.org, cai@lca.pw,
 ard.biesheuvel@arm.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, steve.capper@arm.com,
 logang@deltatee.com, linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 mgorman@techsingularity.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/10/2019 09:47 PM, Catalin Marinas wrote:
> On Tue, Sep 03, 2019 at 03:15:58PM +0530, Anshuman Khandual wrote:
>> @@ -770,6 +1022,28 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>>  void vmemmap_free(unsigned long start, unsigned long end,
>>  		struct vmem_altmap *altmap)
>>  {
>> +#ifdef CONFIG_MEMORY_HOTPLUG
>> +	/*
>> +	 * FIXME: We should have called remove_pagetable(start, end, true).
>> +	 * vmemmap and vmalloc virtual range might share intermediate kernel
>> +	 * page table entries. Removing vmemmap range page table pages here
>> +	 * can potentially conflict with a concurrent vmalloc() allocation.
>> +	 *
>> +	 * This is primarily because vmalloc() does not take init_mm ptl for
>> +	 * the entire page table walk and it's modification. Instead it just
>> +	 * takes the lock while allocating and installing page table pages
>> +	 * via [p4d|pud|pmd|pte]_alloc(). A concurrently vanishing page table
>> +	 * entry via memory hot remove can cause vmalloc() kernel page table
>> +	 * walk pointers to be invalid on the fly which can cause corruption
>> +	 * or worst, a crash.
>> +	 *
>> +	 * So free_empty_tables() gets called where vmalloc and vmemmap range
>> +	 * do not overlap at any intermediate level kernel page table entry.
>> +	 */
>> +	unmap_hotplug_range(start, end, true);
>> +	if (!vmalloc_vmemmap_overlap)
>> +		free_empty_tables(start, end);
>> +#endif
>>  }
>>  #endif	/* CONFIG_SPARSEMEM_VMEMMAP */

Hello Catalin,

> 
> I wonder whether we could simply ignore the vmemmap freeing altogether,
> just leave it around and not unmap it. This way, we could call

This would have been an option (even if we just ignore for a moment that
it might not be the cleanest possible method) if present memory hot remove
scenarios involved just system RAM of comparable sizes.

But with persistent memory which will be plugged in as ZONE_DEVICE might
ask for a vmem_atlamp based vmemmap mapping where the backing memory comes
from the persistent memory range itself not from existing system RAM. IIRC
altmap support was originally added because the amount persistent memory on
a system might be order of magnitude higher than that of regular system RAM.
During normal memory hot add (without altmap) would have caused great deal
of consumption from system RAM just for persistent memory range's vmemmap
mapping. In order to avoid such a scenario altmap was created to allocate
vmemmap mapping backing memory from the device memory range itself.

In such cases vmemmap must be unmapped and it's backing memory freed up for
the complete removal of persistent memory which originally requested for
altmap based vmemmap backing.

Just as a reference, the upcoming series which enables altmap support on
arm64 tries to allocate vmemmap mapping backing memory from the device range
itself during memory hot add and free them up during memory hot remove. Those
methods will not be possible if memory hot-remove does not really free up
vmemmap backing storage.

https://patchwork.kernel.org/project/linux-mm/list/?series=139299

> unmap_kernel_range() for removing the linear map and we save some code.
> 
> For the linear map, I think we use just above 2MB of tables for 1GB of
> memory mapped (worst case with 4KB pages we need 512 pte pages). For
> vmemmap we'd use slightly above 2MB for a 64GB hotplugged memory. Do we

You are right, the amount of memory required for kernel page table pages
are dependent on mapping page size and size of the range to be mapped. But
as explained below there might be hot remove situations where these ranges
will remain unused for ever after hot remove. There are chances that some
these pages (even empty) might remain unused for good.

> expect such memory to be re-plugged again in the same range? If we do,
> then I shouldn't even bother with removing the vmmemmap.
> 
> I don't fully understand the use-case for memory hotremove, so any
> additional info would be useful to make a decision here.

Sure, these are some of the scenarios I could recollect.

Physical Environment:

A. Physical DIMM replacement

Platform detects memory errors and initiates a DIMM replacement.

- Hot remove selected DIMM with errors
- Hot add a new DIMM in it's place on the same slot

In normal circumstances, the new DIMM will require the same linear
and vmemmap mapping. In such cases hot-remove could just unmap
linear mapping, leave everything else and be done with it. Though
I am not sure whether its a good idea to leave aside accessible
struct pages which correspond to non-present pfns.

B. Physical DIMM movement

Platform can detect errors on a DIMM slot itself and initiates a
DIMM movement into a different empty slot

- Hot remove selected memory DIMM from defective slot
- Hot add same memory DIMM into a different available empty slot

Physical address range for the DIMM has now changed, it will require
different linear and vmemmap mapping than what it had originally.
Hence during hot remove we should not only unmap linear and vmemmap
mapping but also free up all associated resources as this physical
memory range is never going to be available again because the slot
has gone bad permanently.

C. Physical DIMM hot-remove

Platform just initiates hot-remove of a DIMM and reduces available
memory as instructed by the administrator.

- Hot remove a selected DIMM

This memory might never come back again or comes back on a different
slot. Without that certainty, its is always better to unmap both linear
and vmemmap mappings, free up all associated resources.

D. Changing NUMA affinity

After performance analysis, administrator through the platform initiates
a DIMM hot-remove from a given node and a DIMM hot-add to another node
to achieve better NUMA affinity.

- Hot remove a selected DIMM from node N0
- Hot add selected DIMM to another node N1

Here both linear and vmemmap ranges will change after the movement and
there is uncertainty regarding whether the now empty physical range on
node N0 will ever get populated again. Without that certainty, its is
always better to unmap both linear and vmemmap mapping, free up all
associated resources.

Virtual Environment:

1. Memory hot-remove can just be initiated by the admin from the host in
order to reduce total physical memory entitlement of a guest which will
reflect any changing hosting contracts etc. The memory might never come
back again and in such cases hot-remove should be as clean freeing all
associated resources.

2. Memory hot-remove on the guest can be initiated from the host after
detecting memory errors on the backing physical DIMM. Memory hot-remove
on the guest will be followed by memory hot-remove on the host itself.
Replacement DIMM can be on the same slot taking over the same physical
address range from host as before but guest might get back it's memory
either on the same range previously or on some other guest physical
range.

3. Changing NUMA binding for a guest on the host might require guest
PFN realignment with respect to guest nodes as well.

Persistent Memory:

As mentioned previously, persistent memory has special vmemmap mapping
requirements through vmem_altmap which would need freeing up backing
memory from it's own range, for it to be completely removed.

Device memory (FPGA cards, GPU cards, Network cards etc):

In future, some of these coherent device memory might be plugged into
ZONE_DEVICE and managed through drivers. They might be attached to the
system via upcoming interfaces like CCIX. The managing drivers might
need to offline the device memory range in order to service some high
priority error, re-init and plug it back on a different physical range
due to existing CCIX link errors or some other constraints.

The point I am trying to make here is that there are many such possible
combinations of events with respect to memory hot-remove in both physical
and virtual environment for system RAM, persistent memory and other coherent
device memory. Leaving aside kernel page table pages or even struct pages
for unavailable (possibly forever) physical range might problematic. IMHO
it is better to do this as much cleanly as possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
