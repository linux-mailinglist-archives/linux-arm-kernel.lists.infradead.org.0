Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6934BBB727
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 16:51:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HbXkNO4ADjtXJABkZcbItP4KVFiSHejChIm2eSUCZMc=; b=NzsNiseKB1X+A5
	2erUdAXGCn0Pu4ugCdROale8uQy3n2qYPxzTxCuh/JQ8sy4vg8mpFy9ikdyQjPWrj2LU9v5FLDQhw
	ODEtAZ/oZ9ho9lZaj7Rb/nxBo7tgw8NVZE43eBDGw1V8G/JO6RhYB3OAtA/s4JTMkVICpZePE7t03
	zCnwczAnS6s9D5kquzLXoaVa7gnC4yQXwEnC64NKtvTIIx9swHn5T5gkyv/owocf+E7iYAv0H0xsr
	UPmSxxSx7Hh9h4qTk3siC6nLdkB96y4YqbHLFWOV8HL+bL8OhEC1AnKho5ZSi1GyHyz0NS3M6zb4l
	vD1dRU7LxWVrZhng4x6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCPg8-0002lw-1m; Mon, 23 Sep 2019 14:51:04 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCPfY-0002lA-PS
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 14:50:31 +0000
Received: by mail-io1-xd42.google.com with SMTP id v2so34034235iob.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 07:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7Nd3CKf5FjQfvHJ6D/h33LRgK5F8lnMOSqBwhKuEq5Y=;
 b=rP5oOBFqGkb44yhSCB/rLUqP+CtBQgqrmPWsad5zA7tFMfenpVbB9wh2V8KwcE8plz
 hHfQQxoVRUC/qX7Gl+J/jd4gKJOeV+PxA8hLPdcO5dFyhY6aZbpLNOUcgR21EXQRkXIL
 Q/zE/I01uJ263OWRDmKv/dliUqG51skTbNdEKzQYpjDal3uTU6xC+qmxCvCPeaHULYRv
 +/D50eSNbGXncUUbZrrzKvx7r8EkKqVHELb1hyPupPATNS6D24cOaeVwDCPcjR19ASoi
 GIA9ubc5zJ3elKYpukaM0SiVmIpzJAHzwZ3Bjg5e+Pd2qSPiA1vZPLQ7kADZFUnSopYs
 hNwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7Nd3CKf5FjQfvHJ6D/h33LRgK5F8lnMOSqBwhKuEq5Y=;
 b=K7XWgPNipIN8gPTinmImADVBEEAKaYUNg7l83QB+zCOuQzA+vpkzKJ/PkFf3o9lXfH
 9t6cjDMu/7wsECTmJVRXVFrTvE5g+h4MZO6zw8MQXGJReDPzZgdwmDiVszpRnXczP7lV
 WJo1cCckAUPZU+zvLHEBhTUNdfUSPvAI1sTU3XeaeexIapbkXTZa5wOJXBOxy15C/Kev
 9cBr0u5v0mdjZVYwIXvB0ffXTRyjZ2jXVFgaS9Iv51sW3IoTA00eI4A4nb/E8lV6Rit7
 ukx9p8WTjgP75ER4gpRQ+KEvZUSPE974w3bsVH7HueZiXalojyrUBzIpzzjNfeU76A1q
 3vjA==
X-Gm-Message-State: APjAAAXYCyotS4CYfZ9BwYXJ8WRDYm+JMLXvDPArFtSW28aT+EkB26RM
 fF2OgcBfQQ3RSBls61pNA2m8b1UtEpxmJFQzx6c=
X-Google-Smtp-Source: APXvYqwelmkcS8fF4X7BkI3xfo/3OiC0q+PFOmLfXDz6qyIT0xipu0TlEgDl706EjEWbaoGzb3qFJJE4jxxff/4X/Ao=
X-Received: by 2002:a6b:ac85:: with SMTP id v127mr297621ioe.97.1569250226739; 
 Mon, 23 Sep 2019 07:50:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
 <20190918175249.23474.51171.stgit@localhost.localdomain>
 <20190923041330-mutt-send-email-mst@kernel.org>
