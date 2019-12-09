Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EFC117861
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 22:25:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqPxM+9yabr4lmAM+wRJKfMAoRfY4sJu6MZDfy9JDx0=; b=m3fo3YUVdigwxW
	LanukUnqJAqRK7XyxxosH5iGL2DoBARLNozBQVyBmHmQSsBwUFFkSnYktqCXUzkHC0oYzgwH3/NrS
	WewZ2jUokM/q/52IGnxbqAJGAxl4Qyyjmyffx/tkMVgDmYOGILxr03u3GjpA6oQ7a8vEku4Nnez/z
	wEh2KV9QexHKtyr2T6Eh0FEg9lQkC6FgGtTZ4c/WGxuL3cspAsdft+bpNbDduEGhvZxDaXCMMrmXo
	RIio2VwUfRkXMdJHb9bQ++jPVqvUWYw9RF4E/w/Q6/LMRhqSQOkqo4YEllih33UZ609juuh0A4Nst
	BJoaQP3XKs0iXDQN6+Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieQWU-0006at-Co; Mon, 09 Dec 2019 21:24:54 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieQWJ-0006Z2-PP
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 21:24:47 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.92)
 (envelope-from <logang@deltatee.com>)
 id 1ieQW3-0005LF-0L; Mon, 09 Dec 2019 14:24:28 -0700
To: Michal Hocko <mhocko@kernel.org>
References: <20191209191346.5197-1-logang@deltatee.com>
 <20191209191346.5197-6-logang@deltatee.com>
 <ce50d9da-c60e-05a1-a86b-3bb3629de502@redhat.com>
 <f34a4c52-cc95-15ed-8a72-c05ab4fd6d33@deltatee.com>
 <20191209204128.GC7658@dhcp22.suse.cz>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <e0f9c1e1-4968-f48f-ec09-853fc8fc779b@deltatee.com>
Date: Mon, 9 Dec 2019 14:24:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191209204128.GC7658@dhcp22.suse.cz>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: peterz@infradead.org, luto@kernel.org,
 dave.hansen@linux.intel.com, bp@alien8.de, mingo@redhat.com,
 tglx@linutronix.de, benh@kernel.crashing.org, will@kernel.org,
 catalin.marinas@arm.com, akpm@linux-foundation.org, dan.j.williams@intel.com,
 hch@lst.de, linux-mm@kvack.org, platform-driver-x86@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-s390@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-ia64@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 david@redhat.com, mhocko@kernel.org
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE autolearn=ham autolearn_force=no
 version=3.4.2
Subject: Re: [PATCH 5/6] mm, memory_hotplug: Provide argument for the pgprot_t
 in arch_add_memory()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_132443_820625_AD2D5E3F 
