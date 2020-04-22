Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 491C51B4414
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 14:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=65uL2CINSbI0fczaco3uKb7ZXugXnhQ+kxtZ1sYTA7Q=; b=nGMf97Zig5WzMO
	q/pw/twP+NEcTFHg9dOM6rskD/07dkIbLxPIWZwS1bDgfgCh4BbLGw9hxQBh4HuB+9TcvWed7/nFu
	G6p61yK/t+r7H6mhs4WOR9x/2W0eZmIwo7iDP5e6JfI1Bsxxsg9nJy5eTbfWid/1S4V4aPjphHXYL
	x8oPxlcAxVrt2naY8JtPaowWpigGpatxfCczA1/9LssFX9iHBulo+g06tVLwyTMS5QQT3WeuQsWKE
	CwdIa2WdHliU5F76IHmDnzsziAmbD/XSRNxleNtci5gwrGrllBiRVECSW67m618FSrkLQpeP6lMQ5
	Y4w7uop5/iw+BOiS7vrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jREGw-00060B-Qx; Wed, 22 Apr 2020 12:14:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jREGe-0005yJ-JR; Wed, 22 Apr 2020 12:14:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 12D4931B;
 Wed, 22 Apr 2020 05:14:16 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D04733F6CF;
 Wed, 22 Apr 2020 05:14:14 -0700 (PDT)
Subject: Re: [PATCH 0/3] kexec/memory_hotplug: Prevent removal and accidental
 use
To: "Eric W. Biederman" <ebiederm@xmission.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <87sgh4h4r7.fsf@x220.int.ebiederm.org>
From: James Morse <james.morse@arm.com>
Message-ID: <59b74cc5-89aa-83fa-5532-8e64d6382fdd@arm.com>
Date: Wed, 22 Apr 2020 13:14:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <87sgh4h4r7.fsf@x220.int.ebiederm.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_051416_725997_B76A7878 
X-CRM114-Status: GOOD (  18.28  )
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

On 15/04/2020 21:29, Eric W. Biederman wrote:
> James Morse <james.morse@arm.com> writes:
> 
>> Hello!
>>
>> arm64 recently queued support for memory hotremove, which led to some
>> new corner cases for kexec.
>>
>> If the kexec segments are loaded for a removable region, that region may
>> be removed before kexec actually occurs. This causes the first kernel to
>> lockup when applying the relocations. (I've triggered this on x86 too).
>>
>> The first patch adds a memory notifier for kexec so that it can refuse
>> to allow in-use regions to be taken offline.
>>
>>
>> This doesn't solve the problem for arm64, where the new kernel must
>> initially rely on the data structures from the first boot to describe
>> memory. These don't describe hotpluggable memory.
>> If kexec places the kernel in one of these regions, it must also provide
>> a DT that describes the region in which the kernel was mapped as memory.
>> (and somehow ensure its always present in the future...)
>>
>> To prevent this from happening accidentally with unaware user-space,
>> patches two and three allow arm64 to give these regions a different
>> name.
>>
>> This is a change in behaviour for arm64 as memory hotadd and hotremove
>> were added separately.
>>
>>
>> I haven't tried kdump.
>> Unaware kdump from user-space probably won't describe the hotplug
>> regions if the name is different, which saves us from problems if
>> the memory is no longer present at kdump time, but means the vmcore
>> is incomplete.
>>
>>
>> These patches are based on arm64's for-next/core branch, but can all
>> be merged independently.
> 
> So I just looked through these quickly and I think there are real
> problems here we can fix, and that are worth fixing.
> 
> However I am not thrilled with the fixes you propose.

Sure. Unfortunately /proc/iomem is the only trick arm64 has to keep the existing
kexec-tools working.
(We've had 'unthrilling' patches like this before to prevent user-space from loading the
kernel over the top of the in-memory firmware tables.)


arm64 expects the description of memory to come from firmware, be that UEFI for memory
present at boot, or the ACPI AML methods for memory that was added later.

On arm64 there is no standard location for memory. The kernel has to be handed a pointer
to the firmware tables that describe it. The kernel expects to boot from memory that was
present at boot.

Modifying the firmware tables at runtime doesn't solve the problem as we may need to move
the firmware-reserved memory region that describes memory. User-space may still load and
kexec either side of that update.

Even if we could modify the structures at runtime, we can't update a loaded kexec image.
We have no idea which blob from userspace is the DT. It may not even be linux that has
been loaded.

We can't emulate parts of UEFI's handover because kexec's purgatory isn't an EFI program.


I can't see a path through all this. If we have to modify existing user-space, I'd rather
leave it broken. We can detect the problem in the arch code and print a warning at load time.


James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