In-Reply-To: <20190923041330-mutt-send-email-mst@kernel.org>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 23 Sep 2019 07:50:15 -0700
Message-ID: <CAKgT0UfFBO9h3heGSo+AaZgUNpy5uuOm3yh62bYwYJ5dq+t1gQ@mail.gmail.com>
Subject: Re: [PATCH v10 3/6] mm: Introduce Reported pages
To: "Michael S. Tsirkin" <mst@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_075028_831822_8CFD8389 
X-CRM114-Status: GOOD (  39.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.duyck[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Michal Hocko <mhocko@kernel.org>, linux-mm <linux-mm@kvack.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 Andrea Arcangeli <aarcange@redhat.com>, virtio-dev@lists.oasis-open.org,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Matthew Wilcox <willy@infradead.org>, "Wang, Wei W" <wei.w.wang@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Rik van Riel <riel@surriel.com>,
 Dan Williams <dan.j.williams@intel.com>, lcapitulino@redhat.com,
 linux-arm-kernel@lists.infradead.org, Oscar Salvador <osalvador@suse.de>,
 Nitesh Narayan Lal <nitesh@redhat.com>, Dave Hansen <dave.hansen@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mel Gorman <mgorman@techsingularity.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 1:16 AM Michael S. Tsirkin <mst@redhat.com> wrote:
>
> On Wed, Sep 18, 2019 at 10:52:49AM -0700, Alexander Duyck wrote:
> > From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> >
> > In order to pave the way for free page reporting in virtualized
> > environments we will need a way to get pages out of the free lists and
> > identify those pages after they have been returned. To accomplish this,
> > this patch adds the concept of a Reported Buddy, which is essentially
> > meant to just be the Uptodate flag used in conjunction with the Buddy
> > page type.
> >
> > It adds a set of pointers we shall call "reported_boundary" which
> > represent the upper boundary between the unreported and reported pages.
> > The general idea is that in order for a page to cross from one side of the
> > boundary to the other it will need to verify that it went through the
> > reporting process. Ultimately a free list has been fully processed when
> > the boundary has been moved from the tail all they way up to occupying the
> > first entry in the list.
> >
> > One limitation to this approach is that it is essentially a linear search
> > and in the case of the free lists we can have pages added to either the
> > head or the tail of the list. In order to place limits on this we only
> > allow pages to be added before the reported_boundary instead of adding
> > to the tail itself. An added advantage to this approach is that we should
> > be reducing the overall memory footprint of the guest as it will be more
> > likely to recycle warm pages versus trying to allocate the reported pages
> > that were likely evicted from the guest memory.
> >
> > Since we will only be reporting one zone at a time we keep the boundary
> > limited to being defined for just the zone we are currently reporting pages
> > from. Doing this we can keep the number of additional pointers needed quite
> > small. To flag that the boundaries are in place we use a single bit
> > in the zone to indicate that reporting and the boundaries are active.
> >
> > We store the index of the boundary pointer used to track the reported page
> > in the page->index value. Doing this we can avoid unnecessary computation
> > to determine the index value again. There should be no issues with this as
> > the value is unused when the page is in the buddy allocator, and is reset
> > as soon as the page is removed from the free list.
> >
> > Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> > ---
> >  include/linux/mmzone.h     |   16 ++++
> >  include/linux/page-flags.h |   11 +++
> >  mm/Kconfig                 |   11 +++
> >  mm/compaction.c            |    5 +
> >  mm/memory_hotplug.c        |    2
> >  mm/page_alloc.c            |   67 +++++++++++++++--
> >  mm/page_reporting.h        |  178 ++++++++++++++++++++++++++++++++++++++++++++
> >  7 files changed, 283 insertions(+), 7 deletions(-)
> >  create mode 100644 mm/page_reporting.h
> >
> > diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
> > index 270a7b493174..53922c30b8d8 100644
> > --- a/include/linux/mmzone.h
> > +++ b/include/linux/mmzone.h
> > @@ -463,6 +463,14 @@ struct zone {
> >       seqlock_t               span_seqlock;
> >  #endif
> >
> > +#ifdef CONFIG_PAGE_REPORTING
> > +     /*
> > +      * Pointer to reported page tracking statistics array. The size of
> > +      * the array is MAX_ORDER - PAGE_REPORTING_MIN_ORDER. NULL when
> > +      * unused page reporting is not present.
> > +      */
> > +     unsigned long           *reported_pages;
> > +#endif
> >       int initialized;
> >
> >       /* Write-intensive fields used from the page allocator */
> > @@ -538,6 +546,14 @@ enum zone_flags {
> >       ZONE_BOOSTED_WATERMARK,         /* zone recently boosted watermarks.
> >                                        * Cleared when kswapd is woken.
> >                                        */
> > +     ZONE_PAGE_REPORTING_ACTIVE,     /* zone enabled page reporting and is
> > +                                      * activly flushing the data out of
> > +                                      * higher order pages.
> > +                                      */
> > +     ZONE_PAGE_REPORTING_REQUESTED,  /* zone enabled page reporting and has
> > +                                      * requested flushing the data out of
> > +                                      * higher order pages.
> > +                                      */
> >  };
> >
> >  static inline unsigned long zone_managed_pages(struct zone *zone)
> > diff --git a/include/linux/page-flags.h b/include/linux/page-flags.h
> > index f91cb8898ff0..759a3b3956f2 100644
> > --- a/include/linux/page-flags.h
> > +++ b/include/linux/page-flags.h
> > @@ -163,6 +163,9 @@ enum pageflags {
> >
> >       /* non-lru isolated movable page */
> >       PG_isolated = PG_reclaim,
> > +
> > +     /* Buddy pages. Used to track which pages have been reported */
> > +     PG_reported = PG_uptodate,
> >  };
> >
> >  #ifndef __GENERATING_BOUNDS_H
> > @@ -432,6 +435,14 @@ static inline bool set_hwpoison_free_buddy_page(struct page *page)
> >  #endif
> >
> >  /*
> > + * PageReported() is used to track reported free pages within the Buddy
> > + * allocator. We can use the non-atomic version of the test and set
> > + * operations as both should be shielded with the zone lock to prevent
> > + * any possible races on the setting or clearing of the bit.
> > + */
> > +__PAGEFLAG(Reported, reported, PF_NO_COMPOUND)
> > +
> > +/*
> >   * On an anonymous page mapped into a user virtual memory area,
> >   * page->mapping points to its anon_vma, not to a struct address_space;
> >   * with the PAGE_MAPPING_ANON bit set to distinguish it.  See rmap.h.
> > diff --git a/mm/Kconfig b/mm/Kconfig
> > index a5dae9a7eb51..0419b2a9be3e 100644
> > --- a/mm/Kconfig
> > +++ b/mm/Kconfig
> > @@ -237,6 +237,17 @@ config COMPACTION
> >            linux-mm@kvack.org.
> >
> >  #
> > +# support for unused page reporting
> > +config PAGE_REPORTING
> > +     bool "Allow for reporting of unused pages"
> > +     def_bool n
> > +     help
> > +       Unused page reporting allows for the incremental acquisition of
> > +       unused pages from the buddy allocator for the purpose of reporting
> > +       those pages to another entity, such as a hypervisor, so that the
> > +       memory can be freed up for other uses.
> > +
> > +#
> >  # support for page migration
> >  #
> >  config MIGRATION
> > diff --git a/mm/compaction.c b/mm/compaction.c
> > index ce08b39d85d4..60e064330b3a 100644
> > --- a/mm/compaction.c
> > +++ b/mm/compaction.c
> > @@ -24,6 +24,7 @@
> >  #include <linux/page_owner.h>
> >  #include <linux/psi.h>
> >  #include "internal.h"
> > +#include "page_reporting.h"
> >
> >  #ifdef CONFIG_COMPACTION
> >  static inline void count_compact_event(enum vm_event_item item)
> > @@ -1325,6 +1326,8 @@ static int next_search_order(struct compact_control *cc, int order)
> >                       continue;
> >
> >               spin_lock_irqsave(&cc->zone->lock, flags);
> > +             page_reporting_free_area_release(cc->zone, order,
> > +                                              MIGRATE_MOVABLE);
> >               freelist = &area->free_list[MIGRATE_MOVABLE];
> >               list_for_each_entry_reverse(freepage, freelist, lru) {
> >                       unsigned long pfn;
> > @@ -1681,6 +1684,8 @@ static unsigned long fast_find_migrateblock(struct compact_control *cc)
> >                       continue;
> >
> >               spin_lock_irqsave(&cc->zone->lock, flags);
> > +             page_reporting_free_area_release(cc->zone, order,
> > +                                              MIGRATE_MOVABLE);
> >               freelist = &area->free_list[MIGRATE_MOVABLE];
> >               list_for_each_entry(freepage, freelist, lru) {
> >                       unsigned long free_pfn;
> > diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> > index 49f7bf91c25a..09c6f52e2bc5 100644
> > --- a/mm/memory_hotplug.c
> > +++ b/mm/memory_hotplug.c
> > @@ -41,6 +41,7 @@
> >
> >  #include "internal.h"
> >  #include "shuffle.h"
> > +#include "page_reporting.h"
> >
> >  /*
> >   * online_page_callback contains pointer to current page onlining function.
> > @@ -1613,6 +1614,7 @@ static int __ref __offline_pages(unsigned long start_pfn,
> >       if (!populated_zone(zone)) {
> >               zone_pcp_reset(zone);
> >               build_all_zonelists(NULL);
> > +             page_reporting_reset_zone(zone);
> >       } else
> >               zone_pcp_update(zone);
> >
> > diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> > index f8271ec8e06e..ed0128c65936 100644
> > --- a/mm/page_alloc.c
> > +++ b/mm/page_alloc.c
> > @@ -74,6 +74,7 @@
> >  #include <asm/div64.h>
> >  #include "internal.h"
> >  #include "shuffle.h"
> > +#include "page_reporting.h"
> >
> >  /* prevent >1 _updater_ of zone percpu pageset ->high and ->batch fields */
> >  static DEFINE_MUTEX(pcp_batch_high_lock);
> > @@ -891,10 +892,15 @@ static inline void add_to_free_list(struct page *page, struct zone *zone,
> >  static inline void add_to_free_list_tail(struct page *page, struct zone *zone,
> >                                        unsigned int order, int migratetype)
> >  {
> > -     struct free_area *area = &zone->free_area[order];
> > +     struct list_head *tail = get_unreported_tail(zone, order, migratetype);
> >
> > -     list_add_tail(&page->lru, &area->free_list[migratetype]);
> > -     area->nr_free++;
> > +     /*
> > +      * To prevent the unreported pages from slipping behind our iterator
> > +      * we will force them to be inserted in front of it. By doing this
> > +      * we should only need to make one pass through the freelist.
> > +      */
> > +     list_add_tail(&page->lru, tail);
> > +     zone->free_area[order].nr_free++;
> >  }
> >
> >  /* Used for pages which are on another list */
> > @@ -903,12 +909,20 @@ static inline void move_to_free_list(struct page *page, struct zone *zone,
> >  {
> >       struct free_area *area = &zone->free_area[order];
> >
> > +     /* Make certain the page isn't occupying the boundary */
> > +     if (unlikely(PageReported(page)))
> > +             __del_page_from_reported_list(page, zone);
> > +
> >       list_move(&page->lru, &area->free_list[migratetype]);
> >  }
> >
> >  static inline void del_page_from_free_list(struct page *page, struct zone *zone,
> >                                          unsigned int order)
> >  {
> > +     /* remove page from reported list, and clear reported state */
> > +     if (unlikely(PageReported(page)))
> > +             del_page_from_reported_list(page, zone, order);
> > +
> >       list_del(&page->lru);
> >       __ClearPageBuddy(page);
> >       set_page_private(page, 0);
> > @@ -972,7 +986,7 @@ static inline void del_page_from_free_list(struct page *page, struct zone *zone,
> >  static inline void __free_one_page(struct page *page,
> >               unsigned long pfn,
> >               struct zone *zone, unsigned int order,
> > -             int migratetype)
> > +             int migratetype, bool reported)
> >  {
> >       struct capture_control *capc = task_capc(zone);
> >       unsigned long uninitialized_var(buddy_pfn);
> > @@ -1048,7 +1062,9 @@ static inline void __free_one_page(struct page *page,
> >  done_merging:
> >       set_page_order(page, order);
> >
> > -     if (is_shuffle_order(order))
> > +     if (reported)
> > +             to_tail = true;
> > +     else if (is_shuffle_order(order))
> >               to_tail = shuffle_pick_tail();
> >       else
> >               to_tail = buddy_merge_likely(pfn, buddy_pfn, page, order);
> > @@ -1367,7 +1383,7 @@ static void free_pcppages_bulk(struct zone *zone, int count,
> >               if (unlikely(isolated_pageblocks))
> >                       mt = get_pageblock_migratetype(page);
> >
> > -             __free_one_page(page, page_to_pfn(page), zone, 0, mt);
> > +             __free_one_page(page, page_to_pfn(page), zone, 0, mt, false);
> >               trace_mm_page_pcpu_drain(page, 0, mt);
> >       }
> >       spin_unlock(&zone->lock);
> > @@ -1383,7 +1399,7 @@ static void free_one_page(struct zone *zone,
> >               is_migrate_isolate(migratetype))) {
> >               migratetype = get_pfnblock_migratetype(page, pfn);
> >       }
> > -     __free_one_page(page, pfn, zone, order, migratetype);
> > +     __free_one_page(page, pfn, zone, order, migratetype, false);
> >       spin_unlock(&zone->lock);
> >  }
> >
> > @@ -2245,6 +2261,43 @@ struct page *__rmqueue_smallest(struct zone *zone, unsigned int order,
> >       return NULL;
> >  }
> >
> > +#ifdef CONFIG_PAGE_REPORTING
> > +struct list_head **reported_boundary __read_mostly;
> > +
> > +/**
> > + * free_reported_page - Return a now-reported page back where we got it
> > + * @page: Page that was reported
> > + * @order: Order of the reported page
> > + *
> > + * This function will pull the migratetype and order information out
> > + * of the page and attempt to return it where it found it. If the page
> > + * is added to the free list without changes we will mark it as being
> > + * reported.
> > + */
> > +void free_reported_page(struct page *page, unsigned int order)
> > +{
> > +     struct zone *zone = page_zone(page);
> > +     unsigned long pfn;
> > +     unsigned int mt;
> > +
> > +     /* zone lock should be held when this function is called */
> > +     lockdep_assert_held(&zone->lock);
> > +
> > +     pfn = page_to_pfn(page);
> > +     mt = get_pfnblock_migratetype(page, pfn);
> > +     __free_one_page(page, pfn, zone, order, mt, true);
> > +
> > +     /*
> > +      * If page was not comingled with another page we can consider
> > +      * the result to be "reported" since part of the page hasn't been
> > +      * modified, otherwise we would need to report on the new larger
> > +      * page.
> > +      */
> > +     if (PageBuddy(page) && page_order(page) == order)
> > +             add_page_to_reported_list(page, zone, order, mt);
> > +}
> > +#endif /* CONFIG_PAGE_REPORTING */
> > +
> >  /*
> >   * This array describes the order lists are fallen back to when
> >   * the free lists for the desirable migrate type are depleted
> > diff --git a/mm/page_reporting.h b/mm/page_reporting.h
> > new file mode 100644
> > index 000000000000..c5e1bb58ad96
> > --- /dev/null
> > +++ b/mm/page_reporting.h
> > @@ -0,0 +1,178 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +#ifndef _MM_PAGE_REPORTING_H
> > +#define _MM_PAGE_REPORTING_H
> > +
> > +#include <linux/mmzone.h>
> > +#include <linux/pageblock-flags.h>
> > +#include <linux/page-isolation.h>
> > +#include <linux/jump_label.h>
> > +#include <linux/slab.h>
> > +#include <asm/pgtable.h>
> > +
> > +#define PAGE_REPORTING_MIN_ORDER     pageblock_order
> > +#define PAGE_REPORTING_HWM           32
> > +
> > +#ifdef CONFIG_PAGE_REPORTING
> > +/* Reported page accessors, defined in page_alloc.c */
> > +void free_reported_page(struct page *page, unsigned int order);
> > +
> > +/* Free reported_pages and reset reported page tracking count to 0 */
> > +static inline void page_reporting_reset_zone(struct zone *zone)
> > +{
> > +     kfree(zone->reported_pages);
> > +     zone->reported_pages = NULL;
> > +}
> > +
> > +/* Boundary functions */
> > +static inline pgoff_t
> > +get_reporting_index(unsigned int order, unsigned int migratetype)
> > +{
> > +     /*
> > +      * We will only ever be dealing with pages greater-than or equal to
> > +      * PAGE_REPORTING_MIN_ORDER. Since that is the case we can avoid
> > +      * allocating unused space by limiting our index range to only the
> > +      * orders that are supported for page reporting.
> > +      */
> > +     return (order - PAGE_REPORTING_MIN_ORDER) * MIGRATE_TYPES + migratetype;
> > +}
> > +
> > +extern struct list_head **reported_boundary __read_mostly;
> > +
> > +static inline void
> > +page_reporting_reset_boundary(struct zone *zone, unsigned int order, int mt)
> > +{
> > +     int index;
> > +
> > +     if (order < PAGE_REPORTING_MIN_ORDER)
> > +             return;
> > +     if (!test_bit(ZONE_PAGE_REPORTING_ACTIVE, &zone->flags))
> > +             return;
> > +
> > +     index = get_reporting_index(order, mt);
> > +     reported_boundary[index] = &zone->free_area[order].free_list[mt];
> > +}
>
> So this seems to be costly.
> I'm guessing it's the access to flags:
>
>
>         /* zone flags, see below */
>         unsigned long           flags;
>
>         /* Primarily protects free_area */
>         spinlock_t              lock;
>
>
>
> which is in the same cache line as the lock.

I'm not sure what you mean by this being costly?

Also, at least on my system, pahole seems to indicate they are in
different cache lines.

/* --- cacheline 3 boundary (192 bytes) --- */
struct zone_padding        _pad1_;               /*   192     0 */
struct free_area           free_area[11];        /*   192  1144 */
/* --- cacheline 20 boundary (1280 bytes) was 56 bytes ago --- */
long unsigned int          flags;                /*  1336     8 */
/* --- cacheline 21 boundary (1344 bytes) --- */
spinlock_t                 lock;                 /*  1344     4 */

Basically these flags aren't supposed to be touched unless we are
holding the lock anyway so I am not sure it would be all that costly
for this setup. Basically we are holding the lock when the flag is set
or cleared, and we only set it if it is not already set. If needed
though I suppose I could look at moving the flags if you think that is
an issue. However I would probably need to add some additional padding
to prevent the lock from getting into the same cache line as the
free_area values.

- Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
