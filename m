Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFEEBF2D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 14:22:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cpqm7HNlof7+Pj6LBN/OoZq+pSFU5fkW2TTfCpcY/Fc=; b=VoB3/0wL1plk7q
	k+O5fx9IuexxdHbyxJf1g1OjUTm1NicHr+5BYWacXtcZkwqdxooBhNtZbHUXr0rQg1HaDkyFZ4FGj
	rCx3vhWxNsUgpBPRiYPwfAoH/LoeqGFX302z1ChYrzWOjwxnJhyT7EJ1RgoUQKB+XPPJvKeMcl+qt
	rxcwmD7ZEPrXZc+HQNkN21WOgK9wfV0X7Svx7rrg2t2zsVYXHkQxXWV30EU30RizFkwozONyIF1vE
	RBB56YcPc5b2e1oYlp3L22N2VeBVPz+zhy+FxSvV00WPiWIOTmQHkcy5vpIkiKoHkebwygtaK1Eqn
	6whHuTR3QJg/+Z0RoJxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDSmr-0005Sm-IN; Thu, 26 Sep 2019 12:22:21 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDSmj-0005Rc-Ee
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 12:22:15 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DA408B11E;
 Thu, 26 Sep 2019 12:22:10 +0000 (UTC)
Date: Thu, 26 Sep 2019 14:22:08 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [PATCH v10 0/6] mm / virtio: Provide support for unused page
 reporting
Message-ID: <20190926122208.GI20255@dhcp22.suse.cz>
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
 <20190924142342.GX23050@dhcp22.suse.cz>
 <CAKgT0UcYdA+LysVVO+8Beabsd-YBH+tNUKnQgaFmrZBW1xkFxA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKgT0UcYdA+LysVVO+8Beabsd-YBH+tNUKnQgaFmrZBW1xkFxA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_052213_788592_11C90833 
X-CRM114-Status: GOOD (  26.91  )
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
 lcapitulino@redhat.com, linux-mm <linux-mm@kvack.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 Andrea Arcangeli <aarcange@redhat.com>, virtio-dev@lists.oasis-open.org,
 "Michael S. Tsirkin" <mst@redhat.com>, Matthew Wilcox <willy@infradead.org>,
 "Wang, Wei W" <wei.w.wang@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Rik van Riel <riel@surriel.com>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, Oscar Salvador <osalvador@suse.de>,
 Nitesh Narayan Lal <nitesh@redhat.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Dave Hansen <dave.hansen@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Mel Gorman <mgorman@techsingularity.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 24-09-19 08:20:22, Alexander Duyck wrote:
> On Tue, Sep 24, 2019 at 7:23 AM Michal Hocko <mhocko@kernel.org> wrote:
> >
> > On Wed 18-09-19 10:52:25, Alexander Duyck wrote:
> > [...]
> > > In order to try and keep the time needed to find a non-reported page to
> > > a minimum we maintain a "reported_boundary" pointer. This pointer is used
> > > by the get_unreported_pages iterator to determine at what point it should
> > > resume searching for non-reported pages. In order to guarantee pages do
> > > not get past the scan I have modified add_to_free_list_tail so that it
> > > will not insert pages behind the reported_boundary.
> > >
> > > If another process needs to perform a massive manipulation of the free
> > > list, such as compaction, it can either reset a given individual boundary
> > > which will push the boundary back to the list_head, or it can clear the
> > > bit indicating the zone is actively processing which will result in the
> > > reporting process resetting all of the boundaries for a given zone.
> >
> > Is this any different from the previous version? The last review
> > feedback (both from me and Mel) was that we are not happy to have an
> > externally imposed constrains on how the page allocator is supposed to
> > maintain its free lists.
> 
> The main change for v10 versus v9 is that I allow the page reporting
> boundary to be overridden. Specifically there are two approaches that
> can be taken.
> 
> The first is to simply reset the iterator for whatever list is
> updated. What this will do is reset the iterator back to list_head and
> then you can do whatever you want with that specific list.

OK, this is slightly better than pushing the allocator to the corner.
The allocator really has to be under control of its data structures.
I would still be happier if the allocator wouldn't really have to bother
about somebody snooping its internal state to do its own thing. So
please make sure to describe why and how much this really matters.
 
> The other option is to simply clear the ZONE_PAGE_REPORTING_ACTIVE
> bit. That will essentially notify the page reporting code that any/all
> hints that were recorded have been discarded and that it needs to
> start over.
> 
> All I am trying to do with this approach is reduce the work. Without
> doing this the code has to walk the entire free page list for the
> higher orders every iteration and that will not be cheap.

How expensive this will be?

> Admittedly
> it is a bit more invasive than the cut/splice logic used in compaction
> which is taking the pages it has already processed and moving them to
> the other end of the list. However, I have reduced things so that we
> only really are limiting where add_to_free_list_tail can place pages,
> and we are having to check/push back the boundaries if a reported page
> is removed from a free_list.
> 
> > If this is really the only way to go forward then I would like to hear
> > very convincing arguments about other approaches not being feasible.
> > There are none in this cover letter unfortunately. This will be really a
> > hard sell without them.
> 
> So I had considered several different approaches.

Thanks this is certainly useful and it would have been even more so if
you gave some rough numbers to quantify how much overhead for different
solutions we are talking about here.
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
