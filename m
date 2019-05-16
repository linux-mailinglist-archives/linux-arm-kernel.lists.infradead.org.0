Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EF5203F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 12:58:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VoSXdXmZY0qOcPGDy7y0ZuxheJjgBMple76IeW110Z4=; b=gEsONFQTd6HqU6
	Q7enNeNvZSiGC4rU1GX2v7rtXAO6683cC00n9eRJ8CvJPtsFMUdi9Y17tenzc9Bs5ydTdY011yZC3
	nMGPoLiczYrEU2JluZLX80dglk9dQ6axIBDkYd9Uln1JZNh3rcWpA6pm94F46QFS6TmCBQ48YUwhR
	jYsi8AUOORV3D96MhP1rT6SjZOL4sqlFKlP7NLcDgSzbP2KQr4PjYXrhg9Y9ggGxvL/A0dUSvsbNK
	ePae5dMb/53ToFA/7YC4cu4laj5MATqvB6xRZRvtn5ir4jzHCzXeAkiVayAm6pZCxyqiX5EdUVXNp
	9VctNmUqxx3glZwWmEcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRE5H-0008V8-EW; Thu, 16 May 2019 10:57:59 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRE55-0008UL-9j
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 10:57:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AFAE519BF;
 Thu, 16 May 2019 03:57:46 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BB31F3F703;
 Thu, 16 May 2019 03:57:43 -0700 (PDT)
Date: Thu, 16 May 2019 11:57:41 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V3 4/4] arm64/mm: Enable memory hot remove
Message-ID: <20190516105741.GC40960@lakrids.cambridge.arm.com>
References: <1557824407-19092-1-git-send-email-anshuman.khandual@arm.com>
 <1557824407-19092-5-git-send-email-anshuman.khandual@arm.com>
 <20190515114911.GC23983@lakrids.cambridge.arm.com>
 <499ebd4b-c905-dd99-3fc7-66050d89dc35@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <499ebd4b-c905-dd99-3fc7-66050d89dc35@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_035747_351793_A4675846 
X-CRM114-Status: GOOD (  26.12  )
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
Cc: cai@lca.pw, mhocko@suse.com, ira.weiny@intel.com, david@redhat.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 logang@deltatee.com, james.morse@arm.com, cpandya@codeaurora.org,
 arunks@codeaurora.org, akpm@linux-foundation.org, osalvador@suse.de,
 mgorman@techsingularity.net, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 11:04:48AM +0530, Anshuman Khandual wrote:
> On 05/15/2019 05:19 PM, Mark Rutland wrote:
> > On Tue, May 14, 2019 at 02:30:07PM +0530, Anshuman Khandual wrote:
> >> Memory removal from an arch perspective involves tearing down two different
> >> kernel based mappings i.e vmemmap and linear while releasing related page
> >> table and any mapped pages allocated for given physical memory range to be
> >> removed.
> >>
> >> Define a common kernel page table tear down helper remove_pagetable() which
> >> can be used to unmap given kernel virtual address range. In effect it can
> >> tear down both vmemap or kernel linear mappings. This new helper is called
> >> from both vmemamp_free() and ___remove_pgd_mapping() during memory removal.
> >>
> >> For linear mapping there are no actual allocated pages which are mapped to
> >> create the translation. Any pfn on a given entry is derived from physical
> >> address (__va(PA) --> PA) whose linear translation is to be created. They
> >> need not be freed as they were never allocated in the first place. But for
> >> vmemmap which is a real virtual mapping (like vmalloc) physical pages are
> >> allocated either from buddy or memblock which get mapped in the kernel page
> >> table. These allocated and mapped pages need to be freed during translation
> >> tear down. But page table pages need to be freed in both these cases.
> > 
> > As previously discussed, we should only hot-remove memory which was
> > hot-added, so we shouldn't encounter memory allocated from memblock.
> 
> Right, not applicable any more. Will drop this word.
> 
> >> These mappings need to be differentiated while deciding if a mapped page at
> >> any level i.e [pte|pmd|pud]_page() should be freed or not. Callers for the
> >> mapping tear down process should pass on 'sparse_vmap' variable identifying
> >> kernel vmemmap mappings.
> > 
> > I think that you can simplify the paragraphs above down to:
> > 
> >   The arch code for hot-remove must tear down portions of the linear map
> >   and vmemmap corresponding to memory being removed. In both cases the
> >   page tables mapping these regions must be freed, and when sparse
> >   vmemmap is in use the memory backing the vmemmap must also be freed.
> > 
> >   This patch adds a new remove_pagetable() helper which can be used to
> >   tear down either region, and calls it from vmemmap_free() and
> >   ___remove_pgd_mapping(). The sparse_vmap argument determines whether
> >   the backing memory will be freed.
> 
> The current one is bit more descriptive on detail. Anyways will replace with
> the above writeup if that is preferred.

I would prefer the suggested form above, as it's easier to extract the
necessary details from it.

[...]

> >> +static void
> >> +remove_pagetable(unsigned long start, unsigned long end, bool sparse_vmap)
> >> +{
> >> +	unsigned long addr, next;
> >> +	pud_t *pudp_base;
> >> +	pgd_t *pgdp;
> >> +
> >> +	spin_lock(&init_mm.page_table_lock);
> > 
> > It would be good to explain why we need to take the ptl here.
> 
> Will update both commit message and add an in-code comment here.
> 
> > 
> > IIUC that shouldn't be necessary for the linear map. Am I mistaken?
> 
> Its not absolutely necessary for linear map right now because both memory hot
> plug & ptdump which modifies or walks the page table ranges respectively take
> memory hotplug lock. That apart, no other callers creates or destroys linear
> mapping at runtime.
> 
> > 
> > Is there a specific race when tearing down the vmemmap?
> 
> This is trickier than linear map. vmemmap additions would be protected with
> memory hotplug lock but this can potential collide with vmalloc/IO regions.
> Even if they dont right now that will be because they dont share intermediate
> page table levels.

Sure; if we could just state something like:

  The vmemmap region may share levels of table with the vmalloc region.
  Take the ptl so that we can safely free potentially-sahred tables.

... I think that would be sufficient.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
