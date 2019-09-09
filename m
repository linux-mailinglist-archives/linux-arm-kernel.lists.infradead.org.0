Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEDEAD4B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 10:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kaD+D+zEswz0tpHMp1aKeUJ+F0x+c9pbNv9Vm0BL4zE=; b=Ik76/hDNx1ogi/
	oZ895IMaaoVrBWOgW1J0njWW73/1h92saGUqAHizDx9OAZhScxQDHh5F71mDNfBE3eYPuxo/H+jLR
	UDMtO+WlLOaFv6nNiPkRB7a7AWacms7fHo5CEay/wg0NoHTSua+5aNEk4fFmZbQGlijWjg91H/y9j
	HaB7/KRveRKsTI5zenHGu/NGSU7jk16j63jIyflS6zvUeLcp7F+zCXJhvDxQgSnyKy0TqGSIGUxpB
	EM8vnxqirbIg8vMi6ta2OeIYPm9CNIg+iYDowd/Wxmz2k8rKgVt9mTsMOHLFBOXg88ABrMFrllo7L
	aBCZ2S6cqyQNPh4Dp2hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7EuH-0006jv-D7; Mon, 09 Sep 2019 08:20:17 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Etk-0006YR-Ld
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 08:19:46 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 21787C08EC0C;
 Mon,  9 Sep 2019 08:19:44 +0000 (UTC)
Received: from [10.36.116.173] (ovpn-116-173.ams2.redhat.com [10.36.116.173])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0679F5D6A7;
 Mon,  9 Sep 2019 08:19:30 +0000 (UTC)
Subject: Re: [PATCH v9 2/8] mm: Adjust shuffle code to allow for future
 coalescing
To: Alexander Duyck <alexander.duyck@gmail.com>,
 virtio-dev@lists.oasis-open.org, kvm@vger.kernel.org, mst@redhat.com,
 catalin.marinas@arm.com, dave.hansen@intel.com,
 linux-kernel@vger.kernel.org, willy@infradead.org, mhocko@kernel.org,
 linux-mm@kvack.org, akpm@linux-foundation.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172520.10910.83100.stgit@localhost.localdomain>
From: David Hildenbrand <david@redhat.com>
Openpgp: preference=signencrypt
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
 SE+xAvmumFBY
Organization: Red Hat GmbH
Message-ID: <093ce08f-2d2d-12bb-0dae-6bbf69fa9713@redhat.com>
Date: Mon, 9 Sep 2019 10:19:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190907172520.10910.83100.stgit@localhost.localdomain>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Mon, 09 Sep 2019 08:19:44 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_011944_753712_15B58ED9 
X-CRM114-Status: GOOD (  32.81  )
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, riel@surriel.com,
 konrad.wilk@oracle.com, ying.huang@intel.com, lcapitulino@redhat.com,
 wei.w.wang@intel.com, aarcange@redhat.com, nitesh@redhat.com,
 pbonzini@redhat.com, dan.j.williams@intel.com, fengguang.wu@intel.com,
 alexander.h.duyck@linux.intel.com, kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07.09.19 19:25, Alexander Duyck wrote:
