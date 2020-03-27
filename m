Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5135B195D4A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 19:08:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rME2OZ3fBan5tiGQ2GiQlbALPs3o61py+tuzVNb+YWQ=; b=gpsDu/d+qzhlNT
	cIVm0/tJCAYd51DK6cxKXjDwphGXBftuMKXbtW5113SazZNPbIVG6XEnPHIzh3xnaQVUJRBWr2NPB
	FI3BRXm5kFclvOoDo/ydK8pXgkoJxOl7rihIiJVO5vIKQtmbAKq5lBUzZynoS9mUGO8zJEFP0Rz0d
	SWkC/1rDKqE8dkXOgHSSJ0ZwrXpvXArjtYPiM6spKjbOayQtuvJC9WGdKov++LVgtwBWUUWazWyKW
	QEKzl4f11Gp7EmVMAMGXvvBYyJfxK60e05blLLpalVGpniydWAYscgk3GZvzY5FopaaczTM7xXCf5
	0JEvsdLS/P1RAOWYiRdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHtOt-0007jS-Tn; Fri, 27 Mar 2020 18:08:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHtOi-0007i6-H0; Fri, 27 Mar 2020 18:08:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3765A30E;
 Fri, 27 Mar 2020 11:07:58 -0700 (PDT)
Received: from [172.16.1.108] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5FB9D3F71E;
 Fri, 27 Mar 2020 11:07:56 -0700 (PDT)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
To: David Hildenbrand <david@redhat.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-2-james.morse@arm.com>
 <321e6bf7-e898-7701-dd60-6c25237ff9cd@redhat.com>
 <a21d90ea-2566-a2bc-ad2f-6464a416c97f@arm.com>
 <9cb4ea0d-34c3-de42-4b3f-ee25a59c4835@redhat.com>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <b0443908-e36f-9bc4-4a8a-4206cb782d4b@arm.com>
Date: Fri, 27 Mar 2020 18:07:44 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <9cb4ea0d-34c3-de42-4b3f-ee25a59c4835@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_110800_653824_CA564D7C 
X-CRM114-Status: GOOD (  25.84  )
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

On 3/27/20 5:06 PM, David Hildenbrand wrote:
> On 27.03.20 17:56, James Morse wrote:
>> On 3/27/20 9:30 AM, David Hildenbrand wrote:
>>> On 26.03.20 19:07, James Morse wrote:
>>>> An image loaded for kexec is not stored in place, instead its segments
>>>> are scattered through memory, and are re-assembled when needed. In the
>>>> meantime, the target memory may have been removed.
>>>>
>>>> Because mm is not aware that this memory is still in use, it allows it
>>>> to be removed.
>>>>
>>>> Add a memory notifier to prevent the removal of memory regions that
>>>> overlap with a loaded kexec image segment. e.g., when triggered from the
>>>> Qemu console:
>>>> | kexec_core: memory region in use
>>>> | memory memory32: Offline failed.

>>>> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
>>>> index c19c0dad1ebe..ba1d91e868ca 100644
>>>> --- a/kernel/kexec_core.c
>>>> +++ b/kernel/kexec_core.c
>>
>>> E.g., in kernel/kexec_core.c:kimage_alloc_pages()
>>>
>>> "SetPageReserved(pages + i);"
>>>
>>> Pages that are reserved cannot get offlined. How are you able to trigger
>>> that before this patch? (where is the allocation path for kexec, which
>>> will not set the pages reserved?)
>>
>> This sets page reserved on the memory it gets back from
>> alloc_pages() in kimage_alloc_pages(). This is when you load the image[0].
>>
>> The problem I see is for the target or destination memory once you execute the
>> image. Once machine_kexec() runs, it tries to write to this, assuming it is
>> still present...

> Let's recap
> 
> 1. You load the image. You allocate memory for e.g., the kexec kernel.
> The pages will be marked PG_reserved, so they cannot be offlined.
> 
> 2. You do the kexec. The kexec kernel will only operate on a reserved
> memory region (reserved via e.g., kernel cmdline crashkernel=128M).

I think you are merging the kexec and kdump behaviours.
(Wrong terminology? The things behind 'kexec -l Image' and 'kexec -p Image')

For kdump, yes, the new kernel is loaded into the crashkernel reservation, and
confined to it.


