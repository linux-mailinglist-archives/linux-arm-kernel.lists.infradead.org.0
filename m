Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C40195A39
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 16:47:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgXSlc1J+7VrB855i/vtu0jywvQ+D1li3Z03PsTb+K8=; b=LKb9h5ye8mBrsR
	xbQEBWKlew427/+MLqBMkoExh8+ze924n7hcrwhCC76AObEBXE8o0KHbqX8e2jztKSLMGtGSMDeu6
	aqHOvx8Z+vJYy4AUABZKxR1AFoJsHCQlinsYW0/ya67gUp/x4+AmFRg3KFmDfJ4UHw9Uap2C/beN+
	kvzB7LAL2nAw3FoHJszmLRUazCkTakjhLICgAdLrk+NPTE6lvxAmvAVfBlc4Sbd9tnJ0pYZ711mu/
	jTdBT0IB4UX66A1HyPva7lEYQCV8/UZvAumzxfHXcA9PmCnGE+MFCskYTMD/Ro/uFYdFkKZYbaPVe
	5yA3V8vUTnBS7ywCizYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHrCW-00023M-AY; Fri, 27 Mar 2020 15:47:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHrCJ-000227-PJ; Fri, 27 Mar 2020 15:47:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E86051FB;
 Fri, 27 Mar 2020 08:47:02 -0700 (PDT)
Received: from [172.16.1.108] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6411E3F71F;
 Fri, 27 Mar 2020 08:47:01 -0700 (PDT)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
To: Anshuman Khandual <anshuman.khandual@arm.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-2-james.morse@arm.com>
 <c4764e40-96d5-e2e4-6479-dc8d167e25e0@arm.com>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <edbaab77-8d89-46ed-a93e-5b76f457c1af@arm.com>
Date: Fri, 27 Mar 2020 15:46:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <c4764e40-96d5-e2e4-6479-dc8d167e25e0@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_084703_911169_30B53218 
X-CRM114-Status: GOOD (  25.88  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anshuman,

On 3/27/20 12:43 AM, Anshuman Khandual wrote:
> On 03/26/2020 11:37 PM, James Morse wrote:
>> An image loaded for kexec is not stored in place, instead its segments
>> are scattered through memory, and are re-assembled when needed. In the
>> meantime, the target memory may have been removed.
>>
>> Because mm is not aware that this memory is still in use, it allows it
>> to be removed.

> Why the isolation process does not fail when these pages are currently
> being used by kexec ?

Kexec isn't using them right now, but it will once kexec is triggered.
Those physical addresses are held in some internal kexec data structures until
kexec is triggered.


>> Add a memory notifier to prevent the removal of memory regions that
>> overlap with a loaded kexec image segment. e.g., when triggered from the
>> Qemu console:
>> | kexec_core: memory region in use
>> | memory memory32: Offline failed.
> 
> Yes this is definitely an added protection for these kexec loaded kernels
> memory areas from being offlined but I would have expected the preceding
> offlining to have failed as well.

kexec hasn't allocate the memory, part of the regions user-space may specify for
the next kernel may be in use. There is nothing to stop the memory being used in
the meantime.


Any other way of doing this would prevent us saying why it failed.
Like this, the user can spot the 'kexec: Memory region in use message', and
unload kexec.


>> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
>> index c19c0dad1ebe..ba1d91e868ca 100644
>> --- a/kernel/kexec_core.c
>> +++ b/kernel/kexec_core.c
>> @@ -1219,3 +1222,56 @@ void __weak arch_kexec_protect_crashkres(void)
>>  
>>  void __weak arch_kexec_unprotect_crashkres(void)
>>  {}
>> +
>> +/*
>> + * If user-space wants to offline memory that is in use by a loaded kexec
>> + * image, it should unload the image first.
>> + */

> Probably this would need kexec user manual and related system call man pages
> update as well.

I can't see anything relevant under Documentation. (kdump yes, kexec no...)


>> +static int mem_remove_cb(struct notifier_block *nb, unsigned long action,
>> +			 void *data)
>> +{
>> +	int rv = NOTIFY_OK, i;
>> +	struct memory_notify *arg = data;
>> +	unsigned long pfn = arg->start_pfn;
>> +	unsigned long nr_segments, sstart, send;
>> +	unsigned long end_pfn = arg->start_pfn + arg->nr_pages;
>> +
>> +	might_sleep();
> 
> Required ?

Habit, and I think best practice. We take a mutex, so might_sleep(), but we also
conditionally return before lockdep would see the mutex. Having this annotation
means a dangerous change to the way this is called triggers a warning without
having to test memory hotplug explicitly.


>> +
>> +	if (action != MEM_GOING_OFFLINE)
>> +		return NOTIFY_DONE;
>> +
>> +	mutex_lock(&kexec_mutex);
>> +	if (kexec_image) {
>> +		nr_segments = kexec_image->nr_segments;
>> +
>> +		for (i = 0; i < nr_segments; i++) {
>> +			sstart = PFN_DOWN(kexec_image->segment[i].mem);
>> +			send = PFN_UP(kexec_image->segment[i].mem +
>> +				      kexec_image->segment[i].memsz);
>> +
>> +			if ((pfn <= sstart && sstart < end_pfn) ||
>> +			    (pfn <= send && send < end_pfn)) {
>> +				pr_warn("Memory region in use\n");
>> +				rv = NOTIFY_BAD;
>> +				break;
>> +			}
>> +		}
>> +	}
>> +	mutex_unlock(&kexec_mutex);
>> +
>> +	return rv;
> 
> Variable 'rv' is redundant, should use NOTIFY_[BAD|OK] directly instead.

You'd prefer a mutex_unlock() in the middle of the loop? ... or goto?
(I'm not convinced)

>> +}
>> +
>> +static struct notifier_block mem_remove_nb = {
>> +	.notifier_call = mem_remove_cb,
>> +};
>> +
>> +static int __init register_mem_remove_cb(void)
>> +{
>> +	if (IS_ENABLED(CONFIG_MEMORY_HOTPLUG))
> 
> Should not all these new code here be wrapped with CONFIG_MEMORY_HOTREMOVE
> to reduce the scope as well as final code size when the config is disabled.

The compiler is really good at this. "if (false)" means this is all dead code,
and static means its not exported, so the compiler is free to remove it.

Not #ifdef-ing it makes it much more readable, and means the compiler checks its
valid C before it removes it. This avoids weird header include problems that
only show up on some rand-config builds.


Thanks,

James

>> +		return register_memory_notifier(&mem_remove_nb);
>> +
>> +	return 0;
>> +}
>> +device_initcall(register_mem_remove_cb);
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
