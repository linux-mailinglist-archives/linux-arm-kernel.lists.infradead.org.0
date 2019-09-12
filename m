Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1A3B0B2C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 11:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iCmqByQpbCg7J78JBbN+AMMqYPeDx71772jpvwhrHLw=; b=XPJlfav6Whmgst
	3OugZMzbRm4ukQOggIWwEXidfhG60EP9qpHufrozn24/FtNa7t5Fmg/OQra+qCAz+CI0NIDAX1RbM
	D+pIs1Y8d3LtbABZpXh3Y31RHjLk78oONdTwaZwH2/QhB0FUQPjRCKKbqZQeMf7zA7XHgLj7R6kL4
	jJnJfxOKKmpzXTKEaEkWf59jn6POW1bf/S5Z+lLdnJgmI0KGGIV92PHyTyAufs1loFU53nam2AJ1X
	jjYDU7+iQpTqmnjDrIl/Or7gW6xDqUZZHIsDbrYxC89GQjc5wD7S1LyNjioEVGLVctYKFrH7Pa0TQ
	gP3fI8ZASuqayBQmAWdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8LH0-0001DV-Gj; Thu, 12 Sep 2019 09:20:18 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8LGE-0000yO-Hw
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 09:19:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6E344B61F;
 Thu, 12 Sep 2019 09:19:27 +0000 (UTC)
Date: Thu, 12 Sep 2019 11:19:25 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [PATCH v9 0/8] stg mail -e --version=v9 \
Message-ID: <20190912091925.GM4023@dhcp22.suse.cz>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190910124209.GY2063@dhcp22.suse.cz>
 <CAKgT0Udr6nYQFTRzxLbXk41SiJ-pcT_bmN1j1YR4deCwdTOaUQ@mail.gmail.com>
 <20190910144713.GF2063@dhcp22.suse.cz>
 <CAKgT0UdB4qp3vFGrYEs=FwSXKpBEQ7zo7DV55nJRO2C-KCEOrw@mail.gmail.com>
 <20190910175213.GD4023@dhcp22.suse.cz>
 <1d7de9f9f4074f67c567dbb4cc1497503d739e30.camel@linux.intel.com>
 <20190911113619.GP4023@dhcp22.suse.cz>
 <CAKgT0UfOp1c+ov=3pBD72EkSB9Vm7mG5G6zJj4=j=UH7zCgg2Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKgT0UfOp1c+ov=3pBD72EkSB9Vm7mG5G6zJj4=j=UH7zCgg2Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_021931_637425_5AB37A61 
X-CRM114-Status: GOOD (  20.96  )
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
 kvm list <kvm@vger.kernel.org>, David Hildenbrand <david@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, lcapitulino@redhat.com,
 linux-mm <linux-mm@kvack.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>, will@kernel.org,
 Andrea Arcangeli <aarcange@redhat.com>, virtio-dev@lists.oasis-open.org,
 "Michael S. Tsirkin" <mst@redhat.com>, Matthew Wilcox <willy@infradead.org>,
 "Wang, Wei W" <wei.w.wang@intel.com>, Mel Gorman <mgorman@suse.de>,
 ying.huang@intel.com, Rik van Riel <riel@surriel.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Vlastimil Babka <vbabka@suse.cz>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, Oscar Salvador <osalvador@suse.de>,
 Nitesh Narayan Lal <nitesh@redhat.com>, Dave Hansen <dave.hansen@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Fengguang Wu <fengguang.wu@intel.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 11-09-19 08:12:03, Alexander Duyck wrote:
> On Wed, Sep 11, 2019 at 4:36 AM Michal Hocko <mhocko@kernel.org> wrote:
> >
> > On Tue 10-09-19 14:23:40, Alexander Duyck wrote:
> > [...]
> > > We don't put any limitations on the allocator other then that it needs to
> > > clean up the metadata on allocation, and that it cannot allocate a page
> > > that is in the process of being reported since we pulled it from the
> > > free_list. If the page is a "Reported" page then it decrements the
> > > reported_pages count for the free_area and makes sure the page doesn't
> > > exist in the "Boundary" array pointer value, if it does it moves the
> > > "Boundary" since it is pulling the page.
> >
> > This is still a non-trivial limitation on the page allocation from an
> > external code IMHO. I cannot give any explicit reason why an ordering on
> > the free list might matter (well except for page shuffling which uses it
> > to make physical memory pattern allocation more random) but the
> > architecture seems hacky and dubious to be honest. It shoulds like the
> > whole interface has been developed around a very particular and single
> > purpose optimization.
> 
> How is this any different then the code that moves a page that will
> likely be merged to the tail though?

I guess you are referring to the page shuffling. If that is the case
then this is an integral part of the allocator for a reason and it is
very well obvious in the code including the consequences. I do not
really like an idea of hiding similar constrains behind a generic
looking feature which is completely detached from the allocator and so
any future change of the allocator might subtly break it.

> In our case the "Reported" page is likely going to be much more
> expensive to allocate and use then a standard page because it will be
> faulted back in. In such a case wouldn't it make sense for us to want
> to keep the pages that don't require faults ahead of those pages in
> the free_list so that they are more likely to be allocated?

OK, I was suspecting this would pop out. And this is exactly why I
didn't like an idea of an external code imposing a non obvious constrains
to the allocator. You simply cannot count with any ordering with the
page allocator. We used to distinguish cache hot/cold pages in the past
and pushed pages to the specific end of the free list but that has been
removed. There are other potential changes like that possible. Shuffling
is a good recent example.

Anyway I am not a maintainer of this code. I would really like to hear
opinions from Mel and Vlastimil here (now CCed - the thread starts
http://lkml.kernel.org/r/20190907172225.10910.34302.stgit@localhost.localdomain.
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
