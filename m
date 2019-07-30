Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3917AED6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 19:03:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWlTPrkOqm1R1+6miyNXvxwXs6damFzaqTqCCvrzXe0=; b=Kks96iLfmy4dXW
	Ra65eJD4deXcUm7e9VDiKdMaJjJQiYa2pk05mBD8xzPhzw++z8B4YxHtaiYZBdlYBHoib24WcG28m
	rOaDAdDLLA55fzbh7+0Y6RaakOh2TSWzB0h6c+EuA5C9ka8gZZcT35xpWi91ghxu30a35npZpsHAj
	BWnJ+63OQ+sSX9lPO7h1+m/9u65XRgQUtePefyGdsM2w4MVc8x4INoWw+seMr4sWT7nyymMEBbkUD
	Wb3z4oYxRdXOINs7N9KMSoqh5jQfrl6M2xnhHBCS0n/0fNOkeJ/fKui2Zv4wX007BtPy0DOe+Cn8R
	K/BNKjqGNXCCLHVXlg5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVXC-0006YP-Vi; Tue, 30 Jul 2019 17:03:35 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1hsVX1-0006YE-Pq; Tue, 30 Jul 2019 17:03:23 +0000
Date: Tue, 30 Jul 2019 10:03:23 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [RFC] mm/pgtable/debug: Add test validating architecture page
 table helpers
Message-ID: <20190730170323.GA4700@bombadil.infradead.org>
References: <1564037723-26676-1-git-send-email-anshuman.khandual@arm.com>
 <1564037723-26676-2-git-send-email-anshuman.khandual@arm.com>
 <20190725143920.GW363@bombadil.infradead.org>
 <c3bb0420-584c-de3b-2439-8702bc09595e@arm.com>
 <20190726195457.GI30641@bombadil.infradead.org>
 <10ed1022-a5c0-c80c-c0c9-025bb2307666@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10ed1022-a5c0-c80c-c0c9-025bb2307666@arm.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, x86@kernel.org,
 Dave Hansen <dave.hansen@intel.com>, linux-kernel@vger.kernel.org,
 Steven Price <Steven.Price@arm.com>, linux-mm@kvack.org,
 Mark Brown <Mark.Brown@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Michal Hocko <mhocko@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 02:02:52PM +0530, Anshuman Khandual wrote:
> On 07/27/2019 01:24 AM, Matthew Wilcox wrote:
> > On Fri, Jul 26, 2019 at 10:17:11AM +0530, Anshuman Khandual wrote:
> >>> But 'page' isn't necessarily PMD-aligned.  I don't think we can rely on
> >>> architectures doing the right thing if asked to make a PMD for a randomly
> >>> aligned page.
> >>>
> >>> How about finding the physical address of something like kernel_init(),
> >>
> >> Physical address corresponding to the symbol in the kernel text segment ?
> > 
> > Yes.  We need the address of something that's definitely memory.
> > The stack might be in vmalloc space.  We can't allocate memory from the
> > allocator that's PUD-aligned.  This seems like a reasonable approximation
> > to something that might work.
> 
> Okay sure. What is about vmalloc space being PUD aligned and how that is
> problematic here ? Could you please give some details. Just being curious.

Those were two different sentences.

We can't use the address of something on the stack, because we don't
know whether the stack is in vmalloc space or in the direct map.

We can't use the address of something we've allocated from the page
allocator, because the page allocator can't give us PUD-aligned memory.

> > I think that's a mistake.  As Russell said, the ARM p*d manipulation
> > functions expect to operate on tables, not on individual entries
> > constructed on the stack.
> 
> Hmm. I assume that it will take care of dual 32 bit entry updates on arm
> platform through various helper functions as Russel had mentioned earlier.
> After we create page table with p?d_alloc() functions and pick an entry at
> each page table level.

Right.

> > So I think the right thing to do here is allocate an mm, then do the
> > pgd_alloc / p4d_alloc / pud_alloc / pmd_alloc / pte_alloc() steps giving
> > you real page tables that you can manipulate.
> > 
> > Then destroy them, of course.  And don't access through them.
> 
> mm_alloc() seems like a comprehensive helper to allocate and initialize a
> mm_struct. But could we use mm_init() with 'current' in the driver context or we
> need to create a dummy task_struct for this purpose. Some initial tests show that
> p?d_alloc() and p?d_free() at each level with a fixed virtual address gives p?d_t
> entries required at various page table level to test upon.

I think it's wise to start a new mm.  I'm not sure exactly what calls
to make to get one going.

> >>>> +#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
> >>>> +static void pud_basic_tests(void)
> >>>
> >>> Is this the right ifdef?
> >>
> >> IIUC THP at PUD is where the pud_t entries are directly operated upon and the
> >> corresponding accessors are present only when HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
> >> is enabled. Am I missing something here ?
> > 
> > Maybe I am.  I thought we could end up operating on PUDs for kernel mappings,
> > even without transparent hugepages turned on.
> 
> In generic MM ? IIUC except ioremap mapping all other PUD handling for kernel virtual
> range is platform specific. All the helpers used in the function pud_basic_tests() are
> part of THP and used in mm/huge_memory.c

But what about hugetlbfs?  And vmalloc can also use larger pages these days.
I don't think these tests should be conditional on transparent hugepages.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
