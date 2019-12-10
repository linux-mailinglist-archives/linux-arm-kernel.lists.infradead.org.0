Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1889118436
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 10:56:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ysHK0CwvIpNO8gil1auY3cVwiYk9FA5AwtJNjbiVTko=; b=h4v3Fd6fH/68Sc
	6elAcDdlavoT/H5A5yvvW5vZN2fYIOXwJr5fobnH3lcMygbDW6rCi9poT0jBXQN7hztTn76HrjGIg
	4bbRJO+LatA0yy4IuMXQF5seyYABJhfgaPPbbiyXU6ZfUz0JuUOsPRRi+Q3KCN+mbsOPDTOBfZKwd
	V7dra/W8MRZbCCIJ8Uo5MAcFSqfwbppH3Te7CJivgWkVZItTJKvfNWGeRzhGlSgKE8gPwaIOX9N2N
	DuY2RvLG7GRZqxOmOPBsoCf3ei8Y6/pOCBTeGMxDWys98a9pmgI2iCtUGxo2d3/MgYhK6S4yDOu67
	wwib6367o0cVqRPltYKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iecFm-0007lA-8G; Tue, 10 Dec 2019 09:56:26 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iecFe-0007kf-Rz
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 09:56:20 +0000
Received: by mail-wr1-f67.google.com with SMTP id j42so19219052wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 01:56:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wiDeNqk4JUYH6LbyjP3mNqGyXwUCv0yPtvfwbu07E84=;
 b=C8U7ztGbprRNVneFuULbLWX9U/FtsTVQzZPANoio3zwYvtnRTzWJV7oiuRnTTwNKKJ
 xTXV7gZdl4qb4/YNG0/jzuQxiJ03Y/stA4GO/uUv4aSRRjgj39aXhFwQUeh5fo188aSb
 ZDTXjnxxg/UVnwo4+D76OorfiskpNYQiHDXqi7YdZSSWM/iZpLREdV/p8n+MpGeh473b
 mtYR/DOn4FR15CM2HIhgBg2A1R1TyLhXBmDBHu9CzpxAghVoo7pGYEgTL1+BzQhcR7vF
 dZNDJFarWKtfk/sM8JSGCaM4UzImRnWSOF9PyyXxxigQEWXGtnpoRqOiXe+c8MHM416+
 UiGQ==
X-Gm-Message-State: APjAAAWW/uOU7eLBZ0OjU0YNzwHrhrTA+rj1GMVAuIj8VNA0iDLSdihw
 zwY42EwETo6y42Afa0F94y8=
X-Google-Smtp-Source: APXvYqyOvGHL/dLqIEko15VM3eCGbjurIUWfw6wjXgmK+XRllFbX0OjTyzcaIccFUw979KzcsTh8+w==
X-Received: by 2002:adf:fc08:: with SMTP id i8mr2324107wrr.82.1575971777315;
 Tue, 10 Dec 2019 01:56:17 -0800 (PST)
Received: from localhost (prg-ext-pat.suse.com. [213.151.95.130])
 by smtp.gmail.com with ESMTPSA id u18sm2642900wrt.26.2019.12.10.01.56.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 01:56:16 -0800 (PST)
Date: Tue, 10 Dec 2019 10:56:15 +0100
From: Michal Hocko <mhocko@kernel.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH 5/6] mm, memory_hotplug: Provide argument for the
 pgprot_t in arch_add_memory()
Message-ID: <20191210095615.GB10404@dhcp22.suse.cz>
References: <20191209191346.5197-1-logang@deltatee.com>
 <20191209191346.5197-6-logang@deltatee.com>
 <ce50d9da-c60e-05a1-a86b-3bb3629de502@redhat.com>
 <f34a4c52-cc95-15ed-8a72-c05ab4fd6d33@deltatee.com>
 <20191209204128.GC7658@dhcp22.suse.cz>
 <e0f9c1e1-4968-f48f-ec09-853fc8fc779b@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e0f9c1e1-4968-f48f-ec09-853fc8fc779b@deltatee.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_015618_907084_14DE51F5 
