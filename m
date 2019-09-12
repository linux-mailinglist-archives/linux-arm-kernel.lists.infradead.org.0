Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F08C2B0B53
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 11:26:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0RmLPLwiscCwM1PXX41gUs8g12LtRYbu4nfu28gWEuw=; b=n1XqtSXI41KG5d
	DzvQvdujO+cjoT9QSJ8kCU6cKNdQZwFhENxJ9MGYCtsABn1zal1zTOh05eKCMQ/qyg9ok2oH/xoQa
	AZEqH83TDtd5Wq64L8/EHhqkqYb60yu7/WK5Xz5Tus2OtbPlEJHzg3L8OxwoJm/C0w+NHHGfK2eHN
	/OJgJOoXO3eQmirHBw5gzfCi07vSF1AKt52Gla+W9AZpTBXNplautOMnhcWM9FpC+RNM7vbI08YU2
	d9p1wuHNk+TPBHQwuJnkai8zyoOBcKd9B63rUJKd3T8VDtP4Z2N1X4PpROTAsCNs9dMQZwhsby8bB
	37JmppcLsflTk7YSNWWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8LN9-0005IZ-K8; Thu, 12 Sep 2019 09:26:39 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8LMk-0005I1-DK
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 09:26:16 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DD20AAED6;
 Thu, 12 Sep 2019 09:26:12 +0000 (UTC)
Date: Thu, 12 Sep 2019 11:26:11 +0200
From: Michal Hocko <mhocko@kernel.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v9 0/8] stg mail -e --version=v9 \
Message-ID: <20190912092611.GN4023@dhcp22.suse.cz>
References: <20190911121941.GU4023@dhcp22.suse.cz>
 <20190911122526.GV4023@dhcp22.suse.cz>
 <4748a572-57b3-31da-0dde-30138e550c3a@redhat.com>
 <20190911125413.GY4023@dhcp22.suse.cz>
 <736594d6-b9ae-ddb9-2b96-85648728ef33@redhat.com>
 <20190911132002.GA4023@dhcp22.suse.cz>
 <20190911135100.GC4023@dhcp22.suse.cz>
 <abea20a0-463c-68c0-e810-2e341d971b30@redhat.com>
 <20190912071633.GL4023@dhcp22.suse.cz>
 <ef460202-cebd-c6d2-19f3-e8a82a3d3cbd@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ef460202-cebd-c6d2-19f3-e8a82a3d3cbd@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_022614_738468_DEE30C3E 
X-CRM114-Status: GOOD (  34.15  )
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

On Thu 12-09-19 09:47:30, David Hildenbrand wrote:
> On 12.09.19 09:16, Michal Hocko wrote:
> > On Wed 11-09-19 18:09:18, David Hildenbrand wrote:
> >> On 11.09.19 15:51, Michal Hocko wrote:
> >>> On Wed 11-09-19 15:20:02, Michal Hocko wrote:
> >>> [...]
> >>>>> 4. Continuously report, not the "one time report everything" approach.
> >>>>
> >>>> So you mean the allocator reporting this rather than an external code to
> >>>> poll right? I do not know, how much this is nice to have than must have?
> >>>
> >>> Another idea that I haven't really thought through so it might turned
> >>> out to be completely bogus but let's try anyway. Your "report everything"
> >>> just made me look and realize that free_pages_prepare already performs
> >>> stuff that actually does something similar yet unrelated.
> >>>
> >>> We do report to special page poisoning, zeroying or
> >>> CONFIG_DEBUG_PAGEALLOC to unmap the address from the kernel address
> >>> space. This sounds like something fitting your model no?
> >>>
> >>
> >> AFAIKS, the poisoning/unmapping is done whenever a page is freed. I
> >> don't quite see yet how that would help to remember if a page was
> >> already reported.
> > 
> > Do you still have to differ that state when each page is reported?
> 
> Ah, very good point. I can see that the reason for this was not
> discussed in this thread so far. (Alexander, Nitesh, please correct me
> if I am wrong). It's buried in the long history of free page
> hinting/reporting.

