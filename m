Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FE17A48F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVmkCziUlkXjtl4NLeWkTrXOj6m+B61p9kDbPQCO8H8=; b=geq8qbTh0/4jLp
	Z+RIeYCCP1vCspBXt3iVpwW4EzmUPVZfmrNcVrQETKO6QJ2b01+n1PaknQaF8+GI4t47MdYnrXiFa
	oYpI5PCj6NaJjdPOXo4fpyC0vzl8zU3A2PMcO/+Fam0r5bn15vZtsFg44I5Jk+ggAvidtI8K6rORT
	tkSxBfPItMGjbwWfpAcsuEVYNjX9cFLQjdss8PRG/AYXBQ5RdPK6m++CD+ItgPzeBnj1NIkujsvkO
	93rzCAEzwl3bgXXaym2mfc95gsLbqJsuEnIIKnr5Q7nTzykuMssvuOV62zSdndhv2BCNe7yypPB7F
	/iZej7DnkozdlZ33MdzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOYt-0007iS-UD; Tue, 30 Jul 2019 09:36:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOXB-0005mi-MY
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:35:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1091A344;
 Tue, 30 Jul 2019 02:35:03 -0700 (PDT)
Received: from [10.162.43.134] (p8cg001049571a15.blr.arm.com [10.162.43.134])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 C07683F575; Tue, 30 Jul 2019 02:34:56 -0700 (PDT)
Subject: Re: [PATCH V6 RESEND 0/3] arm64/mm: Enable memory hot remove
To: Mark Rutland <mark.rutland@arm.com>
References: <1563171470-3117-1-git-send-email-anshuman.khandual@arm.com>
 <20190723105636.GA5004@lakrids.cambridge.arm.com>
 <a69ed426-98ff-32ed-82ce-8216dd56daba@arm.com>
 <20190725135132.GH14347@lakrids.cambridge.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <e1ea5e70-f9ce-53e8-1cc4-8500a4e90928@arm.com>
