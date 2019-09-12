Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB90B1400
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 19:48:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=luGc6utRmzCbo6vJg10WfR5cF5hIx0Ir29/J28w4SFU=; b=NOmZ4EpE7mkOP/
	Jc2wnTi75forhCO7bFNZ2s9Jmwd3xuRi8UbN6uxO6SzCyC5bT/bWubGpqsrVoSMXWnShR9Ffx6DiB
	u3kx0WsAgbcSe7Aj/A6wkswOgm0LrJFyiZ2GGWMmrnit9q4+wlHtgp3128S1LgeJZBoD2lwknuPAf
	x/97F+tzicogbNqpMqcXrspmgJr36lhlfsCqZ4oeKh15yMTUU5p+XQojtNxEVvemQoFNyD6x/KK/G
	LDfEBt3qNaAayHnecpL/BrZxi0slVjJa+UnB6cxN+AIbAd4Qw0UpRVTM9RzSdOykqOtpzEUQCIjyr
	EMvHDmQjvXULSMiXooEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8TCz-0003Ns-Nb; Thu, 12 Sep 2019 17:48:41 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8TCm-0003NI-Qq
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 17:48:30 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 10:48:27 -0700
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="190061001"
Received: from ahduyck-desk1.jf.intel.com ([10.7.198.76])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 10:48:27 -0700
Message-ID: <641fc86a02201e514ccbfbf893b8abf190a701d8.camel@linux.intel.com>
Subject: Re: [PATCH v9 0/8] stg mail -e --version=v9 \
From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
To: Mel Gorman <mgorman@techsingularity.net>, Michal Hocko <mhocko@kernel.org>
Date: Thu, 12 Sep 2019 10:48:27 -0700
In-Reply-To: <20190912163525.GV2739@techsingularity.net>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190910124209.GY2063@dhcp22.suse.cz>
 <CAKgT0Udr6nYQFTRzxLbXk41SiJ-pcT_bmN1j1YR4deCwdTOaUQ@mail.gmail.com>
 <20190910144713.GF2063@dhcp22.suse.cz>
 <CAKgT0UdB4qp3vFGrYEs=FwSXKpBEQ7zo7DV55nJRO2C-KCEOrw@mail.gmail.com>
 <20190910175213.GD4023@dhcp22.suse.cz>
 <1d7de9f9f4074f67c567dbb4cc1497503d739e30.camel@linux.intel.com>
 <20190911113619.GP4023@dhcp22.suse.cz>
 <CAKgT0UfOp1c+ov=3pBD72EkSB9Vm7mG5G6zJj4=j=UH7zCgg2Q@mail.gmail.com>
 <20190912091925.GM4023@dhcp22.suse.cz>
 <20190912163525.GV2739@techsingularity.net>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_104828_915985_3AC28F89 