X-CRM114-Status: GOOD (  29.62  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mstsxfx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Mon 09-12-19 14:24:22, Logan Gunthorpe wrote:
> 
> 
> On 2019-12-09 1:41 p.m., Michal Hocko wrote:
> > On Mon 09-12-19 13:24:19, Logan Gunthorpe wrote:
> >>
> >>
> >> On 2019-12-09 12:23 p.m., David Hildenbrand wrote:
> >>> On 09.12.19 20:13, Logan Gunthorpe wrote:
> >>>> devm_memremap_pages() is currently used by the PCI P2PDMA code to create
> >>>> struct page mappings for IO memory. At present, these mappings are created
> >>>> with PAGE_KERNEL which implies setting the PAT bits to be WB. However, on
> >>>> x86, an mtrr register will typically override this and force the cache
> >>>> type to be UC-. In the case firmware doesn't set this register it is
> >>>> effectively WB and will typically result in a machine check exception
> >>>> when it's accessed.
> >>>>
> >>>> Other arches are not currently likely to function correctly seeing they
> >>>> don't have any MTRR registers to fall back on.
> >>>>
> >>>> To solve this, add an argument to arch_add_memory() to explicitly
> >>>> set the pgprot value to a specific value.
> >>>>
> >>>> Of the arches that support MEMORY_HOTPLUG: x86_64, s390 and arm64 is a
> >>>> simple change to pass the pgprot_t down to their respective functions
> >>>> which set up the page tables. For x86_32, set the page tables explicitly
> >>>> using _set_memory_prot() (seeing they are already mapped). For sh, reject
> >>>> anything but PAGE_KERNEL settings -- this should be fine, for now, seeing
> >>>> sh doesn't support ZONE_DEVICE anyway.
> >>>>
> >>>> Cc: Dan Williams <dan.j.williams@intel.com>
> >>>> Cc: David Hildenbrand <david@redhat.com>
> >>>> Cc: Michal Hocko <mhocko@suse.com>
> >>>> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> >>>> ---
> >>>>  arch/arm64/mm/mmu.c            | 4 ++--
> >>>>  arch/ia64/mm/init.c            | 5 ++++-
> >>>>  arch/powerpc/mm/mem.c          | 4 ++--
> >>>>  arch/s390/mm/init.c            | 4 ++--
> >>>>  arch/sh/mm/init.c              | 5 ++++-
> >>>>  arch/x86/mm/init_32.c          | 7 ++++++-
> >>>>  arch/x86/mm/init_64.c          | 4 ++--
> >>>>  include/linux/memory_hotplug.h | 2 +-
> >>>>  mm/memory_hotplug.c            | 2 +-
> >>>>  mm/memremap.c                  | 2 +-
> >>>>  10 files changed, 25 insertions(+), 14 deletions(-)
> >>>>
> >>>> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> >>>> index 60c929f3683b..48b65272df15 100644
> >>>> --- a/arch/arm64/mm/mmu.c
> >>>> +++ b/arch/arm64/mm/mmu.c
> >>>> @@ -1050,7 +1050,7 @@ int p4d_free_pud_page(p4d_t *p4d, unsigned long addr)
> >>>>  }
> >>>>  
> >>>>  #ifdef CONFIG_MEMORY_HOTPLUG
> >>>> -int arch_add_memory(int nid, u64 start, u64 size,
> >>>> +int arch_add_memory(int nid, u64 start, u64 size, pgprot_t prot,
> >>>>  			struct mhp_restrictions *restrictions)
> >>>
> >>> Can we fiddle that into "struct mhp_restrictions" instead?
> >>
> >> Yes, if that's what people want, it's pretty trivial to do. I chose not
> >> to do it that way because it doesn't get passed down to add_pages() and
> >> it's not really a "restriction". If I don't hear any objections, I will
> >> do that for v2.
> > 
> > I do agree that restriction is not the best fit. But I consider prot
> > argument to complicate the API to all users even though it is not really
> > clear whether we are going to have many users really benefiting from it.
> > Look at the vmalloc API and try to find how many users of __vmalloc do
> > not use PAGE_KERNEL.
> > 
> > So I can see two options. One of them is to add arch_add_memory_prot
> > that would allow to have give and extra prot argument or simply call
> > an arch independent API to change the protection after arch_add_memory.
> > The later sounds like much less code. The memory shouldn't be in use by
> > anybody at that stage yet AFAIU. Maybe there even is an API like that.
> 
> Yes, well, we tried something like this by calling set_memory_wc()
> inside memremap_pages(); but on large bars (tens of GB) it was too slow
> (taking several seconds to complete) and on some hosts actually hit CPU
> watchdog errors.

Which looks like something to fix independently.

> So at the very least we'd have to add some cpu_relax() calls to that
> path. And it's also the case that set_memory_wc() is x86 only right now.
> So we'd have to create a new general interface to walk and fixup page
> tables for all arches.
> 
> But, in my opinion, setting up all those page tables twice is too large
> of an overhead and it's better to just add them correctly the first
> time. The changes I propose to do this aren't really a lot of code and
> probably less than creating a new interface for all arches.

OK, fair enough. Then I would suggest going with arch_add_memory_prot
then unless there is a wider disagreement witht that.
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
