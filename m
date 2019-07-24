Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4513728B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 08:58:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vvoNxEW93ZTHs9yHTCw5UEhukdAizwfGDXxz3xZDeNg=; b=qnpuA0M0wlw5Ya
	230jaZSUp8jOVXj2meFY+8hmBwuhmBuvyHH9hRxy/mTJpv+yS7PfLyMIKVm3zCeV/9lwH0Zu3YdCl
	5bClLOZBAHkt7DvjEkmPZig+naHW7OJF8FMG1XCudF1M9Ape1D0gV6CqrT+IXKIjLxi+n88NATZGd
	sIn/zSDRzjCP9WJ/eRdZUMZz2EkrDDPwRUIRkPcDhqhwbYQf23CRqjRjlnEjUYApRst5s7PXgbyri
	SRNSFqTOFUaxQElJHiRPgTqgpddG9qjeBZae+DdglwlupUIqURAdxBBx818HQ1SuiyhRnnuUx9skT
	Y7TdvgPHro2QtDLtB+fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqBET-0006Y6-6P; Wed, 24 Jul 2019 06:58:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqBED-0006Rl-HT
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 06:58:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4C16728;
 Tue, 23 Jul 2019 23:58:18 -0700 (PDT)
Received: from [10.163.1.197] (unknown [10.163.1.197])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7A4743F694;
 Wed, 24 Jul 2019 00:00:16 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V6 RESEND 0/3] arm64/mm: Enable memory hot remove
To: Mark Rutland <mark.rutland@arm.com>
References: <1563171470-3117-1-git-send-email-anshuman.khandual@arm.com>
 <20190723105636.GA5004@lakrids.cambridge.arm.com>
Message-ID: <a69ed426-98ff-32ed-82ce-8216dd56daba@arm.com>
Date: Wed, 24 Jul 2019 12:28:50 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190723105636.GA5004@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_235821_675397_89F45E28 
X-CRM114-Status: GOOD (  27.24  )
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


On 07/23/2019 04:26 PM, Mark Rutland wrote:
> Hi Anshuman,

Hello Mark,

> 
> On Mon, Jul 15, 2019 at 11:47:47AM +0530, Anshuman Khandual wrote:
>> This series enables memory hot remove on arm64 after fixing a memblock
>> removal ordering problem in generic try_remove_memory() and a possible
>> arm64 platform specific kernel page table race condition. This series
>> is based on linux-next (next-20190712).
>>
>> Concurrent vmalloc() and hot-remove conflict:
>>
>> As pointed out earlier on the v5 thread [2] there can be potential conflict
>> between concurrent vmalloc() and memory hot-remove operation. This can be
>> solved or at least avoided with some possible methods. The problem here is
>> caused by inadequate locking in vmalloc() which protects installation of a
>> page table page but not the walk or the leaf entry modification.
>>
>> Option 1: Making locking in vmalloc() adequate
>>
>> Current locking scheme protects installation of page table pages but not the
>> page table walk or leaf entry creation which can conflict with hot-remove.
>> This scheme is sufficient for now as vmalloc() works on mutually exclusive
>> ranges which can proceed concurrently only if their shared page table pages
>> can be created while inside the lock. It achieves performance improvement
>> which will be compromised if entire vmalloc() operation (even if with some
>> optimization) has to be completed under a lock.
>>
>> Option 2: Making sure hot-remove does not happen during vmalloc()
>>
>> Take mem_hotplug_lock in read mode through [get|put]_online_mems() constructs
>> for the entire duration of vmalloc(). It protects from concurrent memory hot
>> remove operation and does not add any significant overhead to other concurrent
>> vmalloc() threads. It solves the problem in right way unless we do not want to
>> extend the usage of mem_hotplug_lock in generic MM.
>>
>> Option 3: Memory hot-remove does not free (conflicting) page table pages
>>
>> Don't not free page table pages (if any) for vmemmap mappings after unmapping
>> it's virtual range. The only downside here is that some page table pages might
>> remain empty and unused until next memory hot-add operation of the same memory
>> range.
>>
>> Option 4: Dont let vmalloc and vmemmap share intermediate page table pages
>>
>> The conflict does not arise if vmalloc and vmemap range do not share kernel
>> page table pages to start with. If such placement can be ensured in platform
>> kernel virtual address layout, this problem can be successfully avoided.
>>
>> There are two generic solutions (Option 1 and 2) and two platform specific
>> solutions (Options 2 and 3). This series has decided to go with (Option 3)

