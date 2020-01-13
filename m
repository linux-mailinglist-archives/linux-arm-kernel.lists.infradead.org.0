Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2989D138D6D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:10:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u/MSNrfpJP1nHPC7xjVl6l8BR3Psz6+EThj3+wMLlOc=; b=ctEEUOH8S2uWJz
	t0p59Mpx2PfppaLou15fLv4GOSoeTqPUIrbOhjWGYJ3wIyQCZABMi1jsIv0/nOimGdliz9tua2/hx
	5BhQe/RYV/FgT3EJIi6NWGt77PhXi/r00eUhzgB9xgXQ6yPAup0+C6Q9qDt65cRMMBI7lL+66Xcqf
	u6XIfKwGJHHOWhkJI/WA2f+H+7fuepjT4ceqke54K6AKs2T6JkiMfGiqSitELdXoi8iyl3O5ZHCMp
	PypbVN874ci9RE+u1X0tBw9iRqYiOrQKftpOfS6nTitKKKc6nDASb4+4oJTbH/GNk3UGiQ+uGvQ3K
	1SIdm7gc83WemkdK4nlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvjp-0007oc-TM; Mon, 13 Jan 2020 09:10:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvji-0007o9-83
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 09:10:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A23501063;
 Mon, 13 Jan 2020 01:10:11 -0800 (PST)
Received: from [10.162.43.142] (p8cg001049571a15.blr.arm.com [10.162.43.142])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 E7B9A3F534; Mon, 13 Jan 2020 01:10:05 -0800 (PST)
Subject: Re: [PATCH V11 1/5] mm/hotplug: Introduce arch callback validating
 the hot remove range
To: David Hildenbrand <david@redhat.com>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 akpm@linux-foundation.org, catalin.marinas@arm.com, will@kernel.org
References: <1578625755-11792-1-git-send-email-anshuman.khandual@arm.com>
 <1578625755-11792-2-git-send-email-anshuman.khandual@arm.com>
 <80ab5f55-77ef-4719-52fc-2b23c0ecb866@redhat.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <6f0efddc-f124-58ca-28b6-4632469cf992@arm.com>
Date: Mon, 13 Jan 2020 14:41:23 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <80ab5f55-77ef-4719-52fc-2b23c0ecb866@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_011014_376462_9FAF43EE 
X-CRM114-Status: GOOD (  21.65  )
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
Cc: mark.rutland@arm.com, ira.weiny@intel.com, steve.capper@arm.com,
 mgorman@techsingularity.net, suzuki.poulose@arm.com, Robin.Murphy@arm.com,
 steven.price@arm.com, broonie@kernel.org, cai@lca.pw, ard.biesheuvel@arm.com,
 cpandya@codeaurora.org, arunks@codeaurora.org, dan.j.williams@intel.com,
 logang@deltatee.com, valentin.schneider@arm.com, osalvador@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/10/2020 02:12 PM, David Hildenbrand wrote:
> On 10.01.20 04:09, Anshuman Khandual wrote:
>> Currently there are two interfaces to initiate memory range hot removal i.e
>> remove_memory() and __remove_memory() which then calls try_remove_memory().
>> Platform gets called with arch_remove_memory() to tear down required kernel
>> page tables and other arch specific procedures. But there are platforms
>> like arm64 which might want to prevent removal of certain specific memory
>> ranges irrespective of their present usage or movability properties.
> 
> Why? Is this only relevant for boot memory? I hope so, otherwise the
> arch code needs fixing IMHO.

Right, it is relevant only for the boot memory on arm64 platform. But this
new arch callback makes it flexible to reject any given memory range.

> 
> If it's only boot memory, we should disallow offlining instead via a
> memory notifier - much cleaner.

Dont have much detail understanding of MMU notifier mechanism but from some
initial reading, it seems like we need to have a mm_struct for a notifier
to monitor various events on the page table. Just wondering how a physical
memory range like boot memory can be monitored because it can be used both
for for kernel (init_mm) or user space process at same time. Is there some
mechanism we could do this ?

> 
>>
>> Current arch call back arch_remove_memory() is too late in the process to
>> abort memory hot removal as memory block devices and firmware memory map
>> entries would have already been removed. Platforms should be able to abort
>> the process before taking the mem_hotplug_lock with mem_hotplug_begin().
>> This essentially requires a new arch callback for memory range validation.
> 
> I somewhat dislike this very much. Memory removal should never fail if
> used sanely. See e.g., __remove_memory(), it will BUG() whenever
> something like that would strike.
> 
>>
>> This differentiates memory range validation between memory hot add and hot
>> remove paths before carving out a new helper check_hotremove_memory_range()
>> which incorporates a new arch callback. This call back provides platforms
>> an opportunity to refuse memory removal at the very onset. In future the
>> same principle can be extended for memory hot add path if required.
>>
>> Platforms can choose to override this callback in order to reject specific
>> memory ranges from removal or can just fallback to a default implementation
>> which allows removal of all memory ranges.
> 
> I suspect we want really want to disallow offlining instead. E.g., I

If boot memory pages can be prevented from being offlined for sure, then it
would indirectly definitely prevent hot remove process as well.

> remember s390x does that with certain areas needed for dumping/kexec.

Could not find any references to mmu_notifier in arch/s390 or any other arch
for that matter apart from KVM (which has an user space component), could you
please give some pointers ?

> 
> Somebody who added memory via add_memory() should always be able to
> remove the memory via remove_memory() again. Only boot memory can be
> treated in a special way, but boot memory is initially always online.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
