Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7991ADC35
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:38:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xjwOSGoZLHJxd8wFGIvULxX004shaHLl/s4UDLoW/6A=; b=pcw0+gQDBTcp2x
	pJPAbWRsCidynYnTaXvqgMR9g6FyQ3XeEhvVa9TfEXvjnS4aL5EhCWKVfFpVmncOZC1L2xr/2eg9L
	DpzkOMkFoCpS9RrDSIio8R12aTkl1w4GQ0uwaSouUPYfBdVAc7ish698k14LoN3dI91BjVCH2Svtx
	JwaazYMSu+avTcIVfByfLlxwxnzRtmOyIeOMVXnwNeJLPK+ROqm2moGdbOeUNLXLqWwx9mqYQzYDT
	Aol+NCWFOkSPU+mBDRYbttkXkQVq7e+2Pygl4a7jj0jkm4cV7V4muOhyaaeKidZz+9yChn50chRDs
	oyHiqxywPJT+Poti3WKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Ljp-0008S3-VK; Mon, 09 Sep 2019 15:37:58 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Ljg-0008Ri-01
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 15:37:49 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 08:37:47 -0700
X-IronPort-AV: E=Sophos;i="5.64,486,1559545200"; d="scan'208";a="186547593"
Received: from ahduyck-desk1.jf.intel.com ([10.7.198.76])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 08:37:46 -0700
Message-ID: <64167c3a7b482d9cbeeabd3f5001cf7d357476c5.camel@linux.intel.com>
Subject: Re: [PATCH v9 2/8] mm: Adjust shuffle code to allow for future
 coalescing
From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
To: "Kirill A. Shutemov" <kirill@shutemov.name>
Date: Mon, 09 Sep 2019 08:37:46 -0700
In-Reply-To: <20190909153529.3crs74uraos27ffh@box>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172520.10910.83100.stgit@localhost.localdomain>
 <20190909094700.bbslsxpuwvxmodal@box>
 <22a896255cba877cf820f552667e1bc14268fa20.camel@linux.intel.com>
 <20190909153529.3crs74uraos27ffh@box>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_083748_078571_767E72C4 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, kvm@vger.kernel.org,
 david@redhat.com, catalin.marinas@arm.com,
 Alexander Duyck <alexander.duyck@gmail.com>, mhocko@kernel.org,
 linux-mm@kvack.org, will@kernel.org, aarcange@redhat.com,
 virtio-dev@lists.oasis-open.org, mst@redhat.com, willy@infradead.org,
 wei.w.wang@intel.com, ying.huang@intel.com, riel@surriel.com,
 dan.j.williams@intel.com, lcapitulino@redhat.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, nitesh@redhat.com,
 konrad.wilk@oracle.com, dave.hansen@intel.com, linux-kernel@vger.kernel.org,
 pbonzini@redhat.com, akpm@linux-foundation.org, fengguang.wu@intel.com,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-09-09 at 18:35 +0300, Kirill A. Shutemov wrote:
> On Mon, Sep 09, 2019 at 08:22:11AM -0700, Alexander Duyck wrote:
> > > > +	area = &zone->free_area[order];
> > > > +	if (is_shuffle_order(order) ? shuffle_pick_tail() :
> > > > +	    buddy_merge_likely(pfn, buddy_pfn, page, order))
> > > 
> > > Too loaded condition to my taste. Maybe
> > > 
> > > 	bool to_tail;
> > > 	...
> > > 	if (is_shuffle_order(order))
> > > 		to_tail = shuffle_pick_tail();
> > > 	else if (buddy_merge_likely(pfn, buddy_pfn, page, order))
> > > 		to_tail = true;
> > > 	else
> > > 		to_tail = false;
> > 
> > I can do that, although I would tweak this slightly and do something more
> > like:
> >         if (is_shuffle_order(order))
> >                 to_tail = shuffle_pick_tail();
> >         else
> >                 to_tail = buddy+_merge_likely(pfn, buddy_pfn, page, order);
> 
> Okay. Looks fine.
> 
> > > 	if (to_tail)
> > > 		add_to_free_area_tail(page, area, migratetype);
> > > 	else
> > > 		add_to_free_area(page, area, migratetype);
> > > 
> > > > +		add_to_free_area_tail(page, area, migratetype);
> > > >  	else
> > > > -		add_to_free_area(page, &zone->free_area[order], migratetype);
> > > > -
> > > > +		add_to_free_area(page, area, migratetype);
> > > >  }
> > > >  
> > > >  /*
> > > > diff --git a/mm/shuffle.c b/mm/shuffle.c
> > > > index 9ba542ecf335..345cb4347455 100644
> > > > --- a/mm/shuffle.c
> > > > +++ b/mm/shuffle.c
> > > > @@ -4,7 +4,6 @@
> > > >  #include <linux/mm.h>
> > > >  #include <linux/init.h>
> > > >  #include <linux/mmzone.h>
> > > > -#include <linux/random.h>
> > > >  #include <linux/moduleparam.h>
> > > >  #include "internal.h"
> > > >  #include "shuffle.h"
> > > 
> > > Why do you move #include <linux/random.h> from .c to .h?
> > > It's not obvious to me.
> > 
> > Because I had originally put the shuffle logic in an inline function. I
> > can undo that now as I when back to doing the randomness in the .c
> > sometime v5 I believe.
> 
> Yes, please. It's needless change now.
> 
> > > > @@ -190,8 +189,7 @@ struct batched_bit_entropy {
> > > >  
> > > >  static DEFINE_PER_CPU(struct batched_bit_entropy, batched_entropy_bool);
> > > >  
> > > > -void add_to_free_area_random(struct page *page, struct free_area *area,
> > > > -		int migratetype)
> > > > +bool __shuffle_pick_tail(void)
> > > >  {
> > > >  	struct batched_bit_entropy *batch;
> > > >  	unsigned long entropy;
> > > > @@ -213,8 +211,5 @@ void add_to_free_area_random(struct page *page, struct free_area *area,
> > > >  	batch->position = position;
> > > >  	entropy = batch->entropy_bool;
> > > >  
> > > > -	if (1ul & (entropy >> position))
> > > > -		add_to_free_area(page, area, migratetype);
> > > > -	else
> > > > -		add_to_free_area_tail(page, area, migratetype);
> > > > +	return 1ul & (entropy >> position);
> > > >  }
> > > > diff --git a/mm/shuffle.h b/mm/shuffle.h
> > > > index 777a257a0d2f..0723eb97f22f 100644
> > > > --- a/mm/shuffle.h
> > > > +++ b/mm/shuffle.h
> > > > @@ -3,6 +3,7 @@
> > > >  #ifndef _MM_SHUFFLE_H
> > > >  #define _MM_SHUFFLE_H
> > > >  #include <linux/jump_label.h>
> > > > +#include <linux/random.h>
> > > >  
> > > >  /*
> > > >   * SHUFFLE_ENABLE is called from the command line enabling path, or by
> > > > @@ -22,6 +23,7 @@ enum mm_shuffle_ctl {
> > > >  DECLARE_STATIC_KEY_FALSE(page_alloc_shuffle_key);
> > > >  extern void page_alloc_shuffle(enum mm_shuffle_ctl ctl);
> > > >  extern void __shuffle_free_memory(pg_data_t *pgdat);
> > > > +extern bool __shuffle_pick_tail(void);
> > > >  static inline void shuffle_free_memory(pg_data_t *pgdat)
> > > >  {
> > > >  	if (!static_branch_unlikely(&page_alloc_shuffle_key))
> > > > @@ -43,6 +45,11 @@ static inline bool is_shuffle_order(int order)
> > > >  		return false;
> > > >  	return order >= SHUFFLE_ORDER;
> > > >  }
> > > > +
> > > > +static inline bool shuffle_pick_tail(void)
> > > > +{
> > > > +	return __shuffle_pick_tail();
> > > > +}
> > > 
> > > I don't see a reason in __shuffle_pick_tail() existing if you call it
> > > unconditionally.
> > 
> > That is for compilation purposes. The function is not used in the
> > shuffle_pick_tail below that always returns false.
> 
> Wouldn't it be the same if you rename __shuffle_pick_tail() to
> shuffle_pick_tail() and put its declaration under the same #ifdef?
> 

Yeah I guess I can do that. I'll update that for v10.

Thanks.

- Alex


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
