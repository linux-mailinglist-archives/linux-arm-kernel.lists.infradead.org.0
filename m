Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B68AF28A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 23:24:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r6yQDHRY7d0RwObAxRtXq46W8aI4T7Oe32i0L17p2k0=; b=ozsd59pgYEwDQL
	ewuDJmDEL/XummBpD65Lr2UGSpctwAVTcEHrLy9qgsjU7sl7Syh+SKq5oF28IrKFoEQmUp9r84Vxd
	DMu7quhAmPjl1nOrrXt/ifsmy69YzJcySe2fpi/eQVIyuf9u9Robklkozb2GHE4GbEeTuBf/c8IHe
	xnurXsGC1eB1rgPMsSl0+9wpJfbehbM87HSDxCohIE7tx2odj6m1ejttK/ZCsBoibjRrwq8P3BvTv
	cTflABhXuibVUQkQTeHOin5Jn1g9tB2unBYGxeCVGPcRjFnI7yOUF5U+DUgaLvdBCzSgoCkvpf6aw
	hEAsGY5lC7GprV7FfV1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ncB-0002e6-OC; Tue, 10 Sep 2019 21:23:55 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7nbx-0002dl-FE
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 21:23:43 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 14:23:40 -0700
X-IronPort-AV: E=Sophos;i="5.64,490,1559545200"; d="scan'208";a="178807819"
Received: from ahduyck-desk1.jf.intel.com ([10.7.198.76])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 14:23:40 -0700
Message-ID: <1d7de9f9f4074f67c567dbb4cc1497503d739e30.camel@linux.intel.com>
Subject: Re: [PATCH v9 0/8] stg mail -e --version=v9 \
From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
To: Michal Hocko <mhocko@kernel.org>, Alexander Duyck
 <alexander.duyck@gmail.com>
Date: Tue, 10 Sep 2019 14:23:40 -0700
In-Reply-To: <20190910175213.GD4023@dhcp22.suse.cz>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190910124209.GY2063@dhcp22.suse.cz>
 <CAKgT0Udr6nYQFTRzxLbXk41SiJ-pcT_bmN1j1YR4deCwdTOaUQ@mail.gmail.com>
 <20190910144713.GF2063@dhcp22.suse.cz>
 <CAKgT0UdB4qp3vFGrYEs=FwSXKpBEQ7zo7DV55nJRO2C-KCEOrw@mail.gmail.com>
 <20190910175213.GD4023@dhcp22.suse.cz>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_142341_559538_FF2BBF72 
