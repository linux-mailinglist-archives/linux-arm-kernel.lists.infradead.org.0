Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3FEBAF24
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 10:16:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1b3p3SlnA8lyfOZuRE+oozeEXOzTNEzbXoPZj/8Uyk=; b=fJTti713/mpcyq
	Fa9ool4u5LMvL2niGxLlN04xnrjDvbZeqoT+uFpkfFHb1IE8q76Od9F8EAXBMXU/PCNRbC05T9MLs
	4RDC7B3PR9wGU8PooSFt3d0mHcrDpW2Q44RZLutSFO+brEellhB2J5jzuqrx8hgQwaokvIxfNOsIK
	lEvnFcgNu6P5tQyfaSaYKTRdBXssqa0xfTBeejwuIaKM5a7PX9C7H88z0w85D9vVawyyJgQ04SZRF
	lE3NeCkFR5jlpWlfkUeE0CPIOgCJQ7leopn6+4doVPOlsx3xkhaND4uU9AdJIMY7gXfqnpw5WB3hk
	LpFfokdaRasvbdIrJyvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJWN-00086H-4Z; Mon, 23 Sep 2019 08:16:35 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJVv-0007vP-51
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 08:16:10 +0000
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0817A8535C
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 08:16:06 +0000 (UTC)
Received: by mail-io1-f70.google.com with SMTP id o11so22329340iop.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 01:16:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yzze/fKTke6egRSSfwjTToqtiF+63OmJYlLiFjbw63I=;
 b=Oa+bcOCk+MUjx8A5aXsYv/Qm/fYIiDBulgm4YTZEKhXPXh8wLnnlHSY9SaKE4MXR0f
 IZFgAPycbnmA1Tm4hV+vcZNNHth6uuWOel77HZwqxOa3c0rILYg+LCZ5ghT7rIwcY/m+
 mOzjyLxhoIUR2L1PHEaycwPs71vTTxyiYgxZBKIhQ6sweiUA76pvCTuf9J/HeLQqa0Rp
 rcJyv9b468SO37wdDKO2VZME8W3j2QKrQFfkzERIdnG3MQgyHI1fVona+ayglC4w+CRH
 yqR/N3+uz2KXiIQVJK3mdvoJ8x1KIddEvAYgmiRxHzMNW0+FYTty6NUvCap0ak2j5Qoe
 wPLw==
X-Gm-Message-State: APjAAAV8LrV/cBy0qUDvIAqsquutwg3JkaPU/u43LTBc54SycuIoAV9f
 rr+RWApUnVsBk0mSpgYPmYTUusKquyZt6rMgXnWgPEbTUbXtaHKGxaMEmXDR3x4KDT8rbqHCddM
 mlpR3Ifh32JYJ0NALrJAtOQD2RstN1BTEZh0=
X-Received: by 2002:aed:316d:: with SMTP id 100mr15614539qtg.20.1569226564194; 
 Mon, 23 Sep 2019 01:16:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwRl9TeWrWoPnRtD5gLZGmyq7Ek5tjkSY3JDtUC4tg6EvloLG6CnrwEhuwOjMyXaOzdpCwt0w==
X-Received: by 2002:aed:316d:: with SMTP id 100mr15614508qtg.20.1569226563903; 
 Mon, 23 Sep 2019 01:16:03 -0700 (PDT)
Received: from redhat.com (bzq-79-176-40-226.red.bezeqint.net. [79.176.40.226])
 by smtp.gmail.com with ESMTPSA id d16sm4657038qkl.7.2019.09.23.01.15.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 01:16:02 -0700 (PDT)
Date: Mon, 23 Sep 2019 04:15:54 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [PATCH v10 3/6] mm: Introduce Reported pages
Message-ID: <20190923041330-mutt-send-email-mst@kernel.org>
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
 <20190918175249.23474.51171.stgit@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918175249.23474.51171.stgit@localhost.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_011607_296795_F0D465B9 