For regular kexec, the new kernel can be loaded any where in memory. There might
be a difference with how this works on arm64....

The regular kexec kernel isn't stored in its final location when its loaded, its
relocated there when the image is executed. The target/destination memory may
have been removed in the meantime.

(an example recipe below should clarify this)


> Is it that in 2., the reserved memory region (for the crashkernel) could
> have been offlined in the meantime?

No, for kdump: the crashkernel reservation is PG_reserved, and its not something
mm knows how to move, so that region can't be taken offline.

(On arm64 we additionally prevent the boot-memory from being removed as it is
all described as present by UEFI. The crashkernel reservation would always be
from this type of memory)


This is about a regular kexec, any crashdump reservation is irrelevant.
This kexec kernel is temporarily stored out of line, then relocated when executed.

A recipe so that we're at least on the same terminal! This is on a TX2 running
arm64's for-next/core using Qemu-TCG to emulate x86. (Sorry for the bizarre
config, its because Qemu supports hotremove on x86, but not yet on arm64).


Insert the memory:
(qemu) object_add memory-backend-ram,id=mem1,size=1G
(qemu) device_add pc-dimm,id=dimm1,memdev=mem1

| root@vm:~# free -m
|               total        used        free      shared  ...
| Mem:            918          52         814           0  ...
| Swap:             0           0           0


Bring it online:
| root@vm:~# cd /sys/devices/system/memory/
| root@vm:/sys/devices/system/memory# for F in memory3*; do echo \
| online_movable > $F/state; done

| Built 1 zonelists, mobility grouping on.  Total pages: 251049
| Policy zone: DMA32

| -bash: echo: write error: Invalid argument
| root@vm:/sys/devices/system/memory# free -m
|               total        used        free      shared  ...
| Mem:           1942          53        1836           0  ...
| Swap:             0           0           0


Load kexec:
| root@vm:/sys/devices/system/memory# kexec -l /root/bzImage --reuse-cmdline

Press the Attention button to request removal:

(qemu) device_del dimm1

| Offlined Pages 32768
| Offlined Pages 32768
| Offlined Pages 32768
| Offlined Pages 32768
| Offlined Pages 32768
| Offlined Pages 32768
| Offlined Pages 32768
| Offlined Pages 32768
| Built 1 zonelists, mobility grouping on.  Total pages: 233728
| Policy zone: DMA32

The memory is gone:
| root@vm:/sys/devices/system/memory# free -m
|               total        used        free      shared  ...
| Mem:            918          89         769           0  ...
| Swap:             0           0           0

Trigger kexec:
| root@vm:/sys/devices/system/memory# kexec -e

[...]

| sd 0:0:0:0: [sda] Synchronizing SCSI cache
| kexec_core: Starting new kernel

... and Qemu restarts the platform firmware instead of proceeding with kexec.
(I assume this is a triple fault)

You can use mem-min and mem-max to control where kexec's user space will place
the memory.


If you apply this patch, the above sequence will fail at the device remove step,
as the physical addresses match the loaded kexec image:

| Offlined Pages 32768
| Offlined Pages 32768
| Offlined Pages 32768
| Offlined Pages 32768
| Offlined Pages 32768
| Offlined Pages 32768
| Offlined Pages 32768
| kexec_core: Memory region in use
| kexec_core: Memory region in use
| memory memory39: Offline failed.
| Built 1 zonelists, mobility grouping on.  Total pages: 299212
| Policy zone: Normal

| root@vm:/sys/devices/system/memory# free -m
|               total        used        free      shared  ...
| Mem:           1942          90        1793           0    ...
| Swap:             0           0           0

I can't remove the DIMM, because we failed to offline it:

(qemu) object_del mem1
object 'mem1' is in use, can not be deleted

and I can trigger kexec and boot the new kernel.

kexec user-space here comes from debian bullseye. It picked the removable memory
all by itself without any additional arguments.


(a different issue that can be ignored for now: x86 additionally fails to reboot
if I remove memory, even if its not in use by the kexec image. This doesn't
cause qemu to reboot via firmware, I think it dies before the console. It
doesn't happen on arm64. I suspect the memory map is snapshotted and assumed to
still be correct when the image is executed.)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