X-CRM114-Status: GOOD (  40.91  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
 Catalin Marinas <catalin.marinas@arm.com>, lcapitulino@redhat.com,
 linux-mm <linux-mm@kvack.org>, will@kernel.org,
 Andrea Arcangeli <aarcange@redhat.com>, virtio-dev@lists.oasis-open.org,
 "Michael S. Tsirkin" <mst@redhat.com>, Matthew Wilcox <willy@infradead.org>,
 "Wang, Wei W" <wei.w.wang@intel.com>, ying.huang@intel.com,
 Rik van Riel <riel@surriel.com>,
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

On Tue, 2019-09-10 at 19:52 +0200, Michal Hocko wrote:
> On Tue 10-09-19 09:05:43, Alexander Duyck wrote:
> > On Tue, Sep 10, 2019 at 7:47 AM Michal Hocko <mhocko@kernel.org> wrote:
> > > On Tue 10-09-19 07:42:43, Alexander Duyck wrote:
> > > > On Tue, Sep 10, 2019 at 5:42 AM Michal Hocko <mhocko@kernel.org> wrote:
> > > > > I wanted to review "mm: Introduce Reported pages" just realize that I
> > > > > have no clue on what is going on so returned to the cover and it didn't
> > > > > really help much. I am completely unfamiliar with virtio so please bear
> > > > > with me.
> > > > > 
> > > > > On Sat 07-09-19 10:25:03, Alexander Duyck wrote:
> > > > > [...]
> > > > > > This series provides an asynchronous means of reporting to a hypervisor
> > > > > > that a guest page is no longer in use and can have the data associated
> > > > > > with it dropped. To do this I have implemented functionality that allows
> > > > > > for what I am referring to as unused page reporting
> > > > > > 
> > > > > > The functionality for this is fairly simple. When enabled it will allocate
> > > > > > statistics to track the number of reported pages in a given free area.
> > > > > > When the number of free pages exceeds this value plus a high water value,
> > > > > > currently 32, it will begin performing page reporting which consists of
> > > > > > pulling pages off of free list and placing them into a scatter list. The
> > > > > > scatterlist is then given to the page reporting device and it will perform
> > > > > > the required action to make the pages "reported", in the case of
> > > > > > virtio-balloon this results in the pages being madvised as MADV_DONTNEED
> > > > > > and as such they are forced out of the guest. After this they are placed
> > > > > > back on the free list,
> > > > > 
> > > > > And here I am reallly lost because "forced out of the guest" makes me
> > > > > feel that those pages are no longer usable by the guest. So how come you
> > > > > can add them back to the free list. I suspect understanding this part
> > > > > will allow me to understand why we have to mark those pages and prevent
> > > > > merging.
> > > > 
> > > > Basically as the paragraph above mentions "forced out of the guest"
> > > > really is just the hypervisor calling MADV_DONTNEED on the page in
> > > > question. So the behavior is the same as any userspace application
> > > > that calls MADV_DONTNEED where the contents are no longer accessible
> > > > from userspace and attempting to access them will result in a fault
> > > > and the page being populated with a zero fill on-demand page, or a
> > > > copy of the file contents if the memory is file backed.
> > > 
> > > As I've said I have no idea about virt so this doesn't really tell me
> > > much. Does that mean that if somebody allocates such a page and tries to
> > > access it then virt will handle a fault and bring it back?
> > 
> > Actually I am probably describing too much as the MADV_DONTNEED is the
> > hypervisor behavior in response to the virtio-balloon notification. A
> > more thorough explanation of it can be found by just running "man
> > madvise", probably best just to leave it at that since I am probably
> > confusing things by describing hypervisor behavior in a kernel patch
> > set.
> 
> This analogy is indeed confusing and doesn't help to build a picture.

All I am really doing is using a pointer per free_list, the page->index, 
and a page flag to provide a way to iterate over the list in such a way
that I will not repeat the operation on a page I have already reported. It
is taking advantage of the fact that we add pages to either the head or
the tail of the list, and can pull the pages from anywhere in the list, so
we have to work around those edges to avoid processing the already
reported pages in between.

Admittedly this is pretty complex. I've been at this for several months,
and have gone through several iterations.

If it helps I can try to draw it out as a bit of ASCII art. Basically what
I am trying to do is find a way to skip over the blob of reported pages
that would exist after we have not been reporting for a little while. Most
of this logic is in the get_reported_pages/free_reported_pages that should
be in patch 6.

So on our first iteration through the pages it is pretty straightforward.
We basically just keep pushing the boundary pointer up, we fetch the pages
immediately in front of it, and then when we return the now-reported pages
we push the boundary pointer up to those pages.

While we are actively reporting a given zone we prevent any pages from
being inserted behind the boundary. They are always inserted before the
boundary pointer. This is achieved by replacing the free_list tail pointer
value with the boundary pointer value in the case of add_to_tail calls.

Legend:
U Unused Page
R Reported Page
< Boundary Reported Page

     Head ....................................................... Tail
Start     UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU <
..        UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU<RRRRRRRRRRRRRRRRRRRRRRR
End       UU<RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR

After we completed the boundary pointer is discarded and we don't have to
update it when the zone->flag indicating reporting is active is no longer
set. What we then have happening is that pages are pulled out of the
free_list at random locations or from the head. This causes the list of
reported pages to slowly shrink, however the block of pages should remain
contiguous since new pages are only added to the head or the tail.

     Head ....................................................... Tail
Idle      UUUUUUUUUUUUUUUUURRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRUUUU

Once we have a large enough difference between the nr_free and
reported_pages we will then restart the reporting by resetting the
boundary to the tail and proceeding to pull the non-reported pages that
are in front of the boundary(fig1). Once those are exhasusted we will
start pulling the pages from the head of the list, reporting those, and
then placing them back at the boundary(fig2). When we finally hit the
point where there are no more pages to pull from the head that are not
reported we will update the boundary to the first reported page in the
list, return the reported pages there, and we should be done reporting
pages from this free list.

     Head ....................................................... Tail
Start     UUUUUUUUUUUUUUUUURRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRUUUU <
fig1      UUUUUUUUUUUUUUURRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRU<RRRR
fig2      UUURRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR<RRRRRRRRRRRRRRRRRRRR
End       UU<RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR

The goal with all this is to allow the boundary pointer to move, but to
guarantee forward progress as we work our way through the free_list(s).
Essentially the only requirements we are posing on the page allocator is
that if it pulls the page at the boundary it has to push it back, and if
it wants to add to the tail it has to use the boundary page as the tail
instead.

> > For the most part all the page reporting really does is provide a way
> > to incrementally identify unused regions of memory in the buddy
> > allocator. That in turn is used by virtio-balloon in a polling thread
> > to report to the hypervisor what pages are not in use so that it can
> > make a decision on what to do with the pages now that it knows they
> > are unused.
> 
> So essentially you want to store metadata into free pages and control
> what the allocator can do with them? Namely buddy merging if the type
> doesn't match?

We don't put any limitations on the allocator other then that it needs to
clean up the metadata on allocation, and that it cannot allocate a page
that is in the process of being reported since we pulled it from the
free_list. If the page is a "Reported" page then it decrements the
reported_pages count for the free_area and makes sure the page doesn't
exist in the "Boundary" array pointer value, if it does it moves the
"Boundary" since it is pulling the page.

> > All this is providing is just a report and it is optional if the
> > hypervisor will act on it or not. If the hypervisor takes some sort of
> > action on the page, then the expectation is that the hypervisor will
> > use some sort of mechanism such as a page fault to discover when the
> > page is used again.
> 
> OK so the baloon driver is in charge of this metadata and the allocator
> has to live with that. Isn't that a layer violation?

Really the metadata belongs to the page reporting. The virtio balloon
driver doesn't get to see any of it. It basically registers as a Reporting
interface and then we start sending it scatterlists to report. It doesn't
do anything with the actual pages themselves other then DMA map the
physical addresses for them.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