X-CRM114-Status: GOOD (  22.77  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-s390@vger.kernel.org, Dave Hansen <dave.hansen@linux.intel.com>,
 linux-ia64@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, David Hildenbrand <david@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-mm@kvack.org, Ingo Molnar <mingo@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Borislav Petkov <bp@alien8.de>, Dan Williams <dan.j.williams@intel.com>,
 linuxppc-dev@lists.ozlabs.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019-12-09 1:41 p.m., Michal Hocko wrote:
> On Mon 09-12-19 13:24:19, Logan Gunthorpe wrote:
>>
>>
>> On 2019-12-09 12:23 p.m., David Hildenbrand wrote:
>>> On 09.12.19 20:13, Logan Gunthorpe wrote:
>>>> devm_memremap_pages() is currently used by the PCI P2PDMA code to create
>>>> struct page mappings for IO memory. At present, these mappings are created
>>>> with PAGE_KERNEL which implies setting the PAT bits to be WB. However, on
>>>> x86, an mtrr register will typically override this and force the cache
>>>> type to be UC-. In the case firmware doesn't set this register it is
>>>> effectively WB and will typically result in a machine check exception
>>>> when it's accessed.
>>>>
>>>> Other arches are not currently likely to function correctly seeing they
>>>> don't have any MTRR registers to fall back on.
>>>>
>>>> To solve this, add an argument to arch_add_memory() to explicitly
>>>> set the pgprot value to a specific value.
>>>>
>>>> Of the arches that support MEMORY_HOTPLUG: x86_64, s390 and arm64 is a
>>>> simple change to pass the pgprot_t down to their respective functions
>>>> which set up the page tables. For x86_32, set the page tables explicitly
>>>> using _set_memory_prot() (seeing they are already mapped). For sh, reject
>>>> anything but PAGE_KERNEL settings -- this should be fine, for now, seeing
>>>> sh doesn't support ZONE_DEVICE anyway.
>>>>
>>>> Cc: Dan Williams <dan.j.williams@intel.com>
>>>> Cc: David Hildenbrand <david@redhat.com>
>>>> Cc: Michal Hocko <mhocko@suse.com>
>>>> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
>>>> ---
>>>>  arch/arm64/mm/mmu.c            | 4 ++--
>>>>  arch/ia64/mm/init.c            | 5 ++++-
>>>>  arch/powerpc/mm/mem.c          | 4 ++--
>>>>  arch/s390/mm/init.c            | 4 ++--
>>>>  arch/sh/mm/init.c              | 5 ++++-
>>>>  arch/x86/mm/init_32.c          | 7 ++++++-
>>>>  arch/x86/mm/init_64.c          | 4 ++--
>>>>  include/linux/memory_hotplug.h | 2 +-
>>>>  mm/memory_hotplug.c            | 2 +-
>>>>  mm/memremap.c                  | 2 +-
>>>>  10 files changed, 25 insertions(+), 14 deletions(-)
>>>>
>>>> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
>>>> index 60c929f3683b..48b65272df15 100644
>>>> --- a/arch/arm64/mm/mmu.c
>>>> +++ b/arch/arm64/mm/mmu.c
>>>> @@ -1050,7 +1050,7 @@ int p4d_free_pud_page(p4d_t *p4d, unsigned long addr)
>>>>  }
>>>>  
>>>>  #ifdef CONFIG_MEMORY_HOTPLUG
>>>> -int arch_add_memory(int nid, u64 start, u64 size,
>>>> +int arch_add_memory(int nid, u64 start, u64 size, pgprot_t prot,
>>>>  			struct mhp_restrictions *restrictions)
>>>
>>> Can we fiddle that into "struct mhp_restrictions" instead?
>>
>> Yes, if that's what people want, it's pretty trivial to do. I chose not
>> to do it that way because it doesn't get passed down to add_pages() and
>> it's not really a "restriction". If I don't hear any objections, I will
>> do that for v2.
> 
> I do agree that restriction is not the best fit. But I consider prot
> argument to complicate the API to all users even though it is not really
> clear whether we are going to have many users really benefiting from it.
> Look at the vmalloc API and try to find how many users of __vmalloc do
> not use PAGE_KERNEL.
> 
> So I can see two options. One of them is to add arch_add_memory_prot
> that would allow to have give and extra prot argument or simply call
> an arch independent API to change the protection after arch_add_memory.
> The later sounds like much less code. The memory shouldn't be in use by
> anybody at that stage yet AFAIU. Maybe there even is an API like that.

Yes, well, we tried something like this by calling set_memory_wc()
inside memremap_pages(); but on large bars (tens of GB) it was too slow
(taking several seconds to complete) and on some hosts actually hit CPU
watchdog errors.

So at the very least we'd have to add some cpu_relax() calls to that
path. And it's also the case that set_memory_wc() is x86 only right now.
So we'd have to create a new general interface to walk and fixup page
tables for all arches.

But, in my opinion, setting up all those page tables twice is too large
of an overhead and it's better to just add them correctly the first
time. The changes I propose to do this aren't really a lot of code and
probably less than creating a new interface for all arches.

Logan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
