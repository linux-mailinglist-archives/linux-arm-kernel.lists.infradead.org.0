Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 551BCAEA52
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 14:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0KPnCXc3ggjVQLYsmRWvylyNYNiTgE/p1Fba43/fETg=; b=tP3OBS8VKwKpuX
	gLLb27O40tl4T3uQTx/A4mHh0JILu/6O26eDk3eK2CWbKIYYg3ZVLtDpB+DZhvrtuZ+nDZOeM/qu7
	dZG+o9/hv1XLXQFrAPsaLqDm+zbHTcZ9rSMhxVbwucgYc38vHy3AKscCeIHYRHvBSZJbwb/9WlfX3
	DeBX5JQ2l9uP1YzshcbfTRwUJmoqN0mF70yCDv/Zgw36dk/CxNlU/we3g/X97eupsdlvZqB5QHVJ3
	Xj6LAz+qp/5z7an/UXlSbuhrdOcYwqi8IM3i/Mxdz/yHbkq3wH/AMD2crx88/Hz7QqOEdsTnLoqAA
	/4g73Vs8w+3/eXKOFDMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7fEy-0006LL-CR; Tue, 10 Sep 2019 12:27:24 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7fEj-0006Km-NH
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 12:27:11 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 0C728AB89;
 Tue, 10 Sep 2019 12:27:08 +0000 (UTC)
Date: Tue, 10 Sep 2019 14:27:07 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [PATCH v9 4/8] mm: Use zone and order instead of free area in
 free_list manipulators
Message-ID: <20190910122707.GX2063@dhcp22.suse.cz>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172536.10910.99561.stgit@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907172536.10910.99561.stgit@localhost.localdomain>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_052710_054039_D0901F94 
X-CRM114-Status: GOOD (  22.88  )
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, kvm@vger.kernel.org,
 david@redhat.com, catalin.marinas@arm.com, lcapitulino@redhat.com,
 linux-mm@kvack.org, alexander.h.duyck@linux.intel.com, will@kernel.org,
 aarcange@redhat.com, virtio-dev@lists.oasis-open.org, mst@redhat.com,
 willy@infradead.org, wei.w.wang@intel.com, ying.huang@intel.com,
 riel@surriel.com, konrad.wilk@oracle.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, nitesh@redhat.com,
 dave.hansen@intel.com, linux-kernel@vger.kernel.org, pbonzini@redhat.com,
 akpm@linux-foundation.org, fengguang.wu@intel.com,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat 07-09-19 10:25:36, Alexander Duyck wrote:
> From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
> In order to enable the use of the zone from the list manipulator functions
> I will need access to the zone pointer. As it turns out most of the
> accessors were always just being directly passed &zone->free_area[order]
> anyway so it would make sense to just fold that into the function itself
> and pass the zone and order as arguments instead of the free area.

Yes this makes the interface better.

> In order to be able to reference the zone we need to move the declaration
> of the functions down so that we have the zone defined before we define the
> list manipulation functions.
> 
> Reviewed-by: Dan Williams <dan.j.williams@intel.com>
> Reviewed-by: David Hildenbrand <david@redhat.com>
> Reviewed-by: Pankaj Gupta <pagupta@redhat.com>
> Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>

Acked-by: Michal Hocko <mhocko@suse.com>

