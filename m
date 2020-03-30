Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 787BE198216
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 19:18:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LWrsugKb9YYP6fN7BdTjk5TGfoxgO2U5W/nlkgzfphM=; b=h0w2a/rZoHxoZt
	rGNhNs8BRoh1xbjkdUYpnIexD86KJCm3/jAU6OJ5FdlFKIAEIU3dodQ7HrK5aWXtmNLk7WR1LvE/1
	8/wNq0JGFLWWGYU0XOtE0MZj4X8+ZqjcWROKIt5DD8qvfJS+8bVY7tJtcWCq5QOA2WYj8kzuJAFZJ
	zYXTtT4G/s/Mz5nzHDM9GrWVCUtglZDSmonRv8ih+Nal5+hfRGOhFIcSQtHOrRq5niUtm+a3Tb3zn
	ERH/TTqhXiVT8RdGc/BBDkrFyeIyfe7+AWRFqorDA1g5DZmcW8VrpBPW7ThQrDREnHh4VJbRVuuBu
	TEkiqv1bxLZWJjmDA1Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIy3K-00045L-HR; Mon, 30 Mar 2020 17:18:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIy2s-0003pb-D0; Mon, 30 Mar 2020 17:17:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BDAC9101E;
 Mon, 30 Mar 2020 10:17:53 -0700 (PDT)
Received: from [172.16.1.108] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 541CA3F68F;
 Mon, 30 Mar 2020 10:17:52 -0700 (PDT)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
To: David Hildenbrand <david@redhat.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-2-james.morse@arm.com>
 <321e6bf7-e898-7701-dd60-6c25237ff9cd@redhat.com>
 <a21d90ea-2566-a2bc-ad2f-6464a416c97f@arm.com>
 <9cb4ea0d-34c3-de42-4b3f-ee25a59c4835@redhat.com>
 <b0443908-e36f-9bc4-4a8a-4206cb782d4b@arm.com>
 <72672e2c-a57a-8df9-0cff-8035cbce7740@redhat.com>
 <34274b02-60ba-eb78-eacd-6dc1146ed3cd@arm.com>
 <80e4d1d7-f493-3f66-f700-86f18002d692@redhat.com>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <dfacf85f-d79d-8742-7a13-1ac0a67bad04@arm.com>
Date: Mon, 30 Mar 2020 18:17:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <80e4d1d7-f493-3f66-f700-86f18002d692@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_101754_544598_473B666B 
X-CRM114-Status: GOOD (  30.81  )
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
 linux-mm@kvack.org, Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi David,

On 3/30/20 2:13 PM, David Hildenbrand wrote:
>> Adding a sentence about the way kexec load works may help, the first paragraph
>> would read:
>>
>> | Kexec allows user-space to specify the address that the kexec image should be
>> | loaded to. Because this memory may be in use, an image loaded for kexec is not
>> | stored in place, instead its segments are scattered through memory, and are
>> | re-assembled when needed. In the meantime, the target memory may have been
>> | removed.
>>
>> Do you think thats clearer?
> 
> Yes, very much. Maybe add, that the target is described by user space
> during kexec_load() and that user space - right now - parses /proc/iomem
> to find applicable system memory.

(I don't think x86 parses /proc/iomem anymore). I'll repost this patch with that
expanded commit message, once we've agreed this is the right thing to do!


>>> I wonder if we should instead make the "kexec -e" fail. It tries to
>>> touch random system memory.
>>
>> Heh, isn't touching random system memory what kexec does?!
> 
> Having a racy user interface that can trigger kernel crashes feels very
> wrong. We should limit the impact.


>> Its all described to user-space as 'System RAM'. Teaching it to probe
>> /sys/devices/memory/... would require a user-space change.
> 
> I think we should really rename hotplugged memory on all architectures.
> 
> Especially also relevant for virtio-mem/hyper-v balloon, where some
> pieces of (hotplugged )memory blocks are partially unavailable and
> should not be touched - accessing them results in unpredictable behavior
> (e.g., crashes or discarded writes).

I'll need to look into these. I'd assume for KVM that virtio-mem can be brought
back when its accessed ... its just going to be slow.


>>> Will probably need some thought. But it will actually also bail out when
>>> user space passes wrong physical memory addresses, instead of
>>> triple-faulting silently.
>>
>> With this change, the reboot(LINUX_REBOOT_CMD_KEXEC), call would fail. This
>> thing doesn't usually return, so we're likely to trigger error-handling that has
>> never run before.
>>
>> (Last time I debugged one of these, it turned out kexec had taken the network
>> interfaces down, meaning the nfsroot was no longer accessible)
>>
>> How can user-space know whether kexec is going to succeed, or fail like this?
>> Any loaded kexec kernel could secretly be in this broken state.
>>
>> Can user-space know what caused this to become unreliable? (without reading the
>> kernel source)
>>
>>
>> Given kexec can be unloaded by user-space, I think its better to prevent us
>> getting into the broken state, preferably giving the hint that kexec us using
>> that memory. The user can 'kexec -u', then retry removing the memory.
>>
>> I think forbidding the memory-offline is simpler for user-space to deal with.
> 
> I thought about this over the weekend, and I don't think it's the right
> approach.


> 1. It's racy. If memory is getting offlined/unplugged just while user
> space is about to trigger the kexec_load(), you end up with the very
> same triple-fault.

load? How is this different to user-space providing a bogus address?

Sure, user-space may take a nap between parsing /proc/iomem and calling
kexec_load(), but the kernel should reject these as they would never work.

(I can't see where sanity_check_segment_list() considers the platform's memory.
If it doesn't, we should fix it)

Once the image is loaded, and clashes with a request to remove the memory there
are two choices: secretly unload the image, or prevent the memory being taken
offline.


> 2. It's semantically wrong. kexec does not need online memory ("managed
> by the buddy"), but still you disallow offlining memory.

It does need the memory if you want 'kexec -e' to succeed.
If there were any sanity tests, they should have happened at load time.

The memory is effectively in use by the loaded kexec image. User-space told the
kernel to use this memory, you should not be able to then remove it, without
unloading the kexec image first.


Are you saying feeding bogus addresses to kexec_load() is _expected_ to blow up
like this?


> I would really much rather want to see user-space choosing boot memory
> (e.g., renaming hotplugged memory on all architectures), and checking
> during "kexec -e" if the selected memory is actually "there", before
> trying to write to it.

How does 'kexec -e' know where the kexec kernel was loaded? You'd need to pass
something between 'load' and 'exec'. How do you keep existing user-space working
as much as possible?

What do you do if the memory isn't there? User-space just called reboot(), it
would be better to avoid getting into the situation where we have to fail that call.


Solving the bigger problem, would add a 'kexec_it_now' flag to the kexec_load()
call. This would make the window where 'stuff' can change much smaller. Things
changing while user-space sleeps isn't a solvable problem, these would need to
be rejected by sanity tests at load time.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