Date: Tue, 30 Jul 2019 15:05:36 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190725135132.GH14347@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_023505_843541_E8E4070C 
X-CRM114-Status: GOOD (  35.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mhocko@suse.com, mgorman@techsingularity.net, david@redhat.com,
 catalin.marinas@arm.com, steve.capper@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, logang@deltatee.com,
 arunks@codeaurora.org, cai@lca.pw, ard.biesheuvel@arm.com,
 cpandya@codeaurora.org, james.morse@arm.com, akpm@linux-foundation.org,
 ira.weiny@intel.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/25/2019 07:21 PM, Mark Rutland wrote:
> On Wed, Jul 24, 2019 at 12:28:50PM +0530, Anshuman Khandual wrote:
>> On 07/23/2019 04:26 PM, Mark Rutland wrote:
>>> On Mon, Jul 15, 2019 at 11:47:47AM +0530, Anshuman Khandual wrote:
>>>> This series enables memory hot remove on arm64 after fixing a memblock
>>>> removal ordering problem in generic try_remove_memory() and a possible
>>>> arm64 platform specific kernel page table race condition. This series
>>>> is based on linux-next (next-20190712).
>>>>
>>>> Concurrent vmalloc() and hot-remove conflict:
>>>>
>>>> As pointed out earlier on the v5 thread [2] there can be potential conflict
>>>> between concurrent vmalloc() and memory hot-remove operation. This can be
>>>> solved or at least avoided with some possible methods. The problem here is
>>>> caused by inadequate locking in vmalloc() which protects installation of a
>>>> page table page but not the walk or the leaf entry modification.
>>>>
>>>> Option 1: Making locking in vmalloc() adequate
>>>>
>>>> Current locking scheme protects installation of page table pages but not the
>>>> page table walk or leaf entry creation which can conflict with hot-remove.
>>>> This scheme is sufficient for now as vmalloc() works on mutually exclusive
>>>> ranges which can proceed concurrently only if their shared page table pages
>>>> can be created while inside the lock. It achieves performance improvement
>>>> which will be compromised if entire vmalloc() operation (even if with some
>>>> optimization) has to be completed under a lock.
>>>>
>>>> Option 2: Making sure hot-remove does not happen during vmalloc()
>>>>
>>>> Take mem_hotplug_lock in read mode through [get|put]_online_mems() constructs
>>>> for the entire duration of vmalloc(). It protects from concurrent memory hot
>>>> remove operation and does not add any significant overhead to other concurrent
>>>> vmalloc() threads. It solves the problem in right way unless we do not want to
>>>> extend the usage of mem_hotplug_lock in generic MM.
>>>>
>>>> Option 3: Memory hot-remove does not free (conflicting) page table pages
>>>>
>>>> Don't not free page table pages (if any) for vmemmap mappings after unmapping
>>>> it's virtual range. The only downside here is that some page table pages might
>>>> remain empty and unused until next memory hot-add operation of the same memory
>>>> range.
>>>>
>>>> Option 4: Dont let vmalloc and vmemmap share intermediate page table pages
>>>>
>>>> The conflict does not arise if vmalloc and vmemap range do not share kernel
>>>> page table pages to start with. If such placement can be ensured in platform
>>>> kernel virtual address layout, this problem can be successfully avoided.
>>>>
>>>> There are two generic solutions (Option 1 and 2) and two platform specific
>>>> solutions (Options 2 and 3). This series has decided to go with (Option 3)
>>
>> s/Option 2 and 3/Option 3 and 4/
>>
>>>> which requires minimum changes while self-contained inside the functionality.
>>>
>>> ... while also leaking memory, right?
>>
>> This is not a memory leak. In the worst case where an empty page table page could
>> have been freed after parts of it's kernel virtual range span's vmemmap mapping has
>> been taken down still remains attached to the higher level page table entry. This
>> empty page table page will be completely reusable during future vmalloc() allocations
>> or vmemmap mapping for newly hot added memory in overlapping memory range. It is just
>> an empty data structure sticking around which could (probably would) be reused later.
>> This problem will not scale and get worse because its part of kernel page table not
>> user process which could get multiplied. Its a small price we are paying to remain
>> safe from a vmalloc() and memory hot remove potential collisions on the kernel page
>> table. IMHO that is fair enough.
> 
> I appreciate that we can reuse the memory if we hotplug the same
> phyiscal range.
> 
> Regardless, I think it's important to note that this approach leaves
> that memory around. Could you please quantify how much memory this
> would be? i.e. for a 4K 48-bit VA kernel, how many pages would be left
> over for a 1GiB region of memory?

Evaluated this for all possible configs with a single 1GB memory region
for hot remove.

1. 4K  page size - 39 bit VA - 3 LEVEL PGTABLE

	Potential pte page [freed: 0 skipped: 0]
	Potential pmd page [freed: 0 skipped: 1]

2. 4K  page size - 48 bit VA - 4 LEVEL PGTABLE

	Potential pte page [freed: 0 skipped: 0]
	Potential pmd page [freed: 0 skipped: 1]
	Potential pud page [freed: 0 skipped: 1]

3. 16K page size - 47 bit VA - 3 LEVEL PGTABLE

	Potential pte page [freed: 0 skipped: 1]
	Potential pmd page [freed: 0 skipped: 1]

4. 16K page size - 48 bit VA - 4 LEVEL PGTABLE

	Potential pte page [freed: 0 skipped: 1]
	Potential pmd page [freed: 0 skipped: 1]
	Potential pud page [freed: 0 skipped: 1]

5. 64K page size - 42 bit VA - 2 LEVEL PGTABLE

	Potential pte page [freed: 0 skipped: 1]

6. 64K page size - 48 bit VA - 3 LEVEL PGTABLE

	Potential pte page [freed: 0 skipped: 1]
	Potential pmd page [freed: 0 skipped: 1]

7. 64K page size - 52 bit VA - 3 LEVEL PGTABLE

	Potential pte page [freed: 0 skipped: 1]
	Potential pmd page [freed: 0 skipped: 1]

This is based on if free_empty_tables() would have been called from
vmemmap_free() during memory hot remove process then how many pages
would have got freed or skipped.

Freed:   pgtable pages (pte|pmd|pud) did actually get freed
Skipped: pgtable pages (pte|pmd|pud) did not get freed due
	 to other valid and present entries

This indicates there no potential free page table pages being left
around with 1GB memory region. It might be because of this particular
memory region in the experiment which finds a particular place in the
kernel page table based on it's starting address. Regardless it at least
indicates that memory pages being left around during hot remove (if any)
would be minimal.

> 
>>> In my view, option 2 or 4 would have been preferable. Were there
>>
>> I would say option 2 is the ideal solution where we make sure that each vmalloc()
>> instance is protected against concurrent memory hot remove through a read side lock
>> via [get|put]_online_mems().
> 
> I agree that this would be simple to reason about. However, even taking
> a read lock could significantly change the performance of operations in
> the vmalloc space, so that would need to be quantified. Additionally,
> hotplug operations would stall all vmalloc space operations, which is
> unfortunate.
> 
>> Option 4 is very much platform specific and each platform has to make sure that they
>> remain compliant all the time which is not ideal. Its is also an a work around which
>> avoids the problem and does not really fix it.
> 
> I understand that you don't like this solution.
> 
> I think it should be simple to verify that the layout is safe via
> BUILD_BUG_ON() checking the regions we care about don't overlap, so I
> don't buy that it's all that difficult to ensure going forward if it's
> naturally the case today.

The concern was that platform need to ensure this all the time not that it
is difficult to do so. I did evaluate this for all possible config options.

1. 4K  page size - 39 bit VA - 3 LEVEL PGTABLE

vmalloc [start ffffff8010000000 end ffffffbebfff0000 size 3eafff0000]
vmemmap [start ffffffbf00000000 end ffffffc000000000 size 100000000]
pgtable [pgdir 40000000 pud 40000000  pmd 200000]
spacing [40010000]

2. 4K  page size - 48 bit VA - 4 LEVEL PGTABLE

vmalloc [start ffff000010000000 end ffff7dffbfff0000 size 7dffafff0000]
vmemmap [start ffff7e0000000000 end ffff800000000000 size 20000000000]
pgtable [pgdir 8000000000 pud 40000000  pmd 200000]
spacing [40010000]

3. 16K page size - 47 bit VA - 3 LEVEL PGTABLE

vmalloc [start ffff800010000000 end ffffbfafffff0000 size 3fafefff0000]
vmemmap [start ffffbfc000000000 end ffffc00000000000 size 4000000000]
pgtable [pgdir 1000000000 pud 1000000000  pmd 2000000]
spacing [1000010000] 

4. 16K page size - 48 bit VA - 4 LEVEL PGTABLE

vmalloc [start ffff000010000000 end ffff7f6fffff0000 size 7f6fefff0000]
vmemmap [start ffff7f8000000000 end ffff800000000000 size 8000000000]
pgtable [pgdir 800000000000 pud 1000000000  pmd 2000000]
spacing [1000010000] PGD overlapping

5. 64K page size - 42 bit VA - 2 LEVEL PGTABLE

vmalloc [start fffffc0010000000 end fffffdff5fff0000 size 1ff4fff0000]
vmemmap [start fffffdff80000000 end fffffe0000000000 size 80000000]
pgtable [pgdir 20000000 pud 20000000  pmd 20000000]
spacing [20010000]

6. 64K page size - 48 bit VA - 3 LEVEL PGTABLE

vmalloc [start ffff000010000000 end ffff7bdfffff0000 size 7bdfefff0000]
vmemmap [start ffff7fe000000000 end ffff800000000000 size 2000000000]
pgtable [pgdir 40000000000 pud 40000000000  pmd 20000000]
spacing [40000010000] 

7. 64K page size - 52 bit VA - 3 LEVEL PGTABLE

vmalloc [start ffff000010000000 end ffff7bdfffff0000 size 7bdfefff0000]
vmemmap [start ffff7fe000000000 end ffff800000000000 size 2000000000]
pgtable [pgdir 40000000000 pud 40000000000  pmd 20000000]
spacing [40000010000] 

So except just one case (16K page size - 48 bit VA - 4 LEVEL PGTABLE) vmalloc
and vmemmap does not seem to share any intermediate page table entry. Even in
that case it shares just a PGD entry. So calling free_empty_tables() during
memory hot-remove might not be that risky as it appeared before and just to be
sure we can have a BUILD_BUG_ON() when memory hot remove is enabled which will
make sure that (vmalloc - vmemap) spacing is adequate.

When a PGD entry (i.e PUD page) is being shared it can still potentially collide
with a concurrent vmalloc(). Should we not call free_empty_tables() only for that
particular case ? Any thoughts ?

spacing: (vmalloc - vmemmap)
pgdir:	 PGDIR_SIZE
pud:	 PUD_SIZE
pmd:	 PMD_SIZE

> 
>>> specific technical reasons to not go down either of those routes? I'm
>>
>> Option 2 will require wider agreement as it involves a very critical hot-path vmalloc()
>> which can affect many workloads.
> 
> I agree that this would need to be quantified.
> 
>> IMHO Option 4 is neither optimal and not does it solve the problem
>> correctly. Like this approach it just avoids it but unlike this
>> touches upon another code area.
> 
> I disagree that option 4 wouldn't be correct; it's just avoiding the
> issue at a different level.
> 
>>> not sure that minimizing changes is the right rout given that this same
>>> problem presumably applies to other architectures, which will need to be
>>> fixed.
>>
>> Yes this needs to be fixed but we can get there one step at a time. vmemmap tear
>> down process can start freeing empty page table pages when this gets solved. But
>> why should it prevent entire memory hot remove functionality from being available.
> 
> My experience has been that people rarely go back to solve the edge
> cases once the feature they care about has been merged, and we're left
> with more edge cases...
> 
> I think we at least need to have a clear idea that we can fix the
> problem before we punt it on as later cleanup. Especially given that
> this seems like it is an existing problem affecting other architectures.
> 
>>> Do we know why we aren't seeing issues on other architectures? e.g. is
>>> the issue possible but rare (and hence not reported), or masked by
>>> something else (e.g. the layout of the kernel VA space)?
>>
>> I would believe so but we can only get more insights from respective architecture folks.
> 
> Could you please investigate, e.g. have a look at how this works on x86?
> 
> You should be able to figure out if the VA ranges overlap, and I suspect
> that if there is a problem youi can deliberately trigger it within a
> QEMU VM.

Even on x86 the vmemmap vmalloc separation seems adequate. IIUC X86 does
not seem to have other config combinations which need to verified. Please
let me know if that is not correct.

vmalloc [start ffffb91080000000 end ffffd9107fffffff size 1fffffffffff]
vmemmap [start ffffe9c3c0000000 end ffffe9efc0000000 size 2c00000000]
pgtable [pgdir 8000000000 pud 40000000  pmd 200000]
spacing [10b340000001] 

So x86 might never have faced this problem ? It does not have VMEMMAP_SIZE
hence computed these with a hack.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
