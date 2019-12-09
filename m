Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE281177E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 22:00:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8IhCJO1dWRghPIE3xhaG1CFVGvdwjqURElyd1fzlmts=; b=RrmX7FwrDMP70e
	WGhzkRy9BI/TI/FCnqlRH0iefH65iswRepxzyfqiq4rm0k3NyzAdCfZUr/nqdNRuR6ZdSwH/rSGgV
	Zd7GHWs/XB3mS36yP8a3dEalpAZu968cWLt6A9WIllfBld8OqLUEaVPOsalAfqkDDWNruCHwhZ7+J
	gm20zubLnvrLudRZ7B20GTtUL0SHTod4BIbkioMYwYLDnONBZ0aNEmIZxfzXIycrHV0J0ecbikUWG
	QlsLlsEk0cV3B2FB9XA5hi/fVQskPehoQi12QjrHoRx86R2NO7EmqMA9KYYICrTzaUE6wuVn67fZ3
	MY315Or8sBdDS8lB953w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieQ8y-0005Qr-1z; Mon, 09 Dec 2019 21:00:36 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieQ8o-0005QC-DF
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 21:00:27 +0000
Received: by mail-ot1-x342.google.com with SMTP id o9so13525002ote.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 13:00:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VMFJWolzCCUGyRUuaILC3spwwtCuqvBuPYOOVXEp/aA=;
 b=xJUcW/ZJZqhBrirgnJUXRH9YFWt+xzEM6e4gecFQ6NSsUXaM8QRtq93mV3xIMtdnxI
 hwZO34hrDP+h/SvMzEgMKtvQJdml3hl4u8Dk2JbZ+yNZrYeuwfs+GQHvGkrOXCYjVYBM
 h1YB45XPZeWKDmwzWRJaxFbllbHyJwyu4Y4ZrjVAHuwCJoklEOKkhF2iY7wakYwatD0Y
 yTsZilbwBrxKad2PDw+AsboTcGf+TSYC6FfXq2xZl9CL2FrRHGKjDB93f5M6o2gRfjWa
 f5oibYzs7r3R8ibaS0mzMWQ1NjYVhoDKOJkf0PiqFM7DbE27F0s5OMjWrpQToA9BqDrr
 kc+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VMFJWolzCCUGyRUuaILC3spwwtCuqvBuPYOOVXEp/aA=;
 b=k6HmNLkmhUNAGy30dVbYm/qhl0YPflFG+TllTZ6OivtbrwNC+5hDmeylJJzOjW8/Mb
 LW+y8bWz8YgJC4afllycl898GbugzAsJBToQQRYCdZHUjhl0h/6O2zv1AXSzOmopaai8
 q0GVsxrTcpY6FNWQ79bbDQ3LX/aqYV6VWTh2T9EIUWpAvgXD1hkUVY/FhtHKOVU4eO3s
 /ab6yh5cpLuOv4fvfTKWr5dOOmUa6TfJrC0KCOWal9evbBWldI/Pk08oFyE7uvX6hzme
 rlrhQ+CUdF5+5T00o0++nlnwVxBA2dJaJ8ZnaKBDxIG/dfnxwe/wd4N8ok/y1knnqjk3
 qZKg==
X-Gm-Message-State: APjAAAX8C3nAnjT/fN45LIlEiiL0NMpdZKhApSsRqySqmM1TdxiWhSeE
 YQO4HQIfouyQiF7AQ6hXF1XxowLJZa9rF5RDUVaxXQ==
X-Google-Smtp-Source: APXvYqwi+gYj1cVL4mF8Xopoq9y5To6+x5iJhC9e0WbcEazDDmPLdLZBK/hlPgH1EYJCfb16RNbXAt7Qn0TURN7r5Vw=
X-Received: by 2002:a9d:4789:: with SMTP id b9mr21728446otf.247.1575925224491; 
 Mon, 09 Dec 2019 13:00:24 -0800 (PST)
MIME-Version: 1.0
References: <20191209191346.5197-1-logang@deltatee.com>
 <20191209191346.5197-6-logang@deltatee.com>
 <ce50d9da-c60e-05a1-a86b-3bb3629de502@redhat.com>
 <f34a4c52-cc95-15ed-8a72-c05ab4fd6d33@deltatee.com>
 <20191209204128.GC7658@dhcp22.suse.cz>
In-Reply-To: <20191209204128.GC7658@dhcp22.suse.cz>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 9 Dec 2019 13:00:13 -0800
Message-ID: <CAPcyv4iKKw8cuFyDrY2VLN2ecd-qAbDCfYa7SufuhUb59e89Rw@mail.gmail.com>
Subject: Re: [PATCH 5/6] mm, memory_hotplug: Provide argument for the pgprot_t
 in arch_add_memory()
