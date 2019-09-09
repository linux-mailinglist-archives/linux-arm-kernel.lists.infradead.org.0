Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E57E2AD605
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 11:47:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R04vV944lzQmHAs4moQEmq0mYOJWSmmyn809s1od7K8=; b=pt0/k/9fOQTZyY
	bW/BVFjSKL3YSLazatQkkHHqh7xCAgP11YfJ6IUws+7BYscJwLUg13nqJNoH9SFmVYR0FVZCrEdG+
	lGQUJ79JoWzsNRYCKE6dziCDfTQ1fHQlRSSAvfTP/b+o83CqadJ6QdQRoxcVMREVd8ERFIARDl7SK
	OcjmDhksYp/R3FBSDO+wiCmXweUg+Xv8cBmXjWmXfTkaOytU/yCHw/AIqeD7PC55tVZMRhTiP6YSD
	YQjm1f3CKNe5JxabxkRqKz+rfYo+RltmqdFaSlgYihnmMXiEITJHpvm+i5iCGZD9AO4tI+Q+FGUdg
	RX9+hZKFoeNi1EQ6pOhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7GGT-0007Wz-Sk; Mon, 09 Sep 2019 09:47:18 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7GGG-0007WX-Lr
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 09:47:06 +0000
Received: by mail-ed1-x543.google.com with SMTP id a23so10114361edv.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 02:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xISb8QdXthnRD5B1+FWVAGG1WnHbLg+isgbs6xau+r4=;
 b=FzTTKcM1WJJABSQ0g4f0T+bnDIXvVnuAM48Ust32SJDT9zZ15c7bmFOlQicakx+FcN
 xoYSnFMKLnqfW8yXwuTvTxsrstkBMxmAlPlKvaexjokILofUuVZFfmHdYWu/NLwCl17v
 HD4UZalj30yFPDcpE2Gf1n0UIhY6awB5PVnULVY+d9fapthpkK4Zy4YN1qRmJ7K6AxV5
 OyoxnExfScYiQLnRI60b+Vt/5WXccWtsaALWk4GZXRXQAI0OMfkzcCwpUrglAVqjpAK+
 keQEQMhBd7xuHzWaRxYBzuTN+H3I3musH6TqbAF+2tMvBPig3AhKYdKiW85RLjCsj/2y
 Eevw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xISb8QdXthnRD5B1+FWVAGG1WnHbLg+isgbs6xau+r4=;
 b=UujQjxSxBPsd8nV9X1XTKjpcKMrAh2y3uynIgTXg2w9cv2gAgc0j0FCAza7QakWzE3
 sO0Y+C9sSiztpdhd/9DTFEpGDZOGHbhPZ81KSV20aV26rVNM8sSO2s7Ak4+HWdlKigj6
 4OdpWHuBGB+KEfUNjdAuvSA9QfxeRFiG3vKK3rUzbuaVxasNEvJMs09+4TjBHeYAqW6W
 Mpg+nlU2cGtcwaBkjbwj7SggWEWMDOJSMBaWORlv8+QmDQqxcKLL9KbKTujuayyrFFEj
 ho41J5Thkdfke4R4TUXLwQur5uE/d92oHn4cAYqnQqaJmslbTdn2TiCkRChEBeHTFhAv
 wDjg==
X-Gm-Message-State: APjAAAXRrV0fAYpUZ5aYVsT/q9EeyNBcGaOeED561aPb7PXK+2iPq9Bq
 cTq09KHjGVvHRaYCnlyGR09sxg==
X-Google-Smtp-Source: APXvYqwRsv8hcOk9Jy4jp+LrZ9es9lQsju1nAyfry9oLrZpxaaCy+iWkkZGN7MPWJzm5yDHq5vRsCA==
X-Received: by 2002:a50:95a3:: with SMTP id w32mr23317029eda.211.1568022422740; 
 Mon, 09 Sep 2019 02:47:02 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id c21sm2919687ede.45.2019.09.09.02.47.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Sep 2019 02:47:02 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 776C51003B5; Mon,  9 Sep 2019 12:47:00 +0300 (+03)
Date: Mon, 9 Sep 2019 12:47:00 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [PATCH v9 2/8] mm: Adjust shuffle code to allow for future
 coalescing
Message-ID: <20190909094700.bbslsxpuwvxmodal@box>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172520.10910.83100.stgit@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907172520.10910.83100.stgit@localhost.localdomain>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_024704_859640_409E242F 
X-CRM114-Status: GOOD (  31.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, kvm@vger.kernel.org,
 david@redhat.com, catalin.marinas@arm.com, mhocko@kernel.org,
 linux-mm@kvack.org, alexander.h.duyck@linux.intel.com, will@kernel.org,
 aarcange@redhat.com, virtio-dev@lists.oasis-open.org, mst@redhat.com,
 willy@infradead.org, wei.w.wang@intel.com, ying.huang@intel.com,
 riel@surriel.com, dan.j.williams@intel.com, lcapitulino@redhat.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, nitesh@redhat.com,
 konrad.wilk@oracle.com, dave.hansen@intel.com, linux-kernel@vger.kernel.org,
 pbonzini@redhat.com, akpm@linux-foundation.org, fengguang.wu@intel.com,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 10:25:20AM -0700, Alexander Duyck wrote:
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

Looks like add_to_free_area() and add_to_free_area_tail() can be moved to
mm/page_alloc.c as all users are there now. And the same for struct
free_area definition (but not declaration).

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

Okay, that's much easier to read.

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

Too loaded condition to my taste. Maybe

	bool to_tail;
	...
	if (is_shuffle_order(order))
		to_tail = shuffle_pick_tail();
	else if (buddy_merge_likely(pfn, buddy_pfn, page, order))
		to_tail = true;
	else
		to_tail = false;

	if (to_tail)
		add_to_free_area_tail(page, area, migratetype);
	else
		add_to_free_area(page, area, migratetype);

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

Why do you move #include <linux/random.h> from .c to .h?
It's not obvious to me.

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

I don't see a reason in __shuffle_pick_tail() existing if you call it
unconditionally.

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

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