X-CRM114-Status: GOOD (  47.99  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, kvm@vger.kernel.org,
 david@redhat.com, mhocko@kernel.org, linux-mm@kvack.org,
 alexander.h.duyck@linux.intel.com, aarcange@redhat.com,
 virtio-dev@lists.oasis-open.org, konrad.wilk@oracle.com, willy@infradead.org,
 wei.w.wang@intel.com, vbabka@suse.cz, riel@surriel.com,
 dan.j.williams@intel.com, lcapitulino@redhat.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, nitesh@redhat.com,
 dave.hansen@intel.com, linux-kernel@vger.kernel.org, pbonzini@redhat.com,
 akpm@linux-foundation.org, mgorman@techsingularity.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 10:52:49AM -0700, Alexander Duyck wrote:
> From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
> In order to pave the way for free page reporting in virtualized
> environments we will need a way to get pages out of the free lists and
> identify those pages after they have been returned. To accomplish this,
> this patch adds the concept of a Reported Buddy, which is essentially
> meant to just be the Uptodate flag used in conjunction with the Buddy
> page type.
> 
> It adds a set of pointers we shall call "reported_boundary" which
> represent the upper boundary between the unreported and reported pages.
> The general idea is that in order for a page to cross from one side of the
> boundary to the other it will need to verify that it went through the
> reporting process. Ultimately a free list has been fully processed when
> the boundary has been moved from the tail all they way up to occupying the
> first entry in the list.
> 
> One limitation to this approach is that it is essentially a linear search
> and in the case of the free lists we can have pages added to either the
> head or the tail of the list. In order to place limits on this we only
> allow pages to be added before the reported_boundary instead of adding
> to the tail itself. An added advantage to this approach is that we should
> be reducing the overall memory footprint of the guest as it will be more
> likely to recycle warm pages versus trying to allocate the reported pages
> that were likely evicted from the guest memory.
> 
> Since we will only be reporting one zone at a time we keep the boundary
> limited to being defined for just the zone we are currently reporting pages
> from. Doing this we can keep the number of additional pointers needed quite
> small. To flag that the boundaries are in place we use a single bit
> in the zone to indicate that reporting and the boundaries are active.
> 
> We store the index of the boundary pointer used to track the reported page
> in the page->index value. Doing this we can avoid unnecessary computation
> to determine the index value again. There should be no issues with this as
> the value is unused when the page is in the buddy allocator, and is reset
> as soon as the page is removed from the free list.
> 
> Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> ---
>  include/linux/mmzone.h     |   16 ++++
>  include/linux/page-flags.h |   11 +++
>  mm/Kconfig                 |   11 +++
>  mm/compaction.c            |    5 +
>  mm/memory_hotplug.c        |    2 
>  mm/page_alloc.c            |   67 +++++++++++++++--
>  mm/page_reporting.h        |  178 ++++++++++++++++++++++++++++++++++++++++++++
>  7 files changed, 283 insertions(+), 7 deletions(-)
>  create mode 100644 mm/page_reporting.h
> 
> diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
> index 270a7b493174..53922c30b8d8 100644
> --- a/include/linux/mmzone.h
> +++ b/include/linux/mmzone.h
> @@ -463,6 +463,14 @@ struct zone {
>  	seqlock_t		span_seqlock;
>  #endif
>  
> +#ifdef CONFIG_PAGE_REPORTING
> +	/*
> +	 * Pointer to reported page tracking statistics array. The size of
> +	 * the array is MAX_ORDER - PAGE_REPORTING_MIN_ORDER. NULL when
> +	 * unused page reporting is not present.
> +	 */
> +	unsigned long		*reported_pages;
> +#endif
>  	int initialized;
>  
>  	/* Write-intensive fields used from the page allocator */
> @@ -538,6 +546,14 @@ enum zone_flags {
>  	ZONE_BOOSTED_WATERMARK,		/* zone recently boosted watermarks.
>  					 * Cleared when kswapd is woken.
>  					 */
> +	ZONE_PAGE_REPORTING_ACTIVE,	/* zone enabled page reporting and is
> +					 * activly flushing the data out of
> +					 * higher order pages.
> +					 */
> +	ZONE_PAGE_REPORTING_REQUESTED,	/* zone enabled page reporting and has
> +					 * requested flushing the data out of
> +					 * higher order pages.
> +					 */
>  };
>  
>  static inline unsigned long zone_managed_pages(struct zone *zone)
> diff --git a/include/linux/page-flags.h b/include/linux/page-flags.h
> index f91cb8898ff0..759a3b3956f2 100644
> --- a/include/linux/page-flags.h
> +++ b/include/linux/page-flags.h
> @@ -163,6 +163,9 @@ enum pageflags {
>  
>  	/* non-lru isolated movable page */
>  	PG_isolated = PG_reclaim,
> +
> +	/* Buddy pages. Used to track which pages have been reported */
> +	PG_reported = PG_uptodate,
>  };
>  
>  #ifndef __GENERATING_BOUNDS_H
> @@ -432,6 +435,14 @@ static inline bool set_hwpoison_free_buddy_page(struct page *page)
>  #endif
>  
>  /*
> + * PageReported() is used to track reported free pages within the Buddy
> + * allocator. We can use the non-atomic version of the test and set
> + * operations as both should be shielded with the zone lock to prevent
> + * any possible races on the setting or clearing of the bit.
> + */
> +__PAGEFLAG(Reported, reported, PF_NO_COMPOUND)
> +
> +/*
>   * On an anonymous page mapped into a user virtual memory area,
>   * page->mapping points to its anon_vma, not to a struct address_space;
>   * with the PAGE_MAPPING_ANON bit set to distinguish it.  See rmap.h.
> diff --git a/mm/Kconfig b/mm/Kconfig
> index a5dae9a7eb51..0419b2a9be3e 100644
> --- a/mm/Kconfig
> +++ b/mm/Kconfig
> @@ -237,6 +237,17 @@ config COMPACTION
>            linux-mm@kvack.org.
>  
>  #
> +# support for unused page reporting
> +config PAGE_REPORTING
> +	bool "Allow for reporting of unused pages"
> +	def_bool n
> +	help
> +	  Unused page reporting allows for the incremental acquisition of
> +	  unused pages from the buddy allocator for the purpose of reporting
> +	  those pages to another entity, such as a hypervisor, so that the
> +	  memory can be freed up for other uses.
> +
> +#
>  # support for page migration
>  #
>  config MIGRATION
> diff --git a/mm/compaction.c b/mm/compaction.c
> index ce08b39d85d4..60e064330b3a 100644
> --- a/mm/compaction.c
> +++ b/mm/compaction.c
> @@ -24,6 +24,7 @@
>  #include <linux/page_owner.h>
>  #include <linux/psi.h>
>  #include "internal.h"
> +#include "page_reporting.h"
>  
>  #ifdef CONFIG_COMPACTION
>  static inline void count_compact_event(enum vm_event_item item)
> @@ -1325,6 +1326,8 @@ static int next_search_order(struct compact_control *cc, int order)
>  			continue;
>  
>  		spin_lock_irqsave(&cc->zone->lock, flags);
> +		page_reporting_free_area_release(cc->zone, order,
> +						 MIGRATE_MOVABLE);
>  		freelist = &area->free_list[MIGRATE_MOVABLE];
>  		list_for_each_entry_reverse(freepage, freelist, lru) {
>  			unsigned long pfn;
> @@ -1681,6 +1684,8 @@ static unsigned long fast_find_migrateblock(struct compact_control *cc)
>  			continue;
>  
>  		spin_lock_irqsave(&cc->zone->lock, flags);
> +		page_reporting_free_area_release(cc->zone, order,
> +						 MIGRATE_MOVABLE);
>  		freelist = &area->free_list[MIGRATE_MOVABLE];
>  		list_for_each_entry(freepage, freelist, lru) {
>  			unsigned long free_pfn;
> diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> index 49f7bf91c25a..09c6f52e2bc5 100644
> --- a/mm/memory_hotplug.c
> +++ b/mm/memory_hotplug.c
> @@ -41,6 +41,7 @@
>  
>  #include "internal.h"
>  #include "shuffle.h"
> +#include "page_reporting.h"
>  
>  /*
>   * online_page_callback contains pointer to current page onlining function.
> @@ -1613,6 +1614,7 @@ static int __ref __offline_pages(unsigned long start_pfn,
>  	if (!populated_zone(zone)) {
>  		zone_pcp_reset(zone);
>  		build_all_zonelists(NULL);
> +		page_reporting_reset_zone(zone);
>  	} else
>  		zone_pcp_update(zone);
>  
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index f8271ec8e06e..ed0128c65936 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -74,6 +74,7 @@
>  #include <asm/div64.h>
>  #include "internal.h"
>  #include "shuffle.h"
> +#include "page_reporting.h"
>  
>  /* prevent >1 _updater_ of zone percpu pageset ->high and ->batch fields */
>  static DEFINE_MUTEX(pcp_batch_high_lock);
> @@ -891,10 +892,15 @@ static inline void add_to_free_list(struct page *page, struct zone *zone,
>  static inline void add_to_free_list_tail(struct page *page, struct zone *zone,
>  					 unsigned int order, int migratetype)
>  {
> -	struct free_area *area = &zone->free_area[order];
> +	struct list_head *tail = get_unreported_tail(zone, order, migratetype);
>  
> -	list_add_tail(&page->lru, &area->free_list[migratetype]);
> -	area->nr_free++;
> +	/*
> +	 * To prevent the unreported pages from slipping behind our iterator
> +	 * we will force them to be inserted in front of it. By doing this
> +	 * we should only need to make one pass through the freelist.
> +	 */
> +	list_add_tail(&page->lru, tail);
> +	zone->free_area[order].nr_free++;
>  }
>  
>  /* Used for pages which are on another list */
> @@ -903,12 +909,20 @@ static inline void move_to_free_list(struct page *page, struct zone *zone,
>  {
>  	struct free_area *area = &zone->free_area[order];
>  
> +	/* Make certain the page isn't occupying the boundary */
> +	if (unlikely(PageReported(page)))
> +		__del_page_from_reported_list(page, zone);
> +
>  	list_move(&page->lru, &area->free_list[migratetype]);
>  }
>  
>  static inline void del_page_from_free_list(struct page *page, struct zone *zone,
>  					   unsigned int order)
>  {
> +	/* remove page from reported list, and clear reported state */
> +	if (unlikely(PageReported(page)))
> +		del_page_from_reported_list(page, zone, order);
> +
>  	list_del(&page->lru);
>  	__ClearPageBuddy(page);
>  	set_page_private(page, 0);
> @@ -972,7 +986,7 @@ static inline void del_page_from_free_list(struct page *page, struct zone *zone,
>  static inline void __free_one_page(struct page *page,
>  		unsigned long pfn,
>  		struct zone *zone, unsigned int order,
> -		int migratetype)
> +		int migratetype, bool reported)
>  {
>  	struct capture_control *capc = task_capc(zone);
>  	unsigned long uninitialized_var(buddy_pfn);
> @@ -1048,7 +1062,9 @@ static inline void __free_one_page(struct page *page,
>  done_merging:
>  	set_page_order(page, order);
>  
> -	if (is_shuffle_order(order))
> +	if (reported)
> +		to_tail = true;
> +	else if (is_shuffle_order(order))
>  		to_tail = shuffle_pick_tail();
>  	else
>  		to_tail = buddy_merge_likely(pfn, buddy_pfn, page, order);
> @@ -1367,7 +1383,7 @@ static void free_pcppages_bulk(struct zone *zone, int count,
>  		if (unlikely(isolated_pageblocks))
>  			mt = get_pageblock_migratetype(page);
>  
> -		__free_one_page(page, page_to_pfn(page), zone, 0, mt);
> +		__free_one_page(page, page_to_pfn(page), zone, 0, mt, false);
>  		trace_mm_page_pcpu_drain(page, 0, mt);
>  	}
>  	spin_unlock(&zone->lock);
> @@ -1383,7 +1399,7 @@ static void free_one_page(struct zone *zone,
>  		is_migrate_isolate(migratetype))) {
>  		migratetype = get_pfnblock_migratetype(page, pfn);
>  	}
> -	__free_one_page(page, pfn, zone, order, migratetype);
> +	__free_one_page(page, pfn, zone, order, migratetype, false);
>  	spin_unlock(&zone->lock);
>  }
>  
> @@ -2245,6 +2261,43 @@ struct page *__rmqueue_smallest(struct zone *zone, unsigned int order,
>  	return NULL;
>  }
>  
> +#ifdef CONFIG_PAGE_REPORTING
> +struct list_head **reported_boundary __read_mostly;
> +
> +/**
> + * free_reported_page - Return a now-reported page back where we got it
> + * @page: Page that was reported
> + * @order: Order of the reported page
> + *
> + * This function will pull the migratetype and order information out
> + * of the page and attempt to return it where it found it. If the page
> + * is added to the free list without changes we will mark it as being
> + * reported.
> + */
> +void free_reported_page(struct page *page, unsigned int order)
> +{
> +	struct zone *zone = page_zone(page);
> +	unsigned long pfn;
> +	unsigned int mt;
> +
> +	/* zone lock should be held when this function is called */
> +	lockdep_assert_held(&zone->lock);
> +
> +	pfn = page_to_pfn(page);
> +	mt = get_pfnblock_migratetype(page, pfn);
> +	__free_one_page(page, pfn, zone, order, mt, true);
> +
> +	/*
> +	 * If page was not comingled with another page we can consider
> +	 * the result to be "reported" since part of the page hasn't been
> +	 * modified, otherwise we would need to report on the new larger
> +	 * page.
> +	 */
> +	if (PageBuddy(page) && page_order(page) == order)
> +		add_page_to_reported_list(page, zone, order, mt);
> +}
> +#endif /* CONFIG_PAGE_REPORTING */
> +
>  /*
>   * This array describes the order lists are fallen back to when
>   * the free lists for the desirable migrate type are depleted
> diff --git a/mm/page_reporting.h b/mm/page_reporting.h
> new file mode 100644
> index 000000000000..c5e1bb58ad96
> --- /dev/null
> +++ b/mm/page_reporting.h
> @@ -0,0 +1,178 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _MM_PAGE_REPORTING_H
> +#define _MM_PAGE_REPORTING_H
> +
> +#include <linux/mmzone.h>
> +#include <linux/pageblock-flags.h>
> +#include <linux/page-isolation.h>
> +#include <linux/jump_label.h>
> +#include <linux/slab.h>
> +#include <asm/pgtable.h>
> +
> +#define PAGE_REPORTING_MIN_ORDER	pageblock_order
> +#define PAGE_REPORTING_HWM		32
> +
> +#ifdef CONFIG_PAGE_REPORTING
> +/* Reported page accessors, defined in page_alloc.c */
> +void free_reported_page(struct page *page, unsigned int order);
> +
> +/* Free reported_pages and reset reported page tracking count to 0 */
> +static inline void page_reporting_reset_zone(struct zone *zone)
> +{
> +	kfree(zone->reported_pages);
> +	zone->reported_pages = NULL;
> +}
> +
> +/* Boundary functions */
> +static inline pgoff_t
> +get_reporting_index(unsigned int order, unsigned int migratetype)
> +{
> +	/*
> +	 * We will only ever be dealing with pages greater-than or equal to
> +	 * PAGE_REPORTING_MIN_ORDER. Since that is the case we can avoid
> +	 * allocating unused space by limiting our index range to only the
> +	 * orders that are supported for page reporting.
> +	 */
> +	return (order - PAGE_REPORTING_MIN_ORDER) * MIGRATE_TYPES + migratetype;
> +}
> +
> +extern struct list_head **reported_boundary __read_mostly;
> +
> +static inline void
> +page_reporting_reset_boundary(struct zone *zone, unsigned int order, int mt)
> +{
> +	int index;
> +
> +	if (order < PAGE_REPORTING_MIN_ORDER)
> +		return;
> +	if (!test_bit(ZONE_PAGE_REPORTING_ACTIVE, &zone->flags))
> +		return;
> +
> +	index = get_reporting_index(order, mt);
> +	reported_boundary[index] = &zone->free_area[order].free_list[mt];
> +}

So this seems to be costly.
I'm guessing it's the access to flags:


        /* zone flags, see below */
        unsigned long           flags;

        /* Primarily protects free_area */
        spinlock_t              lock;



which is in the same cache line as the lock.


> +
> +static inline void page_reporting_disable_boundaries(struct zone *zone)
> +{
> +	/* zone lock should be held when this function is called */
> +	lockdep_assert_held(&zone->lock);
> +
> +	__clear_bit(ZONE_PAGE_REPORTING_ACTIVE, &zone->flags);
> +}
> +
> +static inline void
> +page_reporting_free_area_release(struct zone *zone, unsigned int order, int mt)
> +{
> +	page_reporting_reset_boundary(zone, order, mt);
> +}
> +
> +/*
> + * Method for obtaining the tail of the free list. Using this allows for
> + * tail insertions of unreported pages into the region that is currently
> + * being scanned so as to avoid interleaving reported and unreported pages.
> + */
> +static inline struct list_head *
> +get_unreported_tail(struct zone *zone, unsigned int order, int migratetype)
> +{
> +	if (order >= PAGE_REPORTING_MIN_ORDER &&
> +	    test_bit(ZONE_PAGE_REPORTING_ACTIVE, &zone->flags))
> +		return reported_boundary[get_reporting_index(order,
> +							     migratetype)];
> +
> +	return &zone->free_area[order].free_list[migratetype];
> +}
> +
> +/*
> + * Functions for adding/removing reported pages to the freelist.
> + * All of them expect the zone lock to be held to maintain
> + * consistency of the reported list as a subset of the free list.
> + */
> +static inline void
> +add_page_to_reported_list(struct page *page, struct zone *zone,
> +			  unsigned int order, unsigned int mt)
> +{
> +	/*
> +	 * Default to using index 0, this will be updated later if the zone
> +	 * is still being processed.
> +	 */
> +	page->index = 0;
> +
> +	/* flag page as reported */
> +	__SetPageReported(page);
> +
> +	/* update areated page accounting */
> +	zone->reported_pages[order - PAGE_REPORTING_MIN_ORDER]++;
> +}
> +
> +static inline void page_reporting_pull_boundary(struct page *page)
> +{
> +	struct list_head **tail = &reported_boundary[page->index];
> +
> +	if (*tail == &page->lru)
> +		*tail = page->lru.next;
> +}
> +
> +static inline void
> +__del_page_from_reported_list(struct page *page, struct zone *zone)
> +{
> +	/*
> +	 * Since the page is being pulled from the list we need to update
> +	 * the boundary, after that we can just update the index so that
> +	 * the correct boundary will be checked in the future.
> +	 */
> +	if (test_bit(ZONE_PAGE_REPORTING_ACTIVE, &zone->flags))
> +		page_reporting_pull_boundary(page);
> +}
> +
> +static inline void
> +del_page_from_reported_list(struct page *page, struct zone *zone,
> +			    unsigned int order)
> +{
> +	__del_page_from_reported_list(page, zone);
> +
> +	/* page_private will contain the page order, so just use it directly */
> +	zone->reported_pages[order - PAGE_REPORTING_MIN_ORDER]--;
> +
> +	/* clear the flag so we can report on it when it returns */
> +	__ClearPageReported(page);
> +}
> +
> +#else /* CONFIG_PAGE_REPORTING */
> +static inline void page_reporting_reset_zone(struct zone *zone)
> +{
> +}
> +
> +static inline void
> +page_reporting_free_area_release(struct zone *zone, unsigned int order, int mt)
> +{
> +}
> +
> +static inline struct list_head *
> +get_unreported_tail(struct zone *zone, unsigned int order, int migratetype)
> +{
> +	return &zone->free_area[order].free_list[migratetype];
> +}
> +
> +static inline void
> +add_page_to_reported_list(struct page *page, struct zone *zone,
> +			  int order, int migratetype)
> +{
> +}
> +
> +static inline void
> +__del_page_from_reported_list(struct page *page, struct zone *zone)
> +{
> +}
> +
> +static inline void
> +del_page_from_reported_list(struct page *page, struct zone *zone,
> +			    unsigned int order)
> +{
> +}
> +
> +static inline void
> +move_page_to_reported_list(struct page *page, struct zone *zone, int dest_mt)
> +{
> +}
> +#endif /* CONFIG_PAGE_REPORTING */
> +#endif /*_MM_PAGE_REPORTING_H */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
