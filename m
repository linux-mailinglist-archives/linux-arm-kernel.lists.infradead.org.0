Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C69821B48EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 17:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9dBIjVZuRmUjVUxXG/W8FwRIK0uPPDE3vnFm3AJKhb8=; b=GUCtswXxqdMnFr
	nkTNaQLPNSuoyG1R4i1ZB0EuTw+Jicfts78mn7LWjiZHfPlWAUAdMmfctSoirP1E/nJmK2lh6ltgx
	A/v0q3xfrOA1BkTvp3iNMLsanWXBHQV/jmykhzQDmYklosxGTKYPjxw3QAHlf2bQwcumbwHtMpgSb
	UkuKaqjLj3O/6+hvmIHu0PaQ/ztHbXJOFmyJr1QsKsLcSHfldiQYJxB1Ph5CWJkicOHr9SlLessdf
	KYjzbmkk+mbIhLYncex0Q1LiXIOdiRHIkBst9wIExjyomlIuAhBLF1jvQs/zkSRntJVxH3VdTZUuB
	a6DcmcOWWRmFERqH88ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRHUN-0001Ao-OV; Wed, 22 Apr 2020 15:40:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRHU6-00018Q-9W; Wed, 22 Apr 2020 15:40:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AEBA730E;
 Wed, 22 Apr 2020 08:40:20 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4312E3F68F;
 Wed, 22 Apr 2020 08:40:19 -0700 (PDT)
Subject: Re: [PATCH 0/3] kexec/memory_hotplug: Prevent removal and accidental
 use
To: "Eric W. Biederman" <ebiederm@xmission.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <87sgh4h4r7.fsf@x220.int.ebiederm.org>
 <59b74cc5-89aa-83fa-5532-8e64d6382fdd@arm.com>
 <87a7333c4q.fsf@x220.int.ebiederm.org>
