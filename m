Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FEF51908
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 18:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xkoj7hvfyboUUWs4GQKw8EvfrA2pUL0ydAJddjqQ0/E=; b=HYs9P6I7y3sKD4
	XaDA24JeLMHZHRGvz4cLupfFsWdsC07MSAKG8CfqCRbisGA7MIg1L1cdim1kZXqp/C1q7bED9xJJG
	T5/D2LogRZOTRAxuqIpaLIG+fuWgPGqgYZO8mBjznnoFJWDCCJ86C0YODiAwtEF3B6X5xLNW3Bgwe
	dTNjlDRj0YlfKH8W2VxIludX/wmjpjPqJY5SgudEyuaTEjbLNbLC/hGMk6HRysROWWdj5TPoaVOmP
	lZtAu94zuc5yEfpxlbzsatx+XBrKxrSoZ1JtuxOQ8Vzdqbu76SETNZNbSuI+GZLw78hExCFmD/BT/
	4M78xM92G4bzY1ckPcfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfSCg-0006s0-KW; Mon, 24 Jun 2019 16:52:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfSCV-0006qx-6G
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 16:52:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ABF5E360;
 Mon, 24 Jun 2019 09:52:12 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 223FE3F71E;
 Mon, 24 Jun 2019 09:52:10 -0700 (PDT)
Date: Mon, 24 Jun 2019 17:52:01 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Steve Capper <Steve.Capper@arm.com>
Subject: Re: [PATCH V6 3/3] arm64/mm: Enable memory hot remove
Message-ID: <20190624165148.GA9847@lakrids.cambridge.arm.com>
References: <1560917860-26169-1-git-send-email-anshuman.khandual@arm.com>
 <1560917860-26169-4-git-send-email-anshuman.khandual@arm.com>
 <20190621143540.GA3376@capper-debian.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621143540.GA3376@capper-debian.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_095215_318601_13E6C33D 
X-CRM114-Status: GOOD (  31.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "mhocko@suse.com" <mhocko@suse.com>,
 "mgorman@techsingularity.net" <mgorman@techsingularity.net>,
 Anshuman Khandual <Anshuman.Khandual@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "david@redhat.com" <david@redhat.com>, Will Deacon <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "logang@deltatee.com" <logang@deltatee.com>,
 "arunks@codeaurora.org" <arunks@codeaurora.org>, "cai@lca.pw" <cai@lca.pw>,
 Ard Biesheuvel <Ard.Biesheuvel@arm.com>,
 "cpandya@codeaurora.org" <cpandya@codeaurora.org>,
 James Morse <James.Morse@arm.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, nd <nd@arm.com>,
 "ira.weiny@intel.com" <ira.weiny@intel.com>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "osalvador@suse.de" <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 03:35:53PM +0100, Steve Capper wrote:
> Hi Anshuman,
> 
> On Wed, Jun 19, 2019 at 09:47:40AM +0530, Anshuman Khandual wrote:
> > The arch code for hot-remove must tear down portions of the linear map and
> > vmemmap corresponding to memory being removed. In both cases the page
> > tables mapping these regions must be freed, and when sparse vmemmap is in
> > use the memory backing the vmemmap must also be freed.
> > 
> > This patch adds a new remove_pagetable() helper which can be used to tear
> > down either region, and calls it from vmemmap_free() and
> > ___remove_pgd_mapping(). The sparse_vmap argument determines whether the
> > backing memory will be freed.
> > 
> > remove_pagetable() makes two distinct passes over the kernel page table.
> > In the first pass it unmaps, invalidates applicable TLB cache and frees
> > backing memory if required (vmemmap) for each mapped leaf entry. In the
> > second pass it looks for empty page table sections whose page table page
> > can be unmapped, TLB invalidated and freed.
> > 
> > While freeing intermediate level page table pages bail out if any of its
> > entries are still valid. This can happen for partially filled kernel page
> > table either from a previously attempted failed memory hot add or while
> > removing an address range which does not span the entire page table page
> > range.
> > 
> > The vmemmap region may share levels of table with the vmalloc region.
> > There can be conflicts between hot remove freeing page table pages with
> > a concurrent vmalloc() walking the kernel page table. This conflict can
> > not just be solved by taking the init_mm ptl because of existing locking
> > scheme in vmalloc(). Hence unlike linear mapping, skip freeing page table
> > pages while tearing down vmemmap mapping.
> > 
> > While here update arch_add_memory() to handle __add_pages() failures by
> > just unmapping recently added kernel linear mapping. Now enable memory hot
> > remove on arm64 platforms by default with ARCH_ENABLE_MEMORY_HOTREMOVE.
> > 
> > This implementation is overall inspired from kernel page table tear down
> > procedure on X86 architecture.
> > 
> > Acked-by: David Hildenbrand <david@redhat.com>
> > Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> > ---
> 
> FWIW:
> Acked-by: Steve Capper <steve.capper@arm.com>
> 
> One minor comment below though.
> 
> >  arch/arm64/Kconfig  |   3 +
> >  arch/arm64/mm/mmu.c | 290 ++++++++++++++++++++++++++++++++++++++++++++++++++--
> >  2 files changed, 284 insertions(+), 9 deletions(-)
> > 
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 6426f48..9375f26 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -270,6 +270,9 @@ config HAVE_GENERIC_GUP
> >  config ARCH_ENABLE_MEMORY_HOTPLUG
> >  	def_bool y
> >  
> > +config ARCH_ENABLE_MEMORY_HOTREMOVE
> > +	def_bool y
> > +
> >  config SMP
> >  	def_bool y
> >  
> > diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> > index 93ed0df..9e80a94 100644
> > --- a/arch/arm64/mm/mmu.c
> > +++ b/arch/arm64/mm/mmu.c
> > @@ -733,6 +733,250 @@ int kern_addr_valid(unsigned long addr)
> >  
> >  	return pfn_valid(pte_pfn(pte));
> >  }
> > +
> > +#ifdef CONFIG_MEMORY_HOTPLUG
> > +static void free_hotplug_page_range(struct page *page, size_t size)
> > +{
> > +	WARN_ON(!page || PageReserved(page));
> > +	free_pages((unsigned long)page_address(page), get_order(size));
> > +}
> 
> We are dealing with power of 2 number of pages, it makes a lot more
> sense (to me) to replace the size parameter with order.
> 
> Also, all the callers are for known compile-time sizes, so we could just
> translate the size parameter as follows to remove any usage of get_order?
> PAGE_SIZE -> 0
> PMD_SIZE -> PMD_SHIFT - PAGE_SHIFT
> PUD_SIZE -> PUD_SHIFT - PAGE_SHIFT

Now that I look at this again, the above makes sense to me.

I'd requested the current form (which I now realise is broken), since
back in v2 the code looked like:

static void free_pagetable(struct page *page, int order)
{
	...
	free_pages((unsigned long)page_address(page), order);
	...
}

... with callsites looking like:

free_pagetable(pud_page(*pud), get_order(PUD_SIZE));

... which I now see is off by PAGE_SHIFT, and we inherited that bug in
the current code, so the calculated order is vastly larger than it
should be. It's worrying that doesn't seem to be caught by anything in
testing. :/

Anshuman, could you please fold in Steve's suggested change? I'll look
at the rest of the series shortly, so no need to resend that right away,
but it would be worth sorting out.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