> ---
>  include/linux/mmzone.h |   70 ++++++++++++++++++++++++++----------------------
>  mm/page_alloc.c        |   30 ++++++++-------------
>  2 files changed, 49 insertions(+), 51 deletions(-)
> 
> diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
> index 125f300981c6..2ddf1f1971c0 100644
> --- a/include/linux/mmzone.h
> +++ b/include/linux/mmzone.h
> @@ -100,29 +100,6 @@ struct free_area {
>  	unsigned long		nr_free;
>  };
>  
> -/* Used for pages not on another list */
> -static inline void add_to_free_area(struct page *page, struct free_area *area,
> -			     int migratetype)
> -{
> -	list_add(&page->lru, &area->free_list[migratetype]);
> -	area->nr_free++;
> -}
> -
> -/* Used for pages not on another list */
> -static inline void add_to_free_area_tail(struct page *page, struct free_area *area,
> -				  int migratetype)
> -{
> -	list_add_tail(&page->lru, &area->free_list[migratetype]);
> -	area->nr_free++;
> -}
> -
> -/* Used for pages which are on another list */
> -static inline void move_to_free_area(struct page *page, struct free_area *area,
> -			     int migratetype)
> -{
> -	list_move(&page->lru, &area->free_list[migratetype]);
> -}
> -
>  static inline struct page *get_page_from_free_area(struct free_area *area,
>  					    int migratetype)
>  {
> @@ -130,15 +107,6 @@ static inline struct page *get_page_from_free_area(struct free_area *area,
>  					struct page, lru);
>  }
>  
> -static inline void del_page_from_free_area(struct page *page,
> -		struct free_area *area)
> -{
> -	list_del(&page->lru);
> -	__ClearPageBuddy(page);
> -	set_page_private(page, 0);
> -	area->nr_free--;
> -}
> -
>  static inline bool free_area_empty(struct free_area *area, int migratetype)
>  {
>  	return list_empty(&area->free_list[migratetype]);
> @@ -796,6 +764,44 @@ static inline bool pgdat_is_empty(pg_data_t *pgdat)
>  	return !pgdat->node_start_pfn && !pgdat->node_spanned_pages;
>  }
>  
> +/* Used for pages not on another list */
> +static inline void add_to_free_list(struct page *page, struct zone *zone,
> +				    unsigned int order, int migratetype)
> +{
> +	struct free_area *area = &zone->free_area[order];
> +
> +	list_add(&page->lru, &area->free_list[migratetype]);
> +	area->nr_free++;
> +}
> +
> +/* Used for pages not on another list */
> +static inline void add_to_free_list_tail(struct page *page, struct zone *zone,
> +					 unsigned int order, int migratetype)
> +{
> +	struct free_area *area = &zone->free_area[order];
> +
> +	list_add_tail(&page->lru, &area->free_list[migratetype]);
> +	area->nr_free++;
> +}
> +
> +/* Used for pages which are on another list */
> +static inline void move_to_free_list(struct page *page, struct zone *zone,
> +				     unsigned int order, int migratetype)
> +{
> +	struct free_area *area = &zone->free_area[order];
> +
> +	list_move(&page->lru, &area->free_list[migratetype]);
> +}
> +
> +static inline void del_page_from_free_list(struct page *page, struct zone *zone,
> +					   unsigned int order)
> +{
> +	list_del(&page->lru);
> +	__ClearPageBuddy(page);
> +	set_page_private(page, 0);
> +	zone->free_area[order].nr_free--;
> +}
> +
>  #include <linux/memory_hotplug.h>
>  
>  void build_all_zonelists(pg_data_t *pgdat);
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index a791f2baeeeb..f85dc1561b85 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -921,7 +921,6 @@ static inline void __free_one_page(struct page *page,
>  	struct capture_control *capc = task_capc(zone);
>  	unsigned long uninitialized_var(buddy_pfn);
>  	unsigned long combined_pfn;
> -	struct free_area *area;
>  	unsigned int max_order;
>  	struct page *buddy;
>  
> @@ -958,7 +957,7 @@ static inline void __free_one_page(struct page *page,
>  		if (page_is_guard(buddy))
>  			clear_page_guard(zone, buddy, order, migratetype);
>  		else
> -			del_page_from_free_area(buddy, &zone->free_area[order]);
> +			del_page_from_free_list(buddy, zone, order);
>  		combined_pfn = buddy_pfn & pfn;
>  		page = page + (combined_pfn - pfn);
>  		pfn = combined_pfn;
> @@ -992,12 +991,11 @@ static inline void __free_one_page(struct page *page,
>  done_merging:
>  	set_page_order(page, order);
>  
> -	area = &zone->free_area[order];
>  	if (is_shuffle_order(order) ? shuffle_pick_tail() :
>  	    buddy_merge_likely(pfn, buddy_pfn, page, order))
> -		add_to_free_area_tail(page, area, migratetype);
> +		add_to_free_list_tail(page, zone, order, migratetype);
>  	else
> -		add_to_free_area(page, area, migratetype);
> +		add_to_free_list(page, zone, order, migratetype);
>  }
>  
>  /*
> @@ -2001,13 +1999,11 @@ void __init init_cma_reserved_pageblock(struct page *page)
>   * -- nyc
>   */
>  static inline void expand(struct zone *zone, struct page *page,
> -	int low, int high, struct free_area *area,
> -	int migratetype)
> +	int low, int high, int migratetype)
>  {
>  	unsigned long size = 1 << high;
>  
>  	while (high > low) {
> -		area--;
>  		high--;
>  		size >>= 1;
>  		VM_BUG_ON_PAGE(bad_range(zone, &page[size]), &page[size]);
> @@ -2021,7 +2017,7 @@ static inline void expand(struct zone *zone, struct page *page,
>  		if (set_page_guard(zone, &page[size], high, migratetype))
>  			continue;
>  
> -		add_to_free_area(&page[size], area, migratetype);
> +		add_to_free_list(&page[size], zone, high, migratetype);
>  		set_page_order(&page[size], high);
>  	}
>  }
> @@ -2179,8 +2175,8 @@ struct page *__rmqueue_smallest(struct zone *zone, unsigned int order,
>  		page = get_page_from_free_area(area, migratetype);
>  		if (!page)
>  			continue;
> -		del_page_from_free_area(page, area);
> -		expand(zone, page, order, current_order, area, migratetype);
> +		del_page_from_free_list(page, zone, current_order);
> +		expand(zone, page, order, current_order, migratetype);
>  		set_pcppage_migratetype(page, migratetype);
>  		return page;
>  	}
> @@ -2188,7 +2184,6 @@ struct page *__rmqueue_smallest(struct zone *zone, unsigned int order,
>  	return NULL;
>  }
>  
> -
>  /*
>   * This array describes the order lists are fallen back to when
>   * the free lists for the desirable migrate type are depleted
> @@ -2254,7 +2249,7 @@ static int move_freepages(struct zone *zone,
>  		VM_BUG_ON_PAGE(page_zone(page) != zone, page);
>  
>  		order = page_order(page);
> -		move_to_free_area(page, &zone->free_area[order], migratetype);
> +		move_to_free_list(page, zone, order, migratetype);
>  		page += 1 << order;
>  		pages_moved += 1 << order;
>  	}
> @@ -2370,7 +2365,6 @@ static void steal_suitable_fallback(struct zone *zone, struct page *page,
>  		unsigned int alloc_flags, int start_type, bool whole_block)
>  {
>  	unsigned int current_order = page_order(page);
> -	struct free_area *area;
>  	int free_pages, movable_pages, alike_pages;
>  	int old_block_type;
>  
> @@ -2441,8 +2435,7 @@ static void steal_suitable_fallback(struct zone *zone, struct page *page,
>  	return;
>  
>  single_page:
> -	area = &zone->free_area[current_order];
> -	move_to_free_area(page, area, start_type);
> +	move_to_free_list(page, zone, current_order, start_type);
>  }
>  
>  /*
> @@ -3113,7 +3106,6 @@ void split_page(struct page *page, unsigned int order)
>  
>  int __isolate_free_page(struct page *page, unsigned int order)
>  {
> -	struct free_area *area = &page_zone(page)->free_area[order];
>  	unsigned long watermark;
>  	struct zone *zone;
>  	int mt;
> @@ -3139,7 +3131,7 @@ int __isolate_free_page(struct page *page, unsigned int order)
>  
>  	/* Remove page from free list */
>  
> -	del_page_from_free_area(page, area);
> +	del_page_from_free_list(page, zone, order);
>  
>  	/*
>  	 * Set the pageblock if the isolated page is at least half of a
> @@ -8560,7 +8552,7 @@ void zone_pcp_reset(struct zone *zone)
>  		pr_info("remove from free list %lx %d %lx\n",
>  			pfn, 1 << order, end_pfn);
>  #endif
> -		del_page_from_free_area(page, &zone->free_area[order]);
> +		del_page_from_free_list(page, zone, order);
>  		for (i = 0; i < (1 << order); i++)
>  			SetPageReserved((page+i));
>  		pfn += (1 << order);

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