To: Michal Hocko <mhocko@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_130026_452321_1C372833 
X-CRM114-Status: GOOD (  28.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Thomas Gleixner <tglx@linutronix.de>,
 linux-s390 <linux-s390@vger.kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-ia64@vger.kernel.org,
 Will Deacon <will@kernel.org>, David Hildenbrand <david@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Logan Gunthorpe <logang@deltatee.com>,
 Linux-sh <linux-sh@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 platform-driver-x86@vger.kernel.org, Linux MM <linux-mm@kvack.org>,
 Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Andy Lutomirski <luto@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Borislav Petkov <bp@alien8.de>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 9, 2019 at 12:47 PM Michal Hocko <mhocko@kernel.org> wrote:
>
> On Mon 09-12-19 13:24:19, Logan Gunthorpe wrote:
> >
> >
> > On 2019-12-09 12:23 p.m., David Hildenbrand wrote:
> > > On 09.12.19 20:13, Logan Gunthorpe wrote:
> > >> devm_memremap_pages() is currently used by the PCI P2PDMA code to create
> > >> struct page mappings for IO memory. At present, these mappings are created
> > >> with PAGE_KERNEL which implies setting the PAT bits to be WB. However, on
> > >> x86, an mtrr register will typically override this and force the cache
> > >> type to be UC-. In the case firmware doesn't set this register it is
> > >> effectively WB and will typically result in a machine check exception
> > >> when it's accessed.
> > >>
> > >> Other arches are not currently likely to function correctly seeing they
> > >> don't have any MTRR registers to fall back on.
> > >>
> > >> To solve this, add an argument to arch_add_memory() to explicitly
> > >> set the pgprot value to a specific value.
> > >>
> > >> Of the arches that support MEMORY_HOTPLUG: x86_64, s390 and arm64 is a
> > >> simple change to pass the pgprot_t down to their respective functions
> > >> which set up the page tables. For x86_32, set the page tables explicitly
> > >> using _set_memory_prot() (seeing they are already mapped). For sh, reject
> > >> anything but PAGE_KERNEL settings -- this should be fine, for now, seeing
> > >> sh doesn't support ZONE_DEVICE anyway.
> > >>
> > >> Cc: Dan Williams <dan.j.williams@intel.com>
> > >> Cc: David Hildenbrand <david@redhat.com>
> > >> Cc: Michal Hocko <mhocko@suse.com>
> > >> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> > >> ---
> > >>  arch/arm64/mm/mmu.c            | 4 ++--
> > >>  arch/ia64/mm/init.c            | 5 ++++-
> > >>  arch/powerpc/mm/mem.c          | 4 ++--
> > >>  arch/s390/mm/init.c            | 4 ++--
> > >>  arch/sh/mm/init.c              | 5 ++++-
> > >>  arch/x86/mm/init_32.c          | 7 ++++++-
> > >>  arch/x86/mm/init_64.c          | 4 ++--
> > >>  include/linux/memory_hotplug.h | 2 +-
> > >>  mm/memory_hotplug.c            | 2 +-
> > >>  mm/memremap.c                  | 2 +-
> > >>  10 files changed, 25 insertions(+), 14 deletions(-)
> > >>
> > >> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> > >> index 60c929f3683b..48b65272df15 100644
> > >> --- a/arch/arm64/mm/mmu.c
> > >> +++ b/arch/arm64/mm/mmu.c
> > >> @@ -1050,7 +1050,7 @@ int p4d_free_pud_page(p4d_t *p4d, unsigned long addr)
> > >>  }
> > >>
> > >>  #ifdef CONFIG_MEMORY_HOTPLUG
> > >> -int arch_add_memory(int nid, u64 start, u64 size,
> > >> +int arch_add_memory(int nid, u64 start, u64 size, pgprot_t prot,
> > >>                    struct mhp_restrictions *restrictions)
> > >
> > > Can we fiddle that into "struct mhp_restrictions" instead?
> >
> > Yes, if that's what people want, it's pretty trivial to do. I chose not
> > to do it that way because it doesn't get passed down to add_pages() and
> > it's not really a "restriction". If I don't hear any objections, I will
> > do that for v2.
>
> I do agree that restriction is not the best fit. But I consider prot
> argument to complicate the API to all users even though it is not really
> clear whether we are going to have many users really benefiting from it.
> Look at the vmalloc API and try to find how many users of __vmalloc do
> not use PAGE_KERNEL.

At least for this I can foresee at least one more user in the
pipeline, encrypted memory support for persistent memory mappings that
will store the key-id in the ptes.

>
> So I can see two options. One of them is to add arch_add_memory_prot
> that would allow to have give and extra prot argument or simply call
> an arch independent API to change the protection after arch_add_memory.
> The later sounds like much less code. The memory shouldn't be in use by
> anybody at that stage yet AFAIU. Maybe there even is an API like that.

I'm ok with passing it the same way as altmap or a new
arch_add_memory_prot() my only hangup with after the fact changes is
the wasted effort it inflicts in the init path for potentially large
address ranges.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