> From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
> Move the head/tail adding logic out of the shuffle code and into the
> __free_one_page function since ultimately that is where it is really
> needed anyway. By doing this we should be able to reduce the overhead
> and can consolidate all of the list addition bits in one spot.
> 
> Reviewed-by: Dan Williams <dan.j.williams@intel.com>
> Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> ---
>  include/linux/mmzone.h |   12 --------
>  mm/page_alloc.c        |   70 +++++++++++++++++++++++++++---------------------
>  mm/shuffle.c           |    9 +-----
>  mm/shuffle.h           |   12 ++++++++
>  4 files changed, 53 insertions(+), 50 deletions(-)
> 
> diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
> index bda20282746b..125f300981c6 100644
> --- a/include/linux/mmzone.h
> +++ b/include/linux/mmzone.h
> @@ -116,18 +116,6 @@ static inline void add_to_free_area_tail(struct page *page, struct free_area *ar
>  	area->nr_free++;
>  }
>  
> -#ifdef CONFIG_SHUFFLE_PAGE_ALLOCATOR
> -/* Used to preserve page allocation order entropy */
> -void add_to_free_area_random(struct page *page, struct free_area *area,
> -		int migratetype);
> -#else
> -static inline void add_to_free_area_random(struct page *page,
> -		struct free_area *area, int migratetype)
> -{
> -	add_to_free_area(page, area, migratetype);
> -}
> -#endif
> -
>  /* Used for pages which are on another list */
>  static inline void move_to_free_area(struct page *page, struct free_area *area,
>  			     int migratetype)
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index c5d62f1c2851..4e4356ba66c7 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -878,6 +878,36 @@ static inline struct capture_control *task_capc(struct zone *zone)
>  #endif /* CONFIG_COMPACTION */
>  
>  /*
> + * If this is not the largest possible page, check if the buddy
> + * of the next-highest order is free. If it is, it's possible
> + * that pages are being freed that will coalesce soon. In case,
> + * that is happening, add the free page to the tail of the list
> + * so it's less likely to be used soon and more likely to be merged
> + * as a higher order page
> + */
> +static inline bool
> +buddy_merge_likely(unsigned long pfn, unsigned long buddy_pfn,
> +		   struct page *page, unsigned int order)
> +{
> +	struct page *higher_page, *higher_buddy;
> +	unsigned long combined_pfn;
> +
> +	if (order >= MAX_ORDER - 2)
> +		return false;
> +
> +	if (!pfn_valid_within(buddy_pfn))
> +		return false;
> +
> +	combined_pfn = buddy_pfn & pfn;
> +	higher_page = page + (combined_pfn - pfn);
> +	buddy_pfn = __find_buddy_pfn(combined_pfn, order + 1);
> +	higher_buddy = higher_page + (buddy_pfn - combined_pfn);
> +
> +	return pfn_valid_within(buddy_pfn) &&
> +	       page_is_buddy(higher_page, higher_buddy, order + 1);
> +}
> +
> +/*
>   * Freeing function for a buddy system allocator.
>   *
>   * The concept of a buddy system is to maintain direct-mapped table
> @@ -906,11 +936,12 @@ static inline void __free_one_page(struct page *page,
>  		struct zone *zone, unsigned int order,
>  		int migratetype)
>  {
> -	unsigned long combined_pfn;
> +	struct capture_control *capc = task_capc(zone);
>  	unsigned long uninitialized_var(buddy_pfn);
> -	struct page *buddy;
> +	unsigned long combined_pfn;
> +	struct free_area *area;
>  	unsigned int max_order;
> -	struct capture_control *capc = task_capc(zone);
> +	struct page *buddy;
>  
>  	max_order = min_t(unsigned int, MAX_ORDER, pageblock_order + 1);
>  
> @@ -979,35 +1010,12 @@ static inline void __free_one_page(struct page *page,
>  done_merging:
>  	set_page_order(page, order);
>  
> -	/*
> -	 * If this is not the largest possible page, check if the buddy
> -	 * of the next-highest order is free. If it is, it's possible
> -	 * that pages are being freed that will coalesce soon. In case,
> -	 * that is happening, add the free page to the tail of the list
> -	 * so it's less likely to be used soon and more likely to be merged
> -	 * as a higher order page
> -	 */
> -	if ((order < MAX_ORDER-2) && pfn_valid_within(buddy_pfn)
> -			&& !is_shuffle_order(order)) {
> -		struct page *higher_page, *higher_buddy;
> -		combined_pfn = buddy_pfn & pfn;
> -		higher_page = page + (combined_pfn - pfn);
> -		buddy_pfn = __find_buddy_pfn(combined_pfn, order + 1);
> -		higher_buddy = higher_page + (buddy_pfn - combined_pfn);
> -		if (pfn_valid_within(buddy_pfn) &&
> -		    page_is_buddy(higher_page, higher_buddy, order + 1)) {
> -			add_to_free_area_tail(page, &zone->free_area[order],
> -					      migratetype);
> -			return;
> -		}
> -	}
> -
> -	if (is_shuffle_order(order))
> -		add_to_free_area_random(page, &zone->free_area[order],
> -				migratetype);
> +	area = &zone->free_area[order];
> +	if (is_shuffle_order(order) ? shuffle_pick_tail() :
> +	    buddy_merge_likely(pfn, buddy_pfn, page, order))
> +		add_to_free_area_tail(page, area, migratetype);
>  	else
> -		add_to_free_area(page, &zone->free_area[order], migratetype);
> -
> +		add_to_free_area(page, area, migratetype);
>  }
>  
>  /*
> diff --git a/mm/shuffle.c b/mm/shuffle.c
> index 9ba542ecf335..345cb4347455 100644
> --- a/mm/shuffle.c
> +++ b/mm/shuffle.c
> @@ -4,7 +4,6 @@
>  #include <linux/mm.h>
>  #include <linux/init.h>
>  #include <linux/mmzone.h>
> -#include <linux/random.h>
>  #include <linux/moduleparam.h>
>  #include "internal.h"
>  #include "shuffle.h"
> @@ -190,8 +189,7 @@ struct batched_bit_entropy {
>  
>  static DEFINE_PER_CPU(struct batched_bit_entropy, batched_entropy_bool);
>  
> -void add_to_free_area_random(struct page *page, struct free_area *area,
> -		int migratetype)
> +bool __shuffle_pick_tail(void)
>  {
>  	struct batched_bit_entropy *batch;
>  	unsigned long entropy;
> @@ -213,8 +211,5 @@ void add_to_free_area_random(struct page *page, struct free_area *area,
>  	batch->position = position;
>  	entropy = batch->entropy_bool;
>  
> -	if (1ul & (entropy >> position))
> -		add_to_free_area(page, area, migratetype);
> -	else
> -		add_to_free_area_tail(page, area, migratetype);
> +	return 1ul & (entropy >> position);
>  }
> diff --git a/mm/shuffle.h b/mm/shuffle.h
> index 777a257a0d2f..0723eb97f22f 100644
> --- a/mm/shuffle.h
> +++ b/mm/shuffle.h
> @@ -3,6 +3,7 @@
>  #ifndef _MM_SHUFFLE_H
>  #define _MM_SHUFFLE_H
>  #include <linux/jump_label.h>
> +#include <linux/random.h>
>  
>  /*
>   * SHUFFLE_ENABLE is called from the command line enabling path, or by
> @@ -22,6 +23,7 @@ enum mm_shuffle_ctl {
>  DECLARE_STATIC_KEY_FALSE(page_alloc_shuffle_key);
>  extern void page_alloc_shuffle(enum mm_shuffle_ctl ctl);
>  extern void __shuffle_free_memory(pg_data_t *pgdat);
> +extern bool __shuffle_pick_tail(void);
>  static inline void shuffle_free_memory(pg_data_t *pgdat)
>  {
>  	if (!static_branch_unlikely(&page_alloc_shuffle_key))
> @@ -43,6 +45,11 @@ static inline bool is_shuffle_order(int order)
>  		return false;
>  	return order >= SHUFFLE_ORDER;
>  }
> +
> +static inline bool shuffle_pick_tail(void)
> +{
> +	return __shuffle_pick_tail();
> +}
>  #else
>  static inline void shuffle_free_memory(pg_data_t *pgdat)
>  {
> @@ -60,5 +67,10 @@ static inline bool is_shuffle_order(int order)
>  {
>  	return false;
>  }
> +
> +static inline bool shuffle_pick_tail(void)
> +{
> +	return false;
> +}
>  #endif
>  #endif /* _MM_SHUFFLE_H */
> 
> 

Acked-by: David Hildenbrand <david@redhat.com>

-- 

Thanks,

David / dhildenb

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
