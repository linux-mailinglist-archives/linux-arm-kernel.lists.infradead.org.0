Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96C929078
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 07:43:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lVT6qucjdDRyQKBQX+WHWR1/uPN4UIiRSdjHTeSwU3A=; b=eTKZlUgoPr2CE9
	OcX2wHcFPT4KJ/xC5jLXEJq0KsCXoRq+EzksNEagnqa81reAIPQlLpvhHO02/P0GcLcsLyLYpwWv1
	mHZJxSLlTuP2dFS7fHU1JlNrljLj3eeoGxuzDlxlNwcNfG3pavLVr/vOKBKyngjWzgdpBsI1UeDdZ
	zknB4iyO2r5CCfIn5Q5rY+BX+49HvOa98xAHVQ2luTWu8Jtmss0waMkAoSWBwN6+xPEs0qZVmI/2Y
	bt2IipyjtlKBCzeiS5EHY+26Ksdm6h1k/RBdOmfZzCtRsBvctD1j4iUA0olP3+ku/lhYG0u0BPQSm
	4zBt3Td07Gsww0BOZFiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU2zF-0000zS-Ep; Fri, 24 May 2019 05:43:25 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU2z6-0000yi-3a
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 05:43:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AFEAC374;
 Thu, 23 May 2019 22:43:15 -0700 (PDT)
Received: from [10.162.42.134] (p8cg001049571a15.blr.arm.com [10.162.42.134])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 C7A293F5AF; Thu, 23 May 2019 22:43:10 -0700 (PDT)
Subject: Re: [PATCH V3 2/4] arm64/mm: Hold memory hotplug lock while walking
 for kernel page table dump
To: David Hildenbrand <david@redhat.com>, Michal Hocko <mhocko@kernel.org>
References: <1557824407-19092-1-git-send-email-anshuman.khandual@arm.com>
 <1557824407-19092-3-git-send-email-anshuman.khandual@arm.com>
 <20190515165847.GH16651@dhcp22.suse.cz>
 <20190516102354.GB40960@lakrids.cambridge.arm.com>
 <a141ffa1-aa81-39df-11ba-9e18046356ff@arm.com>
 <20190516111607.GR16651@dhcp22.suse.cz>
 <ec7e5085-c61e-9d8b-73e9-8dca28288d47@redhat.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <1250ef6a-ba33-92bb-2cc4-590b9b0f022d@arm.com>
Date: Fri, 24 May 2019 11:13:21 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <ec7e5085-c61e-9d8b-73e9-8dca28288d47@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_224316_158252_CE1010CC 
X-CRM114-Status: GOOD (  26.55  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, ira.weiny@intel.com,
 catalin.marinas@arm.com, cai@lca.pw, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, logang@deltatee.com, james.morse@arm.com,
 cpandya@codeaurora.org, arunks@codeaurora.org, akpm@linux-foundation.org,
 osalvador@suse.de, mgorman@techsingularity.net, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/23/2019 02:10 PM, David Hildenbrand wrote:
> On 16.05.19 13:16, Michal Hocko wrote:
>> On Thu 16-05-19 16:36:12, Anshuman Khandual wrote:
>>> On 05/16/2019 03:53 PM, Mark Rutland wrote:
>>>> Hi Michal,
>>>>
>>>> On Wed, May 15, 2019 at 06:58:47PM +0200, Michal Hocko wrote:
>>>>> On Tue 14-05-19 14:30:05, Anshuman Khandual wrote:
>>>>>> The arm64 pagetable dump code can race with concurrent modification of the
>>>>>> kernel page tables. When a leaf entries are modified concurrently, the dump
>>>>>> code may log stale or inconsistent information for a VA range, but this is
>>>>>> otherwise not harmful.
>>>>>>
>>>>>> When intermediate levels of table are freed, the dump code will continue to
>>>>>> use memory which has been freed and potentially reallocated for another
>>>>>> purpose. In such cases, the dump code may dereference bogus addressses,
>>>>>> leading to a number of potential problems.
>>>>>>
>>>>>> Intermediate levels of table may by freed during memory hot-remove, or when
>>>>>> installing a huge mapping in the vmalloc region. To avoid racing with these
>>>>>> cases, take the memory hotplug lock when walking the kernel page table.
>>>>>
>>>>> Why is this a problem only on arm64 
>>>>
>>>> It looks like it's not -- I think we're just the first to realise this.
>>>>
>>>> AFAICT x86's debugfs ptdump has the same issue if run conccurently with
>>>> memory hot remove. If 32-bit arm supported hot-remove, its ptdump code
>>>> would have the same issue.
>>>>
>>>>> and why do we even care for debugfs? Does anybody rely on this thing
>>>>> to be reliable? Do we even need it? Who is using the file?
>>>>
>>>> The debugfs part is used intermittently by a few people working on the
>>>> arm64 kernel page tables. We use that both to sanity-check that kernel
>>>> page tables are created/updated correctly after changes to the arm64 mmu
>>>> code, and also to debug issues if/when we encounter issues that appear
>>>> to be the result of kernel page table corruption.
>>>>
>>>> So while it's rare to need it, it's really useful to have when we do
>>>> need it, and I'd rather not remove it. I'd also rather that it didn't
>>>> have latent issues where we can accidentally crash the kernel when using
>>>> it, which is what this patch is addressing.
>>>>
>>>>> I am asking because I would really love to make mem hotplug locking less
>>>>> scattered outside of the core MM than more. Most users simply shouldn't
>>>>> care. Pfn walkers should rely on pfn_to_online_page.
>>>>
>>>> I'm not sure if that would help us here; IIUC pfn_to_online_page() alone
>>>> doesn't ensure that the page remains online. Is there a way to achieve
>>>> that other than get_online_mems()?
>>>
>>> Still wondering how pfn_to_online_page() is applicable here. It validates
>>> a given PFN and whether its online from sparse section mapping perspective
>>> before giving it's struct page. IIUC it is used during a linear scanning
>>> of a physical address range not for a page table walk. So how it can solve
>>> the problem when a struct page which was used as an intermediate level page
>>> table page gets released back to the buddy from another concurrent thread ?
>>
>> Well, my comment about pfn_to_online_page was more generic and it might
>> not apply to this specific case. I meant to say that the code outside of
>> the core MM shouldn't really care about the hotplug locking.
>>
> 
> What am I missing, how is it guaranteed that a page doesn't get
> offlined/removed without holding a lock here?

It is not guaranteed.

> 
> We would at least need some RCU mechnism or similar to sync against
> pages vanishing.

Yes, if we dont take memory_hotplug_lock preventing memory hot remove.

> 
> pfn_to_online_page() assumes that somebody touches a page he doesn't
> own. There has to be some way for core-mm to realize this and defer
> offlining/removinf.

First of all I am not sure yet if Michal really meant that reference
should be taken on all struct pages (while dumping kernel page table)
for each range (minimum hot remove granularity) to prevent them from
being hot removed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
