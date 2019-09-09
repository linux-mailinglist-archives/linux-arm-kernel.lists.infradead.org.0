Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9D4ADC2E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:35:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbRmFZH0n4XHfGZFnXGuyko0BaeuDUBSND/GVPXJxas=; b=iK0b53LUgAPQKU
	jOcj/NgNN2qoRtDZ4w5fiGJxd3dEuEw+LDMXttN1BIPhpg+5AM6ifAJqXQ+qFAY9IgFvuQlO7V9BI
	eSLH4woM3qJ+nclrFWiG3FBTXeQhmUFvWnRpzY3UkY3dSfqEEm28Y1yzjSQQgCc+IRiaRMPe4vG8D
	gsjRpIGkiUXPX2YqVm8A2pT6C+SlT2xBFyBf/fCUXn9Kc4A7BuWsj3TGmUX96NK+7sm3Y/pga9/qG
	MLxpKt+Bf4sJBcoq15zagDi64Gww4yZqR6j9dGK2oNvUBEViHkud1U6BgntMT51AWyjGYH9p8JxPl
	XG0i/LjAHej2sGjVEmvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Lhj-00087a-0X; Mon, 09 Sep 2019 15:35:47 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7LhV-00085P-CG
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 15:35:34 +0000
Received: by mail-ed1-x544.google.com with SMTP id i1so13391525edv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 08:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MTFOT5bdM6X72YjVAZIbcsExbwxE+XqxokMEIsUljgM=;
 b=wHAxZhcK+gVPgAgJF9PbCYhlVGAsrovsuFXW5bqK8U3w5EFk2zZCX1PS4KAWztk+tV
 aZPQUgB2szFFTowwsoVdApg2W0IWLJC/PYf3C5DTflhYhuY+iO5/3mwiha3DgnVu+Gnx
 v7L3al5qh8zdC+vfxTXAPiBMUhFc8k3n4NzOwwxptdbzgwK+T4XW/yezGIalQ9lX0P7U
 zpPoMANq/LhN3bwqGkzdrMNI2S7izV0couusSwfyWmSfxsP24uBJ1IzeHkipd6qvJrDP
 qP3aTxM2VI4aaPYi2lI4N2kG0/wn8MF3cHPJGzk9gZILa1VAr8ILUgrz4z2kJLX/t/vz
 1Hfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MTFOT5bdM6X72YjVAZIbcsExbwxE+XqxokMEIsUljgM=;
 b=cnmjuqPpwOUwPnSWX7OPu4oS9UbnbvCWwsCeZSmUNxBXsb34ZxGYHBrEn53S3Ua8SQ
 HjZKmp5A+7mHCbOVvbqIm+T/UzMTDwyrweIsV09kwYB0XNAovTd9PRS+YcjvS00tMWjc
 sJuonjpDoxyPfcIostVHfOeHFIkmy7nERgrUPVgi2wD6akkxRXN3SUPwFSTMBIcxzxVP
 cvAODrJB5TzjO141Mak5velq7GE95fJ+j7NYQgnsJ9qQBZ0e9r6KvhkXRy1lcWS/nDAb
 h/H/0dl+p4SXsf/q4wV9GeX70Uq6SrQpqvOd9wuRH9QVOo9LBz+YtfxBiEWFPkTeYb8I
 cu2A==
X-Gm-Message-State: APjAAAXDtq0iJrk/mrkSMZ2pBDo9trM37JNJb+RCGSy3krNtQbvljxUA
 BK+nQ6Z9nxQbPs2hDImjjDmMCg==
X-Google-Smtp-Source: APXvYqwJ7k9v4XDLW5K97XhqdK5YLrM7D4qHSrwZ/QMa9DMyngci97EGxAlQTwRoMZkMga2tS9GZKw==
X-Received: by 2002:a50:d084:: with SMTP id v4mr25600401edd.48.1568043331860; 
 Mon, 09 Sep 2019 08:35:31 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id j5sm3017703edj.62.2019.09.09.08.35.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Sep 2019 08:35:31 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id CD6C71003B5; Mon,  9 Sep 2019 18:35:29 +0300 (+03)
Date: Mon, 9 Sep 2019 18:35:29 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Alexander Duyck <alexander.h.duyck@linux.intel.com>
Subject: Re: [PATCH v9 2/8] mm: Adjust shuffle code to allow for future
 coalescing
Message-ID: <20190909153529.3crs74uraos27ffh@box>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172520.10910.83100.stgit@localhost.localdomain>
 <20190909094700.bbslsxpuwvxmodal@box>
 <22a896255cba877cf820f552667e1bc14268fa20.camel@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <22a896255cba877cf820f552667e1bc14268fa20.camel@linux.intel.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_083533_465367_FD7FBA9A 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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

