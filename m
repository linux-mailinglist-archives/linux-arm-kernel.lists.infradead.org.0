Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3034377271
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 21:55:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Yu/6w8JZOHPsIRy6T6TCp0b8XaPlnslQgbvT8hw3q4=; b=IQ1cqXcIbUztbi
	+dAdMG4JKab8XH6kqL+F2z9hWZ4/uHWf6uoQdwc3Xog3fkctQPh4DG7DVFffQo+M7AXBMWq7vsla0
	NaXJ+eW1RA8QGmA6TMJg1TQlT8TJgAlGpHNB6jgLmVswBBawaCTBnrgOttVJndxeVwVDgOkN2fHzo
	Z5tn+jm60kSF3VKVhYc0F+8k1ybSITjshPsa0FQLge3HW1IPMSR+7sAEU2Chl2x3cdcqBMyh1Tzma
	gLtjcDHd1vKh/WGS7dT9M4inLZEJh5pjARx9BTsX9osDJj7a4Gx1xbjpBTdXTG5D3IqnnEcUj1uw0
	meiJXbwYT8tif0sdQ9wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr6J5-00045f-8O; Fri, 26 Jul 2019 19:55:11 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1hr6Ir-00045T-GC; Fri, 26 Jul 2019 19:54:57 +0000
Date: Fri, 26 Jul 2019 12:54:57 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [RFC] mm/pgtable/debug: Add test validating architecture page
 table helpers
Message-ID: <20190726195457.GI30641@bombadil.infradead.org>
References: <1564037723-26676-1-git-send-email-anshuman.khandual@arm.com>
 <1564037723-26676-2-git-send-email-anshuman.khandual@arm.com>
 <20190725143920.GW363@bombadil.infradead.org>
 <c3bb0420-584c-de3b-2439-8702bc09595e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c3bb0420-584c-de3b-2439-8702bc09595e@arm.com>
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

On Fri, Jul 26, 2019 at 10:17:11AM +0530, Anshuman Khandual wrote:
> > But 'page' isn't necessarily PMD-aligned.  I don't think we can rely on
> > architectures doing the right thing if asked to make a PMD for a randomly
> > aligned page.
> > 
> > How about finding the physical address of something like kernel_init(),
> 
> Physical address corresponding to the symbol in the kernel text segment ?

Yes.  We need the address of something that's definitely memory.
The stack might be in vmalloc space.  We can't allocate memory from the
allocator that's PUD-aligned.  This seems like a reasonable approximation
to something that might work.

> > and using the corresponding pte/pmd/pud/p4d/pgd that encompasses that
> 
> So I guess this will help us use pte/pmd/pud/p4d/pgd entries from a real and
> present mapping rather then making them up for test purpose. Although we are
> not creating real page tables here just wondering if this could some how
> affect these real mapping in anyway from some accessors. The current proposal
> stays clear from anything real - allocates, evaluates and releases.

I think that's a mistake.  As Russell said, the ARM p*d manipulation
functions expect to operate on tables, not on individual entries
constructed on the stack.

So I think the right thing to do here is allocate an mm, then do the
pgd_alloc / p4d_alloc / pud_alloc / pmd_alloc / pte_alloc() steps giving
you real page tables that you can manipulate.

Then destroy them, of course.  And don't access through them.

> >> +#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
> >> +static void pud_basic_tests(void)
> > 
> > Is this the right ifdef?
> 
> IIUC THP at PUD is where the pud_t entries are directly operated upon and the
> corresponding accessors are present only when HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
> is enabled. Am I missing something here ?

Maybe I am.  I thought we could end up operating on PUDs for kernel mappings,
even without transparent hugepages turned on.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