It would really be preferable to summarize such a previous discussion
ideally with some references.

> Some early patch sets tried to report during every free synchronously.
> Free a page, report them to the hypervisor. This resulted in some issues
> (especially, locking-related and the virtio + the hypervisor being
> involved, resulting in unpredictable delays, quite some overhead ...).
> It was no good.
> 
> One design decision then was to not report single pages, but a bunch of
> pages at once. This made it necessary to "remember" the pages to be
> reported and to temporarily block them from getting allocated while
> reporting.
> 
> Nitesh implemented (at least) two "capture PFNs of free pages in an
> array when freeing" approaches. One being synchronous from the freeing
> CPU once the list was full (having similar issues as plain synchronous
> reporting) and one being asynchronous by a separate thread (which solved
> many locking issues).
> 
> Turned out the a simple array can quickly lead to us having to drop
> "reports" to the hypervisor because the array is full and the reporting
> thread was not able to keep up. Not good as well. Especially, if some
> process frees a lot of memory this can happen quickly and Nitesh wa
> sable to trigger this scenario frequently.
> 
> Finally, Nitesh decided to use the bitmap instead to keep track of pages
> to report. I'd like to note that this approach could still be combined
> with an "array of potentially free PFNs". Only when the array/circular
> buffer runs out of entries ("reporting thread cannot keep up"), we would
> have to go back to scanning the bitmap.
> 
> That was also the point where Alexander decided to look into integrating
> tracking/handling reported/unreported pages directly in the buddy.

OK, this gives at least some background which is really appreciated.
Explaining _why_ you need something in the core MM is essential to move
forward.
 
> >> After reporting the page we would have to switch some
> >> state (Nitesh: bitmap bit, Alexander: page flag) to identify that.
> > 
> > Yes, you can either store the state somewhere.
> > 
> >> Of course, we could map the page and treat that as "the state" when we
> >> reported it, but I am not sure that's such a good idea :)
> >>
> >> As always, I might be very wrong ...
> > 
> > I still do not fully understand the usecase so I might be equally wrong.
> > My thinking is along these lines. Why should you scan free pages when
> > you can effectively capture each freed page? If you go one step further
> > then post_alloc_hook would be the counterpart to know that your page has
> > been allocated.
> 
> I'd like to note that Nitesh's patch set contains the following hunk,
> which is roughly what you were thinking :)
> 
> 
> -static inline void __free_one_page(struct page *page,
> +inline void __free_one_page(struct page *page,
>  		unsigned long pfn,
>  		struct zone *zone, unsigned int order,
> -		int migratetype)
> +		int migratetype, bool hint)
>  {
>  	unsigned long combined_pfn;
>  	unsigned long uninitialized_var(buddy_pfn);
> @@ -980,7 +981,8 @@ static inline void __free_one_page(struct page *page,
>  				migratetype);
>  	else
>  		add_to_free_area(page, &zone->free_area[order], migratetype);
> -
> +	if (hint)
> +		page_hinting_enqueue(page, order);
>  }
> 
> 
> (ignore the hint parameter, when he would switch to a isolate vs.
> alloc/free, that can go away and all we left is the enqueue part)
> 
> 
> Inside that callback we can remember the pages any way we want. Right
> now in a bitmap. Maybe later in a array + bitmap (as discussed above).
> Another idea I had was to simply go over all pages and report them when
> running into this "array full" condition. But I am not yet sure about
> the performance implications on rather large machines. So the bitmap
> idea might have some other limitations but seems to do its job.
> 
> Hoe that makes things clearer and am not missing something.

It certainly helped me to get a better idea. I have commented on my
reservations regarding the approach in this thread elsewhere but at
least I _think_ I am getting a point of what you guys try to achieve.

Thanks!
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