X-CRM114-Status: GOOD (  40.95  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 kvm list <kvm@vger.kernel.org>, David Hildenbrand <david@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, lcapitulino@redhat.com,
 linux-mm <linux-mm@kvack.org>, will@kernel.org,
 Andrea Arcangeli <aarcange@redhat.com>, virtio-dev@lists.oasis-open.org,
 "Michael
 S. Tsirkin" <mst@redhat.com>, Matthew Wilcox <willy@infradead.org>, "Wang,
 Wei W" <wei.w.wang@intel.com>, Mel Gorman <mgorman@suse.de>,
 ying.huang@intel.com, Rik van Riel <riel@surriel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, Oscar Salvador <osalvador@suse.de>,
 Nitesh Narayan Lal <nitesh@redhat.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Dave Hansen <dave.hansen@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Fengguang Wu <fengguang.wu@intel.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-09-12 at 17:35 +0100, Mel Gorman wrote:
> On Thu, Sep 12, 2019 at 11:19:25AM +0200, Michal Hocko wrote:
> > On Wed 11-09-19 08:12:03, Alexander Duyck wrote:
> > > On Wed, Sep 11, 2019 at 4:36 AM Michal Hocko <mhocko@kernel.org> wrote:
> > > > On Tue 10-09-19 14:23:40, Alexander Duyck wrote:
> > > > [...]
> > > > > We don't put any limitations on the allocator other then that it needs to
> > > > > clean up the metadata on allocation, and that it cannot allocate a page
> > > > > that is in the process of being reported since we pulled it from the
> > > > > free_list. If the page is a "Reported" page then it decrements the
> > > > > reported_pages count for the free_area and makes sure the page doesn't
> > > > > exist in the "Boundary" array pointer value, if it does it moves the
> > > > > "Boundary" since it is pulling the page.
> > > > 
> > > > This is still a non-trivial limitation on the page allocation from an
> > > > external code IMHO. I cannot give any explicit reason why an ordering on
> > > > the free list might matter (well except for page shuffling which uses it
> > > > to make physical memory pattern allocation more random) but the
> > > > architecture seems hacky and dubious to be honest. It shoulds like the
> > > > whole interface has been developed around a very particular and single
> > > > purpose optimization.
> > > 
> > > How is this any different then the code that moves a page that will
> > > likely be merged to the tail though?
> > 
> > I guess you are referring to the page shuffling. If that is the case
> > then this is an integral part of the allocator for a reason and it is
> > very well obvious in the code including the consequences. I do not
> > really like an idea of hiding similar constrains behind a generic
> > looking feature which is completely detached from the allocator and so
> > any future change of the allocator might subtly break it.
> > 
> 
> It's not just that, compaction pokes into the free_area information as
> well and directly takes pages from the free list without going through
> the page allocator itself. It assumes that a free page is a free page
> and only takes the zone and migratetype into account.

Pulling pages out at random isn't an issue as long as the boundary pointer
gets pushed back. However the list tumbling with the
move_freelist_head/tail would be much more problematic for me since it is
essentially shuffling the list and will cause reported pages to be
shuffled in with non-reported ones.

> > > In our case the "Reported" page is likely going to be much more
> > > expensive to allocate and use then a standard page because it will be
> > > faulted back in. In such a case wouldn't it make sense for us to want
> > > to keep the pages that don't require faults ahead of those pages in
> > > the free_list so that they are more likely to be allocated?
> > 
> > OK, I was suspecting this would pop out. And this is exactly why I
> > didn't like an idea of an external code imposing a non obvious constrains
> > to the allocator. You simply cannot count with any ordering with the
> > page allocator.
> 
> Indeed not. It can be arbitrary and compaction can interfere with the
> ordering as well. While in theory that could be addressed by always
> going through an interface maintained by the page allocator, it would be
> tricky to test the virtio case in particular.
> 
> > We used to distinguish cache hot/cold pages in the past
> > and pushed pages to the specific end of the free list but that has been
> > removed.
> 
> That was always best effort too, not a hard guarantee. It was eventually
> removed as the cost of figuring out the ordering exceeded the benefit.
> 
> > There are other potential changes like that possible. Shuffling
> > is a good recent example.
> > 
> > Anyway I am not a maintainer of this code. I would really like to hear
> > opinions from Mel and Vlastimil here (now CCed - the thread starts
> > http://lkml.kernel.org/r/20190907172225.10910.34302.stgit@localhost.localdomain.
> 
> I worry that poking too much into the internal state of the allocator
> will be fragile long-term. There is the arch alloc/free hooks but they
> are typically about protections only and does not interfere with the
> internal state of the allocator. Compaction pokes in as well but once
> the page is off the free list, the page allocator no longer cares so
> again there is on interference with the internal state. If the state is
> interefered with externally, it becomes unclear what happens if things
> like page merging is deferred in a way the allocator cannot control as
> high-order allocation requests may fail for example. For THP, it would
> not matter but failed allocation reports when pages are on the freelist,
> but unsuitable for allocation because of the reported state, would be
> hard to debug. Similarly, latency issues due to a reported page being
> picked for allocation but requiring communication with the hypervisor
> will be difficult to debug and atomic allocations may fail entirely.
> Finally, if merging was broken for reported/unreported pages, it could
> be a long time before such bugs were fixed.

We weren't preventing allocations off of the list other then when the
pages were actually off the list and being reported. So a reported page
could still be allocated normally.

As far as state there were only two things that were really being tracked
with the Reported flag. Basically when we cleared it we needed to make
sure the boundary pointer for the freelist was checked so we could push it
back if needed, and the count for the reported pages was decremented. All
the page->index was providing was an index into the boundary array so we
could find the pointer for that specific free_list.

> That's a lot of caveats to optimise communication about unused free
> pages to the allocator. I didn't read the patches particularly carefully
> but it was not clear why a best effort was not made to track free pages
> and if the metadata maintenance for that fills then do exhaustive
> searches for remaining pages. It might be difficult to stabilise that as
> the metadata may overflow again while the exhaustive search takes place.
> Much would depend on the frequency that pages are entering/leaving
> reported state.

What I was trying to avoid is having to perform an exhaustive walk of the
free_list. I was using boundary as an iterator. Since we have to hold the
zone->lock while pulling pages I wanted to keep the critical section as
small and fast as possible.

It seems like you were somewhat accomplishing that in the compaction code
by using the move_freelist_head/tail calls to basically roll over the list
as you are working through it. Maybe I will look to see just how expensive
it would be to do something similar as that would at least partially
reduce the cost.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