From: James Morse <james.morse@arm.com>
Message-ID: <2833b9ce-08e1-5895-ca33-ca8cbaa5e8f4@arm.com>
Date: Wed, 22 Apr 2020 16:40:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <87a7333c4q.fsf@x220.int.ebiederm.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_084022_422837_7A5F1717 
X-CRM114-Status: GOOD (  31.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eric,

On 22/04/2020 14:04, Eric W. Biederman wrote:
> James Morse <james.morse@arm.com> writes:
>> On 15/04/2020 21:29, Eric W. Biederman wrote:
>>> James Morse <james.morse@arm.com> writes:
>>>> arm64 recently queued support for memory hotremove, which led to some
>>>> new corner cases for kexec.
>>>>
>>>> If the kexec segments are loaded for a removable region, that region may
>>>> be removed before kexec actually occurs. This causes the first kernel to
>>>> lockup when applying the relocations. (I've triggered this on x86 too).
>>>>
>>>> The first patch adds a memory notifier for kexec so that it can refuse
>>>> to allow in-use regions to be taken offline.
>>>>
>>>>
>>>> This doesn't solve the problem for arm64, where the new kernel must
>>>> initially rely on the data structures from the first boot to describe
>>>> memory. These don't describe hotpluggable memory.
>>>> If kexec places the kernel in one of these regions, it must also provide
>>>> a DT that describes the region in which the kernel was mapped as memory.
>>>> (and somehow ensure its always present in the future...)
>>>>
>>>> To prevent this from happening accidentally with unaware user-space,
>>>> patches two and three allow arm64 to give these regions a different
>>>> name.
>>>>
>>>> This is a change in behaviour for arm64 as memory hotadd and hotremove
>>>> were added separately.
>>>>
>>>>
>>>> I haven't tried kdump.
>>>> Unaware kdump from user-space probably won't describe the hotplug
>>>> regions if the name is different, which saves us from problems if
>>>> the memory is no longer present at kdump time, but means the vmcore
>>>> is incomplete.
>>>>
>>>>
>>>> These patches are based on arm64's for-next/core branch, but can all
>>>> be merged independently.
>>>
>>> So I just looked through these quickly and I think there are real
>>> problems here we can fix, and that are worth fixing.
>>>
>>> However I am not thrilled with the fixes you propose.
>>
>> Sure. Unfortunately /proc/iomem is the only trick arm64 has to keep the existing
>> kexec-tools working.
>> (We've had 'unthrilling' patches like this before to prevent user-space from loading the
>> kernel over the top of the in-memory firmware tables.)
>>
>> arm64 expects the description of memory to come from firmware, be that UEFI for memory
>> present at boot, or the ACPI AML methods for memory that was added
>> later.
>>
>> On arm64 there is no standard location for memory. The kernel has to be handed a pointer
>> to the firmware tables that describe it. The kernel expects to boot from memory that was
>> present at boot.

> What do you do when the firmware is wrong? 

The firmware gets fixed. Its the only source of facts about the platform.


> Does arm64 support the
> mem=xxx@yyy kernel command line options?

Only the debug option to reduce the available memory.


> If you want to handle the general case of memory hotplug having a
> limitation that you have to boot from memory that was present at boot is
> a bug, because the memory might not be there.

arm64's arch code prevents the memory described by the UEFI memory map from being taken
offline/removed.

Memory present at boot may have firmware reservations, that are being used by some other
agent in the system. firmware-first RAS errors are one, the interrupt controllers'
property and pending tables are another.

The UEFI memory map's description of memory may have been incomplete, as there may have
been regions carved-out, not described at all instead of described as reserved.

The UEFI runtime services will live in memory described by the UEFI memory map.


>> Modifying the firmware tables at runtime doesn't solve the problem as we may need to move
>> the firmware-reserved memory region that describes memory. User-space may still load and
>> kexec either side of that update.
>>
>> Even if we could modify the structures at runtime, we can't update a loaded kexec image.
>> We have no idea which blob from userspace is the DT. It may not even be linux that has
>> been loaded.
> 
> What can be done and very reasonably so is on memory hotplug:
> - Unloaded any loaded kexec image.
> - Block loading any new image until the hotplug operation completes.
> 
> That is simple and generic, and can be done for all architectures.

Yes, certainly.


> This doesn't apply to kexec on panic kernel because it fundamentally
> needs to figure out how to limp along (or reliably stop) when it has the
> wrong memory map.
> 
>> We can't emulate parts of UEFI's handover because kexec's purgatory
>> isn't an EFI program.
> 
> Plus much of EFI is unusable after ExitBootServices is called.

Of course, we even overwrite its code when allocating memory for the kernel.

I bring it up because it is our only way of handing over the memory map of the system.


>> I can't see a path through all this. If we have to modify existing user-space, I'd rather
>> leave it broken. We can detect the problem in the arch code and print a warning at load time.

> The weirdest thing to me in all of this is that you have been wanting to
> handle memory hotplug.  But you don't want to change or deal with the
> memory map changing when hotplug occurs.  The memory map changing is
> fundamentally memory hotplug does.

arm64 doesn't have a 'the memory map', just what came from firmware. The memory map linux
uses is built from these firmware descriptions.

Memory is discovered from:
early: The DT memory node.
early: The UEFI memory map.
later: ACPI hotplug memory.

Later kexec()d or kdump'd kernels rebuild the memory map from the firmware description.
This means kexec is totally invisible. Not changing these descriptions is important to
ensure we don't accidentally corrupt them, or make up some property that isn't true.

Your request to 'change' the memory map involves creating a new UEFI memory map that
describes the memory we found via ACPI hotplug.
arm64 doesn't do this because we expect the next kernel to re-discover this memory via
ACPI hotplug.

Generally, arm64 expects a kexec'd kernel to learn and discover things in exactly the same
way that it would have done if it were the first kernel to have been booted.


> So I think it is fundamental to figure out how to pass the updated
> memory map.  Either through command line mem=xxx@yyy command line
> options or through another option.

We re-discover it from firmware. Booting from memory that is not described as memory early
enough is the second problem addressed by this series.


> If you really want to keep the limitation that you have to have the
> kernel in the initial memory map you can compare that map to the
> efi tables when selecting the load address.

Great. How can user-space know the contents of that map?
It only reads /proc/iomem today. On a system that doesn't support APCI memory hotplug,
/proc/iomem describes the memory present at boot. These things have never been different
before.


> Expecting userspace to reload the loaded kernel after memory hotplug is
> completely reasonable.

I'm sold on this, it implicitly solves the 'kexec image wants to be copied into removed
memory' problem.


> Unless I am mistaken memory hotplug is expected to be a rare event not
> something that happens every day, certainly not something that happens
> every minute.

One of the motivations for supporting memory hotplug is for VMs. Container projects like
to create VMs in advance, then reconfigure them just before they are used. This saves the
time taken by the hypervisor to do its work.

Hitting the 'not booted from boot memory' is now just using kexec in a VM deployed like this.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