s/Option 2 and 3/Option 3 and 4/

>> which requires minimum changes while self-contained inside the functionality.
> 
> ... while also leaking memory, right?

This is not a memory leak. In the worst case where an empty page table page could
have been freed after parts of it's kernel virtual range span's vmemmap mapping has
been taken down still remains attached to the higher level page table entry. This
empty page table page will be completely reusable during future vmalloc() allocations
or vmemmap mapping for newly hot added memory in overlapping memory range. It is just
an empty data structure sticking around which could (probably would) be reused later.
This problem will not scale and get worse because its part of kernel page table not
user process which could get multiplied. Its a small price we are paying to remain
safe from a vmalloc() and memory hot remove potential collisions on the kernel page
table. IMHO that is fair enough.

> 
> In my view, option 2 or 4 would have been preferable. Were there

I would say option 2 is the ideal solution where we make sure that each vmalloc()
instance is protected against concurrent memory hot remove through a read side lock
via [get|put]_online_mems().

Option 4 is very much platform specific and each platform has to make sure that they
remain compliant all the time which is not ideal. Its is also an a work around which
avoids the problem and does not really fix it.

> specific technical reasons to not go down either of those routes? I'm

Option 2 will require wider agreement as it involves a very critical hot-path vmalloc()
which can affect many workloads. IMHO Option 4 is neither optimal and not does it solve
the problem correctly. Like this approach it just avoids it but unlike this touches upon
another code area.

> not sure that minimizing changes is the right rout given that this same
> problem presumably applies to other architectures, which will need to be
> fixed.

Yes this needs to be fixed but we can get there one step at a time. vmemmap tear
down process can start freeing empty page table pages when this gets solved. But
why should it prevent entire memory hot remove functionality from being available.

> 
> Do we know why we aren't seeing issues on other architectures? e.g. is
> the issue possible but rare (and hence not reported), or masked by
> something else (e.g. the layout of the kernel VA space)?

I would believe so but we can only get more insights from respective architecture folks.

> 
> I'd like to solve the underyling issue before we start adding new
> functionality.

The entire memory hot-remove functionality from the platform perspective has four
primary functions.

1. Tear down linear mapping
2. Tear down vmemmap mapping
3. Free empty kernel page table pages after tearing down linear mapping
4. Free empty kernel page table pages after tearing down vmemmap mapping

This particular issue mentioned before prevents just the last function (4) which
in the worst case will retain some empty page tables pages erstwhile holding vmemmap
mapping in the kernel page table but otherwise provides complete memory hot remove
functionality.

Why should all these remaining memory hot-remove functions be prevented from being
available for use ? The remaining set of functions (1-3) do not create any side affects
or introduce any new bugs. Also function (4) is not tightly coupled with rest of the
functions (1-3) and anyways will be unlocked independently when the particular issue
gets resolved. The point I am trying to make here is they are not tightly coupled
and perceiving them that way blocks remaining memory hot-remove functionality from
being available.

> 
>> Testing:
>>
>> Memory hot remove has been tested on arm64 for 4K, 16K, 64K page config
>> options with all possible CONFIG_ARM64_VA_BITS and CONFIG_PGTABLE_LEVELS
>> combinations. Its only build tested on non-arm64 platforms.
> 
> Could you please share how you've tested this?
> 
> Having instructions so that I could reproduce this locally would be very
> helpful.

Please find the series rebased on v5.3-rc1 along with test patches which
enable sysfs interfaces for memory hot add and remove used for testing.

git://linux-arm.org/linux-anshuman.git (memory_hotremove/v6_resend_v5.3-rc1)

Sample Testing Procedure:

echo offline > /sys/devices/system/memory/auto_online_blocks
echo 0x680000000 > /sys/devices/system/memory/probe
echo online_movable > /sys/devices/system/memory/memory26/state
echo 0x680000000 > /sys/devices/system/memory/unprobe

Writing into unprobe trigger offlining first followed by actual memory removal.

NOTE:

This assumes that 0x680000000 is valid memory block starting physical address
and memory26 gets created because of the preceding memory hot addition. Please
use appropriate values based on your local setup. Let me know how it goes and
if I could provide more information.

- Anshuman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
