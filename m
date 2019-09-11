Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94405AFD2F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 14:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gfrm/raYI8q6Fn41zKnO1amp0FXDU6/YDP3m542hXR0=; b=VIegJdIZPwiSvX
	BXxeZFpZ65OKPzPsYD/bviNnN+9pQ6O/Ce/jkaeNT2+f2ynfKoE5ocHTyliVZmZ2SLucmOtu3RGYz
	2+rOR1tHtV/4jmdMGMFhRcw5Ebvq92VHXUK8oEezx2JI4KwJ4SHsFMSaQZAlKqVwLCCpuHSQlezLd
	39O7/d9B72POrwEk/pcV3Ppa6Ud/K5EJSe3NO9BRAUvPbtAO3GeFLHXAS62axLzfiJQXX54ui8B8j
	w8M48yT8KHRn9Ze+dDM2KiaD70Cn2sR6Ba8zOz+KWgu+GsKaRJy/X4ej533my5s/M+9fL7eIJdd8r
	qR9sKrrAe6+DUWVPaLLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i829V-0003W8-Dv; Wed, 11 Sep 2019 12:55:17 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8297-0003Vf-ND
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 12:54:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1D587B635;
 Wed, 11 Sep 2019 12:54:51 +0000 (UTC)
Date: Wed, 11 Sep 2019 14:54:13 +0200
From: Michal Hocko <mhocko@kernel.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v9 0/8] stg mail -e --version=v9 \
Message-ID: <20190911125413.GY4023@dhcp22.suse.cz>
References: <CAKgT0Udr6nYQFTRzxLbXk41SiJ-pcT_bmN1j1YR4deCwdTOaUQ@mail.gmail.com>
 <20190910144713.GF2063@dhcp22.suse.cz>
 <CAKgT0UdB4qp3vFGrYEs=FwSXKpBEQ7zo7DV55nJRO2C-KCEOrw@mail.gmail.com>
 <20190910175213.GD4023@dhcp22.suse.cz>
 <1d7de9f9f4074f67c567dbb4cc1497503d739e30.camel@linux.intel.com>
 <20190911113619.GP4023@dhcp22.suse.cz>
 <20190911080804-mutt-send-email-mst@kernel.org>
 <20190911121941.GU4023@dhcp22.suse.cz>
 <20190911122526.GV4023@dhcp22.suse.cz>
 <4748a572-57b3-31da-0dde-30138e550c3a@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4748a572-57b3-31da-0dde-30138e550c3a@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_055454_048964_8E9DC039 
X-CRM114-Status: GOOD (  25.64  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Yang Zhang <yang.zhang.wz@gmail.com>, Pankaj Gupta <pagupta@redhat.com>,
 kvm list <kvm@vger.kernel.org>, "Michael S. Tsirkin" <mst@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, lcapitulino@redhat.com,
 linux-mm <linux-mm@kvack.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>, will@kernel.org,
 Andrea Arcangeli <aarcange@redhat.com>, virtio-dev@lists.oasis-open.org,
 Rik van Riel <riel@surriel.com>, Matthew Wilcox <willy@infradead.org>, "Wang,
 Wei W" <wei.w.wang@intel.com>, ying.huang@intel.com,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>, Nitesh Narayan Lal <nitesh@redhat.com>,
 Dave Hansen <dave.hansen@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Fengguang Wu <fengguang.wu@intel.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 11-09-19 14:42:41, David Hildenbrand wrote:
> On 11.09.19 14:25, Michal Hocko wrote:
> > On Wed 11-09-19 14:19:41, Michal Hocko wrote:
> >> On Wed 11-09-19 08:08:38, Michael S. Tsirkin wrote:
> >>> On Wed, Sep 11, 2019 at 01:36:19PM +0200, Michal Hocko wrote:
> >>>> On Tue 10-09-19 14:23:40, Alexander Duyck wrote:
> >>>> [...]
> >>>>> We don't put any limitations on the allocator other then that it needs to
> >>>>> clean up the metadata on allocation, and that it cannot allocate a page
> >>>>> that is in the process of being reported since we pulled it from the
> >>>>> free_list. If the page is a "Reported" page then it decrements the
> >>>>> reported_pages count for the free_area and makes sure the page doesn't
> >>>>> exist in the "Boundary" array pointer value, if it does it moves the
> >>>>> "Boundary" since it is pulling the page.
> >>>>
> >>>> This is still a non-trivial limitation on the page allocation from an
> >>>> external code IMHO. I cannot give any explicit reason why an ordering on
> >>>> the free list might matter (well except for page shuffling which uses it
> >>>> to make physical memory pattern allocation more random) but the
> >>>> architecture seems hacky and dubious to be honest. It shoulds like the
> >>>> whole interface has been developed around a very particular and single
> >>>> purpose optimization.
> >>>>
> >>>> I remember that there was an attempt to report free memory that provided
> >>>> a callback mechanism [1], which was much less intrusive to the internals
> >>>> of the allocator yet it should provide a similar functionality. Did you
> >>>> see that approach? How does this compares to it? Or am I completely off
> >>>> when comparing them?
> >>>>
> >>>> [1] mostly likely not the latest version of the patchset
> >>>> http://lkml.kernel.org/r/1502940416-42944-5-git-send-email-wei.w.wang@intel.com
> >>>
> >>> Linus nacked that one. He thinks invoking callbacks with lots of
> >>> internal mm locks is too fragile.
> >>
> >> I would be really curious how much he would be happy about injecting
> >> other restrictions on the allocator like this patch proposes. This is
> >> more intrusive as it has a higher maintenance cost longterm IMHO.
> > 
> > Btw. I do agree that callbacks with internal mm locks are not great
> > either. We do have a model for that in mmu_notifiers and it is something
> > I do consider PITA, on the other hand it is mostly sleepable part of the
> > interface which makes it the real pain. The above callback mechanism was
> > explicitly documented with restrictions and that the context is
> > essentially atomic with no access to particular struct pages and no
> > expensive operations possible. So in the end I've considered it
> > acceptably painful. Not that I want to override Linus' nack but if
> > virtualization usecases really require some form of reporting and no
> > other way to do that push people to invent even more interesting
> > approaches then we should simply give them/you something reasonable
> > and least intrusive to our internals.
> > 
> 
> The issue with "[PATCH v14 4/5] mm: support reporting free page blocks"
>  is that it cannot really handle the use case we have here if I am not
> wrong. While a page is getting processed by the hypervisor (e.g.
> MADV_DONTNEED), it must not get reused.

What prevents to use the callback to get a list of pfn ranges to work on
and then use something like start_isolate_page_range on the collected
pfn ranges to make sure nobody steals pages from under your feet, do
your thing and drop the isolated state afterwards.

I am saying somethig like because you wouldn't really want a generic
has_unmovable_pages but rather
                if (!page_ref_count(page)) {
                        if (PageBuddy(page))
                                iter += (1 << page_order(page)) - 1;
                        continue;
                }
subset of it.
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