On Mon, Sep 09, 2019 at 08:22:11AM -0700, Alexander Duyck wrote:
> > > +	area = &zone->free_area[order];
> > > +	if (is_shuffle_order(order) ? shuffle_pick_tail() :
> > > +	    buddy_merge_likely(pfn, buddy_pfn, page, order))
> > 
> > Too loaded condition to my taste. Maybe
> > 
> > 	bool to_tail;
> > 	...
> > 	if (is_shuffle_order(order))
> > 		to_tail = shuffle_pick_tail();
> > 	else if (buddy_merge_likely(pfn, buddy_pfn, page, order))
> > 		to_tail = true;
> > 	else
> > 		to_tail = false;
> 
> I can do that, although I would tweak this slightly and do something more
> like:
>         if (is_shuffle_order(order))
>                 to_tail = shuffle_pick_tail();
>         else
>                 to_tail = buddy+_merge_likely(pfn, buddy_pfn, page, order);

Okay. Looks fine.

> > 	if (to_tail)
> > 		add_to_free_area_tail(page, area, migratetype);
> > 	else
> > 		add_to_free_area(page, area, migratetype);
> > 
> > > +		add_to_free_area_tail(page, area, migratetype);
> > >  	else
> > > -		add_to_free_area(page, &zone->free_area[order], migratetype);
> > > -
> > > +		add_to_free_area(page, area, migratetype);
> > >  }
> > >  
> > >  /*
> > > diff --git a/mm/shuffle.c b/mm/shuffle.c
> > > index 9ba542ecf335..345cb4347455 100644
> > > --- a/mm/shuffle.c
> > > +++ b/mm/shuffle.c
> > > @@ -4,7 +4,6 @@
> > >  #include <linux/mm.h>
> > >  #include <linux/init.h>
> > >  #include <linux/mmzone.h>
> > > -#include <linux/random.h>
> > >  #include <linux/moduleparam.h>
> > >  #include "internal.h"
> > >  #include "shuffle.h"
> > 
> > Why do you move #include <linux/random.h> from .c to .h?
> > It's not obvious to me.
> 
> Because I had originally put the shuffle logic in an inline function. I
> can undo that now as I when back to doing the randomness in the .c
> sometime v5 I believe.

Yes, please. It's needless change now.

> 
> > > @@ -190,8 +189,7 @@ struct batched_bit_entropy {
> > >  
> > >  static DEFINE_PER_CPU(struct batched_bit_entropy, batched_entropy_bool);
> > >  
> > > -void add_to_free_area_random(struct page *page, struct free_area *area,
> > > -		int migratetype)
> > > +bool __shuffle_pick_tail(void)
> > >  {
> > >  	struct batched_bit_entropy *batch;
> > >  	unsigned long entropy;
> > > @@ -213,8 +211,5 @@ void add_to_free_area_random(struct page *page, struct free_area *area,
> > >  	batch->position = position;
> > >  	entropy = batch->entropy_bool;
> > >  
> > > -	if (1ul & (entropy >> position))
> > > -		add_to_free_area(page, area, migratetype);
> > > -	else
> > > -		add_to_free_area_tail(page, area, migratetype);
> > > +	return 1ul & (entropy >> position);
> > >  }
> > > diff --git a/mm/shuffle.h b/mm/shuffle.h
> > > index 777a257a0d2f..0723eb97f22f 100644
> > > --- a/mm/shuffle.h
> > > +++ b/mm/shuffle.h
> > > @@ -3,6 +3,7 @@
> > >  #ifndef _MM_SHUFFLE_H
> > >  #define _MM_SHUFFLE_H
> > >  #include <linux/jump_label.h>
> > > +#include <linux/random.h>
> > >  
> > >  /*
> > >   * SHUFFLE_ENABLE is called from the command line enabling path, or by
> > > @@ -22,6 +23,7 @@ enum mm_shuffle_ctl {
> > >  DECLARE_STATIC_KEY_FALSE(page_alloc_shuffle_key);
> > >  extern void page_alloc_shuffle(enum mm_shuffle_ctl ctl);
> > >  extern void __shuffle_free_memory(pg_data_t *pgdat);
> > > +extern bool __shuffle_pick_tail(void);
> > >  static inline void shuffle_free_memory(pg_data_t *pgdat)
> > >  {
> > >  	if (!static_branch_unlikely(&page_alloc_shuffle_key))
> > > @@ -43,6 +45,11 @@ static inline bool is_shuffle_order(int order)
> > >  		return false;
> > >  	return order >= SHUFFLE_ORDER;
> > >  }
> > > +
> > > +static inline bool shuffle_pick_tail(void)
> > > +{
> > > +	return __shuffle_pick_tail();
> > > +}
> > 
> > I don't see a reason in __shuffle_pick_tail() existing if you call it
> > unconditionally.
> 
> That is for compilation purposes. The function is not used in the
> shuffle_pick_tail below that always returns false.

Wouldn't it be the same if you rename __shuffle_pick_tail() to
shuffle_pick_tail() and put its declaration under the same #ifdef?

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
