Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D68FB5FE1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 11:12:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XfFGX3psCwt3ZG21CHM3mYzMmtN3eGH8tOEmtIEhhN8=; b=tEzXxBAqekslr6
	XRNjHJif6qk7rnM9po6t2lkKB/e7WFrGTKFjKgIXebYYArekPVxNrJuns/pOWaG2x3tFeLihuVknU
	FDU766MllYtiWi8KwBZKFF9h84Pwln1mTsN3DvgOtD6L9F/TcrblY+MrQI0Te/PBpCiuOyfjcp60s
	Y9WBNjuEqgFjKfvPeACSAFAAIU/DmCzEGWqOlTpi4oJB7jCNUAaqkFNcfrFt13kd65M0+X0A49GEk
	+jJGL7fvq+zfmI4657m/FFzKnAPf9wOExUTGWq8g+G7zQNJBcl05k9VHcgpf9QxqO8nNL+wg5Tuyr
	TIM0Ao2mDAbJAsEj9mkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAW1A-00073s-Tn; Wed, 18 Sep 2019 09:12:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAW0v-00073Q-1M
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 09:12:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 098C5337;
 Wed, 18 Sep 2019 02:12:40 -0700 (PDT)
Received: from [10.162.40.136] (p8cg001049571a15.blr.arm.com [10.162.40.136])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 A4B083F59C; Wed, 18 Sep 2019 02:12:33 -0700 (PDT)
Subject: Re: [PATCH V7 2/3] arm64/mm: Hold memory hotplug lock while walking
 for kernel page table dump
To: Balbir Singh <bsingharora@gmail.com>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 akpm@linux-foundation.org, catalin.marinas@arm.com, will@kernel.org
References: <1567503958-25831-1-git-send-email-anshuman.khandual@arm.com>
 <1567503958-25831-3-git-send-email-anshuman.khandual@arm.com>
 <66922798-9de7-a230-8548-1f205e79ea50@gmail.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <8e47831f-c28e-a174-24b3-b3bbf1f365ec@arm.com>
Date: Wed, 18 Sep 2019 14:42:47 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <66922798-9de7-a230-8548-1f205e79ea50@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_021241_169356_1EF444D3 
X-CRM114-Status: GOOD (  17.82  )
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
Cc: mark.rutland@arm.com, mhocko@suse.com, david@redhat.com,
 ira.weiny@intel.com, steve.capper@arm.com, mgorman@techsingularity.net,
 steven.price@arm.com, broonie@kernel.org, cai@lca.pw, ard.biesheuvel@arm.com,
 cpandya@codeaurora.org, arunks@codeaurora.org, dan.j.williams@intel.com,
 Robin.Murphy@arm.com, logang@deltatee.com, valentin.schneider@arm.com,
 suzuki.poulose@arm.com, osalvador@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/15/2019 08:05 AM, Balbir Singh wrote:
> 
> 
> On 3/9/19 7:45 pm, Anshuman Khandual wrote:
>> The arm64 page table dump code can race with concurrent modification of the
>> kernel page tables. When a leaf entries are modified concurrently, the dump
>> code may log stale or inconsistent information for a VA range, but this is
>> otherwise not harmful.
>>
>> When intermediate levels of table are freed, the dump code will continue to
>> use memory which has been freed and potentially reallocated for another
>> purpose. In such cases, the dump code may dereference bogus addresses,
>> leading to a number of potential problems.
>>
>> Intermediate levels of table may by freed during memory hot-remove,
>> which will be enabled by a subsequent patch. To avoid racing with
>> this, take the memory hotplug lock when walking the kernel page table.
>>
>> Acked-by: David Hildenbrand <david@redhat.com>
>> Acked-by: Mark Rutland <mark.rutland@arm.com>
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> ---
>>  arch/arm64/mm/ptdump_debugfs.c | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm64/mm/ptdump_debugfs.c b/arch/arm64/mm/ptdump_debugfs.c
>> index 064163f25592..b5eebc8c4924 100644
>> --- a/arch/arm64/mm/ptdump_debugfs.c
>> +++ b/arch/arm64/mm/ptdump_debugfs.c
>> @@ -1,5 +1,6 @@
>>  // SPDX-License-Identifier: GPL-2.0
>>  #include <linux/debugfs.h>
>> +#include <linux/memory_hotplug.h>
>>  #include <linux/seq_file.h>
>>  
>>  #include <asm/ptdump.h>
>> @@ -7,7 +8,10 @@
>>  static int ptdump_show(struct seq_file *m, void *v)
>>  {
>>  	struct ptdump_info *info = m->private;
>> +
>> +	get_online_mems();
>>  	ptdump_walk_pgd(m, info);
>> +	put_online_mems();
> 
> Looks sane, BTW, checking other arches they might have the same race.

The problem can be present on other architectures which can dump kernel page
table during memory hot-remove operation where it actually frees up page table
pages. If there is no freeing involved the race condition here could cause
inconsistent or garbage information capture for a given VA range. Same is true
even for concurrent vmalloc() operations as well. But removal of page tables
pages can make it worse. Freeing page table pages during hot-remove is a platform
decision, so would be adding these locks while walking kernel page table during
ptdump.

> Is there anything special about the arch?

AFAICS, no.

> 
> Acked-by: Balbir Singh <bsingharora@gmail.com>
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
